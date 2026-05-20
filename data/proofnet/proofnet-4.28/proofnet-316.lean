import Mathlib

open Filter Set TopologicalSpace
open Topology
noncomputable section

abbrev I : Set ℝ := Icc 0 1

/-Informal Statement

Show that every locally compact Hausdorff space is completely regular.
-/

theorem Munkres_exercise_33_7 {X : Type*} [TopologicalSpace X]
  (hX : LocallyCompactSpace X) (hX' : T2Space X) :
  ∀ x A, IsClosed A ∧ ¬ x ∈ A →
  ∃ (f : X → I), Continuous f ∧ f x = 1 ∧ f '' A = {0} := by
  sorry
