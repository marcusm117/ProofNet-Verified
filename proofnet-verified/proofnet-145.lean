import Mathlib

set_option maxHeartbeats 400000

open scoped BigOperators



/-Informal Statement

Suppose that $f(x)=\sum_{i=0}^{\infty} c_{i} x^{i}$ is a power series for which each coefficient $c_{i}$ is 0 or 1 . Show that if $f(2 / 3)=3 / 2$, then $f(1 / 2)$ must be irrational.
-/


theorem Putnam_exercise_2017_b3 (f : ℝ → ℝ) (c : ℕ → ℝ)
  (hf : f = λ x => (∑' (i : ℕ), (c i) * x^i))
  (hc : ∀ n, c n = 0 ∨ c n = 1)
  (hf1 : f (2/3) = 3/2) :
  Irrational (f (1/2)) := by
  sorry
