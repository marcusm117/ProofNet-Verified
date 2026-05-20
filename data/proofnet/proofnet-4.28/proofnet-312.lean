import Mathlib

open Filter Set TopologicalSpace
open Topology
noncomputable section

/-Informal Statement

Show that if $X$ is regular, every pair of points of $X$ have neighborhoods whose closures are disjoint.
-/

theorem Munkres_exercise_31_1 {X : Type*} [TopologicalSpace X]
  (hX : RegularSpace X) (x y : X) :
  ∃ (U V : Set X), IsOpen U ∧ IsOpen V ∧ x ∈ U ∧ y ∈ V ∧ closure U ∩ closure V = ∅ := by
  sorry
