import Mathlib

open Real Nat
open scoped BigOperators

/-Informal Statement

Consider a prime $p$ of the form $4 t+3$. Show that $a$ is a primitive root modulo $p$ iff $-a$ has order $(p-1) / 2$.
-/

theorem Ireland_Rosen_exercise_4_5 {p t : ℕ} (hp0 : p.Prime) (hp1 : p = 4 * t + 3)
  (a : (ZMod p)ˣ) :
  IsPrimitiveRoot (a : ZMod p) (p - 1) ↔
    IsPrimitiveRoot (- (a : ZMod p)) ((p - 1) / 2) := by
  sorry
