# Track N, Part 11: independent review 2

27 October 2026. Re-review of commit `896ca4c` on `inp`, “Blueprint N Part 11: review round 1 fixes”. This report supersedes the round-1 verdict on the energy estimate. The reviewer did not write or edit the blueprint. Only this report and scratch in `.drafts/N/review-scratch-p11/round2/` were retained; no frozen file, manifest, ledger, blueprint input or git state was changed.

## Verdicts

**Route: ACCEPT WITH FIXES. Part 11 ready for graph extraction: NO — REVISE the remaining contracts first.**

The repaired `bpN:p11:energy-free` passes this mathematical review. Its smaller first-exit radius and explicit slow-distance hypothesis put the entire relevant orbit stretch inside the domain of the Cauchy estimate. The new time constant, the smaller covering parameter `b_c=1/32`, the re-derived block data, and the stopped transfer all check. I found no counterexample to the resulting real-Hamiltonian route or to its precisely scoped stronger time/drift estimate under the **frozen slow erosion**.

However, **not every N11 finding is closed**. N11-05 remains open at the statement-contract level: the newly written homological lemma drops the reality assumption on the frequency, and the normal-form theorem promises a real map and real remainders without assuming h real on real points. These are false as written; explicit counterexamples appear below. The frozen theorem already supplies the missing realness, so this is a local interface repair, not a request to change the frozen theorem or abandon the route. Graph extraction must not encode the false, more general statements.

## Inputs, scope and pins

| Input | Size | SHA-256 |
|---|---:|---|
| `blueprint-N/parts/p11a-partial-route.tex` | 85 lines; 14,658 bytes | `87ed2319246710f277ac578ba415022af0b2d8af3d4f9c330f5e2535f07d9e4c` |
| `blueprint-N/parts/p11b-partial-nf.tex` | 148 lines; 27,899 bytes | `644e3c5c57e380fdd0b129bcb51bc4e30c87b5bad3684e5bd0aa675ac82f4344` |
| `blueprint-N/parts/p11c-partial-stability.tex` | 191 lines; 38,237 bytes | `09f3c82c9400f13a640eaeacdebbd0cd0d5e6421aefbb532ab9cf4f0c0c67f1b` |
| `blueprint-N/parts/p0-conventions.tex` | 340 lines; 27,421 bytes | `5fd30bca0d327d1695f90857c6b0c135cb3842d7f11f4f513521e1f15b7260cc` |

Re-read AGENTS.md, PLAN.md, DECISIONS.md, the full launch and generic review briefs, the round-1 findings, all three revised files, the D25 Part 0 subsection and frozen target. Rechecked the relevant Part 3 continuation/solution interfaces, Part 4 norms and Cauchy estimates, Part 5 flow/composition package, Part 6 realness/divisor/iteration interfaces, and Part 8 covering and cutoff statements. The statement-audit and source context read in round 1 remains context; this is not a new global audit of Parts 1–9.

Read the pinned Pöschel printed p.203 directly as a rendered page this round: its covering lemma allows arbitrary positive b and requires `A≥pM/(bm)+√2`; its resonance-closeness assertion is for nontrivial lattices. The revised energy estimate is new campaign mathematics and was recomputed independently below, not attributed to a source theorem. Nek77 Part II remains unpinned; this route does not import it. The frozen theorem still has its manifest-bound `by sorry` body.

## N11-01 through N11-08: disposition

