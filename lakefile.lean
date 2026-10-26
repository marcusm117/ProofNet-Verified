import Lake
open Lake DSL

package ProofNetVerified

require mathlib from git
  "https://github.com/leanprover-community/mathlib4.git" @ "v4.34.0"

require Canonical from git
  "https://github.com/chasenorman/CanonicalLean.git" @ "v4.34.0"

require smt from git
  "https://github.com/ufmg-smite/lean-smt.git" @ "2956f2966ff443b27a86fe2a4fb82dc56efafc51"  -- The commit corresponds to v4.34.0
