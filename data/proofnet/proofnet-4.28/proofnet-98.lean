import Mathlib

open Real
open scoped BigOperators
noncomputable section

/-Informal Statement

Show that the equation $7 x^{3}+2=y^{3}$ has no solution in integers.
-/

theorem Ireland_Rosen_exercise_3_5 : ¬ ∃ x y : ℤ, 7*x^3 + 2 = y^3 := by
  sorry
