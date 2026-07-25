import Mathlib

open Topology Filter Real Complex TopologicalSpace Finset
open scoped BigOperators


/-Informal Statement

Suppose $f^{\prime}(x)>0$ in $(a, b)$. Prove that $f$ is strictly increasing in $(a, b)$, and let $g$ be its inverse function. Prove that $g$ is differentiable, and that $g^{\prime}(f(x))=\frac{1}{f^{\prime}(x)} \quad(a < x < b)$.
-/

theorem Rudin_exercise_5_2 :
    ∀ (a b : ℝ) (f g : ℝ → ℝ),
      (∀ x ∈ Set.Ioo a b, deriv f x > 0) →
      (∀ x ∈ Set.Ioo a b, g (f x) = x) →
      StrictMonoOn f (Set.Ioo a b) ∧
        DifferentiableOn ℝ g (f '' Set.Ioo a b) ∧
          ∀ x ∈ Set.Ioo a b, deriv g (f x) = 1 / deriv f x := by
  sorry
