import Mathlib

open Real
open scoped BigOperators


/-Informal Statement

Show that 1729 is the smallest positive integer expressible as the sum of two different integral cubes in two ways.
-/

theorem Ireland_Rosen_exercise_18_4 :
    1729 = sInf (fun n => 0 < n ∧
      ∃ x y z w : ℕ,
        0 < x ∧ 0 < y ∧ 0 < z ∧ 0 < w ∧
          x ^ 3 + y ^ 3 = n ∧
          z ^ 3 + w ^ 3 = n ∧
            x ≠ y ∧ w ≠ z ∧
            x ≠ z ∧ x ≠ w ∧
            y ≠ z ∧ y ≠ w) := by
  sorry
