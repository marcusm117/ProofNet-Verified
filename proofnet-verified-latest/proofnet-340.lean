import Mathlib

open Topology Filter Real Complex TopologicalSpace Finset
open scoped BigOperators



/-Informal Statement

Suppose $E\subset\mathbb{R}^k$ is uncountable, and let $P$ be the set of condensation points of $E$. Prove that at most countably many points of $E$ are not in $P$.
-/

theorem Rudin_exercise_2_27b (k : ℕ) (E P : Set (EuclideanSpace ℝ (Fin k)))
  (hE : ¬ Set.Countable E)
  (hP : P = {x | ∀ U ∈ 𝓝 x, ¬ Set.Countable (U ∩ E)}) :
  Set.Countable (E \ P) := by
  sorry
