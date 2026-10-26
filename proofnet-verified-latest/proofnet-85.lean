import Mathlib

open Fintype Set Real Ideal Polynomial
open scoped BigOperators

/-Informal Statement

Let $R$ be a ring in which $x^3 = x$ for every $x \in R$. Prove that $R$ is commutative.
-/


theorem Herstein_exercise_4_2_5 {R : Type*} [Ring R]
  (h : ∀ x : R, x ^ 3 = x) : ∀ x y : R, x * y = y * x := by
  sorry
