import Mathlib

open Fintype Set Real Ideal Polynomial
open scoped BigOperators
noncomputable section

/-Informal Statement

If $G$ is a group in which $(a b)^{i}=a^{i} b^{i}$ for three consecutive integers $i$, prove that $G$ is abelian.
-/

instance Herstein_exercise_2_2_3 {G : Type*} [Group G]
  {P : ℕ → Prop} {hP : P = λ i => ∀ a b : G, (a*b)^i = a^i * b^i}
  (hP1 : ∃ n : ℕ, P n ∧ P (n+1) ∧ P (n+2)) : CommGroup G := by
  sorry
