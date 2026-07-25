import Mathlib

open Fintype Set Real Ideal Polynomial
open scoped BigOperators



/-Informal Statement

If $G_1$ and $G_2$ are cyclic groups of orders $m$ and $n$, respectively, prove that $G_1 \times G_2$ is cyclic if and only if $m$ and $n$ are relatively prime.
-/

theorem Herstein_exercise_2_9_2 {G H : Type*} [Fintype G] [Fintype H] [Group G]
  [Group H] (hG : IsCyclic G) (hH : IsCyclic H) :
  IsCyclic (G × H) ↔ (card G).Coprime (card H) := by
  sorry
