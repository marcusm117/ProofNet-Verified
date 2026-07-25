import Mathlib

open Real
open scoped BigOperators
noncomputable section

/-Informal Statement

Let $p$ be an odd prime. Show that $a$ is a primitive root modulo $p$ iff $a^{(p-1) / q} \not \equiv 1(p)$ for all prime divisors $q$ of $p-1$.
-/

theorem Ireland_Rosen_exercise_4_8 {p a : ℕ} (hp : Odd p) :
  IsPrimitiveRoot a p ↔ (∀ q : ℕ, q ∣ (p-1) → q.Prime → ¬ a^(p-1) ≡ 1 [MOD p]) := by
  sorry
