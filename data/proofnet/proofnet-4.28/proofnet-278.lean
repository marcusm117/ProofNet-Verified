import Mathlib

open Fintype Set Real Ideal Polynomial
open scoped BigOperators
noncomputable section

/-Informal Statement

If $F$ is of characteristic $p \neq 0$, show that all the roots of $x^m - x$, where $m = p^n$, are distinct.
-/

theorem Herstein_exercise_5_6_14 {p m n: ℕ} (hp : Nat.Prime p) {F : Type*}
  [Field F] [CharP F p] (hm : m = p ^ n) :
  card (rootSet (X ^ m - X : Polynomial F) F) = m := by
  sorry
