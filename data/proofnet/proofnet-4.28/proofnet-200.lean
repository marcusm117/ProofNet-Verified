import Mathlib

open Fintype Complex Polynomial LinearMap FiniteDimensional Module Module.End
open scoped BigOperators InnerProductSpace

/-Informal Statement

Prove that the union of two subspaces of $V$ is a subspace of $V$ if and only if one of the subspaces is contained in the other.
-/

theorem Axler_exercise_1_9 {F V : Type*} [AddCommGroup V] [Field F]
  [Module F V] (U W : Submodule F V):
  ∃ U' : Submodule F V, (U'.carrier = ↑U ∩ ↑W ↔ (U ≤ W ∨ W ≤ U)) := by
  sorry
