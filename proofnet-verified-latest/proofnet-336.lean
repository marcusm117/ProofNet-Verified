import Mathlib

open Topology Filter Real Complex TopologicalSpace Finset
open scoped BigOperators



/-Informal Statement

Prove that $|\mathbf{x}+\mathbf{y}|^{2}+|\mathbf{x}-\mathbf{y}|^{2}=2|\mathbf{x}|^{2}+2|\mathbf{y}|^{2}$ if $\mathbf{x} \in R^{k}$ and $\mathbf{y} \in R^{k}$.
-/

theorem Rudin_exercise_1_17
  (n : ℕ)
  (x y : EuclideanSpace ℝ (Fin n)) -- R^n
  : ‖x + y‖^2 + ‖x - y‖^2 = 2*‖x‖^2 + 2*‖y‖^2 := by
  sorry
