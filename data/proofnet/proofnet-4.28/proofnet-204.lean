import Mathlib

open Fintype Complex Polynomial LinearMap FiniteDimensional Module Module.End
open scoped BigOperators InnerProductSpace

/-Informal Statement

Suppose $T \in \mathcal{L}(V)$ is such that every subspace of $V$ with dimension $\operatorname{dim} V-1$ is invariant under $T$. Prove that $T$ is a scalar multiple of the identity operator.
-/

theorem Axler_exercise_5_13 {F V : Type*} [AddCommGroup V] [Field F]
  [Module F V] [FiniteDimensional F V] {T : End F V}
  (hS : ∀ U : Submodule F V, finrank F U = finrank F V - 1 →
  Submodule.map T U = U) : ∃ c : F, T = c • LinearMap.id := by
  sorry
