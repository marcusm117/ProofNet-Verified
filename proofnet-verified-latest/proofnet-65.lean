import Mathlib

open Fintype Subgroup Set Polynomial Ideal Zsqrtd
open scoped BigOperators

set_option synthInstance.maxHeartbeats 40000
set_option maxRecDepth 8000

/-Informal Statement

Prove that the quotient ring $\mathbb{Z}[i] /(1+i)$ is a field of order 2.
-/

theorem Dummit_Foote_exercise_8_3_6a :
    IsField (GaussianInt ⧸ span ({⟨1, 1⟩} : Set GaussianInt)) ∧
    ∃ finR : Fintype (GaussianInt ⧸ span ({⟨1, 1⟩} : Set GaussianInt)),
      @Fintype.card _ finR = 2 := by
  sorry