| Round-1 ID | Status | Evidence in the revision |
|---|---|---|
| N11-01 | **CLOSED** | `ef-tube` proves the fast distance is strictly below `17r̃/64<r̃/2`; the new hypothesis controls the slow distance by `<r̃/2`. The bracket norm on `D^e_(r̃/2,s̃/2)` therefore bounds every point used in the energy calculation. All changed constants and the resonant consumer check. |
| N11-02 | **CLOSED** | Route/deviation/status remarks explicitly limit the stronger drift/time to the frozen margin `d=μ^b_n`, flag the new mathematics for audit, and disclaim a theorem with slow margin `μ^(1/(2n))`. The monotone comparisons remain correct. Closure of this finding does not certify the overgeneralized Part 11b contracts. |
| N11-03 | **CLOSED in its mathematical content** | `bpN:p11:continuation` supplies independent periodic/transverse dimensions. Transfer states downward closure of E, proves the slow margin on each good prefix before invoking T3, and separates continuation at `T_+=sup E`. The residual derivative-convention inconsistency is recorded below. |
| N11-04 | **CLOSED in the proof/application** | `hessian` now assumes nonempty G; `final-empty` handles empty G before the covering argument. The unconditional-looking covering inequality still printed in the constants definition needs the minor qualification below. |
| N11-05 | **NOT CLOSED** | Substantial improvement: explicit extended bracket, covariance, adjoint, composition, transform, canonical-map, homological, iterative and normal-form statements and proofs are present. But the homological reality clause and normal-form reality output lack required hypotheses. See N11R2-01 and the counterexamples. |
| N11-06 | **CLOSED** | The revised sum is `0.00123+0.02875+0.09198=0.12196<0.1220`. The complete energy contradiction also checks with rational bounds using just `1/e<0.368`. |
| N11-07 | **CLOSED** | Stability and normal-form estimates now use a strictly positive upper bound ε, and energy uses a strictly positive upper bound ηbar. An actual norm may be zero without causing any division by zero. |
| N11-08 | **CLOSED** | `r_B`, λ and c are fixed once for a block; a smaller iterated radius R has physical width λR. Neither the bracket weight nor the rescaling is recomputed during iteration. |

## Remaining findings and exact fixes

| ID | Location | Severity | Finding/evidence | Required fix |
|---|---|---|---|---|
| N11R2-01 | `p11b`, lines 104–111 (`hom`) and 128–147 (`nf`) | **major; blocks graph readiness** | The homological lemma says symmetric Λ and real f imply real φ, without assuming real ω. Its cited Part 6 parent explicitly requires real ω. The normal-form theorem assumes only holomorphic h and real f, but concludes real Ψ,g,f_*. Its final reality step invokes `iterative(e)`, which requires h real. Both overstatements can be refuted; see below. | Add real ω on real points to the homological reality clause. Add h real on real points of `V_R(I_c)` to the normal-form theorem, or make its realness conclusions conditional on that premise. Explicitly set `H=h+f` in its statement. Check every use of `hom`/`iterative(e)` and record the source of realness. The frozen consumers have it in `domain(a)` already. No frozen change is needed. |
| N11R2-02 | `p11b`, lines 76–82, `composition(i)` | **minor domain wording; potentially false broad reading** | The flow is defined on `Ω^(1/2)`, but only its restriction to `D^e_(R−ρ,s−σ)` is proved to map into `D^e_(R,s)`. The phrase “maps this set” can refer to `Ω^(1/2)`. If the outer radii are larger than R,s, that assertion fails already at time zero. | State explicitly: “for z in `D^e_(R−ρ,s−σ)`, the flow satisfies …”. Retain the larger existence domain separately. Do not attach the smaller image conclusion to every point of `Ω^(1/2)`. |
| N11R2-03 | `p11c`, line 105, `rs-red` | **minor incorrect equality** | The first displayed replacement of `αr/(2^7qK_a)` by `p√nMr²/(2^7q)` is an equality only when `K_a Lr=α/p`. The proposition assumes an inequality, and the text itself says equality is not needed. | Replace this equality by `≥`. The resulting chain proves exactly the required smallness; no constant changes. |
| N11R2-04 | `p11a`, line 82, constants definition | **minor scope residue from N11-04** | The assertion `A≥pM₁/(b_cm₁)+√2` needs `M₁/m₁≥1`, which has now correctly been proved only on the nonempty-G branch. The constants definition itself still states the inequality for unrestricted frozen data. | Qualify the inequality by `G≠∅`, or move that assertion into the nonempty proof branch. Numeric definitions themselves are meaningful in the empty case. |
| N11R2-05 | `p11c`, line 5 and uses of Part 3 solution lemmas | **minor interface convention** | Extended orbits still allow one-sided derivatives at interval endpoints, whereas Part 3 and frozen `IsSolutionOn` use two-sided derivatives. The proofs use Part 3 on closed prefixes without stating a bridge. | Use the two-sided predicate throughout these helper statements, which the frozen input satisfies. Alternatively prove the within-interval uniqueness/restriction bridge explicitly. This does not obstruct the stopped argument mathematically. |

