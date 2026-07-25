import Mathlib

open Filter Set TopologicalSpace
open Topology
noncomputable section

/-Informal Statement

Let $\left\{A_{n}\right\}$ be a sequence of connected subspaces of $X$, such that $A_{n} \cap A_{n+1} \neq \varnothing$ for all $n$. Show that $\bigcup A_{n}$ is connected.
-/

theorem Munkres_exercise_23_2 {X : Type*}
  [TopologicalSpace X] {A : ℕ → Set X} (hA : ∀ n, IsConnected (A n))
  (hAn : ∀ n, A n ∩ A (n + 1) ≠ ∅) :
  IsConnected (⋃ n, A n) := by
  sorry
