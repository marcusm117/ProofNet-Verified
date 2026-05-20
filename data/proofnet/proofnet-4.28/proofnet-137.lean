import Mathlib

open Filter Real Function
open scoped Topology
noncomputable section

/-Informal Statement

Let $\|\cdot\|$ be any norm on $\mathbb{R}^{m}$ and let $B=\left\{x \in \mathbb{R}^{m}:\|x\| \leq 1\right\}$. Prove that $B$ is compact.
-/

theorem Pugh_exercise_2_41 (m : ℕ) {X : Type*} [NormedSpace ℝ ((Fin m) → ℝ)] :
  IsCompact (Metric.closedBall 0 1) := by
  sorry
