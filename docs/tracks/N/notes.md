# Track N — infrastructure, audit notes and handoff

Phase 0 v0.2, 27 October 2026. This is a revised statement-review packet. D17/D18 fix the original
headline's shape; no declaration is frozen or proved. N-HEAD is unchanged, with F-N1 an explicit open
source gap. The separately named N-HEAD-C adds fixed complex-Hessian and real-frequency lower bounds.
The old v0.1 lint failure is historical: the current guard excludes `.drafts/`. Current receipts appear below.

## Deliverables and approach

- `docs/tracks/N/sources.md`: pinned BM11 and GCB16, exact source transcriptions, live arXiv/Crossref
  verification, acquired Pöschel scan, and unsuccessful Lochak retrieval attempts.
- `docs/tracks/N/statement.md`: source conventions, exact mathematical contracts, constant quantifiers,
  deviations, owner recommendations and the explicit decision to defer N-STEEP.
- `.drafts/N/Statements.lean`: eleven definitions and four theorem drafts in `KAM.Nekhoroshev`.
  It remains untracked and ignored; no frozen theorem or provider is imported.
- `docs/tracks/N/notes.md`: this infrastructure and validation handoff.
- `docs/tracks/N/RESPONSE-v0.1.md`: finding-by-finding revision response, explicitly requested this round.

Additional permitted source acquisition: `sources/incoming-N/poschel1993_gdz.pdf`, downloaded into a newly
created empty incoming directory, checked for a PDF signature and pinned in sources.md. No additional source files were acquired in v0.2; writes were confined to the five deliverable paths. No git index, commit, branch or remote operation was performed.

The route retains BM11's exact QC(m), coordinate derivative B(M), period-one analytic class and uniform
constants, selects only Theorem 2.1's classical endpoint, and completes its dynamics wording with genuine
ODE existence/uniqueness. It does not replace an analytic estimate by a hypothesis. The zero-size theorem
is separate. N-QC selects the source's pointwise geometric argument rather than its uniform-radius claim.

## Infrastructure by statement

| Statement / layer | Required work | Shared consumers |
|---|---|---|
| Definitions and real/complex bridge | Open maximum-norm balls and neighbourhoods; holomorphy implies real C³; symmetry identifies ordered coordinate derivatives with multi-indices; period-one lifts and quotient comparison | K, I, P |
| N-QC | Symmetric Hessian, kernel argument using QC(m), finite-dimensional equal-dimension injective/bijective bridge; local inverse theorem on ordinary coordinate spaces | I isoenergetic geometry; N confinement |
| N-ZERO | Real restriction of holomorphic functions; derivatives of a function locally equal to zero; chain rule for the explicit integrable curve | K, I, P orbit interfaces |
| N-HEAD analytic estimates | Cauchy estimates on complex angle/action neighbourhoods, Fourier cutoffs and tails, Poisson brackets, Lie series or equivalent canonical transformations, quantitative domains of near-identity symplectic maps | P averaging and normal forms; K/I analytic infrastructure |
| N-HEAD resonances | Integer submodules and saturation, rank and basis invariance, lattice covolumes and Gram determinants, resonance blocks and separation; control all square-root/determinant positivity and denominator hypotheses | P; selected arithmetic shared with K/I |
| N-HEAD arithmetic | Quantitative rational/simultaneous Dirichlet approximation; finite-order resonance coverage, dimension and lattice constants | K/I small divisors; P normal forms |
| N-HEAD dynamics | Energy conservation, quasi-convex energy confinement, transition between nonresonant and resonant regimes, boundary margins, restarting the flow | I confinement; P finite-time applications |
| N-HEAD continuation | Local existence/uniqueness for smooth Hamiltonian fields; continuation in a compact interior action tube; periodic angle control for the unbounded lift; both time directions and closed endpoints | All tracks |

BM11's proof imports Pöschel-type resonant stability, rather than providing all resonant normal-form
analysis itself. The v0.2 revision directly inspected Pöschel pp. 189–192 and 206–207, confirming the
complex bound, quantitative QC, time prefactor, low-frequency exception, and the Theorem 3 locator.
N-HEAD-C selects **Theorem 1 directly**; it does not need BM11's improved-exponent argument or its faulty
restart/inverse-radius steps. This checks selected source contracts, not Pöschel's whole proof. The first substantial unpaid estimate is a quantitative resonant normal form
with an exponentially small remainder, on explicit complex domains with transformation displacement bounds.
A canonical-transformation construction may use Lie series; the strategy must be chosen before blueprinting.

The existing weighted Fourier algebra, derivative estimates and cohomological solution are reusable.
They do not supply resonant normal forms, lattice geometry, energy confinement or long-time continuation.
The frozen KAM a-posteriori theorem is not a provider for N-HEAD. Ordinary Kolmogorov nondegeneracy alone
does not imply the exact quasi-convex hypothesis.

## Rough size and sequencing

Planning estimates for new Lean code, not measurements of completed proofs:

| Package | Approximate additional lines |
|---|---:|
| Domain/derivative interfaces, N-QC and N-ZERO | 1,000–2,500 |
| Hamiltonian ODEs, energy, uniqueness and continuation | 2,000–4,000 |
| Lie-series/canonical-map and resonant normal-form analysis | 7,000–13,000 |
| Arithmetic and lattice/resonance geometry | 5,000–10,000 |
| Confinement, parameter choices, endpoint assembly | 5,000–10,000 |
| Total | 20,000–39,500 |

Reuse will affect these numbers considerably. All future modules must stay below 1,500 lines; split by
mathematical contract, preserving public facades. First audit source gaps and decide the resonant route,
then complete statements/owner approval/freeze, then the blueprint, then proofs. No heartbeat or recursion
budget overrides are permitted. The numerical line estimates do not authorize changing frozen files.

## Suspected source defects for the orchestrator's ledger

The ledger entries remain **CANDIDATE** pending orchestrator disposition. The independent audit has
now confirmed their quoted source passages and supplied Lean refutations of the specific source-step
assertions F-N2/F-N3; it did not refute N-HEAD. The distinctions are recorded below. This track does
not edit `docs/errata/ledger.json`.

### E-N-BM-1 — zero-size case is empty; singular time expression

- Location: BM11 p. 5, C(M,m,ε) and Theorem 2.1.
- Quoted text: “|f|_s < ε” and “if 0 ≤ ε ≤ ε₀”. The time display uses ε^{−1/(2(n−1))+δ}.
- Problem: no norm can be <0, so ε=0 is excluded by the hypotheses despite being listed in the range.
  Its negative-power time expression is not a real-valued expression at zero in the intended sense.
  This is not a counterexample for positive ε; the zero case is vacuous as printed.
- Proposed treatment: state the exponential theorem for ε>0 and exact integrable all-time motion separately.
  D-N-2 also changes the size convention using the explicit factor-two rescaling, not a silent replacement.

### E-N-BM-2 — uniform inverse constants over unrestricted λ need a qualification

- Location: BM11 Lemma 3.3, p. 9, second paragraph; stable constants defined p. 5.
- Quoted text: “there exist stable constants ρ₀ and C” and “whose image contains the closed ball
  B(Ψ_h(I₀), Cρ)”.
- Problem: stable constants, as defined, do not depend on λ₀, yet λ₀ ranges over all positive numbers.
  For h(I)=|I+Le₁|₂²/2 with L>R+s, the QC and derivative bounds hold on B_s. At I₀=0 the derivative
  of Ψ_h on directions v perpendicular to e₁ is (0,λ₀v). Its smallest expansion therefore tends to
  zero as λ₀→0. A fixed positive image-ball factor C for arbitrarily small balls would imply a
  uniform lower singular-value bound, contradicting this computation. The radius also needs to
  account for distance to the boundary of B×ℝ⁺_* if the ball is required to be contained there.
  The displayed image center Ψ_h(I₀) additionally omits λ₀ in its argument.
- Proposed correction: restrict the base points to a specified interior compact set and λ to a compact
  positive interval, or allow constants to depend on their margins; at the actual normalized-frequency
  points used later, derive the needed quantitative bounds explicitly. This supplement is not proved here.
  N-QC proposes only the pointwise nonsingularity statement, which does not have this issue.
- v0.2 / **F-N2**: audit §5.1 and `audit-scratch/SourceRefutations.lean`, declaration
  `KAM.Nekhoroshev.Audit.no_uniform_image_ball`, refute even open-ball coverage for a fixed polynomial
  Ψ. The audit reports a successful kernel check without `sorryAx`; that scratch result was not rerun
  or modified here. For an eventual BM quantitative provider, restrict base actions to a compact
  interior set and analyze the actual normalized λ family; N-QC itself remains pointwise. N-HEAD-C's
  direct Pöschel route does not invoke this false source assertion.

### E-N-BM-3 — restart in the same inner ball is not uniform

- Location: BM11 proof of Theorem 2.1, p. 13, second case.
- Quoted text: “Again, taking ε₀ small enough we can ensure that I(t*) ∈ B(0,R/2), then we can apply
  Lemma 3.2”.
- Problem: I₀ ranges over all of the open B(0,R/2), so there is no uniform positive distance to its
  boundary. A small displacement bound alone cannot ensure that I(t*) remains in this same inner ball
  with a threshold chosen before I₀. It can ensure membership in a larger interior ball.
- Proposed correction: formulate/audit the resonant estimate for starting points in B(0,3R/4), with
  constants depending on the remaining R/4 outer margin, or localize on translated domains uniformly.
  Merely claiming a smaller uniform ε₀ fixes the printed sentence does not work. The R/4 margin in
  N-HEAD is a useful conclusion but does not by itself repair the imported Lemma 3.2 contract.
  The original headline remains an intended classical theorem; its BM proof route requires this repair.
