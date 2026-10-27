# Track N additions v0.4: independent delta statement audit

27 October 2026. **READY FOR OWNER — N-PARTIAL-CONVEX and its seven supporting
new definitions only.** `partialConvex_nekhoroshev` is **APPROVABLE** with the
explicit convex specialization of the source proof documented in the packet.
No further statement change is required. F-NADD-1 is closed at the statement
and source-route audit level by checking that specialization, not by inferring
global source steepness from a collar. Both averaging theorems remain
**DEFERRED**, with F-NADD-2/3 unresolved. This verdict does not approve the full
three-theorem draft, freeze anything, or certify a Lean proof.

## 1. Authority, scope and pins

Read the complete delta brief, AGENTS.md, both underlying audit briefs and the
N v0.3 audit; current N statement/source/notes, including the v0.4 response;
and the final N and P drafts. PLAN, DECISIONS, TRACKS, all three research rounds
and the archived K model audit were read in the preceding P delta audit in
this session. Round 3 controls the research corrections. D22 adopts milestones;
exact additions still require owner approval. D20's earlier frozen surface
is not approval of this text. The auditor wrote neither these drafts nor the
v0.3 N audit. No subagents or state-changing git calls were used.

Only this report and new scratch under `.drafts/N/audit-scratch/` were written.
Existing scratch was read or executed without modification. Frozen definitions,
manifest, input drafts, ledger, generated files and other reports were left alone.

| Input | SHA-256 |
|---|---|
| `.drafts/N/v0.3/Additions.lean`, 194 lines | `f7b3278008de764bf252d5aa02f43ac9234ac79cbb63b5191931e54e4dffbc5e` |
| `.drafts/N/Additions.lean`, final v0.4, 201 lines | `ebef5cbca47162d83c5481726408bd4c2977375526c3579d0c791dbd1b80af4d` |
| N intermediate seen during P audit, 199 lines | `76ed6371a4e95b95bc275ab517d466f0c284d48027cc9ffe29b3d7bb3f355873` |
| `.drafts/P/Additions.lean`, v0.4 | `bf4b9d474e4c3fa32844af887f90851cb5bd026c101f2b5fc882b9169d5e72f0` |
| N `statement.md` | `5dde0c38d2e3c4c422633913ac856769543fc837a2e01ddf23521404fa685470` |
| N `notes.md` | `149b39d9b3ef017fb1288d3066fb6bd53806451719e336198819bce29a50b560` |
| N `sources.md` | `06051dc5438c2f0f8a744f0b8c9ad51ff299852ee33531438ad6045ae15a1f12` |
| Nek77 English PDF | `0bfe624cf108096badd7e27fc40ca800e2948b68dce2bf8b9c653e0eaec4def6` |

Printed/PDF pages coincide. Rendered Nek77 **pp.28,29,30,47** were viewed in
this audit; the proof dependencies on pp.31–33,36–44,47–49 were also read from
local text extraction. These pinned source pages, rather than the reviser's
summaries, determine the checks below. No later theorem or inaccessible AKN
source was substituted. The checkout observed during checking was
`9feeb128b9debca1c25f7484e34ec2bfd0bcece7`; file hashes govern this audit
because unrelated blueprint work and commits occur concurrently.

## 2. Every changed line, and declaration verdicts

The full v0.3-to-v0.4 unified diff consists of four hunks:

| Hunk | Exhaustive account |
|---|---|
| `@@ -14,13 +14,14 @@` | Module-doc title v0.3 → v0.4; replace the source-conversion pointer by the convex-proof-specialization pointer; add explicit averaging DEFERRED status; remove backticks around the heartbeat-rule phrase in that comment. No code changes. |
| `@@ -87,22 +88,26 @@` | Replace the partial-theorem docstring's last sentence by three sentences explaining the enlarged tube, direct Lemma 10.6 proof and rejection of global boundary-centre steepness. Add G′ to the fast-domain telescope, its openness/convexity, and hcollar. Change hhol,hC2,hreal,hHess,hdef from G to G′; change the post-threshold normalized perturbation premise to G′. All other fixed binders, constants, actual solution, initial erosion, stopped-history implication and output are unchanged. |
| `@@ -137,8 +142,9 @@` | Rewrite only the mean-averaging docstring opening to mark F-NADD-2 deferral and wrap its description. The theorem declaration and proof body are unchanged. |
| `@@ -163,7 +169,8 @@` | Rewrite only the most-averaging docstring opening to mark F-NADD-2/3 deferral and wrap its description. The theorem declaration and proof body are unchanged. |

