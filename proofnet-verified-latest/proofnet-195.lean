import Mathlib

open Function Fintype Subgroup Ideal Polynomial Submodule Zsqrtd
open scoped BigOperators


/-Informal Statement

Prove that $x^3 - 9$ is irreducible in $\mathbb{F}_{31}$.
-/

theorem Artin_exercise_11_4_6c : Irreducible (X^3 - 9 : Polynomial (ZMod 31)) := by
  sorry
