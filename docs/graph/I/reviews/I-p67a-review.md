# I-p67a topology review — sol-review-I-p67

Verdict: **FAIL**. The exclusions are sound; the replacement blocks below repair direct dependencies and source contracts without claiming mathematical closure.

Reviewed 63 retained nodes and every inventory item in this slice. The node rows refer to the original packet. PASS means no local record defect found; a parent can retain PASS while a prerequisite needs the separate correction listed below.

## Node inventory

| Node ID | Verdict | Source spans re-read | Reason for FAIL |
|---|---|---|---|
| `bpI:p6:det-formula` | PASS | `blueprint-I/parts/p6-kepler.tex#bpI:p6:det-formula@L13-L19 ; blueprint-I/parts/p6-kepler.tex#bpI:p6:det-formula@L20-L35` | — |
| `stepI:p6:expand` | PASS | `blueprint-I/parts/p6-kepler.tex#stepI:p6:expand@L21-L28` | — |
| `stepI:p6:eval` | PASS | `blueprint-I/parts/p6-kepler.tex#stepI:p6:eval@L29-L34` | — |
| `bpI:p6:kepler` | PASS | `blueprint-I/parts/p6-kepler.tex#bpI:p6:kepler@L37-L42 ; blueprint-I/parts/p6-kepler.tex#bpI:p6:kepler@L43-L48` | — |
| `stepI:p6:k-value` | PASS | `blueprint-I/parts/p6-kepler.tex#stepI:p6:k-value@L44-L44` | — |
| `stepI:p6:k-pos` | PASS | `blueprint-I/parts/p6-kepler.tex#stepI:p6:k-pos@L46-L47` | — |
| `bpI:p6:kep-ham` | PASS | `blueprint-I/parts/p6-kepler.tex#bpI:p6:kep-ham@L58-L67` | — |
| `bpI:p6:kep-border` | PASS | `blueprint-I/parts/p6-kepler.tex#bpI:p6:kep-border@L69-L87 ; blueprint-I/parts/p6-kepler.tex#bpI:p6:kep-border@L88-L108` | — |
| `stepI:p6:kb-real` | PASS | `blueprint-I/parts/p6-kepler.tex#stepI:p6:kb-real@L89-L92` | — |
| `stepI:p6:kb-grad` | PASS | `blueprint-I/parts/p6-kepler.tex#stepI:p6:kb-grad@L94-L96` | — |
| `stepI:p6:kb-hess` | FAIL | `blueprint-I/parts/p6-kepler.tex#stepI:p6:kb-hess@L98-L99` | Missing direct Kepler-Hamiltonian package edge for h or h~. |
| `stepI:p6:kb-entries` | FAIL | `blueprint-I/parts/p6-kepler.tex#stepI:p6:kb-entries@L101-L104` | Missing direct Kepler-Hamiltonian package edge for h or h~. |
| `stepI:p6:kb-det` | FAIL | `blueprint-I/parts/p6-kepler.tex#stepI:p6:kb-det@L106-L107` | Missing direct Kepler-Hamiltonian package edge for h or h~. |
| `bpI:p6:conversion-map` | PASS | `blueprint-I/parts/p6-kepler.tex#bpI:p6:conversion-map@L112-L117` | — |
| `bpI:p6:conversion` | FAIL | `blueprint-I/parts/p6-kepler.tex#bpI:p6:conversion@L119-L141 ; blueprint-I/parts/p6-kepler.tex#bpI:p6:conversion@L142-L155` | The source conclusion drops the stated positive converted constants and positive determinant at kappa = Omega = 1. |
| `stepI:p6:cv-sympl` | PASS | `blueprint-I/parts/p6-kepler.tex#stepI:p6:cv-sympl@L143-L147` | — |
| `stepI:p6:cv-ham` | PASS | `blueprint-I/parts/p6-kepler.tex#stepI:p6:cv-ham@L149-L149` | — |
| `stepI:p6:cv-border` | PASS | `blueprint-I/parts/p6-kepler.tex#stepI:p6:cv-border@L151-L154` | — |
| `bpI:p6:nondeg` | PASS | `blueprint-I/parts/p6-kepler.tex#bpI:p6:nondeg@L157-L159 ; blueprint-I/parts/p6-kepler.tex#bpI:p6:nondeg@L160-L163` | — |
| `stepI:p6:nd-domain` | PASS | `blueprint-I/parts/p6-kepler.tex#stepI:p6:nd-domain@L161-L161` | — |
| `stepI:p6:nd-concl` | FAIL | `blueprint-I/parts/p6-kepler.tex#stepI:p6:nd-concl@L162-L162` | Missing direct Kepler-Hamiltonian package edge for h or h~. |
| `bpI:p7:x-hol` | PASS | `blueprint-I/parts/p7-delaunay.tex#bpI:p7:x-hol@L32-L34` | — |
| `bpI:p7:x-weier` | PASS | `blueprint-I/parts/p7-delaunay.tex#bpI:p7:x-weier@L35-L35` | — |
| `bpI:p7:x-param` | PASS | `blueprint-I/parts/p7-delaunay.tex#bpI:p7:x-param@L36-L36` | — |
| `bpI:p7:x-schwarz` | PASS | `blueprint-I/parts/p7-delaunay.tex#bpI:p7:x-schwarz@L37-L37` | — |
| `bpI:p7:x-ift` | PASS | `blueprint-I/parts/p7-delaunay.tex#bpI:p7:x-ift@L38-L38` | — |
| `bpI:p7:x-forms` | PASS | `blueprint-I/parts/p7-delaunay.tex#bpI:p7:x-forms@L39-L40` | — |
| `bpI:p7:ham-eq` | PASS | `blueprint-I/parts/p7-delaunay.tex#bpI:p7:ham-eq@L51-L57 ; blueprint-I/parts/p7-delaunay.tex#bpI:p7:ham-eq@L58-L70` | — |
| `stepI:p7:he-smooth` | PASS | `blueprint-I/parts/p7-delaunay.tex#stepI:p7:he-smooth@L59-L59` | — |
| `stepI:p7:he-deriv` | FAIL | `blueprint-I/parts/p7-delaunay.tex#stepI:p7:he-deriv@L61-L67` | Missing direct sec-ham#data edge: the step uses r_j or W_mu. |
| `stepI:p7:he-sol` | FAIL | `blueprint-I/parts/p7-delaunay.tex#stepI:p7:he-sol@L69-L69` | Missing direct sec-ham#data edge: the step uses r_j or W_mu. |
| `bpI:p7:kepler-eq` | PASS | `blueprint-I/parts/p7-delaunay.tex#bpI:p7:kepler-eq@L91-L114 ; blueprint-I/parts/p7-delaunay.tex#bpI:p7:kepler-eq@L115-L135` | — |
| `stepI:p7:ke-const` | PASS | `blueprint-I/parts/p7-delaunay.tex#stepI:p7:ke-const@L116-L117` | — |
| `stepI:p7:ke-trig` | PASS | `blueprint-I/parts/p7-delaunay.tex#stepI:p7:ke-trig@L119-L119` | — |
| `stepI:p7:ke-contr` | PASS | `blueprint-I/parts/p7-delaunay.tex#stepI:p7:ke-contr@L121-L123` | — |
| `stepI:p7:ke-hol` | PASS | `blueprint-I/parts/p7-delaunay.tex#stepI:p7:ke-hol@L125-L127` | — |
| `stepI:p7:ke-a` | PASS | `blueprint-I/parts/p7-delaunay.tex#stepI:p7:ke-a@L129-L129` | — |
| `stepI:p7:ke-b` | PASS | `blueprint-I/parts/p7-delaunay.tex#stepI:p7:ke-b@L131-L131` | — |
| `stepI:p7:ke-c` | FAIL | `blueprint-I/parts/p7-delaunay.tex#stepI:p7:ke-c@L133-L134` | The real-line contraction is a fresh application of Banach and the mean value inequality, beyond uniqueness in the complex strip. |
| `bpI:p7:elements` | PASS | `blueprint-I/parts/p7-delaunay.tex#bpI:p7:elements@L144-L156` | — |
| `bpI:p7:orbit-maps` | PASS | `blueprint-I/parts/p7-delaunay.tex#bpI:p7:orbit-maps@L158-L168` | — |
| `bpI:p7:orbit-maps-e` | PASS | `blueprint-I/parts/p7-delaunay.tex#bpI:p7:orbit-maps-e@L170-L174 ; blueprint-I/parts/p7-delaunay.tex#bpI:p7:orbit-maps-e@L175-L179` | — |
| `stepI:p7:om-hol` | PASS | `blueprint-I/parts/p7-delaunay.tex#stepI:p7:om-hol@L176-L176` | — |
| `stepI:p7:om-per` | PASS | `blueprint-I/parts/p7-delaunay.tex#stepI:p7:om-per@L178-L178` | — |
| `bpI:p7:orbit-identities` | PASS | `blueprint-I/parts/p7-delaunay.tex#bpI:p7:orbit-identities@L181-L190 ; blueprint-I/parts/p7-delaunay.tex#bpI:p7:orbit-identities@L191-L203` | — |
| `stepI:p7:oi-r` | PASS | `blueprint-I/parts/p7-delaunay.tex#stepI:p7:oi-r@L194-L195` | — |
| `stepI:p7:oi-gam` | FAIL | `blueprint-I/parts/p7-delaunay.tex#stepI:p7:oi-gam@L197-L198` | The source does not assume or use step oi-r; its SOURCE_HYPOTHESES invent that input. |
| `stepI:p7:oi-en` | FAIL | `blueprint-I/parts/p7-delaunay.tex#stepI:p7:oi-en@L200-L200` | Missing direct use of oi-gam: Gamma = G identifies membership in C and the recovered element G. |
| `stepI:p7:oi-d` | FAIL | `blueprint-I/parts/p7-delaunay.tex#stepI:p7:oi-d@L202-L202` | Missing direct orbit-maps package edge for e(L,G), Q, or its differential. |
| `bpI:p7:symplectic` | PASS | `blueprint-I/parts/p7-delaunay.tex#bpI:p7:symplectic@L205-L215 ; blueprint-I/parts/p7-delaunay.tex#bpI:p7:symplectic@L216-L238` | — |
| `stepI:p7:sy-g` | PASS | `blueprint-I/parts/p7-delaunay.tex#stepI:p7:sy-g@L217-L218` | — |
| `stepI:p7:sy-coord` | PASS | `blueprint-I/parts/p7-delaunay.tex#stepI:p7:sy-coord@L220-L230` | — |
| `stepI:p7:sy-compare` | FAIL | `blueprint-I/parts/p7-delaunay.tex#stepI:p7:sy-compare@L232-L232` | Missing direct orbit-maps package edge for e(L,G), Q, or its differential. |
| `stepI:p7:sy-ext` | FAIL | `blueprint-I/parts/p7-delaunay.tex#stepI:p7:sy-ext@L234-L235` | Missing direct orbit-maps package edge for e(L,G), Q, or its differential. Invertibility of M is derived by taking determinants; it must not be a source hypothesis. |
| `stepI:p7:sy-field` | FAIL | `blueprint-I/parts/p7-delaunay.tex#stepI:p7:sy-field@L237-L237` | Missing direct orbit-maps package edge for e(L,G), Q, or its differential. |
| `bpI:p7:chart` | PASS | `blueprint-I/parts/p7-delaunay.tex#bpI:p7:chart@L240-L244 ; blueprint-I/parts/p7-delaunay.tex#bpI:p7:chart@L245-L259` | — |
| `stepI:p7:ch-reg` | FAIL | `blueprint-I/parts/p7-delaunay.tex#stepI:p7:ch-reg@L246-L246` | Real analyticity of e(L,G) is proved from its square-root formula, rather than assumed. |
| `stepI:p7:ch-inj` | PASS | `blueprint-I/parts/p7-delaunay.tex#stepI:p7:ch-inj@L248-L248` | — |
| `stepI:p7:ch-surj1` | PASS | `blueprint-I/parts/p7-delaunay.tex#stepI:p7:ch-surj1@L250-L253` | — |
| `stepI:p7:ch-surj2` | PASS | `blueprint-I/parts/p7-delaunay.tex#stepI:p7:ch-surj2@L254-L254` | — |
| `stepI:p7:ch-surj3` | PASS | `blueprint-I/parts/p7-delaunay.tex#stepI:p7:ch-surj3@L256-L256` | — |
| `stepI:p7:ch-diffeo` | FAIL | `blueprint-I/parts/p7-delaunay.tex#stepI:p7:ch-diffeo@L258-L258` | Missing direct orbit-maps package edge for e(L,G), Q, or its differential. |
| `bpI:p7:sec-ham#data` | PASS | `blueprint-I/parts/p7-delaunay.tex#bpI:p7:sec-ham@L48-L49` | — |

