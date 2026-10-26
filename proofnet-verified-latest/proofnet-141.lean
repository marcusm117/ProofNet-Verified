import Mathlib

open Filter Real Function
open scoped Topology



/-Informal Statement

Prove that $\sum 1/k(\log(k))^p$ diverges when $p \leq 1$.
-/

theorem Pugh_exercise_3_63b (p : ℝ) (f : ℕ → ℝ) (hp : p ≤ 1)
    (h : f = fun k : ℕ => 1 / (k * (Real.log k) ^ p)) :
    ¬ Summable f := by
  sorry
