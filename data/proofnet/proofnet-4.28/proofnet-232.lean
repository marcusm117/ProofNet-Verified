import Mathlib

open Fintype Subgroup Set Polynomial Ideal
open scoped BigOperators
noncomputable section

/-Informal Statement

Prove that if $G$ is an abelian group of order $p q$, where $p$ and $q$ are distinct primes, then $G$ is cyclic.
-/

theorem Dummit_Foote_exercise_4_4_2 {G : Type*} [Fintype G] [Group G]
  {p q : Nat.Primes} (hpq : p ≠ q) (hG : card G = p*q) :
  IsCyclic G := by
  sorry