Two additional small clarifications should accompany these fixes: for Λ=Θ, prove `||Π_Λω||₂=0<m₁r/32` directly instead of relying on the nontrivial-lattice closeness clause; and transport the absolute divisor/projection bounds from `h₁` to `σh₁` explicitly in the concave branch. Both are immediate sign/zero identities and require no new hypothesis or parameter choice.

## Explicit refutation of the Part 11b reality contracts

The standing notation before `hom` says h is holomorphic; it does **not** say h is real on real points. Neither `cond-nr` nor `cond-L` supplies this condition. The missing premise cannot be inferred from “Notation of Part 6”: that part states the real-frequency premise explicitly in its homological conclusion.

For the homological lemma take one fast angle/action, one slow pair, Λ={0}, and

```text
h(I)=iI,     ω=i,     f(θ,I,x)=a cos(2πθ),     a>0.
```

All functions are independent of the slow variables. On any finite strip f has finite weighted norm and is real on real points. For every nonzero integer Fourier index j, `|jω|=|j|≥1`, so (N-dir) holds, for example with α=1, p=q=2. At cutoff at least 1, the generating function defined in the lemma is

```text
φ(θ)=−i a sin(2πθ)/(2π).
```

Indeed `i ∂θφ=f`; φ is purely imaginary and nonzero at θ=1/4. Thus the lemma's unconditional realness clause is false. The algebraic and norm clauses are unaffected.

There is also a counterexample to the **existential normal-form conclusion as written**, not merely to its chosen construction. Choose

```text
n=k=1, I_c=0, S={0}, R=r_B=s=1, w=100,
c=2π/10000, p=q=2, α=1, L=0, K_a=6, Λ={0},
ε=1/10000, a=ε exp(−2π),
h(I)=iI, f(θ,I,x)=a cos(2πθ), H=h+f.
```

These satisfy the written hypotheses. In particular `|f|_(1,1)=ε`, `ε≤1/1536=αR/(2^7qK_a)`, `κ=12π≥6`, and `c≤1/32` gives (SL). The frequency is constant, all nonzero divisors have modulus at least 1 and L=0 is valid.

Suppose the promised real Ψ,g,f_* existed. For every real point of its domain, take imaginary parts of

```text
H∘Ψ=h+g+f_*.
```

Since Ψ,g,f_* are real there, this forces `Ψ_I=I`. Covariance `DΨ Ω_c DΨᵀ=Ω_c` then gives `{Ψ_θ,Ψ_I}_c=1`, hence `∂θΨ_θ=1` along the real slice. At any fixed real transverse point, therefore `Ψ_θ=θ+A` for a real constant A. The resonant polynomial g is θ-independent because Λ={0}. Consequently the ±1 Fourier coefficients of f_* at that transverse point have moduli a/2. Its weighted norm at `s_*=1/6` is at least

```text
a exp(2πs_*) = a exp(π/3) > a.
```

But the claimed bound is

```text
|f_*|_(1/2,1/6) ≤ ε exp(−κ/6)
                 = ε exp(−2π) = a,
```

