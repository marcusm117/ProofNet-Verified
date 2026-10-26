import Mathlib

open Function Fintype Subgroup Ideal Polynomial Submodule Zsqrtd
open scoped BigOperators



/-Informal Statement

Prove that $x^3 + 6x + 12$ is irreducible in $\mathbb{Q}$.
-/

theorem Artin_exercise_11_4_1b :
  Irreducible (12 + 6 * X + X ^ 3 : Polynomial ℚ) := by
  sorry
