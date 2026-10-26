import Mathlib

open Fintype Subgroup Set Polynomial Ideal
open scoped BigOperators



/-Informal Statement

Prove that $(x, y)$ is not a principal ideal in $\mathbb{Q}[x, y]$.
-/


theorem Dummit_Foote_exercise_9_1_6 : ¬ Submodule.IsPrincipal
  (span ({MvPolynomial.X 0, MvPolynomial.X 1} : Set (MvPolynomial (Fin 2) ℚ))) := by
  sorry
