import Mathlib

open Fintype Complex Polynomial LinearMap FiniteDimensional Module Module.End
open scoped BigOperators ComplexConjugate



/-Informal Statement

Prove that a normal operator on a complex inner-product space is self-adjoint if and only if all its eigenvalues are real.
-/

theorem Axler_exercise_7_9 {V : Type*} [NormedAddCommGroup V] [InnerProductSpace ℂ V]
  [FiniteDimensional ℂ V] (T : End ℂ V)
  (hT : T * adjoint T = adjoint T * T) :
  IsSelfAdjoint T ↔ ∀ e : T.Eigenvalues, (e : ℂ).im = 0 := by
  sorry
