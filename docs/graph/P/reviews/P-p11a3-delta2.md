# P-p11a3 second delta topology review

Reviewer: sol-delta-P-bb. Marker: delta-P-bb.

**Verdict: PASS — all 4 scoped nodes PASS.** Eligible PROPOSED coverage items: 0.

Read DELTA-BRIEF.md, REVIEW-BRIEF.md, current SPEC including the P-FIXED revision and writer rulings, and P-p11a3-delta.md (sol-delta-P-ac). Reviewed only the four remaining PROPOSED records; previously REVIEWED records were used only as prerequisites. The prior geom-recursion/gr-ind deletions are already applied.

Re-read each statement/proof/EDGE span and its enclosing source context in blueprint-P/parts/p11a3-iteration-selection.tex. Checked the referenced definitions and statements in Files 11a-2/11a-3, including canonical-step, cutoff, the schedule and constants, sel-data, smooth-cutoff, retained-chain data, S5 and the budget proof bounds. No frozen anchor belongs to this slice.

## Record verdicts

All table spans are in blueprint-P/parts/p11a3-iteration-selection.tex. Every EDGE use site was reread.

| Record | Verdict | Spans re-read | Reason |
|---|---|---|---|
| stepP:p11a:sb-solve | PASS | L108-L108 | The added schedule-consts edge supplies A_0 at L108. The tangent-log estimate uses positive X,y, the stated cutoff lower bound and s<=1; the conclusion agrees. |
| bpP:p11a:adm-choice | PASS | L206-L218, L219-L223 | The added sel-data, schedule-consts and smooth-cutoff edges supply the explicitly used source data and constants. (A1)-(A7) retain their actual guards; pointer/cycle edges remain absent. |
| stepP:p11a:il-c2 | PASS | L300-L300 | The obsolete affine-flow prerequisite is removed. O1 and S5 supply the two C2 bounds on the restricted B_{nu+1}; the cutoff upper-bound use is direct. No flow conclusion is used here. |
| stepP:p11a:ab-lam | PASS | L393-L393 | The added sel-data edge supplies C_1>=1 in branch (1). The parameter minimum, prior bounds and rho=1/2 cases supply the three lower bounds and the stated exponent. |

No replacement blocks are needed. No coverage item is reopened.

## Source observations

The prior observation at Part 11a-3 L300 is retained: the words asserting A_1>0 is required by affine-flow are stale, since the current supplier allows zero. This is not a prerequisite of the repaired C2 record. No new suspected blueprint or pinned-paper defect is asserted; no mathematics is supplied.

## Validation

- Baseline structural checker: 72 nodes, 297 edges, 124 coverage items, 0 problems, 0 TODO records (not counted: --structural).
- Exact scope: 4 node rows, 0 item rows, no replacements or deletions. Checked dependency/EDGE pairing, prerequisite IDs, locator bounds, source pins, seven-root reachability and unchanged packet hashes.
- Only this report and the companion P-p11a45-delta2.md are written; no packet, blueprint, SPEC, Lean or manifest edit, no Lean command and no state-changing git command.

Packet snapshot SHA-256:

- P-p11a3.nodes.md: `4a93be10c31c7cddf634770a804bc104f61c9cb4d63f950dfdb4704427241daf`.
- P-p11a3.coverage.md: `1bd062800cc993dff21d110be011971dbf33cc359c28d72d091117efc0d63cc3`.
