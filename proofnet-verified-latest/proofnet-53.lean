import Mathlib

open Fintype Subgroup Set Polynomial Ideal
open scoped BigOperators


/-Informal Statement

Let $|G|=p q r$, where $p, q$ and $r$ are primes with $p < q < r$. Prove that $G$ has a normal Sylow subgroup for either $p, q$ or $r$.
-/

theorem Dummit_Foote_exercise_4_5_16 {p q r : ℕ} {G : Type*} [Group G]
  [Fintype G]  (hpqr : p < q ∧ q < r)
  (hpqr1 : p.Prime ∧ q.Prime ∧ r.Prime)(hG : card G = p*q*r) :
  (∃ (P : Sylow p G), P.Normal) ∨ (∃ (P : Sylow q G), P.Normal) ∨ (∃ (P : Sylow r G), P.Normal) := by
  sorry
