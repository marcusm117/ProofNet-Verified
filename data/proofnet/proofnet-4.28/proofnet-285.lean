import Mathlib

open Real
open scoped BigOperators
noncomputable section

/-Informal Statement

If $p=2^{n}+1$ is a Fermat prime, show that 3 is a primitive root modulo $p$.
-/

theorem Ireland_Rosen_exercise_4_6 {p n : ℕ} (hp : p.Prime) (hpn : p = 2^n + 1) :
  IsPrimitiveRoot 3 p := by
  sorry
