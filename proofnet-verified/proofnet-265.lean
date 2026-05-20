import Mathlib

open Fintype Set Real Ideal Polynomial
open scoped BigOperators



/-Informal Statement

Prove that if $p > q$ are two primes such that $q \mid p - 1$, then any two nonabelian groups of order $pq$ are isomorphic.
-/


theorem Herstein_exercise_2_8_15 {G H: Type*} [Fintype G] [Group G] [Fintype H] [Group H]
  (hG_nonab : ∃ x y : G, x * y ≠ y * x) (hH_nonab : ∃ x y : H, x * y ≠ y * x)
  {p q : ℕ} (hp : Nat.Prime p) (hq : Nat.Prime q)
  (h : p > q) (h1 : q ∣ p - 1) (hG : card G = p*q) (hH : card H = p*q) :
  Nonempty (G ≃* H) := by
  sorry
