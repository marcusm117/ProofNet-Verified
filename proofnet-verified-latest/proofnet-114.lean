import Mathlib

open Filter Set TopologicalSpace
open scoped Topology



/-Informal Statement

Let $\mathbf{x}_1, \mathbf{x}_2, \ldots$ be a sequence of the points of the product space $\prod X_\alpha$.  Show that this sequence converges to the point $\mathbf{x}$ if and only if the sequence $\pi_\alpha(\mathbf{x}_i)$ converges to $\pi_\alpha(\mathbf{x})$ for each $\alpha$.
-/

theorem Munkres_exercise_19_6a
  {ι : Type*}
  {f : ι → Type*} {x : ℕ → Πa, f a}
  (y : Πi, f i)
  [Πa, TopologicalSpace (f a)] :
  Tendsto x atTop (𝓝 y) ↔ ∀ i, Tendsto (λ j => (x j) i) atTop (𝓝 (y i)) := by
  sorry
