ITEM: bpP:p7:e-ift
KIND: external
SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:e-ift@L37-L38
DISPOSITION: NODE bpP:p7:e-ift
REASON: mechanical inventory of a labelled unit
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-P-p7
REVIEWER: sol-review-P-i

ITEM: bpP:p7:e-hol
KIND: external
SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:e-hol@L39-L39
DISPOSITION: EXCLUDED
REASON: alias of I:bpI:p7:x-hol and I:bpI:p7:x-weier (the item restates holomorphic calculus, holomorphic sqrt on Re>0 and uniform limits, and cites them); consumers (stepP:p7:rk-hol, stepP:p7:ho-size, stepP:p7:ho-hol) depend on the I imports directly. Note: P-p8 has an edge to bpP:p7:e-hol that must be retargeted to I:bpI:p7:x-hol
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-P-p7
REVIEWER: sol-delta-P-i

ITEM: bpP:p7:e-banach
KIND: external
SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:e-banach@L40-L40
DISPOSITION: EXCLUDED
REASON: alias of K:bp:p1:ext-banach and K:bp:p1:ext-mvt (the item names exactly Banach fixed point and the mean value inequality on a convex set); stepP:p7:rk-contr and stepP:p7:rk-hol depend on the K imports directly
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-P-p7
REVIEWER: sol-delta-P-i

ITEM: bpP:p7:e-forms
KIND: external
SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:e-forms@L41-L41
DISPOSITION: EXCLUDED
REASON: alias of I:bpI:p7:x-forms (d commutes with pull-back) and Lemma bpP:p1:omega-algebra(c) (the matrix/form equivalence); stepP:p7:po-dense depends on both directly
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-P-p7
REVIEWER: sol-delta-P-i

ITEM: bpP:p7:e-dense
KIND: external
SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:e-dense@L42-L42
DISPOSITION: NODE bpP:p7:e-dense
REASON: mechanical inventory of a labelled unit
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-P-p7
REVIEWER: sol-review-P-i

ITEM: bpP:p7:e-cov
KIND: external
SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:e-cov@L43-L43
DISPOSITION: EXCLUDED
REASON: outside every root closure of track P. External item (change of variables in R), whose only consumer is stepP:p7:av-cov (excluded with bpP:p7:average). Check: no corpus part cites bpP:p7:e-cov (grep); SPEC asks to keep it as a track-P external if its consumer is kept: restore it with bpP:p7:average if the writer rules average in-closure
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-P-p7
REVIEWER: sol-delta-P-i

ITEM: bpP:p7:e-comp
KIND: external
SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:e-comp@L44-L44
DISPOSITION: NODE bpP:p7:e-comp
REASON: mechanical inventory of a labelled unit
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-P-p7
REVIEWER: sol-review-P-i

ITEM: bpP:p7:kepler-data
KIND: definition
SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:kepler-data@L49-L58
DISPOSITION: NODE bpP:p7:kepler-data
REASON: mechanical inventory of a labelled unit
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-P-p7
REVIEWER: sol-review-P-i

ITEM: bpP:p7:range
KIND: lemma
SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:range@L60-L62
DISPOSITION: NODE bpP:p7:range
REASON: mechanical inventory of a labelled unit
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-P-p7
REVIEWER: sol-review-P-i

ITEM: stepP:p7:rg-scale
KIND: proof-region
SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:rg-scale@L64-L64
DISPOSITION: NODE stepP:p7:rg-scale
REASON: mechanical inventory of a labelled unit
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-P-p7
REVIEWER: sol-delta-P-i

ITEM: stepP:p7:rg-lagrange
KIND: proof-region
SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:rg-lagrange@L65-L66
DISPOSITION: NODE stepP:p7:rg-lagrange
REASON: mechanical inventory of a labelled unit
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-P-p7
REVIEWER: sol-delta-P-q

ITEM: bpP:p7:kepler
KIND: proposition
SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:kepler@L69-L81
DISPOSITION: NODE bpP:p7:kepler
REASON: mechanical inventory of a labelled unit
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-P-p7
REVIEWER: sol-review-P-i

