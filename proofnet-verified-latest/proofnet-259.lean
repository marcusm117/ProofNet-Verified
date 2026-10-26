import Mathlib

open Fintype Set Real Ideal Polynomial Subgroup
open scoped BigOperators



/-Informal Statement

If a group $G$ has no proper subgroups, prove that $G$ is cyclic of order $p$, where $p$ is a prime number.
-/

theorem Herstein_exercise_2_3_16
    {G : Type*} [Group G]
    (hG : ∀ H : Subgroup G, H = ⊤ ∨ H = ⊥)
    (h_nontrivial : ∃ g : G, g ≠ (1 : G)) :
    IsCyclic G ∧ ∃ p : ℕ, Nat.Prime p ∧ Nat.card G = p := by
  sorry