## Coverage

| Failing coverage item | Verdict | Source span | Reason |
|---|---|---|---|
| None | — | — | Every disposition maps to the correct owning node or has a valid exclusion. |

All other coverage items PASS. In particular both sourcegap items (Part 7 L14 and L113) map to the blueprint bridges that actually fill the Chi05 gaps; no extra axiom is inferred. The ke-ift remark is correctly excluded: it does not replace the contraction proof with its uniform bounds. The #data prose items map to their section-data nodes. Their consumers still need the direct edges identified above.

## Root-closure exclusions

The exclusions were checked against raw Part 8, not inferred from the absence of packet edges. Part 8 L61–81 constructs the initial coordinates from near-circular/chart/elements; L149–185 obtains the safe region and period-one Hamiltonian data from exact-ham, period-one and nondeg; L204–211 uses orbit-identities(a),(c) for instantaneous radius and momentum bounds. The proof L214–232 uses I-HEAD, transfer, those bounds, shell-exclusion, ham-eq and the N ODE reduction/uniqueness. None uses a mean value, circular endpoint, general-strength scaling, or the inertial Newtonian interpretation. Part 8 L126 mentions newton only in the unused moving-frame remark. In particular N:bpN:p3:newton-reduction is a different result: its restricted-predicate reduction does not consume bpI:p7:newton.

