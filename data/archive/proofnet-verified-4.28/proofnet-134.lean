import Mathlib

open Filter Set TopologicalSpace
open scoped Topology



/-Informal Statement

Let $X$ be completely regular (separation property only). Show that $X$ is connected if and only if the Stone-Čech compactification of $X$ is connected.
-/

theorem Munkres_exercise_38_6 {X : Type*} [TopologicalSpace X] [CompletelyRegularSpace X] :
  IsConnected (univ : Set X) ↔ IsConnected (univ : Set (StoneCech X)) := by
  sorry
