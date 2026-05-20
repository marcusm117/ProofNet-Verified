# Error Classification of `proofnet_original-4.28/`

Compared against golden ground truth `proofnet_verified/`.

## Faithfulness Summary

| verdict | count |
|---|---|
| faithful | 270 |
| weaker | 16 |
| stronger | 39 |
| incomparable | 33 |
| nl_ambiguous | 8 |
| nl_wrong | 1 |
| **total** | **367** |

## Error Types (unfaithful only)

| error type | count |
|---|---|
| misunderstanding_of_mathlib | 31 |
| misunderstanding_of_informal_statement | 27 |
| missing_implicit_premise | 18 |
| misunderstanding_of_lean | 8 |
| nl_ambiguous | 8 |
| missing_premise | 3 |
| adding_extra_conclusion | 1 |
| nl_wrong | 1 |

## Provability (unfaithful only)

| provability | count |
|---|---|
| true | 36 |
| false | 61 |

## Unfaithful Entries

- **4** | stronger | provable=true | error=misunderstanding_of_informal_statement
  - OG is stronger than GT. NL hypothesis is for only countably infinite while the OG was both finite and ctbly infinite.

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

- **29** | stronger | provable=false | error=misunderstanding_of_mathlib
  - 1. negation ✅
2. reasoning ✅
3. correction ✅

Error Type: Wrong Formalization, Misunderstanding of Mathlib  
If NL has Implicit Premies: No
Implicit Premises: NA
Comment: The wrong formalization just 

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

- **47** | stronger | provable=true | error=misunderstanding_of_informal_statement
  - OG is stronger than GT. The NL hypothesis says that the cardinality is composite while OG said it was not prime (which includes the case of |G| = 1). 

- **48** | weaker | provable=true | error=misunderstanding_of_informal_statement
  - OG is weaker than GT. The NL is about an arbitrary transitive subgroup while the OG was just about full symmetric group.

- **65** | incomparable | provable=false | error=misunderstanding_of_lean
  - 1. negation ✅
2. reasoning ✅
3. correction ✅

Error Type: Wrong Formalization, Misunderstanding of Lean  
If NL has Implicit Premies: No
Implicit Premises: NA
Comment: 

- **67** | incomparable | provable=true | error=misunderstanding_of_mathlib
  - Wrong Formalization, Misunderstanding of Mathlib  

(f*g).coeff is a function! not an integer

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

- **96** | weaker | provable=false | error=missing_implicit_premise
  - 1. negation ✅
2. reasoning ✅
3. correction ✅

Error Type: Implicit Premise 
If NL has Implicit Premies: Yes
Implicit Premises: (n > 0) in hl
Comment: The NL doesn't specify that
the definition is only

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

- **102** | stronger | provable=false | error=missing_implicit_premise
  - 1. negation ✅
2. reasoning ✅
3. correction ❌

Error Type: Implicit Premise
If NL has Implicit Premies: Yes
Implicit Premises:  (hp : Nat.Prime p) 
Comment: The NL doesn't specify positive prime. The w

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


- **121** | incomparable | provable=false | error=misunderstanding_of_mathlib
  - 1. negation ✅
2. reasoning ✅
3. correction ✅

Error Type: Wrong Formalization
If NL has Implicit Premises: no
Implicit Premises: 
Comment: Unit circle should be defined on C b/c -1 and 1 are disconnec

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

- **139** | weaker | provable=true | error=misunderstanding_of_mathlib
  - Condensation point is a cluster point that has uncountably many points in the neighborhood so the clusterPt is a weaker theorem than the GT.

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

- **155** | stronger | provable=false | error=misunderstanding_of_mathlib
  -  1. negation ✅
2. reasoning ✅
3. correction ❌

Error Type: Implicit Premise
If NL has Implicit Premises: Yes
Implicit Premises:      (hTB : TotallyBounded (Set.univ : Set X))
Comment: The literal read

- **158** | nl_ambiguous | provable=true | error=nl_ambiguous
  - NL Ambiguous

the problem itself doesn't say anything about whether we are working with R or C!

- **161** | weaker | provable=true | error=misunderstanding_of_mathlib
  - The Lean Monotone only means monotonically non-decreasing while the GT should be for both positive and negative monotonicity.

- **162** | nl_ambiguous | provable=true | error=nl_ambiguous
  - NL Ambiguous

wrong copy-paste

- **168** | nl_wrong | provable=false | error=nl_wrong
  -  1. negation ✅
2. reasoning ✅
3. correction ❌

Error Type: NL Wrong
If NL has Implicit Premises: NA
Implicit Premises:   NA
Comment: NA


wrong copy-paste




- **170** | stronger | provable=false | error=misunderstanding_of_informal_statement
  -  1. negation ✅
2. reasoning ✅
3. correction ✅

Error Type: Wrong formalization
If NL has Implicit Premises: No
Implicit Premises:   NA
Comment: Wrong formalization of the intermediate value property (

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


- **268** | stronger | provable=true | error=misunderstanding_of_informal_statement
  - Truth value: True
Relation to GT: weaker
Error Type: Misunderstanding of informal math
Comment: The wrong formalization forces all elements to be either be moved by tau or moved by sigma. In NL, it ma

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

- **284** | incomparable | provable=true | error=misunderstanding_of_mathlib
  - Truth value: True
Relation to GT: incomparable
Error Type: Misunderstanding of mathlib

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

- **318** | stronger | provable=false | error=misunderstanding_of_informal_statement
  -  1. negation ✅
2. reasoning ✅
3. correction ❌

(false, stronger, Misunderstanding of Informal Math Statement),

Error Type: Wrong formalization
If NL has Implicit Premises: No
Implicit Premises:   NO


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

- **334** | stronger | provable=false | error=misunderstanding_of_mathlib
  -  1. negation ✅
2. reasoning ✅
3. correction ✅

Error Type: Wrong formalization, Misunderstanding of Mathlib
If NL has Implicit Premises: No
Implicit Premises:   NO
Comment: The wrong formalization doe

- **338** | stronger | provable=true | error=misunderstanding_of_mathlib
  - Error Type: Misunderstanding of Mathlib
Truth value: true
Relation to GT: stronger


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

- **353** | weaker | provable=false | error=misunderstanding_of_mathlib
  -  1. negation ✅
2. reasoning ✅
3. correction ❌

Error Type: Wrong formalization, Misunderstanding of Mathlib
If NL has Implicit Premises: No
Implicit Premises:   NO
Comment: Monotone in Lean means only

- **356** | incomparable | provable=false | error=missing_implicit_premise
  -  1. negation ✅
2. reasoning ✅
3. correction ❌

Error Type: Missing premise, Misunderstanding of informal math
Relation to GT: incomparable
If NL has Implicit Premises: No
Missing Premises: (hgDiff : D

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
