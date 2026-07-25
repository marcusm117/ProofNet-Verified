import Mathlib

open Filter Real Function
open scoped Topology
noncomputable section

/-Informal Statement

Prove that $\sqrt{n+1}-\sqrt{n} \rightarrow 0$ as $n \rightarrow \infty$.
-/

theorem Pugh_exercise_3_4 (n : ℕ) :
  Tendsto (λ n => (sqrt (n + 1) - sqrt n)) atTop (𝓝 0) := by
  sorry
