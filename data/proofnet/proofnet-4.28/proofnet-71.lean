import Mathlib

open Fintype Set Real Ideal Polynomial
open scoped BigOperators
noncomputable section

/-Informal Statement

Show that a group of order 5 must be abelian.
-/

instance Herstein_exercise_2_1_21 (G : Type*) [Group G] [Fintype G]
  (hG : card G = 5) :
  CommGroup G := by
  sorry
