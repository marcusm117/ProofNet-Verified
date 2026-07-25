import Mathlib

open Fintype Subgroup Set Polynomial Ideal
open scoped BigOperators
noncomputable section

/-Informal Statement

Prove that for all $n>1$ that $\mathbb{Z}/n\mathbb{Z}$ is not a group under multiplication of residue classes.
-/

theorem Dummit_Foote_exercise_1_1_5 (n : ℕ) (hn : 1 < n) :
  IsEmpty (Group (ZMod n)) := by
  sorry
