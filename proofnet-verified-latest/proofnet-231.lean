import Mathlib

open Fintype Subgroup Set Polynomial Ideal
open scoped BigOperators



/-Informal Statement

Prove that if $p$ is a prime and $G$ is a group of order $p^{\alpha}$ for some $\alpha \in \mathbb{Z}^{+}$, then every subgroup of index $p$ is normal in $G$.
-/

theorem Dummit_Foote_exercise_4_2_9a {G : Type*} [Fintype G] [Group G] {p α : ℕ}
  (hp : p.Prime) (ha : α > 0) (hG : card G = p ^ α) :
  ∀ H : Subgroup G, H.index = p → H.Normal := by
  sorry
