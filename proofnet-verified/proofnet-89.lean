import Mathlib

open Fintype Set Real Ideal Polynomial
open scoped BigOperators



/-Informal Statement

If $p$ is a prime, show that $q(x) = 1 + x + x^2 + \cdots x^{p - 1}$ is irreducible in $Q[x]$.
-/

theorem Herstein_exercise_4_5_25 {p : ℕ} (hp : Nat.Prime p) :
  Irreducible (∑ i ∈ Finset.range p, X ^ i : Polynomial ℚ) := by
  sorry
