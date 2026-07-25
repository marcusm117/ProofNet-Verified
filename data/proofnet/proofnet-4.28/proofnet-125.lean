import Mathlib

open Filter Set TopologicalSpace
open Topology
noncomputable section

def countably_compact (X : Type*) [TopologicalSpace X] :=
  ∀ U : ℕ → Set X,
  (∀ i, IsOpen (U i)) ∧ ((univ : Set X) ⊆ ⋃ i, U i) →
  (∃ t : Finset ℕ, (univ : Set X) ⊆ ⋃ i ∈ t, U i)

/-Informal Statement

Show that X is countably compact if and only if every nested sequence $C_1 \supset C_2 \supset \cdots$ of closed nonempty sets of X has a nonempty intersection.
-/

theorem Munkres_exercise_28_5
  (X : Type*) [TopologicalSpace X] :
  countably_compact X ↔ ∀ (C : ℕ → Set X), (∀ n, IsClosed (C n)) ∧
  (∀ n, C n ≠ ∅) ∧ (∀ n, C n ⊆ C (n + 1)) → ∃ x, ∀ n, x ∈ C n := by
  sorry