No other changed lines exist. All nine definition commands and both averaging
theorem commands are identical after masking comments. Within the partial
theorem, the entire suffix from `∀ z : ℝ → Phase (n+k)` through its placeholder
body is literally unchanged. The mechanical receipt is
[delta-preservation.json](../../../.drafts/N/audit-scratch/delta-preservation.json).
The exact partial theorem block in statement.md matches the final draft.

The final N draft and the earlier `76ed6371…` intermediate have **identical
declaration code**. Their only differences are the heartbeat-comment backticks
and wrapping of the two deferred theorem docstrings, accounting for the extra
two lines. The G′, collar, analytic-domain and stopped-output interface seen
in the P delta audit has not changed mathematically.

| Declaration / final locator | Verdict and approval scope |
|---|---|
| `partialConvex_nekhoroshev`, 94–124 | **APPROVABLE**, restricted packet; F-NADD-1 resolved as explained in §3. |
| `averaging_mean`, 151–171, changed docstring only | Deferral is correct. Original APPROVABLE WITH CHANGES/source hold remains; **excluded** from this approval packet. |
| `averaging_most`, 177–193, changed docstring only | Deferral is correct. Original APPROVABLE WITH CHANGES/source and proof-import hold remains; **excluded**. |
| Seven partial definitions: `complexifyPhase`, `innerCore`, `partialComplexDomain`, `HasDefiniteFastPart`, `IsPartialPerturbation`, `partialTimeExponent`, `partialDriftExponent` | Unchanged **APPROVABLE** definitions; included. Literal formula/predicate bodies, no chosen witnesses, no result bundles. |
| `HasAveragingFrequencyRank`, `averagingError` | Unchanged definition verdicts; not needed by, and outside, the restricted partial packet. Their guarded future use and deferred source context remain as in v0.3. |

There are seven **new** definitions in the restricted packet; their frozen
imports remain the authoritative existing definitions. None is a theorem-shaped
alias for the requested drift conclusion.

## 3. F-NADD-1: wedge replay and exact source-proof substitution

### The wedge still refutes the naive inference

Reran the original `.drafts/N/audit-scratch/DefinitionChecks.lean` at default
budgets. Its `no_uniform_transverse_spheres` again proves that

    W = {(x,y) : 0<x<1, |y|<x}

has no uniform nonempty vertical sphere intersections at all its centres.
For h=3x+(x²+y²)/2 and I=(q,0), the transverse line is x=q and radius η≥q
has empty intersection with W. This is exactly the source p.28 issue:
its infimum is over the sphere **intersected with its domain**, and is required
to be “defined on [0, δ)”. A real `sInf ∅ = 0` cannot supply that premise.
The replay has axioms `[propext, Classical.choice, Quot.sound]`, no `sorryAx`.

The new formulation does **not** contradict this result. Its collar supplies
full transverse spheres in G′ at centres in G. It still does not prove uniform
source-global steepness at every centre in an arbitrary bounded G′. Even G′
could be a wedge with a small collared working region inside it. The revised
packet expressly abandons that inference. It contains no `sInf` steepness
predicate, no assumed projected-gradient estimate and no assumed drift bound.
A new scratch theorem `collar_transverse_point` checks that the very missing
vertical witness in the old refutation is available **in G′** under hcollar.

### Full-sphere estimate at working centres

For I∈G and v in an r-plane V⊥ω(I), 1≤r≤n−1, |v|₂=η<ρ gives
|v|∞≤η<ρ, hence I+v∈G′ by hcollar. Positive-dimensional full spheres are
nonempty and compact. Convexity of G′ and the signed Hessian bound give

    σ(ω(I+v)−ω(I))·v ≥ mη²,
    |πV ω(I+v)|₂ ≥ mη.

Consequently their actual finite infimum is at least mη; at η=0 the sphere
is {I} and the projected gradient is zero. For 0<ξ<ρ/2 choose η=ξ to obtain
strict index-one constants Cᵣ=m/2, δᵣ=ρ/2. This checks notes.md Obligation A
without changing the domain inside the infimum. It is not a proof of §4.1.C
at boundary centres of G′.

### The exact Lemma 10.6 input is proved directly

The rendered p.47 source conclusion is that some point of the supplied curve
has restricted gradient **strictly greater than ε**, with

    ε=(Cᵣ/5)(d/2)^αᵣ,
    b<min(d/4, ε/(4L)),
    d<min(g_source/(3L),δᵣ), ε<g_source/4.

