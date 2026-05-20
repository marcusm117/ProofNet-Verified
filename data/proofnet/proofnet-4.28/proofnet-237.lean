import Mathlib

open Fintype Subgroup Set Polynomial Ideal
open scoped BigOperators
noncomputable section

/-Informal Statement

Prove that if $|G|=105$ then $G$ has a normal Sylow 5 -subgroup and a normal Sylow 7-subgroup.
-/

theorem Dummit_Foote_exercise_4_5_17 {G : Type*} [Fintype G] [Group G]
  (hG : card G = 105) :
  Nonempty (Sylow 5 G) ∧ Nonempty (Sylow 7 G) := by
  sorry
