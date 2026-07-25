import Mathlib

open Topology Filter Real Complex TopologicalSpace Finset
open scoped BigOperators
noncomputable section

/-Informal Statement

Show that there exist a set $E \subset \mathbb{R}$ and a real continuous function $f$ defined on $E$, such that there does not exist a continuous real function $g$ on $\mathbb{R}$ such that $g(x)=f(x)$ for all $x \in E$.
-/

theorem Rudin_exercise_4_5b
  : ∃ (E : Set ℝ) (f : ℝ → ℝ), (ContinuousOn f E) ∧
  (¬ ∃ (g : ℝ → ℝ), Continuous g ∧ ∀ x ∈ E, f x = g x) := by
  sorry
