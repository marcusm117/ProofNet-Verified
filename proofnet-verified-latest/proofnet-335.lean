import Mathlib

open Topology Filter Real Complex TopologicalSpace Finset
open scoped BigOperators



/-Informal Statement

If $z_1, \ldots, z_n$ are complex, prove that $|z_1 + z_2 + \ldots + z_n| \leq |z_1| + |z_2| + \cdots + |z_n|$.
-/

theorem Rudin_exercise_1_12 (n : ℕ) (f : ℕ → ℂ) :
  ‖∑ i ∈ range n, f i‖ ≤ ∑ i ∈ range n, ‖f i‖ := by
  sorry
