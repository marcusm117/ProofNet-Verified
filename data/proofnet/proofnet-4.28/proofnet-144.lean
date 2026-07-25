import Mathlib

open scoped BigOperators

/-Informal Statement

Prove that for each positive integer $n$, the number $10^{10^{10^n}}+10^{10^n}+10^n-1$ is not prime.
-/

theorem Putnam_exercise_2010_a4 (n : ℕ) :
  ¬ Nat.Prime (10^10^10^n + 10^10^n + 10^n - 1) := by
  sorry
