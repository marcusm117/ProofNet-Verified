import Mathlib

open Filter Set TopologicalSpace Function
open scoped Topology



/-Informal Statement

Let $(X, d)$ be a metric space. If $f: X \rightarrow X$ satisfies the condition $d(f(x), f(y))=d(x, y)$ for all $x, y \in X$, then $f$ is called an isometry of $X$. Show that if $f$ is an isometry and $X$ is compact, then $f$ is bijective and hence a homeomorphism.
-/

theorem Munkres_exercise_28_6 {X : Type*} [MetricSpace X]
  [CompactSpace X] {f : X → X} (hf : Isometry f) :
  Continuous f ∧ Bijective f ∧ IsOpenMap f := by
  sorry
