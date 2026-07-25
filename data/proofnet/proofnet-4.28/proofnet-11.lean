import Mathlib

open Function Fintype Subgroup Ideal Polynomial Submodule Zsqrtd
open scoped BigOperators
noncomputable section

/-Informal Statement

Prove that $x^3 + 6x + 12$ is irreducible in $\mathbb{Q}$.
-/

theorem Artin_exercise_11_4_1b {F : Type*} [Field F] [Fintype F] (hF : card F = 2) :
  Irreducible (12 + 6 * X + X ^ 3 : Polynomial F) := by
  sorry
