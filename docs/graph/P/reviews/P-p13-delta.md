# P-p13 delta topology review

Reviewer: `sol-delta-P-af`. Marker: `delta-P-af`. Verdict: **FAIL**.

HEAD at review: `dccdffcad206acd9d4fd0c239263d0a427e2563f`. Source topology only; no source-proof or Lean proof-completion certification.

Reviewed exactly the live PROPOSED set: **27 nodes** and **53 coverage items**. **26 nodes PASS, 1 node FAIL; all 53 coverage items PASS**. Previously REVIEWED records were consulted only as suppliers and were not reopened.

## Evidence and verification of the rewrites

Read DELTA-BRIEF and applied REVIEW-BRIEF with the current SPEC, including the P-FIXED revision and writer rulings. Compared the proposed blocks with the failures and replacements in `P-p13-review.md` (`sol-review-P-u`). Consulted `PFIXED-restored-review.md` (`sol-review-P-w`): it approves the restored P-p0 root and P-p6 fixed assembly used here; it contains no replacement owned by this slice. The delta reviewer is distinct from those reviewers and the extractor.

Re-read the Part 13 source at every proposed statement, proof and EDGE locator (L13-L166), plus its proposed coverage spans through L203. Supplier checks included Part 12 geometry D1-D5, cylinder-domain/chart/transport/measure replays and constant table; Part 11b Birkhoff form, lift and torsion; Part 8 model identification and secular packages; Part 7 product chart/domain; Part 6 tube/physical assembly; and the relevant Part 0 predicates/P-G statement. Used the frozen statement of `fixedSunPlanetaryKAM` and named definition surfaces only, with manifest identity `planetary.fixedSunPlanetaryKAM.v1`, ABI `a710d06469f0efa43a0eede7aa23e7e13216737ac0895ff11757e256903b2eec`. No implementation/provider or proof-status evidence was used.

- **R1/R2, packages and fixed-Sun input/output:** resolved. P-p12 `data` is now the D1-D5 geometry-only node, so reusing it does not import the moving-Sun perturbation or its delivered P-G constants. P-p13 `data` supplies D1-D6 with P_fix and P_0=C_0. The new `data#choices` obtains its fixed-Sun P-G witnesses through n2-pg after pg-hypotheses, then chooses r and eps_0. The consumer edges to that node are direct. No new conclusion-shaped premise is introduced.
- **R3, n=2 closure:** graph edges are resolved, but one statement field is not. The current quantifiers node has n=2-only hypotheses, quantifiers and locators L163-L164; its SOURCE_CONCLUSION still appends the general-n sentence. That sentence belongs to L165 and the independent Part 11 route. Remove just that appended sentence. Do not restore the wrapper edge.
- **R4, wrapper application:** resolved. ng-wrap invokes wrapper and identifies S1-S2; ng-phys applies fixkol-assembly. The prior premature ng-wrap -> fixkol-assembly edge is absent.
- **R5, exact scope:** resolved for the other records. The n>=1 model identity, n>=2 R-nondegeneracy interface and n=2 planar torsion are distinguished. H2 has w in C(V,r_0). d,D depend on a alone; zeta_* also on eta; eps_0 depends on the fixed physical data. The dependent-type n=2 substitution adds no mathematical premise.
- **R6, locators:** resolved. transport data is located at its L112 use; fx-split is consumed by fx-2/fx-n at L159/L160.
- **Replay and cases:** the local Part 12 step replays retain the fixed-Sun Hamiltonian identity and actual chart/predicate suppliers. They do not apply the full moving-Sun conclusions or substitute the full-position-lattice Part 1 theorem. The root uses the n=2 and n>=3 cases conjunctively, as required.

The proposed dependency closure of `bpP:p13:n2` contains **no Part 11 or Part 11a node** (795 reachable packet nodes at this snapshot). No cycle passes through a P-p13 node. This confirms the intended independence at the source-graph level; it is not a proof-completion result.

## Proposed node verdicts

Spans are in `blueprint-P/parts/p13-fixed-assembly.tex`. Statement/proof spans and the associated consumer EDGE sites were checked.

