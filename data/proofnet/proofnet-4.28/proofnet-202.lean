import Mathlib

open Fintype Complex Polynomial LinearMap FiniteDimensional Module Module.End
open scoped BigOperators InnerProductSpace

/-Informal Statement

Suppose $T \in \mathcal{L}(V)$. Prove that if $U_{1}, \ldots, U_{m}$ are subspaces of $V$ invariant under $T$, then $U_{1}+\cdots+U_{m}$ is invariant under $T$.
-/

theorem Axler_exercise_5_1 {F V : Type*} [AddCommGroup V] [Field F]
  [Module F V] {L : V →ₗ[F] V} {n : ℕ} (U : Fin n → Submodule F V)
  (hU : ∀ i : Fin n, Submodule.map L (U i) = U i) :
  Submodule.map L (∑ i : Fin n, U i : Submodule F V) =
  (∑ i : Fin n, U i : Submodule F V) := by
  sorry
