# Review 1: homological equation, Iterative Lemma and Normal Form Lemma

## Verdict: REVISE

The scalar normal-form construction is mathematically sound **conditional on correction of the shared Part-4 bracket proof already identified in N45-01/02**. I recomputed the first step, doubled-loss case, floor/zero-step case, every later loss and contraction, the average correction, and both displacement bounds. The stricter Lie-series range η ≤ 1/2 is respected throughout. Allowing an arbitrary resonance set, rather than only a module, causes no problem for these estimates.

The requested track-P averaging interface is still not supplied. It needs a direct complex-divisor version, a two-scale refinement at every stage, preservation of its unused angle width, and estimates in P's different norm. The p.194 source typo is confirmed. The p.195 derivative estimate has not been refuted; the allegation about the p.197 small-Ks argument is unwarranted.

## Snapshot, materials and checks

- Reviewed `blueprint-N/parts/p6-normal-form.tex`: 234 lines, 35,373 bytes; SHA-256 `b43eaec2cb2f57957807dbf973f31eab6d46fe315a42868a28937c15dda3895c`.
- Read the complete review brief, AGENTS.md, docs/PLAN.md, docs/DECISIONS.md, the writer convention ruling, N's PLAN and relevant source notes, Parts 0–5, and `blueprint-P/reviews/p3-review-1.md`, including its final N-interface addendum. Checked P's actual averaging statement in p3a and the Part-2 route in PLAN.
- Directly inspected the pinned Pöschel scan, printed pp.192–197 (PDF pp.7–12). Compared the homological/Taylor/Iterative-Lemma formulas with Appendix A pp.211–213 and B.3–B.5 pp.213–215, also inspected in the preceding shared-layer review. No source formula was taken from the writer's errata summary alone.
- Rechecked N Part-4/5 hashes: they remain `9ea8b6be90aeebab265d08eec4c68b292472439aaba86a619088eda84e752559` and `fda4ea6dae4635f52e3e15500a0246a917ff5d0304097aa180ce9be46b3bb3e9`; the reported sum/supremum defect has not been repaired in those inputs.
- This part introduces analytic helpers, not a new frozen headline transcription. Its field/bracket uses the frozen angle-first field `(∂I H,−∂θ H)`. The downstream N-HEAD-C proof, lattice geometry and stability assembly are not certified by this review.
- `latexmk -pdf -interaction=nonstopmode -outdir=.build/review blueprint.tex` in blueprint-N: exit 0, **44 pages**, zero lines beginning `!`, no undefined-reference warnings. Cross-track macros do not check the truth or applicability of their target contracts.
- `scripts/lint_sources.sh`: exit 0; `check_lean_modules: PASS (175 Lean files, 0 comparator configurations)`, `FROZEN-ANCHOR GUARD OK`, `ABI HASHES OK (140 frozen declarations)`.
- Scratch arithmetic gave the induction multiplier `49/254 = 0.1929133858`, Case-B multiplier `48/(31e) = 0.5696197799`, angle multiplier `9.282395592 < 10`, and action multiplier `0.426850313 < 1`. These are auxiliary checks of the exact inequalities below, not substitutes for their proofs. No Lean file was changed or built; no fresh `#print axioms` or provider closure is claimed.

## Findings

