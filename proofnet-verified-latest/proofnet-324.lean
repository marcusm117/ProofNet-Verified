import Mathlib

open Filter Real Function
open scoped Topology



/-Informal Statement

Prove that $\sum 1/k(\log(k))^p$ converges when $p > 1$.
-/

theorem Pugh_exercise_3_63a (p : ℝ) (hp : p > 1) :
  Summable (fun (k : ℕ) => (1 : ℝ) / ((k + 2) * (Real.log (k + 2)) ^ p)) := by
  sorry
