import Mathlib

open Fintype Subgroup Set Polynomial Ideal
open scoped BigOperators



/-Informal Statement

Prove that if $|G|=2907$ then $G$ is not simple.
-/

theorem Dummit_Foote_exercise_4_5_21 {G : Type*} [Fintype G] [Group G]
  (hG : card G = 2907) : ¬ IsSimpleGroup G := by
  sorry
