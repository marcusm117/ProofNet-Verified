import Mathlib

open scoped BigOperators


/-Informal Statement

Let $P_n(x)=1+2 x+3 x^2+\cdots+n x^{n-1} .$ Prove that the polynomials $P_j(x)$ and $P_k(x)$ are relatively prime for all positive integers $j$ and $k$ with $j \neq k$.
-/

theorem Putnam_exercise_2014_a5
    (P : ℕ → Polynomial ℚ)
    (hP : ∀ n, P n = ∑ i : Fin n, (↑(i : ℕ) + 1) * Polynomial.X ^ (i : ℕ)) :
    ∀ {j k : ℕ}, 0 < j → 0 < k → j ≠ k → IsCoprime (P j) (P k) := by
  sorry
