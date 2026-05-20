import Mathlib

open Fintype Subgroup Set Polynomial Ideal
open scoped BigOperators



/-Informal Statement

Show that if $G=\langle x\rangle$ is a cyclic group of order $n \geq 1$ then a subgroup $H$ is maximal if and only $H=\left\langle x^{p}\right\rangle$ for some prime $p$ dividing $n$.
-/

theorem Dummit_Foote_exercise_2_4_16c {n : ℕ+} {G : Type*} [Group G] {x : G}
  (hx : orderOf x = n) (hG : closure ({x} : Set G) = ⊤) (H : Subgroup G) :
  (∃ p : ℕ, Prime p ∧ p ∣ n ∧ H = Subgroup.closure {x ^ p}) ↔
  (H ≠ ⊤ ∧ ∀ K : Subgroup G, H ≤ K → K = H ∨ K = ⊤) := by
  sorry
