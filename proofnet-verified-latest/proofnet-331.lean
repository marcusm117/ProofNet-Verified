import Mathlib

open scoped BigOperators
open Real Nat Function

/-Informal Statement

Given a real number $a$, we define a sequence by $x_{0}=1$, $x_{1}=x_{2}=a$, and $x_{n+1}=2 x_{n} x_{n-1}-x_{n-2}$ for $n \geq 2$. Prove that if $x_{n}=0$ for some $n$, then the sequence is periodic.
-/


theorem Putnam_exercise_2018_b4 (a : ℝ) (x : ℕ → ℝ) (hx0 : x 0 = 1)
  (hx1 : x 1 = a) (hx2 : x 2 = a)
  (hxn : ∀ n : ℕ, n ≥ 2 → x (n+1) = 2*(x n)*(x (n-1)) - x (n-2))
  (h : ∃ n, x n = 0) :
  ∃ c ≠ 0, Periodic x c := by
  sorry