ITEM: stepP:p7:ke-chart
KIND: proof-region
SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:ke-chart@L85-L85
DISPOSITION: NODE stepP:p7:ke-chart
REASON: mechanical inventory of a labelled unit
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-P-p7
REVIEWER: sol-delta-P-i

ITEM: stepP:p7:ke-form
KIND: proof-region
SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:ke-form@L86-L86
DISPOSITION: NODE stepP:p7:ke-form
REASON: mechanical inventory of a labelled unit
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-P-p7
REVIEWER: sol-delta-P-i

ITEM: stepP:p7:ke-b
KIND: proof-region
SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:ke-b@L87-L87
DISPOSITION: NODE stepP:p7:ke-b
REASON: mechanical inventory of a labelled unit
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-P-p7
REVIEWER: sol-delta-P-i

ITEM: stepP:p7:ke-c
KIND: proof-region
SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:ke-c@L88-L88
DISPOSITION: NODE stepP:p7:ke-c
REASON: mechanical inventory of a labelled unit
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-P-p7
REVIEWER: sol-delta-P-q

ITEM: stepP:p7:ke-d
KIND: proof-region
SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:ke-d@L89-L89
DISPOSITION: NODE stepP:p7:ke-d
REASON: mechanical inventory of a labelled unit
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-P-p7
REVIEWER: sol-delta-P-q

ITEM: bpP:p7:regular-kepler
KIND: proposition
SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:regular-kepler@L99-L108
DISPOSITION: NODE bpP:p7:regular-kepler
REASON: mechanical inventory of a labelled unit
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-P-p7
REVIEWER: sol-delta-P-i

ITEM: stepP:p7:rk-mono
KIND: proof-region
SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:rk-mono@L110-L110
DISPOSITION: NODE stepP:p7:rk-mono
REASON: mechanical inventory of a labelled unit
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-P-p7
REVIEWER: sol-delta-P-i

ITEM: stepP:p7:rk-an
KIND: proof-region
SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:rk-an@L111-L111
DISPOSITION: NODE stepP:p7:rk-an
REASON: mechanical inventory of a labelled unit
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-P-p7
REVIEWER: sol-delta-P-i

ITEM: stepP:p7:rk-contr
KIND: proof-region
SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:rk-contr@L112-L112
DISPOSITION: NODE stepP:p7:rk-contr
REASON: mechanical inventory of a labelled unit
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-P-p7
REVIEWER: sol-review-P-i

ITEM: stepP:p7:rk-hol
KIND: proof-region
SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:rk-hol@L113-L113
DISPOSITION: NODE stepP:p7:rk-hol
REASON: mechanical inventory of a labelled unit
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-P-p7
REVIEWER: sol-delta-P-i

ITEM: stepP:p7:rk-rel
KIND: proof-region
SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:rk-rel@L114-L114
DISPOSITION: NODE stepP:p7:rk-rel
REASON: mechanical inventory of a labelled unit
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-P-p7
REVIEWER: sol-delta-P-i

ITEM: bpP:p7:poincare-def
KIND: definition
SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:poincare-def@L119-L129
DISPOSITION: NODE bpP:p7:poincare-def
REASON: mechanical inventory of a labelled unit
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-P-p7
REVIEWER: sol-review-P-i

ITEM: bpP:p7:o-facts
KIND: lemma
SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:o-facts@L131-L133
DISPOSITION: NODE bpP:p7:o-facts
REASON: mechanical inventory of a labelled unit
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-P-p7
REVIEWER: sol-delta-P-i

ITEM: bpP:p7:poincare
KIND: theorem
SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:poincare@L138-L148
DISPOSITION: NODE bpP:p7:poincare
REASON: mechanical inventory of a labelled unit
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-P-p7
REVIEWER: sol-delta-P-i

ITEM: stepP:p7:po-an
KIND: proof-region
SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-an@L150-L150
DISPOSITION: NODE stepP:p7:po-an
REASON: mechanical inventory of a labelled unit
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-P-p7
REVIEWER: sol-delta-P-q

