# P-p14a1 delta topology review 2

Reviewer: **sol-delta-P-ag**. Marker: `delta-P-ag`. Date: 2026-10-28.

**Verdict: PASS for all 11 assigned PROPOSED coverage items.** There are zero PROPOSED nodes in this slice. No replacement block is required.

Read DELTA-BRIEF.md and REVIEW-BRIEF.md in full, and SPEC including the P-FIXED revision and writer rulings. Applied the build-proof-dependency-graph source-only review discipline. Re-read Part 14a L1–156 in full, its relevant Part-0/6 definitions and suppliers, the current packet, the original review by sol-review-P-n and the first delta by sol-delta-P-r. This reviewer is neither extractor nor author of those reviews. The original review accepted all coverage items; the first delta expressly left the unrewritten pending coverage outside its scope. This review closes only the eleven records still PROPOSED, not the already REVIEWED nodes or other slices.

P-FIXED is a root in the current SPEC. None of these eleven exclusions relies on the superseded P-FIXED deferral. PFIXED-restored-review.md concerns restored records in other slices; none of this assignment has that provenance.

## Coverage verdicts

Every source locator below is in `blueprint-P/parts/p14a-amd-expsafe.tex`. Adjacent named results and the actual consuming steps were read where a coverage rationale refers to them.

| ID | Verdict | Source spans re-read | Reason |
|---|---|---|---|
| bpP:p14:amd-uses | PASS | blueprint-P/parts/p14a-amd-expsafe.tex#bpP:p14:amd-uses@L153-L155; context L1–156 | Administrative summary of the proved AMD argument; no subsequent reference consumes a separate result from this remark. |
| heading:bpP:p14 | PASS | blueprint-P/parts/p14a-amd-expsafe.tex#bpP:p14@L1-L1; context L1–156 | Section title; mathematical units are inventoried separately. |
| heading:bpP:p14:conv | PASS | blueprint-P/parts/p14a-amd-expsafe.tex#bpP:p14:conv@L18-L18; context L1–156 | Subsection title; the actual standing notation is mapped to conv#data. |
| heading:bpP:p14:sec-elements | PASS | blueprint-P/parts/p14a-amd-expsafe.tex#bpP:p14:sec-elements@L40-L40; context L1–156 | Subsection title; elements, eccentricity, geometry and closure have their own records. |
| heading:bpP:p14:sec-ode | PASS | blueprint-P/parts/p14a-amd-expsafe.tex#bpP:p14:sec-ode@L106-L106; context L1–156 | Subsection title; moving-ode and angular-momentum results have their own records. |
| heading:bpP:p14:sec-amd | PASS | blueprint-P/parts/p14a-amd-expsafe.tex#bpP:p14:sec-amd@L127-L127; context L1–156 | Subsection title; the AMD theorem and proof steps have their own records. |
| p14a:source-L132 | PASS | blueprint-P/parts/p14a-amd-expsafe.tex#source@L132-L132; context L1–156 | Provenance for the theorem whose proof follows at L134–151; no extra imported theorem application occurs in this citation. |
| p14a:prose-L4-L16 | PASS | blueprint-P/parts/p14a-amd-expsafe.tex#prose@L4-L16; context L1–156 | The fixed G=m₀=1, n≥2, admissible box and H_mov are mapped to conv#data; the remaining bullets are an outline. |
| p14a:prose-L20-L24 | PASS | blueprint-P/parts/p14a-amd-expsafe.tex#prose@L20-L24; context L1–156 | The body, Kepler, AMD, region, exponent and norm notation is represented by conv#data, rather than excluded as unconsumed prose. |
| p14a:prose-L26-L27 | PASS | blueprint-P/parts/p14a-amd-expsafe.tex#prose@L26-L27; context L1–156 | External-list introduction/header; each labelled external fact has its own record. |
| p14a:prose-L34-L38 | PASS | blueprint-P/parts/p14a-amd-expsafe.tex#prose@L34-L38; context L1–156 | Citation catalogue and totality reminder, not an additional proof. Actual uses are represented at consumers; the P-FIXED revision supplies no new consumed claim in this paragraph. |

## Counterchecks and boundaries

The two prose mappings are substantive: conv#data records the fixed mass/box setting, outer/inner regions, collision set, element notation and the distinction between physical planar lengths and max norms. Excluding those paragraphs outright would have lost data; the current NODE dispositions avoid that error. The introduction's theorem references are pointers, not extra backward edges to the roots being proved.

The L34–38 catalogue need not have an edge for every *listed* result: only actual applications are dependencies. For example, the compact-neighbourhood construction used later is supplied by x-top and gen-lip, not an otherwise unused catalogue mention of gen-uniform-compact. The coverage disposition is accurately EXCLUDED as a pointer list; it does not authorize restoring non-direct edges. The named angular-momentum and reconstruction inputs are linked at their consuming proof steps. No factual input was found hidden by the exclusion.

The amd-uses remark restates the roles of margins, angular momentum and admissibility already represented in the proof. Searching the current complete P corpus finds no reference to its label. It remains administrative under SPEC, including after the P-FIXED expansion.

No new blueprint defect is asserted. The prior review's L146 left-endpoint typo (`T_->-T`, where interval inclusion needs `T_-<-T`) and the negative-H predicate clarification remain prior source observations; this coverage-only review does not reopen those already reviewed node records or certify the underlying proof as Lean-proved.

## Verification and snapshot

Selection is exactly 0 nodes and 11 coverage items with status PROPOSED. All NODE targets exist; all selected source ranges resolve and are in bounds; each assigned item has one verdict row. No packet, source, SPEC, manifest or git history is edited, and no Lean command is run.

Read-only structural command:

```sh
python3 -I /mnt/HC_Volume_106379410/orchestrator-tools/inp_depgraph_slice_check.py docs/graph/P/packets P-p14a1 --structural
```

Exit 0:

```text
P-p14a1: 45 nodes, 245 edges, 55 coverage items, 0 problems, 0 TODO records (not counted: --structural)
```

This structural check supplies no semantic verdict for unassigned records. The report passes its whitespace check; final input hashes are checked unchanged before handoff.

| Input | SHA-256 |
|---|---|
| `docs/graph/P/packets/P-p14a1.nodes.md` | `38cb7e1a7018dd0d050010a4686617ad153771338921e2c8c27968ab49bb143e` |
| `docs/graph/P/packets/P-p14a1.coverage.md` | `cca4845374a40eb632458ecb41808e5de057ba0220aec8a0fe903fa0ef7d9a56` |
| `docs/graph/P/reviews/P-p14a1-delta.md` | `0a96c492c8cf39e0c49144597eb9240dcd07c8b9600ff7f680c951a089d6e51f` |
| `docs/graph/P/SPEC.md` | `46c1cf323866edc519123794aae8b00a0c479619e3041fe9dec3d1de777b53bf` |
| `docs/graph/P/DELTA-BRIEF.md` | `af81282f3d2ab67fe709018af8200c900330629894b7df16ff5bf252c8e6f04b` |
| `docs/graph/P/REVIEW-BRIEF.md` | `85a08dd77f773f2fb7ca26559b1f01816cf8aa3d721068be0b4eacdd3b68c207` |
| `blueprint-P/parts/p14a-amd-expsafe.tex` | `a2735bd6fbc36dc765bafccac43af4e3742b101a7e0f2d97725e70ac37ff8452` |
