import Mathlib

open Filter Set TopologicalSpace
open scoped Topology

def is_topology (X : Type*) (T : Set (Set X)) :=
  univ ∈ T ∧
  (∀ s t, s ∈ T → t ∈ T → s ∩ t ∈ T) ∧
  (∀ s, (∀ t ∈ s, t ∈ T) → sUnion s ∈ T)

/-Informal Statement

If $\mathcal{T}_\alpha$ is a family of topologies on $X$, show that $\bigcup \mathcal{T}_\alpha$ does not need to be a topology on $X$.
-/


theorem Munkres_exercise_13_4a2 :
  ∃ (X I : Type*) (T : I → Set (Set X)),
  (∀ i, is_topology X (T i)) ∧ ¬  is_topology X (⋃ i : I, T i) :=
  sorry
