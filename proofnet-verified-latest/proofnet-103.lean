import Mathlib

open Real
open scoped BigOperators
open scoped NumberTheorySymbols



/-Informal Statement

Show that if $a$ is negative then $p \equiv q(4 a)$ together with $p\not | a$ imply $(a / p)=(a / q)$.
-/

theorem Ireland_Rosen_exercise_5_37 {p q : ℕ} [Fact (p.Prime)] [Fact (q.Prime)] {a : ℤ}
  (ha : a < 0) (h0 : p ≡ q [ZMOD 4*a]) (h1 : ¬ ((p : ℤ) ∣ a)) :
  legendreSym p a = legendreSym q a := by
  sorry
