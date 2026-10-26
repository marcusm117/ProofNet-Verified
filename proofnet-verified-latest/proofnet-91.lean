import Mathlib

open Fintype Set Real Ideal Polynomial
open scoped BigOperators



/-Informal Statement

Let $V$ be a vector space over an infinite field $F$. Show that $V$ cannot be the set-theoretic union of a finite number of proper subspaces of $V$.
-/

theorem Herstein_exercise_5_2_20 {F V ι: Type*} [Infinite F] [Field F]
  [AddCommGroup V] [Module F V] [Finite ι] {u : ι → Submodule F V}
  (hu : ∀ i : ι, u i ≠ ⊤) :
  (⋃ i : ι, (u i : Set V)) ≠ ⊤ := by
  sorry
