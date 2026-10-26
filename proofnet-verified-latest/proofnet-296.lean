import Mathlib

open Filter Set TopologicalSpace
open scoped Topology



/-Informal Statement

Let $Y$ be an ordered set in the order topology. Let $f, g: X \rightarrow Y$ be continuous. Show that the set $\{x \mid f(x) \leq g(x)\}$ is closed in $X$.
-/

theorem Munkres_exercise_18_8a {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y]
  [LinearOrder Y] [OrderTopology Y] {f g : X → Y}
  (hf : Continuous f) (hg : Continuous g) :
  IsClosed {x | f x ≤ g x} := by
  sorry
