# Error Classification of ProofNet#

Source: `data/proofnet#/proofnet#.jsonl`, matched to the 367 retained problem indices. Compared against golden ground truth `data/archive/proofnet-verified-4.28/`.

## Faithfulness Summary

| verdict | count |
|---|---|
| faithful | 268 |
| weaker | 19 |
| stronger | 39 |
| incomparable | 32 |
| nl_ambiguous | 8 |
| nl_wrong | 1 |
| **total** | **367** |

## Error Types (unfaithful only)

| error type | count |
|---|---|
| misunderstanding_of_informal_statement | 30 |
| misunderstanding_of_mathlib | 24 |
| missing_implicit_premise | 17 |
| misunderstanding_of_lean | 10 |
| nl_ambiguous | 8 |
| missing_premise | 6 |
| adding_extra_conclusion | 3 |
| nl_mathematically_wrong | 1 |

## Provability (unfaithful only)

| provability | count |
|---|---|
| true | 39 |
| false | 60 |

## Unfaithful Entries

- **4** | stronger | provable=true | error=missing_premise
  - The informal statement specifies that V is spanned by a "countably infinite" set, meaning the spanning set S must be both countable AND infinite. The CORRECTED formalization captures this via two hypo

- **14** | stronger | provable=false | error=missing_implicit_premise
  - 1. negation ✅
2. reasoning ✅
3. correction ✅

Error Type: Implicit Premise
If NL has Implicit Premies: Yes
Implicit Premises: 1 ≤ r
Comment: The NL proof ignores the case when p = 2.

- **18** | incomparable | provable=false | error=misunderstanding_of_mathlib
  - 1. negation ✅
2. reasoning ✅
3. correction ✅

Error Type: Wrong Formalization, Implicit Premise
If NL has Implicit Premies: Yes
Implicit Premises: (hp : p ≠ 0)
Comment: The main flaw of the wrong form

- **19** | stronger | provable=false | error=misunderstanding_of_informal_statement
  - 1. negation ✅
2. reasoning ✅
3. correction ✅

Error Type: Wrong Formalization
If NL has Implicit Premies: No
Implicit Premises: NA
Comment: Wrong notion of invariant. The original took it to mean equa

- **22** | weaker | provable=false | error=misunderstanding_of_lean
  - 1. negation ❌ (missing)
2. reasoning ✅
3. correction  ✅

Error Type: Wrong Formalization, Misunderstanding of Lean 
If NL has Implicit Premies: No
Implicit Premises: NA
Comment: The wrong formalizatio

- **23** | incomparable | provable=false | error=misunderstanding_of_mathlib
  - 1. negation ❌ (missing proof)
2. reasoning ✅
3. correction ✅

Error Type: Wrong Formalization, Misunderstanding of Mathlib  
If NL has Implicit Premies: No
Implicit Premises: NA
Comment: Notational di

- **24** | stronger | provable=false | error=missing_implicit_premise
  - 1. negation ✅
2. reasoning ✅
3. correction ✅

Error Type: Implicit Premise 
If NL has Implicit Premies: Yes
Implicit Premises: [CompleteSpace V] and (hU : IsClosed (U : Set V))
Comment: The NL doesn't

- **29** | stronger | provable=false | error=misunderstanding_of_informal_statement
  - The informal statement asserts that ZMod n, equipped with the specific residue class multiplication, fails to be a group (e.g., because 0 has no multiplicative inverse for n > 1). The corrected formal

- **35** | incomparable | provable=false | error=misunderstanding_of_mathlib
  - 1. negation ✅
2. reasoning ✅
3. correction ✅

Error Type: Wrong Formalization, Misunderstanding of Mathlib  
If NL has Implicit Premies: No
Implicit Premises: NA
Comment:

- **38** | incomparable | provable=false | error=misunderstanding_of_mathlib
  - 1. negation ✅
2. reasoning ✅
3. correction ✅

Error Type: Wrong Formalization, Misunderstanding of Mathlib
If NL has Implicit Premies: No
Implicit Premises: NA
Comment:

