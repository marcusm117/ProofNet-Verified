import Mathlib

open Topology Filter Real Complex TopologicalSpace Finset
open scoped BigOperators
noncomputable section

/-Informal Statement

Prove that every continuous open mapping of $R^{1}$ into $R^{1}$ is monotonic.
-/

theorem Rudin_exercise_4_15 {f : ℝ → ℝ}
  (hf : Continuous f) (hof : IsOpenMap f) :
  Monotone f := by
  sorry
