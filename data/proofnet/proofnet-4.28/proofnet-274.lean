import Mathlib

open Fintype Set Real Ideal Polynomial
open scoped BigOperators
noncomputable section

/-Informal Statement

Prove that $f(x) = x^3 + 3x + 2$ is irreducible in $Q[x]$.
-/

theorem Herstein_exercise_4_6_2 : Irreducible (X^3 + 3*X + 2 : Polynomial ℚ) := by
  sorry
