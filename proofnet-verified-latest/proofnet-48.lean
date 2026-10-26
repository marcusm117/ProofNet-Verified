import Mathlib

open Fintype Subgroup Set Polynomial Ideal
open scoped BigOperators



/-Informal Statement

Let $G$ be a transitive permutation group on the finite set $A$ with $|A|>1$. Show that there is some $\sigma \in G$ such that $\sigma(a) \neq a$ for all $a \in A$.
-/

theorem Dummit_Foote_exercise_4_3_26 {α : Type*} [Fintype α] (ha : Fintype.card α > 1)
  (G : Subgroup (Equiv.Perm α))
  (h_tran : ∀ a b : α, ∃ σ : G, (σ : Equiv.Perm α) a = b) :
  ∃ σ : G, ∀ a : α, (σ : Equiv.Perm α) a ≠ a := by
  sorry
