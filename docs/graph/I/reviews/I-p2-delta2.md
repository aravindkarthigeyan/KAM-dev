# I-p2 delta topology review

Reviewer: sol-delta-I-d. Marker: delta-I-d.

**Verdict: FAIL.** 9 of 10 PROPOSED nodes PASS; 1 FAIL. All 0 PROPOSED coverage items PASS.

This is a source/topology delta review, not a proof-status audit. I read DELTA-BRIEF in full, REVIEW-BRIEF, the current SPEC including its final ownership ruling, and the project rules, plan and decisions. I am independent of sol-review-I-p5p8 and sol-delta-I-b; my previous task reviewed I-p67a/I-p7b. Every proposed record below was compared with its raw statement/proof and every EDGE use locator. Already REVIEWED records are context, not re-certified here. Coverage and node verdicts are separate: a correct mapping can PASS while its target node needs repair.

The three ownership changes were checked against I-nown and the raw N statements: bpN:p3:gen-invariant L352–356, gen-barrier L358–363 and newton-reduction L434–449 are now ordinary track-I nodes. Their consumer DEPS and EDGE targets use the unprefixed IDs. Remaining prose such as “N:gen-invariant” describes the source track, not an import edge. No stale N:bpN:p3:{gen-invariant,gen-barrier,newton-reduction} consumer edge is accepted. This checks the assigned consumers; it does not certify all I-nown or imports records.

The current corpus pin checks return nine OK lines, and the imports pin checks return seven OK lines (both exit 0). The earlier K p1 drift is resolved by the recorded re-pin/remap. Cited K and N source contracts were read at their current locators. K matrix/averages have their own matrix/integrability premises; the Part-2 standing bridge is used for actual K geometry applications. The owned restricted reduction supplies C^infty on the collision-free open set and works for arbitrary time sets, not only all of R. No Lean command, build, axiom query, packet edit, SPEC edit, or state-changing git command was run. Only the three requested reports are written.


Packet node snapshot SHA256: `3c1c1dc0565d321a47f80fb21ab8fb021ce3ecbf9c20b44dc3c6ba193dffb75d`.

The ten replacement nodes were checked against the failures in I-p2-delta.md. The nine prior corrections PASS: inherited beta/d quantification, the actual bridge-use locators, the geometry/integral inputs, the explicit scoped SOURCE_GAP, and the distinction C_DeltaT^K versus C_DeltaScriptT. The induction-transition record has one additional source-contract error, corrected below. The SOURCE_GAP is a topology PASS, not payment of the new-frequency premise or frozen I-G1 closure. No PROPOSED coverage item remains in I-p2. No alternative-route EDGE occurs among these ten nodes.

## PROPOSED nodes

| ID | Verdict | Spans re-read | Reason / check |
|---|---|---|---|
| bpI:p2:newton-error | PASS | blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:newton-error@L168-L181; blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:newton-error@L182-L193 | beta is inherited and d is defined, not requantified; the bridge EDGE now locates the actual frame use at L184. |
| stepI:p2:ne-energy | PASS | blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:ne-energy@L191-L192 | geometry-noA5 pays the Omega_K estimate, ext-integral pays averaging, and segment inclusion plus D^2H bound pay Taylor. |
| bpI:p2:torsion | PASS | blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:torsion@L205-L213; blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:torsion@L214-L225 | d remains constructed; the full extended-torsion smallness and conclusion use C_DeltaScriptT, distinct from the old K block constant. |
| stepI:p2:to-frame | PASS | blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:to-frame@L215-L216 | The actual new-frequency Diophantine premise gap is now exposed in a scoped SOURCE_GAP note; no new Diophantine hypothesis is invented. |
| stepI:p2:to-avg | PASS | blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:to-avg@L221-L222 | The old block C_DeltaT^K and total extended C_DeltaScriptT are distinguished in the bound and scope. |
| stepI:p2:to-inv | PASS | blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:to-inv@L223-L224 | Neumann uses the extended difference bound and the old B5 inverse bound, in max-row-sum norm. |
| stepI:p2:st-small | PASS | blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:st-small@L243-L245 | Smallness and its constants EDGE now consistently use C_DeltaScriptT. |
| bpI:p2:iteration | PASS | blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:iteration@L268-L283; blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:iteration@L284-L292 | Conclusion (v) retains the extended inverse-increment constant and the separate nu/2 and mu/2 margins. |
| stepI:p2:it-sums | PASS | blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:it-sums@L285-L287 | The extended inverse sum and the constant EDGE now agree with L287. |
| stepI:p2:it-step | FAIL | blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:it-step@L290-L291 | The C_DeltaScriptT correction is sound, but the conclusion wrongly claims (vi) at j+1. The transition constructs K_{j+1} and proves (i)-(v) at j+1 and the increment (vi) at j, as L291 explicitly states. |

