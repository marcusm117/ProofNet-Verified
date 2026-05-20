import Mathlib

open Filter Real Function
open scoped Topology



/-Informal Statement

Prove that the real function $\sqrt{n+1}-\sqrt{n} \rightarrow 0$ as $n \rightarrow \infty$.
-/

theorem Pugh_exercise_3_4 :
  Tendsto (fun n : ℝ => sqrt (n + 1) - sqrt n) atTop (𝓝 0) := by
  sorry
