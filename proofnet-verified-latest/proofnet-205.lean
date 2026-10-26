import Mathlib

open Filter Fintype Complex Polynomial LinearMap FiniteDimensional Module Module.End
open scoped BigOperators


/-Informal Statement

Suppose $V$ is a real vector space and $T \in \mathcal{L}(V)$ has no eigenvalues. Prove that every subspace of $V$ invariant under $T$ has even dimension.
-/

theorem Axler_exercise_5_24 {V : Type*} [AddCommGroup V]
  [Module ℝ V] [FiniteDimensional ℝ V] {T : End ℝ V}
  (hT : ∀ c : ℝ, eigenspace T c = ⊥) {U : Submodule ℝ V}
  (hU : Submodule.map T U ≤ U) : Even (finrank ℝ U) := by
  sorry
