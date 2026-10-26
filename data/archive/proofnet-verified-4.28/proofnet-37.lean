import Mathlib

open Fintype Subgroup Set Polynomial Ideal
open scoped BigOperators



/-Informal Statement

Prove that $G$ cannot have a subgroup $H$ with $|H|=n-1$, where $n=|G|>2$.
-/

theorem Dummit_Foote_exercise_2_1_5 {G : Type*} [Group G] [Fintype G]
  (hG : card G > 2) (H : Subgroup G) [Fintype H] :
  card H ≠ card G - 1 := by
  sorry
