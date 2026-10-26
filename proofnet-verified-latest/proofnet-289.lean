import Mathlib

open Filter Set TopologicalSpace
open scoped Topology



/-Informal Statement

Show that the collection $$\mathcal{T}_\infty = \{U | X - U \text{ is infinite or empty or all of X}\}$$ does not need to be a topology on the set $X$.
-/

theorem Munkres_exercise_13_3b : ∃ X : Type,
    let T_inf : Set (Set X) := {t | Set.Infinite tᶜ ∨ t = ∅ ∨ t = Set.univ}
    ¬ (Set.univ ∈ T_inf ∧
       (∀ s ⊆ T_inf, ⋃₀ s ∈ T_inf) ∧
       (∀ t₁ ∈ T_inf, ∀ t₂ ∈ T_inf, t₁ ∩ t₂ ∈ T_inf)) := by
  sorry
