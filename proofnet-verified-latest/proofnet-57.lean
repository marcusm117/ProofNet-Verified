import Mathlib

open Fintype Subgroup Set Polynomial Ideal
open scoped BigOperators



/-Informal Statement

Let $G$ be a group of order 105. Prove that if a Sylow 3-subgroup of $G$ is normal then $G$ is abelian.
-/

theorem Dummit_Foote_exercise_4_5_28 {G : Type*} [Group G] [Fintype G]
  (hG : card G = 105) (P : Sylow 3 G) [hP : P.Normal] :
  ∀ a b : G, a*b = b*a := by
  sorry
