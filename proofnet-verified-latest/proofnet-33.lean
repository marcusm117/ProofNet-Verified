import Mathlib

open Fintype Subgroup Set Polynomial Ideal
open scoped BigOperators



/-Informal Statement

Prove that if $x^{2}=1$ for all $x \in G$ then $G$ is abelian.
-/

theorem Dummit_Foote_exercise_1_1_25 {G : Type*} [Group G]
  (h : ∀ x : G, x ^ 2 = 1) : ∀ a b : G, a*b = b*a := by
  sorry
