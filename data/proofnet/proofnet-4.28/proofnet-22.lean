import Mathlib

open Fintype Complex Polynomial LinearMap FiniteDimensional Module Module.End
open scoped BigOperators InnerProductSpace

/-Informal Statement

Suppose $u, v \in V$. Prove that $\langle u, v\rangle=0$ if and only if $\|u\| \leq\|u+a v\|$ for all $a \in \mathbf{F}$.
-/

theorem Axler_exercise_6_2 {V : Type*} [NormedAddCommGroup V] [Module ℂ V]
[InnerProductSpace ℂ V] (u v : V) :
  ⟪u, v⟫_ℂ = 0 ↔ ∀ (a : ℂ), ‖u‖  ≤ ‖u + a • v‖ := by
  sorry
