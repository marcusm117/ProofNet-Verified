import Mathlib

open Filter Real Function
open scoped Topology
noncomputable section

/-Informal Statement

Assume that $A, B$ are compact, disjoint, nonempty subsets of $M$. Prove that there are $a_0 \in A$ and $b_0 \in B$ such that for all $a \in A$ and $b \in B$ we have $d(a_0, b_0) \leq d(a, b)$.
-/

theorem Pugh_exercise_2_46 {M : Type*} [MetricSpace M]
  {A B : Set M} (hA : IsCompact A) (hB : IsCompact B)
  (hAB : Disjoint A B) (hA₀ : A ≠ ∅) (hB₀ : B ≠ ∅) :
  ∃ a₀ b₀, a₀ ∈ A ∧ b₀ ∈ B ∧ ∀ (a : M) (b : M),
  a ∈ A → b ∈ B → dist a₀ b₀ ≤ dist a b := by
  sorry
