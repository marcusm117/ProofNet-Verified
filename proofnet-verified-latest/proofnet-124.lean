import Mathlib

open Filter Set TopologicalSpace
open scoped Topology


/-Informal Statement

Show that a connected metric space having more than one point is uncountable.
-/

theorem Munkres_exercise_27_4
  {X : Type*} [MetricSpace X] [ConnectedSpace X] (hX : ∃ x y : X, x ≠ y) :
  ¬ Countable (univ : Set X) := by
  sorry
