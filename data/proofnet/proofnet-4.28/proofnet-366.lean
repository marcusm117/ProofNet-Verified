import Mathlib

open Complex Filter Function Metric Finset
open scoped BigOperators Topology

/-Informal Statement

Prove that all entire functions that are also injective take the form $f(z) = az + b$, $a, b \in \mathbb{C}$ and $a \neq 0$.
-/

theorem Shakarchi_exercise_3_14 {f : ℂ → ℂ} (hf : Differentiable ℂ f)
    (hf_inj : Function.Injective f) :
    ∃ (a b : ℂ), f = (λ z => a * z + b) ∧ a ≠ 0 := by
  sorry
