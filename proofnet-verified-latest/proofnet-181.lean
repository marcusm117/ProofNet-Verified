import Mathlib

open Complex Filter Function Metric Finset MeasureTheory Real Set
open scoped BigOperators Topology FourierTransform RealInnerProductSpace Complex


/-Informal Statement

Show that $ \int_{-\infty}^{\infty} \frac{\cos x}{x^2 + a^2} dx = \pi \frac{e^{-a}}{a}$ for $a > 0$.
-/


theorem Shakarchi_exercise_3_3 (a : ℝ) (ha : 0 < a) :
    Tendsto (λ y => ∫ x in -y..y, Real.cos x / (x ^ 2 + a ^ 2))
    atTop (𝓝 (Real.pi * (Real.exp (-a) / a))) := by
  sorry
