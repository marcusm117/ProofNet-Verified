import Mathlib

open Fintype Subgroup Set Polynomial Ideal
open scoped BigOperators
noncomputable section

/-Informal Statement

Let $G$ be a group with subgroups $H$ and $K$ with $H \leq K$. Prove that if $H$ is characteristic in $K$ and $K$ is normal in $G$ then $H$ is normal in $G$.
-/

theorem Dummit_Foote_exercise_4_4_8a {G : Type*} [Group G] (H K : Subgroup G)
  (hHK : H ≤ K) [hHK1 : (H.subgroupOf K).Normal] [hK : K.Normal] :
  H.Normal := by
  sorry
