import Mathlib

open Fintype Set Real Ideal Polynomial
open scoped BigOperators
noncomputable section

/-Informal Statement

If a group $G$ has no proper subgroups, prove that $G$ is cyclic of order $p$, where $p$ is a prime number.
-/

theorem Herstein_exercise_2_3_16 {G : Type*} [Group G]
  (hG : ∀ H : Subgroup G, H = ⊤ ∨ H = ⊥) :
  IsCyclic G ∧ ∃ (p : ℕ) (Fin : Fintype G), Nat.Prime p ∧ @card G Fin = p := by
  sorry
