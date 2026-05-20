import Mathlib

open Topology Filter Real Complex TopologicalSpace Finset
open scoped BigOperators
noncomputable section

/-Informal Statement

If $r$ is rational $(r \neq 0)$ and $x$ is irrational, prove that $rx$ is irrational.
-/

theorem Rudin_exercise_1_1b
(x : ℝ)
(y : ℚ)
(h : y ≠ 0)
: ( Irrational x ) -> Irrational ( x * y ) := by
  sorry
