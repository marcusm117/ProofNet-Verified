import Mathlib

open Complex Filter Function Metric Finset
open scoped BigOperators Topology

/-Informal Statement

Suppose $f$ is an analytic function defined everywhere in $\mathbb{C}$ and such that for each $z_0 \in \mathbb{C}$ at least one coefficient in the expansion $f(z) = \sum_{n=0}^\infty c_n(z - z_0)^n$ is equal to 0. Prove that $f$ is a polynomial.
-/


theorem Shakarchi_exercise_2_13
    {f : ℂ → ℂ}
    (hf_diff : Differentiable ℂ f)
    (hf_vanish : ∀ z₀ : ℂ, ∃ n : ℕ,
      iteratedDeriv n f z₀ / (n.factorial : ℂ) = 0) :
    ∃ (p : Polynomial ℂ), f = fun z => Polynomial.aeval z p := by
  sorry
