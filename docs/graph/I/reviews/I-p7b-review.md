# I-p7b topology review — sol-review-I-p67

Verdict: **FAIL**. The exclusions are sound; the replacement blocks below repair direct dependencies and source contracts without claiming mathematical closure.

Reviewed 33 retained nodes and every inventory item in this slice. The node rows refer to the original packet. PASS means no local record defect found; a parent can retain PASS while a prerequisite needs the separate correction listed below.

## Node inventory

| Node ID | Verdict | Source spans re-read | Reason for FAIL |
|---|---|---|---|
| `bpI:p7:near-circular` | PASS | `blueprint-I/parts/p7-delaunay.tex#bpI:p7:near-circular@L261-L270 ; blueprint-I/parts/p7-delaunay.tex#bpI:p7:near-circular@L271-L277` | — |
| `stepI:p7:nc-sub` | PASS | `blueprint-I/parts/p7-delaunay.tex#stepI:p7:nc-sub@L272-L272` | — |
| `stepI:p7:nc-sup` | PASS | `blueprint-I/parts/p7-delaunay.tex#stepI:p7:nc-sup@L274-L274` | — |
| `stepI:p7:nc-image` | PASS | `blueprint-I/parts/p7-delaunay.tex#stepI:p7:nc-image@L276-L276` | — |
| `bpI:p7:h0` | FAIL | `blueprint-I/parts/p7-delaunay.tex#bpI:p7:h0@L279-L283 ; blueprint-I/parts/p7-delaunay.tex#bpI:p7:h0@L284-L286` | Missing direct elements package edge for the baseline E and Gamma. |
| `stepI:p7:h0-formula` | FAIL | `blueprint-I/parts/p7-delaunay.tex#stepI:p7:h0-formula@L285-L285` | Missing direct elements package edge for the baseline E and Gamma. |
| `bpI:p7:complex-domain` | PASS | `blueprint-I/parts/p7-delaunay.tex#bpI:p7:complex-domain@L337-L343 ; blueprint-I/parts/p7-delaunay.tex#bpI:p7:complex-domain@L344-L349` | — |
| `stepI:p7:cd-uc` | FAIL | `blueprint-I/parts/p7-delaunay.tex#stepI:p7:cd-uc@L345-L345` | The note labels an unlisted substantive Heine-Cantor input routine instead of exposing SOURCE_GAP; compactness itself is covered by x-topo. |
| `stepI:p7:cd-branch` | PASS | `blueprint-I/parts/p7-delaunay.tex#stepI:p7:cd-branch@L347-L348` | — |
| `bpI:p7:shift-def` | PASS | `blueprint-I/parts/p7-delaunay.tex#bpI:p7:shift-def@L354-L360` | — |
| `bpI:p7:shift` | PASS | `blueprint-I/parts/p7-delaunay.tex#bpI:p7:shift@L362-L376 ; blueprint-I/parts/p7-delaunay.tex#bpI:p7:shift@L377-L391` | — |
| `stepI:p7:sh-pos` | PASS | `blueprint-I/parts/p7-delaunay.tex#stepI:p7:sh-pos@L378-L382` | — |
| `stepI:p7:sh-bound` | PASS | `blueprint-I/parts/p7-delaunay.tex#stepI:p7:sh-bound@L384-L384` | — |
| `stepI:p7:sh-div` | FAIL | `blueprint-I/parts/p7-delaunay.tex#stepI:p7:sh-div@L386-L386` | The fundamental theorem of calculus is an unlisted input at the identity mu f = g_q; do not silently treat it as a new external/import. |
| `stepI:p7:sh-zero` | PASS | `blueprint-I/parts/p7-delaunay.tex#stepI:p7:sh-zero@L388-L388` | — |
| `stepI:p7:sh-real` | PASS | `blueprint-I/parts/p7-delaunay.tex#stepI:p7:sh-real@L390-L390` | — |
| `bpI:p7:exact-ham` | PASS | `blueprint-I/parts/p7-delaunay.tex#bpI:p7:exact-ham@L393-L411 ; blueprint-I/parts/p7-delaunay.tex#bpI:p7:exact-ham@L412-L423` | — |
| `stepI:p7:eh-shell` | FAIL | `blueprint-I/parts/p7-delaunay.tex#stepI:p7:eh-shell@L413-L413` | Missing direct orbit-maps package edge for Q or q(w). |
| `stepI:p7:eh-delta` | FAIL | `blueprint-I/parts/p7-delaunay.tex#stepI:p7:eh-delta@L415-L416` | The note labels an unlisted uniform-continuity input routine; the recorded bound also loses the source restriction to position parts. |
| `stepI:p7:eh-hol` | FAIL | `blueprint-I/parts/p7-delaunay.tex#stepI:p7:eh-hol@L418-L418` | Missing direct sec-complex#data edge for U(delta_2), K and K_delta in conclusion (iv). |
| `stepI:p7:eh-exact` | FAIL | `blueprint-I/parts/p7-delaunay.tex#stepI:p7:eh-exact@L420-L422` | Missing direct orbit-maps package edge for Q or q(w). |
| `bpI:p7:period-one` | FAIL | `blueprint-I/parts/p7-delaunay.tex#bpI:p7:period-one@L425-L439 ; blueprint-I/parts/p7-delaunay.tex#bpI:p7:period-one@L440-L446` | The final eps = mu C_F specialization drops the source restriction mu in [0,mu_2), despite earlier allowing signed mu. |
| `stepI:p7:po-dom` | PASS | `blueprint-I/parts/p7-delaunay.tex#stepI:p7:po-dom@L441-L441` | — |
| `stepI:p7:po-prop` | FAIL | `blueprint-I/parts/p7-delaunay.tex#stepI:p7:po-prop@L443-L443` | Missing direct Kepler-Hamiltonian package edge for the converted h~. The cited nondeg domain argument does not explicitly discharge the full corollary premises for arbitrary B. Retain the cited argument dependency conservatively and expose the conditional-application ambiguity as SOURCE_GAP; do not silently assume the radius premises. |
| `stepI:p7:po-exact` | FAIL | `blueprint-I/parts/p7-delaunay.tex#stepI:p7:po-exact@L445-L445` | Missing direct orbit-maps package edge for Q or q(w). |
| `bpI:p7:transfer` | FAIL | `blueprint-I/parts/p7-delaunay.tex#bpI:p7:transfer@L448-L453 ; blueprint-I/parts/p7-delaunay.tex#bpI:p7:transfer@L454-L460` | Missing direct Kepler-Hamiltonian or conversion package edge in the transferred Hamiltonian or map. Missing direct sec-complex#data edge for K, U(delta_2), m_L, or B_r0 data derived from K. |
| `stepI:p7:tr-cf` | FAIL | `blueprint-I/parts/p7-delaunay.tex#stepI:p7:tr-cf@L455-L455` | Missing direct Kepler-Hamiltonian or conversion package edge in the transferred Hamiltonian or map. Missing direct sec-complex#data edge for K, U(delta_2), m_L, or B_r0 data derived from K. Missing direct orbit-maps package edge for Q or q(w). |
| `stepI:p7:tr-open` | FAIL | `blueprint-I/parts/p7-delaunay.tex#stepI:p7:tr-open@L457-L457` | Missing direct Kepler-Hamiltonian or conversion package edge in the transferred Hamiltonian or map. Missing direct sec-complex#data edge for K, U(delta_2), m_L, or B_r0 data derived from K. Missing direct orbit-maps package edge for Q or q(w). |
| `stepI:p7:tr-chain` | FAIL | `blueprint-I/parts/p7-delaunay.tex#stepI:p7:tr-chain@L459-L459` | Missing direct Kepler-Hamiltonian or conversion package edge in the transferred Hamiltonian or map. Missing direct sec-complex#data edge for K, U(delta_2), m_L, or B_r0 data derived from K. Missing direct orbit-maps package edge for Q or q(w). |
| `bpI:p7:nondeg` | FAIL | `blueprint-I/parts/p7-delaunay.tex#bpI:p7:nondeg@L465-L469 ; blueprint-I/parts/p7-delaunay.tex#bpI:p7:nondeg@L470-L473` | Missing direct Kepler-Hamiltonian package edge for the converted h~. Missing direct sec-complex#data edge for K, U(delta_2), m_L, or B_r0 data derived from K. |
| `stepI:p7:nd-dom` | FAIL | `blueprint-I/parts/p7-delaunay.tex#stepI:p7:nd-dom@L471-L471` | Missing direct Kepler-Hamiltonian package edge for the converted h~. Missing direct sec-complex#data edge for K, U(delta_2), m_L, or B_r0 data derived from K. |
| `stepI:p7:nd-det` | FAIL | `blueprint-I/parts/p7-delaunay.tex#stepI:p7:nd-det@L472-L472` | Missing direct Kepler-Hamiltonian package edge for the converted h~. |
| `bpI:p7:sec-complex#data` | FAIL | `blueprint-I/parts/p7-delaunay.tex#bpI:p7:sec-complex@L325-L335` | The data package uses e(L,G) and C_0 without the defining orbit-maps package edge. |

