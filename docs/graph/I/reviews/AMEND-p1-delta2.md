# Track I Part 1 amendment — delta topology review, round 2

Reviewer: `sol-delta2-I-amend`. Marker: `delta2-I-amend`.

**Verdict: PASS. All 8 currently PROPOSED nodes pass (7 in I-p1, 1 in I-p67a).** There are no currently PROPOSED coverage items in either packet. No replacement fragments are required.

Read DELTA-BRIEF.md, REVIEW-BRIEF.md, SPEC.md and its rulings, and the complete prior amendment delta report. Independently re-read the current raw statements and each EDGE location, including the source statements of the imported prerequisites. Each current proposed record matches its prior replacement block except writer attribution/status metadata. The verdict below checks the replacement against the source; it does not rely on the prior reviewer’s conclusion.

| ID | Verdict | Spans re-read | Check of the prior FAIL |
|---|---|---|---|
| stepI:p1:eb-holo-frame | PASS | Part 1 L30–46, L130–134; K Part 1 L227–236 | The added ext-chain edge supplies finite sums/products forming L^T L. Holomorphic-regularity applies to K on the open T_r; no ball margin or norm bound is added. |
| stepI:p1:eb-holo-inverse | PASS | Part 1 L130–137; K Part 1 L404–407 | G holomorphic is no longer assumed as a source premise: eb-holo-frame supplies it. det G!=0 and openness are supplied by the setting; the inverse/product inputs match their contracts. |
| stepI:p1:eb-holo-torsion | PASS | Part 1 L139–143; Part 0 L96–109; K Part 1 L227–236 | Earlier holomorphy assertions are correctly dependencies, not additional premises. The added extendedTorsion edge directly supplies the stated blocks, with last row DH(K)N. Regularity of DN and finite products give the remaining objects. |
| stepI:p1:eb-holo-conclude | PASS | Part 1 L130–146; Part 0 L96–109 | The prior-step premise is removed; frame/inverse/torsion dependencies provide their conclusions. The added direct setting edge supplies the local objects and real slice R^n subset T_r. No additional average/integrability claim is introduced. |
| stepI:p1:geo-red | PASS | Part 1 L535–559; K Part 2 L78–108 | Both missing direct package edges are present. The two child steps supply precisely the two claimed estimates, with the stated inherited constant scope. L550 introduces their common proof tools; it does not create an additional independent application beyond those children. |
| stepI:p1:geo-red-domega | PASS | Part 1 L535–556; K Part 2 L56–108, L122–139, L306–317, L382–398, L441–463 | The DE/transpose bounds are supplied by geo-de rather than assumed. The bridge supplies common standing data; local A2–A4 are explicitly present, and no A5 is needed. Product norms give (2n m+2n^2 m) eps/delta. |
| stepI:p1:geo-red-ered | PASS | Part 1 L535–559; K Part 2 L78–108, L122–139, L306–317, L382–398, L441–463 | The derived derivative bounds remain dependencies only. The two block-row bounds are 2n^2 m^2 and 2n^2 m+2n m^2, times eps/delta; m>=1 bounds both by C_red=2n(n+1)m^2. No torsion premise is imported. |
| stepI:p7:sy-field | PASS | Part 7 L26–29, L158–168, L205–217, L236–239 | The symplectic identity is removed from source premises and supplied by sy-ext, including invertibility. H is C1 on open target U, W=D_R intersect Q^{-1}(U) is the source, and the chain rule applies there. The field identity and both directions for C1 curves follow on W. |

All other coverage items PASS within this amendment’s scope; previously reviewed records are prerequisite context, not newly re-certified by this report. The reviewed label mappings remain correct; no new uncovered obligation was found in the amended spans.

## Contract and dependency checks

- The Part 1 source hypotheses retain the full enclosing setting. H is holomorphic on D; K and the frame objects are evaluated on T_r. The terse K/H quantifier fields are interpreted with those explicit carriers, not as a changed domain for H. These substeps introduce no new binder. None uses the writer’s generic “inherits ... no new binders” placeholder.
- The geometry steps inherit the explicit hypotheses of geometry-noA5: beta>0, the positive margin, DK and Gram-inverse bounds, the error bound, 0<delta<=1, and 2delta<r. These supply frame-basic(a),(b) and the Cauchy loss; K Part 2 L67–69 expressly permits the common tau>=0 range. Only exact identities and A2–A4 estimates enter the two reviewed calculations.
- The m/C_red dependence remains (n,tau,M,sigma_K,sigma_B,sigma_T), with no new dependence on H,K,epsilon,delta. No inverse-torsion assumption or implicit A5 application is restored.
- The frozen extended-torsion definition was read as definition-only context: its top-left block is torsion, its last column is (omega,0), and its last row is DH(K)N, including off invariance. The field/holomorphy dependencies justify that derivative at actual points of open D.
- Part 7 retains positions/momenta order and mathbb J=-omegaZero. The domain distinction pays the chain-rule carrier condition. The sy-ext dependency supplies both symplectic identities and invertibility, so reversing the curve implication adds no premise.
- No route or alternative derivation was added to any of the eight records. The pruned K fb-holo, geo-domegak and geo-ered steps remain comparisons, not prerequisites. No new edge, import, source premise or source-gap repair is proposed.

## Validation

```text
Proposed inventory: I-p1 = 7 nodes; I-p67a = 1 node; proposed coverage = 0.
All 8 match the prior replacement fragments modulo attribution/status metadata.
All 8 have matching DEPS/EDGE targets, existing prerequisites and in-bounds locators.
I-p1: 63 nodes, 327 edges, 89 coverage items, 0 problems
I-p67a: 63 nodes, 197 edges, 101 coverage items, 0 problems
CORPUS.sha256: all 9 pins OK
IMPORTS.sha256: all 7 pins OK
```

Packet/source snapshots for this review:

| File | SHA-256 |
|---|---|
| docs/graph/I/packets/I-p1.nodes.md | `93d22cd9dab34f6093edbc1d71638652bf7333d633192606ec3b32b14fa296ce` |
| docs/graph/I/packets/I-p1.coverage.md | `593b00dd7d66583a39a2a0d800799a34f469255a463002daef8466d6b3133b46` |
| docs/graph/I/packets/I-p67a.nodes.md | `9fd364ab0a3bc9ab964fe5eef94ae9d321120cc9c6104e34f04acbcf0372f2ec` |
| docs/graph/I/packets/I-p67a.coverage.md | `95d09208e75374abee7f1cd1fed9edb121a032e6accddfb844dacfbb1f64e974` |
| blueprint-I/parts/p1-iso-linear.tex | `96892529ec86381a018c227e239993da5aa6e793144600505668057df0cfc70b` |
| blueprint-I/parts/p7-delaunay.tex | `a3f650f5c2982ea6e5545efd4294c086103439908cfd2683ec3a836923a6521d` |

## Suspected blueprint defects

No new suspected blueprint, pinned-paper or frozen-definition defect was found in the reviewed amendment. This is source-topology acceptance only; no Lean implementation, proof status, provider or theorem closure is certified. Only this report is edited; no Lean or state-changing git command was run.
