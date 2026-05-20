import Mathlib

open Fintype Subgroup Set Polynomial Ideal
open scoped BigOperators



/-Informal Statement

Let $A$ and $B$ be groups. Prove that $A \times B \cong B \times A$.
-/

theorem Dummit_Foote_exercise_1_6_11 {A B : Type*} [Group A] [Group B] :
  Nonempty (A × B ≃* B × A) := by
  sorry
