import Mathlib

open Fintype Subgroup Set Polynomial Ideal
open scoped BigOperators



/-Informal Statement

Let $x$ and $y$ be elements of $G$. Prove that $xy=yx$ if and only if $y^{-1}xy=x$ if and only if $x^{-1}y^{-1}xy=1$.
-/

theorem Dummit_Foote_exercise_1_1_18 {G : Type*} [Group G]
  (x y : G) : (x * y = y * x ↔ y⁻¹ * x * y = x) ∧ (y⁻¹ * x * y = x ↔ x⁻¹ * y⁻¹ * x * y = 1) := by
  sorry
