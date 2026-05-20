import Mathlib

open Topology Filter Real TopologicalSpace Finset
open scoped BigOperators
noncomputable section

def g (n : ℕ) : ℝ := sqrt (n + 1) - sqrt n

/-Informal Statement

Prove that $\lim_{n \rightarrow \infty} \sum_{i<n} a_i = \infty$, where $a_i = \sqrt{i + 1} -\sqrt{i}$.
-/

theorem Rudin_exercise_3_6a
: Tendsto (λ (n : ℕ) => (∑ i ∈ range n, g i)) atTop atTop := by
  sorry
