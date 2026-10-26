import Mathlib

open Topology Filter Real Complex TopologicalSpace Finset
open scoped BigOperators InnerProductSpace



/-Informal Statement

If $k \geq 2$ and $\mathbf{x} \in R^{k}$, prove that there exists $\mathbf{y} \in R^{k}$ such that $\mathbf{y} \neq 0$ but $\mathbf{x} \cdot \mathbf{y}=0$
-/

theorem Rudin_exercise_1_18a
  (n : ℕ)
  (h : n > 1)
  (x : EuclideanSpace ℝ (Fin n)) -- R^n
  : ∃ (y : EuclideanSpace ℝ (Fin n)), y ≠ 0 ∧ ⟪x, y⟫_ℝ = 0 := by
  sorry
