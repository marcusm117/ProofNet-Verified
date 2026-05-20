import Mathlib

open Filter Set TopologicalSpace
open Topology
noncomputable section

/-Informal Statement

Show that the collection $$\mathcal{T}_\infty = \{U | X - U \text{ is infinite or empty or all of X}\}$$ does not need to be a topology on the set $X$.
-/

theorem Munkres_exercise_13_3b : ¬ ∀ X : Type, ∀s : Set (Set X),
  (∀ t : Set X, t ∈ s → (Set.Infinite tᶜ ∨ t = ∅ ∨ t = ⊤)) →
  (Set.Infinite (⋃₀ s)ᶜ ∨ (⋃₀ s) = ∅ ∨ (⋃₀ s) = ⊤) := by
  sorry
