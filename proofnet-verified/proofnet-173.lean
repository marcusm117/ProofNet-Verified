import Mathlib

open Topology Filter Real Complex TopologicalSpace Finset
open scoped BigOperators Polynomial



/-Informal Statement

If $C_{0}+\frac{C_{1}}{2}+\cdots+\frac{C_{n-1}}{n}+\frac{C_{n}}{n+1}=0,$ where $C_{0}, \ldots, C_{n}$ are real constants, prove that the equation $C_{0}+C_{1} x+\cdots+C_{n-1} x^{n-1}+C_{n} x^{n}=0$ has at least one real root strictly between 0 and 1.
-/

theorem Rudin_exercise_5_4 {n : ℕ}
  (C : ℕ → ℝ)
  (hC : ∑ i ∈ (range (n + 1)), (C i) / (i + 1) = 0) :
  ∃ x, x ∈ (Set.Ioo (0 : ℝ) 1) ∧ ∑ i ∈ range (n + 1), (C i) * (x^i) = 0 := by
  sorry