a contradiction. The helper's n≥1 scope permits this example. It does not refute the frozen real-Hamiltonian theorem. Adding the already-available source premise that h is real removes this example and makes the iteration's reality proof applicable.

## Recomputed energy estimate

Write `R=r̃`, `s=s̃` for the **analytic** normal-form radii. The new hypotheses are

```text
ζ_g≤5ε/4,  η≤ηbar≤ε/e,  ε≤mR²/4096,
16kc s≤R,  0<δ≤mR/16,  ρ′=δ/(4M)≤R/64.
```

At a first exit of the action displacement from `Δ=R/4`, for every intermediate τ:

```text
|I(τ)−I_c|∞ ≤ ||I(τ)−I(0)||₂+||I(0)−I_c||₂
             < R/4+R/64 = 17R/64 < R/2.
```

The explicit slow hypothesis gives `dist∞(x̃(τ),S̃)<R/2`, and angles are real. Thus **all** orbit points used lie in `D^e_(R/2,s/2)`. No fast or slow derivative estimate is now used outside its analytic margin. The round-1 high-power counterexample near the outer boundary is excluded from the relevant stretch.

The segment from I(0) to I(t*) lies in the real action domain. The Hessian bound gives `||Πω₀||₂≤5δ/4`. Conservation of `h+g+f_*`, convexity and the projection decomposition yield

```text
(m/2)Δ² ≤ A + (5δ/4)Δ + C,
A≤2(ζ_g+η),  C=|⟨ω₀,Π⊥ΔI⟩|.
```

Since `δ≤mR/16` and `R=4Δ`, the middle term is at most `(5m/16)Δ²`. Therefore

```text
(3m/16)Δ² = 3mR²/256 = 0.01171875 mR² ≤ A+C.
```

The bracket/field sign is still correct:

```text
d/dt f_*(y) = ∂θf_*·ω(I)+{f_*,g}_c,
İ=−∂θg−∂θf_*,   Π⊥∂θg=0.
```

Integrating the identity in the transverse-energy expression and adding/subtracting ω(I) gives

```text
C ≤ 2η + |t*| [ sup|{f_*,g}_c|
                 +(MΔ+5δ/4) sup||∂θf_*||₂ ].
```

The slow term is included in `{f_*,g}_c`; the slow variables are not held constant. Cauchy on the larger analytic tube gives, **at the established smaller-tube points**,

```text
sup|{f_*,g}_c| ≤ 4ηζ_g/(Rs) ≤ 5mRη/(4096s),
sup||∂θf_*||₂ ≤ η/(es).
```

Hence, with `m≤M`,

```text
C ≤ 2η + [5/4096 + 5/(64e) + 1/(4e)] M R η |t*|/s.
```

The exact coefficient is approximately `0.1219311447594`. The revision's rounded upper bounds add to `0.12196<0.1220`, correctly. In fact the weaker declared numerical bound `1/e<0.368` already gives the exact rational estimate

```text
5/4096 +(5/64+1/4)(368/1000)
= 62449/512000 = 0.121970703125 < 0.122.
```

Thus the proof need not acquire a more accurate decimal estimate for e. For

```text
T_* = s m R/(20 M ηbar),
```

one gets `C≤2ηbar+0.0061mR²`. The other terms obey

```text
A < 2(5/4+0.368)mR²/4096
  = 0.0007900390625mR² < 0.00080mR²,
2ηbar < 2(0.368)mR²/4096
      = 0.0001796875mR² < 0.00018mR².
```

Therefore

```text
A+C < (0.00080+0.00018+0.0061)mR²
    = 0.00708mR² < 0.0071mR² < 0.0117mR²
    < 3mR²/256,
```

contradicting the lower bound. The new time constant **20** is valid. No frequency upper bound appears in this argument. The same absolute-time calculation handles negative t. Positive ηbar handles η=0 without an infinity convention.

## Recomputed resonant consumer and block data

### Resonant consumer

