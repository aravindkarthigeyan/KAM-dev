NODE: bpP:p8:e-param
KIND: external
TITLE: Holomorphic parameter integrals
STATEMENT_SOURCE: blueprint-P/parts/p8-secular-form.tex#bpP:p8:e-param@L26-L26
PROOF_SOURCE: -
CONTRACT_ID: bpP:p8:e-param
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
NOTE: external item that cites \ref{bpP:p7:e-hol}, \Iref{bpI:p7:x-param}: if it only restates the cited external, exclude it as an alias and point its consumers at the cited node (SPEC)

NODE: bpP:p8:e-diff
KIND: external
TITLE: Differentiation under the integral:
STATEMENT_SOURCE: blueprint-P/parts/p8-secular-form.tex#bpP:p8:e-diff@L27-L27
PROOF_SOURCE: -
CONTRACT_ID: bpP:p8:e-diff
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

NODE: bpP:p8:e-taylor
KIND: external
TITLE: bpP:p8:e-taylor
STATEMENT_SOURCE: blueprint-P/parts/p8-secular-form.tex#bpP:p8:e-taylor@L28-L28
PROOF_SOURCE: -
CONTRACT_ID: bpP:p8:e-taylor
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

NODE: bpP:p8:e-weyl
KIND: external
TITLE: First fundamental theorem for $O(2)$
STATEMENT_SOURCE: blueprint-P/parts/p8-secular-form.tex#bpP:p8:e-weyl@L29-L29
PROOF_SOURCE: -
CONTRACT_ID: bpP:p8:e-weyl
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

NODE: bpP:p8:e-poch
KIND: external
TITLE: bpP:p8:e-poch
STATEMENT_SOURCE: blueprint-P/parts/p8-secular-form.tex#bpP:p8:e-poch@L30-L30
PROOF_SOURCE: -
CONTRACT_ID: bpP:p8:e-poch
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

