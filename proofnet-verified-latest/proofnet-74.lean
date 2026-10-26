import Mathlib

open Fintype Set Real Ideal Polynomial
open scoped BigOperators



/-Informal Statement

If $G$ is a group and $a, x \in G$, prove that $C\left(x^{-1} a x\right)=x^{-1} C(a) x$
-/

theorem Herstein_exercise_2_3_17 {G : Type*} [Group G] (a x : G) :
  centralizer {x⁻¹ * a * x} = (fun g : G => x⁻¹ * g * x) '' (centralizer {a}) := by
  sorry
