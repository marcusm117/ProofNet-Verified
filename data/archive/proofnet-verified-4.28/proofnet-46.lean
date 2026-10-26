import Mathlib

open Fintype Subgroup Set Polynomial Ideal
open scoped BigOperators



/-Informal Statement

Prove that if $H$ is a nontrivial normal subgroup of the solvable group $G$ then there is a nontrivial subgroup $A$ of $H$ with $A \unlhd G$ and $A$ abelian.
-/

theorem Dummit_Foote_exercise_3_4_11 {G : Type*} [Group G] [IsSolvable G]
  {H : Subgroup G} (hH : H ≠ ⊥) [H.Normal] :
  ∃ A ≤ H, A ≠ ⊥ ∧ A.Normal ∧ ∀ a b : A, a*b = b*a := by
  sorry
