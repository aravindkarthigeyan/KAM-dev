NODE: bpP:p4:ext-tonelli
KIND: external
TITLE: Tonelli
STATEMENT_SOURCE: blueprint-P/parts/p4-pg-measure.tex#bpP:p4:ext-tonelli@L11-L11
PROOF_SOURCE: -
CONTRACT_ID: bpP:p4:ext-tonelli
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpP:p4:ext-mvt
KIND: external
TITLE: bpP:p4:ext-mvt
STATEMENT_SOURCE: blueprint-P/parts/p4-pg-measure.tex#bpP:p4:ext-mvt@L12-L12
PROOF_SOURCE: -
CONTRACT_ID: bpP:p4:ext-mvt
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: external item that cites \ref{bpP:p1:ext-borel}, \Kref{bp:p1:ext-mvt}, \Kref{bp:p1:lip-image}: if it only restates the cited external, exclude it as an alias and point its consumers at the cited node (SPEC)

NODE: bpP:p4:ext-deriv
KIND: external
TITLE: bpP:p4:ext-deriv
STATEMENT_SOURCE: blueprint-P/parts/p4-pg-measure.tex#bpP:p4:ext-deriv@L13-L13
PROOF_SOURCE: -
CONTRACT_ID: bpP:p4:ext-deriv
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpP:p4:ext-conn
KIND: external
TITLE: bpP:p4:ext-conn
STATEMENT_SOURCE: blueprint-P/parts/p4-pg-measure.tex#bpP:p4:ext-conn@L14-L14
PROOF_SOURCE: -
CONTRACT_ID: bpP:p4:ext-conn
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpP:p4:collar
KIND: lemma
TITLE: Collar
STATEMENT_SOURCE: blueprint-P/parts/p4-pg-measure.tex#bpP:p4:collar@L22-L29
PROOF_SOURCE: blueprint-P/parts/p4-pg-measure.tex#bpP:p4:collar@L30-L37
CONTRACT_ID: bpP:p4:collar
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p4:co-compact, stepP:p4:co-meas, stepP:p4:co-nbhd
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p4:co-compact | blueprint-P/parts/p4-pg-measure.tex#bpP:p4:collar@L31-L31 | proof step of this result
EDGE: stepP:p4:co-meas | blueprint-P/parts/p4-pg-measure.tex#bpP:p4:collar@L33-L33 | proof step of this result
EDGE: stepP:p4:co-nbhd | blueprint-P/parts/p4-pg-measure.tex#bpP:p4:collar@L35-L35 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p4:co-compact
KIND: step
TITLE: (a) Compact
STATEMENT_SOURCE: blueprint-P/parts/p4-pg-measure.tex#stepP:p4:co-compact@L31-L32
PROOF_SOURCE: blueprint-P/parts/p4-pg-measure.tex#stepP:p4:co-compact@L31-L32
CONTRACT_ID: stepP:p4:co-compact
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p4:co-meas
KIND: step
TITLE: (b) Measure
STATEMENT_SOURCE: blueprint-P/parts/p4-pg-measure.tex#stepP:p4:co-meas@L33-L34
PROOF_SOURCE: blueprint-P/parts/p4-pg-measure.tex#stepP:p4:co-meas@L33-L34
CONTRACT_ID: stepP:p4:co-meas
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p4:co-nbhd
KIND: step
TITLE: (c) Neighbourhoods
STATEMENT_SOURCE: blueprint-P/parts/p4-pg-measure.tex#stepP:p4:co-nbhd@L35-L36
PROOF_SOURCE: blueprint-P/parts/p4-pg-measure.tex#stepP:p4:co-nbhd@L35-L36
CONTRACT_ID: stepP:p4:co-nbhd
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p4:ext-conn
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p4:ext-conn | blueprint-P/parts/p4-pg-measure.tex#stepP:p4:co-nbhd@L36-L36 | cited at this line (step; \ref{bpP:p4:ext-conn})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpP:p4:lip-compact
KIND: lemma
TITLE: Uniform Lipschitz bounds on compact sets
STATEMENT_SOURCE: blueprint-P/parts/p4-pg-measure.tex#bpP:p4:lip-compact@L41-L43
PROOF_SOURCE: blueprint-P/parts/p4-pg-measure.tex#bpP:p4:lip-compact@L44-L49
CONTRACT_ID: bpP:p4:lip-compact
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p4:lc-contra, stepP:p4:lc-local
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p4:lc-contra | blueprint-P/parts/p4-pg-measure.tex#bpP:p4:lip-compact@L45-L45 | proof step of this result
EDGE: stepP:p4:lc-local | blueprint-P/parts/p4-pg-measure.tex#bpP:p4:lip-compact@L47-L47 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p4:lc-contra
KIND: step
TITLE: Contradiction
STATEMENT_SOURCE: blueprint-P/parts/p4-pg-measure.tex#stepP:p4:lc-contra@L45-L46
PROOF_SOURCE: blueprint-P/parts/p4-pg-measure.tex#stepP:p4:lc-contra@L45-L46
CONTRACT_ID: stepP:p4:lc-contra
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p4:lc-local
KIND: step
TITLE: Local bound
STATEMENT_SOURCE: blueprint-P/parts/p4-pg-measure.tex#stepP:p4:lc-local@L47-L48
PROOF_SOURCE: blueprint-P/parts/p4-pg-measure.tex#stepP:p4:lc-local@L47-L48
CONTRACT_ID: stepP:p4:lc-local
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p4:ext-mvt
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p4:ext-mvt | blueprint-P/parts/p4-pg-measure.tex#stepP:p4:lc-local@L48-L48 | cited at this line (step; \ref{bpP:p4:ext-mvt})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpP:p4:lip-inverse
KIND: lemma
TITLE: Lipschitz inverse of the fast frequency
STATEMENT_SOURCE: blueprint-P/parts/p4-pg-measure.tex#bpP:p4:lip-inverse@L51-L54
PROOF_SOURCE: blueprint-P/parts/p4-pg-measure.tex#bpP:p4:lip-inverse@L55-L60
CONTRACT_ID: bpP:p4:lip-inverse
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p4:li-cont, stepP:p4:li-lip, bpP:p0:fastdiffeo#HasFastDiffeomorphism
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p4:li-cont | blueprint-P/parts/p4-pg-measure.tex#bpP:p4:lip-inverse@L56-L56 | proof step of this result
EDGE: stepP:p4:li-lip | blueprint-P/parts/p4-pg-measure.tex#bpP:p4:lip-inverse@L58-L58 | proof step of this result
EDGE: bpP:p0:fastdiffeo#HasFastDiffeomorphism | blueprint-P/parts/p4-pg-measure.tex#bpP:p4:lip-inverse@L52-L52 | cited at this line (statement; \ref{bpP:p0:fastdiffeo})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p4:li-cont
KIND: step
TITLE: Continuity and compactness
STATEMENT_SOURCE: blueprint-P/parts/p4-pg-measure.tex#stepP:p4:li-cont@L56-L57
PROOF_SOURCE: blueprint-P/parts/p4-pg-measure.tex#stepP:p4:li-cont@L56-L57
CONTRACT_ID: stepP:p4:li-cont
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p4:ext-deriv
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p4:ext-deriv | blueprint-P/parts/p4-pg-measure.tex#stepP:p4:li-cont@L57-L57 | cited at this line (step; \ref{bpP:p4:ext-deriv})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p4:li-lip
KIND: step
TITLE: Lipschitz
STATEMENT_SOURCE: blueprint-P/parts/p4-pg-measure.tex#stepP:p4:li-lip@L58-L59
PROOF_SOURCE: blueprint-P/parts/p4-pg-measure.tex#stepP:p4:li-lip@L58-L59
CONTRACT_ID: stepP:p4:li-lip
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p4:lip-compact
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p4:lip-compact | blueprint-P/parts/p4-pg-measure.tex#stepP:p4:li-lip@L59-L59 | cited at this line (step; \ref{bpP:p4:lip-compact})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpP:p4:beta-inverse
KIND: lemma
TITLE: Uniform inverse of the torsion block
STATEMENT_SOURCE: blueprint-P/parts/p4-pg-measure.tex#bpP:p4:beta-inverse@L62-L64
PROOF_SOURCE: blueprint-P/parts/p4-pg-measure.tex#bpP:p4:beta-inverse@L65-L67
CONTRACT_ID: bpP:p4:beta-inverse
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: K:bp:p1:ext-cramer
ROUTES: -
ROUTE_FOR: -
EDGE: K:bp:p1:ext-cramer | blueprint-P/parts/p4-pg-measure.tex#bpP:p4:beta-inverse@L66-L66 | cited at this line (proof; \Kref{bp:p1:ext-cramer})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpP:p4:freq
KIND: definition
TITLE: Frequency map of the averaged system
STATEMENT_SOURCE: blueprint-P/parts/p4-pg-measure.tex#bpP:p4:freq@L72-L76
PROOF_SOURCE: -
CONTRACT_ID: bpP:p4:freq
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p3:period-dictionary, bpP:p1:dio-basic
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p3:period-dictionary | blueprint-P/parts/p4-pg-measure.tex#bpP:p4:freq@L75-L75 | cited at this line (statement; \ref{bpP:p3:period-dictionary})
EDGE: bpP:p1:dio-basic | blueprint-P/parts/p4-pg-measure.tex#bpP:p4:freq@L75-L75 | cited at this line (statement; \ref{bpP:p1:dio-basic})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpP:p4:data
KIND: definition
TITLE: Standing data (S4)
STATEMENT_SOURCE: blueprint-P/parts/p4-pg-measure.tex#bpP:p4:data@L78-L86
PROOF_SOURCE: -
CONTRACT_ID: bpP:p4:data
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p4:beta-inverse, bpP:p4:lip-inverse
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p4:beta-inverse | blueprint-P/parts/p4-pg-measure.tex#bpP:p4:data@L83-L83 | cited at this line (statement; \ref{bpP:p4:beta-inverse})
EDGE: bpP:p4:lip-inverse | blueprint-P/parts/p4-pg-measure.tex#bpP:p4:data@L85-L85 | cited at this line (statement; \ref{bpP:p4:lip-inverse})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpP:p4:affine-slab
KIND: lemma
TITLE: Slab with offset
STATEMENT_SOURCE: blueprint-P/parts/p4-pg-measure.tex#bpP:p4:affine-slab@L88-L90
PROOF_SOURCE: blueprint-P/parts/p4-pg-measure.tex#bpP:p4:affine-slab@L91-L93
CONTRACT_ID: bpP:p4:affine-slab
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p4:ext-tonelli, K:bp:p4:slab
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p4:ext-tonelli | blueprint-P/parts/p4-pg-measure.tex#bpP:p4:affine-slab@L92-L92 | cited at this line (proof; \ref{bpP:p4:ext-tonelli})
EDGE: K:bp:p4:slab | blueprint-P/parts/p4-pg-measure.tex#bpP:p4:affine-slab@L92-L92 | cited at this line (proof; \Kref{bp:p4:slab})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpP:p4:lattice-tail
KIND: lemma
TITLE: Lattice sums
STATEMENT_SOURCE: blueprint-P/parts/p4-pg-measure.tex#bpP:p4:lattice-tail@L95-L98
PROOF_SOURCE: blueprint-P/parts/p4-pg-measure.tex#bpP:p4:lattice-tail@L99-L102
CONTRACT_ID: bpP:p4:lattice-tail
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p4:lt-a, stepP:p4:lt-b
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p4:lt-a | blueprint-P/parts/p4-pg-measure.tex#bpP:p4:lattice-tail@L100-L100 | proof step of this result
EDGE: stepP:p4:lt-b | blueprint-P/parts/p4-pg-measure.tex#bpP:p4:lattice-tail@L101-L101 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p4:lt-a
KIND: step
TITLE: (a)
STATEMENT_SOURCE: blueprint-P/parts/p4-pg-measure.tex#stepP:p4:lt-a@L100-L100
PROOF_SOURCE: blueprint-P/parts/p4-pg-measure.tex#stepP:p4:lt-a@L100-L100
CONTRACT_ID: stepP:p4:lt-a
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: K:bp:p4:lattice-sum
ROUTES: -
ROUTE_FOR: -
EDGE: K:bp:p4:lattice-sum | blueprint-P/parts/p4-pg-measure.tex#stepP:p4:lt-a@L100-L100 | cited at this line (step; \Kref{bp:p4:lattice-sum})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p4:lt-b
KIND: step
TITLE: (b)
STATEMENT_SOURCE: blueprint-P/parts/p4-pg-measure.tex#stepP:p4:lt-b@L101-L101
PROOF_SOURCE: blueprint-P/parts/p4-pg-measure.tex#stepP:p4:lt-b@L101-L101
CONTRACT_ID: stepP:p4:lt-b
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: K:bp:p4:lattice-count
ROUTES: -
ROUTE_FOR: -
EDGE: K:bp:p4:lattice-count | blueprint-P/parts/p4-pg-measure.tex#stepP:p4:lt-b@L101-L101 | cited at this line (step; \Kref{bp:p4:lattice-count})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpP:p4:two-scale-diophantine-measure
KIND: proposition
TITLE: Two-scale Diophantine measure
STATEMENT_SOURCE: blueprint-P/parts/p4-pg-measure.tex#bpP:p4:two-scale-diophantine-measure@L104-L112
PROOF_SOURCE: blueprint-P/parts/p4-pg-measure.tex#bpP:p4:two-scale-diophantine-measure@L113-L141
CONTRACT_ID: bpP:p4:two-scale-diophantine-measure
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p4:dm-slow, stepP:p4:dm-y, stepP:p4:dm-A, stepP:p4:dm-Bstruct, stepP:p4:dm-B, stepP:p4:dm-sum, bpP:p4:lemma-3-1, bpP:p4:lip-inverse
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p4:dm-slow | blueprint-P/parts/p4-pg-measure.tex#bpP:p4:two-scale-diophantine-measure@L118-L118 | proof step of this result
EDGE: stepP:p4:dm-y | blueprint-P/parts/p4-pg-measure.tex#bpP:p4:two-scale-diophantine-measure@L121-L121 | proof step of this result
EDGE: stepP:p4:dm-A | blueprint-P/parts/p4-pg-measure.tex#bpP:p4:two-scale-diophantine-measure@L125-L125 | proof step of this result
EDGE: stepP:p4:dm-Bstruct | blueprint-P/parts/p4-pg-measure.tex#bpP:p4:two-scale-diophantine-measure@L130-L130 | proof step of this result
EDGE: stepP:p4:dm-B | blueprint-P/parts/p4-pg-measure.tex#bpP:p4:two-scale-diophantine-measure@L133-L133 | proof step of this result
EDGE: stepP:p4:dm-sum | blueprint-P/parts/p4-pg-measure.tex#bpP:p4:two-scale-diophantine-measure@L139-L139 | proof step of this result
EDGE: bpP:p4:lemma-3-1 | blueprint-P/parts/p4-pg-measure.tex#bpP:p4:two-scale-diophantine-measure@L111-L111 | cited at this line (statement; \ref{bpP:p4:lemma-3-1}; in \source: provenance unless consumed)
EDGE: bpP:p4:lip-inverse | blueprint-P/parts/p4-pg-measure.tex#bpP:p4:two-scale-diophantine-measure@L114-L114 | cited at this line (proof; \ref{bpP:p4:lip-inverse})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p4:dm-slow
KIND: step
TITLE: Case $k_1=0$ (slow resonances)
STATEMENT_SOURCE: blueprint-P/parts/p4-pg-measure.tex#stepP:p4:dm-slow@L118-L119
PROOF_SOURCE: blueprint-P/parts/p4-pg-measure.tex#stepP:p4:dm-slow@L118-L119
CONTRACT_ID: stepP:p4:dm-slow
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p4:affine-slab, bpP:p4:lattice-tail
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p4:affine-slab | blueprint-P/parts/p4-pg-measure.tex#stepP:p4:dm-slow@L119-L119 | cited at this line (step; \ref{bpP:p4:affine-slab})
EDGE: bpP:p4:lattice-tail | blueprint-P/parts/p4-pg-measure.tex#stepP:p4:dm-slow@L119-L119 | cited at this line (step; \ref{bpP:p4:lattice-tail})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p4:dm-y
KIND: step
TITLE: Change to frequency coordinates
STATEMENT_SOURCE: blueprint-P/parts/p4-pg-measure.tex#stepP:p4:dm-y@L121-L123
PROOF_SOURCE: blueprint-P/parts/p4-pg-measure.tex#stepP:p4:dm-y@L121-L123
CONTRACT_ID: stepP:p4:dm-y
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p4:lip-inverse, bpP:p4:ext-mvt, K:bp:p1:lip-image
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p4:lip-inverse | blueprint-P/parts/p4-pg-measure.tex#stepP:p4:dm-y@L122-L122 | cited at this line (step; \ref{bpP:p4:lip-inverse})
EDGE: bpP:p4:ext-mvt | blueprint-P/parts/p4-pg-measure.tex#stepP:p4:dm-y@L122-L122 | cited at this line (step; \ref{bpP:p4:ext-mvt})
EDGE: K:bp:p1:lip-image | blueprint-P/parts/p4-pg-measure.tex#stepP:p4:dm-y@L122-L122 | cited at this line (step; \Kref{bp:p1:lip-image})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p4:dm-A
KIND: step
TITLE: Case $\mathcal K_A$ (slicing in $y_j$)
STATEMENT_SOURCE: blueprint-P/parts/p4-pg-measure.tex#stepP:p4:dm-A@L125-L128
PROOF_SOURCE: blueprint-P/parts/p4-pg-measure.tex#stepP:p4:dm-A@L125-L128
CONTRACT_ID: stepP:p4:dm-A
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p4:ext-tonelli, bpP:p4:lattice-tail
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p4:ext-tonelli | blueprint-P/parts/p4-pg-measure.tex#stepP:p4:dm-A@L127-L127 | cited at this line (step; \ref{bpP:p4:ext-tonelli})
EDGE: bpP:p4:lattice-tail | blueprint-P/parts/p4-pg-measure.tex#stepP:p4:dm-A@L127-L127 | cited at this line (step; \ref{bpP:p4:lattice-tail})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p4:dm-Bstruct
KIND: step
TITLE: Structure of $\mathcal K_B$
STATEMENT_SOURCE: blueprint-P/parts/p4-pg-measure.tex#stepP:p4:dm-Bstruct@L130-L131
PROOF_SOURCE: blueprint-P/parts/p4-pg-measure.tex#stepP:p4:dm-Bstruct@L130-L131
CONTRACT_ID: stepP:p4:dm-Bstruct
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p4:dm-B
KIND: step
TITLE: Case $\mathcal K_B$ (slicing in $\xi_j$)
STATEMENT_SOURCE: blueprint-P/parts/p4-pg-measure.tex#stepP:p4:dm-B@L133-L138
PROOF_SOURCE: blueprint-P/parts/p4-pg-measure.tex#stepP:p4:dm-B@L133-L138
CONTRACT_ID: stepP:p4:dm-B
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p4:dm-Bstruct, bpP:p4:lattice-tail
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p4:dm-Bstruct | blueprint-P/parts/p4-pg-measure.tex#stepP:p4:dm-B@L136-L136 | cited at this line (step; \ref{stepP:p4:dm-Bstruct})
EDGE: bpP:p4:lattice-tail | blueprint-P/parts/p4-pg-measure.tex#stepP:p4:dm-B@L136-L136 | cited at this line (step; \ref{bpP:p4:lattice-tail})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p4:dm-sum
KIND: step
TITLE: Sum
STATEMENT_SOURCE: blueprint-P/parts/p4-pg-measure.tex#stepP:p4:dm-sum@L139-L140
PROOF_SOURCE: blueprint-P/parts/p4-pg-measure.tex#stepP:p4:dm-sum@L139-L140
CONTRACT_ID: stepP:p4:dm-sum
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpP:p4:lemma-3-1
KIND: claim
TITLE: What is and is not claimed; status of CP10 Lemma 3.1
STATEMENT_SOURCE: blueprint-P/parts/p4-pg-measure.tex#bpP:p4:lemma-3-1@L143-L145
PROOF_SOURCE: blueprint-P/parts/p4-pg-measure.tex#bpP:p4:lemma-3-1@L143-L145
CONTRACT_ID: bpP:p4:lemma-3-1
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p4:two-scale-diophantine-measure, bpP:p4:lattice-tail, bpP:p4:affine-slab, stepP:p4:dm-y, K:bp:p4:lattice-count, K:bp:p4:lattice-sum, K:bp:p4:slab, K:bp:p4:preimage-measure, K:bp:p4:cover-mono, K:bp:p4:dyadic-approx
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p4:two-scale-diophantine-measure | blueprint-P/parts/p4-pg-measure.tex#bpP:p4:lemma-3-1@L144-L144 | cited at this line (statement; \ref{bpP:p4:two-scale-diophantine-measure})
EDGE: bpP:p4:lattice-tail | blueprint-P/parts/p4-pg-measure.tex#bpP:p4:lemma-3-1@L144-L144 | cited at this line (statement; \ref{bpP:p4:lattice-tail})
EDGE: bpP:p4:affine-slab | blueprint-P/parts/p4-pg-measure.tex#bpP:p4:lemma-3-1@L144-L144 | cited at this line (statement; \ref{bpP:p4:affine-slab})
EDGE: stepP:p4:dm-y | blueprint-P/parts/p4-pg-measure.tex#bpP:p4:lemma-3-1@L144-L144 | cited at this line (statement; \ref{stepP:p4:dm-y})
EDGE: K:bp:p4:lattice-count | blueprint-P/parts/p4-pg-measure.tex#bpP:p4:lemma-3-1@L144-L144 | cited at this line (statement; \Kref{bp:p4:lattice-count})
EDGE: K:bp:p4:lattice-sum | blueprint-P/parts/p4-pg-measure.tex#bpP:p4:lemma-3-1@L144-L144 | cited at this line (statement; \Kref{bp:p4:lattice-sum})
EDGE: K:bp:p4:slab | blueprint-P/parts/p4-pg-measure.tex#bpP:p4:lemma-3-1@L144-L144 | cited at this line (statement; \Kref{bp:p4:slab})
EDGE: K:bp:p4:preimage-measure | blueprint-P/parts/p4-pg-measure.tex#bpP:p4:lemma-3-1@L144-L144 | cited at this line (statement; \Kref{bp:p4:preimage-measure})
EDGE: K:bp:p4:cover-mono | blueprint-P/parts/p4-pg-measure.tex#bpP:p4:lemma-3-1@L144-L144 | cited at this line (statement; \Kref{bp:p4:cover-mono})
EDGE: K:bp:p4:dyadic-approx | blueprint-P/parts/p4-pg-measure.tex#bpP:p4:lemma-3-1@L144-L144 | cited at this line (statement; \Kref{bp:p4:dyadic-approx})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: remark: its justification is inline (confirm, or exclude if not a mathematical claim)

