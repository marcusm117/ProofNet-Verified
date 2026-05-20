import Mathlib

open Topology Filter Real Complex TopologicalSpace Finset
open scoped BigOperators
noncomputable section

/-Informal Statement

Suppose $\left\{p_{n}\right\}$ is a Cauchy sequence in a metric space $X$, and some sequence $\left\{p_{n l}\right\}$ converges to a point $p \in X$. Prove that the full sequence $\left\{p_{n}\right\}$ converges to $p$.
-/

theorem Rudin_exercise_3_20 {X : Type*} [MetricSpace X]
  (p : ℕ → X) (l : ℕ) (r : X)
  (hp : CauchySeq p)
  (hpl : Tendsto (λ n => p (l * n)) atTop (𝓝 r)) :
  Tendsto p atTop (𝓝 r) := by
  sorry
