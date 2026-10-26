import Mathlib

open Topology Filter Real Complex TopologicalSpace Finset
open scoped BigOperators



/-Informal Statement

If $\left\{E_{n}\right\}$ is a sequence of closed nonempty and bounded sets in a complete metric space $X$, if $E_{n} \supset E_{n+1}$, and if $\lim _{n \rightarrow \infty} \operatorname{diam} E_{n}=0,$ then $\bigcap_{1}^{\infty} E_{n}$ consists of exactly one point.
-/

theorem Rudin_exercise_3_21
  {X : Type*} [MetricSpace X] [CompleteSpace X]
  (E : ℕ → Set X)
  (hEcl : ∀ n, IsClosed (E n))
  (hEne : ∀ n, (E n).Nonempty)
  (hEbdd : ∀ n, Bornology.IsBounded (E n))
  (hE : ∀ n, E n ⊇ E (n + 1))
  (hE' : Tendsto (λ n => Metric.diam (E n)) atTop (𝓝 0)) :
  ∃ a, Set.iInter E = {a} := by
  sorry
