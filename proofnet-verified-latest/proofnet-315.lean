import Mathlib

open Filter Set TopologicalSpace
open scoped Topology



/-Informal Statement

Show that if $\prod X_\alpha$ is normal, then so is $X_\alpha$. Assume that each $X_\alpha$ is nonempty.
-/

theorem Munkres_exercise_32_2c
  {ι : Type*} {X : ι → Type*} [∀ i, TopologicalSpace (X i)]
  (h : ∀ i, Nonempty (X i)) (h2 : NormalSpace (Π i, X i)) :
  ∀ i, NormalSpace (X i) := by
  sorry
