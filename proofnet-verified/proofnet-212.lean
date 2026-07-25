import Mathlib

open Fintype Subgroup Set Polynomial Ideal
open scoped BigOperators



/-Informal Statement

Prove that the multiplication of residue class $\mathbb{Z}/n\mathbb{Z}$ is associative.
-/

theorem Dummit_Foote_exercise_1_1_4 (n : ℕ) (a b c : ZMod n) :
  (a * b) * c = a * (b * c) := by
  sorry