ITEM: stepP:p7:po-del
KIND: proof-region
SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-del@L151-L155
DISPOSITION: NODE stepP:p7:po-del
REASON: mechanical inventory of a labelled unit
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-P-p7
REVIEWER: sol-delta-P-q

ITEM: stepP:p7:po-symp
KIND: proof-region
SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-symp@L156-L156
DISPOSITION: NODE stepP:p7:po-symp
REASON: mechanical inventory of a labelled unit
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-P-p7
REVIEWER: sol-delta-P-i

ITEM: stepP:p7:po-dense
KIND: proof-region
SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-dense@L157-L157
DISPOSITION: NODE stepP:p7:po-dense
REASON: mechanical inventory of a labelled unit
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-P-p7
REVIEWER: sol-delta-P-q

ITEM: stepP:p7:po-el
KIND: proof-region
SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-el@L158-L159
DISPOSITION: NODE stepP:p7:po-el
REASON: mechanical inventory of a labelled unit
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-P-p7
REVIEWER: sol-delta-P-q

ITEM: stepP:p7:po-bij
KIND: proof-region
SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-bij@L160-L162
DISPOSITION: NODE stepP:p7:po-bij
REASON: mechanical inventory of a labelled unit
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-P-p7
REVIEWER: sol-delta-P-q

ITEM: stepP:p7:po-circ
KIND: proof-region
SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-circ@L163-L163
DISPOSITION: NODE stepP:p7:po-circ
REASON: mechanical inventory of a labelled unit
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-P-p7
REVIEWER: sol-delta-P-i

ITEM: bpP:p7:holomorphic
KIND: proposition
SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:holomorphic@L166-L170
DISPOSITION: NODE bpP:p7:holomorphic
REASON: mechanical inventory of a labelled unit
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-P-p7
REVIEWER: sol-review-P-i

ITEM: stepP:p7:ho-size
KIND: proof-region
SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:ho-size@L172-L172
DISPOSITION: NODE stepP:p7:ho-size
REASON: mechanical inventory of a labelled unit
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-P-p7
REVIEWER: sol-review-P-i

ITEM: stepP:p7:ho-hol
KIND: proof-region
SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:ho-hol@L173-L173
DISPOSITION: NODE stepP:p7:ho-hol
REASON: mechanical inventory of a labelled unit
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-P-p7
REVIEWER: sol-delta-P-q

ITEM: bpP:p7:ho-rem
KIND: claim
SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:ho-rem@L175-L177
DISPOSITION: EXCLUDED
REASON: administrative remark (size of the neighbourhood; pointers to Parts 2, 5, 8 and track I); no proof cites bpP:p7:ho-rem (grep of all corpus parts)
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-P-p7
REVIEWER: sol-delta-P-i

ITEM: bpP:p7:normalisation
KIND: claim
SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:normalisation@L179-L184
DISPOSITION: EXCLUDED
REASON: remark on normalisation, sign conventions and source gap: provenance and errata (Fej04r (31), Fej07e p.3); no proof cites bpP:p7:normalisation (grep of all corpus parts). The bridge it flags (analyticity through e=0, bijectivity at circular orbits) is supplied by stepP:p7:po-an, stepP:p7:po-dense, stepP:p7:po-bij
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-P-p7
REVIEWER: sol-delta-P-i

ITEM: bpP:p7:product-def
KIND: definition
SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:product-def@L190-L192
DISPOSITION: NODE bpP:p7:product-def
REASON: mechanical inventory of a labelled unit
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-P-p7
REVIEWER: sol-review-P-i

ITEM: bpP:p7:product-chart
KIND: theorem
SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:product-chart@L194-L203
DISPOSITION: NODE bpP:p7:product-chart
REASON: mechanical inventory of a labelled unit
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-P-p7
REVIEWER: sol-delta-P-i

ITEM: stepP:p7:pc-prod
KIND: proof-region
SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:pc-prod@L205-L205
DISPOSITION: NODE stepP:p7:pc-prod
REASON: mechanical inventory of a labelled unit
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-P-p7
REVIEWER: sol-delta-P-i

ITEM: stepP:p7:pc-dec
KIND: proof-region
SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:pc-dec@L206-L206
DISPOSITION: NODE stepP:p7:pc-dec
REASON: mechanical inventory of a labelled unit
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-P-p7
REVIEWER: sol-delta-P-i

