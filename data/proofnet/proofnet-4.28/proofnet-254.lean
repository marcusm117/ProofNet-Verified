import Mathlib

open Fintype Subgroup Set Polynomial Ideal
open scoped BigOperators
noncomputable section

/-Informal Statement

Prove that as vector spaces over $\mathbb{Q}, \mathbb{R}^n \cong \mathbb{R}$, for all $n \in \mathbb{Z}^{+}$.
-/

instance Dummit_Foote_exercise_11_1_13 {ι : Type*} [Fintype ι] :
  (ι → ℝ) ≃ₗ[ℚ] ℝ := by
  sorry