NODE: bpP:p8:rho
KIND: definition
TITLE: Secular polydisc constants
STATEMENT_SOURCE: blueprint-P/parts/p8-secular-form.tex#bpP:p8:rho@L33-L35
PROOF_SOURCE: -
CONTRACT_ID: bpP:p8:rho
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p7:holomorphic, bpP:p8:perturbation-analytic
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p7:holomorphic | blueprint-P/parts/p8-secular-form.tex#bpP:p8:rho@L34-L34 | cited at this line (statement; \ref{bpP:p7:holomorphic})
EDGE: bpP:p8:perturbation-analytic | blueprint-P/parts/p8-secular-form.tex#bpP:p8:rho@L34-L34 | cited at this line (statement; \ref{bpP:p8:perturbation-analytic})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpP:p8:perturbation-analytic
KIND: proposition
TITLE: Analytic perturbation near the circular torus
STATEMENT_SOURCE: blueprint-P/parts/p8-secular-form.tex#bpP:p8:perturbation-analytic@L39-L46
PROOF_SOURCE: blueprint-P/parts/p8-secular-form.tex#bpP:p8:perturbation-analytic@L47-L52
CONTRACT_ID: bpP:p8:perturbation-analytic
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p8:pa-circ, stepP:p8:pa-unif, stepP:p8:pa-hol, stepP:p8:pa-avg, bpP:p7:holomorphic, bpP:p6:domain
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p8:pa-circ | blueprint-P/parts/p8-secular-form.tex#bpP:p8:perturbation-analytic@L48-L48 | proof step of this result
EDGE: stepP:p8:pa-unif | blueprint-P/parts/p8-secular-form.tex#bpP:p8:perturbation-analytic@L49-L49 | proof step of this result
EDGE: stepP:p8:pa-hol | blueprint-P/parts/p8-secular-form.tex#bpP:p8:perturbation-analytic@L50-L50 | proof step of this result
EDGE: stepP:p8:pa-avg | blueprint-P/parts/p8-secular-form.tex#bpP:p8:perturbation-analytic@L51-L51 | proof step of this result
EDGE: bpP:p7:holomorphic | blueprint-P/parts/p8-secular-form.tex#bpP:p8:perturbation-analytic@L40-L40 | cited at this line (statement; \ref{bpP:p7:holomorphic})
EDGE: bpP:p6:domain | blueprint-P/parts/p8-secular-form.tex#bpP:p8:perturbation-analytic@L42-L42 | cited at this line (statement; \ref{bpP:p6:domain})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p8:pa-circ
KIND: step
TITLE: Value at the circular torus
STATEMENT_SOURCE: blueprint-P/parts/p8-secular-form.tex#stepP:p8:pa-circ@L48-L48
PROOF_SOURCE: blueprint-P/parts/p8-secular-form.tex#stepP:p8:pa-circ@L48-L48
CONTRACT_ID: stepP:p8:pa-circ
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p7:poincare
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p7:poincare | blueprint-P/parts/p8-secular-form.tex#stepP:p8:pa-circ@L48-L48 | cited at this line (step; \ref{bpP:p7:poincare})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p8:pa-unif
KIND: step
TITLE: Uniformity
STATEMENT_SOURCE: blueprint-P/parts/p8-secular-form.tex#stepP:p8:pa-unif@L49-L49
PROOF_SOURCE: blueprint-P/parts/p8-secular-form.tex#stepP:p8:pa-unif@L49-L49
CONTRACT_ID: stepP:p8:pa-unif
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p7:holomorphic, stepP:p8:pa-circ, bpP:p7:o-facts, bpP:p7:poincare
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p7:holomorphic | blueprint-P/parts/p8-secular-form.tex#stepP:p8:pa-unif@L49-L49 | cited at this line (step; \ref{bpP:p7:holomorphic})
EDGE: stepP:p8:pa-circ | blueprint-P/parts/p8-secular-form.tex#stepP:p8:pa-unif@L49-L49 | cited at this line (step; \ref{stepP:p8:pa-circ})
EDGE: bpP:p7:o-facts | blueprint-P/parts/p8-secular-form.tex#stepP:p8:pa-unif@L49-L49 | cited at this line (step; \ref{bpP:p7:o-facts})
EDGE: bpP:p7:poincare | blueprint-P/parts/p8-secular-form.tex#stepP:p8:pa-unif@L49-L49 | cited at this line (step; \ref{bpP:p7:poincare})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p8:pa-hol
KIND: step
TITLE: Holomorphy of $\hat f$
STATEMENT_SOURCE: blueprint-P/parts/p8-secular-form.tex#stepP:p8:pa-hol@L50-L50
PROOF_SOURCE: blueprint-P/parts/p8-secular-form.tex#stepP:p8:pa-hol@L50-L50
CONTRACT_ID: stepP:p8:pa-hol
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p7:e-hol, bpP:p6:split, bpP:p7:holomorphic
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p7:e-hol | blueprint-P/parts/p8-secular-form.tex#stepP:p8:pa-hol@L50-L50 | cited at this line (step; \ref{bpP:p7:e-hol})
EDGE: bpP:p6:split | blueprint-P/parts/p8-secular-form.tex#stepP:p8:pa-hol@L50-L50 | cited at this line (step; \ref{bpP:p6:split})
EDGE: bpP:p7:holomorphic | blueprint-P/parts/p8-secular-form.tex#stepP:p8:pa-hol@L50-L50 | cited at this line (step; \ref{bpP:p7:holomorphic})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p8:pa-avg
KIND: step
TITLE: The average
STATEMENT_SOURCE: blueprint-P/parts/p8-secular-form.tex#stepP:p8:pa-avg@L51-L51
PROOF_SOURCE: blueprint-P/parts/p8-secular-form.tex#stepP:p8:pa-avg@L51-L51
CONTRACT_ID: stepP:p8:pa-avg
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p8:e-param, bpP:p8:e-diff
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p8:e-param | blueprint-P/parts/p8-secular-form.tex#stepP:p8:pa-avg@L51-L51 | cited at this line (step; \ref{bpP:p8:e-param})
EDGE: bpP:p8:e-diff | blueprint-P/parts/p8-secular-form.tex#stepP:p8:pa-avg@L51-L51 | cited at this line (step; \ref{bpP:p8:e-diff})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpP:p8:symmetries
KIND: proposition
TITLE: Symmetries of the chart
STATEMENT_SOURCE: blueprint-P/parts/p8-secular-form.tex#bpP:p8:symmetries@L58-L66
PROOF_SOURCE: blueprint-P/parts/p8-secular-form.tex#bpP:p8:symmetries@L67-L73
CONTRACT_ID: bpP:p8:symmetries
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p8:sy-1, stepP:p8:sy-2, stepP:p8:sy-3, stepP:p8:sy-f, bpP:p6:split
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p8:sy-1 | blueprint-P/parts/p8-secular-form.tex#bpP:p8:symmetries@L69-L69 | proof step of this result
EDGE: stepP:p8:sy-2 | blueprint-P/parts/p8-secular-form.tex#bpP:p8:symmetries@L70-L70 | proof step of this result
EDGE: stepP:p8:sy-3 | blueprint-P/parts/p8-secular-form.tex#bpP:p8:symmetries@L71-L71 | proof step of this result
EDGE: stepP:p8:sy-f | blueprint-P/parts/p8-secular-form.tex#bpP:p8:symmetries@L72-L72 | proof step of this result
EDGE: bpP:p6:split | blueprint-P/parts/p8-secular-form.tex#bpP:p8:symmetries@L65-L65 | cited at this line (statement; \ref{bpP:p6:split})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p8:sy-1
KIND: step
TITLE: (S1)
STATEMENT_SOURCE: blueprint-P/parts/p8-secular-form.tex#stepP:p8:sy-1@L69-L69
PROOF_SOURCE: blueprint-P/parts/p8-secular-form.tex#stepP:p8:sy-1@L69-L69
CONTRACT_ID: stepP:p8:sy-1
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p7:regular-kepler
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p7:regular-kepler | blueprint-P/parts/p8-secular-form.tex#stepP:p8:sy-1@L69-L69 | cited at this line (step; \ref{bpP:p7:regular-kepler})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p8:sy-2
KIND: step
TITLE: (S2)
STATEMENT_SOURCE: blueprint-P/parts/p8-secular-form.tex#stepP:p8:sy-2@L70-L70
PROOF_SOURCE: blueprint-P/parts/p8-secular-form.tex#stepP:p8:sy-2@L70-L70
CONTRACT_ID: stepP:p8:sy-2
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

NODE: stepP:p8:sy-3
KIND: step
TITLE: (S3)
STATEMENT_SOURCE: blueprint-P/parts/p8-secular-form.tex#stepP:p8:sy-3@L71-L71
PROOF_SOURCE: blueprint-P/parts/p8-secular-form.tex#stepP:p8:sy-3@L71-L71
CONTRACT_ID: stepP:p8:sy-3
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

NODE: stepP:p8:sy-f
KIND: step
TITLE: The Kepler functions
STATEMENT_SOURCE: blueprint-P/parts/p8-secular-form.tex#stepP:p8:sy-f@L72-L72
PROOF_SOURCE: blueprint-P/parts/p8-secular-form.tex#stepP:p8:sy-f@L72-L72
CONTRACT_ID: stepP:p8:sy-f
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

