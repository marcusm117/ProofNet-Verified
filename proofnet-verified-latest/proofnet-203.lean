import Mathlib

open Fintype Complex Polynomial LinearMap FiniteDimensional Module Module.End
open scoped BigOperators


/-Informal Statement

Suppose $S, T \in \mathcal{L}(V)$. Prove that $S T$ and $T S$ have the same eigenvalues.
-/

theorem Axler_exercise_5_11 {F V : Type*} [Field F] [AddCommGroup V]
    [Module F V] [FiniteDimensional F V] (S T : End F V) :
    (S * T).Eigenvalues = (T * S).Eigenvalues := by
  sorry
