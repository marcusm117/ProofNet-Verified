import Mathlib

open scoped BigOperators

/-Informal Statement

Let $n$ be a positive integer, and let $f_{n}(z)=n+(n-1) z+$ $(n-2) z^{2}+\cdots+z^{n-1}$. Prove that $f_{n}$ has no roots in the closed unit disk $\{z \in \mathbb{C}:|z| \leq 1\}$.
-/

theorem Putnam_exercise_2018_b2 (n : ℕ) (hn : n > 0) (f : ℕ → ℂ → ℂ)
  (hf : ∀ n : ℕ, f n = λ (z : ℂ) => (∑ i : Fin n, (n-i)* z^(i : ℕ))) :
  ¬ (∃ z : ℂ, ‖z‖ ≤ 1 ∧ f n z = 0) := by
  sorry
