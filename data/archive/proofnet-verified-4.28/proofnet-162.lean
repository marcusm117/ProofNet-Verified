import Mathlib

open Topology Filter Real Complex TopologicalSpace Finset
open scoped BigOperators



/-Informal Statement

Suppose $\left\{p_{n}\right\}$ is a Cauchy sequence in a metric space $X$, and some subsequence $\left\{p_{n l}\right\}$ converges to a point $p \in X$. Prove that the full sequence $\left\{p_{n}\right\}$ converges to $p$.
-/

theorem Rudin_exercise_3_20 {X : Type*} [MetricSpace X]
  (p : ℕ → X) (φ : ℕ → ℕ) (r : X)
  (hp : CauchySeq p)
  (hφ : StrictMono φ)
  (hpl : Tendsto (p ∘ φ) atTop (𝓝 r)) :
  Tendsto p atTop (𝓝 r) := by
  sorry
