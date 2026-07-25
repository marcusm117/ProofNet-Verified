import Mathlib

open Fintype Subgroup Set Polynomial Ideal
open scoped BigOperators
noncomputable section

/-Informal Statement

Let $A$ and $B$ be groups. Prove that $A \times B \cong B \times A$.
-/

instance Dummit_Foote_exercise_1_6_11 {A B : Type*} [Group A] [Group B] :
  A × B ≃* B × A := by
  sorry
