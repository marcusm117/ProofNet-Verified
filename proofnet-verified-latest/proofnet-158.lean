import Mathlib

open Topology Filter Real Complex TopologicalSpace Finset
open scoped BigOperators



/-Informal Statement

Prove that in $\mathbb{C}$, convergence of $\left\{s_{n}\right\}$ implies convergence of $\left\{\left|s_{n}\right|\right\}$.
-/

theorem Rudin_exercise_3_1a
  (f : ℕ → ℂ)
  (h : ∃ (a : ℂ), Tendsto (λ (n : ℕ) => f n) atTop (𝓝 a))
  : ∃ (a : ℝ), Tendsto (λ (n : ℕ) => ‖f n‖) atTop (𝓝 a) := by
  sorry
