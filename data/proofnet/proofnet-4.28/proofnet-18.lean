import Mathlib

open Fintype Complex Polynomial LinearMap FiniteDimensional Module Module.End
open scoped BigOperators InnerProductSpace

/-Informal Statement

Suppose $p \in \mathcal{P}(\mathbf{C})$ has degree $m$. Prove that $p$ has $m$ distinct roots if and only if $p$ and its derivative $p^{\prime}$ have no roots in common.
-/

theorem Axler_exercise_4_4 (p : Polynomial ℂ) :
  p.degree = @card (rootSet p ℂ) (rootSetFintype p ℂ) ↔
  Disjoint
  (@card (rootSet (derivative p) ℂ) (rootSetFintype (derivative p) ℂ))
  (@card (rootSet p ℂ) (rootSetFintype p ℂ)) := by
  sorry
