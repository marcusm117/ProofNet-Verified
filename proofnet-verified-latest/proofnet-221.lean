import Mathlib

open Fintype Subgroup Set Polynomial Ideal
open scoped BigOperators



/-Informal Statement

Let $H$ be a subgroup of the additive group of rational numbers with the property that $1 / x \in H$ for every nonzero element $x$ of $H$. Prove that $H=0$ or $\mathbb{Q}$.
-/

theorem Dummit_Foote_exercise_2_1_13 (H : AddSubgroup ℚ)
    (hH : ∀ ⦃x : ℚ⦄, x ∈ H → x ≠ 0 → (1 / x) ∈ H) :
    H = ⊥ ∨ H = ⊤ := by
  sorry
