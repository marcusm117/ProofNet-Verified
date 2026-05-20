import Mathlib

open Topology Filter Real Complex TopologicalSpace Finset
open scoped BigOperators
noncomputable section

/-Informal Statement

Suppose $E\subset\mathbb{R}^k$ is uncountable, and let $P$ be the set of condensation points of $E$. Prove that $P$ is perfect.
-/

theorem Rudin_exercise_2_27a (k : ℕ) (E P : Set (EuclideanSpace ℝ (Fin k)))
  (hE : E.Nonempty ∧ ¬ Set.Countable E)
  (hP : P = {x | ∀ U ∈ 𝓝 x, ¬ Set.Countable (P ∩ E)}) :
  IsClosed P ∧ P = {x | ClusterPt x (𝓟 P)} := by
  sorry
