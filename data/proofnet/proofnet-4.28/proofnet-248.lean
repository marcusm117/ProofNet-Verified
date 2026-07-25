import Mathlib

open Fintype Subgroup Set Polynomial Ideal
open scoped BigOperators
noncomputable section

/-Informal Statement

Let $R=\mathbb{Z}[\sqrt{-n}]$ where $n$ is a squarefree integer greater than 3. Prove that $2, \sqrt{-n}$ and $1+\sqrt{-n}$ are irreducibles in $R$.
-/

theorem Dummit_Foote_exercise_8_3_5a {n : ℤ} (hn0 : n > 3) (hn1 : Squarefree n) :
  Irreducible (2 : Zsqrtd $ -n) ∧
  Irreducible (⟨0, 1⟩ : Zsqrtd $ -n) ∧
  Irreducible (1 + ⟨0, 1⟩ : Zsqrtd $ -n) := by
  sorry
