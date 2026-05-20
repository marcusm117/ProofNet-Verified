import Mathlib

open Fintype Subgroup Set Polynomial Ideal
open scoped BigOperators



/-Informal Statement

Let $G$ be a finite group which possesses an automorphism $\sigma$ such that $\sigma(g)=g$ if and only if $g=1$. If $\sigma^{2}$ is the identity map from $G$ to $G$, prove that $G$ is abelian.
-/

theorem Dummit_Foote_exercise_1_6_23 {G : Type*} [Group G] [Finite G]
    (σ : MulAut G) (hs : ∀ g : G, σ g = g ↔ g = 1)
    (hs2 : ∀ g : G, σ (σ g) = g) :
    ∀ x y : G, x * y = y * x := by
  sorry
