import Mathlib

open Fintype Set Real Ideal Polynomial
open scoped BigOperators



/-Informal Statement

Suppose that $G$ is an abelian group of order $p^nm$ where $p \nmid m$ is a prime.  If $H$ is a subgroup of $G$ of order $p^n$, prove that $H$ is a characteristic subgroup of $G$.
-/

theorem Herstein_exercise_2_5_31 {G : Type*} [CommGroup G] [Fintype G]
  {p m n : ℕ} (hp : Nat.Prime p) (hp1 : ¬ p ∣ m) (hG : card G = p^n*m)
  {H : Subgroup G} [Fintype H] (hH : card H = p^n) :
  Subgroup.Characteristic H := by
  sorry