## Coverage

| Failing coverage item | Verdict | Source span | Reason |
|---|---|---|---|
| None | — | — | Every disposition maps to the correct owning node or has a valid exclusion. |

All other coverage items PASS. In particular both sourcegap items (Part 7 L14 and L113) map to the blueprint bridges that actually fill the Chi05 gaps; no extra axiom is inferred. The ke-ift remark is correctly excluded: it does not replace the contraction proof with its uniform bounds. The #data prose items map to their section-data nodes. Their consumers still need the direct edges identified above.

## Root-closure exclusions

The exclusions were checked against raw Part 8, not inferred from the absence of packet edges. Part 8 L61–81 constructs the initial coordinates from near-circular/chart/elements; L149–185 obtains the safe region and period-one Hamiltonian data from exact-ham, period-one and nondeg; L204–211 uses orbit-identities(a),(c) for instantaneous radius and momentum bounds. The proof L214–232 uses I-HEAD, transfer, those bounds, shell-exclusion, ham-eq and the N ODE reduction/uniqueness. None uses a mean value, circular endpoint, general-strength scaling, or the inertial Newtonian interpretation. Part 8 L126 mentions newton only in the unused moving-frame remark. In particular N:bpN:p3:newton-reduction is a different result: its restricted-predicate reduction does not consume bpI:p7:newton.

A search across all eight corpus files found the only occurrences of means/scaling/circular/x-change and their proof steps in their own Part 7 blocks or the administrative Part 7 introduction/outputs. The sole other newton occurrence is Part 8 L126. Parts 2 and 5 (I-G1 and I-HEAD) contain none; Part 6 proves I-KEPLER by the determinant expansion and positivity, independent of all these nodes. Reading Part 7's retained prerequisites confirms no implicit use either: all bounds used by Part 8 are pointwise orbit identities, not averages; the safe action region has eccentricity bounded away from zero; the strength remains one. Therefore means (L288–299), circular (L301–307), scaling (L309–320), newton (L72–86), x-change (L41) and steps mv-cv/mv-int, ci-alg, sc-alg/sc-flow, nw-rot/nw-force are correctly EXCLUDED from every track-I root closure. Track P must own whatever it uses. The assembled packet traversal independently reaches 435 IDs, all 63 retained I-p67a nodes and all 33 retained I-p7b nodes; none of the excluded candidates is reached. This is a topology check, not proof validation.

## Section data, packages and conventions

`sec-complex#data` correctly retains the nonempty compact K premise and positivity of its minima; it needs the orbit-maps package for e(L,G). x-topo legitimately supplies extrema/compactness but does not state Heine-Cantor. The two existing step nodes must expose that gap, as replacements do. The shift-def package retains the extra q != 0 condition separately from collision freedom. All retained consumers of its potential use the package directly. The transfer equality is on the open B_r0 neighbourhood, not just on B; the arbitrary time set J and the global-domain curve agree with the frozen solution predicates. The radius is Euclidean only for planar geometry; complex action/strip norms remain max norms.

The 2pi conversion was checked in both slices: S(theta,I) = (2pi theta,I/(2pi)), kappa' = kappa(2pi)^2, Omega' = Omega/(2pi), and the determinant in converted variables is 3 kappa Omega^2/I_1^4. The symplectic J has the opposite sign to frozen omegaZero; no packet edge identifies the two matrices. No spurious edge to I-HEAD is kept for its hypotheses being checked. No forward-reference edge from chart to h0 is needed: the E and Gamma identities already prove the displayed consequence. No provenance source edge or conjunctive alternative route was found in these slices.

## Suspected blueprint defects, source errata and deviations

Part 7 L363–374 says “choose epsilon_0 > 0” and later “C_sh, mu_2 depend only on (r_min,rho_max)”. Literally mu_2 = epsilon_0/2 varies with an arbitrary admissible choice. The source fields faithfully retain that claim; for uniform use the choice must be fixed as a function of those radii before mu. Part 7 L394–398 and Part 8 L190–201 intend exactly that order. Reported as a quantifier clarification for the writer, not silently strengthened into a new premise.

Part 7 L345 and L415 invoke uniform continuity on compact sets without a permitted Heine-Cantor input; L386 invokes the fundamental theorem of calculus without a listed input. These are external-policy omissions, exposed as SOURCE_GAP on existing substantive steps. They are not counterexamples to the analytic calculations. L415 explicitly says “the position parts”; the original eh-delta record accidentally strengthens it to a full Q bound. L443 invokes only nondeg’s “domain argument”; importing its whole conditional conclusion is unjustified without the radius premises.

No new paper-level erratum is asserted. Part 7 L489’s Chi05 report and L490’s barycentric coordinate/parameter adaptation are not independently checked against the PDF here. No frozen anchor is changed; no new deviation is introduced.

## Read-only checks and limits

Checks: `sha256sum -c docs/graph/I/CORPUS.sha256` returned eight `OK` lines (exit 0). `sha256sum -c docs/graph/I/IMPORTS.sha256` returned five `OK` lines and `blueprint/parts/p1-analysis.tex: FAILED` (exit 1). Raw current imported statements were read despite this drift. The current K locations are ext-mvt L75–78, ext-banach L95–96, holomorphic-analytic L296–312; the import packet still records L73–76, L93–94, L294–310. Their four source-statement fields agree in content with the current statements. The writer/imports reviewer must re-pin/remap rather than treating the old import pin as verified. N:newton-reduction L434–449 agrees, with its restricted clause valid on arbitrary J and for all real mu; ownership remains pending under SPEC until N's graph is settled. No new import is proposed. The named `inp_depgraph_imports.py` is absent from this checkout, so its report could not be run. Existing import IDs and package-free applicability were checked directly: K's three results here impose their own analytic/metric premises, not the K Part-2 standing package, so no K bridge is required.

