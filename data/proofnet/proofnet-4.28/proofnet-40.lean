import Mathlib

open Fintype Subgroup Set Polynomial Ideal
open scoped BigOperators
noncomputable section

/-Informal Statement

Let $A$ be an abelian group and let $B$ be a subgroup of $A$. Prove that $A / B$ is abelian.
-/

theorem Dummit_Foote_exercise_3_1_3a {A : Type*} [CommGroup A] (B : Subgroup A) :
  ∀ a b : A ⧸ B, a*b = b*a := by
  sorry
