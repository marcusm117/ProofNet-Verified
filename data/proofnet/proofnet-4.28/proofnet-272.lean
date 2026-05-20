import Mathlib

open Fintype Set Real Ideal Polynomial
open scoped BigOperators
noncomputable section

/-Informal Statement

Show that $(p - 1)/2$ of the numbers $1, 2, \ldots, p - 1$ are quadratic residues and $(p - 1)/2$ are quadratic nonresidues $\mod p$.
-/

theorem Herstein_exercise_4_4_9 (p : ℕ) (hp : Nat.Prime p) :
  (∃ S : Finset (ZMod p), S.card = (p-1)/2 ∧ ∃ x : ZMod p, x^2 = p) ∧
  (∃ S : Finset (ZMod p), S.card = (p-1)/2 ∧ ¬ ∃ x : ZMod p, x^2 = p) := by
  sorry
