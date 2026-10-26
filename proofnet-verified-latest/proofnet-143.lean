import Mathlib

open scoped BigOperators



/-Informal Statement

Prove that there exist infinitely many integers $n$ such that $n, n+1, n+2$ are each the sum of the squares of two integers.
-/

theorem Putnam_exercise_2000_a2 :
  ∀ N : ℕ, ∃ n : ℕ, n > N ∧ ∃ i : Fin 6 → ℕ, n = (i 0)^2 + (i 1)^2 ∧
  n + 1 = (i 2)^2 + (i 3)^2 ∧ n + 2 = (i 4)^2 + (i 5)^2 := by
  sorry