NODE: bpP:p8:evenness
KIND: corollary
TITLE: Evenness and invariance of the secular function
STATEMENT_SOURCE: blueprint-P/parts/p8-secular-form.tex#bpP:p8:evenness@L75-L80
PROOF_SOURCE: blueprint-P/parts/p8-secular-form.tex#bpP:p8:evenness@L81-L85
CONTRACT_ID: bpP:p8:evenness
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p8:ev-inv, stepP:p8:ev-tay, stepP:p8:ev-quad
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p8:ev-inv | blueprint-P/parts/p8-secular-form.tex#bpP:p8:evenness@L82-L82 | proof step of this result
EDGE: stepP:p8:ev-tay | blueprint-P/parts/p8-secular-form.tex#bpP:p8:evenness@L83-L83 | proof step of this result
EDGE: stepP:p8:ev-quad | blueprint-P/parts/p8-secular-form.tex#bpP:p8:evenness@L84-L84 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p8:ev-inv
KIND: step
TITLE: Invariances
STATEMENT_SOURCE: blueprint-P/parts/p8-secular-form.tex#stepP:p8:ev-inv@L82-L82
PROOF_SOURCE: blueprint-P/parts/p8-secular-form.tex#stepP:p8:ev-inv@L82-L82
CONTRACT_ID: stepP:p8:ev-inv
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p8:symmetries, bpP:p8:e-diff
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p8:symmetries | blueprint-P/parts/p8-secular-form.tex#stepP:p8:ev-inv@L82-L82 | cited at this line (step; \ref{bpP:p8:symmetries})
EDGE: bpP:p8:e-diff | blueprint-P/parts/p8-secular-form.tex#stepP:p8:ev-inv@L82-L82 | cited at this line (step; \ref{bpP:p8:e-diff})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p8:ev-tay
KIND: step
TITLE: Taylor structure
STATEMENT_SOURCE: blueprint-P/parts/p8-secular-form.tex#stepP:p8:ev-tay@L83-L83
PROOF_SOURCE: blueprint-P/parts/p8-secular-form.tex#stepP:p8:ev-tay@L83-L83
CONTRACT_ID: stepP:p8:ev-tay
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p8:perturbation-analytic
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p8:perturbation-analytic | blueprint-P/parts/p8-secular-form.tex#stepP:p8:ev-tay@L83-L83 | cited at this line (step; \ref{bpP:p8:perturbation-analytic})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p8:ev-quad
KIND: step
TITLE: Quadratic part
STATEMENT_SOURCE: blueprint-P/parts/p8-secular-form.tex#stepP:p8:ev-quad@L84-L84
PROOF_SOURCE: blueprint-P/parts/p8-secular-form.tex#stepP:p8:ev-quad@L84-L84
CONTRACT_ID: stepP:p8:ev-quad
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

NODE: bpP:p8:lemma64
KIND: proposition
TITLE: Lemma 64, exactly
STATEMENT_SOURCE: blueprint-P/parts/p8-secular-form.tex#bpP:p8:lemma64@L89-L99
PROOF_SOURCE: blueprint-P/parts/p8-secular-form.tex#bpP:p8:lemma64@L100-L106
CONTRACT_ID: bpP:p8:lemma64
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p8:l64-a, stepP:p8:l64-b, stepP:p8:l64-c, stepP:p8:l64-d, stepP:p8:l64-e
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p8:l64-a | blueprint-P/parts/p8-secular-form.tex#bpP:p8:lemma64@L101-L101 | proof step of this result
EDGE: stepP:p8:l64-b | blueprint-P/parts/p8-secular-form.tex#bpP:p8:lemma64@L102-L102 | proof step of this result
EDGE: stepP:p8:l64-c | blueprint-P/parts/p8-secular-form.tex#bpP:p8:lemma64@L103-L103 | proof step of this result
EDGE: stepP:p8:l64-d | blueprint-P/parts/p8-secular-form.tex#bpP:p8:lemma64@L104-L104 | proof step of this result
EDGE: stepP:p8:l64-e | blueprint-P/parts/p8-secular-form.tex#bpP:p8:lemma64@L105-L105 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p8:l64-a
KIND: step
TITLE: (a)
STATEMENT_SOURCE: blueprint-P/parts/p8-secular-form.tex#stepP:p8:l64-a@L101-L101
PROOF_SOURCE: blueprint-P/parts/p8-secular-form.tex#stepP:p8:l64-a@L101-L101
CONTRACT_ID: stepP:p8:l64-a
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p6:kepler-part, bpP:p6:hamilton-eqs, bpP:p7:product-chart, bpP:p1:chart-field
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p6:kepler-part | blueprint-P/parts/p8-secular-form.tex#stepP:p8:l64-a@L101-L101 | cited at this line (step; \ref{bpP:p6:kepler-part})
EDGE: bpP:p6:hamilton-eqs | blueprint-P/parts/p8-secular-form.tex#stepP:p8:l64-a@L101-L101 | cited at this line (step; \ref{bpP:p6:hamilton-eqs})
EDGE: bpP:p7:product-chart | blueprint-P/parts/p8-secular-form.tex#stepP:p8:l64-a@L101-L101 | cited at this line (step; \ref{bpP:p7:product-chart})
EDGE: bpP:p1:chart-field | blueprint-P/parts/p8-secular-form.tex#stepP:p8:l64-a@L101-L101 | cited at this line (step; \ref{bpP:p1:chart-field})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p8:l64-b
KIND: step
TITLE: (b)
STATEMENT_SOURCE: blueprint-P/parts/p8-secular-form.tex#stepP:p8:l64-b@L102-L102
PROOF_SOURCE: blueprint-P/parts/p8-secular-form.tex#stepP:p8:l64-b@L102-L102
CONTRACT_ID: stepP:p8:l64-b
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

