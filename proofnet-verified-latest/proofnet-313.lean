import Mathlib

open Filter Set TopologicalSpace
open scoped Topology

/-Informal Statement

Show that every order topology is regular.
-/

theorem Munkres_exercise_31_3 {α : Type*} [LinearOrder α] [TopologicalSpace α]
    [OrderTopology α] : RegularSpace α := by
  sorry
