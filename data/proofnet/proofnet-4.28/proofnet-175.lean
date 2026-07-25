import Mathlib

open Topology Filter Real Complex TopologicalSpace Finset
open scoped BigOperators
noncomputable section

/-Informal Statement

Suppose $a \in R^{1}, f$ is a twice-differentiable real function on $(a, \infty)$, and $M_{0}, M_{1}, M_{2}$ are the least upper bounds of $|f(x)|,\left|f^{\prime}(x)\right|,\left|f^{\prime \prime}(x)\right|$, respectively, on $(a, \infty)$. Prove that $M_{1}^{2} \leq 4 M_{0} M_{2} .$
-/

theorem Rudin_exercise_5_15 {f : ℝ → ℝ} (a M0 M1 M2 : ℝ)
  (hf' : DifferentiableOn ℝ f (Set.Ici a))
  (hf'' : DifferentiableOn ℝ (deriv f) (Set.Ici a))
  (hM0 : M0 = sSup {(|f x|) | x ∈ (Set.Ici a)})
  (hM1 : M1 = sSup {(|deriv f x|) | x ∈ (Set.Ici a)})
  (hM2 : M2 = sSup {(|deriv (deriv f) x|) | x ∈ (Set.Ici a)}) :
  (M1 ^ 2) ≤ 4 * M0 * M2 := by
  sorry
