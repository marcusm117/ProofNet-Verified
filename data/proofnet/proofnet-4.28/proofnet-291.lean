import Mathlib

open Filter Set TopologicalSpace
open Topology
noncomputable section

def is_topology (X : Type*) (T : Set (Set X)) :=
  univ ∈ T ∧
  (∀ s t, s ∈ T → t ∈ T → s ∩ t ∈ T) ∧
  (∀s, (∀t ∈ s, t ∈ T) → sUnion s ∈ T)

/-Informal Statement

Let $\mathcal{T}_\alpha$ be a family of topologies on $X$. Show that there is a unique largest topology on $X$ contained in all the collections $\mathcal{T}_\alpha$.
-/

theorem Munkres_exercise_13_4b2 (X I : Type*) (T : I → Set (Set X)) (h : ∀ i, is_topology X (T i)) :
  ∃! T', is_topology X T' ∧ (∀ i, T' ⊆ T i) ∧
  ∀ T'', is_topology X T'' → (∀ i, T'' ⊆ T i) → T' ⊆ T'' := by
  sorry