| ID | Verdict | Spans re-read | Reason |
|---|---|---|---|
| bpP:p13:fixed-hamiltonian-form | PASS | L51-L61 / L62-L66 | Prior finding resolved; source scope, direct dependencies, conditional premises and locators match. |
| stepP:p13:fh-chart | PASS | L63-L63 | Prior finding resolved; source scope, direct dependencies, conditional premises and locators match. |
| stepP:p13:fh-id | PASS | L64-L64 | Prior finding resolved; source scope, direct dependencies, conditional premises and locators match. |
| stepP:p13:fh-bnf | PASS | L65-L65 | Prior finding resolved; source scope, direct dependencies, conditional premises and locators match. |
| bpP:p13:data | PASS | L72-L88 | Reuses only unchanged D1-D5 geometry and defines the fixed-Sun D6 input; no moving-Sun P or delivered constant is imported. |
| bpP:p13:chart | PASS | L90-L93 / L94-L97 | Prior finding resolved; source scope, direct dependencies, conditional premises and locators match. |
| stepP:p13:ch-same | PASS | L95-L95 | Prior finding resolved; source scope, direct dependencies, conditional premises and locators match. |
| stepP:p13:ch-ham | PASS | L96-L96 | Prior finding resolved; source scope, direct dependencies, conditional premises and locators match. |
| stepP:p13:pg-h2 | PASS | L105-L105 | Prior finding resolved; source scope, direct dependencies, conditional premises and locators match. |
| stepP:p13:pg-h56 | PASS | L108-L108 | Prior finding resolved; source scope, direct dependencies, conditional premises and locators match. |
| bpP:p13:transport | PASS | L111-L113 / L114-L117 | Prior finding resolved; source scope, direct dependencies, conditional premises and locators match. |
| stepP:p13:tr-torus | PASS | L115-L115 | The named computations are replayed with the fixed Hamiltonian identity and direct chart, predicate, cell and measure inputs. |
| stepP:p13:tr-meas | PASS | L116-L116 | The named computations are replayed with the fixed Hamiltonian identity and direct chart, predicate, cell and measure inputs. |
| stepP:p13:n2-const | PASS | L125-L125 | Prior finding resolved; source scope, direct dependencies, conditional premises and locators match. |
| stepP:p13:n2-mu | PASS | L127-L127 | Prior finding resolved; source scope, direct dependencies, conditional premises and locators match. |
| stepP:p13:n2-S | PASS | L128-L128 | Prior finding resolved; source scope, direct dependencies, conditional premises and locators match. |
| stepP:p13:n2-tori | PASS | L129-L129 | Prior finding resolved; source scope, direct dependencies, conditional premises and locators match. |
| stepP:p13:n2-phys | PASS | L130-L130 | Prior finding resolved; source scope, direct dependencies, conditional premises and locators match. |
| bpP:p13:n-general | PASS | L135-L140 / L141-L145 | Wrapper premises and physical assembly uses match; axis-only d,D and the pointwise choice of frequency are preserved. |
| stepP:p13:ng-const | PASS | L142-L142 | Wrapper premises and physical assembly uses match; axis-only d,D and the pointwise choice of frequency are preserved. |
| stepP:p13:ng-wrap | PASS | L143-L143 | Wrapper premises and physical assembly uses match; axis-only d,D and the pointwise choice of frequency are preserved. |
| stepP:p13:ng-phys | PASS | L144-L144 | Wrapper premises and physical assembly uses match; axis-only d,D and the pointwise choice of frequency are preserved. |
| bpP:p13:fixed | PASS | L153-L156 / L157-L161 | Required dimensional case, exact frozen quantifier order and consumer locators are preserved. |
| stepP:p13:fx-2 | PASS | L159-L159 | Required dimensional case, exact frozen quantifier order and consumer locators are preserved. |
| stepP:p13:fx-n | PASS | L160-L160 | Required dimensional case, exact frozen quantifier order and consumer locators are preserved. |
| bpP:p13:quantifiers | FAIL | L163-L164 / L164-L164 | Incomplete R3 projection: SOURCE_CONCLUSION still includes General n from L165, outside this n=2-only record and its dependencies. |
| bpP:p13:data#choices | PASS | L84-L85 / L125-L127 | Fixed-Sun P-G witnesses follow hypothesis verification; radius/coupling choices are subsequent, epsilon-independent and acyclic. |