- **47** | stronger | provable=true | error=missing_implicit_premise
  - The informal statement says G has "composite order n", which by standard mathematical convention means n > 1 and n is not prime. The original formalization only captures "not prime" via `¬ (card G).Pr

- **48** | weaker | provable=true | error=missing_premise
  - The informal statement is Jordan's theorem: any transitive subgroup G of the symmetric group on a finite set A with |A|>1 contains a derangement. The CORRECTED formalization captures this with an expl

- **65** | incomparable | provable=false | error=misunderstanding_of_lean
  - 1. negation ✅
2. reasoning ✅
3. correction ✅

Error Type: Wrong Formalization, Misunderstanding of Lean  
If NL has Implicit Premies: No
Implicit Premises: NA
Comment:

- **67** | incomparable | provable=true | error=misunderstanding_of_lean
  - Faithfulness is incomparable under the project's logical abstraction, which treats the original whole-function equality (f*g).coeff = a and the corrected pointwise equality (f*g).coeff n = a as unrela

- **74** | stronger | provable=false | error=misunderstanding_of_lean
  - 1. negation ✅
2. reasoning ✅
3. correction ✅

Error Type: Wrong Formalization, Misunderstanding of Lean
If NL has Implicit Premies: No
Implicit Premises: NA
Comment:

- **77** | incomparable | provable=true | error=misunderstanding_of_mathlib
  - OG is different to GT. 

Misunderstanding of Mathlib. 

IsEmpty (CommGroup G) does not mean that is not Abelian, in fact, hG‘ is always false

- **80** | incomparable | provable=true | error=misunderstanding_of_mathlib
  - OG is trivial because hG1 is always false.

- **85** | weaker | provable=true | error=misunderstanding_of_mathlib
  - OG is weaker than GT. 

Misunderstanding of MathLib

The original statement concludes `Nonempty (CommRing R)`, which only asserts the
existence of *some* commutative-ring structure on the underlying t

- **87** | stronger | provable=false | error=misunderstanding_of_mathlib
  - 1. negation ✅
2. reasoning ✅
3. correction ✅

Error Type: Wrong Formalization, Misunderstanding of Mathlib 
If NL has Implicit Premies: No
Implicit Premises: NA
Comment:

- **96** | weaker | provable=true | error=missing_implicit_premise
  - The informal statement concerns the von Mangoldt function Λ(n), a standard number-theoretic construct where "power of p" conventionally means p^k with k ≥ 1. The identity Λ(n) = ∑_{d|n} μ(n/d) log d i

- **100** | weaker | provable=false | error=misunderstanding_of_mathlib
  - 1. negation ✅
2. reasoning ✅
3. correction ✅

Error Type: Wrong Formalization 
If NL has Implicit Premies: Maybe 
Implicit Premises: (a : (ZMod p)ˣ)
Comment: Wrong formalization because IsPrimitiveRoo

- **101** | incomparable | provable=false | error=misunderstanding_of_mathlib
  - 1. negation ✅
2. reasoning ✅
3. correction ✅

Error Type: Wrong Formalization 
If NL has Implicit Premies: Maybe 
Implicit Premises: (a : (ZMod p)ˣ)
Comment: Identical error as 100.

- **102** | stronger | provable=false | error=misunderstanding_of_mathlib
  - The informal statement conventionally refers to positive prime divisors, and the claim is a classical true result. The CORRECTED version uses `p : ℕ` with `Nat.Prime p`, faithfully capturing this. The

- **104** | incomparable | provable=false | error=missing_implicit_premise
  - 1. negation ✅
2. reasoning ✅
3. correction ✅

Error Type: Implicit Premise 
If NL has Implicit Premises: Yes
Implicit Premises: 0 < x ∧ 0 < y ∧ 0 < z ∧ 0 < w 
Comment: There is also wrong formalizatio

- **108** | incomparable | provable=true | error=misunderstanding_of_informal_statement
  - Error Type: Misunderstanding of Informal Math
Relation to GT: incomparable
Note: Trivially true because A is going to be in the intersection

- **110** | stronger | provable=true | error=adding_extra_conclusion
  - (true, stronger, Extra Conclusion)

Mathlib's `IsTopologicalBasis` includes the condition `eq_generateFrom : ‹TopologicalSpace α› =
generateFrom T`, which (since ℝ carries the standard Euclidean topol

- **119** | incomparable | provable=false | error=misunderstanding_of_mathlib
  - 1. negation ✅
2. reasoning ✅
3. correction ❌ 

Error Type: Wrong Formalization
If NL has Implicit Premises: no
Implicit Premises: 
Comment: Doesn't enforce s to have the cofinite topology. Correction

- **120** | stronger | provable=true | error=misunderstanding_of_informal_statement
  - Error Type: Misunderstanding of informal math
Relation to GT: stronger
Comment: The original is any subset while A and B in NL is only a subset of theX and Y.

- **121** | incomparable | provable=false | error=misunderstanding_of_informal_statement
  - The informal statement concerns $S^1$, the unit circle, which lives in $\mathbb{R}^2 \cong \mathbb{C}$. The corrected formalization correctly uses `Metric.sphere (0 : ℂ) 1 : Set ℂ`. The original uses

- **123** | stronger | provable=false | error=missing_implicit_premise
  -  1. negation ✅
2. reasoning ✅
3. correction ❌

Error Type: Implicit premise
If NL has Implicit Premises: Yes
Implicit Premises: (hAne : A.Nonempty)
Comment: The correction incorrectly added the premis

- **131** | nl_ambiguous | provable=true | error=nl_ambiguous
  - NL Ambiguous

RegularSpace: For any closed set s and point a ∉ s, a and s have disjoint           
  neighborhoods. (Bare separation axiom, no T₁.)

- **133** | stronger | provable=false | error=missing_implicit_premise
  -  1. negation ✅
2. reasoning ✅
3. correction ✅

Error Type: Implicit premise
If NL has Implicit Premises: Yes
Implicit Premises:  (hAn : A.Nonempty) (hBn : B.Nonempty)
Comment: A and B needs to be none

- **134** | nl_ambiguous | provable=true | error=nl_ambiguous
  - NL Ambiguous

Munkres: "completely regular" = separation + T1 (= T₃.₅)             
 
Willard, Steen & Seebach, modern conventions, Mathlib: "completely regular" = just the
  separation property

- **137** | weaker | provable=true | error=misunderstanding_of_informal_statement
  - The OG only talks about the L2 norm while the GT is for all norms.

- **138** | stronger | provable=false | error=misunderstanding_of_informal_statement
  -  1. negation ✅
2. reasoning ✅
3. correction ✅

Error Type: Wrong Formalization      If NL has Implicit Premises: No
Implicit Premises:  NA
Comment: NL is quite ambiguous. It should be formalized as th

- **139** | weaker | provable=true | error=misunderstanding_of_informal_statement
  - The informal statement asks to show that an uncountable subset E ⊂ ℝ has a *condensation point* — a point p such that every neighborhood of p meets E in an UNCOUNTABLE set (the corrected formalization

- **140** | nl_ambiguous | provable=true | error=nl_ambiguous
  - NL Ambiguous, \sqrt{n+1}-\sqrt{n} could be sequence or real function

- **141** | incomparable | provable=false | error=misunderstanding_of_informal_statement
  -  1. negation ✅
2. reasoning ✅
3. correction ❌ 



Error Type: Wrong formalization
If NL has Implicit Premises: No
Implicit Premises:  NA
Comment: The wrong formalization talks about each term of the s

- **155** | stronger | provable=false | error=misunderstanding_of_informal_statement
  - The informal statement is Rudin Exercise 2.24 (Bolzano-Weierstrass property ⇒ separability for metric spaces), which is a well-known true theorem. In Rudin's terminology (Def. 2.18(b)), a "limit point

- **158** | nl_ambiguous | provable=true | error=nl_ambiguous
  - NL Ambiguous

the problem itself doesn't say anything about whether we are working with R or C!

- **161** | weaker | provable=true | error=misunderstanding_of_mathlib
  - The Lean Monotone only means monotonically non-decreasing while the GT should be for both positive and negative monotonicity.

- **162** | nl_ambiguous | provable=true | error=nl_ambiguous
  - NL Ambiguous

wrong copy-paste

- **168** | nl_wrong | provable=false | error=nl_mathematically_wrong
  -  1. negation ✅
2. reasoning ✅
3. correction ❌

Error Type: NL Wrong
If NL has Implicit Premises: NA
Implicit Premises:   NA
Comment: NA


wrong copy-paste

- **170** | stronger | provable=false | error=missing_premise
  - The informal IVP condition "if f(a) < c < f(b), then f(x)=c for some x between a and b" is conventionally symmetric under swapping a and b (since "between a and b" is unordered). The CORRECTED formali

- **171** | weaker | provable=true | error=misunderstanding_of_mathlib
  - (true, weaker, Misunderstanding of MathLib)

The original formalization uses `Continuous f` (global continuity on all of ℝ),
but the informal statement (Rudin Exercise 4.24) only assumes f is continuo

- **172** | incomparable | provable=false | error=misunderstanding_of_lean
  -  1. negation ✅
2. reasoning ✅
3. correction ❌

Error Type: Wrong formalization
If NL has Implicit Premises: No
Implicit Premises:   NA
Comment: f^{-1} will be reciprocal rather than the inverse.

- **173** | nl_ambiguous | provable=true | error=nl_ambiguous
  - NL Ambiguous

"between 0 and I" can be Icc or Ioo

- **175** | incomparable | provable=false | error=misunderstanding_of_mathlib
  - 1. negation ✅
2. reasoning ✅
3. correction ❌

Error Type: Implicit Premise & Misunderstanding of Mathlib
If NL has Implicit Premies: Yes
Implicit Premises:  (hbdd0 : BddAbove {(|f x|) | x ∈ (Set.Ioi a

- **176** | stronger | provable=false | error=missing_implicit_premise
  -  1. negation ✅
2. reasoning ✅
3. correction ✅

Error Type: Implicit premise
If NL has Implicit Premises: Yes
Implicit Premises:      (hconn : IsPreconnected Ω)
Comment: NA

- **177** | stronger | provable=false | error=missing_implicit_premise
  -  1. negation ✅
2. reasoning ✅
3. correction ✅

Error Type: Implicit premise
If NL has Implicit Premises: Yes
Implicit Premises:      (hconn : IsPreconnected Ω)
Comment: same as 176

- **179** | stronger | provable=false | error=missing_implicit_premise
  -  1. negation ✅
2. reasoning ✅
3. correction ✅

Error Type: Implicit Premise
If NL has Implicit Premises: Yes
Implicit Premises:  ∀ x ∈ Ω
Comment: Should be ∀ x ∈ Ω instead of C. The statement is talki

- **180** | stronger | provable=false | error=missing_premise
  -  1. negation ✅
2. reasoning ✅
3. correction ❌

Error Type: Wrong formalization
If NL has Implicit Premises: No
Implicit Premises:   NA
Comment: There is a missing premise (h_maps : Set.MapsTo f Ω Ω) b

- **185** | weaker | provable=true | error=misunderstanding_of_mathlib
  -  The Lean formalization, however, uses    
  `Nonempty (center (G × H) ≃* (center G) × (center H))`, which asserts only the    
  existence of an abstract group isomorphism between the two groups. Sub

- **202** | incomparable | provable=true | error=misunderstanding_of_informal_statement
  - Error Type: different from GT
If NL has Implicit Premises: NO
Implicit Premises: 
Comment: invariant under T" means T(U) ⊆ U, not T(U) = U

- **203** | stronger | provable=false | error=missing_implicit_premise
  -  1. negation ✅
2. reasoning ✅
3. correction ✅

Error Type: Implicit Premise
If NL has Implicit Premises: Yes
Implicit Premises:  [FiniteDimensional F V]
Comment: Statement false in infinite dim vector

- **204** | weaker | provable=true | error=misunderstanding_of_informal_statement
  - Error Type: Weaker than GT
If NL has Implicit Premises: NO
Implicit Premises: 
Comment: invariant under T" means T(U) ⊆ U, not T(U) = U

- **205** | incomparable | provable=false | error=misunderstanding_of_lean
  - The original is false because finrank U is partially applied: Module.finrank takes a coefficient ring and a module as explicit type arguments. Here U is incorrectly used as the coefficient-ring type,

- **220** | stronger | provable=false | error=missing_premise
  -  1. negation ✅
2. reasoning ✅
3. correction ✅

Error Type: Wrong formalization
If NL has Implicit Premises: No
Implicit Premises:   NA
Comment: There is a missing premise [Finite G] but it is actually

- **221** | stronger | provable=false | error=misunderstanding_of_lean
  -  1. negation ✅
2. reasoning ✅
3. correction ✅

Error Type: Wrong formalization
If NL has Implicit Premises: No
Implicit Premises:   NA
Comment: There should be a forall in hH.

- **230** | weaker | provable=true | error=misunderstanding_of_mathlib
  - (true, weaker, Misunderstanding of MathLib),

In Mathlib, `Subgroup.index` returns 0 for subgroups of infinite index
(since `Nat.card` of an infinite type is 0). This means any normal subgroup
K ≤ H w

- **244** | incomparable | provable=false | error=misunderstanding_of_mathlib
  -  1. negation ✅
2. reasoning ✅
3. correction ❌

Error Type: Wrong formalization
If NL has Implicit Premises: No
Implicit Premises:   NA
Comment: Wrong definition of no zero divisor. Also does not show

- **249** | stronger | provable=false | error=misunderstanding_of_lean
  -  1. negation ❌
2. reasoning ✅
3. correction ✅

Error Type: Wrong formalization
If NL has Implicit Premises: No
Implicit Premises:   NA
Comment: The propositional equality doesnt give R a quotient stru

- **257** | weaker | provable=true | error=misunderstanding_of_informal_statement
  - Error Type : Misunderstanding of informal math
Truth value: True
Relation to GT: weaker
The OG only discusses this for natural while GT is for the integers.

- **259** | stronger | provable=false | error=missing_implicit_premise
  -  1. negation ✅
2. reasoning ✅
3. correction ❌

Truth value: False
Relation to GT: Stronger
Error Type: Implicit Premise, 
If NL has Implicit Premises: Yes
Implicit Premises:   (h_nontrivial : ∃ g : G,

- **262** | weaker | provable=true | error=misunderstanding_of_mathlib
  - (true, weaker, Misunderstanding of MathLib)

The informal says "prove a group of order 9 is abelian" — the given
  group operation is commutative. But Nonempty (CommGroup G) only asserts that G
  admi

- **263** | stronger | provable=false | error=misunderstanding_of_informal_statement
  -  1. negation ✅
2. reasoning ✅
3. correction ❌ (missing)

Error Type: Wrong formalization
If NL has Implicit Premises: No
Implicit Premises:   NA
Comment:

- **264** | stronger | provable=false | error=missing_premise
  -  1. negation ✅
2. reasoning ✅
3. correction ✅

Error Type: Wrong formalization
If NL has Implicit Premises: No
Implicit Premises:   NA
Comment: Does not include the hypothesis that phi is surjective.

- **268** | weaker | provable=true | error=misunderstanding_of_informal_statement
  - The informal phrase "disturb no common element" means no element is moved by BOTH σ and τ, correctly formalized as ∀ a, ¬(σ a ≠ a ∧ τ a ≠ a) in the corrected version. The original formalization uses a

- **279** | incomparable | provable=false | error=misunderstanding_of_informal_statement
  -  1. negation ✅
2. reasoning ✅
3. correction ✅

Truth value: False
Relation to GT: incomparaboe
Error Type: Misunderstanding of Informal Math
If NL has Implicit Premises: no
Implicit Premises:   
Comme

- **284** | weaker | provable=true | error=misunderstanding_of_mathlib
  - The informal statement says "a is a primitive root mod p iff -a is a primitive root mod p" when p = 4t+1. A primitive root mod prime p has order p-1 (the order of (ZMod p)^*). Mathlib's `IsPrimitiveRo