ITEM: stepP:p7:pc-share
KIND: proof-region
SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:pc-share@L207-L207
DISPOSITION: NODE stepP:p7:pc-share
REASON: mechanical inventory of a labelled unit
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-P-p7
REVIEWER: sol-delta-P-q

ITEM: stepP:p7:pc-eq
KIND: proof-region
SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:pc-eq@L208-L208
DISPOSITION: NODE stepP:p7:pc-eq
REASON: mechanical inventory of a labelled unit
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-P-p7
REVIEWER: sol-delta-P-q

ITEM: bpP:p7:same-chart
KIND: claim
SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:same-chart@L211-L213
DISPOSITION: EXCLUDED
REASON: outside every root closure of track P. Check: no packet DEPS consumes this remark; its only citation from another corpus part is P14a L339 in Deviations. Other occurrences are self/provenance/forward-reference prose. The mathematical splitting/shared-chart facts are carried by Part 6 and product-chart.
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-P-p7
REVIEWER: sol-delta-P-i

ITEM: bpP:p7:tube
KIND: lemma
SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:tube@L215-L217
DISPOSITION: NODE bpP:p7:tube
REASON: mechanical inventory of a labelled unit
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-P-p7
REVIEWER: sol-delta-P-i

ITEM: stepP:p7:tu-circ
KIND: proof-region
SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:tu-circ@L219-L219
DISPOSITION: NODE stepP:p7:tu-circ
REASON: mechanical inventory of a labelled unit
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-P-p7
REVIEWER: sol-delta-P-i

ITEM: stepP:p7:tu-cont
KIND: proof-region
SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:tu-cont@L220-L220
DISPOSITION: NODE stepP:p7:tu-cont
REASON: mechanical inventory of a labelled unit
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-P-p7
REVIEWER: sol-delta-P-i

ITEM: bpP:p7:lattice
KIND: lemma
SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:lattice@L223-L233
DISPOSITION: NODE bpP:p7:lattice
REASON: P-FIXED revision (2026-10-28): restored; consumed by the P-FIXED proof (Parts 11, 13), now in the corpus. Consumer: stepP:p11:tc-polar (Part 11 L90, Lemma bpP:p7:lattice (a),(b),(c)).
COVERAGE_STATUS: REVIEWED
EXTRACTOR: writer-pfixed-revision
REVIEWER: sol-delta-P-bc

ITEM: stepP:p7:la-polar
KIND: proof-region
SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:la-polar@L235-L235
DISPOSITION: NODE stepP:p7:la-polar
REASON: P-FIXED revision (2026-10-28): restored; consumed by the P-FIXED proof (Parts 11, 13), now in the corpus. Proof step of bpP:p7:lattice (restored with it).
COVERAGE_STATUS: REVIEWED
EXTRACTOR: writer-pfixed-revision
REVIEWER: sol-delta-P-ah

ITEM: stepP:p7:la-inv
KIND: proof-region
SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:la-inv@L236-L236
DISPOSITION: NODE stepP:p7:la-inv
REASON: P-FIXED revision (2026-10-28): restored; consumed by the P-FIXED proof (Parts 11, 13), now in the corpus. Proof step of bpP:p7:lattice (restored with it).
COVERAGE_STATUS: REVIEWED
EXTRACTOR: writer-pfixed-revision
REVIEWER: sol-delta-P-bc

ITEM: stepP:p7:la-per
KIND: proof-region
SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:la-per@L237-L237
DISPOSITION: NODE stepP:p7:la-per
REASON: P-FIXED revision (2026-10-28): restored; consumed by the P-FIXED proof (Parts 11, 13), now in the corpus. Proof step of bpP:p7:lattice (restored with it).
COVERAGE_STATUS: REVIEWED
EXTRACTOR: writer-pfixed-revision
REVIEWER: sol-delta-P-ah

