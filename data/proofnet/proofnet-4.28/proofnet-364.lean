import Mathlib

open Complex Filter Function Metric Finset
open scoped BigOperators Topology

/-Informal Statement

Suppose $f$ is an analytic function defined everywhere in $\mathbb{C}$ and such that for each $z_0 \in \mathbb{C}$ at least one coefficient in the expansion $f(z) = \sum_{n=0}^\infty c_n(z - z_0)^n$ is equal to 0. Prove that $f$ is a polynomial.
-/

theorem Shakarchi_exercise_2_13 {f : ℂ → ℂ}
    (hf : ∀ z₀ : ℂ, ∃ (s : Set ℂ) (c : ℕ → ℂ), IsOpen s ∧ z₀ ∈ s ∧
      ∀ z ∈ s, Tendsto (λ n => ∑ i ∈ range n, (c i) * (z - z₀)^i) atTop (𝓝 (f z₀))
      ∧ ∃ i, c i = 0) :
    ∃ (c : ℕ → ℂ) (n : ℕ), f = λ z => ∑ i ∈ range n, (c i) * z ^ n := by
  sorry
