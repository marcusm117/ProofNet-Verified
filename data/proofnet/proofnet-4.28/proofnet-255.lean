import Mathlib

open Fintype Set Real Ideal Polynomial
open scoped BigOperators
noncomputable section

/-Informal Statement

If $G$ is a finite group of even order, show that there must be an element $a \neq e$ such that $a=a^{-1}$.
-/

theorem Herstein_exercise_2_1_18 {G : Type*} [Group G]
  [Fintype G] (hG2 : Even (card G)) :
  ∃ (a : G), a ≠ 1 ∧ a = a⁻¹ := by
  sorry
