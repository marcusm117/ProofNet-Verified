import Mathlib

open Function Fintype Subgroup Ideal Polynomial Submodule Zsqrtd
open scoped BigOperators



/-Informal Statement

Let $p$ be a prime integer. Prove that the polynomial $x^n-p$ is irreducible in $\mathbb{Q}[x]$.
-/

theorem Artin_exercise_11_4_8 (p : ℕ) (hp : Prime p) (n : ℕ) (hn : n > 0) :
  Irreducible (X ^ n - (p : Polynomial ℚ) : Polynomial ℚ) := by
  sorry