- v0.2 / **F-N3**: audit §5.2 supplies the checked declaration
  `KAM.Nekhoroshev.Audit.no_uniform_same_inner_ball_margin`, refuting the displacement-to-membership
  implication. It is not a drifting Hamiltonian counterexample. A BM resonant provider must accept
  initial actions in B(0,3R/4), with the remaining R/4 outer margin proved explicitly. This provider is
  not a new headline premise. The direct Pöschel route for N-HEAD-C chooses the initial set P and its
  tube once and avoids this restart entirely.

### E-N-GCB-1 — zero parameter in Theorem 1's time factor

- Location: GCB16 v1 p. 4, Theorem 1 and (5).
- Quoted text: “for any 0 ≤ ε < ε₀”; the time is “T/√ε exp(c/εᵃ)”.
- Problem: at ε=0 the displayed real expression divides by zero; the intended interpretation is exact
  integrable motion/all time, not Mathlib's totalized division or real powers.
- Proposed correction: split ε>0 from ε=0 before drafting N-STEEP. No steep theorem is drafted here.

### E-N-GCB-2 — index range in quasi-convex comparison

- Location: GCB16 v1 p. 3, paragraph before “B. Statement of the result”.
- Quoted text: “for α₁ = ··· = αₙ = 1 (quasi-convex case)”.
- Problem: the steepness indices in the following definition and theorem range only through n−1;
  αₙ has not been supplied as steepness data. This appears to be an index typo, not an exponent change.
- Proposed correction: replace αₙ by α_{n−1}. The draft does not use this sentence.

Deviations introduced by this packet are listed as D-N-1 through D-N-10 in statement.md.
The positive-definite sign version of quasi-convexity is retained; a negative-definite variant by reversing
H is not added silently. The inspected Pöschel explanatory sentence is discussed below; no claim is made about unread Lochak text.

## Why N-STEEP is not drafted

GCB16's definition on p. 3, equation (3), quantifies over every transverse j-plane and every radius, using
Euclidean orthogonal projections, a minimum over a sphere, and a maximum over radii. A faithful Lean
interface must establish attainment/nonemptiness, distinguish the radius-zero sphere from positive radii,
and ensure all translated evaluation points lie in the h extension domain. It must express the Euclidean
norm directly on `Fin n → ℝ` without changing ambient types. Its angles are 2π-periodic, its perturbation
is εf, its initial domain depends on ε, and its time factor is T/√ε. Constants in the quantitative section
also depend on the norm of fixed f. A uniform-before-f version needs a correctly normalized bounded class.

These are manageable tasks for a later dedicated statement audit, but a guessed surrogate steepness
predicate would not be faithful. Per the explicit N brief, no N-STEEP Lean definition or theorem is included.
This deferral leaves the four requested Phase 0 deliverables complete for N-HEAD.

## Historical v0.1 checks and exact outcomes (retained verbatim receipts)

Executed from `/root/code/KAM`; targeted Lean invocations were sequential and used `nice -n 5`.
The brief's direct draft elaboration command is the targeted check here; no whole-library build was run.

1. `nice -n 5 lake env lean .drafts/N/Statements.lean` — **exit 0** after correcting one reserved
   identifier (`λ` as a binder was replaced by `lam`). Final output:

   ```text
   .drafts/N/Statements.lean:102:8: warning: declaration uses `sorry`
   .drafts/N/Statements.lean:113:8: warning: declaration uses `sorry`
   .drafts/N/Statements.lean:129:8: warning: declaration uses `sorry`
   'KAM.Nekhoroshev.quasiConvex_isoenergetic_derivative' depends on axioms: [propext,
    sorryAx,
    Classical.choice,
    Quot.sound]
   'KAM.Nekhoroshev.zero_perturbation' depends on axioms: [propext, sorryAx, Classical.choice, Quot.sound]
   'KAM.Nekhoroshev.quasiConvex_nekhoroshev' depends on axioms: [propext, sorryAx, Classical.choice, Quot.sound]
   ```

   These are declaration/axiom receipts only: the three theorem bodies are unproved.

2. `scripts/lint_sources.sh` — **exit 1**, with this output:

   ```text
   check_lean_modules: PASS (40 Lean files, 0 comparator configurations)
   FROZEN-ANCHOR GUARD FAILED:
   - unauthorized `sorry` outside manifest-listed DRAFT proof region: .drafts/P/Statements.lean
   - unauthorized `sorry` outside manifest-listed DRAFT proof region: .drafts/P/Statements.lean
   - unauthorized `sorry` outside manifest-listed DRAFT proof region: .drafts/P/Statements.lean
   - unauthorized `sorry` outside manifest-listed DRAFT proof region: .drafts/N/Statements.lean
   - unauthorized `sorry` outside manifest-listed DRAFT proof region: .drafts/N/Statements.lean
   - unauthorized `sorry` outside manifest-listed DRAFT proof region: .drafts/N/Statements.lean
   - unauthorized `sorry` outside manifest-listed DRAFT proof region: .drafts/I/Statements.lean
   - unauthorized `sorry` outside manifest-listed DRAFT proof region: .drafts/I/Statements.lean
   - unauthorized `sorry` outside manifest-listed DRAFT proof region: .drafts/I/Statements.lean
   - unauthorized `sorry` outside manifest-listed DRAFT proof region: .drafts/I/Statements.lean
   ABI HASHES OK (25 frozen declarations)
   ```

   The shell lint's own source enumeration excludes `.drafts`, while the anchor guard includes those
   files and rejects the theorem sorries explicitly required by the common Phase 0 brief. This is a
   tooling/brief mismatch affecting all three active tracks, not permission to edit the guard, freeze
   drafts, or suppress output. No global lint PASS is claimed. Orchestrator action: reconcile the guard's
   draft-file policy with the approved Phase 0 workflow before using global lint as its acceptance gate.

3. `git diff --check` — **exit 0**, no output. Since untracked files are not checked by this command,
   the four owned text deliverables also received a direct whitespace/control-character check:
   all four passed (no trailing whitespace or control characters; final newlines present).
4. `git check-ignore .drafts/N/Statements.lean sources/incoming-N/poschel1993_gdz.pdf` — **exit 0**,
   prints both paths; `git ls-files -- .drafts/N/Statements.lean` — **exit 0**, empty output.
5. Direct draft inspection: **158 lines**, no line over 100 characters, exactly three theorem `sorry`
   bodies. No resource-budget overrides or forbidden proof declarations. Every definition has a source
   docstring; module header, public imports and exposed public section are present.
6. `sha256sum` on the two supplied PDFs matches the hashes recorded in sources.md. Pöschel's downloaded
   PDF is 31 pages including the GDZ cover; its exact bytes/hash are pinned separately, not inserted in
   the shared source manifest. Lochak's failed download was HTML, not accepted as a source pin.

## v0.2 source gap and additional audit findings

### E-N-BM-4 / F-N1 — missing uniform complex analytic input

Location: BM11 p. 4 B(M), p. 8 “exactly the content of Theorem 3”, versus Pöschel p. 190
`sup_{I∈V_{r₀}P} ‖Q(I)‖ ≤ M`, used in the Normal Form Lemma p. 192.
The real B(M) class does not supply this complex bound. The audit's explicit entire family

    h_N(z)=3z₀+(z₀²+z₁²+z₂²)/2+sin(Nz₁)/(4N³)

has fixed n=3, R=s=1, M=6, m=1/2, and even the uniform real frequency lower bound 1, but
`∂₁²h_N(0,ir,0)=1−i sinh(Nr)/(4N)` grows without bound for every fixed positive r<1.
The gap survives fixed-width shrinkage and is not fixed by the existential h-value bound.

**Disposition:** no Lean change to N-HEAD or its ten existing definitions. F-N1 blocks its proof-route
sign-off, not the correctness of the transcription. N-HEAD-C is an additional proposed contract, not
payment of F-N1 for N-HEAD. No counterexample to either headline conclusion is claimed. A proof retaining
N-HEAD must avoid this missing import or find a verified source with the exact original uniformity.

### E-N-BM-5 / F-N6 — zero resonance vector

Location: BM11 p. 12, `k′ = qe_i − pe_j`, followed by “since p and q are co-prime”. If i=j and
p/q=±1 with the corresponding sign, this construction can give zero; coprimality alone is insufficient.
The displayed `k′ ∈ ℤ` also requires the vector type ℤⁿ.

**Required repair for a BM arithmetic provider:** choose the rational in the central closed half of the
nondegenerate interval of normalized components. That half lies strictly inside (−1,1). Its length is
half the original, so Lemma 3.4 gives the bound 12/length instead of 6/length. The selected component
then has absolute value <1, while a maximizing component has absolute value 1. Hence i≠j; prove k′≠0
and primitivity from the reduced fraction. Adjust only the stable numerical drift constant. This is a
specified future proof repair, not an assumed resonance theorem. N-HEAD-C's direct route does not use it.

### E-N-GCB-3 — typo in the deferred source's ℓ¹ norm

GCB16 v1 p. 3, footnote 5 prints `|u| = Σ_i |u₁|` (verified visually by the independent audit).
The summand should be `|uᵢ|`; the printed expression vanishes on a nonzero vector with first coordinate
zero. No N-STEEP theorem or definition is introduced, and this typo affects neither selected headline.

### E-N-POS-1 — complex symmetric is not Hermitian

