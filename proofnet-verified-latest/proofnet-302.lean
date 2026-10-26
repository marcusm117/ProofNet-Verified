import Mathlib

open Filter Set TopologicalSpace
open scoped Topology



/-Informal Statement

Let $\left\{A_{\alpha}\right\}$ be a collection of connected subspaces of $X$; let $A$ be a connected subset of $X$. Show that if $A \cap A_{\alpha} \neq \varnothing$ for all $\alpha$, then $A \cup\left(\bigcup A_{\alpha}\right)$ is connected.
-/

theorem Munkres_exercise_23_3 {X α : Type*} [TopologicalSpace X]
  {A : α → Set X}
  (hAa : ∀ a, IsConnected (A a))
  (A₀ : Set X)
  (hA : IsConnected A₀)
  (h : ∀ a, A₀ ∩ A a ≠ ∅) :
  IsConnected (A₀ ∪ (⋃ a, A a)) := by
  sorry
