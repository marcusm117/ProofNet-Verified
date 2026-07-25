import Mathlib

open Fintype Complex Polynomial LinearMap FiniteDimensional Module Module.End
open scoped BigOperators InnerProductSpace

/-Informal Statement

Suppose $V$ is a complex inner-product space and $T \in \mathcal{L}(V)$ is a normal operator such that $T^{9}=T^{8}$. Prove that $T$ is self-adjoint and $T^{2}=T$.
-/

theorem Axler_exercise_7_10 {V : Type*} [NormedAddCommGroup V] [InnerProductSpace ℂ V]
  [FiniteDimensional ℂ V] (T : End ℂ V)
  (hT : T * adjoint T = adjoint T * T) (hT1 : T^9 = T^8) :
  IsSelfAdjoint T ∧ T^2 = T := by
  sorry
