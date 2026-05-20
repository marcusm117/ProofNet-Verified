import Mathlib

open Complex Filter Function Metric Finset
open scoped BigOperators Topology

/-Informal Statement

Suppose that $f$ is holomorphic in an open set $\Omega$. Prove that if $\text{Re}(f)$ is constant, then $f$ is constant.
-/

theorem Shakarchi_exercise_1_13a {f : ℂ → ℂ} (Ω : Set ℂ) (a b : Ω) (h : IsOpen Ω)
  (hf : DifferentiableOn ℂ f Ω) (hc : ∃ (c : ℝ), ∀ z ∈ Ω, (f z).re = c) :
  f a = f b := by
  sorry
