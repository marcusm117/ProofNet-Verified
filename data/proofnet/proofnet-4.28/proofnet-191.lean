import Mathlib

open Function Fintype Subgroup Ideal Polynomial Submodule Zsqrtd
open scoped BigOperators
noncomputable section

/-Informal Statement

Let $I, J$ be ideals of a ring $R$ such that $I+J=R$. Prove that $I J=I \cap J$.
-/

theorem Artin_exercise_10_4_7a {R : Type*} [CommRing R] [NoZeroDivisors R]
  (I J : Ideal R) (hIJ : I + J = ⊤) : I * J = I ⊓ J := by
  sorry
