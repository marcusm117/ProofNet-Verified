import Mathlib

open Topology Filter Real Complex TopologicalSpace Finset
open scoped BigOperators

/-Informal Statement

Suppose $g$ is a real function on $R^{1}$, with bounded derivative (say $\left|g^{\prime}\right| \leq M$ ). Fix $\varepsilon>0$, and define $f(x)=x+\varepsilon g(x)$. Prove that $f$ is one-to-one if $\varepsilon$ is small enough.
-/

theorem Rudin_exercise_5_3
  {g : ℝ → ℝ} (hgDiff : Differentiable ℝ g)
  (hg' : ∃ M : ℝ, ∀ x : ℝ, |deriv g x| ≤ M) :
  ∃ N > 0, ∀ ε > 0, ε < N → Function.Injective (λ x : ℝ => x + ε * g x) := by
  sorry
