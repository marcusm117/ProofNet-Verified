import Mathlib

open Fintype Set Real Ideal Polynomial
open scoped BigOperators
noncomputable section

/-Informal Statement

Let $R$ be the ring of $2 \times 2$ matrices over the real numbers; suppose that $I$ is an ideal of $R$. Show that $I = (0)$ or $I = R$.
-/

theorem Herstein_exercise_4_3_25 (I : Ideal (Matrix (Fin 2) (Fin 2) ℝ)) :
  I = ⊥ ∨ I = ⊤ := by
  sorry
