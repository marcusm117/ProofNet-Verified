import Mathlib

open Filter Real Function Set
open scoped Topology



/-Informal Statement

A continuous, strictly increasing function $\mu \colon (0, \infty) \rightarrow (0, \infty)$ is a modulus of continuity if $\mu(s) \rightarrow 0$ as $s \rightarrow 0$. A function $f \colon [a, b] \rightarrow \mathbb{R}$ has modulus of continuity $\mu$ if $|f(s) - f(t)| \leq \mu(|s - t|)$ for all $s, t \in [a, b]$. Prove that a function is uniformly continuous if and only if it has a modulus of continuity.
-/

theorem Pugh_exercise_4_15a (a b : ℝ) (hab : a ≤ b) (f : Icc a b → ℝ) :
  UniformContinuous f ↔ ∃ (μ : ℝ → ℝ), (∀ x : ℝ, x > 0 → μ x > 0) ∧
  ContinuousOn μ (Ioi 0) ∧ StrictMonoOn μ (Ioi 0) ∧ Tendsto μ (𝓝[>] 0) (𝓝 0) ∧
  (∀ s t : Icc a b, |f s - f t| ≤ μ (|s - t|)) := by
  sorry
