import Mathlib

open Fintype Complex Polynomial LinearMap FiniteDimensional Module Module.End
open scoped BigOperators



/-Informal Statement

Suppose $p \in \mathcal{P}(\mathbf{C})$ has degree $m$. Prove that $p$ has $m$ distinct roots if and only if $p$ and its derivative $p^{\prime}$ have no roots in common.
-/

theorem Axler_exercise_4_4 (p : Polynomial ℂ) (m : ℕ) (hp : p ≠ 0) (hm : m = p.degree) :
    @card (p.rootSet ℂ) (rootSetFintype p ℂ) = m ↔
    Disjoint (p.rootSet ℂ) ((Polynomial.derivative p).rootSet ℂ) := by
  sorry
