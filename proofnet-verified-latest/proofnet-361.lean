import Mathlib

open Complex Filter Function Metric Finset
open scoped BigOperators Topology



/-Informal Statement

Prove that the power series $\sum nz^n$ does not converge on any point of the unit circle.
-/

theorem Shakarchi_exercise_1_19a (z : ℂ) (hz : ‖z‖ = 1) (s : ℕ → ℂ)
    (h : s = (λ n => ∑ i ∈ (range n), i * z ^ i)) :
    ¬ ∃ y, Tendsto s atTop (𝓝 y) := by
  sorry
