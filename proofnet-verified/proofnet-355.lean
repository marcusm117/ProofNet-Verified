import Mathlib

open Topology Filter Real Complex TopologicalSpace Finset
open scoped BigOperators



/-Informal Statement

Let $f$ be defined for all real $x$, and suppose that $|f(x)-f(y)| \leq (x-y)^{2}$ for all real $x$ and $y$. Prove that $f$ is constant.
-/

theorem Rudin_exercise_5_1
  {f : ℝ → ℝ} (hf : ∀ x y : ℝ, |(f x - f y)| ≤ (x - y) ^ 2) :
  ∃ c, f = λ _x => c := by
  sorry
