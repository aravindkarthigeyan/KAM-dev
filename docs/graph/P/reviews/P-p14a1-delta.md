# P-p14a1 delta topology review

Reviewer: sol-delta-P-r. Marker: delta-P-r.

**Verdict: PASS — all 17 assigned rewritten nodes PASS.** No replacements are required.

## P-p14a1

Scope is the intersection of records still PROPOSED with the complete replacement blocks in P-p14a1-review.md by sol-review-P-n. Records whose EXTRACTOR contains writer-pfixed-revision or sonnet-extract-pfixed are excluded. The named review rewrote 17 nodes and no coverage items: the 28 other pending coverage records were not rewritten by that review and receive no verdict here. Previously reviewed prerequisites were consulted for applicability only. This reviewer did not write the assigned replacements.

Read DELTA-BRIEF.md in full and applied the REVIEW-BRIEF checks, SPEC and current writer rulings, including the Convergence rule. The seventh root introduced by the P-FIXED revision is acknowledged; its ongoing extraction records are not reviewed.

| ID | Verdict | Spans re-read | Reason |
|---|---|---|---|
| stepP:p14:el-c | PASS | p14a-amd-expsafe.tex#stepP:p14:el-c@L60-L60; all EDGE use sites | The new keplerEccVector edge supplies the defining formula expanded at L60, alongside (a),(b) and the planar identity. |
| stepP:p14:el-e | PASS | p14a-amd-expsafe.tex#stepP:p14:el-e@L62-L62; all EDGE use sites | The new keplerEnergy edge supplies the energy formula used to rearrange E<0 at L62. |
| stepP:p14:geo-a | PASS | p14a-amd-expsafe.tex#stepP:p14:geo-a@L86-L86; all EDGE use sites | The data package supplies R_out, A_1 and e_*; LowAMD, action and admissibility give the eccentricity-bound premises. |
| stepP:p14:geo-b | PASS | p14a-amd-expsafe.tex#stepP:p14:geo-b@L87-L87; all EDGE use sites | The added data edge supplies the fixed box fields; elements(d), geo-a and B3 give the radial bounds. |
| stepP:p14:geo-c | PASS | p14a-amd-expsafe.tex#stepP:p14:geo-c@L88-L88; all EDGE use sites | The box/physical-length data are linked. The reverse-triangle input gives the lower bound; plane(a) supplies the physical triangle inequality for the upper bound. |
| stepP:p14:geo-d | PASS | p14a-amd-expsafe.tex#stepP:p14:geo-d@L89-L89; all EDGE use sites | The fixed positive mass and d are supplied by the package; elements(e) and geo-b give the momentum bound. |
| stepP:p14:geo-k | PASS | p14a-amd-expsafe.tex#stepP:p14:geo-k@L90-L90; all EDGE use sites | Direct b,c,d inputs supply R_out subset K_1. Plane(b) converts physical bounds to ambient max-norm boundedness; x-top and d>0 give compactness and K_1 subset W. |
| stepP:p14:cl-a | PASS | p14a-amd-expsafe.tex#stepP:p14:cl-a@L101-L101; all EDGE use sites | The package identifies R_out and fixed masses; the defining functions and x-top give continuity/openness on the guarded domain. |
| stepP:p14:cl-b | PASS | p14a-amd-expsafe.tex#stepP:p14:cl-b@L102-L102; all EDGE use sites | The package supplies the fixed margin constants; elements(a), ecc-bound and admissibility give negative-energy and positive-cross margins. |
| bpP:p14:moving-ode | PASS | p14a-amd-expsafe.tex#bpP:p14:moving-ode@L108-L112; p14a-amd-expsafe.tex#bpP:p14:moving-ode@L113-L116; all EDGE use sites | The non-direct symplectic-form edge is removed. The negative-H clause uses the generic Hamiltonian predicate with univ momentum domain and a separate collision guard, matching the frozen definition. |
| stepP:p14:mo-reg | PASS | p14a-amd-expsafe.tex#stepP:p14:mo-reg@L114-L114; all EDGE use sites | The package specializes W and H_mov to G=m_0=1. Domain regularity and ham-smooth supply open W, smooth H and the C1 field. |
| stepP:p14:mo-eq | PASS | p14a-amd-expsafe.tex#stepP:p14:mo-eq@L115-L115; all EDGE use sites | The generic predicate permits Hamiltonian -H; IsMovingSolutionOn remains attached to H_mov. Collision membership, differentiability and endpoint derivatives agree with IsSolIn. |
| stepP:p14:am-eq | PASS | p14a-amd-expsafe.tex#stepP:p14:am-eq@L122-L122; all EDGE use sites | The data edge supplies G=m_0=1; moving-ode and explicit Hamilton equations give the displayed components. |
| stepP:p14:am-der | PASS | p14a-amd-expsafe.tex#stepP:p14:am-der@L123-L123; all EDGE use sites | The totalMomentum edge identifies J as the finite sum of crosses before differentiation; the recorded equations, bilinearity and pair-sum cancellation give derivative zero. |
| stepP:p14:amd-close | PASS | p14a-amd-expsafe.tex#stepP:p14:amd-close@L144-L144; all EDGE use sites | The new stopped-predicate edge supplies the direct reapplication on each [0,t] at L144 after no exit is established. |
| stepP:p14:amd-bwd | PASS | p14a-amd-expsafe.tex#stepP:p14:amd-bwd@L145-L145; all EDGE use sites | The package supplies the exit region and margins. Reversal is used for the generic exit theorem; the original-H stopped bound is applied on [-s,0]. |
| stepP:p14:amd-cont | PASS | p14a-amd-expsafe.tex#stepP:p14:amd-cont@L146-L146; all EDGE use sites | The corrected T_-<-T is explicitly marked SOURCE_TYPO. Compact continuation near both endpoints supplies the stated interval inclusion. |

