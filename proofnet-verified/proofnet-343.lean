import Mathlib

open Topology Filter Real Complex TopologicalSpace Finset
open scoped BigOperators

local notation "limsup" => fun u : ℕ → EReal => Filter.limsup u Filter.atTop

/-Informal Statement

For any two real sequences $\left\{a_{n}\right\},\left\{b_{n}\right\}$, prove that $\limsup _{n \rightarrow \infty}\left(a_{n}+b_{n}\right) \leq \limsup _{n \rightarrow \infty} a_{n}+\limsup _{n \rightarrow \infty} b_{n},$ provided the sum on the right is not of the form $\infty-\infty$.
-/

theorem Rudin_exercise_3_5
    (a b : ℕ → ℝ)
    (h1 : limsup (fun n => (a n : EReal)) ≠ ⊥ ∨ limsup (fun n => (b n : EReal)) ≠ ⊤)
    (h2 : limsup (fun n => (a n : EReal)) ≠ ⊤ ∨ limsup (fun n => (b n : EReal)) ≠ ⊥) :
    limsup (fun n => ((a n + b n : ℝ) : EReal)) ≤
      limsup (fun n => (a n : EReal)) + limsup (fun n => (b n : EReal)) := by
  sorry
