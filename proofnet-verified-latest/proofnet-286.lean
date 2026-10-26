import Mathlib

open Real
open scoped BigOperators Finset



/-Informal Statement

Prove that $1^{k}+2^{k}+\cdots+(p-1)^{k} \equiv 0(p)$ if $p-1 \nmid k$ and $-1(p)$ if $p-1 \mid k$.
-/

theorem Ireland_Rosen_exercise_4_11 {p : ℕ} (hp : p.Prime) (k s: ℕ)
  (hs : s = ∑ n : Fin (p-1), (n + 1 : ℕ) ^ k) :
  ((¬ p - 1 ∣ k) → s ≡ 0 [MOD p]) ∧ (p - 1 ∣ k → s ≡ -1 [ZMOD p]) := by
  sorry
