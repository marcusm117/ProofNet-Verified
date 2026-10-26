import Mathlib

open Topology Filter Real Complex TopologicalSpace Finset Set
open scoped BigOperators

/-Informal Statement

Prove that every open set in $\mathbb{R}$ is the union of an at most countable collection of disjoint segments.
-/

theorem Rudin_exercise_2_29 (U : Set ℝ) (hU : IsOpen U) :
  ∃ (f : ℕ → Set ℝ),
    (∀ n, ∃ a b : EReal, f n = {x : ℝ | a < (x : EReal) ∧ (x : EReal) < b}) ∧
    (∀ n, f n ⊆ U) ∧
    (∀ n m, n ≠ m → f n ∩ f m = ∅) ∧
    U = ⋃ n, f n := by
  sorry
