import Mathlib

open Fintype Set Real Ideal Polynomial
open scoped BigOperators
noncomputable section

/-Informal Statement

Let $A$ be a normal subgroup of a group $G$, and suppose that $b \in G$ is an element of prime order $p$, and that $b \not\in A$. Show that $A \cap (b) = (e)$.
-/

theorem Herstein_exercise_2_10_1 {G : Type*} [Group G] (A : Subgroup G)
  [A.Normal] {b : G} (hp : Nat.Prime (orderOf b)) :
  A ⊓ (Subgroup.closure {b}) = ⊥ := by
  sorry
