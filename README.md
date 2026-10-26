# ProofNet-Verified

**Resource Links:**
 - Paper: https://openreview.net/forum?id=5c0RSYyIWW, https://openreview.net/forum?id=NjgaeXNit3
 - GitHub: https://github.com/marcusm117/ProofNet-Verified
 - HuggingFace: https://huggingface.co/datasets/marcusm117/ProofNet-Verified
 - Visualization: https://marcusm117.github.io/ProofNet-Verified/

**ProofNet-Verified (ProofNet-V)** is an audited, corrected, and verified version of the [ProofNet](https://github.com/zhangir-azerbayev/ProofNet) dataset that is upgraded to be compatible with `Lean v4.28.0`. A visualization of all errors, error classifications, and our corrections can be found at [https://marcusm117.github.io/ProofNet-Verified](https://marcusm117.github.io/ProofNet-Verified).

[ProofNet](https://github.com/zhangir-azerbayev/ProofNet) is a benchmark for theorem proving and autoformalization of undergraduate-level mathematics. It originally consists of **371** data points, each consisting of a formal theorem statement in `Lean 3`, a natural language theorem statement, and a natural language proof. The problems are primarily drawn from popular undergraduate pure mathematics textbooks and cover topics such as real and complex analysis, linear algebra, abstract algebra, and topology. We intend for ProofNet to be a challenging benchmark that will drive progress in autoformalization and automatic theorem proving

[ProofNet#](https://huggingface.co/datasets/PAug/ProofNetSharp) is a cleaner version of ProofNet compatible with `Lean v4.7.0` to `Lean v4.16.0-rc2`, correcting 118 errors in previous Lean 4 implementations of ProofNet like [ProofNet-lean4](https://github.com/rahul3613/ProofNet-lean4).

We gratefully acknowledge the authors of these projects for their effort and making the data publicly available.

Based on ProofNet and ProofNet#, we made the following modifications:

1. Filter out 4 non-proof problems that have inconsistent natural language statement and formal statements, resulting in **367** problems in total.

- Axler|exercise_1_6
- Axler|exercise_1_7
- Rudin|exercise_1_14
- Rudin|exercise_1_19

2. Upgrade the formal statements to be compatible with `Lean v4.28.0`, so that more automated proof search tools like [Grind](https://lean-lang.org/doc/reference/latest/The--grind--tactic/), [Canonical](https://github.com/chasenorman/CanonicalLean), and [Lean-SMT](https://github.com/ufmg-smite/lean-smt) are available.

3. Audit the benchmark for both errors in the ground-truth formalizations and ambiguity in the informal statements, identifying **205/367 (55.9%)** errors in **ProofNet** and **99/367 (27.0%)** errors in **ProofNet#**.

4. Confirm each error by proving the negation of incorrect formalizations, providing trivialized proofs of formalization that are provably true but unfaithful to the informal statement, or giving detailed reasoning for why a formalization is unfaithful or an informal statement is ambiguous.

5. Correct these errors and **verify all 367** formal statements by providing **formal proofs** for each. Additionally, the faithfulness of these corrections is assessed by both human reviewers and an AI agent until they reach a consensus.

## Citation

If you find the **ProofNet-Verified** benchmark useful for your research, please kindly cite:

```bibtex
@inproceedings{
  an2026ground,
  title={Ground False: Dissecting Errors in Formal Mathematics Benchmarks},
  author={One An$^{*}$ and Marcus J. Min$^{*}$ and Xujie Si and Osbert Bastani},
  booktitle={3rd AI for Math Workshop: Toward Self-Evolving Scientific Agents},
  year={2026},
  url={https://openreview.net/forum?id=5c0RSYyIWW}
}

@inproceedings{
  min2026divide,
  title={Divide and Abstract: Autoformalization via Decomposition and Abstraction Learning},
  author={Marcus J. Min and Yeqi Gao and Wilson Sy and Zhaoyu Li and Xujie Si and Osbert Bastani},
  booktitle={The Fourteenth International Conference on Learning Representations},
  year={2026},
  url={https://openreview.net/forum?id=NjgaeXNit3}
}
```

## Benchmark Audit Summary

| | ProofNet | ProofNet# |
|---|---|---|
| Faithful | 162 (44.1%) | 268 (73.0%) |
| Unfaithful | 195 (53.1%) | 90 (24.5%) |
| NL Source Ambiguous | 9 (2.5%) | 8 (2.2%) |
| NL Source Incorrect | 1 (0.3%) | 1 (0.3%) |
| **Total Errors** | **205 (55.9%)** | **99 (27.0%)** |
| **Total** | **367** | **367** |

The **Unfaithful** row counts the `stronger`, `weaker`, and `incomparable` faithfulness labels; ambiguous and incorrect natural-language sources are counted separately. Percentages use all 367 problems in each benchmark.

The audit tracks three dimensions: **Provability**, **Faithfulness**, and **Root Cause**. Faithfulness compares logical structure with the relevant mathematical formulas treated as opaque, rather than identifying statements because they are mathematically provable.

### Root Cause Breakdown

| Root Cause | ProofNet | ProofNet# |
|---|---|---|
| NL Source Ambiguous | 9 (2.5%) | 8 (2.2%) |
| NL Source Incorrect | 1 (0.3%) | 1 (0.3%) |
| Implicit Premise | 18 (4.9%) | 17 (4.6%) |
| Missing Premise | 31 (8.4%) | 6 (1.6%) |
| Adding Extra Conclusion | 7 (1.9%) | 3 (0.8%) |
| Misunderstanding of Informal Math | 95 (25.9%) | 30 (8.2%) |
| Misunderstanding of Mathlib | 28 (7.6%) | 24 (6.5%) |
| Misunderstanding of Lean | 16 (4.4%) | 10 (2.7%) |
| **Total Errors** | **205 (55.9%)** | **99 (27.0%)** |

These are the eight root-cause categories. Faithful formalizations use `none`, meaning **no formalization error / not applicable**, not an unknown cause or a ninth error category.

## Dataset Files

| Resource | Location |
|---|---|
| Latest Lean statements | [`proofnet-verified-latest/`](proofnet-verified-latest/) |
| Latest JSONL dataset | [`data/proofnet-verified-latest.jsonl`](data/proofnet-verified-latest.jsonl) |
| Archived Lean 4.28 statements | [`data/archive/proofnet-verified-4.28/`](data/archive/proofnet-verified-4.28/) |
| Archived Lean 4.28 JSONL dataset | [`data/archive/proofnet-verified-4.28.jsonl`](data/archive/proofnet-verified-4.28.jsonl) |
| Archived Lean 4.28 proofs | [`data/archive/proofnet-verified_gt-4.28.zip`](data/archive/proofnet-verified_gt-4.28.zip) |

## Dataset Format

Each entry in [proofnet-verified-latest.jsonl](data/proofnet-verified-latest.jsonl) contains:

| Field | Description |
|---|---|
| `index` | Problem number (1-367) |
| `name` | Identifier, e.g. `Artin_exercise_2_2_9` |
| `textbook` | Source textbook |
| `header` | Lean imports and `open` declarations |
| `helper` | Auxiliary definitions needed by some problems |
| `informal_stmt` | Natural language theorem statement |
| `formal_stmt` | Lean 4 formal statement (ends with `sorry`) |
| `informal_proof` | Natural language proof |
| `formal_proof` | Proofs for the Lean 4.28 snapshot are [zipped](data/archive/proofnet-verified_gt-4.28.zip) to avoid data contamination |

### Example Entry

```lean
import Mathlib

open Function Fintype Subgroup Ideal Polynomial Submodule Zsqrtd
open scoped BigOperators

/-Informal Statement

Let $H$ be the subgroup generated by two elements $a, b$ of a group $G$.
Prove that if $a b=b a$, then $H$ is an abelian group.
-/

theorem Artin_exercise_2_2_9 {G : Type*} [Group G] {a b : G}
  (h : a * b = b * a) :
  ∀ x y : closure {x | x = a ∨ x = b}, x * y = y * x := by
  sorry
```

## Getting Started

### Prerequisites

- [Lean 4](https://lean-lang.org/lean4/doc/setup.html) (v4.28.0, managed via `elan`)
- [Lake](https://github.com/leanprover/lean4/tree/master/src/lake) (bundled with Lean)
- [uv](https://docs.astral.sh/uv/) (for Python scripts)

### Building

```bash
# Clone the repository
git clone https://github.com/marcusm117/ProofNet-Verified
cd ProofNet-Verified

# Fetch dependencies and pre-built Mathlib artifacts
lake update
```

### Compiling All Statements

To type-check all 367 formal statements in `proofnet-verified-latest/` in parallel:

```bash
uv sync
uv run python scripts/verify_compilation.py
```

This runs `lake env lean` on each file with 48 parallel workers (configurable via `--jobs`, e.g. `--jobs 64`). Use `--dir data/archive/proofnet-verified-4.28` for the archived statements or `--dir data/proofnet/proofnet-4.28` for the original formalizations.

### Regenerating JSONL

Run these commands from the repository root to regenerate the latest dataset, the archived Lean 4.28 dataset, and the original ProofNet dataset:

```bash
uv run python scripts/generate_jsonl.py --source-dir proofnet-verified-latest --output data/proofnet-verified-latest.jsonl
uv run python scripts/generate_jsonl.py --source-dir data/archive/proofnet-verified-4.28 --output data/archive/proofnet-verified-4.28.jsonl
uv run python scripts/generate_jsonl.py --source-dir data/proofnet/proofnet-4.28 --output data/proofnet/proofnet-4.28.jsonl
```

The exporter preserves `informal_proof` and `formal_proof` from the existing output. For a new output file, pass `--metadata` with an existing corresponding JSONL dataset. Add `--check` to validate an export without rewriting it.

### Python Environment

Python scripts (e.g. `scripts/verify_compilation.py`) are managed with [uv](https://docs.astral.sh/uv/):

```bash
# Create .venv and install dependencies (joblib, tqdm)
uv sync

# Run a script through the managed environment
uv run python scripts/verify_compilation.py
```

## Using the Benchmark

### For Theorem Proving Evaluation

The `proofnet-verified-latest/` directory contains 367 Lean files, each with a single theorem statement ending in `sorry`. Replace `sorry` with a valid proof to solve the problem. We recommend using [Lean Comparator](https://github.com/leanprover/comparator) as a rigorous proof checker.

### For Autoformalization Evaluation

Each entry in [`data/proofnet-verified-latest.jsonl`](data/proofnet-verified-latest.jsonl) pairs an `informal_stmt` with a `formal_stmt`. We recommend using symbolic checkers like [BEq+](https://github.com/augustepoiroux/LeanInteract/blob/main/examples/beq_plus.py) over LLM-as-a-Judge to compare the ground truth `formal_stmt` with the generated candidate formalizations.

### For Error Analysis

The `error_taxonomy/` directory provides detailed per-problem error classifications, useful for studying common failure modes in mathematical formalization (Lean syntax misunderstandings, Mathlib API misuse, missing premises, etc.).

## License

This project is licensed under the Apache License 2.0. See the [LICENSE](LICENSE) file for details.
