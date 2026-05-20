import Mathlib

open scoped BigOperators

/-Informal Statement

Prove that, for any integers $a, b, c$, there exists a positive integer $n$ such that $\sqrt{n^3+a n^2+b n+c}$ is not an integer.
-/

theorem Putnam_exercise_1998_b6 (a b c : ℤ) :
  ∃ n : ℤ, n > 0 ∧ ¬ ∃ m : ℤ, Real.sqrt (n^3 + a*n^2 + b*n + c) = m := by
  sorry
