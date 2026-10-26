import Mathlib

open Filter Set TopologicalSpace
open scoped Topology



/-Informal Statement

Let $A$ be a proper subset of $X$, and let $B$ be a proper subset of $Y$. If $X$ and $Y$ are connected, show that $(X \times Y)-(A \times B)$ is connected.
-/

theorem Munkres_exercise_23_9 {X Y : Type*}
  [TopologicalSpace X] [TopologicalSpace Y]
  (A : Set X) (B : Set Y)
  (hA : A ⊂ (Set.univ : Set X))
  (hB : B ⊂ (Set.univ : Set Y))
  (hX : IsConnected (Set.univ : Set X))
  (hY : IsConnected (Set.univ : Set Y)) :
  IsConnected ((Set.univ : Set (X × Y)) \ (A ×ˢ B)) := by
  sorry
