import Mathlib

open Real
open scoped BigOperators
noncomputable section

/-Informal Statement

If $n$ is not a prime, show that $(n-1) ! \equiv 0(n)$, except when $n=4$.
-/

theorem Ireland_Rosen_exercise_3_10 {n : ℕ} (hn0 : ¬ n.Prime) (hn1 : n ≠ 4) :
  Nat.factorial (n-1) ≡ 0 [MOD n] := by
  sorry