Here L denotes the source's upper Hessian constant, not the draft's positive
lower Hessian parameter m. Use the packet's values

    g_source=g/2, L=(n+1)Mcomplex,
    Cᵣ=m/2, δᵣ=ρ/2, αᵣ=1,
    ε=md/20.

The finite-dimensional norm conversion is conservative: max-norm bilinear
control bounds each Hessian entry by Mcomplex, hence its Euclidean/Hermitian
operator norm by n Mcomplex. The larger L suffices. The draft's frequency
max-norm lower bound gives Euclidean length at least g, hence strictly greater
than g_source. Its real C³ and complex C² guards justify these derivatives.

Independently checking Obligation B: let x,y be the curve endpoints with
Δ=y−x, |Δ|₂=d>0. Let V be the direction of its affine plane λ, v=πVΔ
and w=Δ−v. Endpoint distances to λ less than b imply |w|₂<2b and
|v|₂≤d. If both endpoint projected gradients had length at most ε, signed
convexity and the upper Hessian bound along [x,y]⊂G′ would imply

    md² ≤ σ(ω(y)−ω(x))·Δ
         ≤ |πV(ω(y)−ω(x))|₂ |v|₂ + |ω(y)−ω(x)|₂ |w|₂
         ≤ 2εd + 2Lbd
          < (5/2)εd = md²/8.

Contradiction. Thus **one endpoint**, already on the curve, has projected
length >ε, exactly the printed output. No sphere infimum or curve-supremum
attainment is needed. This works for either single global sign σ. The source
closed d-ball containment and small-d requirements are retained and are stronger
than the segment requirement actually used. `endpoint_contradiction` in new
scratch checks the final scalar contradiction with ε=md/20. This scalar check
is not presented as a formalization of the vector/calculus argument.

The downstream source-use audit confirms why this replaces the missing import:

| Source locator | Checked use |
|---|---|
| §5.2.B–5.3, pp.31–33 | Analytic forbidden-motion estimate from the normal-form lemma, complex upper Hessian bound and perturbation bound; no steepness infimum. The **whole** h+μP is now available over G′×D. |
| Prop.7.4, pp.36–37 | Its proof explicitly calls Lemma 10.6 for the curve, and 10.5 for the lattice projection upper bound. The endpoint estimate gives the identical contradiction, at the same ε and parameter relations. |
| §8.7.A, p.39 | Uses that diameter estimate. |
| §8.7.B–D, pp.39–40 | Excludes full resonance using nonzero frequency and Lemma 10.5; not source-global sphere availability. |
| §8.7.E, p.40 | Propagates nonresonance using the upper Hessian bound along a contained segment. |
| Prop.9.2, §9.5, pp.41–44 | Trap and first-exit argument, with the arbitrary supplied interval. |
| Lemma 10.7, pp.47–49 | Numeric parameter system accepts the listed positive coefficients and all αᵣ=1; the a,b formulas remain the printed ones. |

**Disposition:** the gap in the claimed source implication has been replaced
by a sound explicit proof specialization, D-N-ADD-6. A literal black-box
application of Thm 4.4 to arbitrary G′ is still not justified or claimed.
F-NADD-1 is closed for approval of this declared specialization, with its
geometric calculations and exact downstream contracts checked here. The future
Lean provider must prove the geometric/calculus lemmas, normal forms, lattice
arguments and parameter choices. They are ordinary proof obligations, not
premises added to the theorem or completed proofs supplied by this audit.

### Two transcription corrections verified from rendered p.29

- The printed imaginary bounds are **≤ρ**, component by component. The draft's
  strip predicates use **<ρ**. A closed source tube at ρ_source=ρ/2 lies inside
  the open draft tube, with an open analytic neighborhood at every point; this
  changes the threshold, not a,b or d/2. The source's §5.2 recap on p.31 itself
  writes an open tube; no assertion that p.29 prints an open inequality is
  retained. This is a packet-transcription correction, not an adopted source erratum.
- The printed dimension inequality is **n_source≥s≥2**, permitting zero slow
  pairs. The draft's hk:1≤k is a conservative restriction to the proper
  degeneracy scope; it is not a literal necessary premise of the printed
  theorem. The v0.3 binder table's attribution of strict n_source>s to the
  source is corrected here. No zero-pair extension is silently claimed.

## 4. Fresh theorem and binder audit

The threshold is chosen after all fixed domains, collars, widths, h and its
complex Hessian control, and before μ, P, C, the supplied trajectory and queried
time. No constant uniform over a later h or Mcomplex is asserted.

