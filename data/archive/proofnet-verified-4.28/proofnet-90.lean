import Mathlib

open Fintype Set Real Ideal Polynomial
open scoped BigOperators



/-Informal Statement

Show that there is an infinite number of integers a such that $f(x) = x^7 + 15x^2 - 30x + a$ is irreducible in $Q[x]$.
-/

theorem Herstein_exercise_4_6_3 :
  Infinite {a : ℤ | Irreducible (X^7 + 15*X^2 - 30*X + (a : Polynomial ℚ) : Polynomial ℚ)} := by
  sorry
