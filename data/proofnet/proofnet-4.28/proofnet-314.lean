import Mathlib

open Filter Set TopologicalSpace
open Topology
noncomputable section

/-Informal Statement

Show that if $\prod X_\alpha$ is Hausdorff, then so is $X_\alpha$. Assume that each $X_\alpha$ is nonempty.
-/

theorem Munkres_exercise_32_2a
  {ι : Type*} {X : ι → Type*} [∀ i, TopologicalSpace (X i)]
  (h : ∀ i, Nonempty (X i)) (h2 : T2Space (Π i, X i)) :
  ∀ i, T2Space (X i) := by
  sorry
