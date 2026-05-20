import Mathlib

open Fintype Complex Polynomial LinearMap FiniteDimensional Module Module.End
open scoped BigOperators



/-Informal Statement

Show that $\frac{-1 + \sqrt{3}i}{2}$ is a cube root of 1 (meaning that its cube equals 1).
-/

theorem Axler_exercise_1_2 :
  (⟨-1/2, Real.sqrt 3 / 2⟩ : ℂ) ^ 3 = 1 := by
  sorry
