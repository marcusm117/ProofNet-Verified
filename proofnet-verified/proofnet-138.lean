import Mathlib

open Filter Real Function Set Metric
open scoped Topology


/-Informal Statement

Show that if $S$ is connected, it is not true in general that its interior is connected.
-/

theorem Pugh_exercise_2_57 :
    ∃ S : Set (ℝ × ℝ), IsConnected S ∧ ¬ IsConnected (interior S) := by
  sorry
