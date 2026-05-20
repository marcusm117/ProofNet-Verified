import Mathlib

open Complex Filter Function Metric Finset
open scoped BigOperators Topology



/-Informal Statement

Suppose that $f$ is holomorphic in an open set $\Omega$. Prove that if $|f|$ is constant, then $f$ is constant.
-/

theorem Shakarchi_exercise_1_13c {f : ℂ → ℂ} {Ω : Set ℂ} (a b : Ω)
    (hΩ : IsOpen Ω) (hconn : IsPreconnected Ω)
    (hf : DifferentiableOn ℂ f Ω) (hc : ∃ c : ℝ, ∀ z ∈ Ω, ‖f z‖ = c) :
    f a = f b := by
  sorry
