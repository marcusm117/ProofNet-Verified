import Mathlib

open Fintype Subgroup Set Polynomial Ideal
open scoped BigOperators
noncomputable section

/-Informal Statement

Prove that if $P \in \operatorname{Syl}_{p}(G)$ and $H$ is a subgroup of $G$ containing $P$ then $P \in \operatorname{Syl}_{p}(H)$.
-/

theorem Dummit_Foote_exercise_4_5_1a {p : ℕ} {G : Type*} [Group G]
  {P : Subgroup G} (hP : IsPGroup p P) (H : Subgroup G)
  (hH : P ≤ H) : IsPGroup p H := by
  sorry
