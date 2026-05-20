import Mathlib

open Fintype Subgroup Set Polynomial Ideal
open scoped BigOperators
noncomputable section

/-Informal Statement

Prove that $A \times B$ is an abelian group if and only if both $A$ and $B$ are abelian.
-/

theorem Dummit_Foote_exercise_1_1_29 {A B : Type*} [Group A] [Group B] :
  ∀ x y : A × B, x*y = y*x ↔ (∀ x y : A, x*y = y*x) ∧
  (∀ x y : B, x*y = y*x) := by
  sorry
