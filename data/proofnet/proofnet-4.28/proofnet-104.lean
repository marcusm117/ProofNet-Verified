import Mathlib

open Real
open scoped BigOperators
noncomputable section

/-Informal Statement

Show that 1729 is the smallest positive integer expressible as the sum of two different integral cubes in two ways.
-/

theorem Ireland_Rosen_exercise_18_4 {n : ℕ} (hn : ∃ x y z w : ℤ,
  x^3 + y^3 = n ∧ z^3 + w^3 = n ∧ x ≠ z ∧ x ≠ w ∧ y ≠ z ∧ y ≠ w) :
  n ≥ 1729 := by
  sorry
