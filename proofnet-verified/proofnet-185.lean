import Mathlib

open Function Fintype Subgroup Ideal Polynomial Submodule Zsqrtd
open scoped BigOperators



/-Informal Statement

Prove that the center of the product of two groups is the product of their centers.
-/

theorem Artin_exercise_2_8_6 {G H : Type*} [Group G] [Group H] :
    Subgroup.center (G × H) = (Subgroup.center G).prod (Subgroup.center H) := by
  sorry