No Lean run, build, axiom query, or source lint was performed: REVIEW-BRIEF explicitly says “Run no Lean” and restricts reading to frozen declarations. Axioms and implementation proof status are outside this review. Only the two requested review files were written. Replacement blocks retain PROPOSED status and require a different delta reviewer under SPEC.

Final mechanical validation: `python3 scripts/depgraph_apply_review.py docs/graph/I/packets I-p7b docs/graph/I/reviews/I-p7b-review.md sol-review-I-p67 --dry-run` reports `19 replaced, 0 added, 0 coverage items, 0 unresolved FAILs`. `git diff --check` exits 0. Unrelated concurrent workspace changes were observed and left untouched.

## Replacement fragments

Each complete NODE block replaces the same ID in the original slice packet; unchanged fields are retained for mechanical application.

### `bpI:p7:h0`

```text
NODE: bpI:p7:h0
KIND: lemma
TITLE: Unperturbed Hamiltonian in Delaunay variables
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#bpI:p7:h0@L279-L283
PROOF_SOURCE: blueprint-I/parts/p7-delaunay.tex#bpI:p7:h0@L284-L286
CONTRACT_ID: bpI:p7:h0
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: H^K(q,p) = E(q,p) - Gamma(q,p) for q != 0
SOURCE_QUANTIFIERS: (ell,g,L,G) in D_R; collision-free z at mu = 0
SOURCE_CONCLUSION: H^K o Q(ell,g,L,G) = -1/(2L^2) - G on D_R; H^R3_0(z) = H^K(z) for collision-free z
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p7:orbit-maps, bpI:p0:restricted#restrictedHamiltonian, stepI:p7:h0-formula, bpI:p7:elements
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p7:orbit-maps | blueprint-I/parts/p7-delaunay.tex#bpI:p7:h0@L280-L280 | Q on D_R
EDGE: bpI:p0:restricted#restrictedHamiltonian | blueprint-I/parts/p7-delaunay.tex#bpI:p7:h0@L281-L281 | H^R3_0
EDGE: stepI:p7:h0-formula | blueprint-I/parts/p7-delaunay.tex#bpI:p7:h0@L285-L285 | proof step
EDGE: bpI:p7:elements | blueprint-I/parts/p7-delaunay.tex#bpI:p7:h0@L280-L281 | H^K is defined as E(q,p) - Gamma(q,p)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p7b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### `stepI:p7:h0-formula`

```text
NODE: stepI:p7:h0-formula
KIND: step
TITLE: Formula
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:h0-formula@L285-L285
PROOF_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:h0-formula@L285-L285
CONTRACT_ID: stepI:p7:h0-formula
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: q_1 p_0 - q_0 p_1 = -Gamma(q,p)
SOURCE_QUANTIFIERS: as in the enclosing result
SOURCE_CONCLUSION: H^K = E - Gamma, equal to -1/(2L^2) - G along Q; at mu = 0 H^R3_0 has (1-0)/r_1 = 1/|q| and 0/r_2 = 0
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p7:orbit-identities, bpI:p0:restricted#restrictedHamiltonian, bpI:p7:elements
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p7:orbit-identities | blueprint-I/parts/p7-delaunay.tex#stepI:p7:h0-formula@L285-L285 | (b),(c): Gamma = G, E = -1/(2L^2)
EDGE: bpI:p0:restricted#restrictedHamiltonian | blueprint-I/parts/p7-delaunay.tex#stepI:p7:h0-formula@L285-L285 | H^R3_0
EDGE: bpI:p7:elements | blueprint-I/parts/p7-delaunay.tex#stepI:p7:h0-formula@L285-L285 | H^K is defined as E(q,p) - Gamma(q,p)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p7b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### `bpI:p7:sec-complex#data`

```text
NODE: bpI:p7:sec-complex#data
KIND: definition
TITLE: Data of section A common complex neighbourhood: K, e_pm, m_L, m_G, r_min, rho_max, K_delta, U(delta)
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#bpI:p7:sec-complex@L325-L335
PROOF_SOURCE: -
CONTRACT_ID: bpI:p7:sec-complex#data
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: K a nonempty compact subset of C_0 (the safe action region)
SOURCE_QUANTIFIERS: K, then delta > 0 (delta <= delta_K for U(delta))
SOURCE_CONCLUSION: defines e_- = min_K e > 0, e_1 = max_K e < 1, e_2 = (1+e_1)/2, m_L = min_K L > 0, m_G = min_K G > 0, r_min = min_K L^2(1-e) > 0, rho_max = max_K L^2(1+e), delta_K = delta_K(e_1) and P(e_1) from Proposition kepler-eq, K_delta = {(L,G) in C^2 : exists (L',G') in K, |(L,G)-(L',G')|_inf < delta} (open), U(delta) = {(ell,g,L,G) in C^4 : |Im ell| < delta, |Im g| < delta, (L,G) in K_delta}
CONSTANT_SCOPE: all quantities depend only on K
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p8:x-topo, bpI:p7:kepler-eq, bpI:p7:orbit-maps
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p8:x-topo | blueprint-I/parts/p7-delaunay.tex#bpI:p7:sec-complex#data@L327-L327 | minima and maxima of continuous functions on the nonempty compact K exist and are attained, so e_- > 0, e_1 < 1, m_L, m_G, r_min > 0
EDGE: bpI:p7:kepler-eq | blueprint-I/parts/p7-delaunay.tex#bpI:p7:sec-complex#data@L332-L332 | delta_K(e_1) and P(e_1)
EDGE: bpI:p7:orbit-maps | blueprint-I/parts/p7-delaunay.tex#bpI:p7:sec-complex@L325-L332 | e(L,G) = sqrt(1-G^2/L^2) on the cone C_0 supplies the continuous functions whose extrema define the data
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p7b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: section data node (SPEC, Part 7 L325-335)
```

### `stepI:p7:cd-uc`

```text
NODE: stepI:p7:cd-uc
KIND: step
TITLE: Uniform continuity
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:cd-uc@L345-L345
PROOF_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:cd-uc@L345-L345
CONTRACT_ID: stepI:p7:cd-uc
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: K as in section data
SOURCE_QUANTIFIERS: as in the enclosing result
SOURCE_CONCLUSION: (L,G) -> G^2/L^2 is uniformly continuous on the compact set {dist_inf((L,G),K) <= min{delta_K,m_L,m_G}/2} on which |L| >= m_L/2, so some delta_1 exists with Re L > m_L/2 and reality assertions (G > m_G/2 > 0 at real points)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p7:sec-complex#data, bpI:p7:kepler-eq, bpI:p8:x-topo
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p7:sec-complex#data | blueprint-I/parts/p7-delaunay.tex#stepI:p7:cd-uc@L345-L345 | K, m_L, m_G, delta_K
EDGE: bpI:p7:kepler-eq | blueprint-I/parts/p7-delaunay.tex#stepI:p7:cd-uc@L345-L345 | delta_K
EDGE: bpI:p8:x-topo | blueprint-I/parts/p7-delaunay.tex#stepI:p7:cd-uc@L345-L345 | the closed bounded neighbourhood of compact K is compact in the finite-dimensional real carrier
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p7b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: SOURCE_GAP: the passage from continuity on the compact complex action neighbourhood to uniform continuity (Heine-Cantor, identifying C^2 with R^4) is neither proved nor enumerated among the permitted external inputs. x-topo supplies closed-bounded compactness, but does not state Heine-Cantor. This records an input-policy gap, not a false estimate.
```

