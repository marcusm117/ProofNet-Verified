import Mathlib

open Fintype Subgroup Set Polynomial Ideal
open scoped BigOperators



/-Informal Statement

Prove that the multiplicative groups $\mathbb{R}-\{0\}$ and $\mathbb{C}-\{0\}$ are not isomorphic.
-/

theorem Dummit_Foote_exercise_1_6_4 :
    IsEmpty (ℝˣ ≃* ℂˣ) := by
  constructor
  intro f
  -- Construct the imaginary unit as a unit of ℂ
  let iu : ℂˣ := ⟨Complex.I, -Complex.I,
    by rw [mul_neg, Complex.I_mul_I, neg_neg],
    by rw [neg_mul, Complex.I_mul_I, neg_neg]⟩
  let x := f.symm iu
  have hfx : f x = iu := f.apply_symm_apply iu
  have hiu_val : (iu : ℂ) = Complex.I := rfl
  -- (iu : ℂ) ^ 2 = -1
  have hiu2 : (iu : ℂ) ^ 2 = -1 := by rw [hiu_val, sq, Complex.I_mul_I]
  -- (iu : ℂ) ^ 4 = 1
  have hiu4 : (iu : ℂ) ^ 4 = 1 := by
    have : (iu : ℂ) ^ 4 = ((iu : ℂ) ^ 2) ^ 2 := by ring
    rw [this, hiu2]; norm_num
  -- x ^ 4 = 1 in ℝˣ
  have hx4 : x ^ 4 = 1 := by
    apply f.injective
    rw [map_pow, hfx, map_one]
    ext
    simpa [Units.val_pow_eq_pow_val] using hiu4
  -- (x : ℝ) ^ 4 = 1
  have hx4v : (x : ℝ) ^ 4 = 1 := by
    have := congr_arg Units.val hx4
    simpa [Units.val_pow_eq_pow_val] using this
  -- (x : ℝ) ^ 2 = 1
  have hx2v : (x : ℝ) ^ 2 = 1 := by
    have h1 := sq_nonneg (x : ℝ)
    have h2 : ((x : ℝ) ^ 2 - 1) * ((x : ℝ) ^ 2 + 1) = 0 := by
      have : ((x : ℝ) ^ 2 - 1) * ((x : ℝ) ^ 2 + 1) = (x : ℝ) ^ 4 - 1 := by ring
      linarith
    rcases mul_eq_zero.mp h2 with h | h <;> linarith
  -- x ^ 2 = 1 in ℝˣ
  have hx2 : x ^ 2 = 1 := by
    ext
    simpa [Units.val_pow_eq_pow_val] using hx2v
  -- Therefore iu ^ 2 = 1 in ℂˣ
  have hiu_sq_one : iu ^ 2 = 1 := by
    have h := congr_arg f hx2
    rw [map_pow, hfx, map_one] at h
    exact h
  -- Extract: (iu : ℂ) ^ 2 = 1
  have hiu2_one : (iu : ℂ) ^ 2 = 1 := by
    have := congr_arg Units.val hiu_sq_one
    simpa [Units.val_pow_eq_pow_val] using this
  -- But (iu : ℂ) ^ 2 = -1, so -1 = 1 in ℂ. Contradiction.
  exact absurd (hiu2.symm.trans hiu2_one) (by norm_num)
