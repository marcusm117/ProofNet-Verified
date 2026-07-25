import Mathlib

open Complex Filter Function Metric Finset
open scoped BigOperators Topology

/-Informal Statement

Prove that the power series $\sum zn/n$ converges at every point of the unit circle except $z = 1$.
-/

theorem Shakarchi_exercise_1_19c (z : ℂ) (hz : norm z = 1) (hz2 : z ≠ 1) (s : ℕ → ℂ)
    (h : s = (λ n => ∑ i ∈ (range n), i * z / i)) :
    ∃ z, Tendsto s atTop (𝓝 z) := by
  sorry
