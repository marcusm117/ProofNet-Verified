import Mathlib

open Fintype Subgroup Set Polynomial Ideal
open scoped BigOperators
noncomputable section

/-Informal Statement

Prove that there exists a normal subgroup that is not characteristic.
-/

theorem Dummit_Foote_exercise_4_4_6b :
  ∃ (G : Type*) (hG : Group G) (H : @Subgroup G hG), @Characteristic G hG H  ∧ ¬ @Normal G hG H := by
  sorry