- **285** | incomparable | provable=false | error=misunderstanding_of_mathlib
  -  1. negation ✅
2. reasoning ✅
3. correction ❌

Truth value: False 
Relation to GT: incomparable
Error Type: Misunderstanding of mathlib
If NL has Implicit Premises: No
Implicit Premises:   NA
Comment:

- **289** | stronger | provable=true | error=misunderstanding_of_informal_statement
  - T∞ does not always form a topology on X, but the lean formalization means the just the union axiom fails

- **294** | incomparable | provable=false | error=misunderstanding_of_informal_statement
  -  1. negation ✅
2. reasoning ✅
3. correction ✅

Error Type: Wrong formalization
If NL has Implicit Premises: No
Implicit Premises:   NA
Comment: Misunderstanding of what it means to inherit a topology.

- **295** | stronger | provable=false | error=misunderstanding_of_informal_statement
  -  1. negation ✅
2. reasoning ✅
3. correction ✅

Error Type: Wrong formalization
If NL has Implicit Premises: No
Implicit Premises:   NO
Comment: The wrong formalization says that every member of S is a

- **301** | stronger | provable=true | error=misunderstanding_of_informal_statement
  - The original formalization proves `IsOpenMap (p ∘ Subtype.val : A → Y)`, i.e., images of