| ID | Location / label | Severity | Finding and evidence | Exact proposed fix |
|---|---|---|---|---|
| N6-01 | `bpN:p6:bracket-g`, `stepN:p6:it-integrand`; imported `bpN:p4:bracket` | major | The imported Part-4 proof still invokes a false sum of independent global angular derivative suprema. Thus the present dependency chain remains unsound as written, although the bracket bound and all constants used here can be retained. This is the unchanged N45-01/02 defect, not a newly discovered factor in this part. | Repair Part-4 B.3/B.4 by keeping angular sums pointwise in I and taking the action supremum last, as specified in the earlier review. Then reuse the repaired bracket statement here unchanged. Do not silently add dimension factors throughout the normal-form induction. |
| N6-02 | Opening reuse claim; `bpN:p6:iterative-special`, `bpN:p6:consumers`; P3-01/02 and its addendum | major | The scalar statements do not deliver P's averaging gate. P assumes divisors bounded on the complex tube and has no `K L r ≤ α/p` premise; choosing α=α₂ and L equal to the full Hessian bound can violate that condition by an unbounded fast/slow ratio. No split α₁/α₂ displacement conclusion is stated or proved. Also the Normal Form Lemma keeps one sixth of the **whole** angle width; P must retain `bar s+s/6`. Its action bound `qKε/α` and angle coefficient 10q do not imply P's `9ε/(α_i s)` and `9ε/(2πα₂r)` bounds. | Expose a version starting from the actual complex divisor bound, bypassing the preliminary center-to-tube loss. Supply a finite averaging corollary with losses charged only to s, preserving bar s, and keep the generating-function split at every stage. Prove and sum its two block displacement bounds and recompute the constants 64e, 9 and 1/4. Distinguish this corollary from the scalar Iterative Lemma and scalar Normal Form Lemma. Keep P's gate explicitly unpaid until it exists. |
| N6-03 | All weighted estimates as imports into P; N p4 norm versus P p3a norm | major | N still uses `sup_I Σ_k` with geometric width, while P uses `Σ_k sup_I` with coefficient radius. Only the N norm is bounded by the P norm. An N output estimate cannot be promoted to the P output estimate used at the next stage. This is the unchanged P3-03/N45-05 interface defect. | Prove labelled variants of the entire normal-form chain in the stronger sum-of-sups norm, using coefficientwise Cauchy/convolution and the corresponding composition theorem; or change P consistently and redo its estimates. Set `s_N=s_P/(2π)` at every angle-width/loss import. A new strip-loss conversion must pay its width and summation factor explicitly. |
| N6-04 | `bpN:p6:nonresonant-case`, sourcegap at lines 211–212 | minor | The identity-map statement proved here is true. But Pöschel p.197 does not claim the Normal Form Lemma's exponential remainder bound for the identity map. Its “same reasoning” establishes Proposition 1 directly on the **original** strip of width s. The asserted need for an extra e⁻¹ in its time bound does not follow and is unnecessary; see the direct calculation below. | Retain the trivial helper if useful, but remove the accusation that the source needs the extra factor. Give the direct original-coordinate speed estimate on the full strip, or label a deliberately shorter time as a conservative deviation rather than a correction of a source defect. |
| N6-05 | Normalization paragraph, line 13; source-comparison/deviation wording | minor | The paragraph mixes two valid dictionaries. Under symplectic scaling, `α_P=2πα`, `r_P=r/(2π)`, and `ρ_Pσ_P=ρσ`, so `α_P r_P=αr`, not `barα r`. Under the fixed-action Hamiltonian scaling, r is unchanged but `ρ_Pσ_P=2πρσ` and Hamiltonian/generator norms also gain 2π. The claimed blanket substitution “α→barα … r unchanged” is not that dictionary. The actual estimates below were derived in their own variables and do not require this blanket assertion. | State one dictionary at a time, including generator norm, action width and Hessian-Lipschitz scaling. Under the symplectic version use `L_P=(2π)²L`; the divisor-radius condition becomes `K L r≤α/p`. Explain the normalized smallness using `α_P r_P=αr` (or the Hamiltonian-norm scaling in the fixed-action version), rather than the blanket substitution. |

## What I recomputed: refutations that failed

### Divisors, arbitrary domains and the homological sign

For I in the existential tube choose I₀ in D with max-distance <r. The segment lies in the polydisc about I₀, so a bound on the induced Hessian operator norm proves N2 even when D is disconnected. If each Hessian entry is ≤MC, the row-sum bound is nMC. Pairing the l¹ cutoff norm of k with max frequency difference gives

`abs(k·ω(I)) ≥ α−K L r ≥ α(1−1/p)=α/q >0`.

