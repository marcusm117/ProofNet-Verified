import Mathlib

open Fintype Subgroup Set Polynomial Ideal
open scoped BigOperators

noncomputable def Subgroup.relindex {G : Type*} [Group G] (H K : Subgroup G) : ℕ :=
  H.relIndex K



/-Informal Statement

Let $H \leq K \leq G$. Prove that $|G: H|=|G: K| \cdot|K: H|$ (do not assume $G$ is finite).
-/

theorem Dummit_Foote_exercise_3_2_11 {G : Type*} [Group G] {H K : Subgroup G}
  (hHK : H ≤ K) :
  H.index = K.index * H.relindex K := by
  sorry
