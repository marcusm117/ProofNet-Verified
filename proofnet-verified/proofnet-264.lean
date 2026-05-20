import Mathlib

open Fintype Set Real Ideal Polynomial
open scoped BigOperators



/-Informal Statement

If $\varphi$ is a homomorphism of $G$ onto $G'$ and $N \triangleleft G$, show that $\varphi(N) \triangleleft G'$.
-/

theorem Herstein_exercise_2_7_7 {G : Type*} [Group G] {G' : Type*} [Group G']
    (φ : G →* G') (hφ : Function.Surjective φ) (N : Subgroup G) [N.Normal] :
    (Subgroup.map φ N).Normal := by
  sorry
