import Mathlib

open Topology Filter Real Complex TopologicalSpace Finset Set
open scoped BigOperators


/-Informal Statement

Suppose $f$ is a real, three times differentiable function on $[-1,1]$, such that $f(-1)=0, \quad f(0)=0, \quad f(1)=1, \quad f^{\prime}(0)=0 .$ Prove that $f^{(3)}(x) \geq 3$ for some $x \in(-1,1)$.
-/


theorem Rudin_exercise_5_17
  {f : ℝ → ℝ}
  (hf' : DifferentiableOn ℝ f (Icc (-1) 1))
  (hf'' : DifferentiableOn ℝ (deriv f) (Icc (-1) 1))
  (hf''' : DifferentiableOn ℝ (deriv (deriv f)) (Icc (-1) 1))
  (hf0 : f (-1) = 0)
  (hf1 : f 0 = 0)
  (hf2 : f 1 = 1)
  (hf3 : deriv f 0 = 0) :
  ∃ x, x ∈ Ioo (-1 : ℝ) 1 ∧ deriv (deriv (deriv f)) x ≥ 3 := by
  sorry
