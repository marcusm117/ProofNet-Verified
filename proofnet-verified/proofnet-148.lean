import Mathlib

open Topology Filter Real Complex TopologicalSpace Finset
open scoped BigOperators



/-Informal Statement

If $r$ is rational $(r \neq 0)$ and $x$ is irrational, prove that $r+x$ is irrational.
-/

theorem Rudin_exercise_1_1a
  (x : ℝ) (y : ℚ) (hy : y ≠ 0) :
  ( Irrational x ) -> Irrational ( x + y ) := by
  sorry
