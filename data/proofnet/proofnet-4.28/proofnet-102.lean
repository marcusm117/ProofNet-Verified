import Mathlib

open Real
open scoped BigOperators
noncomputable section

/-Informal Statement

Show that any prime divisor of $x^{4}-x^{2}+1$ is congruent to 1 modulo 12 .
-/

theorem Ireland_Rosen_exercise_5_13 {p x: ℤ} (hp : Prime p)
  (hpx : p ∣ (x^4 - x^2 + 1)) : p ≡ 1 [ZMOD 12] := by
  sorry
