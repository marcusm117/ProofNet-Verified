import Mathlib

open Topology Filter Real Complex TopologicalSpace Finset
open scoped BigOperators
noncomputable section

/-Informal Statement

Suppose $f$ is defined and differentiable for every $x>0$, and $f^{\prime}(x) \rightarrow 0$ as $x \rightarrow+\infty$. Put $g(x)=f(x+1)-f(x)$. Prove that $g(x) \rightarrow 0$ as $x \rightarrow+\infty$.
-/

theorem Rudin_exercise_5_5
  {f : ℝ → ℝ}
  (hfd : Differentiable ℝ f)
  (hf : Tendsto (deriv f) atTop (𝓝 0)) :
  Tendsto (λ x => f (x + 1) - f x) atTop atTop := by
  sorry
