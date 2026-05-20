import Mathlib

open Real
open scoped BigOperators
noncomputable section

/-Informal Statement

For all odd $n$ show that $8 \mid n^{2}-1$.
-/

theorem Ireland_Rosen_exercise_1_27 {n : ℕ} (hn : Odd n) : 8 ∣ (n^2 - 1) := by
  sorry
