import Mathlib

open Topology Filter Real TopologicalSpace Finset
open scoped BigOperators
noncomputable section

/-Informal Statement

Prove that $\lim_{n \rightarrow \infty}\sqrt{n^2 + n} -n = 1/2$.
-/

theorem Rudin_exercise_3_2a
  : Tendsto (λ (n : ℝ) => (sqrt (n^2 + n) - n)) atTop (𝓝 (1/2)) := by
  sorry
