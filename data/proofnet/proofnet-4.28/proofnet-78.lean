import Mathlib

open Fintype Set Real Ideal Polynomial
open scoped BigOperators
noncomputable section

/-Informal Statement

Prove that a group of order $p^2$, $p$ a prime, has a normal subgroup of order $p$.
-/

theorem Herstein_exercise_2_5_44 {G : Type*} [Group G] [Fintype G] {p : ℕ}
  (hp : Nat.Prime p) (hG : card G = p^2) :
  ∃ (N : Subgroup G) (Fin : Fintype N), @card N Fin = p ∧ N.Normal := by
  sorry