A search across all eight corpus files found the only occurrences of means/scaling/circular/x-change and their proof steps in their own Part 7 blocks or the administrative Part 7 introduction/outputs. The sole other newton occurrence is Part 8 L126. Parts 2 and 5 (I-G1 and I-HEAD) contain none; Part 6 proves I-KEPLER by the determinant expansion and positivity, independent of all these nodes. Reading Part 7's retained prerequisites confirms no implicit use either: all bounds used by Part 8 are pointwise orbit identities, not averages; the safe action region has eccentricity bounded away from zero; the strength remains one. Therefore means (L288–299), circular (L301–307), scaling (L309–320), newton (L72–86), x-change (L41) and steps mv-cv/mv-int, ci-alg, sc-alg/sc-flow, nw-rot/nw-force are correctly EXCLUDED from every track-I root closure. Track P must own whatever it uses. The assembled packet traversal independently reaches 435 IDs, all 63 retained I-p67a nodes and all 33 retained I-p7b nodes; none of the excluded candidates is reached. This is a topology check, not proof validation.

## Section data, packages and conventions

`sec-ham#data` correctly owns W_mu, its openness, the radii, and the formulas on the collision-free carrier; its anchor edges are genuine definition uses. he-deriv and he-sol need their own direct edges, not an indirect path through he-smooth/ham-eq. The I-KEPLER proof preserves arbitrary positive kappa/Omega before the positive-L subtype; det-formula itself assumes no sign on kappa/Omega. Manifest identity checked: iso.kepler_bordered_det.v1, export KAM.Iso.kepler_bordered_det, contract iso.kepler_bordered_det v1, ABI 3c46c0a138ba6567ea3d7a46bfdd0da666047c423b6222bda82f9cb864193cc8; its matrix is iso.keplerBorder.v1, ABI 36e9baac00666553c4182571874d115c3f812a3679f898e30ae5679d367d4984. These identities belong to the Part 0 anchor records; this slice does not duplicate them. The real-gradient/germ computation matches the frozen frequencyMap and borderedHessian entry order.

The 2pi conversion was checked in both slices: S(theta,I) = (2pi theta,I/(2pi)), kappa' = kappa(2pi)^2, Omega' = Omega/(2pi), and the determinant in converted variables is 3 kappa Omega^2/I_1^4. The symplectic J has the opposite sign to frozen omegaZero; no packet edge identifies the two matrices. No spurious edge to I-HEAD is kept for its hypotheses being checked. No forward-reference edge from chart to h0 is needed: the E and Gamma identities already prove the displayed consequence. No provenance source edge or conjunctive alternative route was found in these slices.

## Suspected blueprint defects, source errata and deviations

No new frozen-statement defect was found. The existing Chi05 p.11 wording “for |e| small enough” is reported by the blueprint at Part 7 L14–15, L113 and L489 as missing uniform domains; this review checked the blueprint bridge, not the pinned paper, so that paper-level report remains unverified here. The direct barycentric perturbation rather than Chi05’s different coordinate/parameter formulation is an existing declared adaptation, not a new deviation. No source or Lean changes are proposed.

## Read-only checks and limits

