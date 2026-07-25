import Mathlib

open Real
open scoped BigOperators



/-Informal Statement

Consider a prime $p$ of the form $4 t+1$. Show that $a$ is a primitive root modulo $p$ iff $-a$ is a primitive root modulo $p$.
-/


theorem Ireland_Rosen_exercise_4_4 {p t : ℕ} (hp0 : p.Prime) (hp1 : p = 4 * t + 1)
  (a : ZMod p) :
  IsPrimitiveRoot a (p - 1) ↔ IsPrimitiveRoot (-a) (p - 1) := by
  sorry
