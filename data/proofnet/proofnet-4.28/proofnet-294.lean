import Mathlib

open Filter Set TopologicalSpace
open Topology
noncomputable section

/-Informal Statement

Show that if $Y$ is a subspace of $X$, and $A$ is a subset of $Y$, then the topology $A$ inherits as a subspace of $Y$ is the same as the topology it inherits as a subspace of $X$.
-/

theorem Munkres_exercise_16_1 {X : Type*} [TopologicalSpace X]
  (Y : Set X)
  (A : Set Y) :
  ∀ U : Set A, IsOpen U ↔ IsOpen (Subtype.val '' U) := by
  sorry
