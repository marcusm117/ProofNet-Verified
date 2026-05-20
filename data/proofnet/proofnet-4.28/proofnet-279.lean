import Mathlib

open Real
open scoped BigOperators
noncomputable section

/-Informal Statement

Prove that $\frac{1}{2}+\frac{1}{3}+\cdots+\frac{1}{n}$ is not an integer.
-/

theorem Ireland_Rosen_exercise_1_30 {n : ℕ} :
  ¬ ∃ a : ℤ, ∑ i : Fin n, (1 : ℚ) / (n+2) = a := by
  sorry
