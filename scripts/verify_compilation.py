# Authors: marcusm117
# License: Apache 2.0


# Standard Library Modules
import argparse
import contextlib
import os
import shutil
import subprocess
import sys
import time
from pathlib import Path

# External Modules
import joblib
from joblib import Parallel, delayed
from tqdm import tqdm


@contextlib.contextmanager
def tqdm_joblib(tqdm_object):
    """Patch joblib's batch-completion callback so each completed task ticks tqdm."""

    # Subclass joblib's internal callback to hook into job completion events
    class TqdmBatchCompletionCallback(joblib.parallel.BatchCompletionCallBack):
        def __call__(self, *args, **kwargs):
            # Advance the progress bar by the number of jobs in this batch
            tqdm_object.update(n=self.batch_size)
            return super().__call__(*args, **kwargs)

    # Monkey-patch the callback class for the duration of the context
    old_cb = joblib.parallel.BatchCompletionCallBack
    joblib.parallel.BatchCompletionCallBack = TqdmBatchCompletionCallback
    try:
        yield tqdm_object
    finally:
        # Restore the original callback and close the progress bar
        joblib.parallel.BatchCompletionCallBack = old_cb
        tqdm_object.close()

# Project root is one level above scripts/
ROOT = Path(__file__).resolve().parent.parent

# Find the `lake` binary: prefer the one on PATH, fall back to elan's default location
LAKE = shutil.which('lake') or os.path.expanduser('~/.elan/bin/lake')
ELAN_HOME = Path(os.path.expanduser('~/.elan'))


def compile_file(rel_name: str, src_dir: Path, timeout: int = 1200,
                 lean_override: str | None = None,
                 cwd: Path | None = None) -> dict:
    """Run `lake env lean <file>` and capture the result.

    If lean_override is set (e.g. 'leanprover/lean4:v4.9.0-rc2'), the ELAN_TOOLCHAIN
    env var is set so elan uses that specific toolchain instead of the project default.

    If cwd is set, lake runs from that directory (useful for projects with their own
    .lake/ and lean-toolchain, e.g. benchmarks).
    """
    full = src_dir / rel_name
    start = time.time()

    # Copy the environment so we don't mutate the parent process's env
    env = os.environ.copy()
    if lean_override:
        # Tell elan to use a specific Lean toolchain instead of lean-toolchain file
        env['ELAN_TOOLCHAIN'] = lean_override

    work_dir = str(cwd) if cwd else str(ROOT)
    try:
        # `lake env lean <file>` type-checks the file using the project's Lake environment
        # (importing Mathlib, etc.) without building the whole project
        result = subprocess.run(
            [LAKE, 'env', 'lean', str(full)],
            cwd=work_dir,
            capture_output=True,
            text=True,
            timeout=timeout,
            env=env,
        )
        return {
            'file': rel_name,
            'returncode': result.returncode,
            'stdout': result.stdout,
            'stderr': result.stderr,
            'elapsed': time.time() - start,
            'timeout': False,
        }
    except subprocess.TimeoutExpired as e:
        # Some files (e.g. heavy decidability checks) can hang indefinitely
        return {
            'file': rel_name,
            'returncode': -1,
            'stdout': e.stdout.decode() if e.stdout else '',
            'stderr': (e.stderr.decode() if e.stderr else '') + '\n[TIMEOUT]',
            'elapsed': time.time() - start,
            'timeout': True,
        }


def has_warnings(result: dict) -> bool:
    """Check if the output contains non-sorry warning messages."""
    combined = result['stdout'] + result['stderr']
    for line in combined.splitlines():
        # We expect "sorry" warnings (since proofs are stubbed out), but any other
        # warning (e.g. unused variables, deprecations) is worth flagging
        if 'warning:' in line.lower() and 'sorry' not in line.lower():
            return True
    return False