The normal form is analytic on `R=r/2`, `s̃=s/6`. With `ε≤mr²/2^14` it satisfies `ε≤mR²/2^12`, and `ζ_g≤5ε/4`, `η≤ηbar=e^(−κ/6)ε≤ε/e`. The new resonance condition is exactly

```text
δ=mr/32=mR/16,  ρ′=mr/(128M).
```

The Euclidean map displacement is bounded by

```text
sqrt(n)qK_aε/α ≤ qε/(pMr)
               ≤ mr/(2048M) = d_* = ρ′/16.
```

This uses `α≥p√nMK_ar` and `q/p=8`. The slow displacement `d_x=r/1024` is strictly smaller than `R/2=r/4`. The scalar preimage lemma gives the same initial point with the stronger Euclidean displacement bound supplied by T1. Its angle ratio is at most `30/(128κ)≤30/768<1/4`; action and slow ratios are smaller still.

For T3 use `ϱ=R/4=r/8`. Its slow-distance premise implies the energy lemma's strict `<R/2` condition, and `d_*<ρ′` supplies its initial-action premise. Also `d_*+ϱ<R`. The time is exactly

```text
s̃ m R/(20Mηbar) = smr exp(κ/6)/(240Mε) = T_Λ.
```

Transfer then gives `||I−I_c||₂≤r/8+2d_*<r/2`. This verifies the consumer of the new energy estimate, not only the energy estimate in isolation. For the nonresonant case, the unchanged angular-derivative argument gives `6/(5e)<0.442<15/32`, and transfer gives `31r/64≤r/2`.

### Covering with b_c=1/32

Let `x=M₁/m₁≥1`, on the nonempty-G branch. With `p=9/8`,

```text
pM₁/(b_cm₁)=36x,
A=40x≥36x+√2,
```

since `4x≥4>√2`. Part 8's covering lemma genuinely permits these parameters; the old Part 9 choice b=1/8 is not being reused silently.

The full-rank branch is excluded by

```text
||ω(I₀)||₂ < δ_(Z^n)=m₁r₀/32≤g₁≤||ω(I₀)||₂,
```

using `r₀≤32g/m`. The strict first inequality makes equality at the numeric threshold harmless. For the remaining blocks,

```text
r_Θ=r₀/(AK)^n ≤ r_Λ≤r₀/(AK)=R₀/K,
α_Λ=pM₁Kr_Λ,
δ_Λ=m₁r_Λ/32.
```

The Θ radius bound follows directly from `AK≥1`, n≥2; its projection is zero. Nonresonance on the Euclidean cutoff K transfers to the analytic cutoff `K_a=K/√n`, and

```text
L=√nM₁,   K_a Lr=α/p.
```

The analytic Lipschitz bound follows from the complex Hessian operator bound by comparing max and Euclidean norms on the segment inside the polydisc. Finally,

```text
m₁r_Θ²/2^14 = ε₀K^(−2n)=ε,
αr/(2^7qK_a)=sqrt(n)M₁r²/2^10
              ≥m₁r²/2^14≥ε.
```

All these constants check. For a concave original h, multiplying h₁ by σ reverses the frequency sign but leaves absolute divisors, projection lengths and Hessian norms unchanged; convexity then holds for `σh₁`. This justifies the signed block application once made explicit.

### Slow width and exponent comparison

Condition B2 still proves (SL):

```text
64πksr ≤16kρR₀/K≤d²/16=w².
```

The changed constants A, ε₀ and time prefactor do not change the powers. `r_Θ` is proportional to `μ^(1/2)`, so

```text
T_P = C_T μ^(−1/2) exp(c₂ μ^(−1/(2n))),
drift ≤R₀/(2K) = C′ μ^(1/(2n)).
```

