import Mathlib

open scoped BigOperators

/-Informal Statement

Let $f: \mathbb{R} \rightarrow \mathbb{R}$ be an infinitely differentiable function satisfying $f(0)=0, f(1)=1$, and $f(x) \geq 0$ for all $x \in$ $\mathbb{R}$. Show that there exist a positive integer $n$ and a real number $x$ such that $f^{(n)}(x)<0$.
-/

theorem Putnam_exercise_2018_a5 (f : ℝ → ℝ) (hf : ContDiff ℝ ⊤ f)
  (hf0 : f 0 = 0) (hf1 : f 1 = 1) (hf2 : ∀ x, f x ≥ 0) :
  ∃ (n : ℕ) (x : ℝ), iteratedDeriv n f x = 0 := by
  sorry
