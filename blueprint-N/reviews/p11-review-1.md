# Track N, Part 11: independent review 1

27 October 2026. Refute-first mathematical review; the reviewer wrote none of the blueprint under review. Only this report and scratch under `.drafts/N/review-scratch-p11/` were written. Frozen files, manifests, the ledger and blueprint inputs were not edited. No state-changing git command was run.

## Verdict: REVISE

**The submitted proof does not establish N-PARTIAL-CONVEX.** Its new frequency-independent energy estimate applies a Cauchy estimate outside the domain on which that estimate holds. This blocks `bpN:p11:energy-free`, the resonant stability proposition, the block theorem and the final assembly. The algebraic identity intended to remove the frequency bound is correct; its quantitative use is not justified. The stronger time/drift exponents remain **UNVERIFIED**.

This is not a refutation of the frozen theorem, nor a demonstrated impossibility of the Pöschel-type route. The extended bracket estimates, normal-form bookkeeping and stopped-transfer idea have substantial valid content. A revised argument with explicit analytic margins and recomputed constants is a plausible repair, but has not been proved here. Do not give this blueprint to a Lean prover as a completed proof, or describe the remaining work as merely translating it.

Nekhoroshev Part II is **not logically necessary** if the campaign completes an independent normal form and stability argument. It is needed as a source acquisition for the alternative of following the announced source proofs of the §10 lemmas. Acquiring Part II would not itself validate the new `1/(2n)` claim.

## Inputs and scope

| Reviewed input | Size | SHA-256 |
|---|---:|---|
| `blueprint-N/parts/p11a-partial-route.tex` | 85 lines, 14,767 bytes | `03368a15bb706cf2d17cef6edaa3795fab51b2f703cca304f3784587a35d74c2` |
| `blueprint-N/parts/p11b-partial-nf.tex` | 103 lines, 20,407 bytes | `8a4484384d32fd71fbd99a8161861ba706483715393936f760a5f1ae326fd3b8` |
| `blueprint-N/parts/p11c-partial-stability.tex` | 184 lines, 40,629 bytes | `fda9962d081d226c55a7aa1d1104a75f327e397b4b2c131064372baecf0e9786` |
| `blueprint-N/parts/p0-conventions.tex`, D25 subsection, lines 260–340 | whole file: 340 lines, 27,421 bytes | `5fd30bca0d327d1695f90857c6b0c135cb3842d7f11f4f513521e1f15b7260cc` |

Read AGENTS.md, PLAN.md, DECISIONS.md, the complete launch brief and generic blueprint review brief; the blueprint plan and writer conventions; the track-K Part 2 model review; the N partial-statement/approval packet, v0.3 wedge audit and v0.4 delta audit; and the round-3 research refutation's exponent discussion. Checked the frozen theorem and all seven named supporting definitions, together with the imported solution and fast-shift definitions. Parts 1–9 were consulted for the actual interfaces used, especially the analytic estimates, Lie transform, normal-form iteration, periodic continuation, resonance covering and block hypotheses. This review does not independently certify all proofs of Parts 1–9.

Primary-source checks used the local pinned PDFs: Nek77 pp.1–3, 28–30 and 45–49, and Pöschel's energy calculation on printed p.198. Text was extracted into the permitted scratch directory; Nek77 p.30 and Pöschel p.198 were also rendered and viewed. In particular the image-only exponent formulas on Nek77 p.30 were read, not inferred from OCR. Existing audits are context, not substitutes for these checks. No external web source or unavailable primary proof was used.

## Findings

