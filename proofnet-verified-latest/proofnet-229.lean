import Mathlib

open Fintype Subgroup Set Polynomial Ideal
open scoped BigOperators



/-Informal Statement

Prove that quotient groups of a solvable group are solvable.
-/

theorem Dummit_Foote_exercise_3_4_5b {G : Type*} [Group G] [Group.IsSolvable G]
  (H : Subgroup G) [Normal H] :
  Group.IsSolvable (G ⧸ H) := by
  sorry
