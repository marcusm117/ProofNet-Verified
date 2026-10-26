import Mathlib

open Real
open scoped BigOperators



/-Informal Statement

Let $p$ be an odd prime. Show that $a$ is a primitive root modulo $p$ iff $a^{(p-1) / q} \not \equiv 1(p)$ for all prime divisors $q$ of $p-1$.
-/

theorem Ireland_Rosen_exercise_4_8 {p : ℕ} (hp : Odd p) (hp' : p.Prime) (a : (ZMod p)ˣ) :
  IsPrimitiveRoot (a : ZMod p) (p - 1) ↔
    ∀ q : ℕ, q ∣ (p - 1) → q.Prime →
      ¬ ((a : ZMod p) ^ ((p - 1) / q) = 1) := by
  sorry
