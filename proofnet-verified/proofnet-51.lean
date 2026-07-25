import Mathlib

open Fintype Subgroup Set Polynomial Ideal
open scoped BigOperators



/-Informal Statement

Prove that if $P \in \operatorname{Syl}_{p}(G)$ and $H$ is a subgroup of $G$ containing $P$ then $P \in \operatorname{Syl}_{p}(H)$.
-/

theorem Dummit_Foote_exercise_4_5_1a {p : ℕ} {G : Type*} [Group G]
  {P : Sylow p G} (H : Subgroup G) (hH : P ≤ H) :
  IsPGroup p (P.subgroupOf H) ∧
  ∀ (Q : Subgroup H), IsPGroup p Q → (P.subgroupOf H) ≤ Q → Q = (P.subgroupOf H) := by
  sorry
