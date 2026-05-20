import Mathlib

open Fintype Complex Polynomial LinearMap FiniteDimensional Module Module.End
open scoped BigOperators ComplexOrder



/-Informal Statement

Prove that if $T \in \mathcal{L}(V)$ is normal, then $\operatorname{range} T=\operatorname{range} T^{*}.$
-/

theorem Axler_exercise_7_6 {V : Type*} [NormedAddCommGroup V] [RCLike F] [InnerProductSpace F V]
  [FiniteDimensional F V] (T : End F V)
  (hT : T * adjoint T = adjoint T * T) :
  range T = range (adjoint T) := by
  sorry