NODE: stepP:p8:l64-c
KIND: step
TITLE: (c)
STATEMENT_SOURCE: blueprint-P/parts/p8-secular-form.tex#stepP:p8:l64-c@L103-L103
PROOF_SOURCE: blueprint-P/parts/p8-secular-form.tex#stepP:p8:l64-c@L103-L103
CONTRACT_ID: stepP:p8:l64-c
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

NODE: stepP:p8:l64-d
KIND: step
TITLE: (d)
STATEMENT_SOURCE: blueprint-P/parts/p8-secular-form.tex#stepP:p8:l64-d@L104-L104
PROOF_SOURCE: blueprint-P/parts/p8-secular-form.tex#stepP:p8:l64-d@L104-L104
CONTRACT_ID: stepP:p8:l64-d
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p7:po-del, bpP:p7:kepler
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p7:po-del | blueprint-P/parts/p8-secular-form.tex#stepP:p8:l64-d@L104-L104 | cited at this line (step; \ref{stepP:p7:po-del})
EDGE: bpP:p7:kepler | blueprint-P/parts/p8-secular-form.tex#stepP:p8:l64-d@L104-L104 | cited at this line (step; \ref{bpP:p7:kepler})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p8:l64-e
KIND: step
TITLE: (e)
STATEMENT_SOURCE: blueprint-P/parts/p8-secular-form.tex#stepP:p8:l64-e@L105-L105
PROOF_SOURCE: blueprint-P/parts/p8-secular-form.tex#stepP:p8:l64-e@L105-L105
CONTRACT_ID: stepP:p8:l64-e
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

NODE: bpP:p8:laplace-def
KIND: definition
TITLE: Laplace coefficients
STATEMENT_SOURCE: blueprint-P/parts/p8-secular-form.tex#bpP:p8:laplace-def@L110-L114
PROOF_SOURCE: -
CONTRACT_ID: bpP:p8:laplace-def
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

NODE: bpP:p8:laplace
KIND: lemma
TITLE: Series; local holomorphy
STATEMENT_SOURCE: blueprint-P/parts/p8-secular-form.tex#bpP:p8:laplace@L116-L120
PROOF_SOURCE: blueprint-P/parts/p8-secular-form.tex#bpP:p8:laplace@L121-L124
CONTRACT_ID: bpP:p8:laplace
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p8:la-exp, stepP:p8:la-conv
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p8:la-exp | blueprint-P/parts/p8-secular-form.tex#bpP:p8:laplace@L122-L122 | proof step of this result
EDGE: stepP:p8:la-conv | blueprint-P/parts/p8-secular-form.tex#bpP:p8:laplace@L123-L123 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p8:la-exp
KIND: step
TITLE: Expansion
STATEMENT_SOURCE: blueprint-P/parts/p8-secular-form.tex#stepP:p8:la-exp@L122-L122
PROOF_SOURCE: blueprint-P/parts/p8-secular-form.tex#stepP:p8:la-exp@L122-L122
CONTRACT_ID: stepP:p8:la-exp
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p8:e-poch
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p8:e-poch | blueprint-P/parts/p8-secular-form.tex#stepP:p8:la-exp@L122-L122 | cited at this line (step; \ref{bpP:p8:e-poch})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p8:la-conv
KIND: step
TITLE: Convergence
STATEMENT_SOURCE: blueprint-P/parts/p8-secular-form.tex#stepP:p8:la-conv@L123-L123
PROOF_SOURCE: blueprint-P/parts/p8-secular-form.tex#stepP:p8:la-conv@L123-L123
CONTRACT_ID: stepP:p8:la-conv
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

NODE: bpP:p8:no76
KIND: claim
TITLE: Fej04r Lemma 76 is not used
STATEMENT_SOURCE: blueprint-P/parts/p8-secular-form.tex#bpP:p8:no76@L125-L127
PROOF_SOURCE: blueprint-P/parts/p8-secular-form.tex#bpP:p8:no76@L125-L127
CONTRACT_ID: bpP:p8:no76
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p8:laplace
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p8:laplace | blueprint-P/parts/p8-secular-form.tex#bpP:p8:no76@L126-L126 | cited at this line (statement; \ref{bpP:p8:laplace})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: remark: its justification is inline (confirm, or exclude if not a mathematical claim)

NODE: bpP:p8:identities
KIND: lemma
TITLE: Two identities
STATEMENT_SOURCE: blueprint-P/parts/p8-secular-form.tex#bpP:p8:identities@L129-L135
PROOF_SOURCE: blueprint-P/parts/p8-secular-form.tex#bpP:p8:identities@L136-L140
CONTRACT_ID: bpP:p8:identities
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p8:id-1, stepP:p8:id-2, bpP:p8:laplace
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p8:id-1 | blueprint-P/parts/p8-secular-form.tex#bpP:p8:identities@L138-L138 | proof step of this result
EDGE: stepP:p8:id-2 | blueprint-P/parts/p8-secular-form.tex#bpP:p8:identities@L139-L139 | proof step of this result
EDGE: bpP:p8:laplace | blueprint-P/parts/p8-secular-form.tex#bpP:p8:identities@L137-L137 | cited at this line (proof; \ref{bpP:p8:laplace})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p8:id-1
KIND: step
TITLE: (I1)
STATEMENT_SOURCE: blueprint-P/parts/p8-secular-form.tex#stepP:p8:id-1@L138-L138
PROOF_SOURCE: blueprint-P/parts/p8-secular-form.tex#stepP:p8:id-1@L138-L138
CONTRACT_ID: stepP:p8:id-1
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

