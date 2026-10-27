# N-p8 slice topology review

Reviewer: `sol-review-N-e`. Marker: `rev-N-e`.

## Verdict: FAIL

The source statements and geometry are mostly faithfully inventoried, but the packet misses direct standing-package edges, drops guards or conclusions in several source fields, and has incorrect edge locators. The replacements below preserve the Euclidean Part 8 convention and distinguish geometric K_g from analytic K_a. No theorem is proved or refuted by this topology verdict.

## Scope and checks

Read the complete REVIEW-BRIEF and binding SPEC; all raw source lines in this slice; all its node and coverage records; the imports packet; and the statements of every directly cited result in other parts. Only allowed frozen definition/declaration text and manifest identity fields were inspected in Lean. No implementation module, provider, proof body or manifest state was used. No Lean or build command was run. Only the two requested review files are edited.

| Reviewed input | SHA-256 |
|---|---|
| `docs/graph/N/SPEC.md` | `2e804c60769d5994e9b6f17a39cc397cc6faf08032620c89c97c51ff6e539c3f` |
| `docs/graph/N/packets/N-p8.nodes.md` | `f04d277932adb7b7aa0906397ab95cbdcc40b36c231f3805eaf3a2f9d3053905` |
| `docs/graph/N/packets/N-p8.coverage.md` | `5ea5871e8213f1eea440a4472a58dfb2d87e6d8f73d48b86a2d0b07b01ab7b92` |
| `blueprint-N/parts/p8-resonance-geometry.tex` | `8c7b5239312aaa1bb68e282b36accc8731812c60e07b983c205059399ce23094` |

The three slice-source hashes match CORPUS.sha256, and the consumed K Part 1 source matches IMPORTS.sha256. A source-only traversal of the supplied four root closures finds every existing node of these slices reachable (49 in N-p8; 66 in N-p910). This is reachability, not proof status. The active packets have fewer nodes than the pre-extraction count because valid exclusions were made.

Checked K-lattice maximality, unimodular volume, the projection formulas, finite covering, the Geometric Lemma and the action covering. The excluded direction/totality/errata/consumer remarks remain administrative; source notes are provenance. No track-K import is used by this slice. The imported-node packet itself is outside this reviewer assignment.

## Per-node audit

Every row records both statement and proof spans; a step has the same span for both. The reasons name direct uses, not merely transitive reachability.

