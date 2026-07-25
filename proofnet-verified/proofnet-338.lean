import Mathlib

open Topology Filter Real Complex TopologicalSpace Finset
open scoped BigOperators



/-Informal Statement

If $A$ and $B$ are disjoint closed sets in some metric space $X$, prove that they are separated.
-/

theorem Rudin_exercise_2_19a {X : Type*} [MetricSpace X]
  (A B : Set X) (hA : IsClosed A) (hB : IsClosed B) (hAB : Disjoint A B) :
  A ∩ closure B = ∅ ∧ closure A ∩ B = ∅ := by
  sorry