Checks: `sha256sum -c docs/graph/I/CORPUS.sha256` returned eight `OK` lines (exit 0). `sha256sum -c docs/graph/I/IMPORTS.sha256` returned five `OK` lines and `blueprint/parts/p1-analysis.tex: FAILED` (exit 1). Raw current imported statements were read despite this drift. The current K locations are ext-mvt L75–78, ext-banach L95–96, holomorphic-analytic L296–312; the import packet still records L73–76, L93–94, L294–310. Their four source-statement fields agree in content with the current statements. The writer/imports reviewer must re-pin/remap rather than treating the old import pin as verified. N:newton-reduction L434–449 agrees, with its restricted clause valid on arbitrary J and for all real mu; ownership remains pending under SPEC until N's graph is settled. No new import is proposed. The named `inp_depgraph_imports.py` is absent from this checkout, so its report could not be run. Existing import IDs and package-free applicability were checked directly: K's three results here impose their own analytic/metric premises, not the K Part-2 standing package, so no K bridge is required.

No Lean run, build, axiom query, or source lint was performed: REVIEW-BRIEF explicitly says “Run no Lean” and restricts reading to frozen declarations. Axioms and implementation proof status are outside this review. Only the two requested review files were written. Replacement blocks retain PROPOSED status and require a different delta reviewer under SPEC.

Final mechanical validation: `python3 scripts/depgraph_apply_review.py docs/graph/I/packets I-p67a docs/graph/I/reviews/I-p67a-review.md sol-review-I-p67 --dry-run` reports `16 replaced, 0 added, 0 coverage items, 0 unresolved FAILs`. `git diff --check` exits 0. Unrelated concurrent workspace changes were observed and left untouched.

## Replacement fragments

Each complete NODE block replaces the same ID in the original slice packet; unchanged fields are retained for mechanical application.

### `stepI:p6:kb-hess`

```text
NODE: stepI:p6:kb-hess
KIND: step
TITLE: Derivative of the frequency map
STATEMENT_SOURCE: blueprint-I/parts/p6-kepler.tex#stepI:p6:kb-hess@L98-L99
PROOF_SOURCE: blueprint-I/parts/p6-kepler.tex#stepI:p6:kb-hess@L98-L99
CONTRACT_ID: stepI:p6:kb-hess
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: step kb-grad; I in R^2 with I_1 > 0
SOURCE_QUANTIFIERS: as in the enclosing result
SOURCE_CONCLUSION: D(frequencyMap h)(I) = Dg(I), first row (-3kappa I_1^-4, 0), second row 0
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepI:p6:kb-grad, bpI:p0:realham#frequencyMap, bpI:p6:kep-ham
ROUTES: -
ROUTE_FOR: -
EDGE: stepI:p6:kb-grad | blueprint-I/parts/p6-kepler.tex#stepI:p6:kb-hess@L98-L98 | frequencyMap h = g on the open set V, so derivatives agree
EDGE: bpI:p0:realham#frequencyMap | blueprint-I/parts/p6-kepler.tex#stepI:p6:kb-hess@L98-L98 | frequencyMap h
EDGE: bpI:p6:kep-ham | blueprint-I/parts/p6-kepler.tex#stepI:p6:kb-hess@L98-L99 | h or h~ is the Hamiltonian fixed by the Kepler package
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p67a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### `stepI:p6:kb-entries`

```text
NODE: stepI:p6:kb-entries
KIND: step
TITLE: Entries of the bordered matrix
STATEMENT_SOURCE: blueprint-I/parts/p6-kepler.tex#stepI:p6:kb-entries@L101-L104
PROOF_SOURCE: blueprint-I/parts/p6-kepler.tex#stepI:p6:kb-entries@L101-L104
CONTRACT_ID: stepI:p6:kb-entries
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: steps kb-grad, kb-hess; Definitions bordered and keplerborder
SOURCE_QUANTIFIERS: as in the enclosing result
SOURCE_CONCLUSION: entries of borderedHessian h I: Dg(I) block, border entries g(I)_a, corner 0; these coincide with the entries of K_{kappa,Omega}(I_1); so borderedHessian h I = reindex_eps K_{kappa,Omega}(I_1)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p0:bordered#borderedHessian, stepI:p6:kb-hess, stepI:p6:kb-grad, bpI:p0:keplerborder#keplerBorder, bpI:p6:kep-ham
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p0:bordered#borderedHessian | blueprint-I/parts/p6-kepler.tex#stepI:p6:kb-entries@L101-L101 | definition of the bordered Hessian: block, border and corner entries
EDGE: stepI:p6:kb-hess | blueprint-I/parts/p6-kepler.tex#stepI:p6:kb-entries@L102-L102 | the Hessian block Dg(I)
EDGE: stepI:p6:kb-grad | blueprint-I/parts/p6-kepler.tex#stepI:p6:kb-entries@L102-L102 | the border entries g(I)_a
EDGE: bpI:p0:keplerborder#keplerBorder | blueprint-I/parts/p6-kepler.tex#stepI:p6:kb-entries@L103-L103 | entrywise comparison with keplerBorder at L = I_1
EDGE: bpI:p6:kep-ham | blueprint-I/parts/p6-kepler.tex#stepI:p6:kb-entries@L101-L104 | h or h~ is the Hamiltonian fixed by the Kepler package
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p67a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### `stepI:p6:kb-det`

