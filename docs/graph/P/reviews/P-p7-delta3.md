# P-p7 third delta topology review

Reviewer: `sol-delta-P-ah`. Marker: `delta-P-ah`.

**Verdict: FAIL — 3 nodes PASS, 3 nodes FAIL.** Scope is exactly the six remaining PROPOSED nodes; there are no PROPOSED coverage items. REVIEWED records are not reopened. The P-FIXED revision restores the lattice lemma and its four steps to this graph; their earlier exclusion is superseded.

Applied DELTA-BRIEF.md, REVIEW-BRIEF.md and current SPEC, including the convergence rule, P-FIXED revision and writer rulings. Checked the oscillator-action correction against P-p7-delta2.md and the five lattice rewrites against PFIXED-restored-review.md, then independently read their source and prerequisite statements. The previous FAILs are repaired, but three records retain genuine locator, quantifier or direct-definition-edge errors. No stylistic change is requested.

## Decisions

Spans prefixed P7 are in blueprint-P/parts/p7-kepler-poincare.tex; P1 is p1-hamiltonian-tools.tex. All recorded EDGE use-sites were re-read.

| ID | Verdict | Spans re-read | Assessment |
| --- | --- | --- | --- |
| bpP:p7:lattice | FAIL | P7:223–239; P1:46–48,95–105,119–120,127–138,149–153 | Original hypotheses restored correctly. Three EDGE locators point at administrative lines rather than the use. Clause (b)'s collision-of-images conclusion also needs an existential lattice shift, distinct from the arbitrary shift used for invariance. |
| stepP:p7:la-polar | PASS | P7:224–226,235; P7:190–203; P1:46–48,119–120 | The added product-chart edge supplies the proved 1-chart property for Psi^(n). Positivity R>0 and R<I give analytic polar coordinates and range in O_n, so composition is legitimate. No derived chart assertion is assumed. |
| stepP:p7:la-inv | FAIL | P7:224–226,236; P7:190–196 | Derived invariance premises have been removed correctly. The equal-image conclusion must produce some integer shift rather than the arbitrary k of the first identity. The directly used product-map definition also lacks its own edge. |
| stepP:p7:la-per | PASS | P7:224–226,228–230,237; P1:119–120,127–138 | Only original chart data and the explicit S_2pi map remain in the premises. Period-convert and steps (a),(b) supply the chart factor, invariance and injectivity modulo the lattice. The factor is 2pi and the converted lattice is period one. |
| stepP:p7:la-ham | FAIL | P7:224–226,231,238; P7:190–201; P1:46–48 | No decoupling conclusion remains as a hypothesis. The direct use of Psi^(n) and h still needs product-def; product-chart supplies their proved identities, not their direct definition edge. |
| bpP:p7:conv#data | PASS | P7:27–33; P0:72–76,91–95,404–408; P14b:29; I7:158–168,205–216 | Oscillator-action use now correctly points to P7:30. Physical length, positions-first form, cross product, quarter-turn and the Delaunay notation/form have matching direct inputs. |

## Findings and limited corrections

**P7-AH1 — locator errors in lattice.** The current product-chart and product-def edges both point to P7:223, only the lemma heading. The defined O_n and Psi^(n) are used at lines 224–226; the product-chart theorem supplies the outer chart in the composition argument at line 235. The chart-definition edge points to line 232, only the end of the enumeration; the pulled-back Hamiltonian is actually displayed at line 231. Change just these three locator fields on their EDGE lines, retaining the dependencies and rationales.

**P7-AH2 — missing existential shift.** P7:229 says `z'=z+iota'_k` **for some** integer k, and line 236 obtains a shift from product-chart(a). A preassigned k belongs only to the invariance identity. The current la-inv conclusion instead reuses that arbitrary k_phi after equal images, without an existential binder. For example, equal points and the invariance input k_phi=1 cannot force phi=phi+2pi. This is a statement-strength error. Put the produced shifts m_phi,m_psi under existential quantifiers; likewise make the parent lemma's modulo-lattice conclusion explicitly existential. The source hypotheses and all other claims are unchanged.

**P7-AH3 — missing direct product-definition uses.** In la-inv, the map Psi^(n) and its domain are used at line 236. In la-ham, the product map and h of product-def occur in the invoked pull-back identity at line 238 (displayed at line 231). SPEC requires a direct edge for uses of the product-def package. Both records currently reach that definition only through product-chart. Add the existing definition node directly; it supplies no extra premise and introduces no cycle.

## Replacements

Each complete block below is headed by its owning slice. Only the identified source-quantifier/conclusion fields, EDGE locators, or missing DEPS/EDGE entries change. Status, extractor, reviewer and all remaining fields are preserved verbatim for the next independent review.

