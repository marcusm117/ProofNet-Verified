import Mathlib

open Filter Set TopologicalSpace
open scoped Topology



/-Informal Statement

Show that a closed subspace of a normal space is normal.
-/

theorem Munkres_exercise_32_1 {X : Type*} [TopologicalSpace X]
  (hX : NormalSpace X) (A : Set X) (hA : IsClosed A) :
  NormalSpace {x // x ∈ A} := by
  sorry