## Proposed coverage verdicts

Each live PROPOSED coverage item is listed separately. A correct mapping to a node remains PASS when that node needs its source-conclusion field corrected.

| ID | Verdict | Spans re-read | Reason |
|---|---|---|---|
| bpP:p13:binders | PASS | L15-L33 | Valid administrative, heading, provenance or forward-pointer exclusion; no mathematical prerequisite is lost. |
| bpP:p13:totality | PASS | L35-L45 | Valid administrative, heading, provenance or forward-pointer exclusion; no mathematical prerequisite is lost. |
| bpP:p13:fixed-hamiltonian-form | PASS | L51-L61 | Correct source-to-node mapping. |
| stepP:p13:fh-chart | PASS | L63-L63 | Correct source-to-node mapping. |
| stepP:p13:fh-id | PASS | L64-L64 | Correct source-to-node mapping. |
| stepP:p13:fh-bnf | PASS | L65-L65 | Correct source-to-node mapping. |
| bpP:p13:data | PASS | L72-L88 | Explicitly maps input data and delivered choices to their separate nodes. |
| bpP:p13:chart | PASS | L90-L93 | Correct source-to-node mapping. |
| stepP:p13:ch-same | PASS | L95-L95 | Correct source-to-node mapping. |
| stepP:p13:ch-ham | PASS | L96-L96 | Correct source-to-node mapping. |
| stepP:p13:pg-h2 | PASS | L105-L105 | Correct source-to-node mapping. |
| stepP:p13:pg-h56 | PASS | L108-L108 | Correct source-to-node mapping. |
| bpP:p13:transport | PASS | L111-L113 | Correct source-to-node mapping. |
| stepP:p13:tr-torus | PASS | L115-L115 | Correct source-to-node mapping. |
| stepP:p13:tr-meas | PASS | L116-L116 | Correct source-to-node mapping. |
| stepP:p13:n2-const | PASS | L125-L125 | Correct source-to-node mapping. |
| stepP:p13:n2-mu | PASS | L127-L127 | Correct source-to-node mapping. |
| stepP:p13:n2-S | PASS | L128-L128 | Correct source-to-node mapping. |
| stepP:p13:n2-tori | PASS | L129-L129 | Correct source-to-node mapping. |
| stepP:p13:n2-phys | PASS | L130-L130 | Correct source-to-node mapping. |
| bpP:p13:n-general | PASS | L135-L140 | Correct source-to-node mapping. |
| stepP:p13:ng-const | PASS | L142-L142 | Correct source-to-node mapping. |
| stepP:p13:ng-wrap | PASS | L143-L143 | Correct source-to-node mapping. |
| stepP:p13:ng-phys | PASS | L144-L144 | Correct source-to-node mapping. |
| bpP:p13:consumed | PASS | L147-L149 | Valid administrative, heading, provenance or forward-pointer exclusion; no mathematical prerequisite is lost. |
| bpP:p13:fixed | PASS | L153-L156 | Correct source-to-node mapping. |
| stepP:p13:fx-2 | PASS | L159-L159 | Correct source-to-node mapping. |
| stepP:p13:fx-n | PASS | L160-L160 | Correct source-to-node mapping. |
| bpP:p13:quantifiers | PASS | L163-L164 | Correct n=2 L164 mapping; the general-n audit is outside the scope of this record. Its retained conclusion is corrected below. |
| heading:bpP:p13 | PASS | L1-L1 | Valid administrative, heading, provenance or forward-pointer exclusion; no mathematical prerequisite is lost. |
| heading:bpP:p13:sec-binders | PASS | L11-L11 | Valid administrative, heading, provenance or forward-pointer exclusion; no mathematical prerequisite is lost. |
| heading:bpP:p13:sec-form | PASS | L47-L47 | Valid administrative, heading, provenance or forward-pointer exclusion; no mathematical prerequisite is lost. |
| heading:bpP:p13:sec-n2 | PASS | L68-L68 | Valid administrative, heading, provenance or forward-pointer exclusion; no mathematical prerequisite is lost. |
| heading:bpP:p13:sec-ngen | PASS | L133-L133 | Valid administrative, heading, provenance or forward-pointer exclusion; no mathematical prerequisite is lost. |
| heading:bpP:p13:sec-main | PASS | L151-L151 | Valid administrative, heading, provenance or forward-pointer exclusion; no mathematical prerequisite is lost. |
| heading:bpP:p13:notes | PASS | L168-L168 | Valid administrative, heading, provenance or forward-pointer exclusion; no mathematical prerequisite is lost. |
| p13:sourcegap-L139 | PASS | L139-L139 | Correctly represents the general-n dependency through wrapper, without an independent Part 11a premise here. |
| p13:source-L60 | PASS | L60-L60 | Valid administrative, heading, provenance or forward-pointer exclusion; no mathematical prerequisite is lost. |
| p13:source-L122 | PASS | L122-L122 | Valid administrative, heading, provenance or forward-pointer exclusion; no mathematical prerequisite is lost. |
| p13:source-L138 | PASS | L138-L138 | Valid administrative, heading, provenance or forward-pointer exclusion; no mathematical prerequisite is lost. |
| p13:prose-L4-L9 | PASS | L4-L9 | Valid administrative, heading, provenance or forward-pointer exclusion; no mathematical prerequisite is lost. |
| p13:prose-L13-L13 | PASS | L13-L13 | Correct source-to-node mapping. |
| p13:prose-L49-L49 | PASS | L49-L49 | Correct source-to-node mapping. |
| p13:prose-L70-L70 | PASS | L70-L70 | Explicitly maps input data and delivered choices to their separate nodes. |
| p13:prose-L170-L186 | PASS | L170-L186 | Valid administrative, heading, provenance or forward-pointer exclusion; no mathematical prerequisite is lost. |
| p13:prose-L188-L188 | PASS | L188-L188 | Valid administrative, heading, provenance or forward-pointer exclusion; no mathematical prerequisite is lost. |
| p13:prose-L190-L190 | PASS | L190-L190 | Valid administrative, heading, provenance or forward-pointer exclusion; no mathematical prerequisite is lost. |
| p13:prose-L192-L192 | PASS | L192-L192 | Valid administrative, heading, provenance or forward-pointer exclusion; no mathematical prerequisite is lost. |
| p13:prose-L194-L194 | PASS | L194-L194 | Valid administrative, heading, provenance or forward-pointer exclusion; no mathematical prerequisite is lost. |
| p13:prose-L196-L196 | PASS | L196-L196 | Valid administrative, heading, provenance or forward-pointer exclusion; no mathematical prerequisite is lost. |
| p13:prose-L198-L198 | PASS | L198-L198 | Correct source-to-node mapping. |
| p13:prose-L200-L200 | PASS | L200-L200 | Valid administrative, heading, provenance or forward-pointer exclusion; no mathematical prerequisite is lost. |
| p13:prose-L202-L203 | PASS | L202-L203 | Valid administrative, heading, provenance or forward-pointer exclusion; no mathematical prerequisite is lost. |