The full source context Part 14a L1-L156 was re-read, including the settings, helper statements and first-exit argument. Direct suppliers were checked at their owning statements in P Part 0 (Kepler functions, box/region, collision and solution predicates, field and total angular momentum), P Part 6 (plane, domain, equations and finite-sum/triangle inputs), and N Part 3 (IsSolIn, symmetry, regularity, first exit and compact continuation).

The frozen definition KAM/Frozen/Iso/Defs/IsHamiltonianSolutionOn.lean was read for the negative-H contract. It accepts an arbitrary Hamiltonian, a momentum set and a time set, and requires two-sided HasDerivAt even at endpoints. No implementation or theorem proof body was inspected.

## Prior findings and source observations

The missing definition/package edges now appear at their direct uses. In particular, geo-k uses the geometric bounds for its exported inclusion, and amd-close reapplies the stopped premise after excluding exit. No new root assumption or stopped bound for a negative Hamiltonian is introduced.

The prior source sign defect remains explicitly disclosed: Part 14a L146 prints T_->-T before claiming [-T,T] is contained in (T_-,T_+). The record states T_-<-T and marks the printed typo in NOTE. Symmetric compact continuation gives this correction; it is not silently represented as literal source text.

The ambiguity at L111/L115 is resolved with IsHamiltonianSolutionOn(-H,univ,J,z), together with collision-freeness along z. IsMovingSolutionOn still hardcodes H_mov. This does not change the Hamiltonian tested by StoppedActionBound. No additional suspected blueprint or pinned-paper defect is asserted in this scope.

## Verification

Selection: 17 eligible rewritten nodes, 0 eligible rewritten coverage items. Each node matches the named review replacement apart from writer EXTRACTOR metadata. Every DEPS entry has one EDGE; all targets exist and consumer locators resolve within source bounds. Rationales have the correct three-field separator format. No route entries or generic writer-added route edges occur. No prerequisite path returns to any of the 17 reviewed nodes. None is a frozen anchor.

Read-only whole-slice structural check, which does not assign semantic verdicts to excluded records:

```text
P-p14a1: 45 nodes, 245 edges, 55 coverage items, 0 problems, 0 TODO records (not counted: --structural)
```

Only this report was written. No packet, SPEC, manifest, source or frozen file was edited. No Lean command or state-changing git command was run. Source-topology acceptance is not Lean proof certification.

| Input | SHA-256 |
|---|---|
| docs/graph/P/packets/P-p14a1.nodes.md | 182cdf7ad68376d37b34e1aa26a74a6fc14e1a6444841a9ff09946331e7ec3c7 |
| docs/graph/P/packets/P-p14a1.coverage.md | 38896c4c8dd1cac5d74ccca4e6fdc69f54ebf8fc93d7710769897ad0fedae73e |
| docs/graph/P/reviews/P-p14a1-review.md | b2026edf1ae8020eb272bf20e408ee321afd4a217b16df44a1369064e20f7b5c |
| docs/graph/P/DELTA-BRIEF.md | af81282f3d2ab67fe709018af8200c900330629894b7df16ff5bf252c8e6f04b |
| docs/graph/P/REVIEW-BRIEF.md | 85a08dd77f773f2fb7ca26559b1f01816cf8aa3d721068be0b4eacdd3b68c207 |
| docs/graph/P/SPEC.md | d7e314182abe3982adaf47cc75c88a37b447a86a03fd4ffb28857d25366f7446 |
| blueprint-P/parts/p14a-amd-expsafe.tex | a2735bd6fbc36dc765bafccac43af4e3742b101a7e0f2d97725e70ac37ff8452 |

READY delta-P-r
