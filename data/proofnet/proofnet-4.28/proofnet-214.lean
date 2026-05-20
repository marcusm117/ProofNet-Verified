import Mathlib

open Fintype Subgroup Set Polynomial Ideal
open scoped BigOperators
noncomputable section

/-Informal Statement

Let $x$ be an element of $G$. Prove that if $|x|=n$ for some positive integer $n$ then $x^{-1}=x^{n-1}$.
-/

theorem Dummit_Foote_exercise_1_1_17 {G : Type*} [Group G] {x : G} {n : ℕ}
  (hxn: orderOf x = n) :
  x⁻¹ = x ^ (n - 1 : ℤ) := by
  sorry