| Node ID | Result | Source spans re-read | Reason for FAIL |
|---|---|---|---|
| `bpN:p8:ext-free` | PASS | `blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:ext-free@L17-L17; no proof (definition/external)` | Source fields, direct uses and disposition checked. |
| `bpN:p8:ext-gram` | PASS | `blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:ext-gram@L18-L18; no proof (definition/external)` | Source fields, direct uses and disposition checked. |
| `bpN:p8:ext-schur` | PASS | `blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:ext-schur@L19-L19; no proof (definition/external)` | Source fields, direct uses and disposition checked. |
| `bpN:p8:ext-units` | PASS | `blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:ext-units@L20-L20; no proof (definition/external)` | Source fields, direct uses and disposition checked. |
| `bpN:p8:ext-indep` | PASS | `blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:ext-indep@L21-L21; no proof (definition/external)` | Source fields, direct uses and disposition checked. |
| `bpN:p8:ext-basic` | PASS | `blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:ext-basic@L22-L22; no proof (definition/external)` | Source fields, direct uses and disposition checked. |
| `bpN:p8:lattice` | PASS | `blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:lattice@L28-L31; no proof (definition/external)` | Source fields, direct uses and disposition checked. |
| `bpN:p8:lattice-basis` | PASS | `blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:lattice-basis@L33-L41; proof blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:lattice-basis@L42-L46` | Source fields, direct uses and disposition checked. |
| `stepN:p8:lb-basis` | FAIL | `blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:lb-basis@L43-L43; proof blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:lb-basis@L43-L43` | Missing direct edge to `bpN:p8:lattice`: lattice objects, their spans/dimensions or the trivial/full lattice are used at this consumer; SPEC requires the package directly |
| `stepN:p8:lb-unimod` | FAIL | `blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:lb-unimod@L44-L44; proof blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:lb-unimod@L44-L44` | Missing direct edge to `bpN:p8:lattice`: lattice objects, their spans/dimensions or the trivial/full lattice are used at this consumer; SPEC requires the package directly The cited ext-gram assumes column injectivity; it does not prove it. The direct input is lb-basis; the ext-gram edge is unsupported. |
| `stepN:p8:lb-sub` | FAIL | `blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:lb-sub@L45-L45; proof blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:lb-sub@L45-L45` | Missing direct edge to `bpN:p8:lattice`: lattice objects, their spans/dimensions or the trivial/full lattice are used at this consumer; SPEC requires the package directly |
| `bpN:p8:volume-def` | PASS | `blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:volume-def@L48-L51; no proof (definition/external)` | Source fields, direct uses and disposition checked. |
| `bpN:p8:projection` | FAIL | `blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:projection@L53-L63; proof blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:projection@L64-L68` | Correct EDGE locator/rationale for `bpN:p8:lattice` to consumer L61. Source fields omit both contraction bounds, the d=0 convention and the exported lattice projection notation (L56/L61). Missing direct lattice-basis(a) input when passing from independent columns to an arbitrary lattice in the consequence at L61. |
| `stepN:p8:pr-alg` | PASS | `blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:pr-alg@L65-L65; proof blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:pr-alg@L65-L65` | Source fields, direct uses and disposition checked. |
| `stepN:p8:pr-dist` | PASS | `blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:pr-dist@L66-L66; proof blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:pr-dist@L66-L66` | Source fields, direct uses and disposition checked. |
| `stepN:p8:pr-nest` | PASS | `blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:pr-nest@L67-L67; proof blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:pr-nest@L67-L67` | Source fields, direct uses and disposition checked. |
| `bpN:p8:lattice-volume` | FAIL | `blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:lattice-volume@L70-L81; proof blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:lattice-volume@L82-L88` | Correct EDGE locator/rationale for `bpN:p8:lattice-basis` to consumer L75. Correct EDGE locator/rationale for `bpN:p8:projection` to consumer L77. |
| `stepN:p8:lv-ab` | FAIL | `blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:lv-ab@L83-L83; proof blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:lv-ab@L83-L83` | Missing direct edge to `bpN:p8:lattice`: lattice objects, their spans/dimensions or the trivial/full lattice are used at this consumer; SPEC requires the package directly |
| `stepN:p8:lv-c` | FAIL | `blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:lv-c@L84-L84; proof blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:lv-c@L84-L84` | Missing direct edge to `bpN:p8:lattice`: lattice objects, their spans/dimensions or the trivial/full lattice are used at this consumer; SPEC requires the package directly Missing direct edge to `bpN:p8:ext-gram`: the determinant of N-transpose (A-transpose A) N is expanded multiplicatively |
| `stepN:p8:lv-d` | FAIL | `blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:lv-d@L85-L85; proof blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:lv-d@L85-L85` | Missing direct edge to `bpN:p8:lattice`: lattice objects, their spans/dimensions or the trivial/full lattice are used at this consumer; SPEC requires the package directly |
| `stepN:p8:lv-e` | PASS | `blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:lv-e@L86-L86; proof blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:lv-e@L86-L86` | Source fields, direct uses and disposition checked. |
| `stepN:p8:lv-f` | FAIL | `blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:lv-f@L87-L87; proof blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:lv-f@L87-L87` | Missing direct edge to `bpN:p8:lattice`: lattice objects, their spans/dimensions or the trivial/full lattice are used at this consumer; SPEC requires the package directly |
| `bpN:p8:klattice` | PASS | `blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:klattice@L96-L99; no proof (definition/external)` | Source fields, direct uses and disposition checked. |
| `bpN:p8:maximal` | FAIL | `blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:maximal@L101-L111; proof blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:maximal@L112-L118` | Correct EDGE locator/rationale for `bpN:p8:volume-def` to consumer L108. The source conclusion drops the maximality guards in (c),(d),(e); (c) is false for a general K-lattice. Restore the literal conditional clauses at L106-L108. |
| `stepN:p8:mx-char` | PASS | `blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:mx-char@L113-L113; proof blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:mx-char@L113-L113` | Source fields, direct uses and disposition checked. |
| `stepN:p8:mx-exist` | FAIL | `blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:mx-exist@L114-L114; proof blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:mx-exist@L114-L114` | Missing direct edge to `bpN:p8:lattice`: lattice objects, their spans/dimensions or the trivial/full lattice are used at this consumer; SPEC requires the package directly |
| `stepN:p8:mx-c` | FAIL | `blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:mx-c@L115-L115; proof blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:mx-c@L115-L115` | Missing direct edge to `bpN:p8:lattice`: lattice objects, their spans/dimensions or the trivial/full lattice are used at this consumer; SPEC requires the package directly |
| `stepN:p8:mx-d` | FAIL | `blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:mx-d@L116-L116; proof blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:mx-d@L116-L116` | Missing direct edge to `bpN:p8:lattice`: lattice objects, their spans/dimensions or the trivial/full lattice are used at this consumer; SPEC requires the package directly |
| `stepN:p8:mx-e` | FAIL | `blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:mx-e@L117-L117; proof blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:mx-e@L117-L117` | Missing direct edge to `bpN:p8:lattice`: lattice objects, their spans/dimensions or the trivial/full lattice are used at this consumer; SPEC requires the package directly Missing direct edge to `bpN:p8:volume-def`: the lattice volume is used directly in the displayed computation |
| `bpN:p8:blocks` | FAIL | `blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:blocks@L120-L127; no proof (definition/external)` | The record must retain the d>=1 guard on lambda_d and delta_Lambda; it must not define lambda_0 through the generic Lambda field. |
| `bpN:p8:blocks-cover` | PASS | `blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:blocks-cover@L129-L132; proof blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:blocks-cover@L133-L136` | Source fields, direct uses and disposition checked. |
| `stepN:p8:bc-finite` | PASS | `blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:bc-finite@L134-L134; proof blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:bc-finite@L134-L134` | Source fields, direct uses and disposition checked. |
| `stepN:p8:bc-top` | FAIL | `blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:bc-top@L135-L135; proof blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:bc-top@L135-L135` | Missing direct edge to `bpN:p8:klattice`: the maximal K-lattice family or its dimension stratum is used directly |
| `bpN:p8:sqrt` | PASS | `blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:sqrt@L140-L143; proof blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:sqrt@L144-L146` | Source fields, direct uses and disposition checked. |
| `bpN:p8:geometric` | FAIL | `blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:geometric@L148-L158; proof blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:geometric@L169-L180` | Missing direct edge to `bpN:p8:klattice`: the maximal K-lattice family or its dimension stratum is used directly |
| `bpN:p8:geom-formula` | FAIL | `blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:geom-formula@L160-L164; proof blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:geom-formula@L165-L167` | The words "as in lattice-volume(e)" compare an argument. That theorem has integer k, whereas this statement allows real k, so it is not a theorem application. Projection(a) supplies Qk != 0 directly. |
| `stepN:p8:gl-theta` | FAIL | `blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:gl-theta@L170-L170; proof blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:gl-theta@L170-L170` | Missing direct edge to `bpN:p8:lattice`: lattice objects, their spans/dimensions or the trivial/full lattice are used at this consumer; SPEC requires the package directly Missing direct edge to `bpN:p8:volume-def`: the lattice volume is used directly in the displayed computation Missing direct edge to `bpN:p8:klattice`: the maximal K-lattice family or its dimension stratum is used directly |
| `stepN:p8:gl-theta2` | PASS | `blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:gl-theta2@L171-L171; proof blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:gl-theta2@L171-L171` | Source fields, direct uses and disposition checked. |
| `stepN:p8:gl-setup` | FAIL | `blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:gl-setup@L172-L172; proof blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:gl-setup@L172-L172` | Missing direct edge to `bpN:p8:lattice`: lattice objects, their spans/dimensions or the trivial/full lattice are used at this consumer; SPEC requires the package directly Missing direct edge to `bpN:p8:klattice`: the maximal K-lattice family or its dimension stratum is used directly The source step fixes V, lambda, delta, Pi, Q, V_+, lambda_+, which later steps consume; these data are absent from the conclusion field. |
| `stepN:p8:gl-vol` | FAIL | `blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:gl-vol@L173-L173; proof blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:gl-vol@L173-L173` | Missing direct edge to `bpN:p8:lattice`: lattice objects, their spans/dimensions or the trivial/full lattice are used at this consumer; SPEC requires the package directly Missing direct edge to `bpN:p8:volume-def`: the lattice volume is used directly in the displayed computation |
| `stepN:p8:gl-proj` | PASS | `blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:gl-proj@L174-L176; proof blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:gl-proj@L174-L176` | Source fields, direct uses and disposition checked. |
| `stepN:p8:gl-div` | PASS | `blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:gl-div@L177-L179; proof blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:gl-div@L177-L179` | Source fields, direct uses and disposition checked. |
| `bpN:p8:covering` | PASS | `blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:covering@L184-L195; proof blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:covering@L196-L201` | Source fields, direct uses and disposition checked. |
| `stepN:p8:cv-params` | FAIL | `blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:cv-params@L197-L197; proof blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:cv-params@L197-L197` | Missing direct edge to `bpN:p8:lattice`: lattice objects, their spans/dimensions or the trivial/full lattice are used at this consumer; SPEC requires the package directly Restore the dimension guard and the explicitly separate auxiliary delta_Theta; no lambda_0 exists (L197). |
| `stepN:p8:cv-cover` | FAIL | `blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:cv-cover@L198-L198; proof blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:cv-cover@L198-L198` | Missing direct edge to `bpN:p8:klattice`: the maximal K-lattice family or its dimension stratum is used directly |
| `stepN:p8:cv-nonres` | PASS | `blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:cv-nonres@L199-L199; proof blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:cv-nonres@L199-L199` | Source fields, direct uses and disposition checked. |
| `stepN:p8:cv-radii` | FAIL | `blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:cv-radii@L200-L200; proof blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:cv-radii@L200-L200` | Missing direct edge to `bpN:p8:lattice`: lattice objects, their spans/dimensions or the trivial/full lattice are used at this consumer; SPEC requires the package directly Missing direct edge to `bpN:p8:volume-def`: the lattice volume is used directly in the displayed computation Missing direct edge to `bpN:p8:klattice`: the maximal K-lattice family or its dimension stratum is used directly |
| `bpN:p8:cutoffs` | FAIL | `blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:cutoffs@L203-L211; proof blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:cutoffs@L212-L214` | Missing direct edge to `bpN:p8:lattice`: lattice objects, their spans/dimensions or the trivial/full lattice are used at this consumer; SPEC requires the package directly |
| `stepN:p8:co-incl` | FAIL | `blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:co-incl@L213-L213; proof blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:co-incl@L213-L213` | Missing direct edge to `bpN:p6:setting`: clause (b) uses the analytic Z_K cut-off and nonresonance predicate (N1) Missing direct edge to `bpN:p7:resonance-data`: the closeness clause in (b) uses the exact-resonance predicate |

