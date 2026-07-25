import Mathlib

open Filter Set TopologicalSpace
open Topology
noncomputable section

/-Informal Statement

Show that the collection $\{(a,b) \mid a < b, a \text{ and } b \text{ rational}\}$ is a basis that generates the standard topology on $\mathbb{R}$.
-/

theorem Munkres_exercise_13_8a :
  IsTopologicalBasis {S : Set ℝ | ∃ a b : ℚ, a < b ∧ S = Ioo ↑a ↑b} := by
  sorry
