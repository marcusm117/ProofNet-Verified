import Mathlib

open Filter Set TopologicalSpace
open scoped Topology

/-Informal Statement

Show that if $X$ is regular, every pair of points of $X$ have neighborhoods whose closures are disjoint.
-/

theorem Munkres_exercise_31_1 {X : Type*} [TopologicalSpace X]
    [RegularSpace X] [T1Space X]
    (x y : X) (hxy : x ≠ y) :
    ∃ U V : Set X, IsOpen U ∧ IsOpen V ∧ x ∈ U ∧ y ∈ V ∧
      closure U ∩ closure V = (∅ : Set X) := by
  sorry
