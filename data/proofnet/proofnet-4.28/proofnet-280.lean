import Mathlib

open Real
open scoped BigOperators
noncomputable section

/-Informal Statement

If $a$ is a nonzero integer, then for $n>m$ show that $\left(a^{2^{n}}+1, a^{2^{m}}+1\right)=1$ or 2 depending on whether $a$ is odd or even.
-/

theorem Ireland_Rosen_exercise_2_4 {a : ℤ} (ha : a ≠ 0)
  (f_a := λ n m : ℕ => Int.gcd (a^(2^n) + 1) (a^(2^m)+1)) {n m : ℕ}
  (hnm : n > m) :
  (Odd a → f_a n m = 1) ∧ (Even a → f_a n m = 2) := by
  sorry
