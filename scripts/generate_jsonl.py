#!/usr/bin/env python3
"""Export ProofNet Lean statements, preserving existing JSONL proof metadata."""

import argparse
import json
import os
import re
import tempfile
from pathlib import Path


HEADER_PREFIXES = (
    "import ",
    "open ",
    "set_option ",
    "noncomputable section",
    "section",
    "namespace ",
    "variable ",
)
TEXTBOOK_OVERRIDES = {
    "exercise_2_4": "Ireland Rosen",
    "exercise_4_11": "Ireland Rosen",
}
TEXTBOOK_PREFIXES = (
    "Dummit_Foote",
    "Ireland_Rosen",
    "Artin",
    "Axler",
    "Herstein",
    "Munkres",
    "Pugh",
    "Putnam",
    "Rudin",
    "Shakarchi",
    "Cambridge",
)


def parse_source(path: Path) -> dict:
    source = path.read_text(encoding="utf-8")
    marker = re.search(r"(?m)^\s*/-\s*Informal Statement\s*\n", source)
    if marker is None:
        raise ValueError(f"{path}: missing informal statement")
    closing = re.search(r"(?m)^\s*-/\s*$", source[marker.end():])
    if closing is None:
        raise ValueError(f"{path}: unterminated informal statement")

    informal_end = marker.end() + closing.start()
    formal_start = marker.end() + closing.end()
    preamble_lines = source[:marker.start()].rstrip().splitlines()
    helper_start = len(preamble_lines)
    for index, line in enumerate(preamble_lines):
        stripped = line.strip()
        if stripped and not stripped.startswith(HEADER_PREFIXES):
            helper_start = index
            break

    formal = source[formal_start:].strip()
    declaration = re.search(
        r"(?m)^(?:noncomputable\s+|private\s+|protected\s+)*"
        r"(?:theorem|instance|lemma|def|abbrev)\s+([^\s:]+)",
        formal,
    )
    if declaration is None:
        raise ValueError(f"{path}: missing declaration")
    name = declaration.group(1)
    textbook = TEXTBOOK_OVERRIDES.get(name)
    if textbook is None:
        textbook = next(
            (prefix.replace("_", " ") for prefix in TEXTBOOK_PREFIXES
             if name.startswith(prefix)),
            None,
        )
    if textbook is None:
        raise ValueError(f"{path}: unknown textbook for {name}")

    return {
        "name": name,
        "textbook": textbook,
        "header": "\n".join(preamble_lines[:helper_start]).rstrip(),
        "helper": "\n".join(preamble_lines[helper_start:]).strip(),
        "informal_stmt": source[marker.end():informal_end].strip(),
        "formal_stmt": formal,
    }


def build_records(source_dir: Path, metadata_path: Path) -> list[dict]:
    metadata = {}
    for line in metadata_path.read_text(encoding="utf-8").splitlines():
        record = json.loads(line)
        index = record["index"]
        if index in metadata:
            raise ValueError(f"{metadata_path}: duplicate index {index}")
        metadata[index] = record

    sources = {}
    for path in source_dir.glob("proofnet-*.lean"):
        match = re.fullmatch(r"proofnet-(\d+)\.lean", path.name)
        if match is None:
            raise ValueError(f"{path}: unexpected filename")
        index = int(match.group(1))
        if index in sources:
            raise ValueError(f"{source_dir}: duplicate index {index}")
        sources[index] = path
    if not sources or set(sources) != set(metadata):
        raise ValueError("Source indices and metadata indices must match exactly")
    if sorted(sources) != list(range(1, len(sources) + 1)):
        raise ValueError("Source indices must be contiguous, starting at 1")

    return [
        {
            "index": index,
            **parse_source(sources[index]),
            "informal_proof": metadata[index]["informal_proof"],
            "formal_proof": metadata[index]["formal_proof"],
        }
        for index in sorted(sources)
    ]


def main() -> int:
    parser = argparse.ArgumentParser(
        description=__doc__,
        epilog=(
            "Example: python scripts/generate_jsonl.py "
            "--source-dir proofnet-verified-latest "
            "--output data/proofnet-verified-latest.jsonl"
        ),
    )
    parser.add_argument(
        "--source-dir", type=Path, required=True,
        help="Folder containing proofnet-*.lean statements",
    )
    parser.add_argument(
        "--output", type=Path, required=True,
        help="Destination JSONL; also supplies proof metadata unless --metadata is set",
    )
    parser.add_argument(
        "--metadata", type=Path,
        help="Existing JSONL supplying proof metadata; defaults to --output",
    )
    parser.add_argument(
        "--check", action="store_true",
        help="Check that the output is current without writing files",
    )
    arguments = parser.parse_args()
    records = build_records(
        arguments.source_dir, arguments.metadata or arguments.output,
    )
    content = "".join(
        json.dumps(record, ensure_ascii=False) + "\n" for record in records
    )
    if arguments.check:
        if arguments.output.read_text(encoding="utf-8") != content:
            parser.exit(1, f"Out of date: {arguments.output}\n")
        print(f"Checked {len(records)} records in {arguments.output}")
        return 0

    arguments.output.parent.mkdir(parents=True, exist_ok=True)
    with tempfile.NamedTemporaryFile(
        mode="w", encoding="utf-8", dir=arguments.output.parent,
        prefix=f".{arguments.output.name}.", suffix=".tmp", delete=False,
    ) as temporary:
        temporary_path = Path(temporary.name)
        temporary.write(content)
    try:
        if arguments.output.exists():
            temporary_path.chmod(arguments.output.stat().st_mode & 0o777)
        os.replace(temporary_path, arguments.output)
    finally:
        temporary_path.unlink(missing_ok=True)
    print(f"Wrote {len(records)} records to {arguments.output}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
