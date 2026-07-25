import Mathlib

open Fintype Subgroup Set Polynomial Ideal
open scoped BigOperators
noncomputable section

/-Informal Statement

Let $\varphi: R \rightarrow S$ be a surjective homomorphism of rings. Prove that the image of the center of $R$ is contained in the center of $S$.
-/

theorem Dummit_Foote_exercise_7_3_16 {R S : Type*} [Ring R] [Ring S]
  {φ : R →+* S} (hf : Function.Surjective φ) :
  φ '' (center R) ⊂ center S := by
  sorry