NODE: stepP:p8:id-2
KIND: step
TITLE: (I2)
STATEMENT_SOURCE: blueprint-P/parts/p8-secular-form.tex#stepP:p8:id-2@L139-L139
PROOF_SOURCE: blueprint-P/parts/p8-secular-form.tex#stepP:p8:id-2@L139-L139
CONTRACT_ID: stepP:p8:id-2
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

NODE: bpP:p8:coeffs
KIND: definition
TITLE: Secular coefficients
STATEMENT_SOURCE: blueprint-P/parts/p8-secular-form.tex#bpP:p8:coeffs@L144-L150
PROOF_SOURCE: -
CONTRACT_ID: bpP:p8:coeffs
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p8:laplace
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p8:laplace | blueprint-P/parts/p8-secular-form.tex#bpP:p8:coeffs@L149-L149 | cited at this line (statement; \ref{bpP:p8:laplace})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpP:p8:quadratic-form
KIND: theorem
TITLE: Quadratic part of the secular function
STATEMENT_SOURCE: blueprint-P/parts/p8-secular-form.tex#bpP:p8:quadratic-form@L152-L158
PROOF_SOURCE: blueprint-P/parts/p8-secular-form.tex#bpP:p8:quadratic-form@L159-L171
CONTRACT_ID: bpP:p8:quadratic-form
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p8:qf-pair, stepP:p8:qf-scale, stepP:p8:qf-c0, stepP:p8:qf-diag, stepP:p8:qf-cross, stepP:p8:qf-assembly, stepP:p8:qf-diag2, bpP:p8:perturbation-analytic, bpP:p8:evenness, bpP:p8:factor-half
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p8:qf-pair | blueprint-P/parts/p8-secular-form.tex#bpP:p8:quadratic-form@L160-L160 | proof step of this result
EDGE: stepP:p8:qf-scale | blueprint-P/parts/p8-secular-form.tex#bpP:p8:quadratic-form@L161-L161 | proof step of this result
EDGE: stepP:p8:qf-c0 | blueprint-P/parts/p8-secular-form.tex#bpP:p8:quadratic-form@L162-L162 | proof step of this result
EDGE: stepP:p8:qf-diag | blueprint-P/parts/p8-secular-form.tex#bpP:p8:quadratic-form@L163-L163 | proof step of this result
EDGE: stepP:p8:qf-cross | blueprint-P/parts/p8-secular-form.tex#bpP:p8:quadratic-form@L166-L166 | proof step of this result
EDGE: stepP:p8:qf-assembly | blueprint-P/parts/p8-secular-form.tex#bpP:p8:quadratic-form@L169-L169 | proof step of this result
EDGE: stepP:p8:qf-diag2 | blueprint-P/parts/p8-secular-form.tex#bpP:p8:quadratic-form@L170-L170 | proof step of this result
EDGE: bpP:p8:perturbation-analytic | blueprint-P/parts/p8-secular-form.tex#bpP:p8:quadratic-form@L153-L153 | cited at this line (statement; \ref{bpP:p8:perturbation-analytic})
EDGE: bpP:p8:evenness | blueprint-P/parts/p8-secular-form.tex#bpP:p8:quadratic-form@L155-L155 | cited at this line (statement; \ref{bpP:p8:eq:quad-struct})
EDGE: bpP:p8:factor-half | blueprint-P/parts/p8-secular-form.tex#bpP:p8:quadratic-form@L156-L156 | cited at this line (statement; \ref{bpP:p8:factor-half}; in \source: provenance unless consumed)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p8:qf-pair
KIND: step
TITLE: Pair decomposition
STATEMENT_SOURCE: blueprint-P/parts/p8-secular-form.tex#stepP:p8:qf-pair@L160-L160
PROOF_SOURCE: blueprint-P/parts/p8-secular-form.tex#stepP:p8:qf-pair@L160-L160
CONTRACT_ID: stepP:p8:qf-pair
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p8:evenness, bpP:p8:e-weyl
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p8:evenness | blueprint-P/parts/p8-secular-form.tex#stepP:p8:qf-pair@L160-L160 | cited at this line (step; \ref{bpP:p8:evenness})
EDGE: bpP:p8:e-weyl | blueprint-P/parts/p8-secular-form.tex#stepP:p8:qf-pair@L160-L160 | cited at this line (step; \ref{bpP:p8:e-weyl})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p8:qf-scale
KIND: step
TITLE: Scaling
STATEMENT_SOURCE: blueprint-P/parts/p8-secular-form.tex#stepP:p8:qf-scale@L161-L161
PROOF_SOURCE: blueprint-P/parts/p8-secular-form.tex#stepP:p8:qf-scale@L161-L161
CONTRACT_ID: stepP:p8:qf-scale
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