ITEM: stepP:p7:la-ham
KIND: proof-region
SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:la-ham@L238-L238
DISPOSITION: NODE stepP:p7:la-ham
REASON: P-FIXED revision (2026-10-28): restored; consumed by the P-FIXED proof (Parts 11, 13), now in the corpus. Proof step of bpP:p7:lattice (restored with it).
COVERAGE_STATUS: REVIEWED
EXTRACTOR: writer-pfixed-revision
REVIEWER: sol-delta-P-bc

ITEM: bpP:p7:d25
KIND: proposition
SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:d25@L247-L258
DISPOSITION: NODE bpP:p7:d25
REASON: mechanical inventory of a labelled unit
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-P-p7
REVIEWER: sol-review-P-i

ITEM: stepP:p7:d25-ab
KIND: proof-region
SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:d25-ab@L260-L260
DISPOSITION: NODE stepP:p7:d25-ab
REASON: mechanical inventory of a labelled unit
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-P-p7
REVIEWER: sol-delta-P-i

ITEM: stepP:p7:d25-c
KIND: proof-region
SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:d25-c@L261-L261
DISPOSITION: NODE stepP:p7:d25-c
REASON: mechanical inventory of a labelled unit
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-P-p7
REVIEWER: sol-delta-P-i

ITEM: stepP:p7:d25-d
KIND: proof-region
SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:d25-d@L262-L262
DISPOSITION: NODE stepP:p7:d25-d
REASON: mechanical inventory of a labelled unit
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-P-p7
REVIEWER: sol-delta-P-q

ITEM: stepP:p7:d25-e
KIND: proof-region
SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:d25-e@L263-L263
DISPOSITION: NODE stepP:p7:d25-e
REASON: mechanical inventory of a labelled unit
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-P-p7
REVIEWER: sol-delta-P-q

ITEM: bpP:p7:average
KIND: corollary
SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:average@L266-L271
DISPOSITION: EXCLUDED
REASON: outside every root closure of track P. Corollary average is cited by Part 14b only in consistency checks ("the proofs below do not depend on them", L43, Remark bpP:p14:sb-consistency), as provenance (L55) and as a comparison (L219); no proof of Parts 1-14b uses it (grep for bpP:p7:average)
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-P-p7
REVIEWER: sol-delta-P-i

ITEM: stepP:p7:av-cov
KIND: proof-region
SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:av-cov@L273-L273
DISPOSITION: EXCLUDED
REASON: proof step of bpP:p7:average, excluded as outside every root closure under the writer ruling. The separately labelled stepP:p7:av-mean at L273 is also inventoried and excluded with this corollary.
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-P-p7
REVIEWER: sol-delta-P-i

ITEM: heading:bpP:p7
KIND: heading
SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7@L1-L1
DISPOSITION: EXCLUDED
REASON: section heading; its results are inventoried separately
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-P-p7
REVIEWER: sol-delta-P-i

ITEM: heading:bpP:p7:conv
KIND: heading
SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:conv@L25-L25
DISPOSITION: EXCLUDED
REASON: section heading; its results are inventoried separately
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-P-p7
REVIEWER: sol-delta-P-i

ITEM: heading:bpP:p7:sec-kepler
KIND: heading
SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:sec-kepler@L47-L47
DISPOSITION: EXCLUDED
REASON: section heading; its results are inventoried separately
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-P-p7
REVIEWER: sol-delta-P-i

ITEM: heading:bpP:p7:sec-regular
KIND: heading
SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:sec-regular@L92-L92
DISPOSITION: EXCLUDED
REASON: section heading; its results are inventoried separately
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-P-p7
REVIEWER: sol-delta-P-i

ITEM: heading:bpP:p7:sec-poincare
KIND: heading
SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:sec-poincare@L117-L117
DISPOSITION: EXCLUDED
REASON: section heading; its results are inventoried separately
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-P-p7
REVIEWER: sol-delta-P-i

ITEM: heading:bpP:p7:sec-product
KIND: heading
SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:sec-product@L186-L186
DISPOSITION: EXCLUDED
REASON: section heading; its results are inventoried separately
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-P-p7
REVIEWER: sol-delta-P-i

ITEM: heading:bpP:p7:sec-d25
KIND: heading
SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:sec-d25@L241-L241
DISPOSITION: EXCLUDED
REASON: section heading; its results are inventoried separately
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-P-p7
REVIEWER: sol-delta-P-i

