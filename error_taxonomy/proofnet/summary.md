# Error Classification of `proofnet_original-4.28/`

Compared against golden ground truth `proofnet_verified/`.

## Faithfulness Summary

| verdict | count |
|---|---|
| faithful | 163 |
| weaker | 55 |
| stronger | 75 |
| incomparable | 64 |
| nl_ambiguous | 9 |
| nl_wrong | 1 |
| **total** | **367** |

## Error Types (unfaithful only)

| error type | count |
|---|---|
| misunderstanding_of_informal_statement | 94 |
| missing_premise | 30 |
| misunderstanding_of_mathlib | 26 |
| missing_implicit_premise | 18 |
| misunderstanding_of_lean | 10 |
| adding_extra_case | 9 |
| nl_ambiguous | 9 |
| adding_extra_conclusion | 7 |
| nl_wrong | 1 |

## Provability (unfaithful only)

| provability | count |
|---|---|
| true | 99 |
| false | 104 |
| unknown | 1 |

## Unfaithful Entries

- **4** | stronger | provable=true | error=missing_premise
  - The informal statement specifies that V is spanned by a "countably infinite" set, meaning the spanning set S must be both countable AND infinite. The CORRECTED formalization captures this via two hypo

- **9** | weaker | provable=true | error=adding_extra_case
  - The informal statement asserts that for any ideals I, J in a ring R and any x ∈ I ∩ J, the image of x in R/IJ is nilpotent. This is true in any commutative ring, since x ∈ I ∩ J implies x·x ∈ I·J, so 

- **11** | incomparable | provable=false | error=misunderstanding_of_informal_statement
  - The informal statement asks about irreducibility of x^3 + 6x + 12 over ℚ. The CORRECTED formalization uses Polynomial ℚ, which is faithful. The ORIGINAL formalization replaces ℚ with a finite field F 

- **12** | incomparable | provable=true | error=misunderstanding_of_informal_statement
  - The informal statement asks for irreducibility of X^2+1 in F_7. The CORRECTED formalization correctly uses card F = 7 and X^2 + 1. The ORIGINAL formalization completely changes the theorem: it uses ca

- **13** | stronger | provable=false | error=missing_implicit_premise
  - The original formalization omits the hypothesis `n > 0` that is present in the corrected version. When n = 0, the polynomial X^n - p = X^0 - p = 1 - p. Since p is prime (p ≥ 2), 1 - p is a nonzero rat

- **14** | stronger | provable=false | error=missing_implicit_premise
  - The ORIGINAL formalization omits the premise `1 ≤ r` that the CORRECTED version includes. The informal statement ("if a prime integer p has the form 2^r+1") classically assumes r ≥ 1 as an implicit pr

- **18** | incomparable | provable=false | error=misunderstanding_of_mathlib
  - The informal statement: for p ∈ ℂ[X] of degree m, p has m distinct roots iff p and p' share no common roots. The CORRECTED version properly expresses this: card(p.rootSet ℂ) = m ↔ Disjoint(p.rootSet ℂ

