import Mathlib

open Fintype Complex Polynomial LinearMap FiniteDimensional Module Module.End
open scoped BigOperators InnerProductSpace

/-Informal Statement

Suppose $U$ is a subspace of $V$. Prove that $U^{\perp}=\{0\}$ if and only if $U=V$
-/

theorem Axler_exercise_6_16 {K V : Type*} [RCLike K] [NormedAddCommGroup V] [InnerProductSpace K V]
  {U : Submodule K V} :
  U.orthogonal = ⊥  ↔ U = ⊤ := by
  sorry