ITEM: heading:bpP:p7:notes
KIND: heading
SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:notes@L276-L276
DISPOSITION: EXCLUDED
REASON: section heading; its results are inventoried separately
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-P-p7
REVIEWER: sol-delta-P-i

ITEM: p7:sourcegap-L183
KIND: proof-region
SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#sourcegap@L183-L183
DISPOSITION: NODE stepP:p7:po-an, stepP:p7:po-dense, stepP:p7:po-bij
REASON: the Fej04r Thm. 62 gap (analyticity at e=0 and bijectivity at circular orbits not proved in the pinned source) is bridged by the blueprint proof: stepP:p7:po-an (analyticity), stepP:p7:po-dense (symplectic identity on all of O by density) and stepP:p7:po-bij (bijectivity). Not a SOURCE_GAP of the blueprint
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-P-p7
REVIEWER: sol-delta-P-i

ITEM: p7:source-L57
KIND: citation
SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#source@L57-L57
DISPOSITION: EXCLUDED
REASON: provenance note for a result proved in the blueprint (confirm; an unproved cited input must instead become an external node)
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-P-p7
REVIEWER: sol-delta-P-i

ITEM: p7:source-L80
KIND: citation
SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#source@L80-L80
DISPOSITION: EXCLUDED
REASON: provenance note for a result proved in the blueprint (confirm; an unproved cited input must instead become an external node)
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-P-p7
REVIEWER: sol-delta-P-i

ITEM: p7:source-L107
KIND: citation
SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#source@L107-L107
DISPOSITION: EXCLUDED
REASON: provenance note for a result proved in the blueprint (confirm; an unproved cited input must instead become an external node)
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-P-p7
REVIEWER: sol-delta-P-i

ITEM: p7:source-L128
KIND: citation
SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#source@L128-L128
DISPOSITION: EXCLUDED
REASON: provenance note for a result proved in the blueprint (confirm; an unproved cited input must instead become an external node)
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-P-p7
REVIEWER: sol-delta-P-i

ITEM: p7:prose-L4-L23
KIND: proof-region
SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#prose@L4-L23
DISPOSITION: EXCLUDED
REASON: part introduction: outline of results and ownership list (pointers to track I Part 7); every cited result is a node or import used by name where consumed
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-P-p7
REVIEWER: sol-delta-P-i

ITEM: p7:prose-L27-L33
KIND: proof-region
SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#prose@L27-L33
DISPOSITION: NODE bpP:p7:conv#data
REASON: conventions of Part 7 (m, kappa, l, radians, Omega, J_0, R(g), e_g, cr, Q^I): created as definition node bpP:p7:conv#data
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-P-p7
REVIEWER: sol-delta-P-i

ITEM: p7:prose-L35-L36
KIND: proof-region
SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#prose@L35-L36
DISPOSITION: EXCLUDED
REASON: lead-in of the external-facts list; the labelled items are bpP:p7:e-*
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-P-p7
REVIEWER: sol-delta-P-i

ITEM: p7:prose-L94-L97
KIND: proof-region
SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#prose@L94-L97
DISPOSITION: NODE bpP:p7:regular-kepler, stepP:p7:rk-rel
REASON: motivation and substitution F=u+g, ell=lambda-g giving the regular equation F-v_0 sin F+v_1 cos F=lambda; the relation to u_R is proved in stepP:p7:rk-rel and the equation is the definition of Phi in bpP:p7:regular-kepler
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-P-p7
REVIEWER: sol-delta-P-i

ITEM: p7:prose-L188-L188
KIND: proof-region
SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#prose@L188-L188
DISPOSITION: NODE bpP:p7:sec-product#data
REASON: data and coordinates of the product chart: created as definition node bpP:p7:sec-product#data
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-P-p7
REVIEWER: sol-delta-P-i

ITEM: p7:prose-L243-L245
KIND: proof-region
SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#prose@L243-L245
DISPOSITION: NODE bpP:p7:d25
REASON: setting of the D25 secular definitions (n=2, G=m0=1, chart point w, F in R^2): restated in the hypotheses of bpP:p7:d25
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-P-p7
REVIEWER: sol-delta-P-i

