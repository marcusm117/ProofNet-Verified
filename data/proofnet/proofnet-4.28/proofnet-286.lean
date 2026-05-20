import Mathlib

open Real
open scoped BigOperators
noncomputable section

/-Informal Statement

Prove that $1^{k}+2^{k}+\cdots+(p-1)^{k} \equiv 0(p)$ if $p-1 \nmid k$ and $-1(p)$ if $p-1 \mid k$.
-/

theorem Ireland_Rosen_exercise_4_11 {p : ℕ} (hp : p.Prime) (k s: ℕ)
  (s := ∑ n : Fin p, (n : ℕ) ^ k) :
  ((¬ p - 1 ∣ k) → s ≡ 0 [MOD p]) ∧ (p - 1 ∣ k → s ≡ 0 [MOD p]) := by
  sorry