### `stepI:p7:eh-delta`

```text
NODE: stepI:p7:eh-delta
KIND: step
TITLE: Choice of $\delta_2$
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:eh-delta@L415-L416
PROOF_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:eh-delta@L415-L416
CONTRACT_ID: stepI:p7:eh-delta
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: steps eh-shell; delta_* = delta_1/2
SOURCE_QUANTIFIERS: as in the enclosing result
SOURCE_CONCLUSION: there is 0 < delta_2 <= delta_* = delta_1/2, depending only on K, such that for every w in U(delta_2) there is a real w' = (Re ell, Re g, L', G') with (L',G') in K and Euclidean distance of the position parts q(w), q(w') less than eps_0/2; hence q(w) in O
CONSTANT_SCOPE: delta_2 depends only on K
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p7:complex-domain, stepI:p7:eh-shell, bpI:p7:shift, bpI:p7:sec-complex#data, bpI:p8:x-topo, bpI:p7:orbit-maps
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p7:complex-domain | blueprint-I/parts/p7-delaunay.tex#stepI:p7:eh-delta@L415-L415 | Q holomorphic on U(delta_1), real on real points, periodic
EDGE: stepI:p7:eh-shell | blueprint-I/parts/p7-delaunay.tex#stepI:p7:eh-delta@L415-L415 | q' = q(w') has r_min <= ¦q'¦ <= rho_max
EDGE: bpI:p7:shift | blueprint-I/parts/p7-delaunay.tex#stepI:p7:eh-delta@L415-L415 | eps_0 and the set O
EDGE: bpI:p7:sec-complex#data | blueprint-I/parts/p7-delaunay.tex#stepI:p7:eh-delta@L415-L415 | U(delta), K
EDGE: bpI:p8:x-topo | blueprint-I/parts/p7-delaunay.tex#stepI:p7:eh-delta@L415-L415 | the closure of the bounded fundamental-domain tube is compact
EDGE: bpI:p7:orbit-maps | blueprint-I/parts/p7-delaunay.tex#stepI:p7:eh-delta@L415-L415 | Q and its position component q(w)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p7b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: SOURCE_GAP: uniform continuity of the position component of Q on the compact fundamental-domain closure is invoked but not proved or listed as an external. x-topo pays compactness only. The bound concerns position parts, as explicitly specified at L415; it does not assert a momentum bound.
```

### `stepI:p7:sh-div`

```text
NODE: stepI:p7:sh-div
KIND: step
TITLE: Division by $\mu$
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:sh-div@L386-L386
PROOF_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:sh-div@L386-L386
CONTRACT_ID: stepI:p7:sh-div
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: steps sh-pos, sh-bound
SOURCE_QUANTIFIERS: as in the enclosing result
SOURCE_CONCLUSION: f(q,mu) = -int_0^1 d_mu Psi(q,t mu) dt is holomorphic on O x D(0,mu_2), mu f = g_q, and |f| <= 6/(eps_0 sqrt(c_*)) (by continuity at mu = 0)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p7:shift-def, stepI:p7:sh-pos, stepI:p7:sh-bound, bpI:p7:x-param, bpI:p7:x-schwarz
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p7:shift-def | blueprint-I/parts/p7-delaunay.tex#stepI:p7:sh-div@L386-L386 | Psi
EDGE: stepI:p7:sh-pos | blueprint-I/parts/p7-delaunay.tex#stepI:p7:sh-div@L386-L386 | {q} x closed disc subset Xi
EDGE: stepI:p7:sh-bound | blueprint-I/parts/p7-delaunay.tex#stepI:p7:sh-div@L386-L386 | ¦g_q¦ <= 3 c_*^{-1/2}, g_q(0) = 0
EDGE: bpI:p7:x-param | blueprint-I/parts/p7-delaunay.tex#stepI:p7:sh-div@L386-L386 | holomorphy of the parameter integral
EDGE: bpI:p7:x-schwarz | blueprint-I/parts/p7-delaunay.tex#stepI:p7:sh-div@L386-L386 | Schwarz lemma bound
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p7b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: SOURCE_GAP: the fundamental theorem of calculus for t -> Psi(q,t mu) is used to obtain mu f = w - Psi. It is not proved in this blueprint and is not one of the listed track-I externals or existing imports used here. x-param pays holomorphy of the integral, not this identity. No new external or import is authorized.
```

### `stepI:p7:eh-hol`

