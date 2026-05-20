import Mathlib

open Topology Filter Real Complex TopologicalSpace Finset
open scoped BigOperators



/-Informal Statement

Let f be a real uniformly continuous function on the bounded set E in $R^{1}$. Prove that f is bounded on E.
-/


theorem Rudin_exercise_4_8a
  (E : Set ℝ) (h : Bornology.IsBounded E) :
  ∀ f : ℝ → ℝ, UniformContinuousOn f E → Bornology.IsBounded (Set.image f E) := by
  sorry
