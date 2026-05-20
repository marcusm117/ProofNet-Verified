import Mathlib

open Topology Filter Real Complex TopologicalSpace Finset
open scoped BigOperators

noncomputable def f : ℕ → ℝ
| 0 => Real.sqrt 2
| (n + 1) => Real.sqrt (2 + Real.sqrt (f n))


/-Informal Statement

If $s_{1}=\sqrt{2}$, and $s_{n+1}=\sqrt{2+\sqrt{s_{n}}} \quad(n=1,2,3, \ldots),$ prove that $\left\{s_{n}\right\}$ converges, and that $s_{n}<2$ for $n=1,2,3, \ldots$.
-/

theorem Rudin_exercise_3_3
  : ∃ (x : ℝ), Tendsto f atTop (𝓝 x) ∧ ∀ n, f n < 2 := by
  sorry