open sets in A are open in Y. The informal statement asks for something slightly weaker:
that the restricted ma

- **308** | stronger | provable=false | error=misunderstanding_of_mathlib
  -  1. negation ✅
2. reasoning ✅
3. correction ❌

Error Type: Wrong formalization, Misunderstanding of Mathlib
Relation to GT: stronger
If NL has Implicit Premises: No
Implicit Premises:   NO
Comment: Th

- **310** | incomparable | provable=false | error=misunderstanding_of_mathlib
  -  1. negation ✅
2. reasoning ✅
3. correction ✅

Error Type: Wrong formalization, Misunderstanding of Mathlib

If NL has Implicit Premises: No
Implicit Premises:   NO
Comment: The wrong formalization us

- **311** | weaker | provable=true | error=misunderstanding_of_informal_statement
  - The original is provable but weaker: it covers only ℕ-indexed products, omitting finite and other countable index types from the statement. Here countable includes finite, even the empty index type; i

- **312** | stronger | provable=false | error=missing_implicit_premise
  -  1. negation ✅
2. reasoning ✅
3. correction ❌

Error Type: Implicit Premise
Relation to GT: stronger
If NL has Implicit Premises: Yes
Implicit Premises: [T1Space X]
Comment: The NL proof says that reg

- **313** | stronger | provable=false | error=missing_implicit_premise
  -  1. negation ✅
