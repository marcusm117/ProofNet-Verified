import Mathlib

open Fintype Set Real Ideal Polynomial
open scoped BigOperators



/-Informal Statement

If $a > 1$ is an integer, show that $n \mid \varphi(a^n - 1)$, where $\phi$ is the Euler $\varphi$-function.
-/

theorem Herstein_exercise_2_4_36 {a n : ℕ} (h : a > 1) :
  n ∣ (a ^ n - 1).totient := by
  sorry
