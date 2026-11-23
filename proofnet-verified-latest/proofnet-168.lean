import Mathlib

open Topology Filter Real Complex TopologicalSpace Finset
open scoped BigOperators



/-Informal Statement

Let $f$ be a real uniformly continuous function on a set $E$ in $\mathbb{R}^{1}$. Show that $f$ need not be bounded on $E$.
-/


theorem Rudin_exercise_4_8b :
    ∃ (E : Set ℝ) (f : ℝ → ℝ),
      UniformContinuousOn f E ∧ ¬ Bornology.IsBounded (Set.image f E) := by
  sorry
