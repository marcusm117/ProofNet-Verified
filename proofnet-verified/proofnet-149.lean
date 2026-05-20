import Mathlib

open Topology Filter Real Complex TopologicalSpace Finset
open scoped BigOperators



/-Informal Statement

Prove that there is no rational number whose square is $12$.
-/

theorem Rudin_exercise_1_2 : ¬ ∃ (x : ℚ), ( x ^ 2 = 12 ) := by
  sorry
