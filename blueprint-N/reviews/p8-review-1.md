# Review 1: resonance geometry and the two cutoff directions

## Verdict: REVISE

**Part 8 is right about the cutoff direction.** Its lattice-volume identities, block covering, Geometric Lemma and numerical Covering Lemma check out. The proposed correction must be propagated to the consumers: the present Part 6/7 handoff still uses the opposite inequality. This is a major integration finding, not a request to reverse Part 8's correction. Part 8 itself needs a local qualification in the Covering Lemma's consistency clause. No blocking defect was found in its geometric argument.

For nonresonance alone, `K_a ≤ K_g` suffices. With the existing Part 7 radius premise and Part 8's prescribed radii and constants, the sufficient combined condition is **`K_g ≥ sqrt(n) K_a`**. N06's norm inclusions were correct; its proposed two-cutoff repair was wrong. I retract that repair explicitly.

## Snapshot, materials and checks

- Reviewed `blueprint-N/parts/p8-resonance-geometry.tex`: **232 lines, 35,055 bytes**, SHA-256 `0ba671459f99ad812a549c664ba38a897da292fa472d6e33e246ce9cee768c45`. The hash was rechecked after the calculations and build.
- Pinned source: `sources/incoming-N/poschel1993_gdz.pdf`, SHA-256 `27568ec63af069ab6d6c02e0327aa2d822998be47888f20dea0c6418552dc869`. Read the scan itself, printed **pp.200–204**, zero-based PDF pages **15–19** (one-based PDF pages 16–20). Page numbering here follows the user's printed-minus-185 convention for the zero-based index.
- Read the review brief, AGENTS.md, governing PLAN/DECISIONS and writer conventions; checked the N PLAN, frozen norm/convention interfaces, Part 1 norm comparison, Part 6 resonant setting and cutoff remarks, Part 7 resonance data and stability premises, and `blueprint-N/reviews/p0-review-1.md` N06. This part contains no frozen headline theorem to certify binder by binder.
- Consumer snapshots: Part 6 SHA-256 `b43eaec2cb2f57957807dbf973f31eab6d46fe315a42868a28937c15dda3895c`; Part 7 `745c6b3246d4bbadfffa1c4261c1890cc5d3343f64c7bd2042d024ecba700b9d`.
- `cd blueprint-N && latexmk -pdf -outdir=.build/review blueprint.tex`: **exit 0**, **61 pages**. Final log: **0** lines beginning `!`, **0** undefined-reference/citation warnings. Underfull boxes, PDF-bookmark warnings and an overfull parameter display at Part 8 line 186 remain; they do not affect the calculations.
- `scripts/lint_sources.sh`: **exit 0**; `check_lean_modules: PASS (175 Lean files, 0 comparator configurations)`; `FROZEN-ANCHOR GUARD OK`; `ABI HASHES OK (140 frozen declarations)`.
- Mathlib names were checked in the local pinned source, as detailed below. No Lean files were edited or built; no fresh `#print axioms`, provider proof or frozen-theorem closure is claimed. Only this review file was written, apart from ignored LaTeX artifacts and temporary source-page images.

## Findings

| ID | Location / label | Severity | Finding and evidence | Exact proposed fix |
|---|---|---|---|---|
| N8-01 | `bpN:p8:covering`(b), lines 189–195, `stepN:p8:cv-params` | minor | The consistency clause lacks `dim Λ ≥ 1`. It currently asserts `δ_Λ = λ_d / abs(Λ)` and identifies δ_Λ with the zone radius for every lattice, including Θ. But λ_0 is undefined, and Z_Θ is all of R^n, not the finite-width zone defined by δ_Θ. The source p.203 expressly says “For nontrivial Λ”. The rest of this proof already treats Θ separately. | Restrict (b), and the corresponding equality in `cv-params`, to `Λ ≠ Θ`, equivalently `d ≥ 1`. Retain the positive auxiliary number `δ_Θ = bm r_Θ`; explain that it is not a radius defining Z_Θ. No change to the block covering or constants is needed. |
| N8-02 | `bpN:p8:direction`, `bpN:p8:cutoffs`; **consumer integration**: Part 6 lines 15,232; Part 7 line 281; N06 proposed fix and stale PLAN discussion | major, route | Part 8 correctly transfers geometric nonresonance from E_(K_g) to Z_(K_a). The older repair `K_a ≥ sqrt(n) K_g` transfers in the wrong direction and cannot discharge the analytic premise. At `n=2, K_g=2, K_a=3`, ω=(1,−2) has divisor modulus at least 1 for every nonzero integer vector in E_2, but k=(2,1) belongs to Z_3 and has zero divisor. The older inequality holds in this example. Independently, the Part 7 radius bound requires `K_g ≥ sqrt(n) K_a` with the prescribed α_Λ. | Keep Part 8's correction. Replace the two stale Part 6 caller statements and the Part 7 consumer statement by `K_g ≥ sqrt(n) K_a`, with analytic K equal to K_a and geometric K equal to K_g. Correct the PLAN and supersede the proposed repair in N06. Carry `K_g = sqrt(n) K_a` through the future Part 9 radii, smallness and exponential time calculation; the exponent remains in analytic `K_a s`, not geometric `K_g s`. Do not substitute the geometric cutoff into the analytic exponential without this conversion. |

