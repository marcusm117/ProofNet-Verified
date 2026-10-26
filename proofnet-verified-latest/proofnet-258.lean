import Mathlib

open Fintype Set Real Ideal Polynomial
open scoped BigOperators



/-Informal Statement

Let $G$ be a group in which $(a b)^{n}=a^{n} b^{n}$ for some fixed integer $n>1$ for all $a, b \in G$. For all $a, b \in G$, prove that $\left(a b a^{-1} b^{-1}\right)^{n(n-1)}=e$.
-/

theorem Herstein_exercise_2_2_6c {G : Type*} [Group G] {n : ℕ} (hn : n > 1)
  (h : ∀ (a b : G), (a * b) ^ n = a ^ n * b ^ n) :
  ∀ (a b : G), (a * b * a⁻¹ * b⁻¹) ^ (n * (n - 1)) = 1 := by
  sorry