## Coverage findings

No failing coverage dispositions. **All other coverage items PASS** (all 76 items checked). Existing node mappings remain correct even where the node fields need replacement.

## Suspected blueprint defects (separate from packet corrections)

- L44, lb-unimod: “by injectivity of A (ext-gram)”. The external Gram fact assumes injectivity; it does not establish it. The basis step supplies it. This is a citation defect, not a failure of the integer change-of-basis argument.
- L166, geom-formula: “Qk != 0 as in lattice-volume(e)”. Here k is real, whereas that lemma states its conclusion for integer k. The text is comparing the same projection argument, not entitled to apply the integer-vector lemma. The projection identity already supplies the elementary implication. The corrected graph removes the misleading theorem edge. No new pinned-source defect is alleged.

## Replacement fragments

These are complete database blocks for inp_depgraph_apply_review.py. Apply only through the writer workflow; rewritten nodes require a different delta reviewer. The fragments intentionally leave topology PROPOSED.

```text
NODE: stepN:p8:lb-basis
KIND: step
TITLE: Basis
STATEMENT_SOURCE: blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:lb-basis@L43-L43
PROOF_SOURCE: blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:lb-basis@L43-L43
CONTRACT_ID: stepN:p8:lb-basis
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Λ ≤ ℤⁿ
SOURCE_QUANTIFIERS: Λ
SOURCE_CONCLUSION: Λ has a ℤ-basis with d ≤ n elements, ℝ-independent
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p8:ext-free, bpN:p8:ext-indep, bpN:p8:lattice
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p8:ext-free | blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:lb-basis@L43-L43 | ℤ-basis with d ≤ n
EDGE: bpN:p8:ext-indep | blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:lb-basis@L43-L43 | ℝ-independence
EDGE: bpN:p8:lattice | blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:lb-basis@L43-L43 | lattice objects, their spans/dimensions or the trivial/full lattice are used at this consumer; SPEC requires the package directly
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p8
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p8:lb-unimod
KIND: step
TITLE: Unimodular
STATEMENT_SOURCE: blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:lb-unimod@L44-L44
PROOF_SOURCE: blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:lb-unimod@L44-L44
CONTRACT_ID: stepN:p8:lb-unimod
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: bases A, Ã of Λ; part (a)
SOURCE_QUANTIFIERS: Λ; A, Ã
SOURCE_CONCLUSION: Ã = AU with U ∈ ℤ^{d×d}, det U = ±1; converse for U unimodular
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p8:lb-basis, bpN:p8:ext-units, bpN:p8:lattice
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p8:lb-basis | blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:lb-unimod@L44-L44 | injectivity (independence) of A
EDGE: bpN:p8:ext-units | blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:lb-unimod@L44-L44 | integer det with product 1 is ±1; U⁻¹ integral
EDGE: bpN:p8:lattice | blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:lb-unimod@L44-L44 | lattice objects, their spans/dimensions or the trivial/full lattice are used at this consumer; SPEC requires the package directly
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p8
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p8:lb-sub
KIND: step
TITLE: Sublattice
STATEMENT_SOURCE: blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:lb-sub@L45-L45
PROOF_SOURCE: blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:lb-sub@L45-L45
CONTRACT_ID: stepN:p8:lb-sub
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Γ ≤ Λ with equal dimension; bases Ã, A; (a),(b)
SOURCE_QUANTIFIERS: Γ, Λ
SOURCE_CONCLUSION: Ã = AN with N integer and det N ≠ 0
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p8:lb-unimod, stepN:p8:lb-basis, bpN:p8:lattice
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p8:lb-unimod | blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:lb-sub@L45-L45 | Ã = AN as in (b)
EDGE: stepN:p8:lb-basis | blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:lb-sub@L45-L45 | Ã injective by (a)
EDGE: bpN:p8:lattice | blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:lb-sub@L45-L45 | lattice objects, their spans/dimensions or the trivial/full lattice are used at this consumer; SPEC requires the package directly
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p8
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p8:lv-ab
KIND: step
TITLE: (a),(b)
STATEMENT_SOURCE: blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:lv-ab@L83-L83
PROOF_SOURCE: blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:lv-ab@L83-L83
CONTRACT_ID: stepN:p8:lv-ab
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: lattice basis matrices A, Ã = AU
SOURCE_QUANTIFIERS: Λ; A, Ã
SOURCE_CONCLUSION: det(ÃᵀÃ) = det(AᵀA); AᵀA integer matrix with positive determinant, so ¦Λ¦ ≥ 1
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p8:lattice-basis, bpN:p8:ext-gram, bpN:p8:volume-def, bpN:p8:lattice
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p8:lattice-basis | blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:lv-ab@L83-L83 | Ã = AU with det U = ±1 (b)
EDGE: bpN:p8:ext-gram | blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:lv-ab@L83-L83 | det multiplicative, det Uᵀ = det U, det(AᵀA) > 0
EDGE: bpN:p8:volume-def | blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:lv-ab@L83-L83 | ¦Θ¦ = 1 and ¦Λ¦ = sqrt det(AᵀA)
EDGE: bpN:p8:lattice | blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:lv-ab@L83-L83 | lattice objects, their spans/dimensions or the trivial/full lattice are used at this consumer; SPEC requires the package directly
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p8
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p8:lv-c
KIND: step
TITLE: (c)
STATEMENT_SOURCE: blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:lv-c@L84-L84
PROOF_SOURCE: blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:lv-c@L84-L84
CONTRACT_ID: stepN:p8:lv-c
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Γ ≤ Λ equal dimension; Ã = AN
SOURCE_QUANTIFIERS: Γ, Λ
SOURCE_CONCLUSION: ¦Γ¦² = (det N)²¦Λ¦², ¦det N¦ ≥ 1
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p8:lattice-basis, bpN:p8:volume-def, bpN:p8:ext-units, bpN:p8:lattice, bpN:p8:ext-gram
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p8:lattice-basis | blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:lv-c@L84-L84 | N ∈ ℤ^{d×d}, det N ≠ 0 by (c)
EDGE: bpN:p8:volume-def | blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:lv-c@L84-L84 | ¦Γ¦, ¦Λ¦ via basis matrices
EDGE: bpN:p8:ext-units | blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:lv-c@L84-L84 | nonzero integer has modulus ≥ 1
EDGE: bpN:p8:lattice | blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:lv-c@L84-L84 | lattice objects, their spans/dimensions or the trivial/full lattice are used at this consumer; SPEC requires the package directly
EDGE: bpN:p8:ext-gram | blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:lv-c@L84-L84 | the determinant of N-transpose (A-transpose A) N is expanded multiplicatively
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p8
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p8:lv-d
KIND: step
TITLE: (d)
STATEMENT_SOURCE: blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:lv-d@L85-L85
PROOF_SOURCE: blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:lv-d@L85-L85
CONTRACT_ID: stepN:p8:lv-d
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: g ∈ ℤⁿ∖{0}
SOURCE_QUANTIFIERS: g
SOURCE_CONCLUSION: ¦ℤg¦ = ‖g‖, ¦ℤⁿ¦ = 1
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p8:volume-def, bpN:p8:lattice
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p8:volume-def | blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:lv-d@L85-L85 | A = g and A = 1 as basis matrices
EDGE: bpN:p8:lattice | blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:lv-d@L85-L85 | lattice objects, their spans/dimensions or the trivial/full lattice are used at this consumer; SPEC requires the package directly
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p8
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p8:lv-f
KIND: step
TITLE: (f)
STATEMENT_SOURCE: blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:lv-f@L87-L87
PROOF_SOURCE: blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:lv-f@L87-L87
CONTRACT_ID: stepN:p8:lv-f
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: v_1..v_d ∈ ℤⁿ ℝ-independent generating Γ
SOURCE_QUANTIFIERS: Γ; v_j
SOURCE_CONCLUSION: ¦Γ¦ ≤ ∏‖v_i‖
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p8:lv-e, bpN:p8:projection, bpN:p8:volume-def, bpN:p8:lattice
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p8:lv-e | blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:lv-f@L87-L87 | induction ¦Γ_j¦ = ¦Γ_{j−1}¦‖Q v_j‖
EDGE: bpN:p8:projection | blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:lv-f@L87-L87 | ‖Q v‖ ≤ ‖v‖
EDGE: bpN:p8:volume-def | blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:lv-f@L87-L87 | start ¦Θ¦ = 1
EDGE: bpN:p8:lattice | blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:lv-f@L87-L87 | lattice objects, their spans/dimensions or the trivial/full lattice are used at this consumer; SPEC requires the package directly
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p8
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p8:mx-exist
KIND: step
TITLE: Existence
STATEMENT_SOURCE: blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:mx-exist@L114-L114
PROOF_SOURCE: blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:mx-exist@L114-L114
CONTRACT_ID: stepN:p8:mx-exist
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Γ a K-lattice
SOURCE_QUANTIFIERS: K; Γ
SOURCE_CONCLUSION: Γ ⊂ Λ ∈ 𝕄_K with dim Λ = dim Γ; k ∈ ℰ_K∖{0} lies in some Λ ∈ 𝕄_K^1
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p8:klattice, bpN:p8:ext-basic, bpN:p8:lattice
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p8:klattice | blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:mx-exist@L114-L114 | K-lattices, maximality
EDGE: bpN:p8:ext-basic | blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:mx-exist@L114-L114 | finite nonempty poset has a maximal element; ℰ_K finite
EDGE: bpN:p8:lattice | blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:mx-exist@L114-L114 | lattice objects, their spans/dimensions or the trivial/full lattice are used at this consumer; SPEC requires the package directly
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p8
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p8:mx-c
KIND: step
TITLE: (c)
STATEMENT_SOURCE: blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:mx-c@L115-L115
PROOF_SOURCE: blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:mx-c@L115-L115
CONTRACT_ID: stepN:p8:mx-c
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Λ ∈ 𝕄_K; k ∈ ℰ_K∖Λ
SOURCE_QUANTIFIERS: K; Λ; k
SOURCE_CONCLUSION: k ∉ W_Λ, dim Λ < n, Λ+ℤk is a K-lattice of dimension dim Λ + 1
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p8:mx-char, bpN:p8:klattice, bpN:p8:lattice
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p8:mx-char | blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:mx-c@L115-L115 | (a) and the K-lattice argument of Step Characterisation
EDGE: bpN:p8:klattice | blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:mx-c@L115-L115 | K-lattice
EDGE: bpN:p8:lattice | blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:mx-c@L115-L115 | lattice objects, their spans/dimensions or the trivial/full lattice are used at this consumer; SPEC requires the package directly
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p8
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p8:mx-d
KIND: step
TITLE: (d)
STATEMENT_SOURCE: blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:mx-d@L116-L116
PROOF_SOURCE: blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:mx-d@L116-L116
CONTRACT_ID: stepN:p8:mx-d
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Λ ∈ 𝕄_K, dim Λ = n
SOURCE_QUANTIFIERS: K; Λ
SOURCE_CONCLUSION: ℰ_K ⊂ Λ; Λ = ℤⁿ ∈ 𝕄_K if K ≥ 1; 𝕄_K = {Θ} if K < 1
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p8:mx-char, bpN:p8:klattice, bpN:p8:lattice
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p8:mx-char | blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:mx-d@L116-L116 | (a) for ℰ_K ⊂ Λ and ℤⁿ ∈ 𝕄_K
EDGE: bpN:p8:klattice | blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:mx-d@L116-L116 | K-lattice, 𝕄_K
EDGE: bpN:p8:lattice | blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:mx-d@L116-L116 | lattice objects, their spans/dimensions or the trivial/full lattice are used at this consumer; SPEC requires the package directly
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p8
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p8:mx-e
KIND: step
TITLE: (e)
STATEMENT_SOURCE: blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:mx-e@L117-L117
PROOF_SOURCE: blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:mx-e@L117-L117
CONTRACT_ID: stepN:p8:mx-e
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Λ ∈ 𝕄_K of dimension d
SOURCE_QUANTIFIERS: K; Λ; v_i
SOURCE_CONCLUSION: 1 ≤ ¦Λ¦ ≤ K^d
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p8:lattice-volume, bpN:p8:ext-basic, bpN:p8:klattice, bpN:p8:lattice, bpN:p8:volume-def
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p8:lattice-volume | blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:mx-e@L117-L117 | (b) lower bound, (c),(f) upper bound
EDGE: bpN:p8:ext-basic | blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:mx-e@L117-L117 | a spanning set contains d independent vectors
EDGE: bpN:p8:klattice | blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:mx-e@L117-L117 | Λ∩ℰ_K spans W_Λ (K-lattice)
EDGE: bpN:p8:lattice | blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:mx-e@L117-L117 | lattice objects, their spans/dimensions or the trivial/full lattice are used at this consumer; SPEC requires the package directly
EDGE: bpN:p8:volume-def | blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:mx-e@L117-L117 | the lattice volume is used directly in the displayed computation
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p8
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p8:gl-theta
KIND: step
TITLE: (a): reduction to dimension one
STATEMENT_SOURCE: blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:gl-theta@L170-L170
PROOF_SOURCE: blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:gl-theta@L170-L170
CONTRACT_ID: stepN:p8:gl-theta
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: ω ∈ B_Θ; k ∈ ℤⁿ, 0 < ‖k‖ ≤ K
SOURCE_QUANTIFIERS: K; ω; k
SOURCE_CONCLUSION: exists Λ_k = ℤg ∈ 𝕄_K^1 with k = jg, ‖g‖ ≤ ‖k‖, ¦Λ_k¦ = ‖g‖, δ_{Λ_k} ≥ λ_1/‖k‖
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p8:maximal, bpN:p8:lattice-basis, bpN:p8:lattice-volume, bpN:p8:blocks, bpN:p8:lattice, bpN:p8:volume-def, bpN:p8:klattice
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p8:maximal | blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:gl-theta@L170-L170 | (b): Λ_k ∈ 𝕄_K^1 containing k
EDGE: bpN:p8:lattice-basis | blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:gl-theta@L170-L170 | (a): rank-one subgroup is ℤg
EDGE: bpN:p8:lattice-volume | blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:gl-theta@L170-L170 | (d): ¦ℤg¦ = ‖g‖
EDGE: bpN:p8:blocks | blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:gl-theta@L170-L170 | δ_Λ = λ_1/¦Λ¦
EDGE: bpN:p8:lattice | blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:gl-theta@L170-L170 | lattice objects, their spans/dimensions or the trivial/full lattice are used at this consumer; SPEC requires the package directly
EDGE: bpN:p8:volume-def | blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:gl-theta@L170-L170 | the lattice volume is used directly in the displayed computation
EDGE: bpN:p8:klattice | blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:gl-theta@L170-L170 | the maximal K-lattice family or its dimension stratum is used directly
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p8
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p8:gl-setup
KIND: step
TITLE: (b): setting
STATEMENT_SOURCE: blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:gl-setup@L172-L172
PROOF_SOURCE: blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:gl-setup@L172-L172
CONTRACT_ID: stepN:p8:gl-setup
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Λ ∈ 𝕄_K, d ≥ 1; ω ∈ B_Λ; k ∈ ℤⁿ∖Λ, ‖k‖ ≤ K
SOURCE_QUANTIFIERS: Λ; ω; k
SOURCE_CONCLUSION: k ∉ W_Λ, d < n; Λ_+ ∈ 𝕄_K^{d+1} with Λ_+ ⊃ Λ+ℤk, W_{Λ_+} = W_+, Π_{Λ_+} = Π_+; ω ∈ Z_Λ; fixes V=|Lambda|, lambda=lambda_d, delta=delta_Lambda=lambda/V, Pi=Pi_Lambda, Q=Q_Lambda, V_+=|Lambda_+| and lambda_+=lambda_(d+1)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p8:maximal, bpN:p8:geom-formula, bpN:p8:blocks, bpN:p8:volume-def, bpN:p8:lattice, bpN:p8:klattice
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p8:maximal | blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:gl-setup@L172-L172 | (c) and (b): k ∉ W_Λ and existence of Λ_+
EDGE: bpN:p8:geom-formula | blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:gl-setup@L172-L172 | Π_{Λ_+} = Π_+ of the projection formula
EDGE: bpN:p8:blocks | blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:gl-setup@L172-L172 | B_Λ ⊂ Z_Λ, δ_Λ = λ_d/¦Λ¦
EDGE: bpN:p8:volume-def | blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:gl-setup@L172-L172 | V = ¦Λ¦, V_+ = ¦Λ_+¦
EDGE: bpN:p8:lattice | blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:gl-setup@L172-L172 | lattice objects, their spans/dimensions or the trivial/full lattice are used at this consumer; SPEC requires the package directly
EDGE: bpN:p8:klattice | blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:gl-setup@L172-L172 | the maximal K-lattice family or its dimension stratum is used directly
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p8
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p8:gl-vol
KIND: step
TITLE: Volumes
STATEMENT_SOURCE: blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:gl-vol@L173-L173
PROOF_SOURCE: blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:gl-vol@L173-L173
CONTRACT_ID: stepN:p8:gl-vol
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: setting of Step (b): setting
SOURCE_QUANTIFIERS: Λ, Λ_+, k
SOURCE_CONCLUSION: V_+ ≤ V‖Qk‖, ‖Qk‖ ≥ V_+/V, V_+ ≤ KV
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p8:lattice-volume, stepN:p8:gl-setup, bpN:p8:projection, bpN:p8:lattice, bpN:p8:volume-def
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p8:lattice-volume | blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:gl-vol@L173-L173 | (c),(e)
EDGE: stepN:p8:gl-setup | blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:gl-vol@L173-L173 | Λ_+ ⊃ Λ+ℤk
EDGE: bpN:p8:projection | blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:gl-vol@L173-L173 | ‖Qk‖ ≤ ‖k‖
EDGE: bpN:p8:lattice | blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:gl-vol@L173-L173 | lattice objects, their spans/dimensions or the trivial/full lattice are used at this consumer; SPEC requires the package directly
EDGE: bpN:p8:volume-def | blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:gl-vol@L173-L173 | the lattice volume is used directly in the displayed computation
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p8
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p8:cv-params
KIND: step
TITLE: Parameters of the Geometric Lemma
STATEMENT_SOURCE: blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:cv-params@L197-L197
PROOF_SOURCE: blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:cv-params@L197-L197
CONTRACT_ID: stepN:p8:cv-params
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Covering Lemma data
SOURCE_QUANTIFIERS: data
SOURCE_CONCLUSION: lambda_(d+1)/lambda_d=AK for 1<=d<n, all lambda_d>0; E=pM/(bm)>0, A>=E+sqrt(2), K>0, so the Geometric Lemma hypotheses hold. FOR dim Lambda=d>=1, delta_Lambda=lambda_d/|Lambda| is the zone radius; for Theta only the positive auxiliary number delta_Theta=bm r_Theta is defined. EK delta_Lambda=alpha_Lambda.
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p8:geometric, bpN:p8:blocks, bpN:p8:volume-def, bpN:p8:lattice
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p8:geometric | blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:cv-params@L197-L197 | Geometric Lemma applies (hypotheses verified)
EDGE: bpN:p8:blocks | blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:cv-params@L197-L197 | δ_Λ = λ_d/¦Λ¦ is the radius of Z_Λ
EDGE: bpN:p8:volume-def | blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:cv-params@L197-L197 | ¦Λ¦ in r_Λ
EDGE: bpN:p8:lattice | blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:cv-params@L197-L197 | lattice objects, their spans/dimensions or the trivial/full lattice are used at this consumer; SPEC requires the package directly
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p8
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p8:cv-radii
KIND: step
TITLE: Radii
STATEMENT_SOURCE: blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:cv-radii@L200-L200
PROOF_SOURCE: blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:cv-radii@L200-L200
CONTRACT_ID: stepN:p8:cv-radii
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Λ ∈ 𝕄_K; K ≥ 1; A ≥ 1
SOURCE_QUANTIFIERS: Λ
SOURCE_CONCLUSION: r_Θ ≤ r_Λ ≤ r_0/(AK) for 1 ≤ d < n; r_{ℤⁿ} = r_0; r_Θ ≤ r_Λ ≤ r_0
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p8:maximal, bpN:p8:lattice-volume, bpN:p8:lattice, bpN:p8:volume-def, bpN:p8:klattice
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p8:maximal | blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:cv-radii@L200-L200 | (e): 1 ≤ ¦Λ¦ ≤ K^d; (d): Λ = ℤⁿ when d = n
EDGE: bpN:p8:lattice-volume | blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:cv-radii@L200-L200 | (b), ¦ℤⁿ¦ = 1 by (d)
EDGE: bpN:p8:lattice | blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:cv-radii@L200-L200 | lattice objects, their spans/dimensions or the trivial/full lattice are used at this consumer; SPEC requires the package directly
EDGE: bpN:p8:volume-def | blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:cv-radii@L200-L200 | the lattice volume is used directly in the displayed computation
EDGE: bpN:p8:klattice | blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:cv-radii@L200-L200 | the maximal K-lattice family or its dimension stratum is used directly
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p8
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: bpN:p8:cutoffs
KIND: corollary
TITLE: Euclidean versus $\ell^1$ cut-offs; interface for Parts~\ref{bpN:p6}, \ref{bpN:p7} and~9
STATEMENT_SOURCE: blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:cutoffs@L203-L211
PROOF_SOURCE: blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:cutoffs@L212-L214
CONTRACT_ID: bpN:p8:cutoffs
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: setting of Lemma covering with K = K_g; K_a ≥ 0 analytic cut-off; (b) K_a ≤ K_g; (c) K_g ≥ √n K_a > 0
SOURCE_QUANTIFIERS: n; K_g; K_a; Λ ∈ 𝕄_{K_g}; I ∈ D_Λ; k
SOURCE_CONCLUSION: (a) Z_{K_a} ⊂ ℰ_{K_a} ⊂ Z_{√n K_a}; (b) K_a ≤ K_g ⇒ I is (α_Λ,K_a)-nonresonant modulo Λ (¦k·ω(I)¦ ≥ α_Λ for k ∈ Z_{K_a}∖Λ) and dist₂(ω(I),R_Λ) < δ_Λ; (c) K_g ≥ √n K_a ⇒ r_Λ = α_Λ/(pMK_g) ≤ α_Λ/(p√n M K_a)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p8:covering, bpN:p1:norm-compare, bpN:p6:setting, bpN:p7:resonance-data, bpN:p8:klattice, stepN:p8:co-incl, bpN:p8:lattice
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p8:covering | blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:cutoffs@L204-L204 | setting, r_Λ, α_Λ, δ_Λ, D_Λ
EDGE: bpN:p1:norm-compare | blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:cutoffs@L205-L205 | (a) via norm-compare(b)
EDGE: bpN:p6:setting | blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:cutoffs@L206-L206 | nonresonance modulo Λ of cond-nr; Z_{K_a}
EDGE: bpN:p7:resonance-data | blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:cutoffs@L207-L207 | closeness to exact Λ-resonances
EDGE: bpN:p8:klattice | blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:cutoffs@L206-L206 | Λ ∈ 𝕄_{K_g}
EDGE: stepN:p8:co-incl | blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:cutoffs@L213-L213 | proof step
EDGE: bpN:p8:lattice | blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:cutoffs@L206-L206 | lattice objects, their spans/dimensions or the trivial/full lattice are used at this consumer; SPEC requires the package directly
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p8
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: Candidate edges to bpN:p7:resonant-prop2 (L209: the radius condition of Prop (c) is only matched, not used) and bpN:p8:direction (remark, excluded) dropped: breaks the SPEC candidate cycle through bpN:p8:cutoffs -> p7:resonant-prop2. Consumers (Part 9, 11c) apply (b) and (c).
```

