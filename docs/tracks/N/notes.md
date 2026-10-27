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
