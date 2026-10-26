import Mathlib

open Complex Function Metric Finset
open scoped BigOperators Topology Bornology



/-Informal Statement

Show that there is no holomorphic function $f$ in the unit disc $D$ that extends continuously to $\partial D$ such that $f(z) = 1/z$ for $z \in \partial D$.
-/

theorem Shakarchi_exercise_3_22 (D : Set ℂ) (hD : D = ball 0 1) (f : ℂ → ℂ)
    (hf : DifferentiableOn ℂ f D) (hfc : ContinuousOn f (closure D)) :
    ¬ ∀ z ∈ (sphere (0 : ℂ) 1), f z = 1 / z := by
  sorry
