import Mathlib

open Fintype Set Real Ideal Polynomial
open scoped BigOperators
noncomputable section

/-Informal Statement

If $P$ is a $p$-Sylow subgroup of $G$ and $P \triangleleft G$, prove that $P$ is the only $p$-Sylow subgroup of $G$.
-/

theorem Herstein_exercise_2_11_6 {G : Type*} [Group G] {p : ℕ} (hp : Nat.Prime p)
  {P : Sylow p G} (hP : P.Normal) :
  ∀ (Q : Sylow p G), P = Q := by
  sorry
