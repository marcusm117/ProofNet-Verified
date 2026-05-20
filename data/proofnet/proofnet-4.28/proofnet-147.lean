import Mathlib

open scoped BigOperators

/-Informal Statement

For $j \in\{1,2,3,4\}$, let $z_{j}$ be a complex number with $\left|z_{j}\right|=1$ and $z_{j} \neq 1$. Prove that $3-z_{1}-z_{2}-z_{3}-z_{4}+z_{1} z_{2} z_{3} z_{4} \neq 0 .$
-/

theorem Putnam_exercise_2020_b5 (z : Fin 4 → ℂ) (hz0 : ∀ n, ‖z n‖ < 1)
  (hz1 : ∀ n : Fin 4, z n ≠ 1) :
  3 - z 0 - z 1 - z 2 - z 3 + (z 0) * (z 1) * (z 2) * (z 3) ≠ 0 := by
  sorry