```text
NODE: stepI:p6:kb-det
KIND: step
TITLE: Determinant
STATEMENT_SOURCE: blueprint-I/parts/p6-kepler.tex#stepI:p6:kb-det@L106-L107
PROOF_SOURCE: blueprint-I/parts/p6-kepler.tex#stepI:p6:kb-det@L106-L107
CONTRACT_ID: stepI:p6:kb-det
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: step kb-entries; reindexing by a bijection of the index set
SOURCE_QUANTIFIERS: as in the enclosing result
SOURCE_CONCLUSION: det borderedHessian h I = det K_{kappa,Omega}(I_1) = 3 kappa Omega^2 / I_1^4
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepI:p6:kb-entries, bpI:p6:det-formula, bpI:p0:bordered#borderedHessian, bpI:p6:kep-ham
ROUTES: -
ROUTE_FOR: -
EDGE: stepI:p6:kb-entries | blueprint-I/parts/p6-kepler.tex#stepI:p6:kb-det@L106-L106 | borderedHessian h I = reindex K
EDGE: bpI:p6:det-formula | blueprint-I/parts/p6-kepler.tex#stepI:p6:kb-det@L107-L107 | value of det K at L = I_1 > 0
EDGE: bpI:p0:bordered#borderedHessian | blueprint-I/parts/p6-kepler.tex#stepI:p6:kb-det@L106-L106 | determinant of the frozen bordered Hessian
EDGE: bpI:p6:kep-ham | blueprint-I/parts/p6-kepler.tex#stepI:p6:kb-det@L106-L107 | h or h~ is the Hamiltonian fixed by the Kepler package
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p67a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### `stepI:p6:nd-concl`

```text
NODE: stepI:p6:nd-concl
KIND: step
TITLE: Conclusion
STATEMENT_SOURCE: blueprint-I/parts/p6-kepler.tex#stepI:p6:nd-concl@L162-L162
PROOF_SOURCE: blueprint-I/parts/p6-kepler.tex#stepI:p6:nd-concl@L162-L162
CONTRACT_ID: stepI:p6:nd-concl
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: step nd-domain; Lemma conversion (b),(d); Lemma kep-border
SOURCE_QUANTIFIERS: as in the enclosing result
SOURCE_CONCLUSION: h~ holomorphic on B_{r_0}, real at real I, and det borderedHessian h~ I = 3/I_1^4 > 0 for real I in B_{r_0}
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p6:conversion, bpI:p6:kep-border, stepI:p6:nd-domain, bpI:p6:kep-ham
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p6:conversion | blueprint-I/parts/p6-kepler.tex#stepI:p6:nd-concl@L162-L162 | (b),(d) with kappa = Omega = 1
EDGE: bpI:p6:kep-border | blueprint-I/parts/p6-kepler.tex#stepI:p6:nd-concl@L162-L162 | bordered Hessian determinant
EDGE: stepI:p6:nd-domain | blueprint-I/parts/p6-kepler.tex#stepI:p6:nd-concl@L162-L162 | I_1 != 0 (and > 0 for real I) on B_{r_0}
EDGE: bpI:p6:kep-ham | blueprint-I/parts/p6-kepler.tex#stepI:p6:nd-concl@L162-L162 | h or h~ is the Hamiltonian fixed by the Kepler package
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p67a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### `stepI:p7:he-deriv`

```text
NODE: stepI:p7:he-deriv
KIND: step
TITLE: Derivatives
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:he-deriv@L61-L67
PROOF_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:he-deriv@L61-L67
CONTRACT_ID: stepI:p7:he-deriv
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: step he-smooth; partial_{q_i}(1/r_j) = -(q - a_j)_i / r_j^3
SOURCE_QUANTIFIERS: as in the enclosing result
SOURCE_CONCLUSION: (d_p H, -d_q H) = ((p_0+q_1, p_1-q_0), (p_1,-p_0) - (1-mu)(q-a_1)/r_1^3 - mu (q-a_2)/r_2^3) = V_mu
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepI:p7:he-smooth, bpI:p0:restricted#restrictedHamiltonian, bpI:p0:primaries#primary1, bpI:p0:primaries#primary2, bpI:p0:restricted#restrictedVectorField, bpI:p7:sec-ham#data
ROUTES: -
ROUTE_FOR: -
EDGE: stepI:p7:he-smooth | blueprint-I/parts/p7-delaunay.tex#stepI:p7:he-deriv@L61-L61 | differentiability of H^R3_mu on W_mu
EDGE: bpI:p0:restricted#restrictedHamiltonian | blueprint-I/parts/p7-delaunay.tex#stepI:p7:he-deriv@L61-L61 | the Hamiltonian differentiated
EDGE: bpI:p0:primaries#primary1 | blueprint-I/parts/p7-delaunay.tex#stepI:p7:he-deriv@L61-L61 | a_1(mu)
EDGE: bpI:p0:primaries#primary2 | blueprint-I/parts/p7-delaunay.tex#stepI:p7:he-deriv@L61-L61 | a_2(mu)
EDGE: bpI:p0:restricted#restrictedVectorField | blueprint-I/parts/p7-delaunay.tex#stepI:p7:he-deriv@L67-L67 | the display of V_mu in Definition restricted
EDGE: bpI:p7:sec-ham#data | blueprint-I/parts/p7-delaunay.tex#stepI:p7:he-deriv@L61-L67 | r_j and W_mu are fixed in the section data
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p67a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### `stepI:p7:he-sol`

```text
NODE: stepI:p7:he-sol
KIND: step
TITLE: Solution predicates
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:he-sol@L69-L69
PROOF_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:he-sol@L69-L69
CONTRACT_ID: stepI:p7:he-sol
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: steps he-smooth, he-deriv; Definition restricted
SOURCE_QUANTIFIERS: as in the enclosing result
SOURCE_CONCLUSION: the clauses of RSol_mu are z(t) in W_mu and z'(t) = V_mu(z(t)) = X_H(z(t)); the reduction to IsSolIn is the cited N result
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p0:primaries#CollisionFree, bpI:p0:restricted#IsRestrictedSolutionOn, bpI:p0:restricted#restrictedVectorField, stepI:p7:he-deriv, N:bpN:p3:newton-reduction, bpI:p7:sec-ham#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p0:primaries#CollisionFree | blueprint-I/parts/p7-delaunay.tex#stepI:p7:he-sol@L69-L69 | first clause of RSol_mu is collision-freeness
EDGE: bpI:p0:restricted#IsRestrictedSolutionOn | blueprint-I/parts/p7-delaunay.tex#stepI:p7:he-sol@L69-L69 | RSol_mu
EDGE: bpI:p0:restricted#restrictedVectorField | blueprint-I/parts/p7-delaunay.tex#stepI:p7:he-sol@L69-L69 | V_mu
EDGE: stepI:p7:he-deriv | blueprint-I/parts/p7-delaunay.tex#stepI:p7:he-sol@L69-L69 | V_mu = X_H
EDGE: N:bpN:p3:newton-reduction | blueprint-I/parts/p7-delaunay.tex#stepI:p7:he-sol@L69-L69 | reduction to IsSolIn
EDGE: bpI:p7:sec-ham#data | blueprint-I/parts/p7-delaunay.tex#stepI:p7:he-sol@L69-L69 | r_j and W_mu are fixed in the section data
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p67a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### `stepI:p7:ke-c`

