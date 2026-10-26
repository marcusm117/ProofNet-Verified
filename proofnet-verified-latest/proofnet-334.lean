import Mathlib

open Topology Filter Real Complex TopologicalSpace Finset
open scoped BigOperators

/-Informal Statement

Prove that no order can be defined in the complex field that turns it into an ordered field.
-/


theorem Rudin_exercise_1_8 :
    ¬ (∃ inst : LinearOrder ℂ, by
      let _ : LinearOrder ℂ := inst
      exact IsStrictOrderedRing ℂ) := by
  sorry
