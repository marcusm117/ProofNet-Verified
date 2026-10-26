import Mathlib

open Filter Set TopologicalSpace
open scoped Topology

def rational (x : ℝ) := x ∈ range ((↑) : ℚ → ℝ)

/-Informal Statement

Show that the countable collection \[\{(a, b) \times (c, d) \mid a < b \text{ and } c < d, \text{ and } a, b, c, d \text{ are rational}\}\] is a basis for $\mathbb{R}^2$.
-/


theorem Munkres_exercise_16_6 :
    IsTopologicalBasis
      (Set.image2 (fun s t => s ×ˢ t)
        (⋃ (a : ℚ) (b : ℚ) (_ : a < b), {Set.Ioo (a : ℝ) b})
        (⋃ (a : ℚ) (b : ℚ) (_ : a < b), {Set.Ioo (a : ℝ) b})) := by
  sorry
