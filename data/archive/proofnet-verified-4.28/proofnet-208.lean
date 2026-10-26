import Mathlib

open Fintype Complex Polynomial LinearMap FiniteDimensional Module Module.End
open scoped BigOperators InnerProductSpace


/-Informal Statement

Show that if $\operatorname{dim} V \geq 2$, then the set of normal operators on $V$ is not a subspace of $\mathcal{L}(V)$.
-/

theorem Axler_exercise_7_5 {V : Type*} [NormedAddCommGroup V] [RCLike F] [InnerProductSpace F V]
  [FiniteDimensional F V] (hV : finrank F V ≥ 2) :
  ∀ U : Submodule F (End F V), U.carrier ≠
  {T | T * adjoint T = adjoint T * T} := by
  sorry
