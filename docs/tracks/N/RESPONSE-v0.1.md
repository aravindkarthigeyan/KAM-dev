# Track N — response to the independent v0.1 statement audit

Revision: **v0.2**, 27 October 2026. Audit: [AUDIT-statements-v0.1.md](AUDIT-statements-v0.1.md).
Disposition: every finding is addressed below. The original N-HEAD type is preserved under D17/D18;
its source gap is not represented as solved. A separate proposed theorem supplies an auditable direct
Pöschel route. No statement is frozen and no theorem proof is claimed.

## Finding-to-change map

| Finding | Change and location | Remaining status |
|---|---|---|
| **F-N1** complex analytic input | Explicit source-gap section under N-HEAD in [statement.md](statement.md), and E-N-BM-4 in [notes.md](notes.md). The audit's entire oscillatory family is recorded. Added `HasComplexHessianBound` and **separate** `quasiConvex_nekhoroshev_complexBound` in `.drafts/N/Statements.lean`. [sources.md](sources.md) pins every additional input to actual source lines/displays and supplies the quantitative conversions. | **Open for original N-HEAD.** The new theorem is not a repair of the old type; its exact text and conversion need independent approval. |
| **F-N2** false unrestricted λ-uniform radius | E-N-BM-2 now records the audit's checked counterexample and its exact scope. N-QC remains pointwise. A future BM provider must restrict basepoints and analyze normalized frequencies. | No false inverse-radius assertion was added. The direct Pöschel Theorem 1 route for N-HEAD-C does not use this step. |
| **F-N3** same-inner-ball restart | E-N-BM-3 records the audit's checked counterexample to the displacement implication. Required BM provider domain is B(0,3R/4) with R/4 outer margin. | No restart or confinement premise was added to either headline. N-HEAD-C uses a fixed P and tube, avoiding BM's restart. |
| **F-N4** gate dimension | Removed `(hn : 3 ≤ n)` from N-QC and N-ZERO; mathematical statements updated. Both headline candidates retain n≥3. | Track I's n=2 use is now expressible. Exact gate text remains subject to owner approval. |
| **F-N5** size zero | Preserved positive ε in both exponential statements and separate N-ZERO for the actual size-zero f. | No division or negative-power convention at zero introduced. |
| **F-N6** zero resonance vector | Added E-N-BM-5: central-half interval, rational strictly between −1 and 1, distinct coordinate indices, nonzero/primitive vector, numerical constant 12 instead of 6. Also records the ℤ versus ℤⁿ typo. | A specified BM arithmetic repair, not a proved provider or headline assumption. Direct Pöschel route avoids that argument. |
| **F-N7** authors | Header now names Scott Armstrong and Zohar Komargodski in copyright and Authors lines, per D15. | Corrected in the owned draft only. |
| **F-N8** quantifier order | Mechanical byte comparison preserves original N-HEAD. Mcomplex and ωmin precede C,T,c,ε₀ in the distinct theorem; h and f remain after those constants. | No h-dependent constant is hidden in either contract. |
| **F-N9** current lint | Old v0.1 failure output retained under a historical heading. New v0.2 lint passes; separate direct draft elaboration passes with only four `sorry` warnings. | Production lint excludes drafts, explicitly noted. |
| **F-N10** examples | Notes use the shifted quadratic with n=3,R=s=1,M=6,m=1,Mcomplex=3,ωmin=1 and a bounded cosine perturbation. | No centered-quadratic strict-QC example or removed nonvanishing clause. This is a mathematical consistency check, not a Lean proof. |

The audit's additional ledger observations E-N-GCB-3 (constant subscript in the ℓ¹ norm) and E-N-POS-1
(complex-symmetric spectral radius versus operator norm) are also recorded in notes.md. The new definition
uses an actual operator norm. N-STEEP remains deferred. No source ledger or audit report was edited.

## What the source comparison determined

The new theorem retains the original BM class and adds **two** fixed bounds:

1. A complex Hessian bound Mcomplex, matching Pöschel p. 190's complex-domain operator bound.
2. A real frequency lower bound ωmin on B(0,R). This is an explicit route strengthening: it supplies a
   uniform quantitative QC conversion and excludes Theorem 1's low-frequency fixed-radius branch
   (p. 191, first line). It is not misattributed as a blanket hypothesis of Pöschel's theorem, nor
   asserted necessary for every mathematically possible Nekhoroshev result.

There is no additional independent l parameter: sources.md gives explicit ell and reduced curvature μ
from n,m,Mcomplex,ωmin. The existing real first-order bound M controls the source Ω₀ and hence gives a
uniform positive time prefactor. No new frequency upper bound, h-value bound, complex third-derivative
bound, resonance hypothesis or normal-form estimate is assumed. The real higher derivative bounds remain
as inherited source premises of the approved class; they are not silently recast as complex bounds.

The source route is **Pöschel Theorem 1, pp. 190–191**, directly, not BM11's improved-exponent proof.
The original Theorem 3 locator on pp. 206–207 was also verified. Every period/norm conversion is explicit:
φ=2πθ with H̃=2πH preserves time, and a fixed strip loss converts the sup perturbation norm to Pöschel's
weighted Fourier norm. Lochak's unavailable original PDF remains unverified and is not a dependency.

## Owner decision

[statement.md](statement.md), question 7 asks which theorem to freeze as the track-N headline.
**Recommendation:** after fresh independent exact-statement audit, select
`quasiConvex_nekhoroshev_complexBound`, with both additional fixed inputs visible. Retain
`quasiConvex_nekhoroshev` as the broader D17/D18 target with F-N1 open. Keeping N-HEAD as headline instead
is a legitimate owner choice, but requires a new argument closing the missing uniform analytic import.
No approval or freeze has been inferred from the request to draft the alternative.

## Validation and ownership

- Targeted `nice -n 5 lake env lean .drafts/N/Statements.lean`: exit 0; only the four expected theorem
  `sorry` warnings. All four `#print axioms` results contain `sorryAx`; no proof completion is claimed.
- `scripts/lint_sources.sh`: exit 0, module check PASS, frozen guard OK, 25 frozen ABI hashes OK.
- Original N-HEAD declaration is byte-identical to the pre-edit snapshot, SHA-256
  `37028cd2d8cf0e9448e74428246814eb57cf9450ac811544aec70be7267abc56`.
  Mechanical comparison confirms the new theorem's solution conclusion is identical.
- Draft: 203 lines, all lines ≤100 characters, ignored/untracked, no resource-budget overrides.
  Ten old definitions unchanged; one new definition. `git diff --check` and direct owned-file checks pass.
- Exact command outputs and axiom lists are in notes.md. Source-refutation scratch receipts are attributed
  to the independent audit, not claimed as rerun in this revision.
- Writes: `.drafts/N/Statements.lean`, `docs/tracks/N/{sources,statement,notes}.md`, and this response.
  No frozen, manifest, generated, other-track or audit-scratch file was edited; no state-changing git
  command was used. Concurrent orchestrator commits are not task-generated commits.

The two Lean hard rules remain verbatim:

> Never use `set_option maxHeartbeats` (or any heartbeat-budget override). A default-heartbeat elaboration
> failure is a design signal to refactor or split the proof, not something to mask with a larger budget. If a
> proof will not elaborate at default heartbeats, report it as a design signal.
>
> No Lean file may exceed 1500 lines of code.
