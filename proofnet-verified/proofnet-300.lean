import Mathlib

open Filter Set TopologicalSpace Topology



/-Informal Statement

Let $p: X \rightarrow Y$ be a continuous map. Show that if there is a continuous map $f: Y \rightarrow X$ such that $p \circ f$ equals the identity map of $Y$, then $p$ is a quotient map.
-/

theorem Munkres_exercise_22_2a {X Y : Type*} [TopologicalSpace X]
  [TopologicalSpace Y] (p : X → Y) (h : Continuous p) :
  (∃ (f : Y → X), Continuous f ∧ p ∘ f = id) → IsQuotientMap p := by
  sorry
