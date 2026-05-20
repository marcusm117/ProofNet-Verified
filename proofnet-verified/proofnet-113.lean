import Mathlib

open Filter Set TopologicalSpace
open scoped Topology



/-Informal Statement

Let $Y$ be an ordered set in the order topology. Let $f, g: X \rightarrow Y$ be continuous. Let $h: X \rightarrow Y$ be the function $h(x)=\min \{f(x), g(x)\}.$ Show that $h$ is continuous.
-/

theorem Munkres_exercise_18_8b {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y]
  [LinearOrder Y] [OrderTopology Y] {f g : X → Y}
  (hf : Continuous f) (hg : Continuous g) :
  Continuous (λ x => min (f x) (g x)) := by
  sorry
