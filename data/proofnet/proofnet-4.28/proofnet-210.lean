import Mathlib

open Fintype Complex Polynomial LinearMap FiniteDimensional Module Module.End
open scoped BigOperators InnerProductSpace

/-Informal Statement

Suppose $V$ is a complex inner-product space. Prove that every normal operator on $V$ has a square root. (An operator $S \in \mathcal{L}(V)$ is called a square root of $T \in \mathcal{L}(V)$ if $S^{2}=T$.)
-/

theorem Axler_exercise_7_11 {V : Type*} [NormedAddCommGroup V] [InnerProductSpace ℂ V]
  [FiniteDimensional ℂ V] {T : End ℂ V} (hT : T*adjoint T = adjoint T*T) :
  ∃ (S : End ℂ V), S ^ 2 = T := by
  sorry
