import Mathlib

open Filter Set TopologicalSpace
open scoped Topology



/-Informal Statement

Let $f: S^{1} \rightarrow \mathbb{R}$ be a continuous map. Show there exists a point $x$ of $S^{1}$ such that $f(x)=f(-x)$.
-/

theorem Munkres_exercise_24_2
    {f : (Metric.sphere (0 : ℂ) 1 : Set ℂ) → ℝ}
    (hf : Continuous f) : ∃ x, f x = f (-x) := by
  sorry
