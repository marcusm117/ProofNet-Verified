import Mathlib

open Topology Filter Real Complex TopologicalSpace Finset
open scoped BigOperators
noncomputable section

/-Informal Statement

If $f$ is a real continuous function defined on a closed set $E \subset \mathbb{R}$, prove that there exist continuous real functions $g$ on $\mathbb{R}$ such that $g(x)=f(x)$ for all $x \in E$.
-/

theorem Rudin_exercise_4_5a
  (f : ℝ → ℝ)
  (E : Set ℝ)
  (h₁ : IsClosed E)
  (h₂ : ContinuousOn f E)
  : ∃ (g : ℝ → ℝ), Continuous g ∧ ∀ x ∈ E, f x = g x := by
  sorry
