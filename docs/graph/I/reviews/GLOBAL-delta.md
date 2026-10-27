# Global-review replacements: delta topology review

Reviewer: `sol-delta-I-global`. Marker: `delta-I-global`.

**Verdict: PASS for all 13 assigned records. The G05 SPEC revision also PASSes.** This is acceptance of accurate source modelling, including explicit gaps and pending ownership. It is not unconditional mathematical closure, owning-graph retention certification, or a new whole-graph/global acceptance verdict.

Read DELTA-BRIEF.md, GLOBAL-review.md findings G01–G06 and Appendices A/B, the applicable REVIEW-BRIEF/SPEC rules and the raw source spans below. This reviewer is distinct from the replacement author `sol-global-I`. Only the 13 requested PROPOSED records are reviewed; other records are prerequisite context. The current blocks match the global review's replacements field-for-field apart from EXTRACTOR attribution; the complete EDGE lists also match.

| ID | Verdict | Spans re-read | Reason |
|---|---|---|---|
| stepI:p1:geo-red | PASS | I p1 L509–533; K p2 L306–317, L382–398, L441–463, L549–580 | G01: the NOTE accurately diagnoses the represented conjunctive use of K geometry steps under inherited full admissibility, including A5. The local no-A5 setting does not supply A5; the common-data bridge does not add it. The displayed local calculation is acknowledged as a possible separate route, not silently substituted for the retained imported contracts. |
| stepI:p1:eb-holo | PASS | I p1 L30–46, L94–128; K p2 L382–406, L306–317; K p1 L227–236, L404–407 | G02: the NOTE correctly distinguishes the current fb-holo contract (A2–A4, including uniform bounds and a positive ball margin) from the local pointwise inclusion/invertibility assumptions. It flags the represented application without claiming holomorphy is false or inserting extra hypotheses. A direct regularity derivation remains possible but is not substituted for the imported contract. |
| stepI:p1:rd-consequence | PASS | I p1 L468–503; K p1 L148–153, L177–181; K p2 L122–139, L441–463 | G03: the NOTE correctly restricts the gap to the sufficient-condition branch norm(E_sym)<1. The imported Neumann lemma requires norm(A^-1) norm(Delta)<=1/2. Setting A=I does not discharge that condition. The source threshold and the residual identities/conditional equivalence under det(P)!=0 are preserved. |
| bpI:p2:step | PASS | I p2 L36–112, L132–150, L168–181, L205–250 | G04: conclusion (e) and the constants EDGE now use C_DeltaScriptT, exactly the extended-torsion constant in L78/L238, rather than the old C_DeltaT. All remaining hypotheses, quantifier order, domains, bounds and eight direct dependencies agree with the source. |
| N:bpN:p3:gen-continuation-periodic | PASS | N p3 L15–24, L251–258, L297–299 | G06: compact-action confinement, periodic C1 field on the open cylinder, maximality and both endpoint conclusions are preserved. The NOTE now requires owning-graph retention to be checked after assembly; no global-graph ownership is asserted from packets. |
| N:bpN:p3:gen-maximal | PASS | N p3 L15–24, L251–258 | G06: existence, endpoint ranges, uniqueness and agreement with all interval solutions are transcribed accurately; ownership is explicitly pending. |
| N:bpN:p3:gen-sol | PASS | N p3 L15–24, L88–99 | G06: domain membership and the two-sided derivative at every time in the arbitrary set J are retained. It is a source definition, not a frozen anchor. Ownership is explicitly pending. |
| N:bpN:p3:gen-uniqueness | PASS | N p3 L15–24, L217–224 | G06: arbitrary interval types, common time/value and C1 regularity on open W are retained, with no confinement premise. Ownership is explicitly pending. |
| N:bpN:p3:ham-energy | PASS | N p3 L388–393 | G06: only pointwise differentiability along the solution and interval J are assumed. The energy constancy conclusion and pending ownership accurately match the source. |
| N:bpN:p3:ham-periodic | PASS | N p3 L402–411 | G06: open translation-invariant W, Hamiltonian periodicity and the translated-solution conclusion agree with the source. The source wording of the surplus energy-composition clause is retained; its domain issue is already identified in GLOBAL-review.md. Pending ownership is accurate. |
| N:bpN:p3:ham-reduction | PASS | N p3 L416–427 | G06: open U/W, cylinder inclusion and C2 regularity are retained; the frozen-predicate equivalences apply for arbitrary J and the field is C1 on W_U. Ownership is explicitly pending. |
| N:bpN:p3:gen-exit | PASS | N p3 L328–341 | G06: both exit alternatives, the first-exit time/boundary/supremum conclusions and backward counterpart match the source. Ownership is explicitly pending. |
| N:bpN:p3:gen-symmetry | PASS | N p3 L15–24, L101–110 | G06: time shift, reversal and conditional spatial translation are correct. C1 regularity is required only for the additional implication that -F is C1 when F is, not as a new premise for the solution transformations. Ownership is explicitly pending. |

