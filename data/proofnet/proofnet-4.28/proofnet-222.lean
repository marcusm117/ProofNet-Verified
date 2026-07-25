import Mathlib

open Fintype Subgroup Set Polynomial Ideal
open scoped BigOperators
noncomputable section

/-Informal Statement

A subgroup $M$ of a group $G$ is called a maximal subgroup if $M \neq G$ and the only subgroups of $G$ which contain $M$ are $M$ and $G$. Prove that if $H$ is a proper subgroup of the finite group $G$ then there is a maximal subgroup of $G$ containing $H$.
-/

theorem Dummit_Foote_exercise_2_4_16a {G : Type*} [Group G] {H : Subgroup G}
  (hH : H ≠ ⊤) :
  ∃ M : Subgroup G, M ≠ ⊤ ∧
  ∀ K : Subgroup G, M ≤ K → K = M ∨ K = ⊤ ∧
  H ≤ M := by
  sorry