## PROPOSED coverage items

| ID | Verdict | Spans re-read | Reason / check |
|---|---|---|---|

No PROPOSED coverage records in this slice.

All other coverage items PASS within the assigned proposed inventory. Previously reviewed records are outside this delta verdict.

## Suspected source defects and limits

The existing SOURCE_GAP at Part 2 L216 remains: the quoted application of extended-basic at the corrected frequency lacks its standing Diophantine premise, while L206 says no Diophantine property of the corrected frequency is used. The replacement exposes this honestly, and no missing mathematics is supplied here. The index error found in it-step is in the graph record; the raw source L291 states the correct induction transition. No new paper-level erratum is asserted.

## Validation receipts

The review applier run with `--dry-run` for this slice reports 1 replaced, 0 added, 0 coverage items, and 0 unresolved FAILs. An independent Python inventory check confirms exactly 10 proposed-node rows and 0 proposed-coverage rows, a complete replacement for every node FAIL, a one-to-one DEPS/EDGE match, valid source line bounds, and an unchanged node-packet snapshot. `git diff --check` exits 0. Unrelated concurrent workspace changes were left untouched.

## Complete replacement fragments

Replacement blocks remain PROPOSED and require a different reviewer after application. Unchanged fields are retained for mechanical application.

```text
NODE: stepI:p2:it-step
KIND: step
TITLE: Base and induction
STATEMENT_SOURCE: blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:it-step@L290-L291
PROOF_SOURCE: blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:it-step@L290-L291
CONTRACT_ID: stepI:p2:it-step
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: The stated local context and premises of bpI:p2:iteration, with its definitions and inherited packages. For the induction transition assume (i)-(v) at j, as explicitly stated at L291. Bounds and conclusions of cited prerequisite nodes are derived in this proof, not additional hypotheses.
SOURCE_QUANTIFIERS: All data quantified in bpI:p2:iteration, in the same order; the quantities constructed by earlier proof steps remain derived. For each j>=0.
SOURCE_CONCLUSION: (i)-(v) at j+1 and (vi) at j: Proposition step applies with (r_j,delta_j,mu-D_j,eps_j,s_j) and yields K_{j+1} := Kbar_j, s_{j+1} := sbar_j; 1<s_{j+1}<sigma_omega and nu(s_{j+1}) >= nu-D_{j+1}; B1-B7 for K_{j+1}; (iii)-(v) with the summed bounds
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p2:step, stepI:p2:it-sums, stepI:p2:it-stepsmall, bpI:p2:ray, bpI:p2:admissible, bpI:p2:schedule, bpI:p2:constants, bpI:p2:standing
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p2:step | blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:it-step@L291-L291 | Proposition step applied at each j
EDGE: stepI:p2:it-sums | blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:it-step@L291-L291 | summed bounds D_{j+1} <= nu/2, mu/4
EDGE: stepI:p2:it-stepsmall | blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:it-step@L291-L291 | smallness hypothesis of the step
EDGE: bpI:p2:ray | blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:it-step@L291-L291 | (b): 1<sbar_j<sigma_omega, nu(sbar_j) >= nu(s_j)-d_j
EDGE: bpI:p2:admissible | blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:it-step@L291-L291 | admissibility at j and j+1; B3-B5
EDGE: bpI:p2:schedule | blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:it-step@L291-L291 | r_{j+1} = r_j-4 delta_j, d_j
EDGE: bpI:p2:constants | blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:it-step@L291-L291 | c_*, C_B, C_DeltaScriptT
EDGE: bpI:p2:standing | blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:it-step@L291-L291 | standing data
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p2+sol-delta-I-b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```
