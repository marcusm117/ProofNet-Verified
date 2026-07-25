import Mathlib

open Filter Real Function
open scoped Topology



/-Informal Statement

Assume that $f \colon \mathbb{R} \rightarrow \mathbb{R}$ satisfies $|f(t)-f(x)| \leq|t-x|^{2}$ for all $t, x$. Prove that $f$ is constant.
-/

theorem Pugh_exercise_3_1 {f : ℝ → ℝ}
  (hf : ∀ x y, |f x - f y| ≤ |x - y| ^ 2) :
  ∃ c, f = λ _x => c := by
  sorry