```text
NODE: stepI:p7:eh-hol
KIND: step
TITLE: Holomorphy and bound
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:eh-hol@L418-L418
PROOF_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:eh-hol@L418-L418
CONTRACT_ID: stepI:p7:eh-hol
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: steps eh-delta; Lemma shift
SOURCE_QUANTIFIERS: as in the enclosing result
SOURCE_CONCLUSION: F_mu(w) = f(q(w),mu) holomorphic with |F| <= C_sh: (i); periodicity of q(.) and reality of f and Q give (ii); (iv): delta_2 > 0 and K subset K_{delta_2}
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepI:p7:eh-delta, bpI:p7:shift, bpI:p7:complex-domain, bpI:p7:orbit-maps, bpI:p7:sec-complex#data
ROUTES: -
ROUTE_FOR: -
EDGE: stepI:p7:eh-delta | blueprint-I/parts/p7-delaunay.tex#stepI:p7:eh-hol@L418-L418 | q(w) in O
EDGE: bpI:p7:shift | blueprint-I/parts/p7-delaunay.tex#stepI:p7:eh-hol@L418-L418 | holomorphy, bound C_sh and reality of f
EDGE: bpI:p7:complex-domain | blueprint-I/parts/p7-delaunay.tex#stepI:p7:eh-hol@L418-L418 | holomorphy and periodicity of Q on U(delta_1)
EDGE: bpI:p7:orbit-maps | blueprint-I/parts/p7-delaunay.tex#stepI:p7:eh-hol@L418-L418 | reality of Q on real points
EDGE: bpI:p7:sec-complex#data | blueprint-I/parts/p7-delaunay.tex#stepI:p7:eh-hol@L418-L418 | U(delta_2) and K subset K_delta2 are the section-defined sets
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p7b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### `stepI:p7:po-prop`

```text
NODE: stepI:p7:po-prop
KIND: step
TITLE: Properties
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:po-prop@L443-L443
PROOF_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:po-prop@L443-L443
CONTRACT_ID: stepI:p7:po-prop
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: step po-dom; Proposition exact-ham (i),(ii); Lemma conversion (b)
SOURCE_QUANTIFIERS: as in the enclosing result
SOURCE_CONCLUSION: (b) h~ holomorphic on B_{r_0}, Re I_1 > pi m_L, real at real I; (c) f~_mu holomorphic, 1-periodic in theta, real, bounded by |mu| C_F
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p6:conversion, bpI:p6:nondeg, stepI:p7:po-dom, bpI:p7:exact-ham, bpI:p6:conversion-map, bpI:p6:kep-ham
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p6:conversion | blueprint-I/parts/p7-delaunay.tex#stepI:p7:po-prop@L443-L443 | (b): h~ = h_{(2pi)^2, 1/(2pi)} holomorphic where I_1 != 0, real at real I
EDGE: stepI:p7:po-dom | blueprint-I/parts/p7-delaunay.tex#stepI:p7:po-prop@L443-L443 | S maps the domain into U(delta_2)
EDGE: bpI:p7:exact-ham | blueprint-I/parts/p7-delaunay.tex#stepI:p7:po-prop@L443-L443 | (i),(ii): bound, periodicity, reality of F
EDGE: bpI:p6:conversion-map | blueprint-I/parts/p7-delaunay.tex#stepI:p7:po-prop@L443-L443 | periodicity: theta -> theta + k becomes (ell,g) -> (ell,g) + 2 pi k
EDGE: bpI:p6:kep-ham | blueprint-I/parts/p7-delaunay.tex#stepI:p7:po-prop@L443-L443 | h~ = h_{(2pi)^2,1/(2pi)} is fixed by the Kepler Hamiltonian package
EDGE: bpI:p6:nondeg | blueprint-I/parts/p7-delaunay.tex#stepI:p7:po-prop@L443-L443 | the source explicitly cites this corollary's domain argument; the conditional-premise discharge is exposed in SOURCE_GAP below
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p7b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: SOURCE_GAP: L443 invokes the domain argument of bpI:p6:nondeg, whose stated hypotheses include B subset {I_1 > 0} and 0 < r_0 <= inf_B I_1/2. The source does not explicitly discharge those hypotheses for arbitrary B (including empty B). The cited dependency is retained conservatively as a use of its proof argument; it must not be read as a verified application of the full conditional corollary. po-dom separately gives nonvanishing on B_r0. The writer must distinguish this argument reuse from a theorem application; no missing premise is silently added here.
```

### `bpI:p7:nondeg`

```text
NODE: bpI:p7:nondeg
KIND: proposition
TITLE: Isoenergetic nondegeneracy of the Delaunay Hamiltonian
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#bpI:p7:nondeg@L465-L469
PROOF_SOURCE: blueprint-I/parts/p7-delaunay.tex#bpI:p7:nondeg@L470-L473
CONTRACT_ID: bpI:p7:nondeg
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the setting of Corollary period-one; real I in B_{r_0}
SOURCE_QUANTIFIERS: the data of period-one, then real I
SOURCE_CONCLUSION: det borderedHessian h~ I = 3/I_1^4 > 0 for every real I in B_{r_0}, indeed for every real I with I_1 > 0; in conventional variables B_{h_{1,1}}(L,G) = K_{1,1}(L) with det = 3/L^4; h~ satisfies the nondegeneracy hypothesis of I-HEAD on all real points of B_{r_0}, for every B subset 2 pi K
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p7:period-one, bpI:p0:bordered#borderedHessian, bpI:p0:keplerborder#keplerBorder, stepI:p7:nd-dom, stepI:p7:nd-det, bpI:p6:kep-ham, bpI:p7:sec-complex#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p7:period-one | blueprint-I/parts/p7-delaunay.tex#bpI:p7:nondeg@L466-L466 | the setting: h~, B_{r_0}
EDGE: bpI:p0:bordered#borderedHessian | blueprint-I/parts/p7-delaunay.tex#bpI:p7:nondeg@L466-L466 | borderedHessian
EDGE: bpI:p0:keplerborder#keplerBorder | blueprint-I/parts/p7-delaunay.tex#bpI:p7:nondeg@L466-L466 | K_{1,1}(L)
EDGE: stepI:p7:nd-dom | blueprint-I/parts/p7-delaunay.tex#bpI:p7:nondeg@L471-L471 | proof step
EDGE: stepI:p7:nd-det | blueprint-I/parts/p7-delaunay.tex#bpI:p7:nondeg@L472-L472 | proof step
EDGE: bpI:p6:kep-ham | blueprint-I/parts/p7-delaunay.tex#bpI:p7:nondeg@L466-L467 | h~ = h_{(2pi)^2,1/(2pi)} is fixed by the Kepler Hamiltonian package
EDGE: bpI:p7:sec-complex#data | blueprint-I/parts/p7-delaunay.tex#bpI:p7:nondeg@L466-L467 | the setting uses K or the common complex-domain data fixed in the section
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p7b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### `stepI:p7:nd-dom`

```text
NODE: stepI:p7:nd-dom
KIND: step
TITLE: Reality of the domain
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:nd-dom@L471-L471
PROOF_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:nd-dom@L471-L471
CONTRACT_ID: stepI:p7:nd-dom
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Corollary period-one (b); real I in B_{r_0}
SOURCE_QUANTIFIERS: as in the enclosing result
SOURCE_CONCLUSION: real I in B_{r_0} has I_1 > 0 (Re I_1/(2 pi) > m_L/2 > 0)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p7:period-one, bpI:p6:kep-ham, bpI:p7:sec-complex#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p7:period-one | blueprint-I/parts/p7-delaunay.tex#stepI:p7:nd-dom@L471-L471 | (b): Re I_1 > pi m_L on B_{r_0}
EDGE: bpI:p6:kep-ham | blueprint-I/parts/p7-delaunay.tex#stepI:p7:nd-dom@L471-L471 | h~ = h_{(2pi)^2,1/(2pi)} is fixed by the Kepler Hamiltonian package
EDGE: bpI:p7:sec-complex#data | blueprint-I/parts/p7-delaunay.tex#stepI:p7:nd-dom@L471-L471 | the setting uses K or the common complex-domain data fixed in the section
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p7b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### `stepI:p7:nd-det`

```text
NODE: stepI:p7:nd-det
KIND: step
TITLE: Determinant
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:nd-det@L472-L472
PROOF_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:nd-det@L472-L472
CONTRACT_ID: stepI:p7:nd-det
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: step nd-dom; kappa = Omega = 1
SOURCE_QUANTIFIERS: as in the enclosing result
SOURCE_CONCLUSION: det borderedHessian h~ I = 3/I_1^4 for real I with I_1 > 0 (Lemma kep-border and Lemma conversion (d)); the conventional statement is Lemma kep-border at kappa = Omega = 1
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p6:kep-border, bpI:p6:conversion, stepI:p7:nd-dom, bpI:p6:kep-ham
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p6:kep-border | blueprint-I/parts/p7-delaunay.tex#stepI:p7:nd-det@L472-L472 | determinant of the bordered Hessian of h_{1,1}
EDGE: bpI:p6:conversion | blueprint-I/parts/p7-delaunay.tex#stepI:p7:nd-det@L472-L472 | (d) conversion of the bordered Hessian determinant
EDGE: stepI:p7:nd-dom | blueprint-I/parts/p7-delaunay.tex#stepI:p7:nd-det@L472-L472 | I_1 > 0 on real I in B_{r_0}
EDGE: bpI:p6:kep-ham | blueprint-I/parts/p7-delaunay.tex#stepI:p7:nd-det@L472-L472 | h~ = h_{(2pi)^2,1/(2pi)} is fixed by the Kepler Hamiltonian package
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p7b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### `bpI:p7:transfer`

