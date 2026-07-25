import Mathlib

open Topology Filter Real Complex TopologicalSpace Finset
open scoped BigOperators



/-Informal Statement

Suppose $X$ is a nonempty complete metric space, and $\left\{G_{n}\right\}$ is a sequence of dense open sets of $X$. Prove Baire's theorem, namely, that $\bigcap_{1}^{\infty} G_{n}$ is not empty.
-/

theorem Rudin_exercise_3_22 (X : Type*) [MetricSpace X] [CompleteSpace X] [Nonempty X]
  (G : ℕ → Set X) (hG : ∀ n, IsOpen (G n) ∧ Dense (G n)) :
  ∃ x, ∀ n, x ∈ G n := by
  sorry
