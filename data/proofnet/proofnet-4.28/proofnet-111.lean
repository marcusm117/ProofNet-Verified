import Mathlib

open Filter Set TopologicalSpace
open Topology
noncomputable section

/-Informal Statement

A map $f: X \rightarrow Y$ is said to be an open map if for every open set $U$ of $X$, the set $f(U)$ is open in $Y$. Show that $\pi_{1}: X \times Y \rightarrow X$ and $\pi_{2}: X \times Y \rightarrow Y$ are open maps.
-/

theorem Munkres_exercise_16_4 {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y]
  (π₁ : X × Y → X)
  (π₂ : X × Y → Y)
  (h₁ : π₁ = Prod.fst)
  (h₂ : π₂ = Prod.snd) :
  IsOpenMap π₁ ∧ IsOpenMap π₂ := by
  sorry
