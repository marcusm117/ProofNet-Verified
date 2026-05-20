import Mathlib

open Fintype Set Real Ideal Polynomial
open scoped BigOperators
noncomputable section

/-Informal Statement

Show that there is an infinite number of solutions to $x^2 = -1$ in the quaternions.
-/

theorem Herstein_exercise_4_1_19 : Infinite {x : Quaternion ℝ | x^2 = -1} := by
  sorry