NODE: stepP:p8:qf-c0
KIND: step
TITLE: $C_0$
STATEMENT_SOURCE: blueprint-P/parts/p8-secular-form.tex#stepP:p8:qf-c0@L162-L162
PROOF_SOURCE: blueprint-P/parts/p8-secular-form.tex#stepP:p8:qf-c0@L162-L162
CONTRACT_ID: stepP:p8:qf-c0
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p7:poincare
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p7:poincare | blueprint-P/parts/p8-secular-form.tex#stepP:p8:qf-c0@L162-L162 | cited at this line (step; \ref{bpP:p7:poincare})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p8:qf-diag
KIND: step
TITLE: Diagonal coefficients
STATEMENT_SOURCE: blueprint-P/parts/p8-secular-form.tex#stepP:p8:qf-diag@L163-L165
PROOF_SOURCE: blueprint-P/parts/p8-secular-form.tex#stepP:p8:qf-diag@L163-L165
CONTRACT_ID: stepP:p8:qf-diag
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p7:kepler, bpP:p7:o-facts, I:bpI:p7:orbit-identities
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p7:kepler | blueprint-P/parts/p8-secular-form.tex#stepP:p8:qf-diag@L163-L163 | cited at this line (step; \ref{bpP:p7:kepler})
EDGE: bpP:p7:o-facts | blueprint-P/parts/p8-secular-form.tex#stepP:p8:qf-diag@L163-L163 | cited at this line (step; \ref{bpP:p7:o-facts})
EDGE: I:bpI:p7:orbit-identities | blueprint-P/parts/p8-secular-form.tex#stepP:p8:qf-diag@L163-L163 | cited at this line (step; \Iref{bpI:p7:orbit-identities})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p8:qf-cross
KIND: step
TITLE: Cross coefficient
STATEMENT_SOURCE: blueprint-P/parts/p8-secular-form.tex#stepP:p8:qf-cross@L166-L168
PROOF_SOURCE: blueprint-P/parts/p8-secular-form.tex#stepP:p8:qf-cross@L166-L168
CONTRACT_ID: stepP:p8:qf-cross
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p8:e-diff, bpP:p7:regular-kepler, bpP:p8:laplace-def
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p8:e-diff | blueprint-P/parts/p8-secular-form.tex#stepP:p8:qf-cross@L166-L166 | cited at this line (step; \ref{bpP:p8:e-diff})
EDGE: bpP:p7:regular-kepler | blueprint-P/parts/p8-secular-form.tex#stepP:p8:qf-cross@L166-L166 | cited at this line (step; \ref{bpP:p7:regular-kepler})
EDGE: bpP:p8:laplace-def | blueprint-P/parts/p8-secular-form.tex#stepP:p8:qf-cross@L166-L166 | cited at this line (step; \ref{bpP:p8:laplace-def})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p8:qf-assembly
KIND: step
TITLE: Assembly
STATEMENT_SOURCE: blueprint-P/parts/p8-secular-form.tex#stepP:p8:qf-assembly@L169-L169
PROOF_SOURCE: blueprint-P/parts/p8-secular-form.tex#stepP:p8:qf-assembly@L169-L169
CONTRACT_ID: stepP:p8:qf-assembly
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p8:evenness, bpP:p8:e-taylor
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p8:evenness | blueprint-P/parts/p8-secular-form.tex#stepP:p8:qf-assembly@L169-L169 | cited at this line (step; \ref{bpP:p8:evenness})
EDGE: bpP:p8:e-taylor | blueprint-P/parts/p8-secular-form.tex#stepP:p8:qf-assembly@L169-L169 | cited at this line (step; \ref{bpP:p8:e-taylor})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p8:qf-diag2
KIND: step
TITLE: Diagonalisation
STATEMENT_SOURCE: blueprint-P/parts/p8-secular-form.tex#stepP:p8:qf-diag2@L170-L170
PROOF_SOURCE: blueprint-P/parts/p8-secular-form.tex#stepP:p8:qf-diag2@L170-L170
CONTRACT_ID: stepP:p8:qf-diag2
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

NODE: bpP:p8:factor-half
KIND: claim
TITLE: Factor $\frac12$ against the source, dictionary, numerical evidence
STATEMENT_SOURCE: blueprint-P/parts/p8-secular-form.tex#bpP:p8:factor-half@L173-L178
PROOF_SOURCE: blueprint-P/parts/p8-secular-form.tex#bpP:p8:factor-half@L173-L178
CONTRACT_ID: bpP:p8:factor-half
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p8:coeffs, bpP:p8:quadratic-form, bpP:p7:poincare-def
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p8:coeffs | blueprint-P/parts/p8-secular-form.tex#bpP:p8:factor-half@L174-L174 | cited at this line (statement; \ref{bpP:p8:coeffs})
EDGE: bpP:p8:quadratic-form | blueprint-P/parts/p8-secular-form.tex#bpP:p8:factor-half@L175-L175 | cited at this line (statement; \ref{bpP:p8:quadratic-form})
EDGE: bpP:p7:poincare-def | blueprint-P/parts/p8-secular-form.tex#bpP:p8:factor-half@L177-L177 | cited at this line (statement; \ref{bpP:p7:poincare-def})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: remark: its justification is inline (confirm, or exclude if not a mathematical claim)

