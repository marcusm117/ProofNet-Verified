import Mathlib

open Fintype Subgroup Set Polynomial Ideal
open scoped BigOperators


/-Informal Statement

Let $R$ be an integral domain. Prove that if the following two conditions hold then $R$ is a Principal Ideal Domain: (i) any two nonzero elements $a$ and $b$ in $R$ have a greatest common divisor which can be written in the form $r a+s b$ for some $r, s \in R$, and (ii) if $a_{1}, a_{2}, a_{3}, \ldots$ are nonzero elements of $R$ such that $a_{i+1} \mid a_{i}$ for all $i$, then there is a positive integer $N$ such that $a_{n}$ is a unit times $a_{N}$ for all $n \geq N$.
-/

theorem Dummit_Foote_exercise_8_2_4 {R : Type*} [CommRing R] [IsDomain R] [GCDMonoid R]
  (h1 : ∀ a b : R, a ≠ 0 → b ≠ 0 → ∃ r s : R, gcd a b = r*a + s*b)
  (h2 : ∀ a : ℕ → R, (∀ i : ℕ, a i ≠ 0 ∧ a (i + 1) ∣ a i) →
  ∃ N : ℕ, ∀ n ≥ N, ∃ u : R, IsUnit u ∧ a n = u * a N) :
  IsPrincipalIdealRing R := by
  sorry
