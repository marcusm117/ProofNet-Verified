import Mathlib

open Fintype Set Real Ideal Polynomial
open scoped BigOperators



/-Informal Statement

If $G$ is a finite group, prove that there is an integer $m > 0$ such that $a^m = e$ for all $a \in G$.
-/

theorem Herstein_exercise_2_1_27 {G : Type*} [Group G]
  [Fintype G] : ∃ (m : ℕ), m > 0 ∧ ∀ (a : G), a ^ m = 1 := by
  sorry
