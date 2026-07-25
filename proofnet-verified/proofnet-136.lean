import Mathlib

open Filter Real Function
open scoped Topology



/-Informal Statement

Let $\mathcal{T}$ be the collection of open subsets of a metric space $\mathrm{M}$, and $\mathcal{K}$ the collection of closed subsets. Show that there is a bijection from $\mathcal{T}$ onto $\mathcal{K}$.
-/

theorem Pugh_exercise_2_29 (M : Type*) [MetricSpace M]
  (O C : Set (Set M))
  (hO : O = {s | IsOpen s})
  (hC : C = {s | IsClosed s}) :
  ∃ f : O → C, Bijective f := by
  sorry
