import Mathlib

open Function Fintype Subgroup Ideal Polynomial Submodule Zsqrtd
open scoped BigOperators
noncomputable section

/-Informal Statement

Let $Z$ be the center of a group $G$. Prove that if $G / Z$ is a cyclic group, then $G$ is abelian and hence $G=Z$.
-/

theorem Artin_exercise_6_1_14 (G : Type*) [Group G]
  (hG : IsCyclic $ G ⧸ (center G)) :
  center G = ⊤ := by
  sorry
