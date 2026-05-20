import Mathlib

open Fintype Set Real Ideal Polynomial
open scoped BigOperators



/-Informal Statement

If $G$ is a group in which $(a b)^{i}=a^{i} b^{i}$ for three consecutive integers $i$, prove that $G$ is abelian.
-/

theorem Herstein_exercise_2_2_3 {G : Type*} [Group G]
  (h : ∃ n : ℤ, (∀ a b : G, (a * b) ^ n = a ^ n * b ^ n) ∧
                  (∀ a b : G, (a * b) ^ (n + 1) = a ^ (n + 1) * b ^ (n + 1)) ∧
                  (∀ a b : G, (a * b) ^ (n + 2) = a ^ (n + 2) * b ^ (n + 2))) :
  ∀ a b : G, a * b = b * a := by
  sorry
