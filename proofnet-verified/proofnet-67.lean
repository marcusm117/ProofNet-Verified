import Mathlib

open Fintype Subgroup Set Polynomial Ideal
open scoped BigOperators



/-Informal Statement

Prove that if $f(x)$ and $g(x)$ are polynomials with rational coefficients whose product $f(x) g(x)$ has integer coefficients, then the product of any coefficient of $g(x)$ with any coefficient of $f(x)$ is an integer.
-/

theorem Dummit_Foote_exercise_9_3_2 {f g : Polynomial ℚ} (i j : ℕ)
    (hfg : ∀ n : ℕ, ∃ a : ℤ, (f * g).coeff n = a) :
    ∃ a : ℤ, f.coeff i * g.coeff j = a := by
    sorry
