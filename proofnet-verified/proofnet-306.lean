import Mathlib

open Filter Set TopologicalSpace
open scoped Topology



/-Informal Statement

Let $G$ be a topological group; let $C$ be the component of $G$ containing the identity element $e$. Show that $C$ is a normal subgroup of $G$.
-/

theorem Munkres_exercise_25_9 {G : Type*} [TopologicalSpace G] [Group G]
  [IsTopologicalGroup G] (C : Set G) (hC : C = connectedComponent (1 : G)) :
  ∃ H : Subgroup G, (H : Set G) = C ∧ H.Normal := by
  sorry
