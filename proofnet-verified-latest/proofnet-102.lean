import Mathlib

open Real
open scoped BigOperators



/-Informal Statement

Show that any prime divisor of $x^{4}-x^{2}+1$ is congruent to 1 modulo 12 .
-/

theorem Ireland_Rosen_exercise_5_13 {p : ℕ} {x : ℤ}
    (hp : Nat.Prime p)
    (hpx : (p : ℤ) ∣ (x^4 - x^2 + 1)) : (p : ℤ) ≡ 1 [ZMOD 12] := by
  sorry
