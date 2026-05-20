import Mathlib

open Topology Filter Real Complex TopologicalSpace Finset
open scoped BigOperators
noncomputable section

/-Informal Statement

If $f$ is defined on $E$, the graph of $f$ is the set of points $(x, f(x))$, for $x \in E$. In particular, if $E$ is a set of real numbers, and $f$ is real-valued, the graph of $f$ is a subset of the plane. Suppose $E$ is compact, and prove that $f$ is continuous on $E$ if and only if its graph is compact.
-/

theorem Rudin_exercise_4_6
  (f : ℝ → ℝ)
  (E : Set ℝ)
  (G : Set (ℝ × ℝ))
  (h₁ : IsCompact E)
  (h₂ : G = {(x, f x) | x ∈ E})
  : ContinuousOn f E ↔ IsCompact G := by
  sorry
