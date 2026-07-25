import Mathlib

open Fintype Complex Polynomial LinearMap FiniteDimensional Module Module.End
open scoped BigOperators InnerProductSpace

/-Informal Statement

Suppose $\left(e_{1}, \ldots, e_{m}\right)$ is an orthonormal list of vectors in $V$. Let $v \in V$. Prove that $\|v\|^{2}=\left|\left\langle v, e_{1}\right\rangle\right|^{2}+\cdots+\left|\left\langle v, e_{m}\right\rangle\right|^{2}$ if and only if $v \in \operatorname{span}\left(e_{1}, \ldots, e_{m}\right)$.
-/

theorem Axler_exercise_6_13 {V : Type*} [NormedAddCommGroup V] [InnerProductSpace ℂ V] {n : ℕ}
  {e : Fin n → V} (he : Orthonormal ℂ e) (v : V) :
  ‖v‖^2 = ∑ i : Fin n, ‖⟪v, e i⟫_ℂ‖^2 ↔ v ∈ Submodule.span ℂ (e '' Set.univ) := by
  sorry
