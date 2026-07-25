import Mathlib

open Fintype Set Real Ideal Polynomial
open scoped BigOperators



/-Informal Statement

If $a \in K$ is such that $a^2$ is algebraic over the subfield $F$ of $K$, show that a is algebraic over $F$.
-/

theorem Herstein_exercise_5_3_7 {K : Type*} [Field K] {F : Subfield K}
  {a : K} (ha : IsAlgebraic F (a ^ 2)) : IsAlgebraic F a := by
  sorry
