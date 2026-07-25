import Mathlib

open Filter Set TopologicalSpace
open Topology
noncomputable section

abbrev I : Set ℝ := Icc 0 1

/-Informal Statement

Let $X$ be completely regular. Show that $X$ is connected if and only if the Stone-Čech compactification of $X$ is connected.
-/

theorem Munkres_exercise_38_6 {X : Type*}
  (X : Type*) [TopologicalSpace X] [RegularSpace X]
  (h : ∀ x A, IsClosed A ∧ ¬ x ∈ A →
  ∃ (f : X → I), Continuous f ∧ f x = (1 : I) ∧ f '' A = {0}) :
  IsConnected (univ : Set X) ↔ IsConnected (univ : Set (StoneCech X)) := by
  sorry
