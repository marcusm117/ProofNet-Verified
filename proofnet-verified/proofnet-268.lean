import Mathlib

open Fintype Set Real Ideal Polynomial
open scoped BigOperators



/-Informal Statement

If $\sigma, \tau$ are two permutations that disturb no common element and $\sigma \tau = e$, prove that $\sigma = \tau = e$.
-/

theorem Herstein_exercise_3_2_21 {α : Type*} {σ τ : Equiv.Perm α}
  (h1 : ∀ a : α, ¬(σ a ≠ a ∧ τ a ≠ a)) (h2 : τ * σ = 1) :
  σ = 1 ∧ τ = 1 := by
  sorry
