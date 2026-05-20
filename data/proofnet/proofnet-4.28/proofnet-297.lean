import Mathlib

open Filter Set TopologicalSpace
open Topology
noncomputable section

/-Informal Statement

Let $A \subset X$; let $f: A \rightarrow Y$ be continuous; let $Y$ be Hausdorff. Show that if $f$ may be extended to a continuous function $g: \bar{A} \rightarrow Y$, then $g$ is uniquely determined by $f$.
-/

theorem Munkres_exercise_18_13
  {X : Type*} [TopologicalSpace X] {Y : Type*} [TopologicalSpace Y]
  [T2Space Y] {A : Set X} {f : A → Y} (hf : Continuous f)
  (g : closure A → Y)
  (g_con : Continuous g) :
  ∀ (g' : closure A → Y), Continuous g' →  (∀ (x : closure A), g x = g' x) := by
  sorry