NODE: bpP:p8:identification
KIND: theorem
TITLE: Identification of $\langle H_{\rm mov}\rangle$ and $\langle H_{\rm fix}\rangle$
STATEMENT_SOURCE: blueprint-P/parts/p8-secular-form.tex#bpP:p8:identification@L182-L189
PROOF_SOURCE: blueprint-P/parts/p8-secular-form.tex#bpP:p8:identification@L190-L194
CONTRACT_ID: bpP:p8:identification
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p8:id-diff, stepP:p8:id-avg, stepP:p8:id-int, bpP:p8:perturbation-analytic, bpP:p6:split
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p8:id-diff | blueprint-P/parts/p8-secular-form.tex#bpP:p8:identification@L191-L191 | proof step of this result
EDGE: stepP:p8:id-avg | blueprint-P/parts/p8-secular-form.tex#bpP:p8:identification@L192-L192 | proof step of this result
EDGE: stepP:p8:id-int | blueprint-P/parts/p8-secular-form.tex#bpP:p8:identification@L193-L193 | proof step of this result
EDGE: bpP:p8:perturbation-analytic | blueprint-P/parts/p8-secular-form.tex#bpP:p8:identification@L187-L187 | cited at this line (statement; \ref{bpP:p8:perturbation-analytic})
EDGE: bpP:p6:split | blueprint-P/parts/p8-secular-form.tex#bpP:p8:identification@L188-L188 | cited at this line (statement; \ref{bpP:p6:split}; in \source: provenance unless consumed)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p8:id-diff
KIND: step
TITLE: Difference
STATEMENT_SOURCE: blueprint-P/parts/p8-secular-form.tex#stepP:p8:id-diff@L191-L191
PROOF_SOURCE: blueprint-P/parts/p8-secular-form.tex#stepP:p8:id-diff@L191-L191
CONTRACT_ID: stepP:p8:id-diff
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p6:split
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p6:split | blueprint-P/parts/p8-secular-form.tex#stepP:p8:id-diff@L191-L191 | cited at this line (step; \ref{bpP:p6:split})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p8:id-avg
KIND: step
TITLE: Average
STATEMENT_SOURCE: blueprint-P/parts/p8-secular-form.tex#stepP:p8:id-avg@L192-L192
PROOF_SOURCE: blueprint-P/parts/p8-secular-form.tex#stepP:p8:id-avg@L192-L192
CONTRACT_ID: stepP:p8:id-avg
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p8:lemma64
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p8:lemma64 | blueprint-P/parts/p8-secular-form.tex#stepP:p8:id-avg@L192-L192 | cited at this line (step; \ref{bpP:p8:lemma64})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p8:id-int
KIND: step
TITLE: Integrability
STATEMENT_SOURCE: blueprint-P/parts/p8-secular-form.tex#stepP:p8:id-int@L193-L193
PROOF_SOURCE: blueprint-P/parts/p8-secular-form.tex#stepP:p8:id-int@L193-L193
CONTRACT_ID: stepP:p8:id-int
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p8:perturbation-analytic
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p8:perturbation-analytic | blueprint-P/parts/p8-secular-form.tex#stepP:p8:id-int@L193-L193 | cited at this line (step; \ref{bpP:p8:perturbation-analytic})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpP:p8:same-jets
KIND: corollary
TITLE: Same jets, same quadratic form, same Hamilton equations
STATEMENT_SOURCE: blueprint-P/parts/p8-secular-form.tex#bpP:p8:same-jets@L196-L204
PROOF_SOURCE: blueprint-P/parts/p8-secular-form.tex#bpP:p8:same-jets@L205-L207
CONTRACT_ID: bpP:p8:same-jets
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p8:quartic, bpP:p7:product-chart, bpP:p0:birkhoff#HasSecularBirkhoffForm, bpP:p8:identification, bpP:p8:quadratic-form, bpP:p0:secavg#secularAverage
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p8:quartic | blueprint-P/parts/p8-secular-form.tex#bpP:p8:same-jets@L200-L200 | cited at this line (statement; \ref{bpP:p8:quartic})
EDGE: bpP:p7:product-chart | blueprint-P/parts/p8-secular-form.tex#bpP:p8:same-jets@L201-L201 | cited at this line (statement; \ref{bpP:p7:product-chart})
EDGE: bpP:p0:birkhoff#HasSecularBirkhoffForm | blueprint-P/parts/p8-secular-form.tex#bpP:p8:same-jets@L202-L202 | cited at this line (statement; \ref{bpP:p0:birkhoff})
EDGE: bpP:p8:identification | blueprint-P/parts/p8-secular-form.tex#bpP:p8:same-jets@L206-L206 | cited at this line (proof; \ref{bpP:p8:identification})
EDGE: bpP:p8:quadratic-form | blueprint-P/parts/p8-secular-form.tex#bpP:p8:same-jets@L206-L206 | cited at this line (proof; \ref{bpP:p8:quadratic-form})
EDGE: bpP:p0:secavg#secularAverage | blueprint-P/parts/p8-secular-form.tex#bpP:p8:same-jets@L206-L206 | cited at this line (proof; \ref{bpP:p0:secavg})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpP:p8:use11
KIND: claim
TITLE: Use in Part 11
STATEMENT_SOURCE: blueprint-P/parts/p8-secular-form.tex#bpP:p8:use11@L208-L210
PROOF_SOURCE: blueprint-P/parts/p8-secular-form.tex#bpP:p8:use11@L208-L210
CONTRACT_ID: bpP:p8:use11
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p6:split
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p6:split | blueprint-P/parts/p8-secular-form.tex#bpP:p8:use11@L209-L209 | cited at this line (statement; \ref{bpP:p6:split})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: remark: its justification is inline (confirm, or exclude if not a mathematical claim)

