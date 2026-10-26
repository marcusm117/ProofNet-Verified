import Mathlib

open Filter Set TopologicalSpace
open scoped Topology

abbrev I : Set ℝ := Icc 0 1

/-Informal Statement

Define $f_{n}:[0,1] \rightarrow \mathbb{R}$ by the equation $f_{n}(x)=x^{n}$. Show that the sequence $\left(f_{n}\right)$ does not converge uniformly.
-/

theorem Munkres_exercise_21_6b
  (f : ℕ → I → ℝ)
  (h : ∀ x n, f n x = ↑x ^ n) :
  ¬ ∃ f₀, TendstoUniformly f f₀ atTop := by
  sorry