### P-p7 — bpP:p7:lattice

```text
NODE: bpP:p7:lattice
KIND: lemma
TITLE: Lattice compatibility for Part~1
STATEMENT_SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:lattice@L223-L233
PROOF_SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:lattice@L234-L239
CONTRACT_ID: bpP:p7:lattice
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the physical product-chart data of Part 7 (n>=1, G,m0>0, positive m, kappa=G m0); Psi^(n) and O_n of product-def; Theta_n((phi,psi),(I,R))=((phi,sqrt(2R) sin psi),(I,sqrt(2R) cos psi)) on O_0={I_i>0,0<R_i<I_i}, Phi_n:=Psi^(n) o Theta_n; S_2pi denotes the linear position-scaling map used in (c)
SOURCE_QUANTIFIERS: n >= 1 and the fixed physical product-chart data; lattice invariance for every z in O_0 and k in Z^2n; injectivity modulo the lattice for every z,z prime in O_0 with equal images, then existence of a lattice shift m in Z^2n; (c),(d) on the stated chart domains
SOURCE_CONCLUSION: (a) Theta_n and Phi_n are 1-charts on O_0 and O_0 + iota prime_k = O_0 for iota prime_k = ((2 pi k, 0), 0); (b) Phi_n(z + iota prime_k) = Phi_n(z) and Phi_n(z prime) = Phi_n(z) implies z prime = z + iota prime_m for some m in Z^2n: (Q1) with sigma_k = 0 and (Q2) of bpP:p1:torus-transport in the radian convention; (c) Phi_n^(1) = Phi_n o S_2pi is a 2 pi-chart on S_2pi^{-1}(O_0) with (Q1), (Q2) for iota_k = (k, 0), so Corollary phys-pipeline applies to Phi_n and torus-transport (b) to Phi_n^(1); (d) H^{Phi_n} = H o Psi^(n) o Theta_n = h(I) + mu f^ o Theta_n, the unperturbed part independent of psi, R
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p7:la-polar, stepP:p7:la-inv, stepP:p7:la-per, stepP:p7:la-ham, bpP:p7:product-chart, bpP:p7:product-def, bpP:p1:typical, bpP:p1:torus-transport, bpP:p1:period-convert, bpP:p1:phys-pipeline, bpP:p1:chart
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p7:la-polar | blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:lattice@L235-L235 | proof step (a)
EDGE: stepP:p7:la-inv | blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:lattice@L236-L236 | proof step (b)
EDGE: stepP:p7:la-per | blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:lattice@L237-L237 | proof step (c)
EDGE: stepP:p7:la-ham | blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:lattice@L238-L238 | proof step (d)
EDGE: bpP:p7:product-chart | blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:lattice@L235-L235 | Psi^(n), O_n
EDGE: bpP:p7:product-def | blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:lattice@L224-L226 | the chart Psi^(n) and the set O_n
EDGE: bpP:p1:typical | blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:lattice@L226-L226 | Remark typical (1): the polar chart formula
EDGE: bpP:p1:torus-transport | blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:lattice@L229-L229 | (Q1)-(Q2) and torus transport (b)
EDGE: bpP:p1:period-convert | blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:lattice@L230-L230 | S_2pi and the period-one convention
EDGE: bpP:p1:phys-pipeline | blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:lattice@L230-L230 | Corollary phys-pipeline applies to Phi_n
EDGE: bpP:p1:chart | blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:lattice@L231-L231 | the pulled-back Hamiltonian H^Phi
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: writer-pfixed-revision+sol-review-P-w
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: restored by the P-FIXED revision (was EXCLUDED as P-FIXED-only, writer ruling 2026-10-28); consumer stepP:p11:tc-polar (Part 11 L90); source fields filled by sonnet-extract-pfixed
```

### P-p7 — stepP:p7:la-inv

