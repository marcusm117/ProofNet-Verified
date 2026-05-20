import Mathlib

open Fintype Complex Polynomial LinearMap FiniteDimensional Module Module.End
open scoped BigOperators InnerProductSpace

/-Informal Statement

Suppose that $V$ is finite dimensional and that $T \in \mathcal{L}(V, W)$. Prove that there exists a subspace $U$ of $V$ such that $U \cap \operatorname{null} T=\{0\}$ and range $T=\{T u: u \in U\}$.
-/

theorem Axler_exercise_3_8 {F V W : Type*}  [AddCommGroup V]
  [AddCommGroup W] [Field F] [Module F V] [Module F W]
  (L : V →ₗ[F] W) :
  ∃ U : Submodule F V, U ⊓ (ker L) = ⊥ ∧
  (range L = range (domRestrict L U)) := by
  sorry
