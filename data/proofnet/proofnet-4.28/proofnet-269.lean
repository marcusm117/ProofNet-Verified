import Mathlib

open Fintype Set Real Ideal Polynomial
open scoped BigOperators
noncomputable section

/-Informal Statement

Let $T$ be the group of $2\times 2$ matrices $A$ with entries in the field $\mathbb{Z}_2$ such that $\det A$ is not equal to 0. Prove that $T$ is isomorphic to $S_3$, the symmetric group of degree 3.
-/

instance Herstein_exercise_4_1_34 : Equiv.Perm (Fin 3) ≃* Matrix.GeneralLinearGroup (Fin 2) (ZMod 2) := by
  sorry