2. reasoning ✅
3. correction ✅

Error Type: Implicit Premise
If NL has Implicit Premises: Yes
Implicit Premises: [LinearOrder α]
Comment: The NL proof relies on the order being a linear

- **318** | stronger | provable=false | error=adding_extra_conclusion
  - The informal statement says f can be uniquely extended to g : closure A → Y. The CORRECTED formalization uses `g : closure A → Y` with explicit uniqueness (∀ g' : closure A → Y extending f, g' = g). T

- **322** | incomparable | provable=false | error=missing_implicit_premise
  -  1. negation ✅
2. reasoning ✅
3. correction ✅

Error Type: Implicit Premise
If NL has Implicit Premises: Yes
Implicit Premises:  [T2Space α]
Comment: The space being Hausdorff would also work, which i

- **324** | incomparable | provable=true | error=misunderstanding_of_informal_statement
  - Truth value: true
Error Type: Misunderstanding of informal math
Relation to GT: incomparable

- **325** | incomparable | provable=true | error=misunderstanding_of_informal_statement
  - Truth value: true
Error Type: Misunderstanding of informal math
Relation to GT: incomparable

- **329** | incomparable | provable=false | error=misunderstanding_of_informal_statement
  -  1. negation ✅
2. reasoning ✅
3. correction ❌

