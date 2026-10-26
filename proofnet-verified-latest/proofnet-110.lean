import Mathlib

open Filter Set TopologicalSpace
open scoped Topology

def lower_limit_topology (X : Type) [Preorder X] :=
  generateFrom {S : Set X | ∃ a b, a < b ∧ S = Ico a b}

/-Informal Statement

Show that the collection $\{(a,b) \mid a < b, a \text{ and } b \text{ rational}\}$ is a basis that generates a topology different from the lower limit topology on $\mathbb{R}$.
-/

theorem Munkres_exercise_13_8b (T : Set (Set ℝ))
  (hT : T = {S : Set ℝ | ∃ a b : ℚ, a < b ∧ S = Ioo ↑a ↑b}) :
  (∀ x : ℝ, ∃ S ∈ T, x ∈ S) ∧
  (∀ S₁ ∈ T, ∀ S₂ ∈ T, ∀ x ∈ S₁ ∩ S₂, ∃ S₃ ∈ T, x ∈ S₃ ∧ S₃ ⊆ S₁ ∩ S₂) ∧
  generateFrom T ≠ lower_limit_topology ℝ := by
  sorry
