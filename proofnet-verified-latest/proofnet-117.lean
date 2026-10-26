import Mathlib

open Filter Set TopologicalSpace Topology



/-Informal Statement

If $A \subset X$, a retraction of $X$ onto $A$ is a continuous map $r: X \rightarrow A$ such that $r(a)=a$ for each $a \in A$. Show that a retraction is a quotient map.
-/

theorem Munkres_exercise_22_2b {X : Type*} [TopologicalSpace X]
  {A : Set X} (r : X → A) (hr : Continuous r) (h : ∀ x : A, r x = x) :
  IsQuotientMap r := by
  sorry