```text
NODE: stepI:p7:ke-c
KIND: step
TITLE: (c)
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:ke-c@L133-L134
PROOF_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:ke-c@L133-L134
CONTRACT_ID: stepI:p7:ke-c
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: steps ke-contr, ke-hol, part (b); real e with |e| < 1
SOURCE_QUANTIFIERS: as in the enclosing result
SOURCE_CONCLUSION: phi(u) = ell + e sin u is a |e|-contraction of R with a unique real fixed point u_R(ell,e); u = u_R at real points of P; u_R real-analytic on R x (-1,1), d_ell u_R > 0, u_R(.,e) an increasing diffeomorphism of R, u_R(0,e) = 0, u_R(2pi,e) = 2pi
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepI:p7:ke-contr, stepI:p7:ke-hol, K:bp:p1:holomorphic-analytic, stepI:p7:ke-b, K:bp:p1:ext-banach, K:bp:p1:ext-mvt
ROUTES: -
ROUTE_FOR: -
EDGE: stepI:p7:ke-contr | blueprint-I/parts/p7-delaunay.tex#stepI:p7:ke-c@L133-L133 | uniqueness in S gives u = u_R at real points of P
EDGE: stepI:p7:ke-hol | blueprint-I/parts/p7-delaunay.tex#stepI:p7:ke-c@L134-L134 | u_R is the restriction of a holomorphic function
EDGE: K:bp:p1:holomorphic-analytic | blueprint-I/parts/p7-delaunay.tex#stepI:p7:ke-c@L134-L134 | holomorphic implies real-analytic
EDGE: stepI:p7:ke-b | blueprint-I/parts/p7-delaunay.tex#stepI:p7:ke-c@L134-L134 | d_ell u_R = 1/(1 - e cos u_R)
EDGE: K:bp:p1:ext-banach | blueprint-I/parts/p7-delaunay.tex#stepI:p7:ke-c@L133-L133 | the complete nonempty real line carries the contraction with constant abs(e) < 1
EDGE: K:bp:p1:ext-mvt | blueprint-I/parts/p7-delaunay.tex#stepI:p7:ke-c@L133-L133 | abs(e cos u) <= abs(e) bounds the derivative on the convex real line
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p67a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### `stepI:p7:oi-gam`

```text
NODE: stepI:p7:oi-gam
KIND: step
TITLE: Angular momentum, radial momentum
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:oi-gam@L197-L198
PROOF_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:oi-gam@L197-L198
CONTRACT_ID: stepI:p7:oi-gam
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: (ell,g,L,G) in D_R; orbit-map formulas with k = G/L, k^2 = 1-e^2; rotations preserve angular momentum and the dot product
SOURCE_QUANTIFIERS: as in the enclosing result
SOURCE_CONCLUSION: Gamma = X P_Y - Y P_X = L k = G and q.p = X P_X + Y P_Y = L e s
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p7:orbit-maps
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p7:orbit-maps | blueprint-I/parts/p7-delaunay.tex#stepI:p7:oi-gam@L197-L197 | X, Y, P_X, P_Y
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p67a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### `stepI:p7:oi-en`

```text
NODE: stepI:p7:oi-en
KIND: step
TITLE: Energy
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:oi-en@L200-L200
PROOF_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:oi-en@L200-L200
CONTRACT_ID: stepI:p7:oi-en
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: steps oi-r, oi-gam
SOURCE_QUANTIFIERS: as in the enclosing result
SOURCE_CONCLUSION: E = (1/2)|p|^2 - 1/r = -1/(2L^2); Q(ell,g,L,G) lies in C with elements L, G, L^2, e
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepI:p7:oi-r, bpI:p7:elements, bpI:p7:orbit-maps, stepI:p7:oi-gam
ROUTES: -
ROUTE_FOR: -
EDGE: stepI:p7:oi-r | blueprint-I/parts/p7-delaunay.tex#stepI:p7:oi-en@L200-L200 | r and ¦p¦^2
EDGE: bpI:p7:elements | blueprint-I/parts/p7-delaunay.tex#stepI:p7:oi-en@L200-L200 | membership in C (G > 0, G^2 < L^2 = -1/(2E)) and the elements
EDGE: bpI:p7:orbit-maps | blueprint-I/parts/p7-delaunay.tex#stepI:p7:oi-en@L200-L200 | p and q of the orbit map
EDGE: stepI:p7:oi-gam | blueprint-I/parts/p7-delaunay.tex#stepI:p7:oi-en@L200-L200 | Gamma(q,p) = G is needed for the strict angular-momentum inequality and recovery of the elements
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p67a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### `stepI:p7:oi-d`

```text
NODE: stepI:p7:oi-d
KIND: step
TITLE: (d)
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:oi-d@L202-L202
PROOF_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:oi-d@L202-L202
CONTRACT_ID: stepI:p7:oi-d
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: step oi-r; L^2 e^2 = L^2 - G^2
SOURCE_QUANTIFIERS: as in the enclosing result
SOURCE_CONCLUSION: L^2 e c = L^2 - r and (L e s)^2 = -G^2 + 2r - r^2/L^2
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepI:p7:oi-r, bpI:p7:orbit-maps
ROUTES: -
ROUTE_FOR: -
EDGE: stepI:p7:oi-r | blueprint-I/parts/p7-delaunay.tex#stepI:p7:oi-d@L202-L202 | r = L^2 (1 - e c)
EDGE: bpI:p7:orbit-maps | blueprint-I/parts/p7-delaunay.tex#stepI:p7:oi-d@L202-L202 | the calculation uses the Delaunay orbit map or its element formulas
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p67a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### `stepI:p7:sy-compare`

