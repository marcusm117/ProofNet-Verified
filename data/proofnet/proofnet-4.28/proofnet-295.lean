import Mathlib

open Filter Set TopologicalSpace
open Topology
noncomputable section

def rational (x : ℝ) := x ∈ range ((↑) : ℚ → ℝ)

/-Informal Statement

Show that the countable collection \[\{(a, b) \times (c, d) \mid a < b \text{ and } c < d, \text{ and } a, b, c, d \text{ are rational}\}\] is a basis for $\mathbb{R}^2$.
-/

theorem Munkres_exercise_16_6
  (S : Set (Set (ℝ × ℝ)))
  (hS : ∀ s, s ∈ S → ∃ a b c d, (rational a ∧ rational b ∧ rational c ∧ rational d
  ∧ s = {x | ∃ x₁ x₂, x = (x₁, x₂) ∧ a < x₁ ∧ x₁ < b ∧ c < x₂ ∧ x₂ < d})) :
  IsTopologicalBasis S := by
  sorry
