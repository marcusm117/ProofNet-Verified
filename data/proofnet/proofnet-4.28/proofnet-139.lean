import Mathlib

open Filter Real Function
open scoped Topology
noncomputable section

/-Informal Statement

Suppose that $E$ is an uncountable subset of $\mathbb{R}$. Prove that there exists a point $p \in \mathbb{R}$ at which $E$ condenses.
-/

theorem Pugh_exercise_2_126 {E : Set ℝ}
  (hE : ¬ Set.Countable E) : ∃ (p : ℝ), ClusterPt p (𝓟 E) := by
  sorry
