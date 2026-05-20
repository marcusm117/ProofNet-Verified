import Mathlib

open Topology Filter Real Complex TopologicalSpace Finset
open scoped BigOperators
noncomputable section

/-Informal Statement

If $k = 1$ and $\mathbf{x} \in R^{k}$, prove that there does not exist $\mathbf{y} \in R^{k}$ such that $\mathbf{y} \neq 0$ but $\mathbf{x} \cdot \mathbf{y}=0$
-/

theorem Rudin_exercise_1_18b
  : ¬ ∀ (x : ℝ), ∃ (y : ℝ), y ≠ 0 ∧ x * y = 0 := by
  sorry
