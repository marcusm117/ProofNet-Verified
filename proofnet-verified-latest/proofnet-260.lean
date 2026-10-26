import Mathlib

open Fintype Set Real Ideal Polynomial
open scoped BigOperators



/-Informal Statement

Let $G$ be a group such that all subgroups of $G$ are normal in $G$. If $a, b \in G$, prove that $ba = a^jb$ for some $j$.
-/

theorem Herstein_exercise_2_5_23 {G : Type*} [Group G]
  (hG : ∀ (H : Subgroup G), H.Normal) (a b : G) :
  ∃ (j : ℤ) , b*a = a^j * b:= by
  sorry
