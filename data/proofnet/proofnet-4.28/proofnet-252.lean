import Mathlib

open Fintype Subgroup Set Polynomial Ideal
open scoped BigOperators
noncomputable section

/-Informal Statement

Prove that $x^4+4x^3+6x^2+2x+1$ is irreducible in $\mathbb{Z}[x]$.
-/

theorem Dummit_Foote_exercise_9_4_2c : Irreducible
  (X^4 + 4*X^3 + 6*X^2 + 2*X + 1 : Polynomial ℤ) := by
  sorry
