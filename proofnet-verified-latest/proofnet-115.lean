import Mathlib

open Filter Set TopologicalSpace
open scoped Topology

abbrev I : Set ℝ := Icc 0 1

/-Informal Statement

Define $f_{n}:[0,1] \rightarrow \mathbb{R}$ by the equation $f_{n}(x)=x^{n}$. Show that the sequence $\left(f_{n}(x)\right)$ converges for each $x \in[0,1]$.
-/

theorem Munkres_exercise_21_6a
  (f : ℕ → I → ℝ)
  (h : ∀ x n, f n x = ↑x ^ n) :
  ∀ x, ∃ y, Tendsto (λ n => f n x) atTop (𝓝 y) := by
  sorry
