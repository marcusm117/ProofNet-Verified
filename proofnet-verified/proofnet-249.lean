import Mathlib

open Fintype Subgroup Set Polynomial Ideal
open scoped BigOperators



/-Informal Statement

Let $q \in \mathbb{Z}$ be a prime with $q \equiv 3 \bmod 4$. Prove that the quotient ring $\mathbb{Z}[i] /(q)$ is a field with $q^{2}$ elements.
-/


theorem Dummit_Foote_exercise_8_3_6b {q : ℕ} (hq0 : q.Prime) (hq1 : q ≡ 3 [ZMOD 4]) :
    IsField (GaussianInt ⧸ span ({↑q} : Set GaussianInt)) ∧
    ∃ finR : Fintype (GaussianInt ⧸ span ({↑q} : Set GaussianInt)),
      @Fintype.card _ finR = q ^ 2 := by
  sorry
