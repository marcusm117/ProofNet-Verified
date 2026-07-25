import Mathlib

open Filter Real Function
open scoped Topology
noncomputable section

/-Informal Statement

Prove that $\sum 1/k(\log(k))^p$ converges when $p > 1$.
-/

theorem Pugh_exercise_3_63a (p : ℝ) (f : ℕ → ℝ) (hp : p > 1)
  (h : f = λ (k : ℕ) => (1 : ℝ) / (k * (log k) ^ p)) :
  ∃ l, Tendsto f atTop (𝓝 l) := by
  sorry
