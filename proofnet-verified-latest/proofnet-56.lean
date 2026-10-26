import Mathlib

open Fintype Subgroup Set Polynomial Ideal
open scoped BigOperators



/-Informal Statement

Prove that if $|G|=132$ then $G$ is not simple.
-/

theorem Dummit_Foote_exercise_4_5_22 {G : Type*} [Fintype G] [Group G]
  (hG : card G = 132) : ¬ IsSimpleGroup G := by
  sorry
