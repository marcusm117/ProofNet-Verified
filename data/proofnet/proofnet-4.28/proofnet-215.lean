import Mathlib

open Fintype Subgroup Set Polynomial Ideal
open scoped BigOperators
noncomputable section

/-Informal Statement

For $x$ an element in $G$ show that $x$ and $x^{-1}$ have the same order.
-/

theorem Dummit_Foote_exercise_1_1_20 {G : Type*} [Group G] {x : G} :
  orderOf x = orderOf x⁻¹ := by
  sorry
