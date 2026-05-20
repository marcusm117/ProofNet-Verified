import Mathlib

open Fintype Subgroup Set Polynomial Ideal
open scoped BigOperators
noncomputable section

/-Informal Statement

Let $N$ be a positive integer. Let $M$ be an integer relatively prime to $N$ and let $d$ be an integer relatively prime to $\varphi(N)$, where $\varphi$ denotes Euler's $\varphi$-function. Prove that if $M_{1} \equiv M^{d} \pmod N$ then $M \equiv M_{1}^{d^{\prime}} \pmod N$ where $d^{\prime}$ is the inverse of $d \bmod \varphi(N)$: $d d^{\prime} \equiv 1 \pmod {\varphi(N)}$.
-/

theorem Dummit_Foote_exercise_8_1_12 {N : ℕ} (hN : N > 0) {M M': ℤ} {d : ℕ}
  (hMN : M.gcd N = 1) (hMd : d.gcd N.totient = 1)
  (hM' : M' ≡ M^d [ZMOD N]) :
  ∃ d' : ℕ, d' * d ≡ 1 [ZMOD N.totient] ∧
  M ≡ M'^d' [ZMOD N] := by
  sorry
