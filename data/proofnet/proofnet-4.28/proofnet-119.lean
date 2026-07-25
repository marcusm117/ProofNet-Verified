import Mathlib

open Filter Set TopologicalSpace
open Topology
noncomputable section

/-Informal Statement

Show that if $X$ is an infinite set, it is connected in the finite complement topology.
-/

theorem Munkres_exercise_23_4 {X : Type*}
  (s : Set (CofiniteTopology X)) : Infinite s → IsConnected s := by
  sorry
