import Mathlib

open Filter Set TopologicalSpace
open scoped Topology

def lower_limit_topology (X : Type) [Preorder X] :=
  generateFrom {S : Set X | ∃ a b, a < b ∧ S = Ico a b}

def Rl := lower_limit_topology ℝ

def K : Set ℝ := {r | ∃ n : ℕ, r = 1 / (n + 1 : ℝ)}

def K_topology := generateFrom
  ({S : Set ℝ | ∃ a b, a < b ∧ S = Ioo a b} ∪ {S : Set ℝ | ∃ a b, a < b ∧ S = Ioo a b \ K})

/-Informal Statement

Show that the lower limit topology $\mathbb{R}_l$ and $K$-topology $\mathbb{R}_K$ are not comparable.
-/

theorem Munkres_exercise_13_6 :
  ¬ (∀ U, Rl.IsOpen U → K_topology.IsOpen U) ∧ ¬ (∀ U, K_topology.IsOpen U → Rl.IsOpen U) := by
  sorry
