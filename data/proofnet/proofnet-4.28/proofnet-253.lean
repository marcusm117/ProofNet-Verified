import Mathlib

open Fintype Subgroup Set Polynomial Ideal
open scoped BigOperators
noncomputable section

/-Informal Statement

Prove that the polynomial $x^{2}-\sqrt{2}$ is irreducible over $\mathbb{Z}[\sqrt{2}]$. You may assume that $\mathbb{Z}[\sqrt{2}]$ is a U.F.D.
-/

theorem Dummit_Foote_exercise_9_4_9 :
  Irreducible (X^2 - C Zsqrtd.sqrtd : Polynomial (Zsqrtd 2)) := by
  sorry
