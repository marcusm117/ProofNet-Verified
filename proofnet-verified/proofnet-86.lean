import Mathlib

open Fintype Set Real Ideal Polynomial
open scoped BigOperators

/-Informal Statement

Let $p$ be an odd prime and let $1 + \frac{1}{2} + ... + \frac{1}{p - 1} = \frac{a}{b}$, where $a, b$ are integers. Show that $p \mid a$.
-/


theorem Herstein_exercise_4_2_9 {p : ℕ} (hp : Nat.Prime p) (hp1 : Odd p) :
  ∀ (a b : ℤ), (a / b : ℚ) = ∑ i ∈ Finset.range (p-1), (1 / (i + 1) : ℚ) → ↑p ∣ a := by
  sorry