- **19** | stronger | provable=false | error=misunderstanding_of_informal_statement
  - The informal statement asks to prove that null(T-λI) is *invariant* under S, meaning S(W) ⊆ W (the standard definition of an invariant subspace). The corrected formalization uses `≤` (Submodule contai

- **21** | stronger | provable=true | error=misunderstanding_of_lean
  - The informal statement is a classic, unambiguous linear algebra theorem. The issue in the original is Lean 4 parsing: `∀ v, ∃ c, v ∈ eigenspace S c ↔ ∃ c, v ∈ eigenspace T c` parses as `∀ v, ∃ c, (v ∈

- **22** | weaker | provable=true | error=misunderstanding_of_informal_statement
  - The informal statement is from Axler's "Linear Algebra Done Right" (Exercise 6.2), where $\mathbf{F}$ denotes the scalar field, which may be either $\mathbb{R}$ or $\mathbb{C}$. The CORRECTED formaliz

- **23** | incomparable | provable=false | error=misunderstanding_of_mathlib
  - The informal statement is Axler's complex polarization identity, which is true under Axler's convention (inner product linear in the FIRST slot). Mathlib, however, uses the opposite convention: `⟪r•x,

- **24** | stronger | provable=false | error=missing_implicit_premise
  - The informal statement is from Axler 6.16 and is a classical true result in the standard context (finite-dimensional inner product space, or more generally Hilbert space with closed subspace). The COR

- **25** | weaker | provable=true | error=misunderstanding_of_informal_statement
  - The informal statement is Axler's Exercise 7.6. In Axler's convention, V is a finite-dimensional inner product space over F where F = ℝ or ℂ, so the statement covers both real and complex cases. The c

- **27** | incomparable | provable=false | error=misunderstanding_of_informal_statement
  - The informal statement has structure "(∃ v, ‖v‖=1 ∧ ‖Tv-λv‖<ε) → (∃ eigenvalue close)", matching the CORRECTED version exactly. The ORIGINAL incorrectly moves the existential quantifier outside: "∃ v,

- **29** | stronger | provable=false | error=misunderstanding_of_informal_statement
  - The informal statement asserts that ZMod n, equipped with the specific residue class multiplication, fails to be a group (e.g., because 0 has no multiplicative inverse for n > 1). The corrected formal

- **30** | weaker | provable=true | error=misunderstanding_of_informal_statement
  - The informal statement says "x^2 = 1 if and only if |x| is either 1 or 2", which is a biconditional. The CORRECTED formalization correctly encodes this as `x ^ 2 = 1 ↔ (orderOf x = 1 ∨ orderOf x = 2)`

- **31** | stronger | provable=false | error=misunderstanding_of_informal_statement
  - The informal statement "A iff B iff C" (with A: xy=yx, B: y⁻¹xy=x, C: x⁻¹y⁻¹xy=1) is the standard chained biconditional meaning all three are equivalent, formalized as (A↔B)∧(B↔C), which is the correc

- **34** | stronger | provable=false | error=missing_implicit_premise
  - The informal statement says that for $x$ of infinite order, the powers $x^n$ for $n \in \mathbb{Z}$ are all distinct. This means: for all integers $n \neq m$, $x^n \neq x^m$.

The ORIGINAL formalizati

- **35** | incomparable | provable=false | error=misunderstanding_of_mathlib
  - The informal statement asks about the multiplicative groups ℝ \ {0} and ℂ \ {0}, which is faithfully captured by the corrected version using `ℝˣ` and `ℂˣ` (units of a ring, i.e., nonzero elements with

- **36** | stronger | provable=false | error=misunderstanding_of_lean
  - In Lean 4, `∀` has very low precedence and extends to the right through `↔`. So the ORIGINAL `∀ x y : G, f x * f y = f (x*y) ↔ ∀ x y : G, x*y = y*x` actually parses as `∀ x y : G, (f x * f y = f (x*y)

- **38** | incomparable | provable=false | error=misunderstanding_of_informal_statement
  - The informal statement says "H is generated by the set H-{1}", which means the subgroup closure of H\{1} equals H. The CORRECTED version captures this as `Subgroup.closure ((H : Set G) \ {1}) = H`. Th

- **41** | stronger | provable=true | error=missing_premise
  - The informal statement explicitly says "nonempty collection of normal subgroups". The CORRECTED formalization encodes this via `[Nonempty I]`, while the ORIGINAL omits this hypothesis entirely. This m

- **46** | weaker | provable=true | error=missing_premise
  - The informal statement from Dummit & Foote explicitly asks for a *nontrivial* subgroup $A$ of $H$ with $A \unlhd G$ and $A$ abelian. The CORRECTED formalization captures this with `∃ A ≤ H, A ≠ ⊥ ∧ A.

- **47** | stronger | provable=true | error=missing_implicit_premise
  - The informal statement says G has "composite order n", which by standard mathematical convention means n > 1 and n is not prime. The original formalization only captures "not prime" via `¬ (card G).Pr

- **48** | weaker | provable=true | error=missing_premise
  - The informal statement is Jordan's theorem: any transitive subgroup G of the symmetric group on a finite set A with |A|>1 contains a derangement. The CORRECTED formalization captures this with an expl

- **51** | incomparable | provable=false | error=misunderstanding_of_informal_statement
  - The informal statement asserts: if P is a Sylow p-subgroup of G and H ⊇ P is a subgroup of G, then P is a Sylow p-subgroup of H (i.e., P is a p-group and maximal among p-subgroups of H). The CORRECTED

- **52** | weaker | provable=true | error=misunderstanding_of_informal_statement
  - The informal statement asks for a normal Sylow p-subgroup "for some prime p dividing its order" — the primality and divisibility of p are explicit constraints. The ORIGINAL formalization states `∃ (p 

- **53** | weaker | provable=true | error=misunderstanding_of_informal_statement
  - The informal statement asks to prove G has a NORMAL Sylow subgroup for p, q, or r. The corrected version faithfully captures this as `(∃ (P : Sylow p G), P.Normal) ∨ ...`. The original formalization i

- **57** | weaker | provable=true | error=misunderstanding_of_mathlib
  - The informal statement asks to prove that a group G of order 105 with a normal Sylow 3-subgroup is abelian — i.e., the given group's multiplication is commutative. The corrected formalization correctl

- **59** | stronger | provable=true | error=missing_premise
  - The informal statement specifies an "integral domain," which by standard mathematical convention (and per Dummit & Foote) is a commutative ring with no zero divisors. The corrected formalization uses 

- **60** | incomparable | provable=true | error=misunderstanding_of_mathlib
  - The informal statement asks to prove that every Boolean ring is commutative — i.e., the given ring's multiplication is commutative. The corrected formalization correctly expresses this as `∀ a b : R, 

- **65** | incomparable | provable=false | error=misunderstanding_of_informal_statement
  - The informal statement asks about Z[i]/(1+i), which is indeed a field of order 2 (isomorphic to F_2). In Mathlib, GaussianInt is defined as Zsqrtd (-1), where the structure has fields `re` (first) and

- **67** | incomparable | provable=true | error=misunderstanding_of_lean
  - The informal statement is a well-known true theorem about polynomials (related to Gauss's lemma). The critical difference between ORIGINAL and CORRECTED is in the hypothesis: ORIGINAL has `(f*g).coeff

- **71** | weaker | provable=true | error=misunderstanding_of_mathlib
  - The informal statement asks to prove that a group of order 5 is abelian — i.e., the given group's multiplication is commutative. The corrected formalization correctly expresses this as `∀ a b : G, a*b

- **72** | weaker | provable=true | error=missing_premise
  - The informal statement asserts: "there is an integer m > 0 such that a^m = e for all a ∈ G". The original formalization drops the explicit constraint `m > 0` from the existential, asserting only `∃ (m

- **73** | weaker | provable=true | error=misunderstanding_of_mathlib
  - The informal statement asks to prove that a group G satisfying (ab)^3 = a^3 b^3 and (ab)^5 = a^5 b^5 is abelian — i.e., the given group's multiplication is commutative. The corrected formalization cor

- **74** | stronger | provable=false | error=misunderstanding_of_lean
  - The informal statement is a classical, unambiguous result from Herstein: for any group G and a,x ∈ G, the centralizer of x⁻¹ax equals x⁻¹C(a)x.

The ORIGINAL formalization has `{G : Type*} [Mul G] [Gr

- **77** | incomparable | provable=true | error=misunderstanding_of_mathlib
  - The informal statement "If G is a nonabelian group of order 6, then G ≃ S_3" is a true and unambiguous classical result. The original formalization has a critical error in encoding "nonabelian": it us

- **80** | weaker | provable=true | error=misunderstanding_of_mathlib
  - The informal statement "any two nonabelian groups of order 21 are isomorphic" is a true and unambiguous theorem (the unique nonabelian group of order 21 is ℤ/7 ⋊ ℤ/3). The original formalization misus

- **85** | weaker | provable=true | error=misunderstanding_of_mathlib
  - The informal statement asks to prove the given ring R is commutative. The corrected formalization correctly expresses this as `∀ x y : R, x * y = y * x` — a property of the existing [Ring R]'s multipl

- **86** | weaker | provable=true | error=misunderstanding_of_informal_statement
  - The informal statement is Wolstenholme-type: for an odd prime p, if a/b = 1 + 1/2 + ... + 1/(p-1) (a universal claim over all integer representations), then p divides a. The CORRECTED formalization us

- **87** | stronger | provable=false | error=misunderstanding_of_mathlib
  - The informal statement (from Herstein's book) concerns two-sided ideals in M_2(ℝ), which is the standard meaning of "ideal" in classical non-commutative ring theory. M_2(ℝ) is a simple ring, so this c

- **88** | incomparable | provable=false | error=misunderstanding_of_informal_statement
  - The informal statement asks to show that F[x]/(q(x)) is a field with p^n elements. The CORRECTED version correctly claims `IsField (Polynomial (ZMod p) ⧸ span {q})` — the quotient is a field. The ORIG

- **89** | incomparable | provable=false | error=misunderstanding_of_informal_statement
  - The informal statement asks to show that q(x) = 1 + x + x² + ... + x^(p-1) is irreducible in ℚ[x] when p is prime — this is the classical irreducibility of the p-th cyclotomic polynomial Φ_p, which is

- **91** | stronger | provable=false | error=missing_premise
  - The informal statement says "finite number of proper subspaces." The corrected formalization encodes this with `[Finite ι]`. The original formalization drops this premise, making the claim apply to ar

- **96** | weaker | provable=true | error=missing_implicit_premise
  - The informal statement concerns the von Mangoldt function Λ(n), a standard number-theoretic construct where "power of p" conventionally means p^k with k ≥ 1. The identity Λ(n) = ∑_{d|n} μ(n/d) log d i

- **100** | weaker | provable=true | error=misunderstanding_of_mathlib
  - The informal statement is a well-known number theory theorem. The corrected version formalizes it as `IsPrimitiveRoot a (p-1) ↔ IsPrimitiveRoot (-a) ((p-1)/2)` on `(ZMod p)ˣ`, meaning "a has order p-1

- **101** | incomparable | provable=false | error=misunderstanding_of_informal_statement
  - The original has multiple severe errors: (1) The exponent on the RHS is wrong — it uses `a^(p-1)` instead of `a^((p-1)/q)`, completely dropping the division by q. (2) `IsPrimitiveRoot a p` is used, bu

- **102** | stronger | provable=false | error=misunderstanding_of_mathlib
  - The informal statement conventionally refers to positive prime divisors, and the claim is a classical true result. The CORRECTED version uses `p : ℕ` with `Nat.Prime p`, faithfully capturing this. The

- **104** | incomparable | provable=false | error=misunderstanding_of_informal_statement
  - The informal statement is the classic Ramanujan taxicab result: 1729 = 1³+12³ = 9³+10³ is the smallest positive integer expressible as a sum of two (different) positive integer cubes in two ways. The 

- **107** | incomparable | provable=true | error=misunderstanding_of_informal_statement
  - The informal statement asks for the unique SMALLEST topology containing all T_α. In the subset ordering on Set (Set X), "smallest" means T' ⊆ T'' for any other topology T'' containing the family. The 

- **108** | incomparable | provable=true | error=misunderstanding_of_informal_statement
  - Two issues make the original incomparable to the informal statement. (1) Hypotheses: the original assumes `[TopologicalSpace X]` and `IsTopologicalBasis A` — meaning A is a basis for an already-given 

- **109** | incomparable | provable=false | error=misunderstanding_of_lean
  - The informal statement is the classical Munkres Exercise 13.6: the lower-limit topology Rl and K-topology (with K = {1/n : n ≥ 1} per Munkres) on ℝ are not comparable. This is true and unambiguous.

K

- **110** | incomparable | provable=true | error=misunderstanding_of_informal_statement
  - The informal statement is Munkres 13.8(b) about the collection of rational OPEN intervals $(a,b)$ (i.e., `Ioo`), which is what the CORRECTED version uses. The ORIGINAL instead uses `Ico ↑a ↑b` (half-o

- **114** | weaker | provable=true | error=misunderstanding_of_informal_statement
  - The informal statement from Munkres 19.6a concerns a general product space $\prod X_\alpha$ indexed by an arbitrary (possibly infinite) index set. The corrected formalization uses `{ι : Type*} {f : ι 

- **119** | stronger | provable=true | error=misunderstanding_of_informal_statement
  - The informal statement says: if X is an infinite set, then (the whole space) X is connected in the cofinite topology. The corrected formalization captures this as `[Infinite X] → IsConnected (Set.univ

- **120** | stronger | provable=true | error=misunderstanding_of_informal_statement
  - The informal statement is clear and mathematically true: X, Y connected topological spaces, A ⊊ X, B ⊊ Y implies (X×Y)\(A×B) is connected. The CORRECTED formalization directly encodes this via univ se

- **121** | incomparable | provable=false | error=misunderstanding_of_informal_statement
  - The informal statement concerns $S^1$, the unit circle, which lives in $\mathbb{R}^2 \cong \mathbb{C}$. The corrected formalization correctly uses `Metric.sphere (0 : ℂ) 1 : Set ℂ`. The original uses 

- **123** | stronger | provable=false | error=missing_implicit_premise
  - The informal statement from Munkres is a standard theorem about nested closed connected subsets in a compact Hausdorff space. In standard mathematical convention, "Let 𝒜 be a collection..." carries an

- **125** | stronger | provable=false | error=misunderstanding_of_informal_statement
  - The informal statement uses C_1 ⊃ C_2 ⊃ ..., which denotes a descending nested sequence (C_{n+1} ⊆ C_n). The CORRECTED formalization correctly encodes this as `C (n + 1) ⊆ C n`. The ORIGINAL uses `C n

- **127** | weaker | provable=true | error=misunderstanding_of_lean
  - The only difference between ORIGINAL and CORRECTED is that the hypothesis `hx` uses `U ⊂ K` (strict subset) in the ORIGINAL versus `U ⊆ K` (non-strict subset) in the CORRECTED. I verified in Mathlib's

- **128** | stronger | provable=false | error=missing_premise
  - The informal statement asserts that every collection of disjoint OPEN sets in X is countable when X has a countable dense subset. The corrected formalization includes the hypothesis `hUopen : ∀ (u : S

- **131** | nl_ambiguous | provable=true | error=nl_ambiguous
  - The original informal statement says 'if ∏ X_α is regular, then so is X_α' — but 'regular' in topology is ambiguous: it can mean just the separation property (for any point and closed set not containi

- **133** | stronger | provable=false | error=missing_implicit_premise
  - The informal statement is mathematically true with the implicit premise that A and B are nonempty (since "f(A) = {0}" as set equality requires A to be nonempty, as f(∅) = ∅ ≠ {0}). The ORIGINAL formal

- **134** | nl_ambiguous | provable=true | error=nl_ambiguous
  - The informal statement asks to prove IsConnected X ↔ IsConnected (StoneCech X) under the assumption that X is completely regular (separation axiom only, not T₁). The CORRECTED version properly uses Ma

- **135** | weaker | provable=true | error=misunderstanding_of_informal_statement
  - The informal statement says "Let $(p_n)$ be a sequence" without specifying the codomain, and asks to show that limits are preserved under rearrangement by an injection. The CORRECTED formalization enc

- **137** | weaker | provable=true | error=misunderstanding_of_informal_statement
  - The informal statement is a classical true result: any norm on R^m yields a compact closed unit ball (all norms on finite-dim R-spaces are equivalent, so the closed ball is compact). The corrected for

- **138** | stronger | provable=false | error=adding_extra_case
  - The informal statement asks for a counterexample: exhibit a connected set S whose interior is disconnected (classically in ℝ²). The corrected formalization fixes S : Set (ℝ × ℝ), providing such a coun

- **139** | weaker | provable=true | error=misunderstanding_of_informal_statement
  - The informal statement asks to show that an uncountable subset E ⊂ ℝ has a *condensation point* — a point p such that every neighborhood of p meets E in an UNCOUNTABLE set (the corrected formalization

- **140** | nl_ambiguous | provable=true | error=nl_ambiguous
  - The original informal statement says 'Prove that √(n+1) − √n → 0 as n → ∞' without specifying whether n ranges over ℕ or ℝ. The corrected NL adds 'the real function' to clarify n ∈ ℝ. The original for

- **141** | incomparable | provable=false | error=misunderstanding_of_informal_statement
  - The informal statement claims the SERIES $\sum 1/(k(\log k)^p)$ diverges for $p \leq 1$, which is a well-known true result (Cauchy condensation). The CORRECTED formalization uses `¬ Summable f`, corre

- **144** | stronger | provable=true | error=missing_premise
  - The informal statement says "for each positive integer n", so the corrected formalization includes `hn : n > 0`. The ORIGINAL drops this hypothesis, quantifying over all natural numbers including n=0.

- **147** | incomparable | provable=true | error=misunderstanding_of_informal_statement
  - The informal statement says |z_j| = 1 (unit circle). The ORIGINAL formalization writes ‖z n‖ < 1 (open unit disk, strict inequality), while the CORRECTED version correctly uses ‖z n‖ = 1. The hypothes

- **148** | stronger | provable=true | error=missing_premise
  - The informal statement explicitly states "$r$ is rational $(r \neq 0)$" — a clear, unambiguous premise that $r$ is a nonzero rational. The ORIGINAL formalization omits the `y ≠ 0` hypothesis that the 

- **150** | incomparable | provable=unknown | error=misunderstanding_of_mathlib
  - The informal statement (for a nonempty set A of reals bounded below, inf A = -sup(-A)) is true and unambiguous. The ORIGINAL uses `Min A = Max minus_A`, but in Lean 4 / Mathlib `Min` and `Max` are typ

- **151** | weaker | provable=true | error=missing_premise
  - The informal statement asserts the existence of r ≥ 0 and w with |w|=1 such that z = rw. The ORIGINAL formalization drops the explicit `r ≥ 0` constraint that is clearly stated in the informal problem

- **155** | stronger | provable=false | error=misunderstanding_of_informal_statement
  - The informal statement is Rudin Exercise 2.24 (Bolzano-Weierstrass property ⇒ separability for metric spaces), which is a well-known true theorem. In Rudin's terminology (Def. 2.18(b)), a "limit point

- **156** | incomparable | provable=true | error=misunderstanding_of_informal_statement
  - The informal statement is a standard Rudin exercise (2.27a) and is true and unambiguous: the set of condensation points of an uncountable subset of R^k is perfect.

The ORIGINAL has multiple serious e

- **157** | weaker | provable=true | error=misunderstanding_of_mathlib
  - The informal statement is the Cantor–Bendixson theorem for separable metric spaces: every closed set is the union of a perfect set and an at-most-countable set. This is true and unambiguous.

The corr

- **158** | nl_ambiguous | provable=true | error=nl_ambiguous
  - The informal statement explicitly specifies "in $\mathbb{C}$", so the sequence $\{s_n\}$ should be complex-valued. The CORRECTED formalization correctly uses `f : ℕ → ℂ` with norm `‖f n‖` and a real l

- **161** | weaker | provable=true | error=misunderstanding_of_informal_statement
  - The informal statement says "{b_n} is monotonic and bounded". In standard mathematical analysis (and specifically in Rudin's usage), "monotonic" means either monotonically increasing OR monotonically 

- **162** | nl_ambiguous | provable=false | error=nl_ambiguous
  - The informal statement (Rudin 3.20) concerns a subsequence {p_{n_l}}, where n_l denotes a strictly increasing index function and l is the running index. The corrected formalization encodes this correc

- **163** | stronger | provable=false | error=missing_premise
  - The informal statement explicitly says "X is a nonempty complete metric space." The original formalization omits the `[Nonempty X]` typeclass, while the corrected version includes it. Without nonempti

- **168** | nl_wrong | provable=false | error=nl_wrong
  - The informal statement is Rudin 4.8(a): if E ⊆ ℝ is bounded and f is uniformly continuous on E, then f is bounded on E. This is a true, unambiguous mathematical claim.

The CORRECTED formalization cap

- **170** | stronger | provable=false | error=missing_premise
  - The informal IVP condition "if f(a) < c < f(b), then f(x)=c for some x between a and b" is conventionally symmetric under swapping a and b (since "between a and b" is unordered). The CORRECTED formali

- **171** | weaker | provable=true | error=adding_extra_case
  - The informal statement says f is continuous on (a, b) — its domain is the open interval. The CORRECTED version encodes this as `ContinuousOn f (Set.Ioo a b)`. The ORIGINAL uses `Continuous f`, which r

- **172** | incomparable | provable=false | error=misunderstanding_of_mathlib
  - The original has multiple serious errors. Most critically, `g = f⁻¹` in Lean for `f : ℝ → ℝ` uses `Pi.instInv` (pointwise reciprocal): `(f⁻¹) x = (f x)⁻¹ = 1/f(x)`, NOT the function inverse as intende

- **173** | nl_ambiguous | provable=true | error=nl_ambiguous
  - The informal statement (Rudin Exercise 5.4) asks for a real root STRICTLY between 0 and 1, i.e., in the open interval (0, 1). The CORRECTED formalization uses `Set.Ioo (0:ℝ) 1` which matches this. The

- **174** | weaker | provable=true | error=adding_extra_case
  - The informal statement restricts the hypotheses to specific domains: (a) continuity on [0,∞), (b) differentiability on (0,∞), (d) derivative monotone on (0,∞). The CORRECTED formalization faithfully c

- **175** | incomparable | provable=false | error=missing_implicit_premise
  - The informal statement is the classical Landau-Kolmogorov inequality, which is mathematically true and unambiguous given the implicit premise that the least upper bounds exist (i.e., |f|, |f'|, |f''| 

- **176** | stronger | provable=false | error=missing_implicit_premise
  - The informal statement (Shakarchi Exercise 1.13a) is a classical complex analysis result that implicitly assumes Ω is a domain (connected open set). Without connectedness, the result is mathematically

- **177** | stronger | provable=false | error=missing_implicit_premise
  - The informal statement (from Shakarchi's Complex Analysis) asserts that a holomorphic function on an open set Ω with constant modulus is constant. The classical result requires Ω to be connected; in S

- **178** | incomparable | provable=false | error=misunderstanding_of_informal_statement
  - The informal statement asks about ∑ z^n/n^2 on the unit circle, which converges by Weierstrass M-test. The CORRECTED version correctly encodes this as `z ^ (i + 1) / (i + 1) ^ 2`. The ORIGINAL encodes

- **179** | stronger | provable=false | error=adding_extra_conclusion
  - The informal statement asks to prove that two primitives F₁, F₂ of f on a region Ω differ by a constant (implicitly, on Ω, which is where primitives are defined). The corrected formalization reflects 

- **180** | stronger | provable=false | error=missing_premise
  - The informal statement explicitly requires $\varphi: \Omega \to \Omega$ (i.e., $\varphi$ maps $\Omega$ into itself), which is encoded in the CORRECTED version as `h_maps : Set.MapsTo f Ω Ω`. The ORIGI

- **185** | weaker | provable=true | error=misunderstanding_of_mathlib
  - The informal statement "the center of the product of two groups is the product of their centers" is a classical, true, and unambiguous group-theoretic fact. The canonical Mathlib formulation (as seen 

- **187** | incomparable | provable=false | error=misunderstanding_of_informal_statement
  - The informal statement is a classical result: over an infinite field, a vector space cannot be written as a finite union of proper subspaces. The corrected formalization correctly uses ⋃ (union) and i

- **191** | weaker | provable=true | error=adding_extra_case
  - The informal statement asks to prove IJ = I ∩ J for ideals I, J of a ring R (interpreted as a commutative ring in Artin's textbook context) such that I + J = R. The corrected formalization uses `[Comm

- **194** | incomparable | provable=true | error=misunderstanding_of_informal_statement
  - The informal statement asks to prove that x^2 + x + 1 is irreducible over F_2. The CORRECTED formalization uses `card F = 2` and the polynomial `X^2 + X + 1`. The ORIGINAL uses `card F = 7` and the po

- **198** | incomparable | provable=false | error=misunderstanding_of_informal_statement
  - The informal statement asks to show that ω = (-1 + √3 i)/2 is a cube root of unity, i.e., ω³ = 1. Indeed, ω = e^(2πi/3) since |ω| = 1 and arg(ω) = 2π/3, so ω³ = e^(2πi) = 1. The corrected formalizatio

- **199** | stronger | provable=true | error=adding_extra_conclusion
  - The informal statement says "if av = 0, then a = 0 or v = 0" — this is an implication (→). The CORRECTED version correctly uses `→`. The ORIGINAL uses `↔` (biconditional), which additionally asserts t

- **200** | weaker | provable=true | error=misunderstanding_of_informal_statement
  - The informal statement is Axler Exercise 1.C.9, a true and unambiguous claim about UNIONS of subspaces. The CORRECTED formalization correctly states: (∃ U', U'.carrier = ↑U ∪ ↑W) ↔ (U ≤ W ∨ W ≤ U). Th

- **201** | stronger | provable=true | error=missing_premise
  - The only difference between the two formalizations is the `[FiniteDimensional F V]` hypothesis, which is present in the corrected version but missing in the original. The informal statement explicitly

- **202** | incomparable | provable=true | error=misunderstanding_of_informal_statement
  - The informal statement uses the standard Axler convention: a subspace U is invariant under T if T(U) ⊆ U (i.e., u ∈ U implies Tu ∈ U). The CORRECTED formalization correctly uses `Submodule.map T (U i)

- **203** | stronger | provable=false | error=missing_implicit_premise
  - The informal statement is from Axler's "Linear Algebra Done Right" Exercise 5.11, where the book-wide context implicitly assumes V is finite-dimensional. Under that implicit assumption the statement i

- **204** | weaker | provable=true | error=misunderstanding_of_informal_statement
  - The informal statement says "every subspace of V with dimension dim V - 1 is invariant under T." The standard meaning of "U is invariant under T" is T(U) ⊆ U (encoded in Mathlib as `Submodule.map T U 

- **205** | weaker | provable=true | error=misunderstanding_of_informal_statement
  - The informal statement says "every subspace of V invariant under T has even dimension." The standard mathematical meaning of "T-invariant" is T(U) ⊆ U. The CORRECTED formalization uses `Submodule.map 

- **206** | incomparable | provable=false | error=misunderstanding_of_informal_statement
  - The informal statement uses 1-indexed sums (j=1 to n), so j takes values 1, 2, ..., n. This is a well-known Cauchy-Schwarz-like inequality that is true. The corrected formalization properly handles th

- **207** | weaker | provable=true | error=misunderstanding_of_informal_statement
  - The informal statement is Axler's Exercise 6.13, where Axler uses F throughout to denote either ℝ or ℂ, and Chapter 6 applies to both real and complex inner product spaces. The expression |⟨v, eᵢ⟩|² i

- **208** | weaker | provable=true | error=misunderstanding_of_informal_statement
  - In Axler's "Linear Algebra Done Right", Chapter 7 defines inner product spaces over F = ℝ or ℂ. The informal statement, which does not specify a field, therefore refers to V over either ℝ or ℂ (captur

- **212** | weaker | provable=true | error=misunderstanding_of_informal_statement
  - The informal statement asks for associativity of multiplication in ZMod n. The corrected formalization captures this directly with `∀ (a b c : ZMod n), (a*b)*c = a*(b*c)`. The original instead states 

- **214** | stronger | provable=true | error=missing_premise
  - The informal statement explicitly says "for some positive integer n", so positivity of n is an explicit premise. The ORIGINAL uses `n : ℕ` (allowing n = 0), while the CORRECTED uses `n : ℕ+` (positive

- **217** | stronger | provable=false | error=misunderstanding_of_lean
  - Due to Lean 4's parsing rule (∀ extends as far right as possible), the ORIGINAL `∀ x y : A × B, x*y = y*x ↔ ...` parses as `∀ x y : A × B, (x*y = y*x ↔ ...)`, which places the ↔ inside the ∀ binder. T

- **219** | stronger | provable=true | error=adding_extra_conclusion
  - The informal statement asks to prove A × B ≅ B × A for groups A and B, which is a true, unambiguous, well-known fact (provable via MulEquiv.prodComm in Mathlib). The original formalization declares `i

- **220** | stronger | provable=false | error=misunderstanding_of_informal_statement
  - The informal statement says "σ(g) = g if and only if g = 1" and requires G to be finite. The original formalization has two errors: (1) it omits the `[Finite G]` instance, and (2) it encodes the fixed

- **221** | stronger | provable=false | error=missing_premise
  - The informal statement says: for a subgroup H of (ℚ,+) such that 1/x ∈ H for every nonzero x ∈ H, we have H = {0} or H = ℚ. This is a true, classical result.

The ORIGINAL formalization puts {x : ℚ} a

- **222** | stronger | provable=false | error=missing_premise
  - The informal statement explicitly requires G to be a finite group. The ORIGINAL formalization drops the `[Fintype G]` instance that appears in the CORRECTED version. This makes the original's claim ST

- **223** | incomparable | provable=false | error=misunderstanding_of_informal_statement
  - The original formalization differs from the corrected/informal statement in multiple significant ways: (1) The ∃ quantifier's scope extends past the ↔ in Lean 4, so the original actually asserts "∃ p 

- **226** | weaker | provable=true | error=adding_extra_case
  - The informal statement is the standard Fermat's Little Theorem in the form a^p ≡ a (mod p) for all a ∈ ℤ, which holds without any coprimality assumption. The corrected formalization reflects this exac

- **227** | weaker | provable=true | error=misunderstanding_of_informal_statement
  - The informal statement says "either K ≤ H, or (G = HK and |K:K∩H| = p)". The corrected formalization captures this precisely with `K ≤ H ∨ (H ⊔ K = ⊤ ∧ (K ⊓ H).relIndex K = p)`. The original formaliza

- **230** | weaker | provable=true | error=misunderstanding_of_mathlib
  - The informal statement is the classical Dummit & Foote exercise 4.2.8: if H has finite index n in G, then there exists a normal subgroup K ≤ H with |G:K| ≤ n!. This is true and unambiguous (the classi

- **232** | stronger | provable=false | error=missing_premise
  - The informal statement says "abelian group of order pq". The corrected uses [CommGroup G] as expected. The original uses [Group G], dropping the explicit abelian premise. Without the abelian hypothesi

- **233** | incomparable | provable=false | error=misunderstanding_of_informal_statement
  - The informal statement asks for a normal subgroup that is NOT characteristic (Normal ∧ ¬Characteristic). The CORRECTED version faithfully encodes this. However, the ORIGINAL swaps the two properties, 

- **234** | stronger | provable=false | error=misunderstanding_of_informal_statement
  - The informal statement requires H to be CHARACTERISTIC in K (fixed by all automorphisms of K), not merely NORMAL in K. The ORIGINAL uses `(H.subgroupOf K).Normal` instead of `(H.subgroupOf K).Characte

- **235** | weaker | provable=true | error=missing_premise
  - The informal statement says "a group of order 56 has a normal Sylow p-subgroup for some prime p dividing its order." The CORRECTED formalization captures this with `p.Prime ∧ (p ∣ card G) ∧ P.Normal`.

- **236** | weaker | provable=true | error=misunderstanding_of_mathlib
  - The informal statement requires a normal Sylow p-subgroup for some prime p dividing |G|=351. This is true: 351 = 3^3 · 13, and Sylow's theorems force either the Sylow-13 or Sylow-3 subgroup to be norm

- **237** | weaker | provable=true | error=misunderstanding_of_informal_statement
  - The informal statement requires that G has a *normal* Sylow 5-subgroup and a *normal* Sylow 7-subgroup. The corrected formalization captures this with `(∃ (P : Sylow 5 G), P.Normal) ∧ (∃ (P : Sylow 7 

- **244** | incomparable | provable=false | error=misunderstanding_of_mathlib
  - The informal statement is McCoy's theorem: p(x) is a zero divisor in R[x] iff there exists nonzero b in R with b·p(x) = 0. This is a classical, unambiguous theorem (typically for commutative R, as in 

- **245** | stronger | provable=false | error=adding_extra_conclusion
  - The informal statement says the image of the center of R is "contained in" the center of S, meaning subset (⊆). The CORRECTED formalization uses ⊆, while the ORIGINAL uses ⊂. In Lean 4/Mathlib, ⊂ on S

- **247** | weaker | provable=true | error=misunderstanding_of_informal_statement
  - The informal statement (Dummit & Foote Exercise 8.2.4) asks: if R is a domain satisfying Bezout (h1) and ACCP-style condition—nonzero elements with a_{i+1} | a_i eventually stabilize up to units (h2)—

- **249** | stronger | provable=false | error=adding_extra_case
  - The informal statement is a well-known true claim from Dummit & Foote: for a prime q ≡ 3 (mod 4), ℤ[i]/(q) is a field with q² elements. The CORRECTED formalization directly states IsField and Fintype.

- **250** | incomparable | provable=true | error=misunderstanding_of_informal_statement
  - The informal statement specifies the ring $\mathbb{Z}[x_1, x_2, \ldots]/(x_1 x_2, x_3 x_4, x_5 x_6, \ldots)$ where the generators are **disjoint pairs** of variables: $(x_1,x_2), (x_3,x_4), (x_5,x_6),

- **254** | stronger | provable=false | error=adding_extra_case
  - The informal statement asserts that for all positive integers n (n ∈ ℤ⁺, hence n ≥ 1), ℝⁿ ≅ ℝ as ℚ-vector spaces. This is true since dim_ℚ(ℝ) = 2^ℵ₀ and dim_ℚ(ℝⁿ) = n · 2^ℵ₀ = 2^ℵ₀ for n ≥ 1.

The ORI

- **256** | weaker | provable=true | error=misunderstanding_of_informal_statement
  - The informal statement requires a POSITIVE integer n such that a^n = e. The original formalization uses `∃ (n : ℕ), a ^ n = 1`, but in Lean/Mathlib ℕ includes 0, so this is trivially satisfied by n = 

- **257** | weaker | provable=true | error=misunderstanding_of_informal_statement
  - The informal statement clearly refers to "three consecutive integers", which is the standard Herstein exercise 2.2.3 and is mathematically unambiguous. The ORIGINAL formalization uses `ℕ` (natural num

- **259** | stronger | provable=false | error=missing_implicit_premise
  - The informal statement "If a group G has no proper subgroups, prove that G is cyclic of order p, where p is a prime number" is a standard Herstein exercise whose intended meaning (with implicit nontri

- **262** | weaker | provable=true | error=misunderstanding_of_mathlib
  - The informal statement asks to prove that a group of order 9 is abelian — i.e., the given group's multiplication is commutative. The corrected formalization correctly expresses this as `∀ a b : G, a *

- **263** | stronger | provable=false | error=misunderstanding_of_informal_statement
  - The informal statement specifies "more than three-fourths" (strict inequality). The corrected formalization correctly uses `<` in `(0.75 : ℚ) * card G < card I`. The original uses `≤`, which weakens t

- **264** | stronger | provable=false | error=missing_premise
  - The informal statement says "φ is a homomorphism of G onto G'", where "onto" explicitly means surjective. The corrected formalization includes `hφ : Function.Surjective φ`, matching Mathlib's `Subgrou

- **265** | stronger | provable=false | error=missing_premise
  - The informal statement is the classical result that any two nonabelian groups of order pq (with p > q primes and q | p-1) are isomorphic — true and unambiguous. The ORIGINAL formalization drops severa

- **266** | stronger | provable=false | error=missing_premise
  - The informal statement has three premises: (1) A is a normal subgroup, (2) b has prime order p, (3) b ∉ A, and the conclusion A ∩ ⟨b⟩ = {e}. The ORIGINAL formalization drops the explicit premise b ∉ A

- **268** | weaker | provable=true | error=misunderstanding_of_informal_statement
  - The informal phrase "disturb no common element" means no element is moved by BOTH σ and τ, correctly formalized as ∀ a, ¬(σ a ≠ a ∧ τ a ≠ a) in the corrected version. The original formalization uses a

- **269** | stronger | provable=true | error=misunderstanding_of_lean
  - The informal statement "T is isomorphic to S_3" means "there exists an isomorphism", which the corrected version faithfully encodes as `Nonempty (Equiv.Perm (Fin 3) ≃* Matrix.GeneralLinearGroup (Fin 2

- **270** | incomparable | provable=false | error=misunderstanding_of_informal_statement
  - The informal statement claims $ax + xa$ commutes with $a$, i.e., $a(ax+xa) = (ax+xa)a$, which is true since both sides equal $axa$ when $a^2=0$. The CORRECTED formalization states exactly this: `a * (

- **272** | incomparable | provable=false | error=misunderstanding_of_informal_statement
  - The ORIGINAL formalization has a fundamental structural error. In the informal statement, each element q in the set S should satisfy (or fail to satisfy) the QR property "∃ x, x^2 = q". The CORRECTED 

- **275** | stronger | provable=true | error=missing_premise
  - The informal statement says "any positive integer n". The corrected formalization captures this as `hn : n > 0`. The original drops this hypothesis entirely, allowing n = 0. Regarding the p-hypothesis

- **277** | incomparable | provable=true | error=misunderstanding_of_informal_statement
  - The informal statement is mathematically true and unambiguous: a satisfies a polynomial of degree 5 over ℚ(√2,√5,√7,√11), which has degree at most 2^4=16 over ℚ, giving a total degree bound of 5·16=80

- **278** | stronger | provable=false | error=misunderstanding_of_informal_statement
  - The informal statement "all the roots of x^m - x are distinct" is the standard way to express that the polynomial is separable (has no repeated roots). The corrected formalization captures this via `.

- **279** | incomparable | provable=false | error=misunderstanding_of_informal_statement
  - The informal statement claims $\frac{1}{2}+\frac{1}{3}+\cdots+\frac{1}{n}$ is not an integer (a classical result, true for $n \geq 2$, with that implicit premise).

**Corrected formalization**: Uses `

- **280** | incomparable | provable=false | error=misunderstanding_of_informal_statement
  - The informal statement says "gcd = 1 or 2 depending on whether a is odd or even." While the wording could be read two ways, only one interpretation is mathematically true (odd→2, even→1). The ORIGINAL

- **283** | incomparable | provable=false | error=missing_implicit_premise
  - The informal statement "If n is not a prime, show that (n-1)! ≡ 0 (mod n), except when n=4" is the classical Wilson-type result, true under the standard number-theoretic convention that n is a positiv

- **284** | weaker | provable=true | error=misunderstanding_of_mathlib
  - The informal statement says "a is a primitive root mod p iff -a is a primitive root mod p" when p = 4t+1. A primitive root mod prime p has order p-1 (the order of (ZMod p)^*). Mathlib's `IsPrimitiveRo

- **285** | incomparable | provable=false | error=misunderstanding_of_mathlib
  - The informal statement (a standard exercise from Ireland-Rosen) is true and unambiguous under the standard convention that Fermat primes p = 2^n + 1 have n ≥ 2 (or equivalently p ≥ 5). The ORIGINAL fo

- **286** | incomparable | provable=false | error=misunderstanding_of_informal_statement
  - The informal statement says the sum is ≡ 0 (mod p) when p-1 ∤ k, and ≡ -1 (mod p) when p-1 ∣ k. The ORIGINAL formalization writes `s ≡ 0 [MOD p]` in BOTH branches of the conjunction, effectively claim

- **287** | weaker | provable=true | error=misunderstanding_of_lean
  - The informal statement is a well-known classical result from Ireland-Rosen (Exercise 5.28): for prime p ≡ 1 (mod 4), x^4 ≡ 2 (mod p) is solvable iff p = A^2 + 64B^2. This is unambiguous.

The key diff

- **288** | stronger | provable=false | error=misunderstanding_of_lean
  - The original uses `sin (pi/12)` with `open Real`, but `Real.pi` is `protected`, so `open Real` does NOT bring `pi` into scope. Lean's auto-bound implicit system treats `pi` as a free variable, making 

- **289** | stronger | provable=true | error=misunderstanding_of_informal_statement
  - The informal statement asks to show that T_inf does not need to be a topology, i.e., ∃ X such that T_inf fails to satisfy the topology axioms (contains univ, closed under arbitrary unions, closed unde

- **290** | incomparable | provable=false | error=misunderstanding_of_informal_statement
  - The informal statement asks about unions ($\bigcup$) of topologies not necessarily being a topology. The CORRECTED formalization correctly uses `⋃ i : I, T i` (union). The ORIGINAL uses `⋂ i : I, T i`

- **291** | incomparable | provable=true | error=misunderstanding_of_informal_statement
  - The informal statement asks for the unique LARGEST topology contained in all T_α (the intersection ∩ T_α). The CORRECTED formalization correctly captures this with `T'' ⊆ T'` (T' is the maximum). The 

- **292** | weaker | provable=true | error=misunderstanding_of_informal_statement
  - The ORIGINAL adds `[t : TopologicalSpace X]` and `(hA : t = generateFrom A)` as extra premises not required by the informal statement. The informal says 'if A is a subbasis for a topology on X, then t

- **294** | incomparable | provable=false | error=misunderstanding_of_informal_statement
  - The informal statement is the transitivity of subspace topology: the topology on A (as Set Y, Y as Set X) induced from Y equals the topology induced from X via the composition. The CORRECTED version u

- **295** | stronger | provable=false | error=misunderstanding_of_informal_statement
  - The informal statement asserts that the specific collection of all rational open boxes is a basis for ℝ². The CORRECTED formalization captures this by explicitly constructing the set via Set.image2 ov

- **297** | stronger | provable=false | error=missing_premise
  - The informal statement asserts uniqueness of continuous extensions: if g and g' both extend f continuously from A to closure A (with Y Hausdorff), then g = g' on closure A. The corrected formalization

- **300** | stronger | provable=false | error=adding_extra_conclusion
  - The informal statement is a one-way implication: "if there exists a continuous section f with p∘f = id, then p is a quotient map." The corrected formalization uses → matching this directly. The origin

- **301** | stronger | provable=true | error=misunderstanding_of_informal_statement
  - The informal statement asks to show the restricted map q : A → p(A) is open — the codomain is p(A) with its subspace topology. The corrected formalization uses `Set.MapsTo.restrict p A (p '' A) (Set.m

- **302** | weaker | provable=true | error=misunderstanding_of_informal_statement
  - The informal statement uses $\{A_\alpha\}$ to denote a collection indexed by an arbitrary (unspecified) index set α. The CORRECTED formalization reflects this by introducing a general type `α` and tak

- **305** | stronger | provable=false | error=adding_extra_case
  - The informal statement is the 1D Brouwer fixed point theorem (continuous self-map of [0,1] has a fixed point), which is classically true and unambiguous. The CORRECTED formalization uses `I : Set ℝ :=

- **307** | stronger | provable=false | error=missing_premise
  - The informal statement describes a perfect map, which requires p to be closed, continuous, surjective, with compact fibers. The ORIGINAL formalization omits the `IsClosedMap p` hypothesis that is pres

- **308** | stronger | provable=false | error=misunderstanding_of_mathlib
  - The informal statement (Munkres Thm 28.2) is a well-known true theorem and is unambiguous: for T_1 spaces, countable compactness is equivalent to limit point compactness (every infinite subset has a l

- **309** | weaker | provable=true | error=misunderstanding_of_informal_statement
  - The informal statement asks to show both that f is bijective AND that f is a homeomorphism. In Mathlib, `IsHomeomorph` is defined as the conjunction of `Continuous f`, `IsOpenMap f`, and `Bijective f`

- **310** | incomparable | provable=false | error=misunderstanding_of_mathlib
  - The informal statement (Munkres 29.4) is a standard, true, and unambiguous theorem: [0,1]^ω is not locally compact in the uniform topology (metric ρ(x,y) = sup_n |x_n - y_n|). The CORRECTED version us

- **312** | stronger | provable=false | error=missing_implicit_premise
  - The informal statement is from Munkres Exercise 31.1. In Munkres's convention, "regular" includes T1 (one-point sets closed), and "pair of points" implicitly means distinct points. The informal statem

- **313** | stronger | provable=false | error=missing_implicit_premise
  - The informal statement (Munkres exercise 31.3) concerns the order topology, which in Munkres' textbook is defined on simply (linearly) ordered sets. So the intended premise is LinearOrder, as in the C

- **316** | stronger | provable=false | error=misunderstanding_of_informal_statement
  - The informal statement is a true, standard theorem: every locally compact Hausdorff space is completely regular. Mathlib's `CompletelyRegularSpace` (as confirmed in `Mathlib/Topology/Separation/Comple

- **317** | stronger | provable=true | error=missing_premise
  - The informal statement explicitly says "compact Hausdorff space", establishing Hausdorff as an explicit premise. The CORRECTED formalization includes [T2Space X] as an instance parameter, while the OR

- **318** | stronger | provable=false | error=adding_extra_conclusion
  - The informal statement says f can be uniquely extended to g : closure A → Y. The CORRECTED formalization uses `g : closure A → Y` with explicit uniqueness (∀ g' : closure A → Y extending f, g' = g). T

- **322** | incomparable | provable=false | error=missing_implicit_premise
  - The informal statement is Cantor's intersection theorem for nested decreasing compact sets — a standard true theorem in the implicit T2/metric-space context of Pugh's textbook. The CORRECTED formaliza

- **324** | incomparable | provable=true | error=misunderstanding_of_informal_statement
  - The informal statement asks for convergence of the series ∑ 1/(k·(log k)^p) for p>1, which is the classical summability result. The CORRECTED formalization uses `Summable` with a (k+2) shift to avoid 

- **325** | incomparable | provable=false | error=misunderstanding_of_informal_statement
  - The informal statement is about a single function f : [a,b] → ℝ being uniformly continuous iff it admits a modulus of continuity μ (continuous, strictly increasing, positive-valued, tending to 0 at 0+

- **329** | incomparable | provable=false | error=misunderstanding_of_informal_statement
  - The informal statement defines P_n(x) = 1 + 2x + 3x² + ... + nx^(n-1), i.e., the coefficient of x^i is (i+1) for i = 0, ..., n-1. This is Putnam 2014 A5, a well-known true statement.

The CORRECTED fo

- **330** | weaker | provable=true | error=misunderstanding_of_informal_statement
  - The informal statement asks to show that for an infinitely differentiable f with f(0)=0, f(1)=1, f≥0, there exists a POSITIVE integer n and x ∈ ℝ such that f^(n)(x) < 0 (this is the Putnam 2018 A5 pro

- **331** | incomparable | provable=true | error=missing_premise
  - The original formalization has multiple errors compared to the corrected version: (1) `hx0 : x 0 = a` is wrong — the informal statement clearly says $x_0 = 1$, not $x_0 = a$; (2) the premise `x 2 = a`

- **333** | nl_ambiguous | provable=true | error=nl_ambiguous
  - The informal statement specifies a "total ordered set", which in Mathlib corresponds to `LinearOrder` (which extends `PartialOrder` with the totality axiom `le_total`). The ORIGINAL uses `PartialOrder

- **334** | stronger | provable=false | error=misunderstanding_of_informal_statement
  - The informal statement asks about "ordered field" — meaning there is no linear order on ℂ compatible with its field operations. The CORRECTED formalization captures this correctly via `IsStrictOrdered

- **337** | weaker | provable=true | error=misunderstanding_of_informal_statement
  - The informal statement asserts: for every nonzero x ∈ ℝ, there is no nonzero y with x·y = 0. The corrected formalization captures this with `∀ x, x ≠ 0 → ¬ ∃ y, y ≠ 0 ∧ x*y = 0`. The original, `¬ ∀ x,

- **338** | stronger | provable=true | error=adding_extra_conclusion
  - The informal statement asks to prove that disjoint closed sets A and B in a metric space are "separated" in Rudin's sense (Definition 2.45), meaning A ∩ closure(B) = ∅ and closure(A) ∩ B = ∅. This is 

- **340** | incomparable | provable=false | error=misunderstanding_of_informal_statement
  - The informal statement (Rudin Ex 2.27b) is standard and unambiguous: condensation points are points where every neighborhood contains uncountably many points of E. The corrected version correctly form

- **341** | stronger | provable=false | error=misunderstanding_of_informal_statement
  - The informal statement is Rudin's Exercise 2.29 (every open set in ℝ is a countable disjoint union of segments). In Rudin's context, "segments" must be allowed to include unbounded intervals like (-∞,

- **342** | nl_ambiguous | provable=true | error=nl_ambiguous
  - The original informal statement says 'Prove that lim_{n→∞} √(n²+n) − n = 1/2' without specifying the domain of n. The corrected NL adds 'for the real function f(n) = √(n²+n) − n' to clarify n ∈ ℝ. Wit

- **343** | incomparable | provable=false | error=misunderstanding_of_mathlib
  - The informal statement (Rudin Ex. 3.5) is a standard and correct claim about limsup in extended reals: limsup(a_n+b_n) ≤ limsup a_n + limsup b_n, provided the RHS is not ∞−∞. The corrected formalizati

- **344** | incomparable | provable=true | error=misunderstanding_of_informal_statement
  - The informal statement asserts that if a_n ≥ 0 and Σa_n converges, then Σ √(a_n)/n converges. The CORRECTED formalization faithfully encodes this as the series Σ_{i∈range n} sqrt(a i)/(i+1) with the n

- **345** | incomparable | provable=false | error=misunderstanding_of_informal_statement
  - The informal statement is the classical theorem that the Cauchy product of two absolutely convergent series is absolutely convergent — true and unambiguous. The CORRECTED formalization expresses this 

- **346** | incomparable | provable=false | error=missing_premise
  - The informal statement (Rudin Exercise 3.21) is a classical true theorem requiring closed, nonempty, bounded sets in a complete metric space, nested, with diameter tending to 0. The ORIGINAL formaliza

- **349** | nl_ambiguous | provable=true | error=nl_ambiguous
  - The formal statements are identical between original and corrected. The only difference is in the informal comment: the original says 'let $E$ be a dense subset' but then refers to '$p \in P$' — incon

- **353** | stronger | provable=false | error=misunderstanding_of_informal_statement
  - The informal statement says "every continuous open mapping of R^1 into R^1 is monotonic." In standard mathematical usage, "monotonic" means either monotone increasing or monotone decreasing. The corre

- **354** | weaker | provable=true | error=misunderstanding_of_informal_statement
  - The informal statement explicitly says 'd(p, q) > δ' (strict inequality). The corrected formalization uses `dist p q > δ`, matching exactly. The original uses `dist p q ≥ δ` (non-strict), which is a w

- **356** | weaker | provable=true | error=misunderstanding_of_informal_statement
  - The informal statement asserts that for some positive threshold of ε, f(x) = x + εg(x) is injective. The corrected formalization properly encodes this with `∃ N > 0, ∀ ε > 0, ε < N → Function.Injectiv

- **357** | incomparable | provable=false | error=misunderstanding_of_informal_statement
  - The informal statement asks to prove g(x) → 0 as x → +∞. The CORRECTED formalization correctly uses `Tendsto (λ x => f (x + 1) - f x) atTop (𝓝 0)`. The ORIGINAL instead writes `Tendsto (λ x => f (x + 

- **358** | incomparable | provable=false | error=misunderstanding_of_informal_statement
  - The informal statement is L'Hôpital's rule (0/0 form) at point x, which is a true and unambiguous classical result. The original formalization has two significant errors: (1) All hypotheses use the po

- **359** | stronger | provable=false | error=missing_premise
  - The ORIGINAL has `Icc 1 1` (the singleton {1}) in hf'' and hf''' instead of `Icc (-1) 1`. By Mathlib's `DifferentiableWithinAt.singleton`, any function is differentiable within a singleton set, so the

- **360** | stronger | provable=false | error=missing_implicit_premise
  - The informal statement (from Shakarchi's Complex Analysis) implicitly assumes Ω is a region (connected open set), which is the standard convention in complex analysis textbooks when discussing "an ope

- **362** | incomparable | provable=false | error=misunderstanding_of_informal_statement
  - Informal statement: the power series Σ z^n/n converges on the unit circle except at z=1. This is a true, unambiguous classical result (by Dirichlet's/Abel's test).

CORRECTED formalization defines the

- **364** | incomparable | provable=false | error=misunderstanding_of_informal_statement
  - The informal statement is a classic, true, unambiguous result: an entire function whose Taylor expansion at every point has at least one vanishing coefficient must be a polynomial. The corrected versi

- **367** | incomparable | provable=false | error=misunderstanding_of_informal_statement
  - The informal statement is the classical Blaschke condition for bounded holomorphic functions on the unit disc, which is a well-known true theorem. The ORIGINAL contains a critical error: in the conclu
