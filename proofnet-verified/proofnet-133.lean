import Mathlib

open Filter Set TopologicalSpace
open scoped Topology

abbrev I : Set ℝ := Icc 0 1

/-Informal Statement

Let $X$ be completely regular, let $A$ and $B$ be disjoint closed subsets of $X$. Show that if $A$ is compact, there is a continuous function $f \colon X \rightarrow [0, 1]$ such that $f(A) = \{0\}$ and $f(B) = \{1\}$.
-/

theorem Munkres_exercise_33_8
  (X : Type*) [TopologicalSpace X] [CompletelyRegularSpace X]
  (A B : Set X) (hA : IsClosed A) (hB : IsClosed B)
  (hAB : Disjoint A B) (hAc : IsCompact A)
  (hAn : A.Nonempty) (hBn : B.Nonempty) :
  ∃ (f : X → I), Continuous f ∧ f '' A = {0} ∧ f '' B = {1} := by
  sorry