NODE: bpP:p8:quartic
KIND: proposition
TITLE: Quartic jet
STATEMENT_SOURCE: blueprint-P/parts/p8-secular-form.tex#bpP:p8:quartic@L216-L229
PROOF_SOURCE: blueprint-P/parts/p8-secular-form.tex#bpP:p8:quartic@L230-L235
CONTRACT_ID: bpP:p8:quartic
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p8:q4-str, stepP:p8:q4-a, stepP:p8:q4-b, stepP:p8:q4-c, bpP:p8:same-jets, bpP:p7:poincare-def, bpP:p8:cp11-check, bpP:p8:quadratic-form, bpP:p8:evenness
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p8:q4-str | blueprint-P/parts/p8-secular-form.tex#bpP:p8:quartic@L231-L231 | proof step of this result
EDGE: stepP:p8:q4-a | blueprint-P/parts/p8-secular-form.tex#bpP:p8:quartic@L232-L232 | proof step of this result
EDGE: stepP:p8:q4-b | blueprint-P/parts/p8-secular-form.tex#bpP:p8:quartic@L233-L233 | proof step of this result
EDGE: stepP:p8:q4-c | blueprint-P/parts/p8-secular-form.tex#bpP:p8:quartic@L234-L234 | proof step of this result
EDGE: bpP:p8:same-jets | blueprint-P/parts/p8-secular-form.tex#bpP:p8:quartic@L217-L217 | cited at this line (statement; \ref{bpP:p8:same-jets})
EDGE: bpP:p7:poincare-def | blueprint-P/parts/p8-secular-form.tex#bpP:p8:quartic@L221-L221 | cited at this line (statement; \ref{bpP:p7:poincare-def})
EDGE: bpP:p8:cp11-check | blueprint-P/parts/p8-secular-form.tex#bpP:p8:quartic@L225-L225 | cited at this line (statement; \ref{bpP:p8:cp11-check})
EDGE: bpP:p8:quadratic-form | blueprint-P/parts/p8-secular-form.tex#bpP:p8:quartic@L225-L225 | cited at this line (statement; \ref{bpP:p8:quadratic-form})
EDGE: bpP:p8:evenness | blueprint-P/parts/p8-secular-form.tex#bpP:p8:quartic@L227-L227 | cited at this line (statement; \ref{bpP:p8:evenness}; in \source: provenance unless consumed)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p8:q4-str
KIND: step
TITLE: Structure
STATEMENT_SOURCE: blueprint-P/parts/p8-secular-form.tex#stepP:p8:q4-str@L231-L231
PROOF_SOURCE: blueprint-P/parts/p8-secular-form.tex#stepP:p8:q4-str@L231-L231
CONTRACT_ID: stepP:p8:q4-str
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p8:evenness, bpP:p8:perturbation-analytic, stepP:p8:qf-pair, bpP:p8:e-weyl
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p8:evenness | blueprint-P/parts/p8-secular-form.tex#stepP:p8:q4-str@L231-L231 | cited at this line (step; \ref{bpP:p8:evenness})
EDGE: bpP:p8:perturbation-analytic | blueprint-P/parts/p8-secular-form.tex#stepP:p8:q4-str@L231-L231 | cited at this line (step; \ref{bpP:p8:perturbation-analytic})
EDGE: stepP:p8:qf-pair | blueprint-P/parts/p8-secular-form.tex#stepP:p8:q4-str@L231-L231 | cited at this line (step; \ref{stepP:p8:qf-pair})
EDGE: bpP:p8:e-weyl | blueprint-P/parts/p8-secular-form.tex#stepP:p8:q4-str@L231-L231 | cited at this line (step; \ref{bpP:p8:e-weyl})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p8:q4-a
KIND: step
TITLE: (a)
STATEMENT_SOURCE: blueprint-P/parts/p8-secular-form.tex#stepP:p8:q4-a@L232-L232
PROOF_SOURCE: blueprint-P/parts/p8-secular-form.tex#stepP:p8:q4-a@L232-L232
CONTRACT_ID: stepP:p8:q4-a
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p7:poincare-def, bpP:p8:perturbation-analytic, stepP:p8:pa-circ
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p7:poincare-def | blueprint-P/parts/p8-secular-form.tex#stepP:p8:q4-a@L232-L232 | cited at this line (step; \ref{bpP:p7:poincare-def})
EDGE: bpP:p8:perturbation-analytic | blueprint-P/parts/p8-secular-form.tex#stepP:p8:q4-a@L232-L232 | cited at this line (step; \ref{bpP:p8:perturbation-analytic})
EDGE: stepP:p8:pa-circ | blueprint-P/parts/p8-secular-form.tex#stepP:p8:q4-a@L232-L232 | cited at this line (step; \ref{stepP:p8:pa-circ})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p8:q4-b
KIND: step
TITLE: (b)
STATEMENT_SOURCE: blueprint-P/parts/p8-secular-form.tex#stepP:p8:q4-b@L233-L233
PROOF_SOURCE: blueprint-P/parts/p8-secular-form.tex#stepP:p8:q4-b@L233-L233
CONTRACT_ID: stepP:p8:q4-b
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p8:qf-diag
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p8:qf-diag | blueprint-P/parts/p8-secular-form.tex#stepP:p8:q4-b@L233-L233 | cited at this line (step; \ref{stepP:p8:qf-diag})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p8:q4-c
KIND: step
TITLE: (c)
STATEMENT_SOURCE: blueprint-P/parts/p8-secular-form.tex#stepP:p8:q4-c@L234-L234
PROOF_SOURCE: blueprint-P/parts/p8-secular-form.tex#stepP:p8:q4-c@L234-L234
CONTRACT_ID: stepP:p8:q4-c
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p8:cp11-check
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p8:cp11-check | blueprint-P/parts/p8-secular-form.tex#stepP:p8:q4-c@L234-L234 | cited at this line (step; \ref{bpP:p8:cp11-check})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpP:p8:cp11-check
KIND: claim
TITLE: Check of CP11 (B.6) $r_1$; suspected erratum E-P-CP11-2
STATEMENT_SOURCE: blueprint-P/parts/p8-secular-form.tex#bpP:p8:cp11-check@L237-L239
PROOF_SOURCE: blueprint-P/parts/p8-secular-form.tex#bpP:p8:cp11-check@L237-L239
CONTRACT_ID: bpP:p8:cp11-check
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p8:quartic
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p8:quartic | blueprint-P/parts/p8-secular-form.tex#bpP:p8:cp11-check@L238-L238 | cited at this line (statement; \ref{bpP:p8:quartic})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: remark: its justification is inline (confirm, or exclude if not a mathematical claim)
