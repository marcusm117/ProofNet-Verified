import Mathlib

open Fintype Subgroup Set Polynomial Ideal
open scoped BigOperators
noncomputable section

/-Informal Statement

If $x$ is an element of infinite order in $G$, prove that the elements $x^{n}, n \in \mathbb{Z}$ are all distinct.
-/

theorem Dummit_Foote_exercise_1_1_34 {G : Type*} [Group G] {x : G}
  (hx_inf : orderOf x = 0) (n m : ℤ) :
  x ^ n ≠ x ^ m := by
  sorry
