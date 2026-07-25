import Mathlib

open Real
open scoped BigOperators
noncomputable section

/-Informal Statement

Let $p$ and $q$ be distinct odd primes such that $p-1$ divides $q-1$. If $(n, p q)=1$, show that $n^{q-1} \equiv 1(p q)$.
-/

theorem Ireland_Rosen_exercise_3_14 {p q n : ℕ} (hp0 : p.Prime ∧ p > 2)
  (hq0 : q.Prime ∧ q > 2) (hpq0 : p ≠ q) (hpq1 : p - 1 ∣ q - 1)
  (hn : n.gcd (p*q) = 1) :
  n^(q-1) ≡ 1 [MOD p*q] := by
  sorry