def write_log(result: dict, log_dir: Path) -> None:
    """Write failure/warning logs to disk for later inspection."""
    # Only write logs for files that failed or produced unexpected warnings
    if result['returncode'] == 0 and not has_warnings(result):
        return
    log_dir.mkdir(parents=True, exist_ok=True)
    path = log_dir / (result['file'] + '.log')
    with path.open('w') as f:
        f.write(f"file: {result['file']}\n")
        f.write(f"returncode: {result['returncode']}\n")
        f.write(f"timeout: {result['timeout']}\n")
        f.write(f"elapsed: {result['elapsed']:.1f}s\n")
        f.write('\n--- stdout ---\n')
        f.write(result['stdout'])
        f.write('\n--- stderr ---\n')
        f.write(result['stderr'])


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument('--dir', default='proofnet-verified',
                        help='Folder under repo root containing .lean files '
                             '(default: proofnet-verified)')
    parser.add_argument('--jobs', type=int, default=48,
                        help='Number of parallel workers (default 48)')
    parser.add_argument('--timeout', type=int, default=1200,
                        help='Per-file timeout in seconds (default 1200 = 20 min)')
    parser.add_argument('--lean-version', type=str, default=None,
                        help='Override Lean toolchain via ELAN_TOOLCHAIN '
                             '(e.g. "leanprover/lean4:v4.9.0-rc2"). '
                             'If not set, uses the project lean-toolchain file.')
    parser.add_argument('--cwd', type=str, default=None,
                        help='Working directory for lake (where lakefile.lean and '
                             '.lake/ live). Defaults to the repo root. Use this for '
                             'benchmarks with their own Lean/Mathlib setup.')
    args = parser.parse_args()

    src_dir = (ROOT / args.dir).resolve()
    log_dir = ROOT / 'logs' / f'compile_{Path(args.dir).name}'

    if not src_dir.is_dir():
        print(f'error: directory does not exist: {src_dir}', file=sys.stderr)
        return 2

    # Collect all .lean files to compile
    files = sorted(p.name for p in src_dir.glob('*.lean'))
    lean_ver = args.lean_version
    cwd = Path(args.cwd).resolve() if args.cwd else ROOT
    print(f'Compiling {len(files)} files from {src_dir} with {args.jobs} workers '
          f'(per-file timeout {args.timeout}s)...', flush=True)
    if lean_ver:
        print(f'Lean toolchain override: {lean_ver}', flush=True)
    if cwd != ROOT:
        print(f'Working directory (lake cwd): {cwd}', flush=True)
    print(f'Logs for failures/warnings: {log_dir}', flush=True)

    # Dispatch all files to parallel workers with a progress bar
    start = time.time()
    with tqdm_joblib(tqdm(desc='Compiling', total=len(files), unit='file')):
        results = Parallel(n_jobs=args.jobs)(
            delayed(compile_file)(f, src_dir, args.timeout, lean_ver, cwd)
            for f in files
        )
    elapsed = time.time() - start

    # Categorize results
    success = [r for r in results if r['returncode'] == 0]
    failed = [r for r in results if r['returncode'] != 0]
    timed_out = [r for r in results if r['timeout']]
    warned = [r for r in success if has_warnings(r)]

    # Persist logs only for problematic files
    for r in failed + warned:
        write_log(r, log_dir)

    print()
    print(f'Total time:   {elapsed:.1f}s')
    print(f'Success:      {len(success)}/{len(results)}')
    print(f'  of which with warnings: {len(warned)}')
    print(f'Failed:       {len(failed)}')
    print(f'  of which timed out: {len(timed_out)}')

    # Print non-sorry warnings (e.g. deprecations, unused vars) so they can be addressed
    if warned:
        print('\nFiles with warnings:')
        for r in sorted(warned, key=lambda r: r['file']):
            print(f'  {r["file"]:30s}  ({r["elapsed"]:.1f}s)')
            combined = r['stdout'] + r['stderr']
            for line in combined.splitlines():
                if 'warning:' in line.lower() and 'sorry' not in line.lower():
                    print(f'    {line.strip()}')

    # Print compilation failures with their exit code or timeout status
    if failed:
        print('\nFailing files:')
        for r in sorted(failed, key=lambda r: r['file']):
            tag = 'TIMEOUT' if r['timeout'] else f'rc={r["returncode"]}'
            print(f'  {r["file"]:30s}  {tag}  ({r["elapsed"]:.1f}s)')

    # Exit code: 0 if everything compiled, 1 if any file failed
    return 0 if not failed else 1


if __name__ == '__main__':
    sys.exit(main())
