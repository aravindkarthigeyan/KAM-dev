# Track N — infrastructure, audit notes and handoff

Phase 0, 27 October 2026. The four deliverables are complete for **statement review**. None of these
statements is approved, frozen or proved. The intentional draft theorem bodies use `sorry` under the
explicit Phase 0 brief; the repository-wide guard currently rejects such drafts (details below).

## Deliverables and approach

- `docs/tracks/N/sources.md`: pinned BM11 and GCB16, exact source transcriptions, live arXiv/Crossref
  verification, acquired Pöschel scan, and unsuccessful Lochak retrieval attempts.
- `docs/tracks/N/statement.md`: source conventions, exact mathematical contracts, constant quantifiers,
  deviations, owner recommendations and the explicit decision to defer N-STEEP.
- `.drafts/N/Statements.lean`: ten definitions and three theorem drafts in `KAM.Nekhoroshev`.
  It remains untracked and ignored; no frozen theorem or provider is imported.
- `docs/tracks/N/notes.md`: this infrastructure and validation handoff.

Additional permitted source acquisition: `sources/incoming-N/poschel1993_gdz.pdf`, downloaded into a newly
created empty incoming directory, checked for a PDF signature and pinned in sources.md. No other files
were written by this work. No git index, commit, branch or remote operation was performed.

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
analysis itself. Source acquisition is now complete for Pöschel but the scanned theorem statements still
need visual/OCR audit before assigning provider contracts. No resonance theorem is frozen on the strength
of a secondary citation. The first substantial unpaid estimate is a quantitative resonant normal form
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

All entries below are **CANDIDATE**, checked against the pinned local PDF text but not independently
adjudicated. They are reported here; this track does not edit `docs/errata/ledger.json`.

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
  N-QC freezes only the pointwise nonsingularity statement, which does not have this issue.

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
  The headline remains an intended classical theorem; its proof route requires this source repair.

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

Deviations introduced by this packet are exhaustively listed as D-N-1 through D-N-7 in statement.md.
The positive-definite sign version of quasi-convexity is retained; a negative-definite variant by reversing
H is not added silently. There are no newly claimed errata for the unaudited Pöschel/Lochak theorem text.

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

## Checks and exact outcomes

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

## Uncertainties and next decisions

- The endpoint theorem is a source-backed intended contract, not a certification of all quantitative
  dependencies in the printed proof. Resolve E-N-BM-2 and E-N-BM-3 before proof-route acceptance.
- Audit Pöschel's scanned normal-form and stability statements and choose the resonant proof route;
  Lochak acquisition remains open, with original theorem numbers **[unverified]**.
- Resolve the `.drafts` lint-policy mismatch centrally; do not weaken production frozen-anchor protection.
- Owner questions are in statement.md. No claimed approval, sealing, Lean theorem proof, planetary
  collision exclusion, or observed-Solar-System stability follows from this Phase 0 packet.
