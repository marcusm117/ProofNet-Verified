import Mathlib

open Function Fintype Subgroup Ideal Polynomial Submodule Zsqrtd
open scoped BigOperators
noncomputable section

/-Informal Statement

Prove that the center of the product of two groups is the product of their centers.
-/

instance Artin_exercise_2_8_6 {G H : Type*} [Group G] [Group H] :
  center (G × H) ≃* (center G) × (center H) := by
  sorry