```text
NODE: stepI:p7:sy-compare
KIND: step
TITLE: Comparison with $L\,d\ell$
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:sy-compare@L232-L232
PROOF_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:sy-compare@L232-L232
CONTRACT_ID: stepI:p7:sy-compare
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: steps sy-g, sy-coord; d ell = (1 - e c) du - s de
SOURCE_QUANTIFIERS: as in the enclosing result
SOURCE_CONCLUSION: pi.dxi - L dell = dF with F = 2 L e s; Q^*(sum p_i dq_i) = L dell + G dg + dF
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepI:p7:sy-g, stepI:p7:sy-coord, bpI:p7:kepler-eq, bpI:p7:orbit-maps
ROUTES: -
ROUTE_FOR: -
EDGE: stepI:p7:sy-g | blueprint-I/parts/p7-delaunay.tex#stepI:p7:sy-compare@L232-L232 | p.dq = pi.dxi + G dg
EDGE: stepI:p7:sy-coord | blueprint-I/parts/p7-delaunay.tex#stepI:p7:sy-compare@L232-L232 | pi.dxi
EDGE: bpI:p7:kepler-eq | blueprint-I/parts/p7-delaunay.tex#stepI:p7:sy-compare@L232-L232 | ell = u - e sin u relates dell to du, de
EDGE: bpI:p7:orbit-maps | blueprint-I/parts/p7-delaunay.tex#stepI:p7:sy-compare@L232-L232 | the calculation uses the Delaunay orbit map or its element formulas
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p67a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### `stepI:p7:sy-ext`

```text
NODE: stepI:p7:sy-ext
KIND: step
TITLE: Exterior derivative
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:sy-ext@L234-L235
PROOF_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:sy-ext@L234-L235
CONTRACT_ID: stepI:p7:sy-ext
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: on D_R; the one-form identity established by sy-compare; exterior calculus from x-forms (no invertibility premise)
SOURCE_QUANTIFIERS: as in the enclosing result
SOURCE_CONCLUSION: Q^*(sum dp_i wedge dq_i) = dL wedge dell + dG wedge dg, i.e. D Q^T J D Q = J, det D Q != 0, D Q J D Q^T = J
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepI:p7:sy-compare, bpI:p7:x-forms, bpI:p7:orbit-maps
ROUTES: -
ROUTE_FOR: -
EDGE: stepI:p7:sy-compare | blueprint-I/parts/p7-delaunay.tex#stepI:p7:sy-ext@L234-L234 | Q^*(sum p_i dq_i) = L dell + G dg + dF
EDGE: bpI:p7:x-forms | blueprint-I/parts/p7-delaunay.tex#stepI:p7:sy-ext@L234-L234 | d^2 = 0, pull-back commutes with d, form determined by values on vectors
EDGE: bpI:p7:orbit-maps | blueprint-I/parts/p7-delaunay.tex#stepI:p7:sy-ext@L234-L235 | the calculation uses the Delaunay orbit map or its element formulas
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p67a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### `stepI:p7:sy-field`

```text
NODE: stepI:p7:sy-field
KIND: step
TITLE: Hamiltonian fields
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:sy-field@L237-L237
PROOF_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:sy-field@L237-L237
CONTRACT_ID: stepI:p7:sy-field
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: step sy-ext; H of class C^1
SOURCE_QUANTIFIERS: as in the enclosing result
SOURCE_CONCLUSION: D Q X_{H o Q} = X_H o Q; for C^1 curves w' = X_{H o Q}(w) iff d/dt Q(w) = X_H(Q(w))
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepI:p7:sy-ext, bpI:p7:orbit-maps
ROUTES: -
ROUTE_FOR: -
EDGE: stepI:p7:sy-ext | blueprint-I/parts/p7-delaunay.tex#stepI:p7:sy-field@L237-L237 | D Q J D Q^T = J
EDGE: bpI:p7:orbit-maps | blueprint-I/parts/p7-delaunay.tex#stepI:p7:sy-field@L237-L237 | the calculation uses the Delaunay orbit map or its element formulas
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p67a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### `stepI:p7:ch-diffeo`

```text
NODE: stepI:p7:ch-diffeo
KIND: step
TITLE: Quotient diffeomorphism
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:ch-diffeo@L258-L258
PROOF_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:ch-diffeo@L258-L258
CONTRACT_ID: stepI:p7:ch-diffeo
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: steps ch-reg, ch-inj, ch-surj3; periodicity
SOURCE_QUANTIFIERS: as in the enclosing result
SOURCE_CONCLUSION: Q is 2pi-periodic in ell, g; the quotient map is a bijective local diffeomorphism, hence a real-analytic diffeomorphism onto C
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p7:kepler-eq, stepI:p7:ch-reg, stepI:p7:ch-inj, stepI:p7:ch-surj3, bpI:p7:x-ift, bpI:p7:orbit-maps
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p7:kepler-eq | blueprint-I/parts/p7-delaunay.tex#stepI:p7:ch-diffeo@L258-L258 | (b): periodicity of u
EDGE: stepI:p7:ch-reg | blueprint-I/parts/p7-delaunay.tex#stepI:p7:ch-diffeo@L258-L258 | local diffeomorphism
EDGE: stepI:p7:ch-inj | blueprint-I/parts/p7-delaunay.tex#stepI:p7:ch-diffeo@L258-L258 | injectivity modulo 2pi
EDGE: stepI:p7:ch-surj3 | blueprint-I/parts/p7-delaunay.tex#stepI:p7:ch-diffeo@L258-L258 | surjectivity
EDGE: bpI:p7:x-ift | blueprint-I/parts/p7-delaunay.tex#stepI:p7:ch-diffeo@L258-L258 | bijective local real-analytic diffeomorphism is a diffeomorphism
EDGE: bpI:p7:orbit-maps | blueprint-I/parts/p7-delaunay.tex#stepI:p7:ch-diffeo@L258-L258 | the calculation uses the Delaunay orbit map or its element formulas
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p67a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### `stepI:p7:ch-reg`

