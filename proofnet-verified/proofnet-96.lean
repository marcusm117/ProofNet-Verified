import Mathlib

open Real
open scoped BigOperators
open scoped ArithmeticFunction ArithmeticFunction.Moebius



/-Informal Statement

Define $\wedge(n)=\log p$ if $n$ is a power of $p$ and zero otherwise. Prove that $\sum_{A \mid n} \mu(n / d) \log d$ $=\wedge(n)$.
-/

theorem Ireland_Rosen_exercise_2_21 {l : ℕ → ℝ}
  (hl : ∀ p n : ℕ, p.Prime → 0 < n → l (p ^ n) = Real.log p)
  (hl1 : ∀ m : ℕ, ¬ IsPrimePow m → l m = 0) :
  l = fun n ↦ (∑ d ∈ Nat.divisors n, ((ArithmeticFunction.moebius (n / d) : ℤ) : ℝ) * log d) := by
  sorry