all other coverage items PASS

The two supplemental ITEM blocks proposed by the prior reviewer (`p13:choices-L84-L85` and `p13:quantifiers-general-L165-L166`) are not in the live packet. This is not a further mathematical disposition failure: the existing data/prose items already explicitly map D7-D8 to data#choices, and the quantifiers coverage reason already excludes the unconsumed general-n audit. Separate supplemental inventory entries may make that bookkeeping more explicit, but this delta does not fail accurate dispositions for that presentation choice.

## P-p13 — replacement

### P-p13 — bpP:p13:quantifiers

Change **SOURCE_CONCLUSION only**. The record already projects to L163-L164 and n=2, so remove the general-n suffix; all metadata, dependencies, EDGE lines, locators, hypotheses, quantifiers and constant scope remain verbatim.

```text
NODE: bpP:p13:quantifiers
KIND: claim
TITLE: Order of the constants against the frozen quantifiers
STATEMENT_SOURCE: blueprint-P/parts/p13-fixed-assembly.tex#bpP:p13:quantifiers@L163-L164
PROOF_SOURCE: blueprint-P/parts/p13-fixed-assembly.tex#bpP:p13:quantifiers@L164-L164
CONTRACT_ID: bpP:p13:quantifiers
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: n=2; the table of bpP:p12:quantifiers and D1-D6 of bpP:p13:data, with D7-D8 supplied by bpP:p13:data#choices
SOURCE_QUANTIFIERS: n = 2; fixed physical data first, then fixed-Sun constants, then eps, then S
SOURCE_CONCLUSION: n = 2: r_G, C_G, c_G depend on the data D6 (including P_fix), r and eps_0 as in D8, d, D on a alone, eps_0 on (G, m0, m, a, eta) through delta, the patch and P-G; only after (eps_0, d, D) does eps enter, selecting S_cyl then S = Psi_tot(S_cyl); the Kepler part, chart, patch and T do not depend on eps
CONSTANT_SCOPE: as stated
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p12:quantifiers, bpP:p13:data, bpP:p13:fixed-hamiltonian-form, bpP:p13:data#choices
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p12:quantifiers | blueprint-P/parts/p13-fixed-assembly.tex#bpP:p13:quantifiers@L164-L164 | the table of Remark quantifiers applies with changes
EDGE: bpP:p13:data | blueprint-P/parts/p13-fixed-assembly.tex#bpP:p13:quantifiers@L164-L164 | D6, D8 constants
EDGE: bpP:p13:fixed-hamiltonian-form | blueprint-P/parts/p13-fixed-assembly.tex#bpP:p13:quantifiers@L164-L164 | part (a): Kepler part, chart, patch, T independent of eps
EDGE: bpP:p13:data#choices | blueprint-P/parts/p13-fixed-assembly.tex#bpP:p13:quantifiers@L164-L164 | the fixed-Sun r_G,C_G,c_G and subsequent r,eps_0, chosen after verification of the D6 input
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p13+sol-review-P-u
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: remark: its justification is inline (confirm, or exclude if not a mathematical claim)
```

