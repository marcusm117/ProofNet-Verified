import Mathlib

open Complex Filter Function Metric Finset
open scoped BigOperators Topology


/-Informal Statement

Prove that if $f$ is holomorphic in the unit disc, bounded and not identically zero, and $z_{1}, z_{2}, \ldots, z_{n}, \ldots$ are its zeros $\left(\left|z_{k}\right|<1\right)$, then $\sum_{n}\left(1-\left|z_{n}\right|\right)<\infty$.
-/


theorem Shakarchi_exercise_5_1
    (f : ℂ → ℂ) (hf : DifferentiableOn ℂ f (ball 0 1))
    (hb : Bornology.IsBounded (f '' (ball (0 : ℂ) 1)))
    (h0 : ¬ Set.EqOn f (0 : ℂ → ℂ) (ball (0 : ℂ) 1)) :
    Summable (fun z : {z : ℂ // f z = 0 ∧ z ∈ ball (0 : ℂ) 1} =>
      ((analyticOrderAt f (z : ℂ)).toNat : ℝ) * (1 - ‖(z : ℂ)‖)) := by
  sorry
