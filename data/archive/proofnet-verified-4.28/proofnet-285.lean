import Mathlib

open Real
open scoped BigOperators



/-Informal Statement

If $p=2^{n}+1$ is a Fermat prime, show that 3 is a primitive root modulo $p$.
-/

theorem Ireland_Rosen_exercise_4_6 {p n : ℕ} (hp : p.Prime) (hpn : p = 2 ^ n + 1)
    (hn : 2 ≤ n) :
    IsPrimitiveRoot (3 : ZMod p) (p - 1) := by
  sorry
