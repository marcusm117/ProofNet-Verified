import Mathlib

open Filter Set TopologicalSpace
open scoped Topology

/-Informal Statement

Let $(X, d_X)$ and $(Y, d_Y)$ be metric spaces; let $Y$ be complete. Let $A \subset X$. Show that if $f \colon A \rightarrow Y$ is uniformly continuous, then $f$ can be uniquely extended to a continuous function $g \colon \bar{A} \rightarrow Y$, and $g$ is uniformly continuous.
-/

theorem Munkres_exercise_43_2 {X : Type*} [MetricSpace X]
    {Y : Type*} [MetricSpace Y] [CompleteSpace Y] (A : Set X)
    (f : X → Y) (hf : UniformContinuousOn f A) :
    ∃ (g : closure A → Y),
      UniformContinuous g ∧
        (∀ x : A, g ⟨x, subset_closure x.property⟩ = f x) ∧
        (∀ g' : closure A → Y, Continuous g' →
          (∀ x : A, g' ⟨x, subset_closure x.property⟩ = f x) → g' = g) := by
  sorry
