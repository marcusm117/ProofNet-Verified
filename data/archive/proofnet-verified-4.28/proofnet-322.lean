import Mathlib

open Filter Real Function Set
open scoped Topology

/-Informal Statement

Give a direct proof that the nested decreasing intersection of nonempty covering compact sets is nonempty.
-/

theorem Pugh_exercise_2_92 {α : Type*} [TopologicalSpace α] [T2Space α]
    {s : ℕ → Set α}
    (hcomp : ∀ i, IsCompact (s i))
    (hne : ∀ i, (s i).Nonempty)
    (hmono : ∀ i, s i ⊇ s (i + 1)) :
    (⋂ i, s i).Nonempty := by
  sorry
