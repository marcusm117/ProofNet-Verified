import Mathlib

open Function Fintype Subgroup Ideal Polynomial Submodule Zsqrtd
open scoped BigOperators
noncomputable section

/-Informal Statement

Prove that in the ring $\mathbb{Z}[x],(2) \cap(x)=(2 x)$.
-/

theorem Artin_exercise_10_2_4 :
  span ({2} : Set $ Polynomial ℤ) ⊓ (span {X}) =
  span ({2 * X} : Set $ Polynomial ℤ) := by
  sorry