## Source issues and limits

No new blueprint defect or pinned-paper erratum is alleged. The previous review already identified stale workflow text at L7/L196/L200 and the n=1 versus planar-torsion scope ambiguity; the proposed fields now delimit the actual interfaces without adding hypotheses to the frozen n>=2 theorem. The general-n sentence at L165 remains valid source text; the failure is retaining it inside the n=2-only projected graph record.

## Validation

Read-only structural checker: `P-p13: 35 nodes, 213 edges, 61 coverage items, 0 problems, 0 TODO records (not counted: --structural)`. Checked one EDGE per DEPS/ROUTES entry, current target existence, proposed-record verdict coverage, the acyclic choices construction and the absence of Part 11/11a from the n=2 closure. The replacement changes precisely one field; no packet or source was edited. No Lean or state-changing git command was run.

Snapshot SHA-256:

- `blueprint-P/parts/p13-fixed-assembly.tex`: `8b208fe0799dec36bf3ff95b51a08bda6d2ca705491e045fe7d3c150838bb9e5`
- `docs/graph/P/packets/P-p13.nodes.md`: `1477d373f3c583039eccd6ddfcc47ddf9f53559501b6647e1a6a10ce459b49fe`
- `docs/graph/P/packets/P-p13.coverage.md`: `d87041cbdaece21c656deb5f75cafc353e09174ff0f3f2b39d06a2feab57391c`
- `docs/graph/P/reviews/P-p13-review.md`: `be4c6ec5e7cc92a7f19a9c0bf24caabc73899a466016467293d79863e89a5b6f`
- `docs/graph/P/SPEC.md`: `46c1cf323866edc519123794aae8b00a0c479619e3041fe9dec3d1de777b53bf`

READY delta-P-af
