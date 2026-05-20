import Mathlib

open Fintype Subgroup Set Polynomial Ideal
open scoped BigOperators
noncomputable section

/-Informal Statement

Prove that if $H$ has finite index $n$ then there is a normal subgroup $K$ of $G$ with $K \leq H$ and $|G: K| \leq n!$.
-/

theorem Dummit_Foote_exercise_4_2_8 {G : Type*} [Group G] {H : Subgroup G}
  {n : ℕ} (hn : n > 0) (hH : H.index = n) :
  ∃ K ≤ H, K.Normal ∧ K.index ≤ n.factorial := by
  sorry