| ID | Location | Severity | Finding and evidence | Exact proposed disposition |
|---|---|---|---|---|
| N11-01 | `p11c`, lines 83–87, `stepN:p11:ef-C`; `bpN:p11:energy-free` | **blocking** | The bracket estimate with losses `(r̃/2,s̃/2)` bounds the bracket only on `D^e_(r̃/2,s̃/2)`. The orbit is assumed only in `W^e_r̃`, and its fast-action first-exit radius is `r̃−ρ′`, at least `15r̃/16`. Neither its actions nor its slow coordinates are known to lie in the smaller tube. See the explicit counterexample to the purported pointwise bound below. | Withdraw the energy-free lemma's proof and all unconditional downstream proof claims. Prove a replacement using a larger analytic domain and an explicitly smaller orbit domain, or prove derivative estimates on the actual stopped tube with quantitative margins. Recompute the time constant and recheck every consumer. Do not add an assumed bracket bound to the frozen theorem. |
| N11-02 | `p11a`, route/exponent paragraphs; `p11c`, block/assembly/deviations/status | **major** | The text claims the new exponents as proved and says “Remaining work: none for the blueprint”. N11-01 leaves the central new estimate unpaid. Also the proposed stronger drift/time still uses the frozen, larger slow erosion `d=μ^b_n`; it does not give the corresponding stopped theorem with slow erosion `μ^(1/(2n))`. | Mark the strengthening conditional/unverified until the repaired proof is audited. State its slow-margin hypothesis explicitly whenever advertising its exponents. Keep the frozen theorem unchanged. |
| N11-03 | `p11c`, lines 39–58, `bpN:p11:transfer`, especially `tr-closed` | **major interface gap; repairable** | The cited periodic-continuation corollary in Part 3 is for `R^n × U`, `U⊆R^n`, not for `n` periodic coordinates and `n+2k` transverse coordinates. The proof also argues about `sup E` while concluding that E is closed without stating that E is downward closed. | Write the periodic-continuation lemma with independent periodic and transverse dimensions, deriving uniform local data on a compact transverse set from a compact angle cell. State downward closure of E and run the first-obstruction/supremum argument explicitly. No compactness of the entire arbitrary slow domain is required. |
| N11-04 | `p11c`, `bpN:p11:hessian` and constants/block application | **major local statement defect** | The assertion `m≤Mcomplex` needs a real point in the analytic domain. Empty G and G′ are permitted by the frozen theorem, making the definite and Hessian conditions vacuous; e.g. `h=0`, `g=1`, `m=2`, `Mcomplex=1`, `G=G′=∅` satisfy those conditions. The asserted comparison then fails. | Split off `G=∅` (the supplied initial condition is impossible; choose any positive threshold). On the nonempty branch obtain a point of G and prove `m≤Mcomplex` there before using `A≥11` and the covering lemma. Add the witness/nonemptiness hypothesis to the local Hessian-comparison statement. |
| N11-05 | `p11b`, `bpN:p11:lie`, `iterative`, `nf`; `p11c`, `status` | **major readiness gap** | The extensions are largely justified by enumerated substitutions, not exact reusable generalized contracts. Several changes affect domain dimensions, the symplectic form, all losses and component displacement. The new calculations support much of the substitution, but do not make the existing Part 5/6 statements directly applicable. | Supply the generalized lemma interfaces and their proofs listed below, or state and prove the extended versions in full. Replace the line-count estimate and “none” claim by the actual outstanding generalization/energy obligations. Splitting focused modules will be necessary; no oversized Lean file is authorized. |
| N11-06 | `p11c`, `stepN:p11:ef-C`, decimal display | **minor arithmetic presentation** | The displayed rounded terms sum to `0.0782+0.368+0.115=0.5612`, not at most `0.561`. The exact coefficient is approximately `0.5609667665`, so the intended latter bound can be proved using the exact terms. | Use `5/64 + 1/e + 5/(16e) < 0.561`, with a sufficient explicit bound on e, rather than the invalid addition of rounded upper bounds. This does not fix N11-01. |
| N11-07 | `p11c`, nonresonant/resonant propositions and energy-free time definitions | **minor contract/totality gap** | Several local propositions define a time by division by the actual perturbation norm, which can be zero. The energy lemma declares an infinity convention for η=0, but the other local time formulas do not consistently do so. The final application instead has the positive upper bound `ε(μ)`. | Formulate all stability/normal-form consumers with a positive size upper bound, as Part 9 already does, or separate the zero case with a precise extended-real time convention. Explicitly distinguish actual norm from its upper bound. |
| N11-08 | `p11b`, line 11, interpretation of extended widths | **minor ambiguity** | “w=λr for every r” cannot hold while both w and λ are fixed and iteration shrinks r. The subsequent calculations work only if the rescaling λ and Poisson matrix are fixed throughout a block's iteration, so the physical slow width at a smaller extended radius R is λR. | Rename the starting radius, define `λ=w/r_initial` once, and state that an iterated radius R has physical slow tube width λR. Never recompute c at successive normal-form steps. |