ITEM: p7:prose-L278-L278
KIND: proof-region
SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#prose@L278-L278
DISPOSITION: EXCLUDED
REASON: "Sources read": provenance
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-P-p7
REVIEWER: sol-delta-P-i

ITEM: p7:prose-L280-L280
KIND: proof-region
SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#prose@L280-L280
DISPOSITION: EXCLUDED
REASON: Lean totality paragraph: guards of total functions, not hypotheses (SPEC); no proof cites it
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-P-p7
REVIEWER: sol-delta-P-i

ITEM: p7:prose-L282-L283
KIND: proof-region
SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#prose@L282-L283
DISPOSITION: EXCLUDED
REASON: "Deviations from the source": administrative
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-P-p7
REVIEWER: sol-delta-P-i

ITEM: p7:prose-L285-L285
KIND: proof-region
SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#prose@L285-L285
DISPOSITION: EXCLUDED
REASON: "Suspected errata": administrative (reported in the handoff)
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-P-p7
REVIEWER: sol-delta-P-i

ITEM: p7:prose-L287-L287
KIND: proof-region
SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#prose@L287-L287
DISPOSITION: EXCLUDED
REASON: "Doubts about frozen statements": administrative
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-P-p7
REVIEWER: sol-delta-P-i

ITEM: p7:prose-L289-L289
KIND: proof-region
SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#prose@L289-L289
DISPOSITION: EXCLUDED
REASON: "External facts used": list pointing at (E1)-(E7), bpP:p1:... and K real-restriction; each is linked from the proof step that uses it (checked: e-ift in rk-an and po-bij, e-dense in po-dense, e-comp in tu-cont, K:real-restriction in ho-hol; aliases retargeted)
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-P-p7
REVIEWER: sol-delta-P-i

ITEM: p7:prose-L291-L292
KIND: proof-region
SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#prose@L291-L292
DISPOSITION: EXCLUDED
REASON: forward references and consumers: pointers
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-P-p7
REVIEWER: sol-delta-P-i

ITEM: p7:prose-L294-L295
KIND: proof-region
SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#prose@L294-L295
DISPOSITION: EXCLUDED
REASON: label index: administrative
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-P-p7
REVIEWER: sol-delta-P-i

ITEM: stepP:p7:av-mean
KIND: proof-region
SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:av-mean@L273-L273
DISPOSITION: EXCLUDED
REASON: proof step of bpP:p7:average, outside every root closure under the writer ruling. It derives the same excluded mean-value claims from kepler(c) and the circular endpoint. No corpus proof outside that excluded unit consumes this step.
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sol-review-P-i
REVIEWER: sol-delta-P-i

ITEM: stepP:p7:po-el#circular
KIND: proof-region
SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-el@L158-L158
DISPOSITION: NODE stepP:p7:po-el#circular
REASON: bookkeeping item mirroring the already-reviewed step node of the same name (substantive step exposed by the slice, not a separate source unit)
COVERAGE_STATUS: REVIEWED
EXTRACTOR: new+sol-delta-P-i
REVIEWER: sol-delta-P-q

ITEM: stepP:p7:po-el#circular-scaled
KIND: proof-region
SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-el@L158-L158
DISPOSITION: NODE stepP:p7:po-el#circular-scaled
REASON: bookkeeping item mirroring the already-reviewed route node of the same name (substantive step exposed by the slice, not a separate source unit)
COVERAGE_STATUS: REVIEWED
EXTRACTOR: new+sol-review-P-i
REVIEWER: sol-delta-P-i

ITEM: stepP:p7:po-el#circular-direct
KIND: proof-region
SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-el@L158-L158
DISPOSITION: NODE stepP:p7:po-el#circular-direct
REASON: bookkeeping item mirroring the already-reviewed route node of the same name (substantive step exposed by the slice, not a separate source unit)
COVERAGE_STATUS: REVIEWED
EXTRACTOR: new+sol-delta-P-i
REVIEWER: sol-delta-P-q
