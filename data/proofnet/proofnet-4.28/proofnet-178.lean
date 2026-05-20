import Mathlib

open Complex Filter Function Metric Finset
open scoped BigOperators Topology

/-Informal Statement

Prove that the power series $\sum zn/n^2$ converges at every point of the unit circle.
-/

theorem Shakarchi_exercise_1_19b (z : ℂ) (hz : norm z = 1) (s : ℕ → ℂ)
    (h : s = (λ n => ∑ i ∈ (range n), i * z / i ^ 2)) :
    ∃ y, Tendsto s atTop (𝓝 y) := by
  sorry
