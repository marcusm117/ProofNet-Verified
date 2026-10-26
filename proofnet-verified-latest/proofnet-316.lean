import Mathlib

open Filter Set TopologicalSpace
open scoped Topology



/-Informal Statement

Show that every locally compact Hausdorff space is completely regular.
-/

theorem Munkres_exercise_33_7 {X : Type*} [TopologicalSpace X]
  (hX : LocallyCompactSpace X) (hX' : T2Space X) :
  CompletelyRegularSpace X := by
  sorry
