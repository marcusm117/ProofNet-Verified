import Mathlib

open Fintype Set Real Ideal Polynomial
open scoped BigOperators
noncomputable section

/-Informal Statement

Suppose that $|G| = pm$, where $p \nmid m$ and $p$ is a prime. If $H$ is a normal subgroup of order $p$ in $G$, prove that $H$ is characteristic.
-/

theorem Herstein_exercise_2_5_30 {G : Type*} [Group G] [Fintype G]
  {p m : ℕ} (hp : Nat.Prime p) (hp1 : ¬ p ∣ m) (hG : card G = p*m)
  {H : Subgroup G} [Fintype H] [H.Normal] (hH : card H = p):
  Subgroup.Characteristic H := by
  sorry
