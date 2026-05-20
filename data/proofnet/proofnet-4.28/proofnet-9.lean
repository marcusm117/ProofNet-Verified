import Mathlib

open Function Fintype Subgroup Ideal Polynomial Submodule Zsqrtd
open scoped BigOperators
noncomputable section

/-Informal Statement

Let $I, J$ be ideals in a ring $R$. Prove that the residue of any element of $I \cap J$ in $R / I J$ is nilpotent.
-/

theorem Artin_exercise_10_4_6 {R : Type*} [CommRing R]
  [NoZeroDivisors R] (I J : Ideal R) (x : ↑(I ⊓ J)) :
  IsNilpotent ((Ideal.Quotient.mk (I*J)) x) := by
  sorry
