import Mathlib

open Fintype Subgroup Set Polynomial Ideal
open scoped BigOperators
noncomputable section

/-Informal Statement

An ideal $N$ is called nilpotent if $N^{n}$ is the zero ideal for some $n \geq 1$. Prove that the ideal $p \mathbb{Z} / p^{m} \mathbb{Z}$ is a nilpotent ideal in the ring $\mathbb{Z} / p^{m} \mathbb{Z}$.
-/

theorem Dummit_Foote_exercise_7_3_37 {p m : ℕ} (hp : p.Prime) :
  IsNilpotent (span ({↑p} : Set $ ZMod $ p^m) : Ideal $ ZMod $ p^m) := by
  sorry