The revised constants use 240 in C_T, consistently with the resonant time. The inequalities `2b_n<1/(2n)` and `a_n<1/(2n)` give the B2 threshold and the eventual domination of `μ⁻¹exp(μ^(−a_n))`. The μ_a through μ_e formulas still solve the respective positive-power inequalities in the correct direction. A sufficiently small μ_f supplies the exponential comparison.

This supports the stated stronger drift/time **under the frozen slow margin** once the realness contracts are fixed. It does not prove a stopped theorem with erosion `μ^(1/(2n))`: that would defeat this (SL) balance. No change to the frozen exponents, margin or conclusion is justified or needed.

## Continuation and transfer: refutation attempts

The new continuation lemma works for `R^n×R^N`. For compact nonempty K in U choose a closed δ-neighborhood still in U. The set `[-1,2]^n×K_δ` is compact; a C¹ field is bounded and Lipschitz there by the existing compact-set lemma. Subtract the coordinatewise floor of θ, reducing each δ-ball, δ≤1, to that compact cell. Periodicity transports the same bounds back. These are the uniform data required by Part 3. Neither a bound on all of D nor convexity of the arbitrary slow domain is being assumed.

In transfer, let E consist of good prefixes. It is downward closed. On any good prefix, conjugation equality and the slow displacement give

```text
dist∞(x̃_normal(u),S̃)≤d_x,
```

because the **given** slow path belongs to S̃. Only then is T3 applied on that prefix; its fast bound is used for continuation. This order avoids circularly assuming slow confinement of a normal-form orbit for its whole maximal interval. T3 remains a distinctly stated helper hypothesis, and the resonant/nonresonant propositions discharge it by the estimates just checked. It never enters the frozen theorem's premise list.

The compact transverse set for continuation is the product of the closed action ball about the normal-form initial action and the closed d_x-neighborhood of the compact supplied slow path on `[0,t₁]`. Its action margin follows from `ϱ+d_*<r̃`, and its slow margin from `d_x<r̃`. Unbounded slow domains and paths traveling far inside them do not refute this: the supplied path on the finite tested interval is compact. No whole-window hypothesis is used.

At `τ*=sup E`, all smaller prefixes lie in the maximal interval. If `T_+=τ*`, periodic continuation on the compact transverse set contradicts finite maximality. If `T_+>τ*`, continuity directly identifies both curves at τ*. Local uniqueness extends the good interval unless τ*=t₁. Openness at zero supplies a positive initial prefix when t₁>0. Negative t follows by reversing time and both Hamiltonians; t=0 is immediate. These details close the round-1 open/closed concern.

## Part 4–6 extensions: what passed and what remains

The enlarged base set, fixed rescaling and explicit signatures now make the extension substantially reviewable. Part 4 already permits an independent base dimension, so its Fourier, algebra, projection and Cauchy statements can be instantiated rather than duplicated. The extended fast bracket keeps the angular sum pointwise in the base variable; the slow bracket adds exactly 2k derivative products. Under `16kcσ≤ρ`, its coefficient is at most 1/8 of the first fast denominator, giving the stated coefficient 1/2 for each denominator.

The field bound, weighted covariance using `Ω_c⁻¹`, bracket invariance, adjoint recursion and composition remainder all check. In particular the product of the factors `(h+i)^(−1)` gives `h!/(2h)!`, and after division by h! the bound is `(e²η/8)^h`. Equal-ratio loss subdivisions retain (SL). The Taylor remainder uses `ηhat≤8/9` and `e²ηhat/8≤e²/9<1`, so it tends to zero. The transform's first-order remainder has the correct weights `1/(j+1)` and at most `η/(1−η)(|w|/2+|f₀|)`.

In the iterative estimate, f_t has norm ≤δ as a convex combination of the two Fourier projections. Bracket-g controls its integrand on the first shrunken domain; composition and integration put the remainder on the second. The first-step cases still satisfy their advertised bounds. The subsequent contraction coefficient is exactly

```text
(128/127)(1/16+1/256+1/8)=49/254≈0.192913386<1/4.
```

