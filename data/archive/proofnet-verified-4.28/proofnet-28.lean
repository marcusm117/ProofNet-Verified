import Mathlib

open Fintype Subgroup Set Polynomial Ideal
open scoped BigOperators



/-Informal Statement

Prove that the addition of residue classes $\mathbb{Z}/n\mathbb{Z}$ is associative.
-/

theorem Dummit_Foote_exercise_1_1_3 (n : ℕ) : 
  ∀ (x y z : ZMod n), (x + y) + z = x + (y + z) := by
  sorry
