import Mathlib

open Complex Filter Function Metric Finset
open scoped BigOperators Topology



/-Informal Statement

Show that $\int_0^1 \log(\sin \pi x) dx = - \log 2$.
-/

theorem Shakarchi_exercise_3_9 : ∫ x in (0 : ℝ)..(1 : ℝ), Real.log (Real.sin (Real.pi * x)) = - Real.log 2 := by
  sorry
