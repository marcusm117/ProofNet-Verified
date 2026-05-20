import Mathlib

open Filter Set TopologicalSpace
open scoped Topology

set_option checkBinderAnnotations false



/-Informal Statement

Show that if $X$ is an infinite set, it is connected in the finite complement topology.
-/

theorem Munkres_exercise_23_4 {X : Type*} [Infinite X] :
    IsConnected (Set.univ : Set (CofiniteTopology X)) := by
  sorry
