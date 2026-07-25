import Mathlib

open Fintype Subgroup Set Polynomial Ideal
open scoped BigOperators
noncomputable section

/-Informal Statement

Let $G=\left\{g_{1}, \ldots, g_{n}\right\}$ be a finite group. Prove that the element $N=g_{1}+g_{2}+\ldots+g_{n}$ is in the center of the group ring $R G$.
-/

theorem Dummit_Foote_exercise_7_2_12 {R G : Type*} [Ring R] [Group G] [Fintype G] :
  ∑ g : G, MonoidAlgebra.of R G g ∈ center (MonoidAlgebra R G) := by
  sorry