This guards all coefficient divisions. At k=0, a nonempty D forces 0∈Λ. Empty D is harmless. K may be real and nonintegral because the finite l¹ cutoff set is still well-defined. No closure under lattice addition is used: the results only project Fourier supports. Symmetry Λ=−Λ is needed precisely for reality, and is stated where used.

The coefficient choice is `φ_k=f_k/(2π i k·ω)`, so `{φ,h}=ω·∂θφ=T_K f−ξ`; consequently `{h,φ}=ξ−T_K f`. This is the sign required by the transformed Hamiltonian. ξ and φ are finite sums, holomorphic on their actual open tube, with norms at most δ and `qδ/(2πα)` respectively. The cancellation can be checked directly on these finite polynomials, without assuming a finite global norm for h or ω. For real data, conjugating both the coefficient and its imaginary divisor gives `conj(φ_k)=φ_(−k)`. There is no omitted minus sign.

For a decomposed g, B.4 applied to g_j and φ gives exactly

`(2/(eρσ)) · (1/2)(ρ/(r_j−r+ρ)+σ/(s_j−s+σ)) · norm(g_j) norm(φ)`.

Summing proves `bpN:p6:bracket-g` once the imported B.4 proof is repaired. The decomposition-dependent star norm is explicit; it is not assumed to be an intrinsic norm or minimized over decompositions.

### Iterative Lemma, guards and two losses

Put `u=qδ/(barα ρσ)≤1/4`, `barα=2πα`. Then `norm(φ)/(ρσ)≤u` and `η≤2u≤1/2`. The flow/map theorem needs at most 1/2 for its displacement parameter; the composition theorem needs η≤1/2. Both premises are available, including at equality.

The map is defined on `(r−3ρ/2,s−3σ/2)` into `(r−ρ,s−σ)`. On `(r−2ρ,s−2σ)` it has the stated inverse and derivative bound. The displacement components are `qδ/(barα ρ)` for angles and `qδ/(e barα σ)` for actions. The two losses, not one, are necessary for the weighted remainder.

Apply the Part-5 transform with the smaller function domain `(r−ρ,s−σ)` and the original generator domain `(r,s)`. The hypotheses `2ρ<r`, `2σ<s` are exactly what it needs. Although h need not have finite norm, `w={h,φ}=ξ−T_K f` does. For `f₀=g+T_K f`, Taylor gives

`(1−t)w+f₀ = g+(1−t)ξ+t T_K f = g+f_t`.

Thus `norm(f_t)≤δ`, and the integral's norm is bounded by

`(1−η)^(-1) · [2q/(e barα ρσ)](star_norm(g)+δ)δ`.

The untransformed tail on `(r−ρ,s−σ)` is ≤`exp(−2πKσ)δ`; compose it using the same η. Adding the two terms gives exactly the displayed remainder estimate. The affine t dependence supplies joint continuity of the integrand and its spatial derivative, so the parameter-integral theorem applies. All inverses and geometric-series denominators are guarded by `1−2u≥1/2`. Reality follows from actual real holomorphy restrictions, not an off-domain total derivative.

### First step and stopping cases

Write `κ=2πKs≥6`. The initial losses are `ρ₀=r/8`, `σ₀=s/6`, leaving `r₁=3r/4`, `s₁=2s/3`. Smallness yields

`y₀ = qε/(barα ρ₀σ₀) ≤ 48/(128κ) ≤ 1/16`.

In Case A, `exp(−κ/6)≤y₀`, and the first remainder is at most `(16/7)y₀ε`. Since `(16/7)48<128`, this is ≤`128qε²/(barα rs)≤ε/κ≤ε/6≤ε/4`. The stronger ε/κ bound is retained and is essential to the eventual angle displacement estimate.

