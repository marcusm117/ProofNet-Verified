import Mathlib

open Topology Filter Real Complex TopologicalSpace Finset
open scoped BigOperators
noncomputable section

/-Informal Statement

Let $X$ be a metric space in which every infinite subset has a limit point. Prove that $X$ is separable.
-/

theorem Rudin_exercise_2_24 {X : Type*} [MetricSpace X]
  (hX : ∀ (A : Set X), Infinite A → ∃ (x : X), x ∈ closure A) :
  SeparableSpace X := by
  sorry
