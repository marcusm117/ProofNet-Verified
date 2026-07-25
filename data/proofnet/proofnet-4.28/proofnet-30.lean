import Mathlib

open Fintype Subgroup Set Polynomial Ideal
open scoped BigOperators
noncomputable section

/-Informal Statement

Let $x$ be an element of $G$. Prove that $x^2=1$ if and only if $|x|$ is either $1$ or $2$.
-/

theorem Dummit_Foote_exercise_1_1_16 {G : Type*} [Group G]
  (x : G) (hx : x ^ 2 = 1) :
  orderOf x = 1 ∨ orderOf x = 2 := by
  sorry
