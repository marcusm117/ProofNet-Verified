import Mathlib

open Function Fintype Subgroup Ideal Polynomial Submodule Zsqrtd
open scoped BigOperators



/-Informal Statement

Let $R$ be a ring, with $M$ an ideal of $R$. Suppose that every element of $R$ which is not in $M$ is a unit of $R$. Prove that $M$ is a maximal ideal and that moreover it is the only maximal ideal of $R$.
-/

theorem Artin_exercise_10_7_10 {R : Type*} [Ring R]
  (M : Ideal R) (hM : ∀ (x : R), x ∉ M → IsUnit x)
  (hProper : ∃ x : R, x ∉ M) :
  IsMaximal M ∧ ∀ (N : Ideal R), IsMaximal N → N = M := by
  sorry
