import Mathlib

open scoped BigOperators


/-Informal Statement

Prove that there are unique positive integers $a, n$ such that $a^{n+1}-(a+1)^n=2001$.
-/


theorem Putnam_exercise_2001_a5 :
    ∃! p : ℕ × ℕ, p.1 > 0 ∧ p.2 > 0 ∧ p.1^(p.2 + 1) - (p.1 + 1)^(p.2) = 2001 := by
  sorry