```text
NODE: bpI:p7:transfer
KIND: proposition
TITLE: Transfer of Delaunay solutions to the physical problem
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#bpI:p7:transfer@L448-L453
PROOF_SOURCE: blueprint-I/parts/p7-delaunay.tex#bpI:p7:transfer@L454-L460
CONTRACT_ID: bpI:p7:transfer
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the setting of Corollary period-one; mu in R with |mu| < mu_2; J subset R; z~ : R -> R^2 x R^2 with Sol(realHamiltonian h~ f~_mu, B, J, z~) (Definition hamsol)
SOURCE_QUANTIFIERS: the data of period-one, then mu, J, z~
SOURCE_CONCLUSION: z := Q o S o z~ satisfies RSol_mu(J,z); for t in J with z~(t) = (theta, I): rad(q(t)) = L^2(1 - e cos u) in [a(1-e), a(1+e)], a = L^2 = I_1^2/(2pi)^2, elements of z(t) are (L,G) = I/(2 pi), and H^R3_mu(z(t)) = realHamiltonian h~ f~_mu (z~(t))
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p7:period-one, bpI:p0:hamsol#IsHamiltonianSolutionOn, bpI:p0:restricted#IsRestrictedSolutionOn, bpI:p0:realham#realHamiltonian, bpI:p6:conversion-map, bpI:p7:orbit-maps, stepI:p7:tr-cf, stepI:p7:tr-open, stepI:p7:tr-chain, bpI:p6:kep-ham, bpI:p7:sec-complex#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p7:period-one | blueprint-I/parts/p7-delaunay.tex#bpI:p7:transfer@L449-L449 | setting of Corollary period-one
EDGE: bpI:p0:hamsol#IsHamiltonianSolutionOn | blueprint-I/parts/p7-delaunay.tex#bpI:p7:transfer@L449-L449 | Sol predicate
EDGE: bpI:p0:restricted#IsRestrictedSolutionOn | blueprint-I/parts/p7-delaunay.tex#bpI:p7:transfer@L449-L449 | RSol_mu
EDGE: bpI:p0:realham#realHamiltonian | blueprint-I/parts/p7-delaunay.tex#bpI:p7:transfer@L449-L449 | realHamiltonian
EDGE: bpI:p6:conversion-map | blueprint-I/parts/p7-delaunay.tex#bpI:p7:transfer@L449-L449 | S
EDGE: bpI:p7:orbit-maps | blueprint-I/parts/p7-delaunay.tex#bpI:p7:transfer@L449-L449 | Q
EDGE: stepI:p7:tr-cf | blueprint-I/parts/p7-delaunay.tex#bpI:p7:transfer@L455-L455 | proof step
EDGE: stepI:p7:tr-open | blueprint-I/parts/p7-delaunay.tex#bpI:p7:transfer@L457-L457 | proof step
EDGE: stepI:p7:tr-chain | blueprint-I/parts/p7-delaunay.tex#bpI:p7:transfer@L459-L459 | proof step
EDGE: bpI:p6:kep-ham | blueprint-I/parts/p7-delaunay.tex#bpI:p7:transfer@L449-L450 | the Hamiltonian is expressed using the converted Kepler h~
EDGE: bpI:p7:sec-complex#data | blueprint-I/parts/p7-delaunay.tex#bpI:p7:transfer@L449-L450 | the setting uses K or the common complex-domain data fixed in the section
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p7b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### `stepI:p7:tr-cf`

```text
NODE: stepI:p7:tr-cf
KIND: step
TITLE: Collision freedom and real-analyticity
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:tr-cf@L455-L455
PROOF_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:tr-cf@L455-L455
CONTRACT_ID: stepI:p7:tr-cf
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: t in J; z~(t)_2 in B
SOURCE_QUANTIFIERS: as in the enclosing result
SOURCE_CONCLUSION: S z~(t) is real with (L,G) in K, lies in U(delta_2); z(t) = Q(S z~(t)) is collision free, i.e. in W_mu
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p7:exact-ham, bpI:p7:sec-ham#data, bpI:p6:conversion-map, bpI:p7:sec-complex#data, bpI:p7:orbit-maps
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p7:exact-ham | blueprint-I/parts/p7-delaunay.tex#stepI:p7:tr-cf@L455-L455 | (iv) and (iii): U(delta_2) contains the real points over K, collision freedom
EDGE: bpI:p7:sec-ham#data | blueprint-I/parts/p7-delaunay.tex#stepI:p7:tr-cf@L455-L455 | W_mu
EDGE: bpI:p6:conversion-map | blueprint-I/parts/p7-delaunay.tex#stepI:p7:tr-cf@L455-L455 | S
EDGE: bpI:p7:sec-complex#data | blueprint-I/parts/p7-delaunay.tex#stepI:p7:tr-cf@L455-L455 | the setting uses K or the common complex-domain data fixed in the section
EDGE: bpI:p7:orbit-maps | blueprint-I/parts/p7-delaunay.tex#stepI:p7:tr-cf@L455-L455 | Q or its position component is used directly in this step
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p7b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### `stepI:p7:tr-open`

