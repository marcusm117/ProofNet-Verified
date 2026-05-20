import Mathlib

open Topology Filter Real Complex TopologicalSpace Finset
open scoped BigOperators
noncomputable section

/-Informal Statement

Suppose $f$ is a real function defined on $\mathbb{R}$ which satisfies $\lim_{h \rightarrow 0} f(x + h) - f(x - h) = 0$ for every $x \in \mathbb{R}$. Show that $f$ does not need to be continuous.
-/

theorem Rudin_exercise_4_1a
  : ∃ (f : ℝ → ℝ), (∀ (x : ℝ), Tendsto (λ y => f (x + y) - f (x - y)) (𝓝 0) (𝓝 0)) ∧ ¬ Continuous f := by
  sorry
