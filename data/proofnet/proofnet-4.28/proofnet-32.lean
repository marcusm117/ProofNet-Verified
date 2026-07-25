import Mathlib

open Fintype Subgroup Set Polynomial Ideal
open scoped BigOperators
noncomputable section

/-Informal Statement

If $x$ and $g$ are elements of the group $G$, prove that $|x|=\left|g^{-1} x g\right|$.
-/

theorem Dummit_Foote_exercise_1_1_22a {G : Type*} [Group G] (x g : G) :
  orderOf x = orderOf (g⁻¹ * x * g) := by
  sorry
