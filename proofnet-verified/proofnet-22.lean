import Mathlib

open InnerProductSpace RCLike ContinuousLinearMap Complex
open scoped BigOperators



/-Informal Statement

Suppose $u, v \in V$. Prove that $\langle u, v\rangle=0$ if and only if $\|u\| \leq\|u+a v\|$ for all $a \in \mathbf{F}$.
-/

theorem Axler_exercise_6_2 {V : Type*} [NormedAddCommGroup V] {F : Type*}
    [RCLike F] [InnerProductSpace F V]
    (u v : V) :
    ⟪u, v⟫_F = 0 ↔ ∀ (a : F), ‖u‖ ≤ ‖u + a • v‖ := by
  sorry