```text
NODE: stepN:p8:bc-top
KIND: step
TITLE: Top dimension
STATEMENT_SOURCE: blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:bc-top@L135-L135
PROOF_SOURCE: blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:bc-top@L135-L135
CONTRACT_ID: stepN:p8:bc-top
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: ω ∈ ℝⁿ
SOURCE_QUANTIFIERS: ω
SOURCE_CONCLUSION: ω ∈ B_Θ or ω ∈ B_Λ for Λ ∈ 𝕄_K^d with d = max{d: ω ∈ Z_d^*}
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p8:blocks, bpN:p8:klattice
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p8:blocks | blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:bc-top@L135-L135 | Z_d^*, B_Λ, B_Θ, Z_{n+1}^* = ∅
EDGE: bpN:p8:klattice | blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:bc-top@L135-L135 | the maximal K-lattice family or its dimension stratum is used directly
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p8
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: bpN:p8:geometric
KIND: lemma
TITLE: Geometric Lemma
STATEMENT_SOURCE: blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:geometric@L148-L158
PROOF_SOURCE: blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:geometric@L169-L180
CONTRACT_ID: bpN:p8:geometric
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: n ≥ 1; K > 0; E > 0; A ≥ E + √2; λ_1..λ_n > 0 with λ_{d+1}/λ_d ≥ AK (1 ≤ d < n); 𝕄_K, δ_Λ, B_Λ as in Definition blocks
SOURCE_QUANTIFIERS: n; K; E; A; λ; (a) ω ∈ B_Θ, k; (b) Λ ∈ 𝕄_K with d ≥ 1, ω ∈ B_Λ, k
SOURCE_CONCLUSION: (a) ω ∈ B_Θ, k ∈ ℤⁿ, 0 < ‖k‖ ≤ K ⇒ ¦k·ω¦ ≥ λ_1; (b) Λ ∈ 𝕄_K, d ≥ 1, ω ∈ B_Λ, k ∈ ℤⁿ∖Λ, ‖k‖ ≤ K ⇒ ¦k·ω¦ ≥ E K δ_Λ and dist₂(ω,R_Λ) < δ_Λ
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p8:blocks, bpN:p8:maximal, bpN:p8:lattice, stepN:p8:gl-theta, stepN:p8:gl-theta2, stepN:p8:gl-setup, stepN:p8:gl-vol, stepN:p8:gl-proj, stepN:p8:gl-div, bpN:p8:klattice
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p8:blocks | blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:geometric@L149-L152 | 𝕄_K, δ_Λ, B_Λ
EDGE: bpN:p8:maximal | blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:geometric@L156-L156 | (d): no such k when d = n
EDGE: bpN:p8:lattice | blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:geometric@L155-L155 | R_Λ, d
EDGE: stepN:p8:gl-theta | blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:geometric@L170-L170 | proof (a)
EDGE: stepN:p8:gl-theta2 | blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:geometric@L171-L171 | proof (a)
EDGE: stepN:p8:gl-setup | blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:geometric@L172-L172 | proof (b)
EDGE: stepN:p8:gl-vol | blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:geometric@L173-L173 | proof (b)
EDGE: stepN:p8:gl-proj | blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:geometric@L174-L174 | proof (b)
EDGE: stepN:p8:gl-div | blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:geometric@L177-L177 | proof (b)
EDGE: bpN:p8:klattice | blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:geometric@L151-L151 | the maximal K-lattice family or its dimension stratum is used directly
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p8
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: Statement lines L148-L158; the separate proof environment is L169-L180. Candidate edge to geom-formula moved to the proof steps (gl-setup, gl-proj, gl-div), where it is used.
```