```text
NODE: stepI:p7:tr-open
KIND: step
TITLE: Agreement of Hamiltonians on an open set
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:tr-open@L457-L457
PROOF_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:tr-open@L457-L457
CONTRACT_ID: stepI:p7:tr-open
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: V = {(theta,I) in R^4 : exists J in B, |I - J| < r_0} open
SOURCE_QUANTIFIERS: as in the enclosing result
SOURCE_CONCLUSION: realHamiltonian h~ f~_mu = H^R3_mu o Q o S on V; both sides real-analytic, so real derivatives and Hamiltonian fields coincide at z~(t)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p7:period-one, bpI:p0:realham#realHamiltonian, bpI:p0:restricted#restrictedHamiltonian, bpI:p7:chart, bpI:p6:kep-ham, bpI:p6:conversion-map, bpI:p7:sec-complex#data, bpI:p7:orbit-maps
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p7:period-one | blueprint-I/parts/p7-delaunay.tex#stepI:p7:tr-open@L457-L457 | (d) exactness on B_{r_0}
EDGE: bpI:p0:realham#realHamiltonian | blueprint-I/parts/p7-delaunay.tex#stepI:p7:tr-open@L457-L457 | realHamiltonian
EDGE: bpI:p0:restricted#restrictedHamiltonian | blueprint-I/parts/p7-delaunay.tex#stepI:p7:tr-open@L457-L457 | H^R3_mu
EDGE: bpI:p7:chart | blueprint-I/parts/p7-delaunay.tex#stepI:p7:tr-open@L457-L457 | Q real-analytic
EDGE: bpI:p6:kep-ham | blueprint-I/parts/p7-delaunay.tex#stepI:p7:tr-open@L457-L457 | the Hamiltonian is expressed using the converted Kepler h~
EDGE: bpI:p6:conversion-map | blueprint-I/parts/p7-delaunay.tex#stepI:p7:tr-open@L457-L457 | S converts the curve or the Hamiltonian to conventional variables
EDGE: bpI:p7:sec-complex#data | blueprint-I/parts/p7-delaunay.tex#stepI:p7:tr-open@L457-L457 | the setting uses K or the common complex-domain data fixed in the section
EDGE: bpI:p7:orbit-maps | blueprint-I/parts/p7-delaunay.tex#stepI:p7:tr-open@L457-L457 | Q or its position component is used directly in this step
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p7b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### `stepI:p7:tr-chain`

```text
NODE: stepI:p7:tr-chain
KIND: step
TITLE: Chain rule
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:tr-chain@L459-L459
PROOF_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:tr-chain@L459-L459
CONTRACT_ID: stepI:p7:tr-chain
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: steps tr-cf, tr-open; Proposition symplectic; Lemma conversion (a); Lemma ham-eq
SOURCE_QUANTIFIERS: as in the enclosing result
SOURCE_CONCLUSION: z~'(t) = X_{realHamiltonian h~ f~_mu}(z~(t)) = X_{H o Q o S}(z~(t)); d/dt z = D(Q o S) z~' = X_{H^R3_mu}(z(t)) = V_mu(z(t)); the formulas for rad(q) and the energy
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepI:p7:tr-open, bpI:p0:hamsol#IsHamiltonianSolutionOn, bpI:p7:symplectic, bpI:p6:conversion, bpI:p7:ham-eq, bpI:p7:orbit-identities, bpI:p7:period-one, stepI:p7:tr-cf, bpI:p6:kep-ham, bpI:p6:conversion-map, bpI:p7:sec-complex#data, bpI:p7:orbit-maps
ROUTES: -
ROUTE_FOR: -
EDGE: stepI:p7:tr-open | blueprint-I/parts/p7-delaunay.tex#stepI:p7:tr-chain@L459-L459 | agreement of the Hamiltonians and fields
EDGE: bpI:p0:hamsol#IsHamiltonianSolutionOn | blueprint-I/parts/p7-delaunay.tex#stepI:p7:tr-chain@L459-L459 | Sol gives z~'(t) = X(z~(t))
EDGE: bpI:p7:symplectic | blueprint-I/parts/p7-delaunay.tex#stepI:p7:tr-chain@L459-L459 | D Q symplectic, chain rule for Q
EDGE: bpI:p6:conversion | blueprint-I/parts/p7-delaunay.tex#stepI:p7:tr-chain@L459-L459 | (a) symplectic S
EDGE: bpI:p7:ham-eq | blueprint-I/parts/p7-delaunay.tex#stepI:p7:tr-chain@L459-L459 | X_{H^R3_mu} = V_mu and RSol_mu
EDGE: bpI:p7:orbit-identities | blueprint-I/parts/p7-delaunay.tex#stepI:p7:tr-chain@L459-L459 | (a) rad(q)
EDGE: bpI:p7:period-one | blueprint-I/parts/p7-delaunay.tex#stepI:p7:tr-chain@L459-L459 | (d) energy
EDGE: stepI:p7:tr-cf | blueprint-I/parts/p7-delaunay.tex#stepI:p7:tr-chain@L459-L459 | z(t) in W_mu
EDGE: bpI:p6:kep-ham | blueprint-I/parts/p7-delaunay.tex#stepI:p7:tr-chain@L459-L459 | the Hamiltonian is expressed using the converted Kepler h~
EDGE: bpI:p6:conversion-map | blueprint-I/parts/p7-delaunay.tex#stepI:p7:tr-chain@L459-L459 | S converts the curve or the Hamiltonian to conventional variables
EDGE: bpI:p7:sec-complex#data | blueprint-I/parts/p7-delaunay.tex#stepI:p7:tr-chain@L459-L459 | the setting uses K or the common complex-domain data fixed in the section
EDGE: bpI:p7:orbit-maps | blueprint-I/parts/p7-delaunay.tex#stepI:p7:tr-chain@L459-L459 | Q or its position component is used directly in this step
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p7b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### `stepI:p7:eh-shell`

```text
NODE: stepI:p7:eh-shell
KIND: step
TITLE: The real shell
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:eh-shell@L413-L413
PROOF_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:eh-shell@L413-L413
CONTRACT_ID: stepI:p7:eh-shell
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: real w with (L',G') in K
SOURCE_QUANTIFIERS: as in the enclosing result
SOURCE_CONCLUSION: r = |q(w)|_2 lies in [L'^2(1-e'), L'^2(1+e')] subset [r_min, rho_max]
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p7:orbit-identities, bpI:p7:sec-complex#data, bpI:p7:orbit-maps
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p7:orbit-identities | blueprint-I/parts/p7-delaunay.tex#stepI:p7:eh-shell@L413-L413 | (a): L^2(1-e) <= r <= L^2(1+e)
EDGE: bpI:p7:sec-complex#data | blueprint-I/parts/p7-delaunay.tex#stepI:p7:eh-shell@L413-L413 | r_min and rho_max
EDGE: bpI:p7:orbit-maps | blueprint-I/parts/p7-delaunay.tex#stepI:p7:eh-shell@L413-L413 | Q or its position component is used directly in this step
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p7b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### `stepI:p7:eh-exact`

```text
NODE: stepI:p7:eh-exact
KIND: step
TITLE: Exactness
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:eh-exact@L420-L422
PROOF_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:eh-exact@L420-L422
CONTRACT_ID: stepI:p7:eh-exact
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: real w in U(delta_2), real |mu| < mu_2; Lemma h0; Lemma shift
SOURCE_QUANTIFIERS: as in the enclosing result
SOURCE_CONCLUSION: (L,G) in C_0, Q(w) collision free and H^R3_mu(Q(w)) = H^R3_0(q,p) + [w(q) - Psi(q,mu)] = -1/(2L^2) - G + mu f(q,mu)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p7:complex-domain, stepI:p7:eh-delta, bpI:p7:shift, bpI:p7:shift-def, bpI:p7:h0, bpI:p0:restricted#restrictedHamiltonian, bpI:p0:primaries#CollisionFree, bpI:p0:primaries#radius, bpI:p0:primaries#radiusSq, bpI:p7:orbit-maps
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p7:complex-domain | blueprint-I/parts/p7-delaunay.tex#stepI:p7:eh-exact@L420-L420 | (L,G) in C_0 for real w in U(delta_1)
EDGE: stepI:p7:eh-delta | blueprint-I/parts/p7-delaunay.tex#stepI:p7:eh-exact@L420-L420 | q(w) is a real point of O
EDGE: bpI:p7:shift | blueprint-I/parts/p7-delaunay.tex#stepI:p7:eh-exact@L420-L420 | (q,mu) in Xi with real positive radicands; mu f = w - Psi
EDGE: bpI:p7:shift-def | blueprint-I/parts/p7-delaunay.tex#stepI:p7:eh-exact@L420-L420 | Xi, Psi, rad(q - a_j) = sqrt(vartheta(...))
EDGE: bpI:p7:h0 | blueprint-I/parts/p7-delaunay.tex#stepI:p7:eh-exact@L422-L422 | H^R3_0 = ... - w(q) and H^K o Q = -1/(2L^2) - G
EDGE: bpI:p0:restricted#restrictedHamiltonian | blueprint-I/parts/p7-delaunay.tex#stepI:p7:eh-exact@L421-L421 | H^R3_mu formula
EDGE: bpI:p0:primaries#CollisionFree | blueprint-I/parts/p7-delaunay.tex#stepI:p7:eh-exact@L420-L420 | collision freedom
EDGE: bpI:p0:primaries#radius | blueprint-I/parts/p7-delaunay.tex#stepI:p7:eh-exact@L420-L420 | rad(q - a_j(mu))
EDGE: bpI:p0:primaries#radiusSq | blueprint-I/parts/p7-delaunay.tex#stepI:p7:eh-exact@L420-L420 | radiusSq
EDGE: bpI:p7:orbit-maps | blueprint-I/parts/p7-delaunay.tex#stepI:p7:eh-exact@L420-L422 | Q or its position component is used directly in this step
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p7b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### `stepI:p7:po-exact`

