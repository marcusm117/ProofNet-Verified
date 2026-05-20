import Mathlib

open Fintype Subgroup Set Polynomial Ideal
open scoped BigOperators
noncomputable section

/-Informal Statement

Prove that the addition of residue classes $\mathbb{Z}/n\mathbb{Z}$ is associative.
-/

theorem Dummit_Foote_exercise_1_1_3 (n : ℤ) :
  ∀ (a b c : ℤ), (a+b)+c ≡ a+(b+c) [ZMOD n] := by
  sorry
