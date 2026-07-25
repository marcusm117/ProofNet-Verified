import Mathlib

open Filter Set TopologicalSpace
open scoped Topology



/-Informal Statement

Let $A \subset X$. Show that if $C$ is a connected subspace of $X$ that intersects both $A$ and $X-A$, then $C$ intersects $\operatorname{Bd} A$.
-/

theorem Munkres_exercise_23_6 {X : Type*}
  [TopologicalSpace X] {A C : Set X} (hc : IsConnected C)
  (hCA : C ∩ A ≠ ∅) (hCXA : C ∩ Aᶜ ≠ ∅) :
  C ∩ (frontier A) ≠ ∅ := by
  sorry