```text
NODE: stepP:p7:la-inv
KIND: step
TITLE: (b) Invariance
STATEMENT_SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:la-inv@L236-L236
PROOF_SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:la-inv@L236-L236
CONTRACT_ID: stepP:p7:la-inv
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the original lattice setting: the physical product-chart data, Psi^(n), O_n, Theta_n and O_0 as explicitly defined in L223-L226; take z in O_0 and k=(k_phi,k_psi) in Z^2n; for the injectivity implication take z prime in O_0 with Phi_n(z prime)=Phi_n(z); periodicity and the product-chart invariance/injectivity conclusions are supplied by the computation and DEPS
SOURCE_QUANTIFIERS: for the shift identity, z in O_0 and k=(k_phi,k_psi) in Z^2n; for injectivity, z,z prime in O_0 with equal Phi_n images, then existence of m_phi,m_psi in Z^n
SOURCE_CONCLUSION: Theta_n(z + iota prime_k) = Theta_n(z) + ((2 pi k_phi, 0), 0); if Phi_n(z prime) = Phi_n(z) then for some m_phi in Z^n, Theta_n(z prime) = Theta_n(z) + ((2 pi m_phi, 0), 0), so phi prime = phi + 2 pi m_phi, I prime = I and, as R, R prime > 0, R prime = R and psi prime - psi = 2 pi m_psi for some m_psi in Z^n
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p7:product-chart, bpP:p7:product-def
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p7:product-chart | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:la-inv@L236-L236 | invariance of Psi^(n) under 2 pi Z^n-shifts of lambda and injectivity modulo them (a)
EDGE: bpP:p7:product-def | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:la-inv@L236-L236 | defines Psi^(n) and O_n used by the invariance and equal-image argument
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: writer-pfixed-revision+sol-review-P-w
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: restored by the P-FIXED revision (was EXCLUDED as P-FIXED-only, writer ruling 2026-10-28); consumer stepP:p11:tc-polar (Part 11 L90); source fields filled by sonnet-extract-pfixed
```

### P-p7 — stepP:p7:la-ham

```text
NODE: stepP:p7:la-ham
KIND: step
TITLE: (d)
STATEMENT_SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:la-ham@L238-L238
PROOF_SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:la-ham@L238-L238
CONTRACT_ID: stepP:p7:la-ham
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the original lattice setting: the physical product-chart data, Psi^(n), Theta_n, Phi_n and O_0; H is one of the two physical Hamiltonians of product-chart, with its coupling (written mu in L232); the pull-back uses c=1; the decoupling and perturbation identities are supplied by product-chart, not assumed as additional premises
SOURCE_QUANTIFIERS: z in O_0
SOURCE_CONCLUSION: H^{Phi_n} = H o Psi^(n) o Theta_n = h(I) + mu f^ o Theta_n with I = Lambda; unperturbed part independent of psi, R
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p7:product-chart, bpP:p1:chart, bpP:p7:product-def
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p7:product-chart | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:la-ham@L238-L238 | (b),(c): H o Psi^(n) = h(Lambda) + mu f^
EDGE: bpP:p1:chart | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:la-ham@L238-L238 | 1-chart (c = 1): the pulled-back Hamiltonian is H o Phi_n
EDGE: bpP:p7:product-def | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:la-ham@L238-L238 | defines the product map Psi^(n) and integrable Hamiltonian h used in the pulled-back expression
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: writer-pfixed-revision+sol-review-P-w
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: restored by the P-FIXED revision (was EXCLUDED as P-FIXED-only, writer ruling 2026-10-28); consumer stepP:p11:tc-polar (Part 11 L90); source fields filled by sonnet-extract-pfixed
```

## Coverage, validation and limits

PROPOSED coverage items: **0**. No coverage disposition is changed or recertified outside the assigned delta. No route node is introduced. The repaired original hypotheses in lattice/la-inv/la-per/la-ham do not assume the theorems they consume. The polar composition uses the positive-radial domain and its inclusion in O_n; period conversion preserves the stated chart factors and position lattice. Physical masses/strength and positions-first blocks remain as stated.

Checks:

- `inp_depgraph_slice_check.py docs/graph/P/packets P-p7 --structural`: exit 0; `57 nodes, 326 edges, 88 coverage items, 0 problems, 0 TODO records (not counted: --structural)`.
- All 25 CORPUS.sha256 entries and all nine IMPORTS.sha256 entries pass. This includes the newly scoped P-FIXED source files and cross-owned files.
- Exact selection: six PROPOSED nodes and zero PROPOSED coverage items, with one decision row per selected record.
- Replacement checks: complete fields; exactly one EDGE per DEPS/ROUTES target; targets exist; graph remains acyclic; only failing fields change; report whitespace and fenced blocks pass.
- Both packet files retain their snapshot SHA-256 values after this review.

Packet snapshot SHA-256:

- `docs/graph/P/packets/P-p7.nodes.md`: `1f0ef071dcfba8f7163964ab54d7a07b09df2780bf9d902838d85c7f337adab3`.
- `docs/graph/P/packets/P-p7.coverage.md`: `1dd29b712d6136fb8e6934b436cc2801b2a81d3276dd8719c9a00923a03d5ec4`.

Suspected new blueprint defects or review-introduced deviations: **none**. The missing existential binders and misplaced locators are graph transcription defects; the source supplies the correct statements and calculations.

Only this report is written for P-p7; the separately requested P-xown report is also written. No packet, SPEC, manifest or Lean file is edited. No state-changing git, Lean, repository-wide Lean linter, build or axiom-printing command is run under the source-only brief. This is topology review, not mathematical or Lean proof closure.
