import Mathlib

open Fintype Subgroup Set Polynomial Ideal
open scoped BigOperators
noncomputable section

/-Informal Statement

Prove that $x^6+30x^5-15x^3 + 6x-120$ is irreducible in $\mathbb{Z}[x]$.
-/

theorem Dummit_Foote_exercise_9_4_2b : Irreducible
  (X^6 + 30*X^5 - 15*X^3 + 6*X - 120 : Polynomial ℤ) := by
  sorry
