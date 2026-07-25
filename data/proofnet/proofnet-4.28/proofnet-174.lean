import Mathlib

open Topology Filter Real Complex TopologicalSpace Finset
open scoped BigOperators
noncomputable section

/-Informal Statement

Suppose (a) $f$ is continuous for $x \geq 0$, (b) $f^{\prime}(x)$ exists for $x>0$, (c) $f(0)=0$, (d) $f^{\prime}$ is monotonically increasing. Put $g(x)=\frac{f(x)}{x} \quad(x>0)$ and prove that $g$ is monotonically increasing.
-/

theorem Rudin_exercise_5_6
  {f : ℝ → ℝ}
  (hf1 : Continuous f)
  (hf2 : ∀ x, DifferentiableAt ℝ f x)
  (hf3 : f 0 = 0)
  (hf4 : Monotone (deriv f)) :
  MonotoneOn (λ x => f x / x) (Set.Ioi 0) := by
  sorry