NODE: bpP:p4:tau
KIND: claim
TITLE: The hypothesis $\tau>n$ and the factor $\mu^{\tau-n}$
STATEMENT_SOURCE: blueprint-P/parts/p4-pg-measure.tex#bpP:p4:tau@L147-L149
PROOF_SOURCE: blueprint-P/parts/p4-pg-measure.tex#bpP:p4:tau@L147-L149
CONTRACT_ID: bpP:p4:tau
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p1:dio-sources
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p1:dio-sources | blueprint-P/parts/p4-pg-measure.tex#bpP:p4:tau@L148-L148 | cited at this line (statement; \ref{bpP:p1:dio-sources})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: remark: its justification is inline (confirm, or exclude if not a mathematical claim)

NODE: bpP:p4:domain-collar
KIND: lemma
TITLE: Enlargement of $D$
STATEMENT_SOURCE: blueprint-P/parts/p4-pg-measure.tex#bpP:p4:domain-collar@L156-L159
PROOF_SOURCE: blueprint-P/parts/p4-pg-measure.tex#bpP:p4:domain-collar@L160-L165
CONTRACT_ID: bpP:p4:domain-collar
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p4:dc-prod, stepP:p4:dc-diff, bpP:p4:collar, bpP:p5:param-facts
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p4:dc-prod | blueprint-P/parts/p4-pg-measure.tex#bpP:p4:domain-collar@L161-L161 | proof step of this result
EDGE: stepP:p4:dc-diff | blueprint-P/parts/p4-pg-measure.tex#bpP:p4:domain-collar@L163-L163 | proof step of this result
EDGE: bpP:p4:collar | blueprint-P/parts/p4-pg-measure.tex#bpP:p4:domain-collar@L157-L157 | cited at this line (statement; \ref{bpP:p4:collar})
EDGE: bpP:p5:param-facts | blueprint-P/parts/p4-pg-measure.tex#bpP:p4:domain-collar@L157-L157 | cited at this line (statement; \ref{bpP:p5:param-facts})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p4:dc-prod
KIND: step
TITLE: Product structure
STATEMENT_SOURCE: blueprint-P/parts/p4-pg-measure.tex#stepP:p4:dc-prod@L161-L162
PROOF_SOURCE: blueprint-P/parts/p4-pg-measure.tex#stepP:p4:dc-prod@L161-L162
CONTRACT_ID: stepP:p4:dc-prod
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p4:collar
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p4:collar | blueprint-P/parts/p4-pg-measure.tex#stepP:p4:dc-prod@L162-L162 | cited at this line (step; \ref{bpP:p4:collar})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p4:dc-diff
KIND: step
TITLE: Difference
STATEMENT_SOURCE: blueprint-P/parts/p4-pg-measure.tex#stepP:p4:dc-diff@L163-L164
PROOF_SOURCE: blueprint-P/parts/p4-pg-measure.tex#stepP:p4:dc-diff@L163-L164
CONTRACT_ID: stepP:p4:dc-diff
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p4:collar
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p4:collar | blueprint-P/parts/p4-pg-measure.tex#stepP:p4:dc-diff@L164-L164 | cited at this line (step; \ref{bpP:p4:collar})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpP:p4:disc-measure
KIND: lemma
TITLE: Cell and polar coordinates
STATEMENT_SOURCE: blueprint-P/parts/p4-pg-measure.tex#bpP:p4:disc-measure@L173-L178
PROOF_SOURCE: blueprint-P/parts/p4-pg-measure.tex#bpP:p4:disc-measure@L179-L186
CONTRACT_ID: bpP:p4:disc-measure
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p4:dm-jac, stepP:p4:dm-cell, stepP:p4:dm-shell
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p4:dm-jac | blueprint-P/parts/p4-pg-measure.tex#bpP:p4:disc-measure@L180-L180 | proof step of this result
EDGE: stepP:p4:dm-cell | blueprint-P/parts/p4-pg-measure.tex#bpP:p4:disc-measure@L182-L182 | proof step of this result
EDGE: stepP:p4:dm-shell | blueprint-P/parts/p4-pg-measure.tex#bpP:p4:disc-measure@L184-L184 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p4:dm-jac
KIND: step
TITLE: Jacobian
STATEMENT_SOURCE: blueprint-P/parts/p4-pg-measure.tex#stepP:p4:dm-jac@L180-L181
PROOF_SOURCE: blueprint-P/parts/p4-pg-measure.tex#stepP:p4:dm-jac@L180-L181
CONTRACT_ID: stepP:p4:dm-jac
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p1:typical, bpP:p1:liouville, bpP:p1:ext-area
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p1:typical | blueprint-P/parts/p4-pg-measure.tex#stepP:p4:dm-jac@L181-L181 | cited at this line (step; \ref{bpP:p1:typical})
EDGE: bpP:p1:liouville | blueprint-P/parts/p4-pg-measure.tex#stepP:p4:dm-jac@L181-L181 | cited at this line (step; \ref{bpP:p1:liouville})
EDGE: bpP:p1:ext-area | blueprint-P/parts/p4-pg-measure.tex#stepP:p4:dm-jac@L181-L181 | cited at this line (step; \ref{bpP:p1:ext-area})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p4:dm-cell
KIND: step
TITLE: (b)
STATEMENT_SOURCE: blueprint-P/parts/p4-pg-measure.tex#stepP:p4:dm-cell@L182-L183
PROOF_SOURCE: blueprint-P/parts/p4-pg-measure.tex#stepP:p4:dm-cell@L182-L183
CONTRACT_ID: stepP:p4:dm-cell
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p4:dm-shell
KIND: step
TITLE: (c)
STATEMENT_SOURCE: blueprint-P/parts/p4-pg-measure.tex#stepP:p4:dm-shell@L184-L185
PROOF_SOURCE: blueprint-P/parts/p4-pg-measure.tex#stepP:p4:dm-shell@L184-L185
CONTRACT_ID: stepP:p4:dm-shell
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpP:p4:budget
KIND: proposition
TITLE: Budget on the action side (the right side of (3.1))
STATEMENT_SOURCE: blueprint-P/parts/p4-pg-measure.tex#bpP:p4:budget@L190-L195
PROOF_SOURCE: blueprint-P/parts/p4-pg-measure.tex#bpP:p4:budget@L196-L203
CONTRACT_ID: bpP:p4:budget
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p4:bu-read, stepP:p4:bu-dio, stepP:p4:bu-collar, bpP:p3:two-scale-kam, bpP:p4:domain-collar
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p4:bu-read | blueprint-P/parts/p4-pg-measure.tex#bpP:p4:budget@L197-L197 | proof step of this result
EDGE: stepP:p4:bu-dio | blueprint-P/parts/p4-pg-measure.tex#bpP:p4:budget@L199-L199 | proof step of this result
EDGE: stepP:p4:bu-collar | blueprint-P/parts/p4-pg-measure.tex#bpP:p4:budget@L201-L201 | proof step of this result
EDGE: bpP:p3:two-scale-kam | blueprint-P/parts/p4-pg-measure.tex#bpP:p4:budget@L191-L191 | cited at this line (statement; \ref{bpP:p3:two-scale-kam})
EDGE: bpP:p4:domain-collar | blueprint-P/parts/p4-pg-measure.tex#bpP:p4:budget@L194-L194 | cited at this line (statement; \ref{bpP:p4:domain-collar})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p4:bu-read
KIND: step
TITLE: Reading (3.1)
STATEMENT_SOURCE: blueprint-P/parts/p4-pg-measure.tex#stepP:p4:bu-read@L197-L198
PROOF_SOURCE: blueprint-P/parts/p4-pg-measure.tex#stepP:p4:bu-read@L197-L198
CONTRACT_ID: stepP:p4:bu-read
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p4:bu-dio
KIND: step
TITLE: Non-Diophantine part
STATEMENT_SOURCE: blueprint-P/parts/p4-pg-measure.tex#stepP:p4:bu-dio@L199-L200
PROOF_SOURCE: blueprint-P/parts/p4-pg-measure.tex#stepP:p4:bu-dio@L199-L200
CONTRACT_ID: stepP:p4:bu-dio
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p4:freq, bpP:p4:two-scale-diophantine-measure
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p4:freq | blueprint-P/parts/p4-pg-measure.tex#stepP:p4:bu-dio@L200-L200 | cited at this line (step; \ref{bpP:p4:freq})
EDGE: bpP:p4:two-scale-diophantine-measure | blueprint-P/parts/p4-pg-measure.tex#stepP:p4:bu-dio@L200-L200 | cited at this line (step; \ref{bpP:p4:two-scale-diophantine-measure})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p4:bu-collar
KIND: step
TITLE: Collar part
STATEMENT_SOURCE: blueprint-P/parts/p4-pg-measure.tex#stepP:p4:bu-collar@L201-L202
PROOF_SOURCE: blueprint-P/parts/p4-pg-measure.tex#stepP:p4:bu-collar@L201-L202
CONTRACT_ID: stepP:p4:bu-collar
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p4:domain-collar
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p4:domain-collar | blueprint-P/parts/p4-pg-measure.tex#stepP:p4:bu-collar@L202-L202 | cited at this line (step; \ref{bpP:p4:domain-collar})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpP:p4:cell-budget
KIND: proposition
TITLE: Budget in the frozen cell
STATEMENT_SOURCE: blueprint-P/parts/p4-pg-measure.tex#bpP:p4:cell-budget@L205-L208
PROOF_SOURCE: blueprint-P/parts/p4-pg-measure.tex#bpP:p4:cell-budget@L209-L217
CONTRACT_ID: bpP:p4:cell-budget
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p4:cb-dec, stepP:p4:cb-bad, stepP:p4:cb-lost, bpP:p4:budget
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p4:cb-dec | blueprint-P/parts/p4-pg-measure.tex#bpP:p4:cell-budget@L210-L210 | proof step of this result
EDGE: stepP:p4:cb-bad | blueprint-P/parts/p4-pg-measure.tex#bpP:p4:cell-budget@L212-L212 | proof step of this result
EDGE: stepP:p4:cb-lost | blueprint-P/parts/p4-pg-measure.tex#bpP:p4:cell-budget@L215-L215 | proof step of this result
EDGE: bpP:p4:budget | blueprint-P/parts/p4-pg-measure.tex#bpP:p4:cell-budget@L206-L206 | cited at this line (statement; \ref{bpP:p4:budget})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p4:cb-dec
KIND: step
TITLE: Decomposition
STATEMENT_SOURCE: blueprint-P/parts/p4-pg-measure.tex#stepP:p4:cb-dec@L210-L211
PROOF_SOURCE: blueprint-P/parts/p4-pg-measure.tex#stepP:p4:cb-dec@L210-L211
CONTRACT_ID: stepP:p4:cb-dec
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p4:disc-measure
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p4:disc-measure | blueprint-P/parts/p4-pg-measure.tex#stepP:p4:cb-dec@L211-L211 | cited at this line (step; \ref{bpP:p4:disc-measure})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p4:cb-bad
KIND: step
TITLE: Bad action set
STATEMENT_SOURCE: blueprint-P/parts/p4-pg-measure.tex#stepP:p4:cb-bad@L212-L214
PROOF_SOURCE: blueprint-P/parts/p4-pg-measure.tex#stepP:p4:cb-bad@L212-L214
CONTRACT_ID: stepP:p4:cb-bad
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p4:disc-measure, bpP:p4:collar
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p4:disc-measure | blueprint-P/parts/p4-pg-measure.tex#stepP:p4:cb-bad@L213-L213 | cited at this line (step; \ref{bpP:p4:disc-measure})
EDGE: bpP:p4:collar | blueprint-P/parts/p4-pg-measure.tex#stepP:p4:cb-bad@L214-L214 | cited at this line (step; \ref{bpP:p4:collar})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p4:cb-lost
KIND: step
TITLE: Lost tori
STATEMENT_SOURCE: blueprint-P/parts/p4-pg-measure.tex#stepP:p4:cb-lost@L215-L216
PROOF_SOURCE: blueprint-P/parts/p4-pg-measure.tex#stepP:p4:cb-lost@L215-L216
CONTRACT_ID: stepP:p4:cb-lost
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpP:p4:use5
KIND: claim
TITLE: What Part 5 must supply and check
STATEMENT_SOURCE: blueprint-P/parts/p4-pg-measure.tex#bpP:p4:use5@L219-L221
PROOF_SOURCE: blueprint-P/parts/p4-pg-measure.tex#bpP:p4:use5@L219-L221
CONTRACT_ID: bpP:p4:use5
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p4:disc-measure, bpP:p4:domain-collar, bpP:p5:rK, bpP:p4:lip-compact, bpP:p4:beta-inverse, bpP:p3:two-scale-kam, bpP:p1:torus-union, bpP:p4:cell-budget, bpP:p5:strictness
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p4:disc-measure | blueprint-P/parts/p4-pg-measure.tex#bpP:p4:use5@L220-L220 | cited at this line (statement; \ref{bpP:p4:disc-measure})
EDGE: bpP:p4:domain-collar | blueprint-P/parts/p4-pg-measure.tex#bpP:p4:use5@L220-L220 | cited at this line (statement; \ref{bpP:p4:domain-collar})
EDGE: bpP:p5:rK | blueprint-P/parts/p4-pg-measure.tex#bpP:p4:use5@L220-L220 | cited at this line (statement; \ref{bpP:p5:rK})
EDGE: bpP:p4:lip-compact | blueprint-P/parts/p4-pg-measure.tex#bpP:p4:use5@L220-L220 | cited at this line (statement; \ref{bpP:p4:lip-compact})
EDGE: bpP:p4:beta-inverse | blueprint-P/parts/p4-pg-measure.tex#bpP:p4:use5@L220-L220 | cited at this line (statement; \ref{bpP:p4:beta-inverse})
EDGE: bpP:p3:two-scale-kam | blueprint-P/parts/p4-pg-measure.tex#bpP:p4:use5@L220-L220 | cited at this line (statement; \ref{bpP:p3:two-scale-kam})
EDGE: bpP:p1:torus-union | blueprint-P/parts/p4-pg-measure.tex#bpP:p4:use5@L220-L220 | cited at this line (statement; \ref{bpP:p1:torus-union})
EDGE: bpP:p4:cell-budget | blueprint-P/parts/p4-pg-measure.tex#bpP:p4:use5@L220-L220 | cited at this line (statement; \ref{bpP:p4:cell-budget})
EDGE: bpP:p5:strictness | blueprint-P/parts/p4-pg-measure.tex#bpP:p4:use5@L220-L220 | cited at this line (statement; \ref{bpP:p5:strictness})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: remark: its justification is inline (confirm, or exclude if not a mathematical claim) [pre-extract: dropped reference to bpP:p0:pg, which part p4 proves or sets up]
