import Mathlib

open Complex Filter Function Metric Finset MeasureTheory intervalIntegral
open scoped BigOperators Topology



/-Informal Statement

Show that $\int_{0}^{\infty} \frac{\sin x}{x} d x=\frac{\pi}{2}$.
-/


theorem Shakarchi_exercise_2_2 :
    Tendsto (fun y => ∫ x in (0 : ℝ)..y, Real.sin x / x) atTop (𝓝 (Real.pi / 2)) := by
  sorry
