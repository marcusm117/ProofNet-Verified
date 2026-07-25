import Mathlib

open Fintype Set Real Ideal Polynomial
open scoped BigOperators


/-Informal Statement

If a ∈ ℂ satisfies p(a) = 0 where p(x) = x^5 + √2·x³ + √5·x² + √7·x + √11,
then a is algebraic over ℚ of degree at most 80.
-/


theorem Herstein_exercise_5_4_3 {a : ℂ}
    (ha : a ^ 5 + (Real.sqrt 2 : ℂ) * a ^ 3 + (Real.sqrt 5 : ℂ) * a ^ 2 +
      (Real.sqrt 7 : ℂ) * a + (Real.sqrt 11 : ℂ) = 0) :
    ∃ q : Polynomial ℚ, q ≠ 0 ∧ q.natDegree ≤ 80 ∧
      Polynomial.aeval a q = 0 := by
  sorry