The short parenthetical `k = floor(K_a)e_1` in `bpN:p8:direction` is not a counterexample for every choice of the cutoffs: floor(K_a) can be ≤ K_g. The explicit example in N8-02 supplies the intended counterexample, including the missing frequency. This does not undermine the direction argument.

## What I recomputed: refutation attempts that failed

### Lattice bases, covolumes and projections

A subgroup of Z^n is free. Embed its basis vectors into Q^n, preserve Z-independence under that injective embedding, pass to Q-independence, and then use a nonzero maximal minor to obtain R-independence. This proves the equality of integer rank and real span dimension, including the bound d≤n. No real basis is being mistaken for an integer lattice basis.

For two integer bases, the coordinate matrices U and Ũ satisfy `U Ũ = 1`, hence `det U = ±1`. Thus

`det((AU)^T AU) = (det U)^2 det(A^T A) = det(A^T A)`.

For equal-rank Γ⊆Λ, its coordinate matrix N is integer with nonzero determinant, giving

`abs(Γ) = abs(det N) abs(Λ) ≥ abs(Λ)`.

This is the correct direction: passing to a larger lattice in the same span decreases covolume. The positive integral Gram determinant yields `abs(Λ) ≥ 1`; rank zero is handled by `abs(Θ)=1`.

With G=A^T A, the matrix `P=A G^{-1} A^T` is symmetric and idempotent, fixes W and has residual orthogonal to W. The distance to W-perp is therefore `norm(Pω)`, attained by Qω. For nested spans the two projections commute and their product is the smaller projection. These facts use the explicitly declared Euclidean norm; they do not silently use the frozen max norm as an inner-product norm.

For k outside W, the appended columns really form an integer basis of `Λ+Zk`. The Schur complement is

`det(G) [k·k − k^T A G^{-1} A^T k] = det(G) norm(Qk)^2`.

Taking positive square roots gives exactly `abs(Λ+Zk)=abs(Λ) norm(Qk)`. The argument separates Θ, so there is no inverse of an unguarded singular Gram matrix. Iterating this identity proves the stated Hadamard bound without requiring a short integer basis for every lattice.

### Maximal lattices and blocks, including the endpoints

The manuscript defines maximality within the finite family of Euclidean K-generated lattices of fixed rank. Its characterization

`Λ maximal ⇔ E_K ∩ W_Λ ⊆ Λ`

is correct in that family: adjoining a short vector in the span preserves rank, and conversely every generator of a same-rank enlargement already lies in Λ. The finite-family argument produces a maximal enlargement of the same rank. Saturation is not required by this proof, and is not silently inferred from its weaker maximality definition.

This gives precisely the implication used later: if `k ∈ E_K \ Λ`, then `k ∉ W_Λ` and `dim Λ < n`. For full rank every short vector belongs to Λ. With K≥1 the coordinate vectors are short, so the unique full-rank maximal lattice is Z^n. With K<1 the only K-lattice is Θ. For K=0, its volume bound uses the empty product K^0=1.

To prove `abs(Λ) ≤ K^d`, choose d independent vectors from its short generators. Their generated lattice Γ need not equal Λ; the already checked inequality `abs(Λ)≤abs(Γ)` is exactly what is needed. This avoids an unjustified assertion that a short spanning set contains an integer basis.

The block covering works for arbitrary positive λ_d; no nesting of the rank-d zones is needed. Choose the largest rank of a zone containing ω. That point is absent from every zone of the next rank, so it belongs to the corresponding block. If no positive-rank zone contains it, it belongs to B_Θ. The family is finite because each lattice is generated by a subset of the finite ball E_K. Blocks may overlap; neither disjointness nor a partition is claimed or used.

### Projection formulas and the Geometric Lemma

For k outside W, `W_+ = W ⊕ R(Qk)`, with Qk nonzero. Orthogonal projection onto the new line gives

`P_+ω − Pω = [(Qk·ω)/norm(Qk)^2] Qk`.

Consequently `abs(Qk·ω)=norm(Qk) norm(P_+ω−Pω)` and Pythagoras holds. The formula also works at W={0}. Its denominator is strictly positive before division.

In the nontrivial-lattice case, the maximal enlargement Λ_+ has the same span as Λ+Zk. Writing V=abs(Λ), V_+=abs(Λ_+), the volume calculation gives

