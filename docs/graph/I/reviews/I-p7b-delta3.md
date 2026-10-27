# I-p7b delta3 topology review

Reviewer: `sol-delta-I-g`. Marker: `delta-I-g`.

Verdict: **FAIL** for the 14 records still marked `TOPOLOGY_STATUS: PROPOSED`. There are **0** records still marked `COVERAGE_STATUS: PROPOSED`.

Independent third-pass review against AGENTS.md, PLAN, DECISIONS, SPEC, DELTA-BRIEF and REVIEW-BRIEF. The earlier findings and replacements in `I-p7b-delta.md` (reviewer `sol-delta-I-c`) were checked against the pinned source. Previously reviewed records are context only. Wording differences alone are not failures.

The table spans are the raw statement/proof spans re-read, including every EDGE locator of the reviewed record. Additional enclosing and prerequisite statements read: Part 7 L158–168, L181–259, L279–286 and L323–473; Part 6 L58–107 and L112–162; Part 0 L65–72, L122–154; Part 8 L28–31; K Part 1 L82–86.

| ID | Verdict | Spans re-read | Reason |
|---|---|---|---|
| stepI:p7:h0-formula | PASS | blueprint-I/parts/p7-delaunay.tex#stepI:p7:h0-formula@L285-L285 | The two source domains are separate, as stated; orbit-maps now supplies Q and its action data, while orbit-identities gives energy and angular momentum. |
| stepI:p7:cd-uc | PASS | blueprint-I/parts/p7-delaunay.tex#stepI:p7:cd-uc@L345-L345 | The replacement restores the full radius range, ratio inequality and witness order. The Heine-Cantor input-policy gap is explicitly exposed; x-topo is used only for compactness. |
| stepI:p7:sh-div | PASS | blueprint-I/parts/p7-delaunay.tex#stepI:p7:sh-div@L386-L386 | The restored source data do not assume earlier estimates. ext-integral directly supplies FTC along t -> Psi(q,t mu); x-param and x-schwarz have their premises supplied by the shift steps. |
| stepI:p7:eh-delta | PASS | blueprint-I/parts/p7-delaunay.tex#stepI:p7:eh-delta@L415-L416 | The order K, shift constants, delta_2, then w and w_prime matches the construction. The position-only bound and the exposed uniform-continuity gap are accurate. |
| stepI:p7:eh-hol | PASS | blueprint-I/parts/p7-delaunay.tex#stepI:p7:eh-hol@L418-L418 | The selected radius is local construction data; eh-delta supplies the carrier, shift supplies the bound/reality, and the added x-hol edge supplies composition. |
| stepI:p7:eh-exact | PASS | blueprint-I/parts/p7-delaunay.tex#stepI:p7:eh-exact@L420-L422 | The real-point and real-mu premises match L420; section data and branch/shift inputs discharge collision freedom and the exact Hamiltonian identity. |
| stepI:p7:po-prop | FAIL | blueprint-I/parts/p7-delaunay.tex#stepI:p7:po-prop@L443-L443 | Missing direct bpI:p7:x-hol edge: L443 explicitly proves holomorphy by composing F_mu with the linear S and multiplying by mu. exact-ham supplies holomorphy of F_mu, not the closure operation; po-dom supplies its domain. Add the permitted closure input at this consumer. |
| stepI:p7:po-exact | PASS | blueprint-I/parts/p7-delaunay.tex#stepI:p7:po-exact@L445-L445 | All data are the period-one setting; exact-ham(iii), po-dom and conversion(b) give equality, and symplecticity uses both Q and S directly. |
| stepI:p7:tr-cf | PASS | blueprint-I/parts/p7-delaunay.tex#stepI:p7:tr-cf@L455-L455 | The added Sol-definition edge supplies action membership in B; exact-ham(iv),(iii) then gives the stated collision freedom for arbitrary J. |
| stepI:p7:tr-open | PASS | blueprint-I/parts/p7-delaunay.tex#stepI:p7:tr-open@L457-L457 | V is a defined open neighbourhood, not an assumed agreement. period-one(d) gives equality on the entire real action neighbourhood before derivatives are compared. |
| stepI:p7:tr-chain | PASS | blueprint-I/parts/p7-delaunay.tex#stepI:p7:tr-chain@L459-L459 | Sol supplies differentiability at each t in J; the listed Q/S symplectic and Hamiltonian-field inputs give transfer. The radius and energy outputs have their direct edges. |
| bpI:p7:nondeg | PASS | blueprint-I/parts/p7-delaunay.tex#bpI:p7:nondeg@L465-L469; blueprint-I/parts/p7-delaunay.tex#bpI:p7:nondeg@L470-L473 | The global positive-action formula and its B_r0 specialization are both retained, along with the conventional matrix equality; I-HEAD is a hypothesis-check pointer, not a dependency. |
| stepI:p7:nd-dom | PASS | blueprint-I/parts/p7-delaunay.tex#stepI:p7:nd-dom@L471-L471 | period-one(b) and the section minimum m_L supply positivity; removal of the unused Kepler-Hamiltonian edge is correct. |
| stepI:p7:nd-det | PASS | blueprint-I/parts/p7-delaunay.tex#stepI:p7:nd-det@L472-L472 | The conventional constants kappa=Omega=1 are distinguished from the converted Hamiltonian constants. Both determinant assertions and the domain specialization agree with the source. |

No proposed coverage records remain; no verdict is reopened on reviewed coverage.

## Complete replacement

Only `DEPS` and the new `EDGE` line change; all existing fields and EDGE lines are preserved verbatim. The prior correction concerning Part 6 remains accepted: L443 reuses its domain argument, and po-dom already supplies the nonvanishing needed for holomorphy. No infimum-radius premise is added.

