import Mathlib

open Topology Filter Real Complex TopologicalSpace Finset
open scoped BigOperators



/-Informal Statement

Prove that every closed set in a separable metric space is the union of a (possibly empty) perfect set and a set which is at most countable.
-/

theorem Rudin_exercise_2_28 (X : Type*) [MetricSpace X] [SeparableSpace X]
  (A : Set X) (hA : IsClosed A) :
  ∃ P₁ P₂ : Set X, A = P₁ ∪ P₂ ∧ Perfect P₁ ∧ Set.Countable P₂ := by
  sorry
