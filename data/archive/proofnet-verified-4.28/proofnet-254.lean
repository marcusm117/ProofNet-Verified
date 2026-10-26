import Mathlib

open Fintype Subgroup Set Polynomial Ideal
open scoped BigOperators



/-Informal Statement

Prove that as vector spaces over $\mathbb{Q}, \mathbb{R}^n \cong \mathbb{R}$, for all $n \in \mathbb{Z}^{+}$.
-/

theorem Dummit_Foote_exercise_11_1_13 {n : ℕ+} :
  Nonempty ((Fin n → ℝ) ≃ₗ[ℚ] ℝ) := by
  sorry