Error Type: Wrong formalization
If NL has Implicit Premises: No
Implicit Premises:   NO
Comment: The wrong formalization uses n as the index in the summa

- **330** | weaker | provable=true | error=misunderstanding_of_lean
  - The original statement uses `ContDiff ℝ ⊤ f` where `⊤` resolves to `⊤ : WithTop ℕ∞`.
In current Mathlib, the type `WithTop ℕ∞` has TWO distinct "top-like" elements:

  - `(⊤ : ℕ∞) : WithTop ℕ∞`  — den

- **333** | nl_ambiguous | provable=true | error=nl_ambiguous
  - NL Ambiguous, order could be linear order or partial order

- **334** | stronger | provable=false | error=misunderstanding_of_informal_statement
  - The informal statement asks about "ordered field" — meaning there is no linear order on ℂ compatible with its field operations. The CORRECTED formalization captures this correctly via `IsStrictOrdered

- **338** | stronger | provable=true | error=adding_extra_conclusion
  - The informal statement asks to prove that disjoint closed sets A and B in a metric space are "separated" in Rudin's sense (Definition 2.45), meaning A ∩ closure(B) = ∅ and closure(A) ∩ B = ∅. This is

- **341** | stronger | provable=false | error=misunderstanding_of_informal_statement
  -  1. negation ✅
2. reasoning ✅
3. correction ❌

Error Type: Misunderstanding of informal math
Relation to GT: stronger
If NL has Implicit Premises: No
Implicit Premises:   NO
Comment: The wrong formali

- **342** | nl_ambiguous | provable=true | error=nl_ambiguous
  - NL Ambiguous, \sqrt{n^2 + n} -n could be sequence or real function

- **343** | incomparable | provable=false | error=misunderstanding_of_informal_statement
  -  1. negation ✅
2. reasoning ✅
3. correction ❌

Error Type: Misundestanding of informal math
Relation to GT: incomparable
If NL has Implicit Premises: Yes
Implicit Premises: (havoid : limsup a ≠ ⊥ ∨ li

- **345** | incomparable | provable=false | error=misunderstanding_of_lean
  -  1. negation ✅
2. reasoning ✅
3. correction ✅

Error Type: Wrong formalization
If NL has Implicit Premises: No
Implicit Premises:   NO
Comment: The absolute value is wrapped around in the wrong place

- **353** | stronger | provable=false | error=misunderstanding_of_informal_statement
  - The informal statement says "every continuous open mapping of R^1 into R^1 is monotonic." In standard mathematical usage, "monotonic" means either monotone increasing or monotone decreasing. The corre

- **356** | weaker | provable=true | error=misunderstanding_of_informal_statement
  - The informal statement asserts that for some positive threshold of ε, f(x) = x + εg(x) is injective. The corrected formalization properly encodes this with `∃ N > 0, ∀ ε > 0, ε < N → Function.Injectiv

- **358** | incomparable | provable=false | error=misunderstanding_of_mathlib
  -  1. negation ✅
2. reasoning ✅
3. correction ✅

Error Type: Wrong formalization
If NL has Implicit Premises: No
Implicit Premises:   NO
Comment: The original formalization talks about the full neighbor

- **360** | stronger | provable=false | error=missing_implicit_premise
  -  1. negation ✅
2. reasoning ✅
3. correction ✅

Error Type: Implicit Premise
If NL has Implicit Premises: Yes
Implicit Premises: (hConn : IsPreconnected Ω)
Comment: The NL statement is false if you do

- **364** | incomparable | provable=false | error=misunderstanding_of_informal_statement
  -  1. negation ✅
2. reasoning ✅
3. correction ❌

Error Type: Misunderstanding of Mathlib
Relation to GT: incomparable
If NL has Implicit Premises: No
Implicit Premises:   NO
Comment: The wrong formaliza

- **367** | incomparable | provable=false | error=missing_implicit_premise
  -  1. negation ✅
2. reasoning ✅
3. correction ❌

Error Type: Implicit Premise
If NL has Implicit Premises: Yes
Implicit Premises: (hsumm : Summable fun n : ℕ => (1 - ‖zeros n‖))
Comment: The NL does not