```text
NODE: stepI:p7:ch-reg
KIND: step
TITLE: Regularity
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:ch-reg@L246-L246
PROOF_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:ch-reg@L246-L246
CONTRACT_ID: stepI:p7:ch-reg
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: (ell,g,L,G) in D_R, so 0 < G < L and 1-G^2/L^2 > 0; e(L,G) = sqrt(1-G^2/L^2)
SOURCE_QUANTIFIERS: as in the enclosing result
SOURCE_CONCLUSION: Q is real-analytic on D_R; D Q invertible; Q(D_R) subset C
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p7:kepler-eq, bpI:p7:orbit-maps, bpI:p7:symplectic, bpI:p7:orbit-identities
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p7:kepler-eq | blueprint-I/parts/p7-delaunay.tex#stepI:p7:ch-reg@L246-L246 | (c): u_R real-analytic
EDGE: bpI:p7:orbit-maps | blueprint-I/parts/p7-delaunay.tex#stepI:p7:ch-reg@L246-L246 | Q built from u_R, e(L,G), R(g)
EDGE: bpI:p7:symplectic | blueprint-I/parts/p7-delaunay.tex#stepI:p7:ch-reg@L246-L246 | invertibility of D Q
EDGE: bpI:p7:orbit-identities | blueprint-I/parts/p7-delaunay.tex#stepI:p7:ch-reg@L246-L246 | (c): Q(D_R) subset C
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p67a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### `bpI:p6:conversion`

```text
NODE: bpI:p6:conversion
KIND: lemma
TITLE: Conversion
STATEMENT_SOURCE: blueprint-I/parts/p6-kepler.tex#bpI:p6:conversion@L119-L141
PROOF_SOURCE: blueprint-I/parts/p6-kepler.tex#bpI:p6:conversion@L142-L155
CONTRACT_ID: bpI:p6:conversion
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: kappa, Omega in R; kappa' = kappa (2 pi)^2, Omega' = Omega/(2 pi); (a) H differentiable; (b) I in C^2 with I_1 != 0; (c),(d) I in R^2 with I_1 > 0
SOURCE_QUANTIFIERS: kappa, Omega first (then kappa', Omega'), then H or I
SOURCE_CONCLUSION: (a) D S^T J D S = J = D S J D S^T, D S X_{H o S} = X_H o S, and w solves w' = X_{H o S}(w) iff S w solves y' = X_H(y); (b) h_{kappa,Omega}(I/(2 pi)) = h_{kappa',Omega'}(I), so h~ is the Kepler-rotation Hamiltonian of the converted constants, holomorphic on {I_1 != 0}, real at real I; (c) grad h~(I) = (kappa'/I_1^3, -Omega') = (1/(2 pi)) grad h_{kappa,Omega}(I/(2 pi)); (d) K_{kappa',Omega'}(I_1) = D K_{kappa,Omega}(I_1/(2 pi)) D with D = diag(1/(2 pi), 1/(2 pi), 1), borderedHessian h~ I = reindex K_{kappa',Omega'}(I_1), det = 3 kappa' Omega'^2 / I_1^4 = 3 kappa Omega^2 / I_1^4; for kappa = Omega = 1, kappa' = (2pi)^2 > 0, Omega' = 1/(2pi) > 0 and det borderedHessian h~ I = 3/I_1^4 > 0 for real I_1 > 0
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p6:conversion-map, bpI:p6:kep-ham, bpI:p0:keplerborder#keplerBorder, bpI:p0:bordered#borderedHessian, stepI:p6:cv-sympl, stepI:p6:cv-ham, stepI:p6:cv-border
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p6:conversion-map | blueprint-I/parts/p6-kepler.tex#bpI:p6:conversion@L122-L122 | the conversion S
EDGE: bpI:p6:kep-ham | blueprint-I/parts/p6-kepler.tex#bpI:p6:conversion@L126-L126 | h_{kappa,Omega} and h_{kappa',Omega'}
EDGE: bpI:p0:keplerborder#keplerBorder | blueprint-I/parts/p6-kepler.tex#bpI:p6:conversion@L132-L132 | K_{kappa,Omega} and K_{kappa',Omega'}
EDGE: bpI:p0:bordered#borderedHessian | blueprint-I/parts/p6-kepler.tex#bpI:p6:conversion@L133-L133 | borderedHessian of h~
EDGE: stepI:p6:cv-sympl | blueprint-I/parts/p6-kepler.tex#bpI:p6:conversion@L143-L143 | proof of (a)
EDGE: stepI:p6:cv-ham | blueprint-I/parts/p6-kepler.tex#bpI:p6:conversion@L149-L149 | proof of (b)
EDGE: stepI:p6:cv-border | blueprint-I/parts/p6-kepler.tex#bpI:p6:conversion@L151-L151 | proof of (c) and (d)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p67a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```
