import Mathlib

open Topology Filter Real Complex TopologicalSpace Finset
open scoped BigOperators
noncomputable section

/-Informal Statement

If $z_1, \ldots, z_n$ are complex, prove that $|z_1 + z_2 + \ldots + z_n| \leq |z_1| + |z_2| + \cdots + |z_n|$.
-/

theorem Rudin_exercise_1_12 (n : ℕ) (f : ℕ → ℂ) :
  norm (∑ i ∈ range n, f i) ≤ ∑ i ∈ range n, norm (f i) := by
  sorry
