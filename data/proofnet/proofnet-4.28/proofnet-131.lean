import Mathlib

open Filter Set TopologicalSpace
open Topology
noncomputable section

/-Informal Statement

Show that if $\prod X_\alpha$ is regular, then so is $X_\alpha$. Assume that each $X_\alpha$ is nonempty.
-/

theorem Munkres_exercise_32_2b
  {ι : Type*} {X : ι → Type*} [∀ i, TopologicalSpace (X i)]
  (h : ∀ i, Nonempty (X i)) (h2 : RegularSpace (Π i, X i)) :
  ∀ i, RegularSpace (X i) := by
  sorry
