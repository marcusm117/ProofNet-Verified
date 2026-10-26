import Mathlib

open Fintype Subgroup Set Polynomial Ideal
open scoped BigOperators



/-Informal Statement

Prove that if $R$ is an integral domain and $x^{2}=1$ for some $x \in R$ then $x=\pm 1$.
-/

theorem Dummit_Foote_exercise_7_1_11 {R : Type*} [CommRing R] [IsDomain R]
  {x : R} (hx : x^2 = 1) : x = 1 ∨ x = -1 := by
  sorry
