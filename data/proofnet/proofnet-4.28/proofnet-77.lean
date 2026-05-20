import Mathlib

open Fintype Set Real Ideal Polynomial
open scoped BigOperators
noncomputable section

/-Informal Statement

If $G$ is a nonabelian group of order 6, prove that $G \simeq S_3$.
-/

instance Herstein_exercise_2_5_37 (G : Type*) [Group G] [Fintype G]
  (hG : card G = 6) (hG' : IsEmpty (CommGroup G)) :
  G ≃* Equiv.Perm (Fin 3) := by
  sorry
