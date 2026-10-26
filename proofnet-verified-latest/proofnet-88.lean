import Mathlib

open Fintype Set Real Ideal Polynomial
open scoped BigOperators



/-Informal Statement

Let $F = \mathbb{Z}_p$ be the field of integers $\mod p$, where $p$ is a prime, and let $q(x) \in F[x]$ be irreducible of degree $n$. Show that $F[x]/(q(x))$ is a field having at exactly $p^n$ elements.
-/

theorem Herstein_exercise_4_5_16 {p n: ℕ} (hp : Nat.Prime p)
  {q : Polynomial (ZMod p)} (hq : Irreducible q) (hn : q.degree = n) :
  (∃ is_fin : Fintype $ Polynomial (ZMod p) ⧸ span ({q}),
  @card (Polynomial (ZMod p) ⧸ span {q}) is_fin = p ^ n) ∧
  IsField (Polynomial (ZMod p) ⧸ span {q}) := by
  sorry
