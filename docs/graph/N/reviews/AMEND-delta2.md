# Track N amendment: round-2 delta topology review

Reviewer: `sol-delta2-N-amend`.

**Verdict: PASS — all five assigned PROPOSED records pass.** The replacements resolve the five FAILs in `AMEND-delta.md`. No replacement block is needed, and no packet field was edited.

This is a source-level topology verdict for these five records, not a new whole-graph acceptance or a Lean proof verdict. Applied `DELTA-BRIEF.md`, `REVIEW-BRIEF.md`, SPEC's package/direct-edge/source-field rules, and the convergence rule. Reviewed against HEAD `e28a89abb49bc774011be74592f854763c5302f8`; the file hashes below identify the checked snapshot.

## N-p11ab

| ID | Verdict | Spans re-read | Reason |
| --- | --- | --- | --- |
| stepN:p11:et-one | PASS | `p11b-partial-nf.tex` L75–85, including every EDGE use at L83; `p11a-partial-route.tex` L48–56; `p1-interfaces.tex` L24–26; K `p1-analysis.tex` L227–236 | The added general holomorphic-regularity input supplies continuity of the first derivatives of v and phi on the stated arbitrary open Omega. Scalar restriction and the chain rule then apply to the given C1 curve; wfield supplies `Dv · X^c_phi = {v,phi}_c`. All three edges are direct uses at L83. No flow-existence or canonical-orbit premise has been added to the general curve statement. |
| stepN:p11:et-taylor | PASS | `p11b-partial-nf.tex` L75–85, including every EDGE use at L85; `p11a-partial-route.tex` L48–56; K `p1-analysis.tex` L82–86 | The source hypotheses now retain only the enclosing Taylor-lemma assumptions. Smoothness and the iterated derivative identity are supplied by et-ind rather than assumed. The source explicitly constructs the integral remainder by integration by parts, using the imported integral/FTC input, and specializes it to N=2 for h and N=1 for f0. The added wfield edge directly supplies the nested weighted-bracket identity in that second display. The conclusion and N quantifier match the source. |

There are **zero PROPOSED coverage items** in `N-p11ab.coverage.md`; no coverage replacement is required. Previously reviewed coverage is unchanged.

The two added inputs do not over-correct the source: holomorphic regularity is needed for the continuity assertion at L83, and the weighted-bracket definition is consumed again at L85. Neither edge is merely a provenance citation. The general Taylor lemma uses no extended Fourier class or weighted norm, so these two step records need no additional extended-class package edge.

## N-p11c

| ID | Verdict | Spans re-read | Reason |
| --- | --- | --- | --- |
| stepN:p11:ef-en | PASS | `p11c-partial-stability.tex` L4–17, L78–100; EDGE uses L89, L91–93, L95, L97–100; `p11b-partial-nf.tex` L4–18; `p11a-partial-route.tex` L48–56; `p1-interfaces.tex` L24–26; `p7-stability.tex` L155–159; K `p1-analysis.tex` L227–236 | The inapplicable fb-real theorem edge is removed. The general holomorphic-regularity input applies to h on the arbitrary open fast-action tube, before scalar restriction at L89. The fb-real reference in the blueprint is correctly treated as a proof template, not a premise supplier. The three explicit child steps supply the energy, Taylor and projection conclusions. The norm, extended-class, real-orbit, weighted-field and resonance-data packages are retained for the objects actually used. Intermediate outputs are no longer hypotheses. |
| stepN:p11:ef-en-taylor | PASS | `p11c-partial-stability.tex` L78–95; every EDGE use at L95, with suppliers ef-tube L87 and ef-en-energy L91–93; `p1-interfaces.tex` L24–26; `p7-stability.tex` L18, L155–159; K `p1-analysis.tex` L227–236 | Segment inclusion and the energy identity have been removed from SOURCE_HYPOTHESES and are obtained through their existing dependencies. The retained convexity bound is genuinely stated in energy-free at L79; the first-exit branch and Delta/I_sigma/omega0/Q definitions are legitimate local source data from L86 and L89. Holomorphic regularity followed by scalar restriction supplies the C2 function needed for the Lagrange Taylor input. Each dependency has its use at L95; the recorded inequality matches that line. |
| stepN:p11:ef-en-split | PASS | `p11c-partial-stability.tex` L78–100; EDGE uses L97–98, L97, L100 and L97–100, with suppliers ef-adm L88 and ef-en-taylor L95; `p1-interfaces.tex` L22–23; `p7-stability.tex` L20, L155–159 | The preceding Taylor inequality, admissibility estimate and projection identities are no longer assumed outputs. They are supplied respectively by ef-en-taylor, ef-adm and ext-linalg. The distinct ext-norms edge supplies Euclidean Cauchy–Schwarz at L100. Resonance-data supplies the projection/convexity vocabulary; the local delta bound is part of energy-free at L81. The source gives exactly the recorded 5/16 absorption and 3/16 residual inequality. |

There are **zero PROPOSED coverage items** in `N-p11c.coverage.md`; no coverage replacement is required. Previously reviewed coverage is unchanged.

The contradiction branch fixes a first-exit witness; its local definitions are not new premises of the energy-free theorem. In particular, the corrected records do not assume the segment inclusion, energy identity, Taylor inequality, projection identity or admissibility conclusion they are meant to derive. Conversely, `Q >= m` is a source premise, so retaining it in the Taylor substep is correct. The parent need not duplicate the ext-linalg/ext-norms edges: their direct uses are inside the explicitly modeled ef-en-split substep, which the parent consumes.

## Validation and limits

- Exact pending inventory: **2 + 3 nodes, zero proposed coverage items** in the assigned packets. All five have their own verdict row above.
- For every assigned record, DEPS agrees exactly with its EDGE target inventory, and every target exists in the current packets. Statement/proof ranges resolve at the named labels. Every EDGE range was re-read at its consumer, not only at its supplier. All five records have `ROUTES: -`; these arguments contain no unmodeled alternative derivation. None of these five has the mechanically filled “inherits ... no new binders” quantifier field mentioned by the delta brief.
- Imported inputs were compared with their actual K statements: general open-domain holomorphic regularity, L227–236, and the integral/FTC package, L82–86. The latter supports the source's explicit repeated integration-by-parts construction; the record does not import an unstated canonical-flow Taylor theorem.
- No new suspected blueprint defect or source erratum was found in this delta scope. Wording-only changes were not grounds for FAIL.
- Only this report was written. No packets, blueprint sources, SPEC, frozen declarations, manifest or git state were changed. No Lean implementation was read and no Lean command or build was run, as required by the brief.

Snapshot SHA-256:

| File | SHA-256 |
| --- | --- |
| `blueprint-N/parts/p11b-partial-nf.tex` | `4005a51b99ed21cba7c6cbca27b8e70392f9d8d6c67d6b59fec9e25cac51232d` |
| `blueprint-N/parts/p11c-partial-stability.tex` | `5d6fe7fc6b09459b6bf307596832695fcda1b62bf5292bd926d84bf216f7b7ea` |
| `docs/graph/N/packets/N-p11ab.nodes.md` | `e0056d641732ccc73171b025262ac3e13385732de215a4e5c36e3c36961d5e31` |
| `docs/graph/N/packets/N-p11c.nodes.md` | `1e890ac4c6e1f17a75ed6238c6f21d8a6c91f64ca6fe4e551c71a73368bc1be3` |

READY delta2-N-amend
