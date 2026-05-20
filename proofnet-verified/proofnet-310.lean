import Mathlib

open Filter Set TopologicalSpace
open scoped Topology BoundedContinuousFunction

abbrev I : Set ℝ := Icc 0 1

/-Informal Statement

Show that $[0, 1]^\omega$ is not locally compact in the uniform topology.
-/

theorem Munkres_exercise_29_4 :
    ¬ LocallyCompactSpace (ℕ →ᵇ I) := by
  sorry
