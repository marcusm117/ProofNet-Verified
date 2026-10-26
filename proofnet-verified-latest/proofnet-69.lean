import Mathlib

open Fintype Subgroup Set Polynomial Ideal
open scoped BigOperators



/-Informal Statement

Prove that $\frac{(x+2)^p-2^p}{x}$, where $p$ is an odd prime, is irreducible in $\mathbb{Z}[x]$.
-/

theorem Dummit_Foote_exercise_9_4_2d {p : ℕ} (hp : p.Prime ∧ p > 2)
  {f : Polynomial ℤ} (hf : f = (X + 2)^p):
  Irreducible (∑ n ∈ (f.support \ {0}), (f.coeff n : Polynomial ℤ) * X ^ (n-1) :
  Polynomial ℤ) := by
  sorry
