import Mathlib

open Function Fintype Subgroup Ideal Polynomial Submodule Zsqrtd
open scoped BigOperators



/-Informal Statement

If $a, b$ are integers and if $a$ divides $b$ in the ring of Gauss integers, then $a$ divides $b$ in $\mathbb{Z}$.
-/

theorem Artin_exercise_11_2_13 (a b : ℤ) :
  (ofInt a : GaussianInt) ∣ ofInt b → a ∣ b := by
  sorry
