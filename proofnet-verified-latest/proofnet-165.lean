import Mathlib

open Topology Filter Real Complex TopologicalSpace Finset
open scoped BigOperators



/-Informal Statement

Let $f$ and $g$ be continuous mappings of a metric space $X$ into a metric space $Y$, and let $E$ be a dense subset of $X$. Prove that $f(E)$ is dense in $f(X)$.
-/

theorem Rudin_exercise_4_4a
  {α : Type} [MetricSpace α]
  {β : Type} [MetricSpace β]
  (f : α → β)
  (s : Set α)
  (h₁ : Continuous f)
  (h₂ : Dense s)
  : f '' Set.univ ⊆ closure (f '' s) := by
  sorry
