import Mathlib

open Function Fintype Subgroup Ideal Polynomial Submodule Zsqrtd
open scoped BigOperators



/-Informal Statement

An element $x$ of a ring $R$ is called nilpotent if some power of $x$ is zero. Prove that if $x$ is nilpotent, then $1+x$ is a unit in $R$.
-/

theorem Artin_exercise_10_1_13 {R : Type*} [Ring R] {x : R}
  (hx : IsNilpotent x) : IsUnit (1 + x) := by
  sorry