Pöschel p. 190, line following the complex Hessian bound: “For the symmetric operator Q this norm
amounts to the spectral radius norm.” This is valid for a real symmetric Hessian, but false for a general
complex symmetric one: the nonzero symmetric matrix `[[i,1],[1,−i]]` squares to zero, hence has zero
spectral radius and positive operator norm. Retain the actual operator-norm display, and restrict that
explanatory equality to real points. N-HEAD-C uses the genuine operator norm, never a spectral radius.
This identifies a faulty explanatory sentence, not a refutation of the source theorem.

### F-N4, F-N5, F-N7, F-N8, F-N9, F-N10

- **F-N4:** remove the unused `3 ≤ n` hypotheses from N-QC and N-ZERO only. Their proofs are dimension
  independent; N-QC now has the correct interface for track I at n=2. No frozen files were changed.
- **F-N5:** retain ε>0 in both headline candidates and the actual-size-zero N-ZERO theorem.
- **F-N7:** both copyright and Authors lines now name Scott Armstrong and Zohar Komargodski under D15.
- **F-N8:** the original N-HEAD type is byte-identical to v0.1. The new parameters Mcomplex,ωmin in the
  distinct theorem are fixed before every existential constant, as are n,R,s,M,m.
- **F-N9:** retain the old failure receipt as history; the current guard excludes `.drafts/` and is rerun
  below. Production lint does not validate draft theorem types; direct elaboration is separate.
- **F-N10:** use the shifted quadratic `3z₀+Σzᵢ²/2` at n=3,R=s=1,M=6,m=1 as the nonvacuity model.
  It has frequency `I+3e₀` with maximum norm >1 on B_s and ≥2 on B; use ωmin=1.
  The complex iterated maximum-norm Hessian operator has norm 3 (the bilinear form is Σvᵢwᵢ), so
  Mcomplex=3 is valid. In particular, do not confuse the Euclidean matrix norm 1 with this norm.
  Entire period-one `f=[ε/(2 cosh(2π))] cos(2πθ₀)` has norm ≤ε/2 on D_s. This is a mathematical
  nonvacuity calculation, not a Lean proof. The centered quadratic still fails strict QC's nonvanishing
  premise on a ball containing zero, though it remains a valid N-ZERO example.

## v0.2 new statement infrastructure and limits

N-HEAD-C needs the same resonant normal forms, lattice geometry, confinement and ODE infrastructure
as a classical Pöschel route, but does not need BM11's improved-exponent passage through normalized
frequencies. The additional interfaces are the real/complex derivative identification, a dimension-bound
comparison of the actual bilinear norm with the Euclidean Hessian norm, the quantitative QC conversion,
period-one to period-2π Hamiltonian rescaling, and a uniform replacement of the source Ω₀ time prefactor.
Explicit choices appear in sources.md. These require roughly 300–800 lines of additional interface work,
within the uncertainty of the prior 20k–39.5k estimate; no new proof-cost precision is claimed.

Two new numbers suffice for this strengthened-input route: Mcomplex and ωmin. A uniform upper frequency
bound is already supplied by real B(M); quantitative ell and reduced curvature μ are explicitly derived,
not additional inputs. Complex third derivatives are controlled on smaller domains if needed, from the
complex Hessian bound and positive width. No uniform h-value parameter is used. The entire original
real B(M) predicate is retained for compatibility, even though the direct route uses only its first order.

The lower frequency bound excludes Pöschel Theorem 1's weaker exceptional branch. We do not claim it
is logically necessary for every version of Nekhoroshev, or impossible to derive by another argument
for an appropriate class. This is a proposed visible source-route strengthening requiring owner choice.
The original D18 uniformity is preserved exactly in the other named theorem.

## Uncertainties and next decisions

- Original N-HEAD: resolve F-N1/E-N-BM-4 and the BM route's F-N2/F-N3/F-N6 obligations before proof-route
  sign-off. No hidden extra premise has been introduced there.
- N-HEAD-C: independently audit the explicit source conversions and exact v0.2 type before owner
  line-by-line approval. Pöschel's full proof still needs a blueprint and Lean providers.
- Choose the headline in statement.md question 7; recommendation is the new bounded-input version,
  while retaining the original broader target and its recorded gap. No freezing is performed here.
- Lochak's original theorem text remains **[unverified]** and is not needed for the selected direct
  Pöschel route. N-STEEP remains deferred under D18-Q5.
- These statements do not establish planetary collision exclusion or observed-Solar-System stability.

## Current v0.2 validation receipt

The historical output above is not the current lint status. Checks were run sequentially with the required
`nice -n 5` for Lean; no resource overrides, whole-library build, frozen edits, or git mutations were used.

- `nice -n 5 lake env lean .drafts/N/Statements.lean` — **exit 0**, exactly four warnings:

  ```text
  .drafts/N/Statements.lean:103:8: warning: declaration uses `sorry`
  .drafts/N/Statements.lean:114:8: warning: declaration uses `sorry`
  .drafts/N/Statements.lean:130:8: warning: declaration uses `sorry`
  .drafts/N/Statements.lean:169:8: warning: declaration uses `sorry`
  ```

  The embedded `#print axioms` commands report `[propext, sorryAx, Classical.choice, Quot.sound]`
  for each of `quasiConvex_isoenergetic_derivative`, `zero_perturbation`, `quasiConvex_nekhoroshev`,
  and `quasiConvex_nekhoroshev_complexBound`. These are unproved theorem drafts, not kernel proof receipts.
- `scripts/lint_sources.sh` — **exit 0**:

  ```text
  check_lean_modules: PASS (43 Lean files, 0 comparator configurations)
  FROZEN-ANCHOR GUARD OK
  ABI HASHES OK (25 frozen declarations)
  ```

  The guard excludes `.drafts/`; its pass does not substitute for draft elaboration.
- Mechanical comparison with the in-memory v0.1 snapshot: original N-HEAD declaration, from `theorem`
  through its `sorry` body, is **byte-identical**, SHA-256
  `37028cd2d8cf0e9448e74428246814eb57cf9450ac811544aec70be7267abc56`.
  The new theorem is exactly that declaration with its new name, two positive fixed parameters, and
  two additional antecedents. Its entire solution conclusion is unchanged.
- The draft is **203 lines**; no line exceeds 100 characters. It contains eleven exposed definitions
  and four theorem bodies. All ten existing definitions are unchanged. The only existing theorem-type
  edits are removal of the two unused gate dimension hypotheses; N-HEAD is unchanged.
- All three PDF hashes match the pins in sources.md. The source-line audit uses the existing renderings;
  no new PDF or audit-scratch file was written.
- `git diff --check` and direct checks of the five owned text deliverables report no whitespace or control
  character defects. `.drafts/N/Statements.lean` is ignored and absent from `git ls-files`.

The workspace has concurrent orchestrator activity and its HEAD advanced during this revision. No commit,
add, push, checkout, reset or stash was run by this task. The preservation comparison uses the actual
pre-edit draft snapshot rather than treating a moving HEAD as the v0.1 baseline.

## Historical additions (D22), draft v0.3 — implementation and handoff

Four deliverables: appended sections in `docs/tracks/N/statement.md`, `sources.md`, this file, and the new
untracked `.drafts/N/Additions.lean`. Existing N history and all D20 frozen files are unchanged. This is
Phase 0 source/statement work only; the three theorem bodies are unproved drafts.

The Lean hard rules for this work are:

1. Never use `set_option maxHeartbeats` (or any heartbeat-budget override). A default-heartbeat elaboration
   failure is a design signal to refactor or split the proof, not something to mask with a larger budget.
2. No Lean file may exceed 1500 lines of code.

### Statement design and consumer boundary

`partialConvex_nekhoroshev` uses fixed h, an explicit complex Hessian bound, a uniform nonzero fast frequency,
and a signed definite fast Hessian. The sign allows the concave Kepler Hamiltonian without reversing physical
time. Constants precede perturbations and solution segments. The source's slow confinement premise has been
localized **inside the conclusion** to the queried history [0,t]. There is no premise of confinement up to
the proposed exponential endpoint. The source uses an eroded slow domain, and the draft preserves that
margin. This is the contract P's first-exit/AMD argument needs; this task does not supply that argument.

The source 1977 rates are a=2/(6n²−3n+14), b=3a/2. The factor μ⁻¹ in T is retained, and can be dropped to
obtain a weaker pure exponential estimate after reducing μ₀≤1. A normalized P of bound one and positive μ
stand for H₁=μP. Using an upper bound rather than the actual supremum needs monotonicity in M; actual norm
zero needs the direct constant-action argument. None of these estimates are assumed in the theorem.

`averaging_mean` exposes both the mean estimate and its Markov κ consequence, with actual solution-family
typing data. `averaging_most` has no flow premise: existence and confinement for the good initial data are
conclusions. It is separately named because the latter needs localization and continuation beyond the
printed mean formula. Both use absolute initial phase volume and fixed h,f,K before constants; neither
silently promises uniformity over all analytic perturbations of norm one. Varying ε scales the one fixed f.
The global rank disjunction matches the source and has no chart singularity. The real supremum definition
is used only with positive ε, an actual continuous trajectory on a nonempty compact interval, and bounded
actions. The two rank maps are genuine derivatives, guarded by the analytic/real C³ data.

### Proof infrastructure and rough incremental size

