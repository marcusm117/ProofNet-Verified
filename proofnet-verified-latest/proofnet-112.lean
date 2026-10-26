import Mathlib

open Filter Set TopologicalSpace
open scoped Topology



/-Informal Statement

Show that if $U$ is open in $X$ and $A$ is closed in $X$, then $U-A$ is open in $X$, and $A-U$ is closed in $X$.
-/

theorem Munkres_exercise_17_4 {X : Type*} [TopologicalSpace X]
  (U A : Set X) (hU : IsOpen U) (hA : IsClosed A) :
  IsOpen (U \ A) ∧ IsClosed (A \ U) := by
  sorry