| Binder or expanded premise | Classification / check |
|---|---|
| `{n k}`, G,G′,D, h, P, z, time variables | Typing and supplied source objects. n counts fast actions; total pairs are n+k. |
| hn:2≤n | Source dimension, rendered p.29. |
| hk:1≤k | Standing restriction to the stated properly-degenerate target; source allows k=0. |
| hG,hG′,hD | Source/open-domain data. |
| hGc,hGc′ | Standing convex-domain specialization for the declared signed-Hessian proof. |
| ρ,hρ | Source fixed positive analytic width, later used at half width. |
| g,m,Mcomplex,hMc | Fixed positive analytic/geometric data; positivity of g,m is explicit inside hdef. |
| hcollar | Standing fixed geometry, **not** a dynamical estimate or a disguised confinement conclusion. |
| hhol,hC2,hreal,hHess on actionNbhd G′ ρ | Source analytic/reality/upper-bound inputs with a conservative enlargement and explicit derivative guard. |
| hdef | Expanded: g>0,m>0; real C³ on the real enlarged slice; one global σ=±1; nonzero frequency; definite quadratic Hessian lower bound for every vector. No drift or source-steepness conclusion assumed. |
| ∃μ₀>0 | Output, after all fixed data. |
| μ>0,μ<μ₀ | Source small positive perturbation scale; guards inverse and negative powers. |
| IsPartialPerturbation G′ D ρ P | Expanded: holomorphy, value bound ≤1, realness on real slice, period 2π in fast angles only. Source/standing analytic input, chosen after threshold. |
| C>0 and IsSolutionOn … [0,C] z | Source arbitrary supplied segment; actual guarded Hamilton equations, not an asserted global flow. Fast-domain slot is G. |
| initial membership in innerCore G μᵇ | Source initial erosion with stronger closed max-norm convention; implies the source-domain erosion in G′ as well. |
| t∈[0,min(C,T)] | Queried output time. |
| ∀u∈[0,t], slow(z u)∈innerCore D μᵇ | Source stopped-history condition; no assumption after t. |
| final norm bound | Output. |

**EXCESS=0.** No inverse matrix, arbitrary choice of chart, real empty infimum
or unguarded derivative is used. The frozen `IsSolutionOn` includes both
DifferentiableAt H and actual HasDerivAt equations. Its two-sided endpoint
semantics are attained by locally extending a genuine smooth solution. Frozen
`fastShift` adds 2π times an integer only in fast position slots. The slow
history orders coordinates (q,p), consistently with the draft's phase order;
permuting source (p,q) is an isometry.

With all αᵣ=1, the printed recursion gives ζ=n(n−1)/2 (and ζ=1 at n=2),
so a=2/(6n²−3n+14), b=3/(6n²−3n+14)=3a/2. The existing scratch checks
reconfirm a=1/16,b=3/32 at n=2 and positivity for n≥2. No optimized 1/(2n)
rate is imported. For actual value norm 0<M≤μ, d(M)≤d(μ) and
T(M)=M⁻¹exp(M⁻ᵃ)≥T(μ). Stronger d(μ) history erosions imply the d(M)
ones. Remark 4.5.A on rendered p.30 supports the value-norm version. If M=0,
the perturbation vanishes locally on the relevant open real tube and fast
actions are constant; no negative power at zero is evaluated.

Empty G admits no initial point; empty D makes the history antecedent fail at
u=0. These are legitimate conditional/vacuous cases, not fake existence or
physical-safety outputs. Disconnected slow domains are allowed and do not
require slow convexity. Unbounded lifted fast angles need no bounds. Restricting
the supplied solution to [0,t] pays the source arbitrary-C history condition
without a future slow-confinement premise; t=0 is immediate.

Natural non-vacuous data exist: n=2,k=1; G=(0,1)², G′=(−1,2)²,
ρ=1/4, h(I)=3ΣIᵢ+(1/2)ΣIᵢ², g=m=1 and Mcomplex=2. The real enlarged
slice has frequency components >7/4, and the complex bilinear maximum norm
of the identity Hessian is 2. The collar holds. Take D an open slow ball,
P=0 and a central initial action/slow point; for μ sufficiently small their
closed μᵇ collars fit. The explicit integrable motion supplies arbitrarily
long solution segments and zero drift. Bounded small trigonometric perturbations
periodic in the fast angles also fit the analytic class. Concave −h is allowed
by the opposite global sign. No dynamical counterexample survived this pass.

