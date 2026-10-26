import Mathlib

open Filter Set TopologicalSpace Topology



/-Informal Statement

Let $p: X \rightarrow Y$ be a quotient map. Show that if each set $p^{-1}(\{y\})$ is connected, and if $Y$ is connected, then $X$ is connected.
-/

theorem Munkres_exercise_23_11 {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y]
  (p : X → Y) (hq : IsQuotientMap p)
  (hY : ConnectedSpace Y) (hX : ∀ y : Y, IsConnected (p ⁻¹' {y})) :
  ConnectedSpace X := by
  sorry
