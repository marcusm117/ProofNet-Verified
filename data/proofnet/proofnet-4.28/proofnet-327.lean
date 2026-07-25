import Mathlib

open scoped BigOperators

/-Informal Statement

Let $f$ be a real function with a continuous third derivative such that $f(x), f^{\prime}(x), f^{\prime \prime}(x), f^{\prime \prime \prime}(x)$ are positive for all $x$. Suppose that $f^{\prime \prime \prime}(x) \leq f(x)$ for all $x$. Show that $f^{\prime}(x)<2 f(x)$ for all $x$.
-/

theorem Putnam_exercise_1999_b4 (f : ℝ → ℝ) (hf: ContDiff ℝ 3 f)
  (hf1 : ∀ n ≤ 3, ∀ x : ℝ, iteratedDeriv n f x > 0)
  (hf2 : ∀ x : ℝ, iteratedDeriv 3 f x ≤ f x) :
  ∀ x : ℝ, deriv f x < 2 * f x := by
  sorry
