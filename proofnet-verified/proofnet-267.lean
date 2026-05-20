import Mathlib

open Fintype Set Real Ideal Polynomial
open scoped BigOperators



/-Informal Statement

If $P \triangleleft G$, $P$ a $p$-Sylow subgroup of $G$, prove that $\varphi(P) = P$ for every automorphism $\varphi$ of $G$.
-/

theorem Herstein_exercise_2_11_7 {G : Type*} [Group G] {p : ℕ} (hp : Nat.Prime p)
  {P : Sylow p G} (hP : P.Normal) :
  Subgroup.Characteristic (P : Subgroup G) := by
  sorry
