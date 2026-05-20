import Mathlib

open Fintype Subgroup Set Polynomial Ideal
open scoped BigOperators



/-Informal Statement

Prove that the multiplicative groups $\mathbb{R}-\{0\}$ and $\mathbb{C}-\{0\}$ are not isomorphic.
-/

theorem Dummit_Foote_exercise_1_6_4 :
    IsEmpty (ℝˣ ≃* ℂˣ) := by
  sorry
