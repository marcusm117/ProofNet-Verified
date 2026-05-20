import Mathlib

open Function Fintype Subgroup Ideal Polynomial Submodule Zsqrtd
open scoped BigOperators
noncomputable section

/-Informal Statement

Prove that $x^2+1$ is irreducible in $\mathbb{F}_7$
-/

theorem Artin_exercise_11_4_6b {F : Type*} [Field F] [Fintype F] (hF : card F = 31) :
  Irreducible (X ^ 3 - 9 : Polynomial F) := by
  sorry
