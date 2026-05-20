import Mathlib

open Fintype Subgroup Set Polynomial Ideal
open scoped BigOperators
noncomputable section

/-Informal Statement

Show that if $G=\langle x\rangle$ is a cyclic group of order $n \geq 1$ then a subgroup $H$ is maximal if and only $H=\left\langle x^{p}\right\rangle$ for some prime $p$ dividing $n$.
-/

theorem Dummit_Foote_exercise_2_4_16c {n : ℕ} (H : AddSubgroup (ZMod n)) :
  ∃ p : (ZMod n), Prime p ∧ H = AddSubgroup.closure {p} ↔
  (H ≠ ⊤ ∧ ∀ K : AddSubgroup (ZMod n), H ≤ K → K = H ∨ K = ⊤) := by
  sorry
