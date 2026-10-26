import Mathlib

open Filter Set TopologicalSpace
open scoped Topology

abbrev I : Set ℝ := Icc 0 1

/-Informal Statement

Let $f \colon X \rightarrow X$ be continuous. Show that if $X = [0, 1]$, there is a point $x$ such that $f(x) = x$. (The point $x$ is called a fixed point of $f$.)
-/

theorem Munkres_exercise_24_3a (f : I → I) (hf : Continuous f) :
  ∃ (x : I), f x = x := by
  sorry