In Case B use twice both losses. The new composition parameter is smaller, with `u'=y₀/4≤1/64`. The nonlinear coefficient is ≤`y₀/(2e)` and the tail is `exp(−κ/3)≤exp(−1)exp(−κ/6)`. Dividing by `1−y₀/2≥31/32` bounds the remainder by `48/(31e) exp(−κ/6)ε`, which is strictly below the desired bound. The resulting domain `(r/2,s/3)` contains the final one. No iteration is needed in this case.

For `N=floor(κ/(12 ln 2))`, the N=0 case is separately treated: κ<12 ln2 gives `exp(−κ/6)>1/4`, so the first remainder already suffices. There is no division by N in that case. The source phrase “nothing more to do” is supplied with its missing explicit numerical argument here.

### Later losses and contraction, including every exponent

For N≥1 use `ρ=r/(8N)`, `σ=s/(4N)` for exactly N later steps. The final radii are `r/2` and `s/6`. The available domains before each step satisfy both strict loss inequalities. Since `κ≥12 ln2 N>8N`,

`exp(−2πKσ)=exp(−κ/(4N))≤1/8`,

`ε≤barα rs/(2^10 qN)`, and

`ε₁≤barα rs/(2^13 qN²)=barα ρσ/(2^8q)`.

The power N² in this last bound cancels exactly the later inverse product 1/(ρσ). At stage i the later g-increments live at least two losses away, giving a star-norm weight at most 1/3 and hence at most the stated 1/2. For g₀ the bound is `5/(8N)≤1/N`. Therefore

`star_norm(g_(i−1)) ≤ ε₁+ε/N ≤ (1/256+1/32)barα ρσ/q ≤ barα ρσ/(16q)`.

The composition denominator is at least `1−1/128`, and using 2/e≤1 the full multiplier is

`(128/127)(1/16+1/256+1/8)=49/254<1/4`.

Thus `ε_(i+1)≤ε_i/4`, with no hidden stricter η condition. The nested-domain telescoping identity evaluates each increment at the appropriate intermediate point; it needs no Lipschitz estimate for the preceding composition.

### Final outputs and uniformity

The remainder bound is

`ε_(N+1)≤4^(−N−1)ε≤exp(−κ/6)ε`,

using the strict upper floor inequality `κ/(12 ln2)<N+1`. The resonant correction obeys

`norm(g−g₀)≤(4/3)ε₁≤(4/3)128qε²/(barα rs)≤32qKε²/(αr)=16cε²`,

where `c=2qK/(αr)` and κ>8 when N≥1. For N=0 and Case B the correction is zero. All g-increments have support in the same finite set Λ∩Z_K; nonlinear Fourier modes outside it are retained in the remainder, not silently projected away.

For actions the proof's accumulated bound is ≤

`qKε/α · [1+4/(36 ln2)]/e < qKε/α`.

For angles use ε₁≤ε/κ to obtain the multiplier `8+32/(36 ln2)=9.282395592<10` in front of `qε/(barα r)`. In Case B the direct bounds are smaller by a factor 1/2 compared with the original first-step bounds, so both final bounds also hold. Hypothesis (i) then gives the stated action movement ≤r/128. The maps are symplectic, equivariant and injective by composition of the actual time-one maps and their local inverses. No derivative estimate for the **whole composition** is claimed or needed for these results.

The constants and smallness are explicit in the fixed analytic data; no constant was chosen after an orbit or a remainder had been supplied. This part alone does not establish the uniform N-HEAD-C constants, which also require the later resonance geometry and stability assembly.

## Track-P route: first unpaid interfaces

P3-01 is partly addressed: this part now really supplies a finite exponential scalar normal form, rather than only one flow. It does not make a direct invocation of the Iterative Lemma equivalent to exponential averaging. The existing P gate still has the following differences:

