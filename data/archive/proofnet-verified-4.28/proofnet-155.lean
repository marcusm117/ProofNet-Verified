import Mathlib

open Topology Filter Real Complex TopologicalSpace Finset
open scoped BigOperators



/-Informal Statement

Let $X$ be a metric space in which every infinite subset has a limit point. Prove that $X$ is separable.
-/

theorem Rudin_exercise_2_24
    {X : Type*} [MetricSpace X]
    (hBW : ∀ A : Set X, A.Infinite → ∃ p : X, AccPt p (𝓟 A)) :
    SeparableSpace X :=
  sorry