| Work | Sharing / first consumer | Rough new Lean lines |
|---|---|---:|
| Complex Cauchy bounds, norm conversions, tube restrictions, analytic symplectic transformations | Existing K analysis; N and P normal forms | 2k–4k |
| Quantitative convex/concave-to-index-one steepness on nested domains; geometry and resonant blocks | N, then P-EXP-SAFE | 4k–8k |
| Properly degenerate resonant normal form with parameters and 1977 iteration | N-PARTIAL-CONVEX; shares ordinary N estimates where their contracts match | 8k–16k |
| Genuine ODE uniqueness, dependence on initial data, restriction and continuation, first-exit margins | N, I, P | 2k–5k |
| Multi-frequency averaging resonance-volume and residence-time estimates | N-AVERAGING | 6k–12k |
| Supremum measurability/integrability, Markov, fixed compact set, smooth localization | N-AVERAGING and other measure consumers | 2k–4k |

These are planning ranges, not measured dependency inventories or promises of Mathlib availability.
The sum is roughly 24k–49k lines before reuse; it must not be added mechanically to earlier estimates
because the analysis, ODE and normal-form layers overlap. Split providers into focused modules well before
1500 lines; retain only manifest-approved frozen imports when the orchestrator eventually freezes them.

No all-time collision theorem follows from either addition by itself. P must supply its actual canonical
coordinates, perturbation bound, fast Hessian and frequency bounds on a complex neighborhood, angular
momentum conservation, and continuation in collision-free physical coordinates. The ordinary frozen
N-HEAD-C has no slow variables and cannot be substituted for this parameter-dependent stopped theorem.

### Open source/conversion audits and a concrete proof plan

1. **Fast convexity and source steepness.** Use the signed Hessian bound and the fundamental theorem of
   calculus on segments in the real enlargement U to obtain an index-one lower bound on plane-restricted
   gradients. The g bound supplies nonzero frequency, and the complex bound supplies the upper control in
   Nek77 §4.3.B. The exact radius and domain convention of §4.1 must be audited: its sphere infimum is taken
   over an intersection with G, which can be empty near a boundary. Do not encode an empty real infimum as
   zero or simply infer a uniform radius from pointwise openness. The draft explicitly supplies h and the
   inequalities on an enlarged real neighborhood. The provider must use that room in a nested-domain
   argument and justify the source restriction. This is an open translation obligation, not a newly assumed
   steepness conclusion. If the exact conversion fails, revise the unfrozen statement visibly before freeze.
2. **Stopped interval.** For each queried t>0 apply source Theorem 4.4 with its arbitrary C=t; handle t=0
   directly. Derive pre-exit bounds for P without assuming future slow confinement. Its exit set concerns the
   eroded domain, not the outer analytic boundary. At an endpoint, pass to a limit only after proving the
   required closed margin and continuous extension. Maximum-norm erosion is a stronger source premise.
3. **AKN source status.** The exact DOI/edition is verified and the pinned transcription contains the mean
   and Markov formulas; no complete book PDF/page image was acquired. Smoothness requirements and the
   source's domain/continuation convention at §6.1.9 need a full primary-page audit. They are **[unverified]**.
   This is explicitly recorded, rather than identifying the 11-page contents excerpt as the theorem PDF.
4. **Averaging mean.** Convert the fixed analytic Hamiltonian to standard form, prove the averaged action
   drift is zero by periodic integration, establish quantitative rank margins on compact interior domains,
   then prove the multi-frequency mean estimate. Smooth dependence and uniqueness make any supplied family
   agree on K with the actual flow, so its error is measurable/integrable despite arbitrary values off K.
   Apply Markov to the error itself; do not assume the desired exceptional set or an averaged proxy orbit.
5. **Local existence corollary.** A proposed route is to multiply f on the real action domain by a smooth
   cutoff equal to one on B(0,3R/4), supported in B(0,7R/8). The cutoff Hamiltonian keeps the same h and
   frequency rank; its averaged action equation is still zero. Its action motion vanishes outside the
   cutoff support, so a compact-action, periodic-angle continuation argument gives full-window solutions.
   A smooth version of the source averaging theorem then gives the mean bound and Markov estimate.
   For error η≤R/4, data in B(0,R/2) remain inside B(0,3R/4), where cutoff and actual equations agree.
   This is a **smooth**, not analytic, cutoff; analytic cutoff functions are not asserted to exist.
   Applicability of the source to that smooth intermediate system is **[unverified]** in the available
   excerpt. `averaging_most` remains a separate draft pending that verification, or a direct local proof.
   Its existence claim is not smuggled into the mean theorem's source premises.
6. **Rates and quantifiers.** A fixed κ gives error O(√ε); κ proportional to ε^(1/4) balances the error and
   exceptional-volume exponents. The local existence corollary needs A√ε/κ≤η₀. No result here gives both
   O(√ε) error and O(√ε) exceptional volume. Positive ε and κ/η hypotheses guard every inverse and square
   root; zero perturbation can use a separately proved direct integrable calculation.

### Suspected errata and declared deviations

- **E-N-ADD-1 (new suspected typo):** Nek77 §1.18 p.15, “the perturbation H−H₀ becomes small” when bodies
  approach. A reciprocal-distance potential grows in magnitude. Proposed replacement: “large” / “ceases
  to be small.” This is a suspected English-text defect, not a change to Theorem 4.4. The orchestrator should
  record it in the ledger; this task does not edit the ledger.
- **S-N-ADD-2 (source limitation):** AKN p.243 has transcription and later author-slide corroboration, not a
  complete primary-PDF inspection. The smooth localization variant is also unverified. These are gaps in
  our evidence, not alleged errors in AKN.
- **D-N-ADD-3 (specializations):** definite fast Hessian with a global sign; convex fast G; analytic and real
  bounds on a larger fast neighborhood; fixed h constants; explicit g and Mcomplex. These make the intended
  first class conservative. They do not claim to freeze the full steep or quasi-convex source generality.
- **D-N-ADD-4 (representations):** source Euclidean norms converted to maximum norms, stronger closed erosion,
  arbitrary queried-history form instead of an exit-time infimum, norm-one perturbation and μ upper bound,
  strict inequalities weakened to ≤. All are stated explicitly with their source/conversion obligations.
- **D-N-ADD-5 (averaging):** fixed analytic Hamiltonian specialization, period-one angles, compact initial K,
  absolute volume, integrability conclusion, and separate local-existence corollary with an η collar.
  These are not unmentioned additions to the printed theorem. The normalized f is fixed before constants.
- The round-3 Pinzari stop-time and Guzzo exponent-attribution findings remain reported in the research
  packet. This task does not independently certify their whole proofs, and does not use the unavailable
  Niederman result to assert the stronger exponent.

Owner questions and recommendations are in the appended statement section. In particular, recommend auditing
and freezing the source mean/κ surface before its separate local-existence corollary, and retaining the exact
1977 exponents for the partial theorem. No owner response is needed to complete this authorized draft round.

### Validation receipt for D22 draft v0.3

Checks were run on 27 October 2026, sequentially, without resource overrides or a whole-library rebuild.

- `nice -n 5 lake env lean .drafts/N/Additions.lean` — **exit 0**. The only warnings were:

  ```text
  .drafts/N/Additions.lean:91:8: warning: declaration uses `sorry`
  .drafts/N/Additions.lean:145:8: warning: declaration uses `sorry`
  .drafts/N/Additions.lean:170:8: warning: declaration uses `sorry`
  ```

  Embedded `#print axioms` reported `[propext, sorryAx, Classical.choice, Quot.sound]` for each of
  `partialConvex_nekhoroshev`, `averaging_mean`, and `averaging_most`. This is successful elaboration of
  the exact draft types, not a proof or a claim of a sorry-free theorem.
- `scripts/lint_sources.sh` — **exit 0**:

  ```text
  check_lean_modules: PASS (124 Lean files, 0 comparator configurations)
  FROZEN-ANCHOR GUARD OK
  ABI HASHES OK (94 frozen declarations)
  ```

  The repository lint excludes `.drafts/`; direct elaboration and the separate draft checks cover this file.
- Direct draft checks: **194 lines**, no lines over 100 characters, nine exposed literal definitions,
  three theorems, exactly three `sorry` bodies, no prohibited code constructs or resource overrides.
  Module header and authors follow the frozen modules. Imports are definition modules and Mathlib, never
  providers or frozen theorem anchors.
- `git diff --check` — **exit 0**. Byte-prefix comparisons with the existing repository versions confirm
  that all three documentation files retain their entire prior contents; this task only appends sections.
  `git ls-files .drafts/N/Additions.lean` returns no path: the draft is untracked/ignored as required.
- Draft SHA-256: `f7b3278008de764bf252d5aa02f43ac9234ac79cbb63b5191931e54e4dffbc5e`.
  The four source hashes printed in sources.md were recomputed and matched. Both DOI records were checked
  by exact Crossref requests; failed full-book downloads were not retained as evidence.

No frozen, manifest, generated, other-track or research-report files were edited. No state-changing git
command was used. The source ambiguities and suspected erratum above remain visible for the independent
statement audit and owner approval; this receipt certifies the completed Phase 0 packet only.

## Additions (D22), draft v0.4 — audit response and change log

Current worktree and every authored path: `/root/code/KAM-inp`. The preceding v0.3 section and receipt are
historical; this section and statement.md's v0.4 section supersede its approval recommendations and
source-conversion plan. `AUDIT-additions-v0.3.md` was read fully, including its counterexample and consumer
construction. No audit or frozen file was edited.

Lean hard rules (verbatim):

1. Never use set_option maxHeartbeats (or any heartbeat-budget override). A default-heartbeat elaboration failure is a design signal to refactor or split the proof, not something to mask with a larger budget.
2. No Lean file may exceed 1500 lines of code.

### Finding-to-change map

