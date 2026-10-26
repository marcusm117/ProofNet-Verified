import Mathlib

open Fintype Complex Polynomial LinearMap FiniteDimensional Module Module.End
open scoped BigOperators ENNReal ComplexConjugate



/-Informal Statement

Suppose $U$ is a subspace of $V$. Prove that $U^{\perp}=\{0\}$ if and only if $U=V$
-/

theorem Axler_exercise_6_16 {K V : Type*} [RCLike K] [NormedAddCommGroup V]
  [InnerProductSpace K V] [CompleteSpace V] {U : Submodule K V}
  (hU : IsClosed (U : Set V)) :
  U.orthogonal = ⊥ ↔ U = ⊤ := by
  sorry
