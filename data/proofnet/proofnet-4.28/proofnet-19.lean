import Mathlib

open Fintype Complex Polynomial LinearMap FiniteDimensional Module Module.End
open scoped BigOperators InnerProductSpace

/-Informal Statement

Suppose that $S, T \in \mathcal{L}(V)$ are such that $S T=T S$. Prove that $\operatorname{null} (T-\lambda I)$ is invariant under $S$ for every $\lambda \in \mathbf{F}$.
-/

theorem Axler_exercise_5_4 {F V : Type*} [AddCommGroup V] [Field F]
  [Module F V] (S T : V →ₗ[F] V) (hST : S ∘ T = T ∘ S) (c : F):
  Submodule.map S (ker (T - c • LinearMap.id)) = ker (T - c • LinearMap.id) := by
  sorry
