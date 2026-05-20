import Mathlib

open Topology Filter Real TopologicalSpace Finset
open scoped BigOperators
noncomputable section

/-Informal Statement

Prove that the convergence of $\Sigma a_{n}$ implies the convergence of $\sum \frac{\sqrt{a_{n}}}{n}$ if $a_n\geq 0$.
-/

theorem Rudin_exercise_3_7
  (a : ℕ → ℝ)
  (h : ∃ y, (Tendsto (λ n => (∑ i ∈ (range n), a i)) atTop (𝓝 y))) :
  ∃ y, Tendsto (λ n => (∑ i ∈ (range n), sqrt (a i) / n)) atTop (𝓝 y) := by
  sorry
