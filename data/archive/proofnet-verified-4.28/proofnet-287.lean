import Mathlib

open Real
open scoped BigOperators
open NumberTheorySymbols



/-Informal Statement

Show that $x^{4} \equiv 2(p)$ has a solution for $p \equiv 1(4)$ iff $p$ is of the form $A^{2}+64 B^{2}$.
-/


theorem Ireland_Rosen_exercise_5_28 {p : ℕ} (hp : p.Prime) (hp1 : p ≡ 1 [MOD 4]) :
    (∃ x, x ^ 4 ≡ 2 [MOD p]) ↔ ∃ A B, p = A ^ 2 + 64 * B ^ 2 := by
  sorry
