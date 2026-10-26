import Mathlib

open Fintype Set Real Ideal Polynomial
open scoped BigOperators



/-Informal Statement

Prove that any two nonabelian groups of order 21 are isomorphic.
-/

theorem Herstein_exercise_2_8_12 {G H : Type*} [Fintype G] [Fintype H]
    [Group G] [Group H] (hG : card G = 21) (hH : card H = 21)
    (hG1 : ∃ a b : G, a * b ≠ b * a) (hH1 : ∃ a b : H, a * b ≠ b * a) :
    Nonempty (G ≃* H) := by
  sorry
