import Mathlib

open Filter Set TopologicalSpace
open scoped Topology



/-Informal Statement

Let $p: X \rightarrow Y$ be a closed continuous surjective map such that $p^{-1}(\{y\})$ is compact, for each $y \in Y$. (Such a map is called a perfect map.) Show that if $Y$ is compact, then $X$ is compact.
-/

theorem Munkres_exercise_26_12 {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y]
  (p : X → Y) (h : Function.Surjective p) (hc : Continuous p)
  (hp : IsClosedMap p) (hp : ∀ y, IsCompact (p ⁻¹' {y}))
  (hY : CompactSpace Y) : CompactSpace X := by
  sorry
