import Mathlib

open Real
open scoped BigOperators
noncomputable section

/-Informal Statement

Show that the equation $3 x^{2}+2=y^{2}$ has no solution in integers.
-/

theorem Ireland_Rosen_exercise_3_4 : ¬ ∃ x y : ℤ, 3*x^2 + 2 = y^2 := by
  sorry