| Finding | v0.4 change / disposition |
|---|---|
| F-NADD-1 | New explicit open convex source domain G′ and closed ρ collar around working G. All h and P bounds extend to G′. Replace the invalid global steepness inference by the direct definite-Hessian instance of source Lemma 10.6, then follow §§7–10. The two quantitative geometric obligations and the exact dependency chain are below. No steepness, projected-gradient bound or drift is a premise. |
| F-NADD-2 | `averaging_mean` and `averaging_most` remain byte-identical theorem declarations, but both are **DEFERRED from approval** in statement.md and their docstrings. Complete third-edition chapter/proof acquisition checklist and candidate original sources added to sources.md. |
| F-NADD-3 | Local-existence candidate remains distinct and deferred. No flow/error/confinement premise added to it. Smooth-source applicability or a direct local proof is required to reactivate it. |
| F-NADD-4 | No stopped conclusion change. Explicit G⊂G′, slow D, fixed collars, normalization, two time directions and P bootstrap scale choices documented below. |
| F-NADD-5 | Preserve complex Hessian input and fixed-h-before-threshold quantifiers, now on the enlarged source domain. |
| F-NADD-6 | Preserve 1977 a,b and μ⁻¹ time prefactor. |
| F-NADD-7 | Preserve absolute phase volume, O(√ε/κ) tradeoff, positive tolerances and their quantifier order in the deferred types. |
| F-NADD-8 | Preserve guarded error supremum; any future helper must establish nonempty time image and boundedness before invoking real supremum lemmas. |
| F-NADD-9 | Corrected source text: Neishtadt–Okunev slide 14 corroborates rates only, not the rank alternatives. Re-extracted slide 14, including its 1976 paper reference. |
| E-N-ADD-1 | Independent confirmation and ledger-candidate record below; no theorem-type change. |

