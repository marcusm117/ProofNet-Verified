import Mathlib

open Topology Filter Real Complex TopologicalSpace Finset
open scoped BigOperators
noncomputable section

/-Informal Statement

If $z$ is a complex number, prove that there exists an $r\geq 0$ and a complex number $w$ with $| w | = 1$ such that $z = rw$.
-/

theorem Rudin_exercise_1_11a (z : ℂ) :
  ∃ (r : ℝ) (w : ℂ), norm w = 1 ∧ z = r * w := by
  sorry