## 5. Deferred scope and all other v0.3 dispositions

The approval packet is exactly the seven definitions named in §2 and the partial
theorem. It is self-contained: a generated scratch module
[DeltaPartialOnly.lean](../../../.drafts/N/audit-scratch/DeltaPartialOnly.lean)
contains just those definitions and the complete partial statement as a
Prop-valued definition, with no averaging declarations or placeholder proofs.
It elaborates; `#print axioms partialStatement` gives
`[propext, Classical.choice, Quot.sound]`. Its telescope/result is copied from
the final candidate, changing only the command into a proposition definition.
This verifies that the partial proposition needs neither the averaging rank
predicate, error supremum, mean theorem nor local-existence theorem.

F-NADD-2/3 are **deferred, not solved**: complete primary AKN hypotheses and
the local/smooth-source deduction are still unavailable. Both unchanged theorem
types retain the v0.3 mathematical and binder checks, including absolute volume,
positive tolerances, fixed-system constants and the guarded error supremum;
none of that upgrades them to approval-ready. The acquisition checklist in the
revised packet correctly asks for the complete primary context and proof.

F-NADD-4 remains the provider obligation in §6 below. F-NADD-5/6 remain PASS:
complex bounds precede constants and source exponents are unchanged.
F-NADD-7/8 retain their guarded, deferred statuses. F-NADD-9 is **CLOSED** as a
citation correction: sources.md now attributes rates only to NO22 slide 14;
a fresh extraction of that actual slide confirms it prints no rank formula.
The two transcription corrections and conservative k≥1 scope are now explicit.
No other v0.3 defect was hidden, repaired by a conclusion-shaped premise or
misreported as a new theorem proof.

## 6. Final N-to-P interface

P's pinned v0.4 `StoppedActionBound` at 132–139 and hstop at 151 are unchanged
from the P delta audit's checked mathematical interface. The final N theorem
is declaration-code identical to the intermediate N file checked there.
Compatibility is conditional on the following actual provider work, with
constants fixed before physical μ and initial data:

1. Use n fast actions, k=n slow pairs. Construct the regular Poincaré chart,
   including circular points, with exact fast action Λᵢ=P.keplerAction,
   canonical covariance and time/derivative transport for the literal moving-Sun
   Hamiltonian. Transport Fin(n+n) to Fin(n*2). No coordinate chart is assumed
   in the P headline.
2. Choose a working G containing the **whole closed outer** physical action
   box with a positive collar, and a still larger positive convex G′ satisfying
   closedBall∞(I,ρ)⊆G′ for every I∈G. Keep the extra actionNbhd G′ ρ away
   from zero actions and retain separated analytic geometry over G′×D.
3. Choose Aplus>outerAMD and
   `D={(ξ,η):(1/2)Σ(ξᵢ²+ηᵢ²)<Aplus}`. The closed slow ball at outerAMD
   has a uniform positive max-norm collar in D; the documented
   `(sqrt(2Aplus)−sqrt(2outerAMD))/(2sqrt(2n))` is a conservative one.
   Strict outer-domain membership alone would not establish an erosion of
   that same domain. All h and P analytic/complex bounds must hold over G′,
   not just G or one visited segment.
4. For hK=−Σmᵢ³/(2Λᵢ²), prove frequency mᵢ³/Λᵢ³, Hessian
   diag(−3mᵢ³/Λᵢ⁴), one concave sign, nonzero lower frequency and complex
   upper Hessian control on the enlarged domain. Prove the common perturbation
   bound B₀≥1. For unscaled perturbation Hpert set ν=B₀μphys,
   P=Hpert/B₀, so μphys Hpert=νP. If H₁ denotes the already scaled actual
   perturbation instead, the notes' P=H₁/ν is the same normalization.
5. Apply N separately on each queried positive prefix, and for negative time
   to the reversed actual trajectory and −H. Intersect thresholds. With
   δ=νᵇ/2 and ν small enough, the fixed G/D collars supply N's erosions for
   **every tested outer-region segment**, including one-sided [l,r]. At zero
   drift is immediate. Nothing is assumed after the queried time.
6. For ν≤1 and 0<c≤B₀⁻ᵃ, the P horizon exp(c μphys⁻ᵃ) is at most
   ν⁻¹exp(ν⁻ᵃ). Shrink μ* so both action and AMD collars in amdConfinement
   fit δ; axis drift follows from uniform Lipschitz control of Λᵢ²/mᵢ².

