import Mathlib

open Fintype Set Real Ideal Polynomial
open scoped BigOperators



/-Informal Statement

Prove that a group of order 9 must be abelian.
-/

theorem Herstein_exercise_2_5_43 (G : Type*) [Group G] [Fintype G]
  (hG : card G = 9) :
  ∀ a b : G, a * b = b * a := by
  sorry
