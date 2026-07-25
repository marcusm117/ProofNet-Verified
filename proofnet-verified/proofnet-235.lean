import Mathlib
import Mathlib.Tactic.IntervalCases

open Fintype Subgroup Set Polynomial Ideal
open scoped BigOperators



/-Informal Statement

Prove that a group of order 56 has a normal Sylow $p$-subgroup for some prime $p$ dividing its order.
-/

theorem Dummit_Foote_exercise_4_5_13 {G : Type*} [Group G] [Fintype G]
  (hG : card G = 56) :
  ∃ (p : ℕ) (P : Sylow p G), p.Prime ∧ (p ∣ card G) ∧ P.Normal := by
  sorry
