import Mathlib

open Fintype Subgroup Set Polynomial Ideal
open scoped BigOperators
noncomputable section

/-Informal Statement

Prove that subgroups of a solvable group are solvable.
-/

theorem Dummit_Foote_exercise_3_4_5a {G : Type*} [Group G]
  (H : Subgroup G) [IsSolvable G] : IsSolvable H := by
  sorry
