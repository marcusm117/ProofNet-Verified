import Mathlib

open Filter Set TopologicalSpace
open Topology
noncomputable section

/-Informal Statement

Let $G$ be a topological group; let $C$ be the component of $G$ containing the identity element $e$. Show that $C$ is a normal subgroup of $G$.
-/

theorem Munkres_exercise_25_9 {G : Type*} [TopologicalSpace G] [Group G]
  [IsTopologicalGroup G] (C : Set G) (h : C = connectedComponent 1) :
  ∃ C' : Subgroup G, C' = C ∧ C'.Normal := by
  sorry