The nine definition **bodies** remain unchanged. `partialConvex_nekhoroshev` keeps its name and entire
stopped conclusion, solution and initial-erosion antecedents. Fixed binders add G′, its openness and
convexity, and `∀ I∈G, closedBall∞ I ρ ⊆ G′`. Each h hypothesis and `HasDefiniteFastPart` now uses G′;
`IsPartialPerturbation` now uses the tube over G′×D. The docstring explains the proof specialization.
Both averaging **theorem declarations** are unchanged; their docstrings and approval status change.
The rendered p.29 comparison also corrected two source transcriptions: imaginary bounds are ≤ρ (use
the smaller source width ρ/2 inside the draft's open tube), and total source dimension is n≥s≥2
(the draft conservatively requires at least one slow pair). Neither change affects the theorem type.
No declarations have been frozen or proved. Full exact partial text is in statement.md and the draft.

### F-NADD-1: two quantitative geometric proof obligations, not hypotheses

Write |·|₂ for the square root of Σᵢvᵢ² on the required coordinate type, and use the Euclidean dot product
Σᵢuᵢvᵢ. These are mathematical operations on `Fin n → ℝ`; no new ambient type is required.
Let ω=∇(realPart h), let σ be the one global sign in `HasDefiniteFastPart`, and set

    g_source=g/2,   L=(n+1)Mcomplex,   ρ_source=ρ/2,
    Cᵣ=m/2,        δᵣ=ρ/2,        αᵣ=1     (1≤r≤n−1).

L is a conservative positive Euclidean Hessian bound obtained from the actual complex maximum-norm
bilinear bound. It also gives |ω(y)−ω(x)|₂≤L|y−x|₂ along segments in G′. The signed lower bound gives
σ(ω(y)−ω(x))·(y−x)≥m|y−x|₂² on those segments. Real C³, complex C², positivity and openness are
already explicit inputs; neither inequality is assumed separately.

**Obligation A — full-sphere convex-to-index-one estimate with a collar.** For any I∈G and any
r-dimensional linear plane V⊂ω(I)⊥, for every 0<η<ρ the full sphere

    S(I,V,η)={I+v : v∈V, |v|₂=η}

is nonempty (r≥1), compact and contained in G′, and every segment [I,I+v] is in G′. Indeed
|v|∞≤|v|₂<ρ and the new collar implies containment. If πV denotes Euclidean orthogonal projection,

    σ(ω(I+v)−ω(I))·v ≥ mη²,
    (πV ω(I))=0,
    |πV ω(I+v)|₂ ≥ mη.

The continuous restricted-gradient lengths on this **nonempty compact full sphere** have a finite real
infimum ≥mη. For 0<ξ<δᵣ choose η=ξ to obtain

    sup_{0≤η≤ξ} inf_{S(I,V,η)} |πVω|₂ ≥ mξ > Cᵣ ξ.

At η=0 the sphere is the singleton {I} and the restricted gradient is zero. These facts give source-style
index-one constants at centres in G, with the sphere evaluated in the enlarged domain. They **do not**
give global §4.1.C steepness at every centre in G′. No empty real infimum, zero default, or unverified
extended-infimum convention is used. Merely renaming G′ as the source G would repeat F-NADD-1.

**Obligation B — the literal estimate needed by source Lemma 10.6, without boundary infima.** Let V be
any r-plane, λ any affine translate of V, and let a continuous curve γ satisfy the source's 10.6.A–C:
γ lies within distance b of λ, joins x to y, |y−x|₂=d>0, lies in the closed d-ball about x, and that
ball is contained in G′. Retain the source inequalities (10.5)–(10.7), with the constants above. For
αᵣ=1 the source's exact ε is

    ε=(Cᵣ/5)(d/2)=md/20,       b<min{d/4, ε/(4L)}.

Then at least one endpoint w∈{x,y} has |πVω(w)|₂>ε. Here is the full mathematical argument to formalize.
Suppose both endpoint projections had length ≤ε. Put Δ=y−x, v=πVΔ, w=Δ−v. Distance of each endpoint
from λ gives |w|₂<2b, while |v|₂≤d. Along [x,y]⊂G′, signed convexity and the upper Hessian bound yield

    md² ≤ σ(ω(y)−ω(x))·Δ
         ≤ |πV(ω(y)−ω(x))|₂ |v|₂ + |ω(y)−ω(x)|₂ |w|₂
         < 2εd + 2Lbd
         < (5/2)εd = md²/8,

a contradiction. Replacing the first strict estimate by ≤ and keeping the second strict estimate gives
the same contradiction; no endpoint attainment assumption about the supremum of a curve is involved.
This proves the exact strict output of source 10.6 with constants Cᵣ=m/2 and αᵣ=1. It works for either
σ sign. It does not require a full transverse sphere at a boundary centre of G′. In fact it uses only
endpoints and their segment, so the source ball and small-d hypotheses are stronger than needed here.

**How this imports the source faithfully.** Use the analytic Hamiltonian on the actual tube over G′×D
in §5.2.B. Prove the definite-Hessian instance of Lemma 10.6 by Obligation B; use it in the disc-diameter
argument of Proposition 7.4, whose proof calls 10.6. Section 8.7.A then obtains diameter control;
8.7.B–D use only nonzero ω and the integer-lattice bound to exclude full resonance; 8.7.E uses the
Hessian bound to propagate the remaining nonresonance. None invokes another sphere infimum.
Proposition 9.2 and §9.5 then give the same trap/first-exit estimate. Lemma 10.7's numerical system uses
the fixed constants above, so all αᵣ=1 produce the original a,b. The value-norm variant is Remark 4.5.A. The printed §4.3.A tube has closed imaginary
inequalities; use the smaller source width ρ_source=ρ/2 inside the draft's open tube, so those literal
analytic-domain requirements hold without assuming boundary continuity of P at width ρ.
This is a **proof-level convex specialization of Theorem 4.4**, with the geometric specialization proved
mathematically above; it is not a false assertion of the global §4.1.C premise on a bounded domain.
The future Lean provider must prove these geometric estimates and the source normal-form/iteration
lemmas. Successful draft elaboration is not certification of that provider.

This choice deliberately goes beyond the suggested shorthand, because a larger arbitrary open G′ alone
still has its own boundary. It retains a sound literal use of the downstream source estimates and exposes
the one replacement proof with its exact constants. No new standing geometry assumption asserting
steepness or its output has been added. The new G′/P hypotheses make extension of the whole Hamiltonian
explicit and keep the inner working action region separate from the source analytic boundary.

### F-NADD-4: fixed larger domains and collars for P, with the N conclusion unchanged

The following construction must be proved by P's providers, before applying N. It concerns P's whole
**outer** low-AMD region, not just an individual compact supplied trajectory. Its constants precede the
initial datum and the small mass. The current N type alone does not certify the physical chart.

1. From `AMDBox.Admissible`, use the strict positive action gaps, strict AMD/eccentricity inequalities,
   eccentricity <1 and radial separation. Increase the working AMD allowance to a fixed
   Aplus>B.outerAMD, and slightly widen the fast action box, preserving those inequalities and a positive
   radial gap by continuity. If necessary slightly increase the working eccentricity bound while keeping
   it below 1. This constructs a product chart domain containing the entire closed physical outer region.
2. Choose nested positive fast boxes: the closure of P's outer action box lies inside a working G, and
   closedBall∞(I,ρ)⊆G′ for every I∈G, with G′ still within that larger separated chart. Choose ρ smaller
   than half each working-to-source action gap and than the uniform imaginary width below. Leave a further
   fast collar beyond G′ for `actionNbhd G′ ρ` and keep every Λᵢ away from zero. Define

       δG = (1/2) min_i { B.lower i − lowerG i, upperG i − B.upper i } > 0.

   Then every projected point of P's whole outer region, including its closure, belongs to
   `innerCore G d` whenever 0<d≤δG. This proves the initial erosion and fast-domain typing uniformly.
3. In planar Poincaré coordinates, physical AMD is exactly (1/2)Σᵢ(ξᵢ²+ηᵢ²). Take

       D = { (ξ,η) : (1/2)Σᵢ(ξᵢ²+ηᵢ²) < Aplus },
       δD = (sqrt(2Aplus)−sqrt(2 B.outerAMD)) / (2 sqrt(2n)) > 0.

   A maximum-norm slow ball of radius δD changes Euclidean length by at most sqrt(2n)δD. Thus the
   **closed** slow ball with AMD≤B.outerAMD plus that maximum-norm collar lies strictly inside D.
   Every point of any supplied P outer-region segment is in `innerCore D d` for 0<d≤δD. Strict
   membership alone would not prove this if D were the outer projection itself.
4. Prove the regular planar Poincaré chart for the literal moving-Sun Hamiltonian, including its indirect
   kinetic term, and lift fast angles along the supplied finite segment. Use n fast actions, k=n slow
   pairs; transport `Phase (n+n)` to `Phase (n*2)` by the finite-index equivalence. Prove symplectic
   covariance so the N curve is the image of the **same** physical solution. Its fast coordinates must
   equal P's `keplerAction`, Λᵢ=mᵢ sqrt(aᵢ), with hK=−Σ mᵢ³/(2Λᵢ²).
5. On G′ and its extra fast neighborhood, derive g,m,Mcomplex explicitly from
   ∂ᵢhK=mᵢ³/Λᵢ³ and D²hK=diag(−3mᵢ³/Λᵢ⁴), taking one σ=−1. For positive lower/upper source edges
   lᵢ,uᵢ and ρ<min lᵢ, safe lower bounds are any positive numbers below
   minᵢ mᵢ³/(uᵢ+ρ)³ and minᵢ 3mᵢ³/(uᵢ+ρ)⁴. A safe maximum-norm complex bilinear bound is
   Σᵢ3mᵢ³/(lᵢ−ρ)⁴, or a larger positive number. Compactness modulo the fast-angle lattice, a strict
   positive radial gap, and analyticity supply a **uniform complex tube over G′×D** and a perturbation
   value bound B₀≥1, uniform for small μphys. No numerical tube width at observed masses is inferred.
6. Set ν=B₀μphys and normalize the actual perturbation H₁ by P=H₁/ν (positive μphys). N uses μ=ν,
   d=ν^b, delta=d/2. Choose μ* so ν is below both N thresholds for ±hK, ν≤1, and

       d < min{δG,δD,ρ/4},
       B.lower i + 2delta < B.innerLower i,
       B.innerUpper i + 2delta < B.upper i,
       B.initialAMD + 2n delta < B.outerAMD.

   Such choices exist since b>0 and all collars/gaps were fixed first. For c≤B₀^(−a), the P horizon
   exp(c μphys⁻ᵃ) is at most ν⁻¹ exp(ν⁻ᵃ). Coordinatewise action drift is at most delta. The identity
   aᵢ=Λᵢ²/mᵢ² is uniformly Lipschitz on the fixed positive box, giving the advertised axis drift.
7. For any supplied segment [l,r] in P's outer region, restrict to each queried [0,t], and use the fixed
   collars in steps 2–3. For t<0 use the reversed curve and −H, with σ=+1, and intersect the two
   thresholds; at t=0 the drift is zero. Do not assume confinement after the queried time. This produces
   P's `StoppedActionBound` for the existential small-μ scales above, not for arbitrary B,μ,T,delta.
   The separate `amdConfinement` helper then uses actual angular-momentum conservation and continuation
   to close the bootstrap. It does not itself prove its stopped-action input.

All chart, margin and quantitative analytic claims in this list are obligations, not pre-existing verified
providers. No N conclusion or slow erosion has been removed to accommodate P. This construction is the
specific bridge accepted in principle by audit §6, now with the additional explicit G′ required by v0.4.

### Deferred averaging and ledger candidates

Both averaging types are retained for future research, **DEFERRED from this approval packet**. Reactivation
requires the primary third-edition §6.1.9 statement and its actual quantitative proof, with all standing
hypotheses checked. The exact pages, proof questions and identified 1975/1976 primary papers are listed
in sources.md. The mean theorem cannot supply the missing smooth-source import by a binder change, and
the local corollary cannot be proved by deleting a supplied-flow premise. There is no analytic cutoff.
NO22's slide 14 confirms the rates only; it does not confirm the printed rank conditions.

Ledger candidates for the orchestrator (this task does not edit the ledger):

- **E-N-ADD-1, CANDIDATE source erratum.** Source: pinned Nek77 English PDF, SHA-256
  `0bfe624cf108096badd7e27fc40ca800e2948b68dce2bf8b9c653e0eaec4def6`, §1.18, printed p.15.
  Quote: “the perturbation H−H₀ becomes small” when bodies approach. The v0.3 independent audit confirms
  that this wording is printed. A reciprocal-distance interaction grows in magnitude near a collision;
  the ensuing angular-momentum argument prevents losing perturbative smallness. Proposed correction:
  **“ceases to be small”** (or “becomes large”). This is an English-text typo candidate; the original
  Russian wording and any publisher correction remain unverified. No Lean theorem depends on that sentence.
- **D-N-ADD-6, CANDIDATE explicit proof deviation.** The v0.4 partial theorem imports the convex instance
  of the source proof through the direct Lemma 10.6 endpoint argument, rather than asserting source-global
  steepness on an arbitrary bounded fast domain. Add explicit G′/P hypotheses and its working-domain collar
  to the approval record. Do not record the collar alone as a solution to the boundary-infimum issue.
  A separate claim that the printed definition is erroneous would need a source-convention/proof audit;
  no new printed-source erratum is asserted on that basis here.
- **S-N-ADD-2 / F-NADD-2/3, source-acquisition gaps, not source errata.** Both averaging declarations
  are deferred; neither the transcription nor the author slides supply the full primary quantitative
  proof and smooth/local continuation hypotheses. F-NADD-9 was our citation overstatement, corrected here.

### Validation receipt — v0.4 in `/root/code/KAM-inp`

Files authored: `/root/code/KAM-inp/.drafts/N/Additions.lean` and this worktree's
`docs/tracks/N/{statement,sources,notes}.md`. No files in `/root/code/KAM` were edited. No state-changing
git command, resource override, frozen/manifest edit or whole-library rebuild was used.

- Exact requested targeted elaboration, working directory `/root/code/KAM-inp`:
  `nice -n 5 lake env lean .drafts/N/Additions.lean` — **exit 0**. Final output:

  ```text
  .drafts/N/Additions.lean:94:8: warning: declaration uses `sorry`
  .drafts/N/Additions.lean:151:8: warning: declaration uses `sorry`
  .drafts/N/Additions.lean:177:8: warning: declaration uses `sorry`
  'KAM.Nekhoroshev.partialConvex_nekhoroshev' depends on axioms: [propext, sorryAx, Classical.choice, Quot.sound]
  'KAM.Nekhoroshev.averaging_mean' depends on axioms: [propext, sorryAx, Classical.choice, Quot.sound]
  'KAM.Nekhoroshev.averaging_most' depends on axioms: [propext, sorryAx, Classical.choice, Quot.sound]
  ```

  All three theorem bodies are unproved statement drafts. The two averaging declarations are retained
  but **DEFERRED from approval**; a `sorryAx` dependency is not a proof receipt.
- Final draft SHA-256:
  **`ebef5cbca47162d83c5481726408bd4c2977375526c3579d0c791dbd1b80af4d`**.
  **201 lines**, all at most 100 characters; nine definitions and three theorem bodies. `git ls-files`
  shows that `.drafts/N/Additions.lean` remains untracked/ignored.
- `PYTHONDONTWRITEBYTECODE=1 /root/code/KAM-inp/scripts/lint_sources.sh` — **exit 0**:

  ```text
  check_lean_modules: PASS (124 Lean files, 0 comparator configurations)
  FROZEN-ANCHOR GUARD OK
  ABI HASHES OK (94 frozen declarations)
  ```

  Lean elaboration and the lint's ABI elaboration ran serially. The lint excludes drafts; direct draft
  elaboration and code-mask checks separately passed, with exactly three theorem-body `sorry` tokens,
  no prohibited code constructs/resource overrides, and a valid module/author header.
- Mechanical preservation checks: all nine definition declarations match the audit's literal scratch
  copies byte for byte. Before comment line wrapping, reversing just the documented v0.4 patch exactly
  reproduced the audited v0.3 draft SHA-256
  `f7b3278008de764bf252d5aa02f43ac9234ac79cbb63b5191931e54e4dffbc5e`.
  Thus the averaging theorem declarations are unchanged, as is the partial theorem's stopped conclusion
  and its supplied-solution/initial-erosion clauses. Its one changed post-threshold premise is P on G′.
  The exact partial theorem block in statement.md matches the final Lean text.
- All documentation before its D22 additions section is preserved byte for byte. The v0.3 notes and
  receipt are explicitly historical. Owned-path `git diff --check` passes. The pinned Nek77 PDF,
  AKN transcription and NO22 slide hashes were recomputed and match sources.md; the audit was read only.

Remaining review boundary: the explicit convex endpoint argument and its proof-level substitution require
independent review before exact-text approval. The subsequent Lean proof campaign must implement the
source normal-form/parameter-selection arguments. Both averaging candidates remain deferred until the
listed primary statement and quantitative proof are pinned. P still owes the actual chart and uniform
larger-domain/collar construction. E-N-ADD-1 is a reported ledger candidate, not an edit to the public ledger.

## N-AVERAGING, draft v0.5 — primary-source revision

Current draft: `/root/code/KAM-inp/.drafts/N/Averaging.lean`. Only that new file and the N mathematical
packet are authored, together with the newly acquired original PDF in this worktree's incoming-N source
directory. D25's frozen partial theorem and `/root/code/KAM-inp/.drafts/N/Additions.lean` are read-only.
The historical v0.3/v0.4 deferral records above explain the former evidence state; this section supersedes
them for the two averaging candidates. Neither candidate is approved, frozen or proved by this revision.

Lean hard rules (verbatim):

1. Never use set_option maxHeartbeats (or any heartbeat-budget override). A default-heartbeat elaboration failure is a design signal to refactor or split the proof, not something to mask with a larger budget.
2. No Lean file may exceed 1500 lines of code.

### Change log and audit disposition

- **F-NADD-2:** read the complete primary AKN06 §6.1.9, the book-wide smoothness convention p.3 footnote 1,
  constants convention p.207, standard/averaged definitions pp.208–209, continuability Remark 6.4
  pp.217–218 and bibliography entries [66], [305], [451]. Obtain, pin and read all of [451], the original
  Neishtadt 1976 pp.1295–1298, including its hypotheses and proof. The former primary-acquisition hold is
  addressed. No analytic assumption from a different AKN subsection is imported into Theorem 6.11.
- **F-NADD-3:** retain `averaging_most`. The primary original's definition of Φ on p.1296 includes exact
  solution existence throughout [0,1/ε]; H includes data that exit. Theorem 2 bounds H. The explicit
  stopped proof plan below replaces the v0.4 proposed cutoff route; it needs no analytic or smooth
  action cutoff and does not delete the mean theorem's supplied-flow premise.
- **New E-NAVG-NEI-17:** the original printed proof has an unjustified exchange of supremum and integral
  at (17). Do not claim that finding the original PDF certifies its proof. The Fourier-envelope repair
  below proves the maximum-error estimate required by both candidates without that exchange. This is an
  explicit proof-specialization obligation for independent audit, not a theorem premise.
- The two non-frozen definitions and two theorem types retain the v0.4 mathematical contracts. The new
  file uses explicit products `(Fin n → ℝ) × (Fin n → ℝ)` instead of the definitionally equal planetary
  `Phase` abbreviation, avoiding planetary imports. The scalar h,f analytic predicates, real Hamiltonian,
  frequency and ODE semantics are imported from frozen definitions. No body of a frozen definition is
  redefined. `HasAveragingFrequencyRank` and `averagingError` were excluded from D25 and are drafted here.
- No new numerical nondegeneracy bound, nonzero frequency component, full-horizon flow premise for
  `averaging_most`, error hypothesis or exceptional-set hypothesis is introduced. Constants remain after
  fixed h,f,K and before ε, tolerances and the supplied mean-theorem family.
- Both are reactivated as **unapproved v0.5 candidates for independent statement/proof-route audit**.
  The previous missing-source objections are addressed at the statement stage, while the new proof
  repair is visible rather than reported as a completed Lean proof.

### Primary hypotheses mapped to the analytic Hamiltonian setting

Write Ω=2πω and φ=2πθ when using the original radian convention. For Hε=h(I)+εf(θ,I), the source action
field a is −∂θf evaluated at θ=φ/(2π), and its angular correction b is 2π∂If. Their smooth ε-dependence
is immediate; no dependence on ε inside the fixed f is needed. Smoothness is on a neighborhood of a
compact real source region, so all finite derivative bounds used below are finite and may enter constants.
Analyticity of the frozen classes implies these real smoothness and high angular regularity properties.
The average of a is zero by periodic differentiation/integration, hence the exact averaged action orbit is
J(t)=I₀. Its analyticity is not a prerequisite of AKN Theorem 6.11; smoothness suffices.

Choose the compact source action region G=closedBall∞(0,3R/4) and the measurable initial region
G₁=closedBall∞(0,R/2). All data are smooth on a neighborhood of G, which lies strictly inside B(R).
For example take ρ₁=R/8. The constant averaged orbit from G₁ stays at Euclidean distance at least R/4
from ∂G, so it discharges the original 4° and AKN Remark 6.4 with room. Pick η₀=ρ₁/4=R/32 (or smaller):
then every allowed η≤η₀ is strictly below the original Theorem 2 threshold ρ₁/2, and η₀≤R/4 as drafted.
The auxiliary choices are proof data, not additional inputs to the public theorem. Shrink ε₀ below the
source ε₁ and below 1/16 so κ=√ε lies in its required (0,1/2).

The draft K need not be a product. Its angular projection is compact, so cover it by finitely many integer
translates of the unit cell. Work on G₁×Tⁿ, restrict the nonnegative integral/exception to K and sum over
those finitely many cells. Boundary overlaps have zero phase volume; null or empty K are harmless.
The factor from dφ=(2π)ⁿdθ and the number of cells enter A. The norm change is Euclidean-to-maximum on
finite coordinates and also changes constants only. No normalized probability or invariant-density law
has been inserted. For the actual Hamiltonian, Liouville volume is preserved; the original general-ODE
argument needs only a bounded Jacobian distortion independent of ε, from div X=O(ε) over time 1/ε.

### Rank geometry: no hidden global frequency chart

Neishtadt's original 3° uses a nonzero **first component** for its ratio chart. AKN p.243 uses the intrinsic
projective map. The draft follows AKN. Do not silently deduce ω₁≠0 from ω≠0 or choose a single chart on
all of G. A coordinate-free version of the source's resonance-integral estimate suffices.

On the compact G, full rank of DΩ gives a uniform positive least singular value. In the projective branch,
surjectivity of (v,c)↦DΩ(I)v+cΩ(I) gives a uniform positive least singular value for its adjoint as well.
Thus there is λ>0 with, for every Euclidean unit e and I∈G,

    |(DΩ(I))ᵀe|₂² + |e·Ω(I)|² ≥ λ²

in the projective case; the full-rank case has the first term alone bounded below. Consequently the
normalized resonance function e·Ω has gradient bounded below near its zero set, uniformly in e.
Compactness of G×S^(n−1) supplies a finite coordinate cover with uniformly transverse derivatives there;
the rest is bounded away from resonance. Fubini/one-dimensional change of variables on these charts gives,
for integer k≠0 and small u>0, the uniform estimate

    volume{ I∈G : |k·Ω(I)|≤u } ≤ C u/|k|₂,

together with the corresponding integrals of the regularized reciprocal and its derivative. This is the
specific rank-to-volume lemma to formalize. The coordinate cover is used for integrals over action space,
not an assumption that each entire trajectory stays in one chart. It verifies the intrinsic-to-chart
translation of the original corrector proof. Constants depend on this fixed frequency map and compact G;
no lower singular-value parameter is silently fixed before h.

### Explicit maximum-error proof plan, repairing E-NAVG-NEI-17

Use a,b for the standard-system vector fields and a₀=average(a)=0 here. The plan also explains the
source method with a general a₀. On the compact G, take the angular Fourier coefficients a_k(I) of
ã=a(I,φ,0)−a₀(I). Analyticity in φ and smoothness in I imply uniform summability of all coefficients and
the finite list of I/φ derivatives used here. Choose a truncation with tail ≤κ, 0<κ<1/2, as in §4 p.1298.
Use a reciprocal regularization θκ equal to 1/y outside |y|≥κ with

    |θκ|≤C/κ,   |θκ′|≤C/κ²,
    |1−yθκ(y)|≤C and supported in |y|≤κ.

The original C¹ piecewise cubic suffices for first-derivative calculations; a C∞ interpolation with the
same scale bounds is an equally explicit option. Set

    wκ(I,φ)=Σ_{0<|k|≤N} a_k(I) θκ(k·Ω(I)) exp(i k·φ)/i,
    Wκ(I)=Σ_{0<|k|≤N}|a_k(I) θκ(k·Ω(I))|,
    Bκ(I)=Σ_{0<|k|≤N}|D_I[a_k(I) θκ(k·Ω(I))]|.

A fixed harmless Fourier factor can be included in θκ if period-one coordinates are used directly.
The rank-to-volume estimates, uniform Fourier summability and triangle inequality yield the **phase
supremum envelope bounds**, uniformly in the truncation N:

    ∫_G Wκ ≤ C(1+|logκ|),        ∫_G Bκ ≤ C/κ,
    ∫_G supφ|ã−Dφwκ·Ω| ≤ Cκ,
    ∫_G supφ|Dφwκ| ≤ C(1+|logκ|).

These strengthen the four integral estimates (11) in the direction needed for a time maximum. They must
be proved from the actual Fourier construction, not inferred by moving a supremum through an integral.
Finite sums make Wκ locally Lipschitz with directional variation bounded by Bκ; no derivative of an
absolute value at zero is assumed. The original assumption 2° ensures sufficient summability; our analytic
class has more angular regularity, which also controls the factor |k| in Dφwκ uniformly.

For a fixed measurable cohort A of initial points whose exact solutions remain in G through a common
T≤1/ε, bounded action velocity |İ|≤εC_a implies

    sup_{0≤t≤T}|wκ(I(t),φ(t))|
       ≤ Wκ(I₀)+ε C_a ∫_0^T Bκ(I(s)) ds.

Integrate over A, use the flow Jacobian bound at each **fixed** s and Tonelli to obtain

    ∫_A sup_{t≤T}|wκ(I(t),φ(t))|
       ≤ C(1+|logκ|+κ⁻¹).

This is the missing estimate for the time-dependent corrector term in (12). Apply the corrector identity
(12)–(13), take the time maximum **before** integrating initial data, and use
M_A(t)=∫_A sup_{u≤t}|I(u)−J(u)|. The Lipschitz averaged field, the residual bound, bounded vector fields,
and the corrector derivative bounds give

    M_A(t) ≤ εL₀∫_0^t M_A(s)ds
               + C[κ+ε/κ+ε(1+|logκ|)],      t≤T≤1/ε.

Gronwall with κ=√ε yields M_A(T)≤C√ε, uniformly over the cohort and its common duration. All constants
are independent of ε,κ,T and A; they depend on the fixed compact source data. Smooth dependence and
uniqueness make the error functions measurable on the cohorts; no arbitrary supplied family can change
the true curves there. This replaces the invalid equality (17), rather than treating sup∫ as ∫sup.

### Exiting data and actual existence: why `averaging_most` is retained

Reproduce the explicit p.1298 cohort argument with the corrected M_A bound. Let Φτ be initial data for
which the exact solution is defined up to τ and |I(t)−J(t)|≤ρ₁/2 through τ. Since J stays ρ₁ away from
∂G, each such solution is at least ρ₁/2 inside G at τ. Bounded action speed and ODE continuation extend
it through τ+δ inside G, with δ=ρ₁/(4C_a ε) when C_a>0. If C_a=0, actions are constant and continuation
is immediate. Bounded angular speed on compact actions and the torus also prevents finite-time blowup
of the lift. Each finite endpoint extends slightly, matching `IsSolutionOn`'s two-sided derivative semantics.

The number of steps to reach 1/ε is at most ceil(4C_a/ρ₁)+1, independent of ε. On each surviving cohort,
the corrected mean-of-maximum bound through the extended duration and Markov give loss measure at most
C√ε/(ρ₁/2). A finite union therefore bounds U″=H(ρ₁/2,ε) by C√ε. The cohort U′ surviving the entire
interval has ∫_{U′}h≤C√ε. Both are exactly the two claims of source Theorem 1 (7), now with the missing
maximum step supplied as an explicit obligation.

For 0<η≤η₀<ρ₁/2, put in E all of U″ plus the data in U′ with h>η, then intersect with K and transport
period cells. Its volume is ≤C√ε+C√ε/η≤A√ε/η after a fixed constant enlargement. Every point outside E
has a genuine full-window solution and error ≤η. Thus `averaging_most` has no supplied-flow or confinement
premise. The bad set explicitly includes failed continuability, as it does in Nei76's definition of H.
Measurable cohorts/exceptional sets come from smooth flow dependence and stopped-domain exit sets.

For the public **mean theorem**, every supplied Φ exists on [0,1/ε] in B(R). On K∩U′ it agrees with the
unique source trajectory, so the corrected good-data mean bound applies. On K∩U″ its error is bounded
by 3R/2, since its action is in B(R) and its initial action is in B(R/2); multiplying by volume(U″) gives
another O(√ε) contribution. Hence the whole mean is O(√ε), with integrability from continuity of the
maximum on compact K. Markov at A√ε/κ supplies the κ clause for every κ>0. This proves why this type
can quantify over any supplied family on K without making a nonexistent full flow a premise of the local
existence theorem. It also explains why a boundary assumption about averaged trajectories alone is enough.

This is an explicit mathematical proof plan, not a Lean proof receipt. The principal remaining obligations
are the rank-to-volume lemma, Fourier envelope bounds, smooth flow/Jacobian infrastructure and measurable
cohort construction. They are proof obligations to discharge below a future frozen statement; none appears
as a conclusion-shaped assumption in the draft. The prior rough averaging estimate remains about 6k–12k
lines for the quantitative averaging core plus 2k–4k for measure/local-flow assembly, with shared analysis
and ODE infrastructure counted separately. These are uncertain planning ranges, not measured inventories.

### Errata and deviations for the orchestrator

- **E-NAVG-NEI-17, CANDIDATE source-proof gap.** Nei76 p.1298 (17), together with z(t)'s definition on
  p.1297 and h's definition p.1295 (4): the printed equality sup_t z(t)=∫_{U′}h interchanges a time
  supremum and an initial-data integral. Only the opposite inequality is automatic, so the displayed
  fixed-time Gronwall estimate does not by itself prove the maximum-error conclusion. The following
  exit argument also uses that stronger conclusion. Rendered original pages were checked. Proposed
  repair: prove the Fourier-envelope bound and apply Gronwall to M_A(t)=∫_A sup_{u≤t}|I(u)−J(u)|,
  as above. This is not a counterexample to either dynamical theorem. Independent audit is required.
- **No AKN06 mathematical erratum identified.** Its p.243 mean formula is a mean of a maximum; it does
  not itself print the erroneous supremum/integral equality. Its smoothness and continuability assumptions
  are supplied by earlier explicit conventions, not missing hypotheses silently invented here.
- **Regularization caution.** Nei76 p.1298's θ is C¹, not C² at ±κ. Use precisely its first-derivative
  regularity or an explicit C∞ interpolation; do not cite the cubic as C∞. No separate erratum is claimed.
- **D-NAVG-1:** analytic Hamiltonian specialization, equal action/angle dimension n≥2, fixed h,f,K before
  constants, period-one coordinates, maximum norms, actual ODE solutions and positive parameters. These
  are explicit conservative conventions/specializations; frozen analytic classes impose stronger boundary
  continuity than the compact-interior proof needs.
- **D-NAVG-2:** intrinsic projective-rank geometry replaces the original single nonzero-component chart
  in the corrector integral estimates; AKN p.243 already states the intrinsic alternative. The quantitative
  compactness/transversality argument is above, not a hidden global-chart assumption.
- **D-NAVG-3:** explicit maximum-error repair and actual-exit cohort argument. This replaces the previous
  unaudited cutoff deduction and must be included in the proof-route review. A supplied family is still
  required only for the mean expression; `averaging_most` concludes existence.
- **Pagination observation, not source erratum:** the owner's +11 page map holds on the inspected chapter-6
  pages. The book-wide smoothness footnote is printed p.3/PDF p.16 and bibliography [451] is printed
  p.497/PDF p.505. Those locators were checked individually rather than extending +11 globally.

The orchestrator owns the ledger; this task reports candidates and does not edit it. Existing E-N-ADD-1
and the approved N-PARTIAL-CONVEX deviation remain historical and are not reopened by averaging v0.5.

### Validation receipt — averaging v0.5

Checks were run serially in `/root/code/KAM-inp`; the exact requested command was
`nice -n 5 lake env lean .drafts/N/Averaging.lean`. **Exit 0**, only these two warnings:

```text
.drafts/N/Averaging.lean:65:8: warning: declaration uses `sorry`
.drafts/N/Averaging.lean:93:8: warning: declaration uses `sorry`
'KAM.Nekhoroshev.averaging_mean' depends on axioms: [propext, sorryAx, Classical.choice, Quot.sound]
'KAM.Nekhoroshev.averaging_most' depends on axioms: [propext, sorryAx, Classical.choice, Quot.sound]
```

Final draft SHA-256: **`6b8bf1941fd1c30f3d8ca1e81b304873d31959eae85809b52f39c9e6e132ff62`**.
The module has **116 lines**, no line above 100 characters, two definitions and exactly two theorem-body
`sorry` placeholders. Its header names Scott Armstrong and Zohar Komargodski, with `module`, public imports,
module docstring and exposed public noncomputable section. Direct code-mask checks passed: no prohibited
proof escape, ambient type or resource override. `git ls-files .drafts/N/Averaging.lean` has no output:
the new draft remains untracked/ignored. Exact full-module inclusion in statement.md was checked byte for byte.
Successful elaboration is statement validation, not theorem or proof-route closure.

`PYTHONDONTWRITEBYTECODE=1 /root/code/KAM-inp/scripts/lint_sources.sh` — **exit 0**:

```text
check_lean_modules: PASS (175 Lean files, 0 comparator configurations)
FROZEN-ANCHOR GUARD OK
ABI HASHES OK (140 frozen declarations)
```

The lint excludes drafts, so its pass is paired with the direct draft elaboration and rule checks above.
The frozen guard and ABI check include D25. No whole-library rebuild or budget override was used.
Owned-path `git diff --check` passes. The owner AKN06 PDF hash was checked against `docs/sources.json`
and recomputed; the original Nei76 PDF hash was recomputed. The exact Crossref book record was rechecked
for title, all registered ISBNs and publication year. New source data is confined to the incoming-N folder.

Preservation checks:

- `/root/code/KAM-inp/.drafts/N/Additions.lean` remains SHA-256
  `ebef5cbca47162d83c5481726408bd4c2977375526c3579d0c791dbd1b80af4d`, unchanged.
- The entire N-PARTIAL-CONVEX mathematical section, including its exact Lean block and consumer contract,
  remains byte-identical, SHA-256 `2fa010501b094967e5be90b7ae5dd72085077e10f37fefa741f5a89962e3a372`.
- Frozen files and manifests were not edited. Historical v0.4 tables/questions are labelled historical;
  the current averaging section and its owner questions are v0.5. Files in `/root/code/KAM` were not edited.
- No state-changing git command was run; unrelated blueprint activity was left alone.

Handoff: new averaging module and updated N statement/source/notes, plus the pinned original quantitative
paper. Primary hypotheses and the actual-existence good-set definition are now available. Both theorem
candidates remain unproved and await a fresh independent audit of the exact statements, rank-chart
translation, maximum-error repair and exit-cohort proof plan. E-NAVG-NEI-17 is a reported ledger candidate;
no AKN06 mathematical erratum is asserted and no ledger is edited by this task.