`V_+ ≤ V norm(Qk) ≤ VK`.

Set `t=K λ_d/V_+>0`. Membership in the block and exclusion from the next-rank zone give

`norm(Pω) < λ_d/V ≤ t`, and `norm(P_+ω) ≥ λ_(d+1)/V_+ ≥ A t`.

Hence

`norm(P_+ω−Pω)^2 ≥ (A^2−1)t^2 > 0`.

Both square-root radicands are guarded: E>0 and A≥E+sqrt(2) imply A>sqrt(2), and t>0. The new-line contribution is at least `Kδ sqrt(A^2−1)`; the old-span contribution has modulus at most Kδ. Thus

`abs(k·ω) ≥ Kδ [sqrt(A^2−1)−1] ≥ Kδ[A−sqrt(2)] ≥ EKδ`.

I checked the middle inequality algebraically: putting c=sqrt(2)−1 gives `(A−c)^2≤A^2−1` exactly when A≥sqrt(2), with both sides of the square-root comparison nonnegative. No factor V, K or square root is lost.

For B_Θ, choose a rank-one maximal lattice containing k, write k=jg, and use `abs(Λ_k)=norm(g)≤norm(k)`. Outside its zone,

`abs(k·ω) = norm(k) dist(ω,k-perp) ≥ norm(k) λ_1/norm(g) ≥ λ_1`.

For d=n there is no eligible k outside Λ; the divisor assertion is correctly vacuous. The closeness assertion still holds by membership in its zone. For n=1 there are no λ-ratio assumptions to instantiate, and both endpoint arguments remain valid. For 0<K<1 the nonzero short-vector assertions are empty, also consistently.

### Covering Lemma: every constant and arbitrary frequency maps

For d≥1,

`λ_(d+1)/λ_d = AK`, `δ_Λ = λ_d/abs(Λ) = bm r_Λ`,

and with E=pM/(bm),

`EKδ_Λ = pMK r_Λ = α_Λ`.

All parameters are positive. For Θ the separate calculation is

`λ_1 = bm A K r_Θ ≥ pMK r_Θ = α_Θ`,

because bm A≥pM. This covers the nonresonant block without introducing λ_0. Its distance to R_Θ=R^n is zero, so the closeness conclusion in `cutoffs`(b) is harmless even for Θ, with the positive auxiliary δ_Θ; it is the zone-radius identification in `covering`(b) that needs the qualification N8-01.

The radii satisfy

`r_Λ = r_0 (AK)^(d−n)/abs(Λ)`.

For d<n, `abs(Λ)≥1` gives `r_Λ≤r_0/(AK)`. The upper bound remains true for Θ. Conversely `abs(Λ)≤K^d` gives `r_Λ≥r_0 A^(d−n) K^(−n)≥r_0/(AK)^n`, since A≥1. Full rank gives Λ=Z^n, volume 1 and r_Λ=r_0. All endpoint and n=1 cases agree with the stated bounds.

Pulling the frequency-space covering back under an arbitrary map requires no regularity, topology, boundedness, injectivity or nonempty domain. The inverse images cover P, remain finite in number, and all pointwise divisor/distance bounds pull back. Empty inverse images can be discarded. The source p.203 uses exactly this pullback. Its m,M parameters play no geometric role beyond E and the definitions of α,δ.

For the future source choices p=9/8,b=1/8, one has E=9M/m. If M≥m, `A=11M/m` satisfies `A−E=2M/m≥2>sqrt(2)`. Part 9 must actually provide that normalization and its other stability premises; Part 8 supplies no analytic-domain containment or new QC hypothesis by geometry alone.

### Cutoffs: decisive inclusion and explicit refutation of N06's repair

The two true inclusions are

`Z_(K_a) ⊆ E_(K_a) ⊆ Z_(sqrt(n)K_a)`.

A divisor lower bound on E_(K_g) therefore supplies the analytic one on Z_(K_a) when K_a≤K_g. The other inclusion, `E_(K_g)⊆Z_(sqrt(n)K_g)`, does not transfer a lower bound to that larger set. This is the precise logical error in the old handoff.

The counterexample in N8-02 was also checked by enumerating all 12 nonzero integer vectors in E_2: at ω=(1,−2), their minimum divisor modulus is 1. Yet (2,1) has l1 length 3, Euclidean length sqrt(5)>2, and zero divisor. One can realize this point in B_Θ for the geometric family by choosing λ_1=1/2: every rank-one short primitive generator has divisor modulus at least 1, so its zone misses ω. Choose any positive λ_2 satisfying the Geometric Lemma's ratio condition. Thus this is also a counterexample to the claimed analytic nonresonance on the old-cutoff blocks, not just an abstract inclusion objection.

With positive α,p,M,K_a,K_g and the covering identity for r_Λ, the existing Part 7 radius premise becomes

