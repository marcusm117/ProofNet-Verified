import Mathlib

open Topology Filter Real Complex TopologicalSpace Finset
open scoped BigOperators
noncomputable section

/-Informal Statement

If $x, y$ are complex, prove that $||x|-|y|| \leq |x-y|$.
-/

theorem Rudin_exercise_1_13 (x y : ℂ) :
  |(norm x) - (norm y)| ≤ norm (x - y) := by
  sorry