- Its complex divisors are given directly. Requiring a bound involving the full fast Hessian and α₂ discards valid properly degenerate inputs. Bypass `bpN:p6:divisor` rather than shrinking P's radius by an extra slow-scale factor.
- Split each generator into the modes with nonzero fast block and the modes with zero fast block. The latter have zero fast-angle derivative; the former admit the α₁ denominator. Integrate the fast action component along the full flow, and keep this split for each new remainder at every step. A scalar α₂ estimate cannot recover the α₁ bound.
- Charge σ₀ and σ_i to the expendable width s, leaving the buffer bar s intact. The existing floor/loss argument is a usable template but its present theorem statement divides the entire input width by six.
- Retain sharper accumulated displacement estimates than `qKε/α`; neither that bound nor the coefficient 10q implies the exact constants in P's statement. For the average correction, the current N estimate can already suffice with a compatible q, as quantified below; alternatively use the sharper `rs` estimate. The invalid numerical inference in P's existing sketch must still be replaced.
- Prove these statements in the sum-of-coefficient-suprema norm, or reconcile that norm explicitly. The earlier P/N reviews give counterexamples to identifying the two norms.

The numerical constants alone are not an obstruction: choose q=4/3, p=4. Since 128q=512/3<64e, P's `ε<α₂r/(64eK)` implies N's scalar numerical smallness with α=α₂. N's own correction bound gives `norm(g−g₀)≤32qKε²/(α₂r)<[q/(2e)]ε<ε/4`. This is conditional on resolving the other premises/domains/norms; it does not prove the fast-action or angle bounds. The K in this valid N correction estimate is not itself an erratum.

These are distinct proof obligations, not reasons to weaken frozen P-G or add the desired averaging conclusion as a premise. The scalar N route can still prove its intended normal-form statement after its dependency repair; the stronger shared P route remains open at the listed interfaces.

## The three Pöschel source concerns, independently adjudicated

1. **P.194, Case B: confirmed sign typo.** The last expression prints `≤ e^(Ks/6) ε`. The preceding expression is a fixed factor less than one times `e^(−Kσ₀)ε`, with σ₀=s/6. The Normal Form Lemma requires the negative exponent. Correct the last expression to `e^(−Ks/6)ε`; the blueprint does so. This is an actual source misprint, not a convention change.
2. **P.195, last derivative display: unverified quantitative concern.** The source prints the scaled displacement and one-half the scaled derivative defect bounded by `2qε₀/(αρ₀σ₀)`, attributed to “usual telescoping arguments”. The blueprint observes that a naive sum of later scaled derivative bounds need not give that number when ρσ is of order N⁻²ρ₀σ₀. That identifies a missing derivation; it does **not** exhibit a violation by an actual normalizing map. Possible extra analytic margins and the frequency content of the later remainders have not been ruled out. The present componentwise displacement proof avoids this derivative claim and is adequate for its own conclusions. Keep the derivative estimate as unverified, not a confirmed false assertion. No new ledger confirmation is justified by this review.
3. **P.197, first sentence: no defect established; the proposed time correction is unnecessary.** The source says “For Ks ≤ 6 the same reasoning applies … in original coordinates”, with g=0 and f*=f. On the **original** strip, the real action speed is at most `ε/(es)` by B.3. At the source's time `T=sr exp(Ks/6)/(5ε)`, total movement is at most `r exp(Ks/6)/(5e)≤r/5` when Ks≤6. A first-exit argument inside the radius-r action ball therefore proves the stated bound, forwards and backwards. There is no need to pretend `norm(f)≤exp(−Ks/6)ε`, and the source never states that inequality here. If ε=0 the action is constant and the limiting infinite-time conclusion is immediate. Thus the factor e in this part's true trivial helper is not evidence of an erratum in Proposition 1.

The stricter Lie-series range, complex-domain generality, max/l¹ norms, strengthened componentwise displacement bounds and explicit θ bound are disclosed adaptations. The p.194 sign is the only one of these three concerns independently confirmed as an erratum. The ledger was not edited.

Closeout: all three reviewed source hashes still match the captured snapshot. `git diff --check` passed, and both reports passed explicit table-column, trailing-whitespace and conflict-marker checks. Other writers changed unrelated blueprint masters/parts during this turn; those changes were left untouched and are not covered by this review. Only the two requested review Markdown files were edited by this reviewer.