I sources above are under `blueprint-I/parts/`, K sources under `blueprint/parts/`, and N sources under `blueprint-N/parts/`. Full filenames are those in the records' locators. Every statement/proof and EDGE use locator of the four consumer nodes was checked; the nine imported statement spans were checked directly.

## G01–G04: diagnosis versus proof repair

The three SOURCE_GAP notes begin with the required prefix, preserve the written local statements and retain the stronger imported contracts. They expose unpaid applications in the represented graph. They do not assert that the target mathematical facts are false, assume ordinary torsion invertibility, infer uniform bounds from pointwise regularity, or change the source's radius-one criterion to a half-radius criterion. In particular, a plausible direct proof using fewer premises is not certification that the existing stronger import application is valid. The bridge supplies common analytic data and object identifications; it does not manufacture A5 or uniform strip bounds.

The local geometry inputs, holomorphic inverse/derivative tools, frame identities, matrix estimates and residual expansion have their existing direct edges. The conservative gap diagnosis intentionally leaves the disputed stronger applications visible, as GLOBAL-review.md proposes. No import hypothesis was weakened in accepting these diagnoses. G01–G03 are resolved as modelling omissions, with their mathematical premise-discharge obligations still open.

For G04, C_DeltaScriptT denotes C_{Delta mathsf T}=C_{Delta T}+8n^2 m^4+1+C_Y. Thus the corrected inverse-increment bound is the written larger bound 2 m^2 C_DeltaScriptT d/delta^2. The correction does not claim the old ordinary-torsion constant suffices.

## G05: Track-P definition imports

The SPEC paragraph headed **Track-P definition imports**, L149–153, explicitly authorizes exactly `P:bpP:p0:fixedsol#IsFixedSolution` and `P:bpP:p0:newton#IsNewtonSolution`. It requires import-leaf fields, pending P ownership, and a check when P's assembled graph exists; it authorizes no other P import. This resolves the authorization defect identified by G05. The existing two P definitions feed precisely the two named I-owned bookkeeping nodes, `bpN:p3:newton-reduction` and `stepN:p3:nr-pair`, as the revision states. The P Part 0 source remains pinned.

This policy verdict does not certify the eventual P owning closure. Also, the current assembled I graph's EXTERNAL_POLICY header still contains the pre-revision K/N wording. The writer must propagate the new SPEC boundary and pending-ownership convention during reassembly. That generated-header follow-up is outside these 13 packet records; this report neither edits nor certifies the assembled graph/header, dashboard or global acceptance metadata.

## G06: pending ownership

All nine N nodes remain import leaves: KIND external, LEAN_STATUS EXTERNAL, PROOF_SOURCE -, DEPS -, and empty frozen-identity fields. Each NOTE explicitly says pending N graph, states that retention is not certified, and requires checking the eventual assembled N root closure (or resolving I ownership if excluded). Both `docs/graph/N/DEPGRAPH.md` and `docs/graph/P/DEPGRAPH.md` are still absent. Presence in an N packet is not treated as owning-graph publication.

The source-only import checker reports 59 present/referenced imports, zero missing and zero unreferenced, with OWNER-PENDING for the nine N and two P imports. These pending results are expected and are not converted into ownership PASS by this review. The ham-periodic source's surplus unqualified composition equality remains the already reported source issue in GLOBAL-review.md; this delta does not silently restrict the imported contract or claim to repair that source wording.

## Scope and checks

No coverage disposition is changed or re-certified. No new source defect, external input, route or frozen premise is introduced. All 13 records PASS; no replacement fragment is necessary.

Input node-packet SHA256 values:

- `I-p1.nodes.md`: `fc9b08f70cd62cd7fc189f9abe485bee2ea14b3105943f51a20166a3e0e28e52`.
- `I-p2.nodes.md`: `2bae5ebc1da0fbfd280e798abe17cb33ca0379c39e8b5c6dcec8dd742e2a9277`.
- `I-imports.nodes.md`: `1d13540bfc9f6a7879a7cb2ba7c1d4bcc34ab9d74fa3d4587c3ab051beb6deac`.

Pin checks: all 9 CORPUS files and all 7 IMPORTS files match. The four consumers' 31 DEPS/EDGE pairs resolve and match one-to-one; all nine import-leaf schemas pass. Validation compares the full assigned inventory with the 13 table rows and verifies unchanged packet hashes. Review-applier dry runs are recorded below. No Lean invocation, build, packet/SPEC/source edit or state-changing git command was used. Only this report was written.

Dry-run receipts: I-p1 — 3 PASS nodes; I-p2 — 1 PASS node; I-imports — 9 PASS nodes. Each reports `0 replaced, 0 added, 0 coverage items, 0 unresolved FAILs`. Independent inventory, full replacement-text comparison (excluding EXTRACTOR attribution), unchanged-packet hashes, locator bounds and report whitespace checks PASS.