`α/(pM K_g) ≤ α/(p sqrt(n)M K_a) ⇔ K_g ≥ sqrt(n) K_a`.

This explains the extra factor in Part 8; it is not needed merely to transfer the divisor bound. The proposed equality K_g=sqrt(n)K_a, with K_a≥1/sqrt(n), meets K_g≥1. The analytic lemmas allow a general lattice/set Λ and do not require it to be generated by analytic-cutoff vectors. Hence using geometric K_g-lattices with a smaller analytic cutoff creates no extra lattice-generation premise.

## External facts E1–E6: checked names and applicability

| Item | Local Mathlib evidence | Applicability / remaining implementation work |
|---|---|---|
| E1 | `Submodule.basisOfPid`, `LinearAlgebra/FreeModule/PID.lean:298`; standard `Pi.basisFun` | Supplies a finite integer basis after viewing the subgroup as a Z-submodule. The displayed rank bound follows using E5 and real finite-dimensionality; `basisOfPid` itself returns a basis, not the bound d≤n as an extra field. |
| E2 | `Matrix.PosDef.conjTranspose_mul_self`, `LinearAlgebra/Matrix/PosDef.lean:488`; `Matrix.PosDef.det_pos`, line 549; `Matrix.det_mul`, `Matrix.det_transpose` | The first theorem really accepts injectivity of the rectangular matrix's `mulVec`; over R its conjugate transpose is transpose. The determinant theorem applies to the resulting real positive-definite square Gram matrix. No missing square-matrix or surjectivity hypothesis on A. |
| E3 | `Matrix.det_fromBlocks₁₁`, `LinearAlgebra/Matrix/SchurComplement.lean:369` | Requires an `Invertible G` instance, supplied from the positive determinant. Instantiate the bottom-right block on a singleton and simplify its determinant. The printed `$_{11}$` is typography for the actual Unicode-subscript name. |
| E4 | `Matrix.isUnit_iff_isUnit_det`, `LinearAlgebra/Matrix/NonsingularInverse.lean:125`; `Int.isUnit_iff`, `Algebra/Group/Int/Units.lean:45`; `Module.Basis.invertibleToMatrix`, `LinearAlgebra/Matrix/Basis.lean:259` | The integer unit characterization is exactly ±1. The fully qualified basis name is `Module.Basis.invertibleToMatrix`; the blueprint's `Basis` spelling is shorthand. Supply common finite basis indexing and the coordinate matrix. |
| E5 | `LinearIndependent.iff_fractionRing`, `RingTheory/Localization/Module.lean:194`; `Matrix.rank_eq_finrank_span_cols`, `LinearAlgebra/Matrix/Rank.lean:411` | The fraction-ring theorem requires a common ambient module over both rings: first embed the integer vectors into Q^n. The rank/span theorem is not itself the nonzero-minor or scalar-extension theorem. The blueprint explicitly reserves that second half as a helper; its finite-matrix proof is valid. Do not apply `iff_fractionRing` directly to ambient Z^n as though it were a Q-module. |
| E6 | Finite integer coordinate bounds, finite maximal-element selection, extraction of a vector-space basis from a finite spanning set, Cauchy–Schwarz | All are standard finite-dimensional/finite-set facts; no special lattice theorem is being imported without proof. E6 gives no precise Mathlib names to certify. In implementation the Euclidean dot-product norm must be expressed explicitly on the required coordinate type, rather than identifying the max-norm Pi instance with an inner-product norm. |

This is source-level name and contract verification, not an elaboration test or a claim that the future lattice infrastructure has already been implemented.

## Source fidelity, deviations and closeout

The scan confirms the volume definition, zones, block construction and Geometric Lemma on pp.200–202, the Covering Lemma and its parameter choices on p.203, and the radius bounds on p.204. The omissions filled by the manuscript—maximal enlargement, covolume comparison, projection formulas and `abs(Λ)≤K^d`—are legitimate proof supplements. No numerical misprint in the geometric constants on these pages was established.

The source's phrase about maximality, p.200, permits a stronger saturation reading. Part 8 explicitly defines its own weaker fixed-rank maximality among K-generated lattices and uses Euclidean short generators. This is a disclosed adaptation, not an identity of the two definitions. Its proofs establish everything they use for the adapted family. The source p.202 observation about proving the Euclidean-cutoff assertion supports the stronger divisor scope, but does not alone identify every lattice family under both norms. No equality of those families is needed here.

The source p.203 explicitly restricts the zone-radius identity to nontrivial lattices; restore that qualification. The correction to N06 is a reviewer/blueprint-interface correction, **not a Pöschel erratum**. The disagreement is resolved in favor of Part 8. Close N8-02 only after the opposite cutoff requirements in the callers and PLAN have been superseded and the future Part 9 constants actually use the two cutoffs consistently. This review does not certify that future assembly or the frozen N-HEAD theorem.
