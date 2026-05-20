import Mathlib

open Filter Set TopologicalSpace
open Topology
noncomputable section

/-Informal Statement

Let $p \colon X \rightarrow Y$ be an open map. Show that if $A$ is open in $X$, then the map $q \colon A \rightarrow p(A)$ obtained by restricting $p$ is an open map.
-/

theorem Munkres_exercise_22_5 {X Y : Type*} [TopologicalSpace X]
  [TopologicalSpace Y] (p : X → Y) (hp : IsOpenMap p)
  (A : Set X) (hA : IsOpen A) : IsOpenMap (p ∘ Subtype.val : A → Y) := by
  sorry
