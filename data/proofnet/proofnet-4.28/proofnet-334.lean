import Mathlib

open Topology Filter Real Complex TopologicalSpace Finset
open scoped BigOperators
noncomputable section

/-Informal Statement

Prove that no order can be defined in the complex field that turns it into an ordered field.
-/

theorem Rudin_exercise_1_8 : ¬ ∃ (r : ℂ → ℂ → Prop), IsLinearOrder ℂ r := by
  sorry
