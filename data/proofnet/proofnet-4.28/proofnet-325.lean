import Mathlib

open Filter Real Function
open scoped Topology
noncomputable section

/-Informal Statement

A continuous, strictly increasing function $\mu \colon (0, \infty) \rightarrow (0, \infty)$ is a modulus of continuity if $\mu(s) \rightarrow 0$ as $s \rightarrow 0$. A function $f \colon [a, b] \rightarrow \mathbb{R}$ has modulus of continuity $\mu$ if $|f(s) - f(t)| \leq \mu(|s - t|)$ for all $s, t \in [a, b]$. Prove that a function is uniformly continuous if and only if it has a modulus of continuity.
-/

theorem Pugh_exercise_4_15a {α : Type*}
  (a b : ℝ) (F : Set (ℝ → ℝ)) :
  (∀ x : ℝ, ∀ ε > 0, ∃ U ∈ (𝓝 x),
  (∀ y z : U, ∀ f : ℝ → ℝ, f ∈ F → (dist (f y) (f z) < ε)))
  ↔
  ∃ (μ : ℝ → ℝ), ∀ (x : ℝ), (0 : ℝ) ≤ μ x ∧ Tendsto μ (𝓝 0) (𝓝 0) ∧
  (∀ (s t : ℝ) (f : ℝ → ℝ), f ∈ F → |(f s) - (f t)| ≤ μ (|s - t|)) := by
  sorry
