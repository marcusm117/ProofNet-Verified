import Mathlib

open Topology Filter Real Complex TopologicalSpace Finset
open scoped BigOperators



/-Informal Statement

Let $E$ be a nonempty subset of a total ordered set; suppose $\alpha$ is a lower bound of $E$ and $\beta$ is an upper bound of $E$. Prove that $\alpha \leq \beta$.
-/

theorem Rudin_exercise_1_4
(α : Type*) [LinearOrder α]
(s : Set α)
(x y : α)
(h₀ : Set.Nonempty s)
(h₁ : x ∈ lowerBounds s)
(h₂ : y ∈ upperBounds s)
: x ≤ y := by
  sorry
