import Mathlib

open Real
open scoped BigOperators



/-Informal Statement

Prove that $\frac{1}{2}+\frac{1}{3}+\cdots+\frac{1}{n}$ is not an integer.
-/

theorem Ireland_Rosen_exercise_1_30 (n : ℕ) (hn : 2 ≤ n) :
  ¬ ∃ a : ℤ, (Finset.range (n - 1)).sum (fun i => (1 : ℚ) / ((i : ℚ) + 2)) = (a : ℚ) := by
  sorry
