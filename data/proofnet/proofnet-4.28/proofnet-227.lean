import Mathlib

open Fintype Subgroup Set Polynomial Ideal
open scoped BigOperators
noncomputable section

/-Informal Statement

Prove that if $H$ is a normal subgroup of $G$ of prime index $p$ then for all $K \leq G$ either $K \leq H$, or $G=H K$ and $|K: K \cap H|=p$.
-/

theorem Dummit_Foote_exercise_3_3_3 {p : Nat.Primes} {G : Type*} [Group G]
  {H : Subgroup G} [hH : H.Normal] (hH1 : H.index = p) :
  ∀ K : Subgroup G, K ≤ H ∨ H ⊔ K = ⊤ ∨ (K ⊓ H).relIndex K = p := by
  sorry
