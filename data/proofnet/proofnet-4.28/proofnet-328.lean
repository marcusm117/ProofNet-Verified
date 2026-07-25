import Mathlib

open scoped BigOperators

/-Informal Statement

Prove that there are unique positive integers $a, n$ such that $a^{n+1}-(a+1)^n=2001$.
-/

theorem Putnam_exercise_2001_a5 :
  ∃! a : ℕ × ℕ, a.1 > 0 ∧ a.2 > 0 ∧ a.1^(a.2+1) - (a.1+1)^a.2 = 2001 := by
  sorry
