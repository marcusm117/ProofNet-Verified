import Mathlib

open Topology Filter Real Complex TopologicalSpace Finset
open scoped BigOperators
noncomputable section

/-Informal Statement

Let $E$ be a bounded set in $R^{1}$. Prove that there exists a real function $f$ such that $f$ is uniformly continuous and is not bounded on $E$.
-/

theorem Rudin_exercise_4_8b
  (E : Set ℝ) :
  ∃ f : ℝ → ℝ, UniformContinuousOn f E ∧ ¬ Bornology.IsBounded (Set.image f E) := by
  sorry