## The first unpaid estimate: explicit domain failure

Write `R=r̃`, `s=s̃`. The invocation in `ef-C` gives

```text
|{f_*,g}_c|_(R/2,s/2) ≤ 4 η ζ_g/(R s).
```

It does not bound the supremum along an orbit in `W^e_R`. Real angles remove the angular-strip issue, but do not remove the action/slow Cauchy losses. The only fast containment established is

```text
|I−I_c|∞ ≤ ||I−I(0)||₂ + ||I(0)−I_c||₂ < R,
```

not `<R/2`. There is no quantitative slow distance from the boundary in the energy lemma at all. Condition (SL) controls the coefficient of the slow Poisson bracket; it supplies no missing distance to that boundary.

Here is a direct refutation of the bound when extended to the stated real orbit domain. Take `R=s=1`, `I_c=0`, any nonempty slow base and any positive c satisfying the slow condition. Let, for positive η and ζ,

```text
g(θ,I,x) = ζ I₁^N,
f_*(θ,I,x) = η exp(−2π) cos(2πθ₁).
```

Both functions are real on real points and periodic. Their weighted norms on the unit action tube and unit angular strip are exactly ζ and η. The zero Fourier mode of g belongs to every resonance subgroup, so `P_Λ g=g`. At the real point

```text
θ₁=1/4,   I₁=1−1/N,   other actions=0,   x in the slow base,
```

the absolute bracket, divided by `ηζ`, is

```text
2π exp(−2π) N (1−1/N)^(N−1).
```

For `N=10000` this is approximately **43.16725**, whereas the claimed extended bound is **4**. The ratio grows without bound with N. Scaling η and ζ down satisfies the smallness restrictions without changing this violation. This counterexample concerns the estimate at points of the domain, not a claim that these functions produce a counterexample to the energy-confinement conclusion. The proof has not supplied an additional orbit property that would authorize that bound.

The slow problem is separate as well: normalized high powers of the two rescaled slow coordinates have bounded values on the tube and unbounded derivatives near its boundary, while their slow bracket contains c times the product of those derivatives. A fixed small positive c does not give a uniform bound there. Thus reserving only a fast-action margin is not a complete repair of the generic energy lemma.

Possible repair directions, **not certified replacement proofs**:

1. Keep a larger analytic tube for g and f_* and perform the exit argument in a strictly smaller tube in both action and slow variables. Reduce the resonance-width and smallness constants as needed. The covering construction permits changing its fixed numerical parameters; constant losses need not change the power `1/(2n)`.
2. Prove an energy estimate tailored to the stopped transfer, using its small slow displacement and the supplied slow path to reserve a slow margin. Use a quantitative initial-action margin (the consumer has `||I(0)−I_c||₂≤ρ′/4`, stronger than the energy lemma's `<ρ′`) to bound fast derivatives. This changes the energy lemma and the transfer hypothesis that consumes it; it cannot be hidden inside the existing unrestricted (T3).

Either repair needs new quantitative work. Merely repeating the current Cauchy invocation, or saying the orbit remains in the original domain, does not pay the estimate.

## What I recomputed

### Period conversion, slow Poisson structure and (SL)

The conversion is correct. For `Hhat=(H∘Θ⁻¹)/(2π)`, `θ=φ_fast/(2π)`, time and I unchanged, the slow equations have weight `2π`. With `x=λ x̃`, they have weight

```text
c = 2π/λ² = 2π r²/w².
```

Thus the homological operator is still `ω(I)·∂θ`; the slow variables are parameters for that equation, but **move** in the transformed Hamiltonian dynamics. The new slow bracket terms in Part 11b correctly account for that motion during normalization. They cannot be discarded in the energy identity.

The fast bracket contributes the two usual terms with coefficient `1/e`. The slow bracket has `2k` products and contributes

```text
2kc / ((r₀−r+ρ_loss) ρ_loss) · |u| |v|.
```

If `16kc σ_loss≤ρ_loss`, its contribution to the first fast denominator is at most `1/8`. Hence `1/e+1/8<1/2` proves the claimed two-denominator estimate. No extra factor n is introduced: the angular derivative sum is taken pointwise in the extended base variable, before its supremum. This agrees with the corrected Part 4 convention.

The block condition is arithmetically correct:

```text
64π k s r ≤ 64π k s R₀/K = 16 k ρ R₀/K ≤ d²/16 = w²,
```

using `s=ρ/(4π)`, `w=d/4` and `K≥256kρR₀/d²`. The loss ratios in the first step, doubled first step and later steps are `4s/(3r)`, `4s/(3r)` and `2s/r`; (SL) controls all of them and equal-ratio subdivisions. This check succeeds for an arbitrary slow base S; it does not require convexity or boundedness of D.

### Exponents: a successful arithmetic check with a limited conclusion

Put `q_n=6n²−3n+14`. For n≥2, `q_n≥32`, and

```text
2b_n < 1/(2n)  iff  6n²−15n+14 > 0.
```

The quadratic has negative discriminant and positive leading coefficient. Thus `a_n<b_n<2b_n<1/(2n)` is correct. With the actual chosen erosion `w=μ^b_n/4`, the (SL) threshold is eventually satisfied because `K d²` is proportional to `μ^(−1/(2n)+2b_n)`, which tends to infinity.

If the block theorem were proved with the displayed constants, its time would indeed be

```text
C_T μ^(−1/2) exp(c₂ μ^(−1/(2n))),
```

and this eventually dominates `μ⁻¹ exp(μ^(−a_n))`; its drift `R₀/(2K)` is eventually at most `μ^b_n/2`. The formulas for μ_a through μ_e and the exponential-domination argument for μ_f check out. These are valid **conditional deductions**, not a proof of their missing block premise.

There is an essential scope distinction. Replacing the slow erosion too by `d=μ^(1/(2n))` would give `w²` of order `μ^(1/n)`, while the largest block radius is of order `μ^(1/(2n))`; the displayed (SL) argument would then fail. Part 11's suggested stronger drift/time is under the **weaker-exponent slow-margin hypothesis** of the frozen theorem. I found no dynamical counterexample to that precisely scoped strengthening. Frozen slow confinement cannot be replaced by full-window confinement or a claim that the slow variables are static.

### Energy identity and conditional constants

With the stated sign convention `{u,v}_c=Du·X_v^c`, the identity is exactly

```text
d/dt f_*(y) = {f_*,h+g+f_*}_c
             = ∂θ f_*·ω(I) + {f_*,g}_c.
```

The self-bracket vanishes, including its slow part. Projecting `İ=−∂θg−∂θf_*` eliminates g from the transverse action equation, since its angular modes lie in Λ. Adding/subtracting `ω(I)` in the integral against `ω(I(0))` gives the stated expression for C with the stated signs; bounding `ω(I)−ω(I(0))` uses only M times the action drift. This is a legitimate way to try to remove an upper frequency bound, including on unbounded G.

The convexity step also checks: `ρ′=δ/(4M)≤R/16`, `Δ=R−ρ′≥15R/16`, and the resonant-frequency linear term is at most `(m/3)Δ²`. The valid left side is then `(m/6)Δ²`.

**Assuming the unavailable bracket estimate**, the exact coefficient in C is

```text
5/64 + 1/e + 5/(16e) = 0.5609667665… < 0.561.
```

At `T_*=s m R/(8Mη)` this contributes less than `0.0702 mR²`. The other two bounds `A≤0.0507 mR²`, `2η≤0.0115 mR²` and the lower bound `225/(1536) mR²>0.1464 mR²` are consistent. So the number 8 is supported by the proposed arithmetic **only if** the pointwise bracket bound holds. N11-01 prevents concluding this T_* from the present hypotheses. Neither a sign correction nor a decimal correction resolves it.

Pöschel printed p.198 instead bounds the transverse energy term by a factor containing the frequency size. Its calculation does not provide the missing estimate involving derivatives in action/slow variables; the new identity introduces precisely those derivatives through `{f_*,g}_c`.

### Stopped transfer and arbitrary slow domains

The core mechanism is sound, conditional on the a priori normal-form bound (T3). On the good interval, conjugation and local uniqueness identify the given path with `Ψ(ỹ)`. Then

```text
||Ĩ−I_c||∞ ≤ ϱ+d_* < r̃,
dist∞(x̃_normal,S̃) ≤ d_x < r̃.
```

For continuation, use the closed action ball about the initial normal-form action and the closed `d_x`-neighborhood of the compact supplied slow path `x̃_true([0,t₁])`. Their product is compact and has strictly positive margins inside the transverse part of `W^e_r̃`. Fast angles are treated modulo their lattice. An unbounded or disconnected D causes no obstruction to this particular compactness argument. A whole-domain diameter bound and a bound on slow speed over the exponential window are unnecessary.

Make the supremum proof precise: E is downward closed; hence equality and all bounds hold on every prefix before `τ*=sup E`. If `T_+>τ*` already, continuity includes τ*. If `T_+=τ*`, compact-modulo-periodic continuation contradicts maximality. The case `T_+<τ*` is excluded by the definition of E. Local uniqueness then extends the prefix unless `τ*=t₁`. This proves the queried stopped interval, using no information after t₁. The current wording is repairable in this way; no dynamical counterexample was found.

The erosion works as claimed: a point of `core(D,3d/4)` has its physical `w=d/4` tube inside D; the given path in `core(D,d)` lies in that base S. The normal-form displacement bound is far smaller than the available slow margin. This **does not** rescue the separately quantified energy lemma, which assumes arbitrary normal-form orbits in the larger tube.

For negative times, apply the same argument to `−H`, `−H̃` and the reversed path; (T3) transfers to this pair by time reversal. The frozen final theorem itself only queries nonnegative t. The supplied frozen solution has two-sided `HasDerivAt` even at endpoints, so it meets a weaker one-sided reading if used, but the blueprint should consistently retain Part 3's two-sided predicate in its formal interfaces.

### Lie transform and normal-form arithmetic

The weighted symplectic calculation is correct: `DF=Ω_c S`, `Ω_cᵀ=−Ω_c`, and

```text
d/dt(Yᵀ Ω_c⁻¹ Y)=0,
Y Ω_c Yᵀ=Ω_c.
```

The latter identity gives bracket covariance and Hamiltonian conjugation. It is the inverse two-form that is preserved in the first identity; copying `YᵀΩ_cY=Ω_c` from the canonical J case would be wrong. Part 11 makes the right replacement.

The changed iterated-bracket estimate gives `(e²η/8)^h` after division by h!, and `e²/8<1`. For the reduced-loss Taylor remainder the proposed ratio is at most `e²/9<1`, so the geometric-series argument still converges. All these losses keep their ratio and therefore retain (SL).

The first-step bounds with coefficient 1 in place of `2/e` still give Case A's `16y₀ε/7`. Case B has coefficient `(32/31)(1/4+1/e)<0.64`. The induction factor is exactly

```text
(128/127)(1/16+1/256+1/8) = 0.1929133858… < 1/4.
```

The claimed rescaled slow displacement follows from the component field bound and telescoping: the cited unsimplified action sum gives the factor `1.17/(16k)≤0.073125<1/8` in front of `qK_aε/α`. Thus its physical displacement is at most `w/1024`. These recomputations support the generalization; they do not remove its need for actual domain-aware interfaces.

## Exact work needed before Lean implementation

The numbered changes are useful proof instructions, but a prover needs these explicit results, with fixed λ and c throughout each block:

1. A Fourier analytic class with n periodic variables and m independent complex base coordinates; restriction, norm monotonicity and Cauchy estimates over arbitrary base sets. Part 4 already has most of this generality. Instantiate m=n+2k rather than reproving its Fourier theory.
2. The extended bracket and decomposed-g estimates as written, including all domain inclusions, pointwise angular sums and the per-loss (SL) premise.
3. A small-field flow package for the scaled three-component norm, including holomorphic initial-data dependence, inverse/injectivity, real-point preservation and translation equivariance. Generalize the existing Part 5 package; do not assume these conclusions from a scalar Lie-series bound.
4. Weighted symplectic covariance using `Ω_c⁻¹`, invertibility of the derivative and conjugation of real solution predicates. Record the coordinate ordering `(θ,I,q̃,p̃)` and finite-index transports.
5. Iterated brackets, Taylor remainder, composition and composition-integral estimates with the new geometric-series ratio. State the precise nested domains of each result, including every reduced loss and why its (SL) condition follows.
6. The extended homological equation, with holomorphic slow-parameter coefficients, reality and resonant projection. Then the iterative lemma with its complete map/remainder/displacement output, not just item references to a theorem with a different ambient dimension.
7. A normal-form induction with actual norm bounded by a positive ε; fixed rescaling; admissible losses at every step; both first-step cases; the telescoped slow displacement; and the resulting map's real/periodic/injective/covariance properties.
8. A **new, valid energy-confinement lemma** with explicit analytic and orbit domains in all transverse variables. This is mathematical work beyond generalizing notation. Derive its time, then prove the resonant stability consumer with the exact premises available from the covering and the stopped history.
9. Periodic continuation with independent dimensions, the real preimage/contraction lemma and the stopped transfer proof described above. Keep the proof conditional helpers separately named; never promote (T3) into a source premise of the frozen theorem.
10. Empty-domain and zero-norm branches, the blockwise choice with `K_a=K/√n`, and final rpow/time comparison and period/sign transport. Choose all constants before μ,P,C,z,t.

Parts 4–6 remain the shared owners of the generalized analytic machinery. No new conclusion-shaped assumption on the frozen statement is justified by any item above. Every Lean module must respect the repository's 1500-line cap and default resource budgets.

## Frozen fidelity: all eight declarations

| Declaration or binder group | Comparison with Part 0 and final assembly |
|---|---|
| `complexifyPhase` | Correct coordinatewise inclusion, positions first, momenta second; no discarded coordinate or chosen chart. |
| `innerCore` | Correct `x∈U ∧ closedBall x d⊆U`, with the existing max/product norms. Positive d is established when used. |
| `partialComplexDomain` | Correct real fast-action condition in G, real slow pair in D, and strict componentwise imaginary bounds for both full coordinate blocks. No slow periodicity is inserted. |
| `HasDefiniteFastPart` | Correct positive g,m, real C³ on the full real slice of `actionNbhd`, one global sign, max-norm frequency lower bound and Euclidean sum of squares in the Hessian coercivity. The complex Hessian bound is separate. |
| `IsPartialPerturbation` | Correct differentiability, value bound ≤1, real-slice reality and shifts by `fastShift`; that frozen shift is exactly 2π in the fast angles. |
| `partialTimeExponent` | Correct real formula `2/(6n²−3n+14)`, with n≥2 in the theorem. |
| `partialDriftExponent` | Correct `3/(6n²−3n+14)=3a/2`; n=2 gives a=1/16 and b=3/32. |
| `partialConvex_nekhoroshev` | Correct n≥2, k≥1, open convex G,G′, open arbitrary D, closed max-ball collar, fixed h and its complex Hessian bound **before** μ₀, then μ,P,C,z,t. Analytic and perturbation hypotheses use G′; the supplied solution and initial erosion use G. Correct `min(C, μ⁻¹exp(μ^(−a)))`, slow test only through t, and final drift ≤μ^b/2. |

The final construction's asserted uniformity even over h, given the numeric data, would be stronger than the frozen quantifier order; it is not a signature mismatch. It is also not established while its proof chain is blocked. The Hessian norm conversion itself is valid: the frozen nested operator norm bounds `|D²h[u,v]|` by `Mcomplex |u|∞|v|∞`, hence by `Mcomplex ||u||₂||v||₂`, giving a complex Euclidean matrix operator bound Mcomplex without an extra n. The exception is the unconditional nonemptiness inference in N11-04.

The G′ collar supplies the local full action tubes at centers in G. No inference of uniform literal source steepness at every boundary-near center of G′ is used by the proposed independent route. This avoids the old F-NADD-1 wedge shortcut. Nothing here identifies a defect in the frozen statement, authorizes editing it or proves it sealed.

## Sources, errata and deviations

Nek77 p.1 explicitly says the proofs of certain §10 lemmas “will be given elsewhere”; the footnote names Part II. The declarations on pp.45–49 do not supply those announced proofs. This is an acquisition/dependency gap, not a suspected mathematical error in the printed theorem. The route decision is entitled to replace that work by an independent proof, but must actually complete it.

Nek77 p.30 prints the erosion and slow confinement for all of `[0,C]`, with C arbitrary, and its conclusion up to `min(C,T)`. The frozen queried-prefix version follows from that time structure by restricting the supplied trajectory to `[0,t]` and applying a source theorem with `C=t` when t>0, with t=0 immediate, **provided the other source hypotheses have been proved**. Its stopped quantifier is not an independent dynamical obstruction. The max-norm erosion, open analytic tube, G′ collar and convex specialization remain documented formulation deviations.

The Pöschel frequency factor read on p.198 is real and is not itself a source defect. The replacement energy estimate and claimed stronger exponents are new campaign mathematics, not published consequences checked by this review. No new suspected pinned-source erratum was established. Earlier reported source defects were not all re-audited here and must not be marked independently verified by this report. N11-01 and N11-06 are blueprint defects. No source ledger was edited.

## Validation and handoff

The generic audit brief explicitly waives Lean builds for this read-only mathematical review. No Lean module was changed or created, and no library build, clean or cache operation was run. Consequently there is no new `#print axioms` receipt or Lean theorem proof to report. The frozen target still visibly has its manifest-bound `by sorry` body; this review is not a kernel or axiom-closure certificate.

Actual checks:

```text
cd blueprint-N
latexmk -pdf -interaction=nonstopmode \
  -outdir=../.drafts/N/review-scratch-p11/latex blueprint.tex
exit 0
Output written .../blueprint.pdf (89 pages, 1407088 bytes).
LaTeX log lines beginning with !: 0
Undefined-reference warning lines: 0
```

The output directory deliberately stays inside the permitted scratch area. The existing tracked PDF was not regenerated. The build has ordinary hyperref PDF-string warnings; compilation does not validate the mathematical claims.

```text
PYTHONDONTWRITEBYTECODE=1 scripts/lint_sources.sh
exit 0
check_lean_modules: PASS (183 Lean files, 0 comparator configurations)
FROZEN-ANCHOR GUARD OK
ABI HASHES OK (140 frozen declarations)
```

Logs: `.drafts/N/review-scratch-p11/latex-build.txt`, `latex/blueprint.log`, and `lint.txt`. A Python local-reference scan found no missing `\ref` target in the three Part 11 files. Numerical recomputations above are checks of the displayed arithmetic, not replacements for exact inequalities in Lean.

Deliverable: `blueprint-N/reviews/p11-review-1.md`. Uncertainties are the truth and quantitative repair of the new energy lemma and the ensuing stronger-exponent claim, together with the explicitly listed generalization obligations. The route is **REVISE**, not ready for unconditional provider implementation. No counterexample to the frozen conclusion has been found.
