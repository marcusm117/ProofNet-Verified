import Mathlib

open Fintype Set Real Ideal Polynomial
open scoped BigOperators
noncomputable section

/-Informal Statement

Prove that $x^3 - 3x - 1$ is irreducible over $\mathbb{Q}$.
-/

theorem Herstein_exercise_5_5_2 : Irreducible (X^3 - 3*X - 1 : Polynomial ℚ) := by
  sorry
