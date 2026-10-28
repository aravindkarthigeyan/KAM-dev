# P-p6 round-2 delta topology review

Reviewer: `sol-delta2-P-d`. Marker: `delta2-P-d`. Date: 2026-10-28.

**Verdict: PASS — 7 PASS, 0 FAIL.** Reviewed only the seven current `TOPOLOGY_STATUS: PROPOSED` nodes rewritten by `sol-delta-P-h` in `P-p6-delta.md`. There are zero proposed coverage items. This reviewer is distinct from extractor `sonnet-extract-P-p6`, original reviewer `sol-review-P-h` and delta author `sol-delta-P-h`. Accepted records were read as prerequisites only and are not recertified here.

Applied DELTA-BRIEF and the checks of REVIEW-BRIEF under the current SPEC and its rulings, including the convergence rule. Re-read every assigned statement/proof and EDGE use-site, the section data, and the prerequisite statements needed to check the applications. All seven packet blocks match the preceding delta's replacements except for the writer's EXTRACTOR attribution. No further topology error was found.

`p6` = `blueprint-P/parts/p6-newtonian-models.tex`; `p1` and `p0` denote the corresponding track-P source parts; `I p7` = `blueprint-I/parts/p7-delaunay.tex`.

## P-p6: proposed-record verdicts

| ID | Verdict | Spans re-read | Reason |
|---|---|---|---|
| bpP:p6:kepler-part | PASS | p6 L20–24, L62–73; I p7 L311–322 | D2 resolved: conv#data now points to the actual physical-data use at L72. The mass/strength dictionary is a direct use of the ordinary P-owned bpI:p7:scaling, not an owner-excluded I import. k=G m0>0 and m_i>0 supply its premises; split supplies the common unperturbed Hamiltonian. The planet mass and coupling-independent perturbations agree with the source. |
| bpP:p6:units | PASS | p6 L20–24, L153–180; p0 L213–224, L457–469 | D1 and D2 resolved: positive physical data and mu>=0 are explicit, and conv#data points to L180. The D25 specialization fixes both G and m0 to 1; general G is absorbed into the mass array. The source predicates supply collision exclusion and the pointwise Hamiltonian derivative, so reconstruction applies for arbitrary J. No openness/connectedness premise is added. The explicitly unnecessary N newton-reduction comparison is correctly absent from DEPS. |
| bpP:p6:orbit-transfer | PASS | p6 L20–24, L153–168, L183–206; p0 L205–242, L244–281 | D2 resolved: conv#data points to the parameter uses at L197–200. Both conditional branches and their collision hypotheses are retained. ot-curve supplies the reconstruction premises along K(phi+tw); ot-apply applies the appropriate reconstruction with J=R. The all-time Newton/fixed predicates, Hamiltonians, masses and barycentric maps are direct statement uses. |
| bpP:p6:tube-constants | PASS | p6 L20–24, L30, L210–216 | D2 resolved: the section-data edge now points to L211–212. n>=1 supplies a nonempty axis family; finite maxima/minima and the a-max projection are direct inputs. Positive distinct axes give gamma_a>0, with the pair minimum omitted when n=1. The radius and d,D definitions, choice order and dependence lists match the source. |
| bpP:p6:tube-geometry | PASS | p6 L20–24, L138–150, L210–235; p0 L195–224 | D2 resolved: conv#data points to the actual fixed data at L219. All five proof steps and the constants, circular configurations/tubes, collision predicate, pair bounds and barycentric positions are linked. The Euclidean factor sqrt(2), strict distance estimates, uniform d,D and the quantifier over every mu>=0 remain faithful. The barycentric identities provide exact pair distances without a small-mu premise or an I collision/min-distance edge. |
| bpP:p6:measure-positive | PASS | p6 L20–24, L212, L249–259; p0 L195–203; p1 L46–49, L94–108, L201–206 | D1 and D2 resolved: n>=1 is restored, and conv#data points to L250–252. The a-max projection introduces no distinct-axis or gap premise. The lattice clauses are used as hypotheses, not as an application of the full torus theorem. The c-chart and liouville-lattice inputs supply the c^{2n} cell formula, positivity and conditional Borel conclusion; mp-a supplies finiteness. |
| stepP:p6:mp-b | PASS | p6 L20–24, L249–259; p1 L46–49, L94–98, L201–206 | D1 resolved: the inherited n>=1 premise is explicit. The chart, lattice compatibility and invariant measurable A give the direct hypotheses for the quotient measure argument; mp-a gives the final finite-measure conclusion when the image lies in U_eta. The Borel version is conditional on A being Borel, as in the enclosing statement. |

## Resolution and scope

All six previously defective section-data EDGE locators now identify mathematical uses rather than environment headings. They retain the same legitimate dependency targets. The newly restored hypotheses are inherited source premises: units specializes reconstruction with m0>0, positive planet masses and mu>=0; measure-positive and mp-b inherit n>=1 from the part's conventions. In particular, the repair does not impose distinct axes on the measure result, nor a small-coupling restriction on the exact barycentric pair bounds.

SOURCE_HYPOTHESES, SOURCE_QUANTIFIERS, SOURCE_CONCLUSION and CONSTANT_SCOPE were checked in the enclosing source context, including the positive chart factor, phase/max norm versus physical Euclidean length, planet/Sun indexing, arbitrary time sets, and general-G versus normalized D25 mass arrays. The retained fixed branch of orbit-transfer is part of the live unsplit corollary, whose moving branch feeds P-PLANAR; its dependencies are not rejected merely because P-FIXED is deferred.

There are no PROPOSED coverage items and therefore no coverage verdict rows or replacements. Previously accepted coverage items are outside this round. None of the seven assigned nodes has a mechanically added route EDGE or the generic inherited-quantifier filler. No frozen anchor is assigned. No replacement blocks are needed.

## Suspected source defects

No new blueprint defect or pinned-paper erratum is asserted. The earlier delta's normalization observation remains visible at p6 L165: “for G=1” is followed by `actualMasses 1 m mu`, although the general proposition allows arbitrary m0>0. The normalized formula requires G=m0=1; units L180 and its current record make this distinction correctly. This is a previously reported source typo, not a reason to fail units.

The earlier real-eps scope observation at p6 L184/L191 versus L20 is still outside these seven proposed records. Its existing SOURCE_GAP node is read only as context for the fixed reconstruction branch; this review does not supply the missing extension or certify proof closure.

## Validation

- Structural checker: `P-p6: 59 nodes, 289 edges, 91 coverage items, 0 problems, 0 TODO records (not counted: --structural)`.
- All current CORPUS and IMPORTS hash entries pass.
- Each of the seven assigned records has existing DEPS/ROUTES targets, exactly one correctly separated EDGE per target and valid locator bounds.
- Read-only traversal finds all seven assigned nodes reachable from a declared root, and no directed cycle contains an assigned node.
- The verdict inventory contains exactly the seven live PROPOSED nodes and no accepted record. Only this report was written; no packet, source, SPEC, manifest or other review was changed. No Lean, build or state-changing git command was run.

Input packet SHA-256 values:

| Input | SHA-256 |
|---|---|
| docs/graph/P/packets/P-p6.nodes.md | `0a4a9b297bb0d7ce87a3a7090370e2cdcfa567cb1c3d4a840a701531572e8839` |
| docs/graph/P/packets/P-p6.coverage.md | `e1014a4d057aee54caeae84433029006239b3697cb2aa45177e41d63eb57ac68` |