The telescoped slow displacement is at most `1.17/(16k)` times `qK_aε/α`, hence at most `0.073125qK_aε/α<qK_aε/(8α)` and at most `R/1024`. The limiting radius/strip sums are R/2 and s/6. For N=0, interpret the printed strict `12 ln(2) N>8N` only on the N≥1 branch; the separately supplied N=0 argument is correct.

Thus no new missing analytic estimate comparable to round 1 was found. The unresolved work is to state the realness hypotheses accurately, clarify the image domain, and align the derivative convention. The existing Part 5 flow package and generic telescoping argument can be instantiated at the larger finite dimension; copying their proofs wholesale is unnecessary. The claim that **all** extended statements are already proved in full should wait for those contract fixes.

## Frozen fidelity and source/errata status

Part 0's D25 subsection is byte-identical to the round-1 pin. The rechecked theorem still fixes h, the enlarged G′ domains and its complex Hessian bound before μ₀; P,C,z,t remain after it. It keeps n≥2, k≥1, fast period 2π, the closed max-ball collar, the stopped history through the queried t, time `min(C,μ⁻¹exp(μ^(−a_n)))` and drift ≤μ^b_n/2. The complex-to-Euclidean Hessian comparison introduces no factor n. The empty-G split is valid, and positive upper size bounds guard all divisions even for zero perturbation.

No new suspected defect in a pinned source was found. Pöschel's free choice of b supports the declared `1/32` deviation; his frequency-dependent energy time is not an error. The repaired frequency-independent estimate is an independent argument. Nek77's missing Part II is an acquisition gap, not a theorem refutation. Completing this corrected independent route does not require importing Part II; returning to its specific source proof would require acquiring and auditing the missing material. No ledger entry was changed.

The counterexamples in this report identify missing hypotheses of **unfrozen blueprint helpers**. They are not suspected defects of any frozen declaration. Adding those source realness hypotheses to the helper contracts is legitimate because the intended frozen consumer already supplies them; it is not adding a drift/confinement premise.

## Validation and handoff

No Lean file was written or changed. The generic review brief waives Lean builds for this mathematical audit. No library build, clean, resource override or state-changing git command was run. No `#print axioms` receipt is claimed: the frozen target remains unproved with its manifest-bound placeholder, and no provider or kernel closure is certified.

Checks actually run:

```text
cd blueprint-N
latexmk -pdf -interaction=nonstopmode \
  -outdir=../.drafts/N/review-scratch-p11/round2/latex blueprint.tex
exit 0
Output: blueprint.pdf (90 pages, 1441412 bytes)
LaTeX log lines beginning with !: 0
Undefined-reference warning lines: 0

PYTHONDONTWRITEBYTECODE=1 scripts/lint_sources.sh
exit 0
check_lean_modules: PASS (203 Lean files, 0 comparator configurations)
FROZEN-ANCHOR GUARD OK
ABI HASHES OK (140 frozen declarations)
```

The PDF and build outputs were confined to scratch. Initial build/log redirections failed before running because the scratch directory was created relative to the blueprint directory; that empty directory was removed and the commands above were rerun with the intended location. The successful receipts above are the validation results. Hyperref PDF-string warnings remain cosmetic. A local-label scan found no missing `\ref` target in the three revised files. Rational and floating-point arithmetic recomputations agree as detailed above; the proof uses the rational bounds, not floating-point output as a theorem certificate.

Logs and pins are in `.drafts/N/review-scratch-p11/round2/`. Deliverable: `blueprint-N/reviews/p11-review-2.md`. The corrected energy/covering/transfer mathematics is acceptable; the remaining uncertainty is exact helper-contract readiness, principally N11R2-01. **Do not extract an unconditional real normal-form node from the submitted signature.** Fix the recorded local statements, then graph extraction can follow this route without reopening the old energy-domain objection.