```text
NODE: stepI:p7:po-exact
KIND: step
TITLE: Exactness
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:po-exact@L445-L445
PROOF_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:po-exact@L445-L445
CONTRACT_ID: stepI:p7:po-exact
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Proposition exact-ham (iii); Lemma conversion (a),(b) with kappa = Omega = 1
SOURCE_QUANTIFIERS: as in the enclosing result
SOURCE_CONCLUSION: H^R3_mu(Q(S(theta,I))) = h~(I) + f~_mu = realHamiltonian h~ f~_mu; Q o S symplectic
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p7:exact-ham, bpI:p6:conversion, bpI:p6:kep-ham, bpI:p0:realham#realHamiltonian, stepI:p7:po-dom, bpI:p7:symplectic, bpI:p6:conversion-map, bpI:p7:orbit-maps
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p7:exact-ham | blueprint-I/parts/p7-delaunay.tex#stepI:p7:po-exact@L445-L445 | (iii) at w = S(theta,I)
EDGE: bpI:p6:conversion | blueprint-I/parts/p7-delaunay.tex#stepI:p7:po-exact@L445-L445 | (b) h_{1,1}(L,G) = h~(I); (a) symplectic S
EDGE: bpI:p6:kep-ham | blueprint-I/parts/p7-delaunay.tex#stepI:p7:po-exact@L445-L445 | h_{1,1}(L,G) = -1/(2L^2) - G
EDGE: bpI:p0:realham#realHamiltonian | blueprint-I/parts/p7-delaunay.tex#stepI:p7:po-exact@L445-L445 | realHamiltonian is the real part of the same real number
EDGE: stepI:p7:po-dom | blueprint-I/parts/p7-delaunay.tex#stepI:p7:po-exact@L445-L445 | S(theta,I) in U(delta_2)
EDGE: bpI:p7:symplectic | blueprint-I/parts/p7-delaunay.tex#stepI:p7:po-exact@L445-L445 | Q symplectic
EDGE: bpI:p6:conversion-map | blueprint-I/parts/p7-delaunay.tex#stepI:p7:po-exact@L445-L445 | S
EDGE: bpI:p7:orbit-maps | blueprint-I/parts/p7-delaunay.tex#stepI:p7:po-exact@L445-L445 | Q or its position component is used directly in this step
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p7b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### `bpI:p7:period-one`

```text
NODE: bpI:p7:period-one
KIND: corollary
TITLE: Period-one form: the data of I-HEAD
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#bpI:p7:period-one@L425-L439
PROOF_SOURCE: blueprint-I/parts/p7-delaunay.tex#bpI:p7:period-one@L440-L446
CONTRACT_ID: bpI:p7:period-one
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: K, delta_2, mu_2, C_F, F as in Proposition exact-ham; s_0 = delta_2/(2 pi), r_0 = 2 pi delta_2; B subset 2 pi K arbitrary; S the conversion; h~ = h_{(2pi)^2, 1/(2pi)}; real mu with |mu| < mu_2; f~_mu(theta,I) = mu F_mu(S(theta,I)) on T_{s_0} x B_{r_0}
SOURCE_QUANTIFIERS: K first (then delta_2, mu_2, C_F, s_0, r_0), then B, then mu, (theta, I)
SOURCE_CONCLUSION: (a) S(T_{s_0} x B_{r_0}) subset U(delta_2); (b) h~ holomorphic on B_{r_0} with Re I_1 > pi m_L > 0 there, real at real I; (c) f~_mu holomorphic on T_{s_0} x B_{r_0}, 1-periodic in theta, real at real theta and real I in B_{r_0} for real mu, |f~_mu| <= eps := |mu| C_F; (d) H^R3_mu(Q(S(theta,I))) = h~(I) + f~_mu(theta,I) = realHamiltonian h~ f~_mu (theta,I) for real theta and real I in B_{r_0}, with Q o S symplectic; (e) s_0, r_0, mu_2, C_F depend on K only and eps = C_F |mu|; for mu in [0,mu_2), the hypotheses on (h,f,eps) of I-HEAD other than nondegeneracy hold with the smallness parameter eps = mu C_F (the inequality eps < eps_0 is not asserted here); at mu = 0, eps = 0 and f~_0 = 0
CONSTANT_SCOPE: s_0, r_0, mu_2, C_F depend on K only
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p7:exact-ham, bpI:p6:conversion-map, bpI:p6:kep-ham, bpI:p0:realham#realHamiltonian, bpI:p0:domains#complexStrip, bpI:p0:domains#actionNbhd, bpI:p7:sec-complex#data, stepI:p7:po-dom, stepI:p7:po-prop, stepI:p7:po-exact
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p7:exact-ham | blueprint-I/parts/p7-delaunay.tex#bpI:p7:period-one@L426-L426 | delta_2, mu_2, C_F, F
EDGE: bpI:p6:conversion-map | blueprint-I/parts/p7-delaunay.tex#bpI:p7:period-one@L426-L426 | the conversion S
EDGE: bpI:p6:kep-ham | blueprint-I/parts/p7-delaunay.tex#bpI:p7:period-one@L426-L426 | h~ = h_{(2pi)^2,1/(2pi)}
EDGE: bpI:p0:realham#realHamiltonian | blueprint-I/parts/p7-delaunay.tex#bpI:p7:period-one@L433-L433 | frozen realHamiltonian
EDGE: bpI:p0:domains#complexStrip | blueprint-I/parts/p7-delaunay.tex#bpI:p7:period-one@L428-L428 | T_{s_0} is the frozen complex strip
EDGE: bpI:p0:domains#actionNbhd | blueprint-I/parts/p7-delaunay.tex#bpI:p7:period-one@L428-L428 | B_{r_0} is the frozen action neighbourhood
EDGE: bpI:p7:sec-complex#data | blueprint-I/parts/p7-delaunay.tex#bpI:p7:period-one@L426-L426 | K and 2 pi K
EDGE: stepI:p7:po-dom | blueprint-I/parts/p7-delaunay.tex#bpI:p7:period-one@L441-L441 | proof step
EDGE: stepI:p7:po-prop | blueprint-I/parts/p7-delaunay.tex#bpI:p7:period-one@L443-L443 | proof step
EDGE: stepI:p7:po-exact | blueprint-I/parts/p7-delaunay.tex#bpI:p7:period-one@L445-L445 | proof step
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p7b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```
