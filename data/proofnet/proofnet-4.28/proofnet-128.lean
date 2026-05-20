import Mathlib

open Filter Set TopologicalSpace
open Topology
noncomputable section

/-Informal Statement

Show that if $X$ has a countable dense subset, every collection of disjoint open sets in $X$ is countable.
-/

theorem Munkres_exercise_30_13 {X : Type*} [TopologicalSpace X]
  (h : ∃ (s : Set X), Countable s ∧ Dense s) (U : Set (Set X))
  (hU : ∀ (x y : Set X), x ∈ U → y ∈ U → x ≠ y → x ∩ y = ∅) :
  Countable U := by
  sorry