```text
NODE: stepN:p8:cv-cover
KIND: step
TITLE: Covering
STATEMENT_SOURCE: blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:cv-cover@L198-L198
PROOF_SOURCE: blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:cv-cover@L198-L198
CONTRACT_ID: stepN:p8:cv-cover
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: I ∈ P
SOURCE_QUANTIFIERS: I
SOURCE_CONCLUSION: ω(I) ∈ B_Λ for some Λ ∈ 𝕄_K, so I ∈ D_Λ; finiteness
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p8:blocks-cover, bpN:p8:blocks, bpN:p8:klattice
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p8:blocks-cover | blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:cv-cover@L198-L198 | covering and finiteness at the point ω(I)
EDGE: bpN:p8:blocks | blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:cv-cover@L198-L198 | D_Λ via B_Λ
EDGE: bpN:p8:klattice | blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:cv-cover@L198-L198 | the maximal K-lattice family or its dimension stratum is used directly
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p8
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p8:co-incl
KIND: step
TITLE: Inclusions
STATEMENT_SOURCE: blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:co-incl@L213-L213
PROOF_SOURCE: blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:co-incl@L213-L213
CONTRACT_ID: stepN:p8:co-incl
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Corollary setting
SOURCE_QUANTIFIERS: K_a; K_g
SOURCE_CONCLUSION: (a) is norm-compare(b); (b) for k ∈ Z_{K_a}∖Λ, ‖k‖ ≤ ¦k¦₁ ≤ K_a ≤ K_g so Lemma covering(c) applies; (c) 1/(pMK_g) ≤ 1/(p√n M K_a), α_Λ = pMK_g r_Λ
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p1:norm-compare, bpN:p8:covering, bpN:p6:setting, bpN:p7:resonance-data
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p1:norm-compare | blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:co-incl@L213-L213 | (a) = norm-compare(b); ‖k‖ ≤ ¦k¦₁
EDGE: bpN:p8:covering | blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:co-incl@L213-L213 | (c) and closeness of Lemma covering; α_Λ = pMKr_Λ
EDGE: bpN:p6:setting | blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:co-incl@L213-L213 | clause (b) uses the analytic Z_K cut-off and nonresonance predicate (N1)
EDGE: bpN:p7:resonance-data | blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:co-incl@L213-L213 | the closeness clause in (b) uses the exact-resonance predicate
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p8
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: bpN:p8:geom-formula
KIND: lemma
TITLE: The projection formula
STATEMENT_SOURCE: blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:geom-formula@L160-L164
PROOF_SOURCE: blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:geom-formula@L165-L167
CONTRACT_ID: bpN:p8:geom-formula
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: W the span of a basis matrix of a lattice (or W = {0}); k ∈ ℝⁿ∖W; W_+ = W + ℝk; Π = Π_W, Q = Q_W, Π_+ = Π_{W_+}
SOURCE_QUANTIFIERS: n; W; k; ω
SOURCE_CONCLUSION: Qk ≠ 0; Π_+ω − Πω = (Qk·ω/‖Qk‖²)Qk; k·ω = Πk·Πω + Qk·ω; ¦Qk·ω¦ = ‖Qk‖‖Π_+ω − Πω‖; ‖Π_+ω‖² = ‖Πω‖² + ‖Π_+ω − Πω‖²
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p8:lattice, bpN:p8:projection
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p8:lattice | blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:geom-formula@L161-L161 | W the span of a lattice basis matrix
EDGE: bpN:p8:projection | blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:geom-formula@L166-L166 | (a),(b): Π_+ is characterised by orthogonality; symmetry and idempotence of Π
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p8
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: bpN:p8:projection
KIND: lemma
TITLE: Orthogonal projection onto a span
STATEMENT_SOURCE: blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:projection@L53-L63
PROOF_SOURCE: blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:projection@L64-L68
CONTRACT_ID: bpN:p8:projection
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: A ∈ ℝ^{n×d}, d ≥ 1, independent columns; W their span; G = AᵀA; Π_W = AG⁻¹Aᵀ, Q_W = 1 − Π_W; (d) W ⊂ W′ two such spans
SOURCE_QUANTIFIERS: n, d; A; v, ω ∈ ℝⁿ
SOURCE_CONCLUSION: (a) Π_W symmetric idempotent, Π_W v ∈ W, = v on W, Q_W v ⊥ W, ‖v‖² = ‖Π_W v‖² + ‖Q_W v‖²; (b) Π_W v unique w∈W with v − w ⊥ W; (c) dist₂(ω,W^⊥) = ‖Π_W ω‖; (d) Π_{W′}Π_W = Π_WΠ_{W′} = Π_W; consequently R_Λ = W_Λ^⊥, dist₂(ω,R_Λ) = ‖Π_{W_Λ} ω‖; also in (a) ||Pi_W v||_2 <= ||v||_2 and ||Q_W v||_2 <= ||v||_2; for d=0 set Pi_{0}=0; write Pi_Lambda=Pi_{W_Lambda}, Q_Lambda=Q_{W_Lambda}
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p8:ext-gram, bpN:p8:lattice, stepN:p8:pr-alg, stepN:p8:pr-dist, stepN:p8:pr-nest, bpN:p8:lattice-basis
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p8:ext-gram | blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:projection@L54-L54 | G = AᵀA invertible
EDGE: bpN:p8:lattice | blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:projection@L61-L61 | R_Lambda and W_Lambda occur in the consequence on L61, not in the provenance note L62
EDGE: stepN:p8:pr-alg | blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:projection@L65-L65 | proof step (a)
EDGE: stepN:p8:pr-dist | blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:projection@L66-L66 | proof step (b),(c)
EDGE: stepN:p8:pr-nest | blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:projection@L67-L67 | proof step (d)
EDGE: bpN:p8:lattice-basis | blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:projection@L61-L61 | the consequence for an arbitrary lattice uses existence of an independent basis for its span, including the zero-dimensional convention
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p8
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: Euclidean norm ‖·‖ on ℝⁿ (Part 8 convention, L9). The consequence line uses the lattice definitions (edge to bpN:p8:lattice).
```

