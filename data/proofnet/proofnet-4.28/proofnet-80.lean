import Mathlib

open Fintype Set Real Ideal Polynomial
open scoped BigOperators
noncomputable section

/-Informal Statement

Prove that any two nonabelian groups of order 21 are isomorphic.
-/

instance Herstein_exercise_2_8_12 {G H : Type*} [Fintype G] [Fintype H]
  [Group G] [Group H] (hG : card G = 21) (hH : card H = 21)
  (hG1 : IsEmpty (CommGroup G)) (hH1 : IsEmpty (CommGroup H)) :
  G ≃* H := by
  sorry
