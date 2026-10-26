import Mathlib

open Filter Real Function
open scoped Topology



/-Informal Statement

Let $\|\cdot\|$ be any norm on $\mathbb{R}^{m}$ and let $B=\left\{x \in \mathbb{R}^{m}:\|x\| \leq 1\right\}$. Prove that $B$ is compact.
-/

theorem Pugh_exercise_2_41
    (m : ℕ) (E : Type*) [NormedAddCommGroup E] [NormedSpace ℝ E]
    [FiniteDimensional ℝ E] (hdim : Module.finrank ℝ E = m) :
    IsCompact (Metric.closedBall (0 : E) 1) :=
    sorry
