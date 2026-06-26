# ProofNet-Verified

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

3. Audit the benchmark for both errors in the ground-truth formalizations and ambiguity in the informal statements, identifying **204/367 (55.6%)** errors in **ProofNet** and **97/367 (26.4%)** errors in **ProofNet#**.

4. Confirm each error by proving the negation of incorrect formalizations, providing trivialized proofs of formalization that are provably true but unfaithful to the informal statement, or giving detailed reasoning for why a formalization is unfaithful or an informal statement is ambiguous.

5. Correct these errors and **verify all 367** formal statements by providing **formal proofs** for each. Additionally, the faithfulness of these corrections is assessed by both human reviewers and an AI agent until they reach a consensus.

## Citation

If you find the **ProofNet-Verified** benchmark useful for your research, please kindly cite:

```bibtex
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
| Faithful | 163 (44.4%) | 270 (73.6%) |
| Unfaithful | 194 (52.9%) | 88 (24.0%) |
| Ambiguous NL | 9 (2.5%) | 8 (2.2%) |
| Wrong NL | 1 (0.3%) | 1 (0.3%) |
| **Total Errors** | **204 (55.6%)** | **97 (26.4%)** |
| **Total** | **367** | **367** |

### Unfaithful Error Type Breakdown

| Unfaithful Error Type | ProofNet | ProofNet# |
|---|---|---|
| Misunderstanding of informal statement | 94 (25.6%) | 27 (7.4%) |
| Missing premise | 30 (8.2%) | 3 (0.8%) |
| Misunderstanding of Mathlib | 26 (7.1%) | 31 (8.4%) |
| Missing implicit premise | 18 (4.9%) | 18 (4.9%) |
| Misunderstanding of Lean | 10 (2.7%) | 8 (2.2%) |
| Adding extra case | 9 (2.5%) | 0 (0.0%) |
| Adding extra conclusion | 7 (1.9%) | 1 (0.3%) |
| **Total Unfaithful** | **194 (52.9%)** | **88 (24.0%)** |


## Dataset Format

Each entry in [proofnet-verified.jsonl](data/proofnet-verified.jsonl) contains:

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
| `formal_proof` | [Zipped](data/proofnet-verified_gt.zip) to avoid data contamination |

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

To type-check all 367 formal statements in parallel:

```bash
uv sync
uv run python scripts/verify_compilation.py
```

This runs `lake env lean` on each file with 48 parallel workers (configurable via `--jobs`).

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

The `proofnet-verified/` directory contains 367 Lean files, each with a single theorem statement ending in `sorry`. Replace `sorry` with a valid proof to solve the problem. We recommend using [Lean Comparator](https://github.com/leanprover/comparator) as a rigorous proof checker.

### For Autoformalization Evaluation

Each entry in `proofnet-verified.jsonl` pairs an `informal_stmt` with a `formal_stmt`. We recommend using symbolic checkers like [BEq+](https://github.com/augustepoiroux/LeanInteract/blob/main/examples/beq_plus.py) over LLM-as-a-Judge to compare the ground truth `formal_stmt` with the generated candidate formalizations.

### For Error Analysis

The `error_taxonomy/` directory provides detailed per-problem error classifications, useful for studying common failure modes in mathematical formalization (Lean syntax misunderstandings, Mathlib API misuse, missing premises, etc.).

## License

This project is licensed under the Apache License 2.0. See the [LICENSE](LICENSE) file for details.