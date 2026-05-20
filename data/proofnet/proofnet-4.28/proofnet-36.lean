import Mathlib

open Fintype Subgroup Set Polynomial Ideal
open scoped BigOperators
noncomputable section

/-Informal Statement

Let $G$ be any group. Prove that the map from $G$ to itself defined by $g \mapsto g^{-1}$ is a homomorphism if and only if $G$ is abelian.
-/

theorem Dummit_Foote_exercise_1_6_17 {G : Type*} [Group G] (f : G → G)
  (hf : f = λ g => g⁻¹) :
  ∀ x y : G, f x * f y = f (x*y) ↔ ∀ x y : G, x*y = y*x := by
  sorry