```text
NODE: bpN:p8:lattice-volume
KIND: lemma
TITLE: Volume
STATEMENT_SOURCE: blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:lattice-volume@L70-L81
PROOF_SOURCE: blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:lattice-volume@L82-L88
CONTRACT_ID: bpN:p8:lattice-volume
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: n ≥ 1; Λ, Γ ≤ ℤⁿ lattices
SOURCE_QUANTIFIERS: n; Λ, Γ; (c) N; (e) k; (f) v_1..v_d
SOURCE_CONCLUSION: (a) det(AᵀA) independent of basis matrix; (b) ¦Λ¦² positive integer, ¦Λ¦ ≥ 1; (c) Γ ≤ Λ, dim equal ⇒ ¦Γ¦ = ¦det N¦¦Λ¦ ≥ ¦Λ¦; (d) ¦ℤg¦ = ‖g‖, ¦ℤⁿ¦ = 1; (e) k ∉ W_Λ ⇒ dim(Λ+ℤk) = dim Λ + 1, ¦Λ+ℤk¦ = ¦Λ¦‖Q_Λ k‖, Q_Λ k ≠ 0; (f) Hadamard ¦Γ¦ ≤ ∏‖v_i‖
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p8:lattice, bpN:p8:volume-def, bpN:p8:lattice-basis, bpN:p8:projection, stepN:p8:lv-ab, stepN:p8:lv-c, stepN:p8:lv-d, stepN:p8:lv-e, stepN:p8:lv-f
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p8:lattice | blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:lattice-volume@L71-L71 | lattices, W_Λ, dim
EDGE: bpN:p8:volume-def | blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:lattice-volume@L71-L80 | ¦Λ¦
EDGE: bpN:p8:lattice-basis | blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:lattice-volume@L75-L75 | N is explicitly the basis-change matrix of lattice-basis(c)
EDGE: bpN:p8:projection | blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:lattice-volume@L77-L77 | Q_Lambda k occurs in the adding-a-vector conclusion
EDGE: stepN:p8:lv-ab | blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:lattice-volume@L83-L83 | proof (a),(b)
EDGE: stepN:p8:lv-c | blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:lattice-volume@L84-L84 | proof (c)
EDGE: stepN:p8:lv-d | blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:lattice-volume@L85-L85 | proof (d)
EDGE: stepN:p8:lv-e | blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:lattice-volume@L86-L86 | proof (e)
EDGE: stepN:p8:lv-f | blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:lattice-volume@L87-L87 | proof (f)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p8
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: bpN:p8:maximal
KIND: lemma
TITLE: Maximal $K$-lattices
STATEMENT_SOURCE: blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:maximal@L101-L111
PROOF_SOURCE: blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:maximal@L112-L118
CONTRACT_ID: bpN:p8:maximal
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: K ≥ 0; Λ a K-lattice
SOURCE_QUANTIFIERS: K; Λ; Γ; k; d
SOURCE_CONCLUSION: (a) for a K-lattice Lambda, Lambda in M_K iff E_K intersect W_Lambda is contained in Lambda; Theta is maximal, and a saturated K-lattice is maximal; (b) every K-lattice Gamma is contained in a maximal K-lattice of equal dimension, including the rank-one assertion for nonzero k in E_K; (c) IF Lambda in M_K and k in E_K minus Lambda, then k not in W_Lambda, dim Lambda < n, and Lambda+Zk is a K-lattice of dimension dim Lambda+1; (d) IF Lambda in M_K and dim Lambda=n then E_K is contained in Lambda; if also K>=1 then Lambda=Z^n; Z^n in M_K for K>=1; if 0<=K<1 then M_K={Theta}; (e) IF Lambda in M_K has dimension d then 1<=|Lambda|<=K^d
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p8:klattice, bpN:p8:lattice, bpN:p8:volume-def, stepN:p8:mx-char, stepN:p8:mx-exist, stepN:p8:mx-c, stepN:p8:mx-d, stepN:p8:mx-e
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p8:klattice | blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:maximal@L102-L102 | K-lattice, 𝕄_K
EDGE: bpN:p8:lattice | blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:maximal@L102-L103 | W_Λ, dimension
EDGE: bpN:p8:volume-def | blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:maximal@L108-L108 | the volume bound is stated here, not in the source note L110
EDGE: stepN:p8:mx-char | blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:maximal@L113-L113 | proof (a)
EDGE: stepN:p8:mx-exist | blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:maximal@L114-L114 | proof (b)
EDGE: stepN:p8:mx-c | blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:maximal@L115-L115 | proof (c)
EDGE: stepN:p8:mx-d | blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:maximal@L116-L116 | proof (d)
EDGE: stepN:p8:mx-e | blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:maximal@L117-L117 | proof (e)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p8
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: bpN:p8:blocks
KIND: definition
TITLE: Zones, blocks
STATEMENT_SOURCE: blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:blocks@L120-L127
PROOF_SOURCE: -
CONTRACT_ID: bpN:p8:blocks
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: K ≥ 0; λ_1,…,λ_n > 0; Λ ∈ 𝕄_K
SOURCE_QUANTIFIERS: n; K; λ; Λ of dimension d
SOURCE_CONCLUSION: For Lambda in M_K of dimension d>=1, define delta_Lambda=lambda_d/|Lambda| and Z_Lambda={omega: dist_2(omega,R_Lambda)<delta_Lambda}={omega: ||Pi_Lambda omega||_2<delta_Lambda}. Set Z_Theta=R^n, Z_d^*=union over M_K^d of Z_Lambda for 1<=d<=n and Z_(n+1)^*=empty; for d>=1 set B_Lambda=Z_Lambda minus Z_(d+1)^*, B_Theta=R^n minus Z_1^*, and B_d^*=union over M_K^d of B_Lambda. These depend on K and the positive lambda data; an empty stratum gives an empty union.
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p8:klattice, bpN:p8:volume-def, bpN:p8:projection, bpN:p8:lattice
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p8:klattice | blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:blocks@L121-L122 | 𝕄_K, 𝕄_K^d
EDGE: bpN:p8:volume-def | blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:blocks@L122-L123 | ¦Λ¦ in δ_Λ
EDGE: bpN:p8:projection | blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:blocks@L123-L124 | dist₂(ω,R_Λ) = ‖Π_Λ ω‖ by projection(c)
EDGE: bpN:p8:lattice | blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:blocks@L122-L123 | R_Λ, d, Θ
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p8
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: Package (SPEC): D_Λ, δ_Λ, B_Λ, Z_Λ used by symbol in Parts 9 and 11c.
```

## Validation

Review files are checked for trailing whitespace, one audit row per existing node, replacement blocks for every FAIL, matching consumer EDGE ranges, and parseability by the review application tool in --dry-run mode. No packets are changed by that check. No Lean implementation, theorem proof status, compilation or axiom claim is part of this report.

Actual check result: `N-p8: 26 replaced, 0 added, 0 coverage items, 0 unresolved FAILs, 23 PASS nodes` from `python3 -I /mnt/HC_Volume_106379410/orchestrator-tools/inp_depgraph_apply_review.py docs/graph/N/packets N-p8 docs/graph/N/reviews/N-p8-review.md sol-review-N-e --dry-run` (exit 0). No packet or repaired-status file was written.

The in-memory union of the proposed replacements with the current packets has **0 missing dependency targets and 0 cycles**. Replacement DEPS/EDGE lists agree, all replacement EDGE spans lie in their consumer statement/proof spans, and the per-node table has exactly 49 unique existing-node rows. Whitespace checks pass. The different frequency branches are case splits needed by the theorem, not alternative proof routes combined as a conjunction.
