import Mathlib

open Fintype Subgroup Set Polynomial Ideal
open scoped BigOperators



/-Informal Statement

If $H$ is the unique subgroup of a given order in a group $G$ prove $H$ is characteristic in $G$.
-/

theorem Dummit_Foote_exercise_4_4_7 {G : Type*} [Group G] {H : Subgroup G} [Fintype H]
  (hH : ∀ (K : Subgroup G) (fK : Fintype K), card H = @card K fK → H = K) :
  H.Characteristic := by
  sorry
