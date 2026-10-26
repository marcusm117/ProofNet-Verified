import Mathlib

open Filter Set TopologicalSpace
open scoped Topology



/-Informal Statement

Show that every locally compact Hausdorff space is regular.
-/

theorem Munkres_exercise_32_3 {X : Type*} [TopologicalSpace X]
  (hX : LocallyCompactSpace X) (hX' : T2Space X) :
  RegularSpace X := by
  sorry