**Verdict:** no final N/P signature mismatch. F-NADD-4 is retained, not paid
by the statement audit. N provides hstop only for these small-mass choices,
not arbitrary mu,T,delta supplied to the conditional helper. Physical existence,
Newton reconstruction, angular momentum conservation and bootstrap continuation
remain P's proof work. The partial theorem supplies no full-horizon slow
confinement, actual-mass threshold or realistic-mass Newtonian certificate.

## 7. Errata, deviations and validation receipt

No new suspected printed-source defect was found. Carry forward E-N-ADD-1:
Nek77 p.15 §1.18 prints “the perturbation H−H₀ becomes small” in the close-approach
discussion; reciprocal-distance interactions grow there. Candidate reading:
“ceases to be small.” The prior rendered-page verification was also inspected
in this session's P audit; no Russian-original or publisher correction is
claimed. No theorem relies on that sentence and no ledger entry was edited.

D-N-ADD-6 is the declared convex proof specialization and explicit G′/collar
strengthening reviewed above. Retain it in the exact approval record; do not
summarize it as a proof of literal global source steepness. The half-width and
zero-slow-pair items correct packet transcriptions, not source mathematics.
NO22's former rank attribution was a packet error, now corrected. This audit
introduces no new mathematical premise or deviation.

Lean hard rules (verbatim):

1. **Never use `set_option maxHeartbeats`** (or any heartbeat-budget override). A default-heartbeat elaboration failure is a design signal to refactor or split the proof, not something to mask with a larger budget. If a proof will not elaborate at default heartbeats, report it as a design signal.
2. **No Lean file may exceed 1500 lines of code.** When a file approaches the cap, split it into focused modules, preserving public import paths as cheap facades.

Actual commands, run serially at default Lean budgets:

```text
$ nice -n 5 lake env lean .drafts/N/Additions.lean
warning: declaration uses `sorry` at 94:8, 151:8, 177:8
partialConvex_nekhoroshev, averaging_mean, averaging_most each depend on:
  [propext, sorryAx, Classical.choice, Quot.sound]
exit 0; only the three expected placeholder warnings

$ nice -n 5 lake env lean .drafts/N/audit-scratch/DefinitionChecks.lean
restrict_solution, constant_action_error, no_uniform_transverse_spheres:
  [propext, Classical.choice, Quot.sound]
exit 0; no warnings/errors

$ nice -n 5 lake env lean .drafts/N/audit-scratch/DeltaGeometry.lean
collar_transverse_point, endpoint_contradiction:
  [propext, Classical.choice, Quot.sound]
exit 0; no warnings/errors

$ nice -n 5 lake env lean .drafts/N/audit-scratch/DeltaPartialOnly.lean
partialStatement: [propext, Classical.choice, Quot.sound]
exit 0; unused-parameter warnings only

$ PYTHONDONTWRITEBYTECODE=1 scripts/lint_sources.sh
check_lean_modules: PASS (124 Lean files, 0 comparator configurations)
FROZEN-ANCHOR GUARD OK
ABI HASHES OK (94 frozen declarations)
exit 0

$ git diff --check
exit 0; no output
```

Direct draft elaboration is the targeted build for this ignored statement
artifact; no library module was changed. No full build, clean, cache fetch or
resource override was run. Lint excludes drafts; separate code-masked checks
confirmed 201 lines, nine definitions, three theorem-body placeholders, valid
module/public exposure, no forbidden proof escapes/types/resource settings and
no line over 100 characters. The scratch geometry proof is below 1500 lines
and placeholder-free. An initial scratch import named an unavailable PiLp
object; it was replaced with existing frozen/tactic imports without building
new modules. The successful geometry check is the final receipt.

Files authored: this report; scratch `DeltaGeometry.lean`, `DeltaPartialOnly.lean`,
`delta-partial-only.log`, `delta-preservation.json`, page renders
`delta-nek29.png`, `delta-nek47.png`, and proof-page text extractions
`delta-nek31-33.txt`, `delta-nek36-44.txt`, `delta-nek47-49.txt`.
Unrelated concurrent blueprint changes were left untouched. No auditor edit
was made to the candidate or to its frozen dependencies.

**Final restricted-packet verdict: READY FOR OWNER.** No required Lean or
packet revision remains for N-PARTIAL-CONVEX with the declared proof
specialization. The source normal-form/provider proof and the P analytic bridge
are unpaid; the two averaging theorems remain outside approval. All three draft
theorems still depend on sorryAx, so no theorem proof closure is claimed.
