import Mathlib

open Filter Real Function
open scoped Topology
noncomputable section

/-Informal Statement

Show that if $S$ is connected, it is not true in general that its interior is connected.
-/

theorem Pugh_exercise_2_57 {X : Type*} [TopologicalSpace X]
  : ∃ (S : Set X), IsConnected S ∧ ¬ IsConnected (interior S) := by
  sorry
