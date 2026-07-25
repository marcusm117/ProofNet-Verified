import Mathlib

open Filter Set TopologicalSpace
open Topology
noncomputable section

/-Informal Statement

Let $(X, d_X)$ and $(Y, d_Y)$ be metric spaces; let $Y$ be complete. Let $A \subset X$. Show that if $f \colon A \rightarrow Y$ is uniformly continuous, then $f$ can be uniquely extended to a continuous function $g \colon \bar{A} \rightarrow Y$, and $g$ is uniformly continuous.
-/

theorem Munkres_exercise_43_2 {X : Type*} [MetricSpace X]
  {Y : Type*} [MetricSpace Y] [CompleteSpace Y] (A : Set X)
  (f : X → Y) (hf : UniformContinuousOn f A) :
  ∃! (g : X → Y), ContinuousOn g (closure A) ∧
  UniformContinuousOn g (closure A) ∧ ∀ (x : A), g x = f x := by
  sorry
