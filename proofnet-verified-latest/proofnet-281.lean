import Mathlib

open Real
open scoped BigOperators



/-Informal Statement

Show that $\sum^{\prime} 1 / n$, the sum being over square free integers, diverges.
-/

theorem Ireland_Rosen_exercise_2_27a :
  ¬ Summable (λ i : {p : ℤ // Squarefree p} => (1 : ℚ) / i) := by
  sorry
