import Mathlib

open Fintype Subgroup Set Polynomial Ideal
open scoped BigOperators
noncomputable section

/-Informal Statement

A ring $R$ is called a Boolean ring if $a^{2}=a$ for all $a \in R$. Prove that every Boolean ring is commutative.
-/

instance Dummit_Foote_exercise_7_1_15 {R : Type*} [Ring R] (hR : ∀ a : R, a^2 = a) :
  CommRing R := by
  sorry
