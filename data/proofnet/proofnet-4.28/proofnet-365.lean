import Mathlib

open Complex Filter Function Metric Finset
open scoped BigOperators Topology

/-Informal Statement

Show that $ \int_{-\infty}^{\infty} \frac{x \sin x}{x^2 + a^2} dx = \pi e^{-a}$ for $a > 0$.
-/

theorem Shakarchi_exercise_3_4 (a : ℝ) (ha : 0 < a) :
    Tendsto (λ y => ∫ x in -y..y, x * Real.sin x / (x ^ 2 + a ^ 2))
    atTop (𝓝 (Real.pi * (Real.exp (-a)))) := by
  sorry
