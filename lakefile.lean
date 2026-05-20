import Lake
open Lake DSL

package ProofNetVerified

require mathlib from git
  "https://github.com/leanprover-community/mathlib4.git" @ "v4.28.0"

require Canonical from git
  "https://github.com/chasenorman/CanonicalLean.git" @ "v4.28.0"

require smt from git
  "https://github.com/ufmg-smite/lean-smt.git" @ "f58d19d5d0803fcccb5ccb1b4473774dd2ae9f9a"  -- The commit corresponds to v4.28.0
