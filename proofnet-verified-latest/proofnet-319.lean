import Mathlib

open Filter Real Function
open scoped Topology



/-Informal Statement

Prove that a set $U \subset M$ is open if and only if none of its points are limits of its complement.
-/

theorem Pugh_exercise_2_26 {M : Type*} [TopologicalSpace M]
  (U : Set M) : IsOpen U ↔ ∀ x ∈ U, ¬ ClusterPt x (𝓟 Uᶜ) := by
  sorry
