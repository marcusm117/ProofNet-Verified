import Mathlib

open Complex Filter Function Metric Finset
open scoped BigOperators Topology



/-Informal Statement

Prove that the power series $\sum z^n/n$ converges at every point of the unit circle except $z = 1$.
-/

theorem Shakarchi_exercise_1_19c (z : ℂ) (hz : ‖z‖ = 1) (s : ℕ → ℂ)
    (h : s = (λ n => ∑ i ∈ (range n), z ^ (i + 1) / (i + 1))) :
    (∃ z₀, Tendsto s atTop (𝓝 z₀)) ↔ z ≠ 1 := by
  sorry
