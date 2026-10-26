import Mathlib

open Fintype Set Real Ideal Polynomial
open scoped BigOperators



/-Informal Statement

Prove that $\cos 1^{\circ}$  is algebraic over $\mathbb{Q}$.
-/

set_option maxRecDepth 2048 in
theorem Herstein_exercise_5_3_10 : IsAlgebraic ℚ (cos (Real.pi / 180)) := by
  sorry