```text
NODE: stepI:p7:po-prop
KIND: step
TITLE: Properties
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:po-prop@L443-L443
PROOF_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:po-prop@L443-L443
CONTRACT_ID: stepI:p7:po-prop
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: K,delta_2,mu_2,C_F,F are as in exact-ham; s_0=delta_2/(2 pi), r_0=2 pi delta_2; B is an arbitrary subset of 2 pi K; S(theta,I)=(2 pi theta,I/(2 pi)); h_tilde=h_{(2 pi)^2,1/(2 pi)}; real |mu|<mu_2 and f_tilde_mu=mu F_mu o S on the analytic domain
SOURCE_QUANTIFIERS: For fixed K and common analytic constants, every B subset 2 pi K and every real mu with |mu|<mu_2; all (theta,I) in the associated complex domain, with reality at real pairs
SOURCE_CONCLUSION: (b) h~ holomorphic on B_{r_0}, Re I_1 > pi m_L, real at real I; (c) f~_mu holomorphic, 1-periodic in theta, real, bounded by |mu| C_F
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p6:conversion, stepI:p7:po-dom, bpI:p7:exact-ham, bpI:p6:conversion-map, bpI:p6:kep-ham, bpI:p7:sec-complex#data, bpI:p6:nondeg, bpI:p7:x-hol
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p6:conversion | blueprint-I/parts/p7-delaunay.tex#stepI:p7:po-prop@L443-L443 | (b): h~ = h_{(2pi)^2, 1/(2pi)} holomorphic where I_1 != 0, real at real I
EDGE: stepI:p7:po-dom | blueprint-I/parts/p7-delaunay.tex#stepI:p7:po-prop@L443-L443 | S maps the domain into U(delta_2)
EDGE: bpI:p7:exact-ham | blueprint-I/parts/p7-delaunay.tex#stepI:p7:po-prop@L443-L443 | (i),(ii): bound, periodicity, reality of F
EDGE: bpI:p6:conversion-map | blueprint-I/parts/p7-delaunay.tex#stepI:p7:po-prop@L443-L443 | periodicity: theta -> theta + k becomes (ell,g) -> (ell,g) + 2 pi k
EDGE: bpI:p6:kep-ham | blueprint-I/parts/p7-delaunay.tex#stepI:p7:po-prop@L443-L443 | h~ = h_{(2pi)^2,1/(2pi)} is fixed by the Kepler Hamiltonian package
EDGE: bpI:p7:sec-complex#data | blueprint-I/parts/p7-delaunay.tex#stepI:p7:po-prop@L443-L443 | m_L is the section-defined positive minimum used in Re I_1>pi m_L
EDGE: bpI:p6:nondeg | blueprint-I/parts/p7-delaunay.tex#stepI:p7:po-prop@L443-L443 | the explicitly cited domain proof argument is reused with nonvanishing already supplied by po-dom; this is not application of the full conditional corollary
EDGE: bpI:p7:x-hol | blueprint-I/parts/p7-delaunay.tex#stepI:p7:po-prop@L443-L443 | composition of the holomorphic F_mu with linear S, and multiplication by the fixed scalar mu
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p7b+sol-delta-I-c
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: L443 recalls the domain proof argument of Part 6; L441 already supplied Re(I_1/(2 pi))>m_L/2 and nonvanishing on B_{r_0} directly from complex-domain. Together with conversion(b), this proves holomorphy and reality. The source-explicit nondeg edge is retained as reuse of that proof argument, not an application of the full corollary with its infimum-radius premises. For empty B the domain claims are vacuous. No SOURCE_GAP is established here.
```

## Scope, uncertainties and checks

PASS records resolve their prior FAILs. The generic writer quantifier fill and alternative-route EDGE rationale named in DELTA-BRIEF do not occur in the proposed records. No new route or source premise is introduced.

No new suspected pinned-source erratum, frozen-statement defect or mathematical deviation was found in this scope. The earlier clarification remains: Part 7 L363 says "choose epsilon_0>0", whereas L374 says the constants "depend only on (r_min,rho_max)"; the admissible choice must be fixed from those radii for uniform use. The existing Heine-Cantor SOURCE_GAP notes at L345/L415 remain exposed; they do not make accurate topology records fail. No pinned-paper text was independently audited.

Checks: both `sha256sum -c docs/graph/I/CORPUS.sha256` and `sha256sum -c docs/graph/I/IMPORTS.sha256` returned exit 0 with every file OK. Review-table completeness, locator bounds, replacement-field preservation and review-applier dry run are checked before handoff. No Lean command, source lint, build or axiom query is run: the specific review brief prohibits Lean and inspection of implementation/proof status. There are no Lean modules or main Lean results in this deliverable. No state-changing git command is run; only this report is written.

Input packet SHA-256:

- `I-p7b.nodes.md`: `c3ca7d029dd1ee6b06e9d17108f301f09a9e6afb456c4985bb7ba5bee153cd7a`.
- `I-p7b.coverage.md`: `33bd5c79a453225cbab8c89a74bcffd5b4853af897bfccf60ef43bd7081858cb`.

Validation output:

- `python3 scripts/depgraph_apply_review.py docs/graph/I/packets I-p7b docs/graph/I/reviews/I-p7b-delta3.md sol-delta-I-g --dry-run`: `I-p7b: 1 replaced, 0 added, 0 coverage items, 0 unresolved FAILs, 13 PASS nodes`.
- Independent inventory/hash/locator/minimal-replacement check: `I-p7b: exact proposed-record inventory, snapshot hashes, locator bounds and minimal replacement checks PASS`.
- `git diff --check`: exit 0, no output. The new report was also checked directly for trailing whitespace. Concurrent changes outside the two owned reports were left untouched.

READY delta-I-g
