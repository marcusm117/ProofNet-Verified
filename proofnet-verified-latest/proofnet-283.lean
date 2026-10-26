import Mathlib

open Real
open scoped BigOperators


/--
This technical lemma isolates two distinct factors in the factorial product so that we can
force a desired divisor `N`.  It will be used repeatedly in the main argument.
-/
private lemma dvd_factorial_from_two_factors {N a b : ℕ}
    (hN : 1 ≤ N) (ha_pos : 1 ≤ a) (ha_lt : a < N)
    (hb_pos : 1 ≤ b) (hb_lt : b < N)
    (hneq : a ≠ b) (hdiv : N ∣ a * b) :
    N ∣ Nat.factorial (N - 1) := by
  classical
  -- Step 1: rewrite the factorial as a product over the interval `[1, N)` so it is easy
  -- to remove concrete factors.
  have hfact : Nat.factorial (N - 1) = ∏ x ∈ Finset.Ico 1 N, x := by
    simpa [Nat.sub_add_cancel hN, Nat.succ_eq_add_one]
      using (Finset.prod_Ico_id_eq_factorial (N - 1)).symm
  -- Step 2: record that `a` and `b` live inside this interval.
  set s := Finset.Ico 1 N with hs_def
  have ha_mem : a ∈ s := by
    simpa [s] using Finset.mem_Ico.mpr ⟨ha_pos, ha_lt⟩
  have hb_mem : b ∈ s := by
    simpa [s] using Finset.mem_Ico.mpr ⟨hb_pos, hb_lt⟩
  have hb_mem' : b ∈ s.erase a := by
    refine Finset.mem_erase.mpr ?_
    exact ⟨hneq.symm, hb_mem⟩
  -- Step 3: successively peel `a` and `b` from the product and record the remaining factor.
  have hprod :
      ∏ x ∈ s, x = a * b * ∏ x ∈ (s.erase a).erase b, x := by
    calc
      ∏ x ∈ s, x
          = a * ∏ x ∈ s.erase a, x := by
              simpa using (Finset.mul_prod_erase s (fun x => x) ha_mem).symm
      _ = a * (b * ∏ x ∈ (s.erase a).erase b, x) := by
              simpa [mul_comm, mul_assoc]
                using congrArg (fun t => a * t)
                  (Finset.mul_prod_erase (s.erase a) (fun x => x) hb_mem').symm
      _ = a * b * ∏ x ∈ (s.erase a).erase b, x := by
              simp [mul_assoc]
  -- Step 4: translate the previous identity into the desired divisibility statement.
  set rest := ∏ x ∈ (s.erase a).erase b, x with hrest_def
  have hfact' : Nat.factorial (N - 1) = (a * b) * rest := by
    have : ∏ x ∈ s, x = a * b * rest := by simpa [rest] using hprod
    simpa [this] using hfact
  obtain ⟨k, hk⟩ := hdiv
  have hmul : N ∣ (a * b) * rest := by
    refine ⟨k * rest, ?_⟩
    simp [hk, mul_assoc]
  simpa [hfact'] using hmul


/-Informal Statement

If $n$ is not a prime, show that $(n-1) ! \equiv 0(n)$, except when $n=4$.
-/

theorem Ireland_Rosen_exercise_3_10 {n : ℕ+} (hn0 : ¬ n.Prime) :
  Nat.factorial (n-1) ≡ 0 [MOD n] ↔ n ≠ 4 := by
  sorry
