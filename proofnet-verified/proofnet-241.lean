import Mathlib
import Mathlib.Algebra.Group.Subgroup.Lattice

open Fintype Subgroup Set Polynomial Ideal
open scoped BigOperators



/-Informal Statement

Let $P$ be a normal Sylow $p$-subgroup of $G$ and let $H$ be any subgroup of $G$. Prove that $P \cap H$ is the unique Sylow $p$-subgroup of $H$.
-/

theorem Dummit_Foote_exercise_4_5_33 {G : Type*} [Group G] [Fintype G] {p : ℕ}
  (P : Sylow p G) [hP : P.Normal] (H : Subgroup G) [Fintype H] :
  (∀ R : Sylow p H, R.toSubgroup = (H ⊓ P.toSubgroup).subgroupOf H) ∧
  Nonempty (Sylow p H) := by
  sorry
