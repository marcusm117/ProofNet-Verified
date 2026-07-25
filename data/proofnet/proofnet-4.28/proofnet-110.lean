import Mathlib

open Filter Set TopologicalSpace
open Topology
noncomputable section

def lower_limit_topology (X : Type) [Preorder X] :=
  generateFrom {S : Set X | ∃ a b, a < b ∧ S = Ico a b}

/-Informal Statement

Show that the collection $\{(a,b) \mid a < b, a \text{ and } b \text{ rational}\}$ is a basis that generates a topology different from the lower limit topology on $\mathbb{R}$.
-/

theorem Munkres_exercise_13_8b :
  (generateFrom {S : Set ℝ | ∃ a b : ℚ, a < b ∧ S = Ico ↑a ↑b}).IsOpen ≠
  (lower_limit_topology ℝ).IsOpen := by
  sorry
