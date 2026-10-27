NODE: bpN:p1:ext-linalg
KIND: external
TITLE: Finite-dimensional linear algebra
STATEMENT_SOURCE: blueprint-N/parts/p1-interfaces.tex#bpN:p1:ext-linalg@L18-L21
PROOF_SOURCE: -
CONTRACT_ID: bpN:p1:ext-linalg
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

NODE: bpN:p1:ext-norms
KIND: external
TITLE: Norm comparison and Cauchy--Schwarz
STATEMENT_SOURCE: blueprint-N/parts/p1-interfaces.tex#bpN:p1:ext-norms@L22-L23
PROOF_SOURCE: -
CONTRACT_ID: bpN:p1:ext-norms
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

NODE: bpN:p1:ext-restrict
KIND: external
TITLE: Restriction of scalars and chain rule
STATEMENT_SOURCE: blueprint-N/parts/p1-interfaces.tex#bpN:p1:ext-restrict@L24-L26
PROOF_SOURCE: -
CONTRACT_ID: bpN:p1:ext-restrict
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

NODE: bpN:p1:ext-prod
KIND: external
TITLE: Product rule
STATEMENT_SOURCE: blueprint-N/parts/p1-interfaces.tex#bpN:p1:ext-prod@L27-L28
PROOF_SOURCE: -
CONTRACT_ID: bpN:p1:ext-prod
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

NODE: bpN:p1:norm-compare
KIND: lemma
TITLE: Norm and lattice comparisons
STATEMENT_SOURCE: blueprint-N/parts/p1-interfaces.tex#bpN:p1:norm-compare@L35-L39
PROOF_SOURCE: blueprint-N/parts/p1-interfaces.tex#bpN:p1:norm-compare@L40-L44
CONTRACT_ID: bpN:p1:norm-compare
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p1:nc-vec, stepN:p1:nc-mat, bpN:p8:direction, bpN:p8:cutoffs, bpN:p1:ext-norms
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p1:nc-vec | blueprint-N/parts/p1-interfaces.tex#bpN:p1:norm-compare@L41-L41 | proof step of this result
EDGE: stepN:p1:nc-mat | blueprint-N/parts/p1-interfaces.tex#bpN:p1:norm-compare@L43-L43 | proof step of this result
EDGE: bpN:p8:direction | blueprint-N/parts/p1-interfaces.tex#bpN:p1:norm-compare@L37-L37 | cited at this line (statement; \ref{bpN:p8:direction})
EDGE: bpN:p8:cutoffs | blueprint-N/parts/p1-interfaces.tex#bpN:p1:norm-compare@L37-L37 | cited at this line (statement; \ref{bpN:p8:cutoffs})
EDGE: bpN:p1:ext-norms | blueprint-N/parts/p1-interfaces.tex#bpN:p1:norm-compare@L38-L38 | cited at this line (statement; \ref{bpN:p1:ext-norms}; in \source: provenance unless consumed)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p1:nc-vec
KIND: step
TITLE: Vectors
STATEMENT_SOURCE: blueprint-N/parts/p1-interfaces.tex#stepN:p1:nc-vec@L41-L41
PROOF_SOURCE: blueprint-N/parts/p1-interfaces.tex#stepN:p1:nc-vec@L41-L41
CONTRACT_ID: stepN:p1:nc-vec
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p1:ext-norms
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p1:ext-norms | blueprint-N/parts/p1-interfaces.tex#stepN:p1:nc-vec@L41-L41 | cited at this line (step; \ref{bpN:p1:ext-norms})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p1:nc-mat
KIND: step
TITLE: Matrices
STATEMENT_SOURCE: blueprint-N/parts/p1-interfaces.tex#stepN:p1:nc-mat@L43-L43
PROOF_SOURCE: blueprint-N/parts/p1-interfaces.tex#stepN:p1:nc-mat@L43-L43
CONTRACT_ID: stepN:p1:nc-mat
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

NODE: bpN:p1:realdomain
KIND: lemma
TITLE: Domains
STATEMENT_SOURCE: blueprint-N/parts/p1-interfaces.tex#bpN:p1:realdomain@L46-L57
PROOF_SOURCE: blueprint-N/parts/p1-interfaces.tex#bpN:p1:realdomain@L58-L64
CONTRACT_ID: bpN:p1:realdomain
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p1:rd-real, stepN:p1:rd-open, stepN:p1:rd-euclid, bpN:p0:rdomain-eq, bpN:p4:domains
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p1:rd-real | blueprint-N/parts/p1-interfaces.tex#bpN:p1:realdomain@L59-L59 | proof step of this result
EDGE: stepN:p1:rd-open | blueprint-N/parts/p1-interfaces.tex#bpN:p1:realdomain@L61-L61 | proof step of this result
EDGE: stepN:p1:rd-euclid | blueprint-N/parts/p1-interfaces.tex#bpN:p1:realdomain@L63-L63 | proof step of this result
EDGE: bpN:p0:rdomain-eq | blueprint-N/parts/p1-interfaces.tex#bpN:p1:realdomain@L49-L49 | cited at this line (statement; \ref{bpN:p0:rdomain-eq})
EDGE: bpN:p4:domains | blueprint-N/parts/p1-interfaces.tex#bpN:p1:realdomain@L52-L52 | cited at this line (statement; \ref{bpN:p4:domains})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p1:rd-real
KIND: step
TITLE: Real tube
STATEMENT_SOURCE: blueprint-N/parts/p1-interfaces.tex#stepN:p1:rd-real@L59-L59
PROOF_SOURCE: blueprint-N/parts/p1-interfaces.tex#stepN:p1:rd-real@L59-L59
CONTRACT_ID: stepN:p1:rd-real
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

NODE: stepN:p1:rd-open
KIND: step
TITLE: Openness and real points
STATEMENT_SOURCE: blueprint-N/parts/p1-interfaces.tex#stepN:p1:rd-open@L61-L61
PROOF_SOURCE: blueprint-N/parts/p1-interfaces.tex#stepN:p1:rd-open@L61-L61
CONTRACT_ID: stepN:p1:rd-open
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p1:rd-real
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p1:rd-real | blueprint-N/parts/p1-interfaces.tex#stepN:p1:rd-open@L61-L61 | cited at this line (step; \ref{stepN:p1:rd-real})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p1:rd-euclid
KIND: step
TITLE: Max-norm tubes
STATEMENT_SOURCE: blueprint-N/parts/p1-interfaces.tex#stepN:p1:rd-euclid@L63-L63
PROOF_SOURCE: blueprint-N/parts/p1-interfaces.tex#stepN:p1:rd-euclid@L63-L63
CONTRACT_ID: stepN:p1:rd-euclid
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p1:ext-norms
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p1:ext-norms | blueprint-N/parts/p1-interfaces.tex#stepN:p1:rd-euclid@L63-L63 | cited at this line (step; \ref{bpN:p1:ext-norms})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpN:p1:holo-real
KIND: lemma
TITLE: Real smoothness and real Hamiltonian field
STATEMENT_SOURCE: blueprint-N/parts/p1-interfaces.tex#bpN:p1:holo-real@L72-L85
PROOF_SOURCE: blueprint-N/parts/p1-interfaces.tex#bpN:p1:holo-real@L86-L98
CONTRACT_ID: bpN:p1:holo-real
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p1:hr-holo, stepN:p1:hr-real, stepN:p1:hr-deriv, stepN:p1:hr-field, stepN:p1:hr-per, stepN:p1:hr-zero, bpN:p1:realdomain, bpN:p3:holo-input, K:bp:p1:holomorphic-regularity, K:bp:p1:hamiltonian-real
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p1:hr-holo | blueprint-N/parts/p1-interfaces.tex#bpN:p1:holo-real@L87-L87 | proof step of this result
EDGE: stepN:p1:hr-real | blueprint-N/parts/p1-interfaces.tex#bpN:p1:holo-real@L89-L89 | proof step of this result
EDGE: stepN:p1:hr-deriv | blueprint-N/parts/p1-interfaces.tex#bpN:p1:holo-real@L91-L91 | proof step of this result
EDGE: stepN:p1:hr-field | blueprint-N/parts/p1-interfaces.tex#bpN:p1:holo-real@L93-L93 | proof step of this result
EDGE: stepN:p1:hr-per | blueprint-N/parts/p1-interfaces.tex#bpN:p1:holo-real@L95-L95 | proof step of this result
EDGE: stepN:p1:hr-zero | blueprint-N/parts/p1-interfaces.tex#bpN:p1:holo-real@L97-L97 | proof step of this result
EDGE: bpN:p1:realdomain | blueprint-N/parts/p1-interfaces.tex#bpN:p1:holo-real@L75-L75 | cited at this line (statement; \ref{bpN:p1:realdomain})
EDGE: bpN:p3:holo-input | blueprint-N/parts/p1-interfaces.tex#bpN:p1:holo-real@L84-L84 | cited at this line (statement; \ref{bpN:p3:holo-input}; in \source: provenance unless consumed)
EDGE: K:bp:p1:holomorphic-regularity | blueprint-N/parts/p1-interfaces.tex#bpN:p1:holo-real@L84-L84 | cited at this line (statement; \Kref{bp:p1:holomorphic-regularity}; in \source: provenance unless consumed)
EDGE: K:bp:p1:hamiltonian-real | blueprint-N/parts/p1-interfaces.tex#bpN:p1:holo-real@L84-L84 | cited at this line (statement; \Kref{bp:p1:hamiltonian-real}; in \source: provenance unless consumed)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p1:hr-holo
KIND: step
TITLE: Holomorphy
STATEMENT_SOURCE: blueprint-N/parts/p1-interfaces.tex#stepN:p1:hr-holo@L87-L87
PROOF_SOURCE: blueprint-N/parts/p1-interfaces.tex#stepN:p1:hr-holo@L87-L87
CONTRACT_ID: stepN:p1:hr-holo
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p0:integrable#IsAnalyticIntegrable, bpN:p0:pert#IsAnalyticPerturbation, bpN:p1:realdomain, bpN:p1:ext-restrict, K:bp:p1:holomorphic-regularity
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p0:integrable#IsAnalyticIntegrable | blueprint-N/parts/p1-interfaces.tex#stepN:p1:hr-holo@L87-L87 | cited at this line (step; \ref{bpN:p0:integrable})
EDGE: bpN:p0:pert#IsAnalyticPerturbation | blueprint-N/parts/p1-interfaces.tex#stepN:p1:hr-holo@L87-L87 | cited at this line (step; \ref{bpN:p0:pert})
EDGE: bpN:p1:realdomain | blueprint-N/parts/p1-interfaces.tex#stepN:p1:hr-holo@L87-L87 | cited at this line (step; \ref{bpN:p1:realdomain})
EDGE: bpN:p1:ext-restrict | blueprint-N/parts/p1-interfaces.tex#stepN:p1:hr-holo@L87-L87 | cited at this line (step; \ref{bpN:p1:ext-restrict})
EDGE: K:bp:p1:holomorphic-regularity | blueprint-N/parts/p1-interfaces.tex#stepN:p1:hr-holo@L87-L87 | cited at this line (step; \Kref{bp:p1:holomorphic-regularity})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p1:hr-real
KIND: step
TITLE: Reality
STATEMENT_SOURCE: blueprint-N/parts/p1-interfaces.tex#stepN:p1:hr-real@L89-L89
PROOF_SOURCE: blueprint-N/parts/p1-interfaces.tex#stepN:p1:hr-real@L89-L89
CONTRACT_ID: stepN:p1:hr-real
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p1:realdomain, bpN:p0:integrable#IsAnalyticIntegrable, bpN:p0:pert#IsAnalyticPerturbation
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p1:realdomain | blueprint-N/parts/p1-interfaces.tex#stepN:p1:hr-real@L89-L89 | cited at this line (step; \ref{bpN:p1:realdomain})
EDGE: bpN:p0:integrable#IsAnalyticIntegrable | blueprint-N/parts/p1-interfaces.tex#stepN:p1:hr-real@L89-L89 | cited at this line (step; \ref{bpN:p0:integrable})
EDGE: bpN:p0:pert#IsAnalyticPerturbation | blueprint-N/parts/p1-interfaces.tex#stepN:p1:hr-real@L89-L89 | cited at this line (step; \ref{bpN:p0:pert})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p1:hr-deriv
KIND: step
TITLE: Derivatives of all orders
STATEMENT_SOURCE: blueprint-N/parts/p1-interfaces.tex#stepN:p1:hr-deriv@L91-L91
PROOF_SOURCE: blueprint-N/parts/p1-interfaces.tex#stepN:p1:hr-deriv@L91-L91
CONTRACT_ID: stepN:p1:hr-deriv
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p1:hr-holo, bpN:p1:ext-restrict
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p1:hr-holo | blueprint-N/parts/p1-interfaces.tex#stepN:p1:hr-deriv@L91-L91 | cited at this line (step; \ref{stepN:p1:hr-holo})
EDGE: bpN:p1:ext-restrict | blueprint-N/parts/p1-interfaces.tex#stepN:p1:hr-deriv@L91-L91 | cited at this line (step; \ref{bpN:p1:ext-restrict})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p1:hr-field
KIND: step
TITLE: The field
STATEMENT_SOURCE: blueprint-N/parts/p1-interfaces.tex#stepN:p1:hr-field@L93-L93
PROOF_SOURCE: blueprint-N/parts/p1-interfaces.tex#stepN:p1:hr-field@L93-L93
CONTRACT_ID: stepN:p1:hr-field
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p0:vf#hamiltonianVectorField, stepN:p1:hr-deriv, K:bp:p1:hamiltonian-real, K:bp:p1:holomorphic-regularity, K:bp:p1:ext-schwarz
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p0:vf#hamiltonianVectorField | blueprint-N/parts/p1-interfaces.tex#stepN:p1:hr-field@L93-L93 | cited at this line (step; \ref{bpN:p0:vf})
EDGE: stepN:p1:hr-deriv | blueprint-N/parts/p1-interfaces.tex#stepN:p1:hr-field@L93-L93 | cited at this line (step; \ref{stepN:p1:hr-deriv})
EDGE: K:bp:p1:hamiltonian-real | blueprint-N/parts/p1-interfaces.tex#stepN:p1:hr-field@L93-L93 | cited at this line (step; \Kref{bp:p1:hamiltonian-real})
EDGE: K:bp:p1:holomorphic-regularity | blueprint-N/parts/p1-interfaces.tex#stepN:p1:hr-field@L93-L93 | cited at this line (step; \Kref{bp:p1:holomorphic-regularity})
EDGE: K:bp:p1:ext-schwarz | blueprint-N/parts/p1-interfaces.tex#stepN:p1:hr-field@L93-L93 | cited at this line (step; \Kref{bp:p1:ext-schwarz})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p1:hr-per
KIND: step
TITLE: Periodicity
STATEMENT_SOURCE: blueprint-N/parts/p1-interfaces.tex#stepN:p1:hr-per@L95-L95
PROOF_SOURCE: blueprint-N/parts/p1-interfaces.tex#stepN:p1:hr-per@L95-L95
CONTRACT_ID: stepN:p1:hr-per
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p0:pert#IsAnalyticPerturbation
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p0:pert#IsAnalyticPerturbation | blueprint-N/parts/p1-interfaces.tex#stepN:p1:hr-per@L95-L95 | cited at this line (step; \ref{bpN:p0:pert})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p1:hr-zero
KIND: step
TITLE: Zero perturbation
STATEMENT_SOURCE: blueprint-N/parts/p1-interfaces.tex#stepN:p1:hr-zero@L97-L97
PROOF_SOURCE: blueprint-N/parts/p1-interfaces.tex#stepN:p1:hr-zero@L97-L97
CONTRACT_ID: stepN:p1:hr-zero
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

NODE: bpN:p1:partials
KIND: lemma
TITLE: Ordered partials and first-order bounds
STATEMENT_SOURCE: blueprint-N/parts/p1-interfaces.tex#bpN:p1:partials@L100-L105
PROOF_SOURCE: blueprint-N/parts/p1-interfaces.tex#bpN:p1:partials@L106-L110
CONTRACT_ID: bpN:p1:partials
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p1:pa-first, stepN:p1:pa-sym, bpN:p0:bm#HasDerivativeBounds, K:bp:p1:ext-schwarz
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p1:pa-first | blueprint-N/parts/p1-interfaces.tex#bpN:p1:partials@L107-L107 | proof step of this result
EDGE: stepN:p1:pa-sym | blueprint-N/parts/p1-interfaces.tex#bpN:p1:partials@L109-L109 | proof step of this result
EDGE: bpN:p0:bm#HasDerivativeBounds | blueprint-N/parts/p1-interfaces.tex#bpN:p1:partials@L101-L101 | cited at this line (statement; \ref{bpN:p0:bm})
EDGE: K:bp:p1:ext-schwarz | blueprint-N/parts/p1-interfaces.tex#bpN:p1:partials@L104-L104 | cited at this line (statement; \Kref{bp:p1:ext-schwarz}; in \source: provenance unless consumed)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p1:pa-first
KIND: step
TITLE: First order
STATEMENT_SOURCE: blueprint-N/parts/p1-interfaces.tex#stepN:p1:pa-first@L107-L107
PROOF_SOURCE: blueprint-N/parts/p1-interfaces.tex#stepN:p1:pa-first@L107-L107
CONTRACT_ID: stepN:p1:pa-first
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p0:freq#frequencyMap, bpN:p1:norm-compare
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p0:freq#frequencyMap | blueprint-N/parts/p1-interfaces.tex#stepN:p1:pa-first@L107-L107 | cited at this line (step; \ref{bpN:p0:freq})
EDGE: bpN:p1:norm-compare | blueprint-N/parts/p1-interfaces.tex#stepN:p1:pa-first@L107-L107 | cited at this line (step; \ref{bpN:p1:norm-compare})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p1:pa-sym
KIND: step
TITLE: Symmetry
STATEMENT_SOURCE: blueprint-N/parts/p1-interfaces.tex#stepN:p1:pa-sym@L109-L109
PROOF_SOURCE: blueprint-N/parts/p1-interfaces.tex#stepN:p1:pa-sym@L109-L109
CONTRACT_ID: stepN:p1:pa-sym
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: K:bp:p1:ext-schwarz
ROUTES: -
ROUTE_FOR: -
EDGE: K:bp:p1:ext-schwarz | blueprint-N/parts/p1-interfaces.tex#stepN:p1:pa-sym@L109-L109 | cited at this line (step; \Kref{bp:p1:ext-schwarz})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpN:p1:hessian-convert
KIND: lemma
TITLE: Complex Hessian bound in Euclidean form
STATEMENT_SOURCE: blueprint-N/parts/p1-interfaces.tex#bpN:p1:hessian-convert@L112-L118
PROOF_SOURCE: blueprint-N/parts/p1-interfaces.tex#bpN:p1:hessian-convert@L119-L123
CONTRACT_ID: bpN:p1:hessian-convert
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p1:hc-entries, stepN:p1:hc-eucl, bpN:p1:holo-real
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p1:hc-entries | blueprint-N/parts/p1-interfaces.tex#bpN:p1:hessian-convert@L120-L120 | proof step of this result
EDGE: stepN:p1:hc-eucl | blueprint-N/parts/p1-interfaces.tex#bpN:p1:hessian-convert@L122-L122 | proof step of this result
EDGE: bpN:p1:holo-real | blueprint-N/parts/p1-interfaces.tex#bpN:p1:hessian-convert@L115-L115 | cited at this line (statement; \ref{bpN:p1:holo-real})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p1:hc-entries
KIND: step
TITLE: Entries
STATEMENT_SOURCE: blueprint-N/parts/p1-interfaces.tex#stepN:p1:hc-entries@L120-L120
PROOF_SOURCE: blueprint-N/parts/p1-interfaces.tex#stepN:p1:hc-entries@L120-L120
CONTRACT_ID: stepN:p1:hc-entries
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: K:bp:p1:holomorphic-regularity
ROUTES: -
ROUTE_FOR: -
EDGE: K:bp:p1:holomorphic-regularity | blueprint-N/parts/p1-interfaces.tex#stepN:p1:hc-entries@L120-L120 | cited at this line (step; \Kref{bp:p1:holomorphic-regularity})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p1:hc-eucl
KIND: step
TITLE: Euclidean bound
STATEMENT_SOURCE: blueprint-N/parts/p1-interfaces.tex#stepN:p1:hc-eucl@L122-L122
PROOF_SOURCE: blueprint-N/parts/p1-interfaces.tex#stepN:p1:hc-eucl@L122-L122
CONTRACT_ID: stepN:p1:hc-eucl
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p1:norm-compare
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p1:norm-compare | blueprint-N/parts/p1-interfaces.tex#stepN:p1:hc-eucl@L122-L122 | cited at this line (step; \ref{bpN:p1:norm-compare})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpN:p1:conic-coercive
KIND: lemma
TITLE: Transverse coercivity gives conic coercivity (linear algebra core)
STATEMENT_SOURCE: blueprint-N/parts/p1-interfaces.tex#bpN:p1:conic-coercive@L127-L133
PROOF_SOURCE: blueprint-N/parts/p1-interfaces.tex#bpN:p1:conic-coercive@L134-L145
CONTRACT_ID: bpN:p1:conic-coercive
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p1:cc-unit, stepN:p1:cc-decomp, stepN:p1:cc-expand, stepN:p1:cc-num
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p1:cc-unit | blueprint-N/parts/p1-interfaces.tex#bpN:p1:conic-coercive@L135-L135 | proof step of this result
EDGE: stepN:p1:cc-decomp | blueprint-N/parts/p1-interfaces.tex#bpN:p1:conic-coercive@L137-L137 | proof step of this result
EDGE: stepN:p1:cc-expand | blueprint-N/parts/p1-interfaces.tex#bpN:p1:conic-coercive@L140-L140 | proof step of this result
EDGE: stepN:p1:cc-num | blueprint-N/parts/p1-interfaces.tex#bpN:p1:conic-coercive@L144-L144 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p1:cc-unit
KIND: step
TITLE: Reduction to unit vectors
STATEMENT_SOURCE: blueprint-N/parts/p1-interfaces.tex#stepN:p1:cc-unit@L135-L135
PROOF_SOURCE: blueprint-N/parts/p1-interfaces.tex#stepN:p1:cc-unit@L135-L135
CONTRACT_ID: stepN:p1:cc-unit
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

NODE: stepN:p1:cc-decomp
KIND: step
TITLE: Decomposition
STATEMENT_SOURCE: blueprint-N/parts/p1-interfaces.tex#stepN:p1:cc-decomp@L137-L138
PROOF_SOURCE: blueprint-N/parts/p1-interfaces.tex#stepN:p1:cc-decomp@L137-L138
CONTRACT_ID: stepN:p1:cc-decomp
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

NODE: stepN:p1:cc-expand
KIND: step
TITLE: Expansion
STATEMENT_SOURCE: blueprint-N/parts/p1-interfaces.tex#stepN:p1:cc-expand@L140-L142
PROOF_SOURCE: blueprint-N/parts/p1-interfaces.tex#stepN:p1:cc-expand@L140-L142
CONTRACT_ID: stepN:p1:cc-expand
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

NODE: stepN:p1:cc-num
KIND: step
TITLE: Numerics
STATEMENT_SOURCE: blueprint-N/parts/p1-interfaces.tex#stepN:p1:cc-num@L144-L144
PROOF_SOURCE: blueprint-N/parts/p1-interfaces.tex#stepN:p1:cc-num@L144-L144
CONTRACT_ID: stepN:p1:cc-num
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

NODE: bpN:p1:qc-convert
KIND: lemma
TITLE: Quasi-convexity in P\"oschel's quantified form
STATEMENT_SOURCE: blueprint-N/parts/p1-interfaces.tex#bpN:p1:qc-convert@L147-L161
PROOF_SOURCE: blueprint-N/parts/p1-interfaces.tex#bpN:p1:qc-convert@L162-L172
CONTRACT_ID: bpN:p1:qc-convert
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p1:qc-reg, stepN:p1:qc-trans, stepN:p1:qc-freq, stepN:p1:qc-conic, stepN:p1:qc-scale, bpN:p1:period-convert
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p1:qc-reg | blueprint-N/parts/p1-interfaces.tex#bpN:p1:qc-convert@L163-L163 | proof step of this result
EDGE: stepN:p1:qc-trans | blueprint-N/parts/p1-interfaces.tex#bpN:p1:qc-convert@L165-L165 | proof step of this result
EDGE: stepN:p1:qc-freq | blueprint-N/parts/p1-interfaces.tex#bpN:p1:qc-convert@L167-L167 | proof step of this result
EDGE: stepN:p1:qc-conic | blueprint-N/parts/p1-interfaces.tex#bpN:p1:qc-convert@L169-L169 | proof step of this result
EDGE: stepN:p1:qc-scale | blueprint-N/parts/p1-interfaces.tex#bpN:p1:qc-convert@L171-L171 | proof step of this result
EDGE: bpN:p1:period-convert | blueprint-N/parts/p1-interfaces.tex#bpN:p1:qc-convert@L158-L158 | cited at this line (statement; \ref{bpN:p1:period-convert})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p1:qc-reg
KIND: step
TITLE: Regularity and Hessian
STATEMENT_SOURCE: blueprint-N/parts/p1-interfaces.tex#stepN:p1:qc-reg@L163-L163
PROOF_SOURCE: blueprint-N/parts/p1-interfaces.tex#stepN:p1:qc-reg@L163-L163
CONTRACT_ID: stepN:p1:qc-reg
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p1:hessian-convert
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p1:hessian-convert | blueprint-N/parts/p1-interfaces.tex#stepN:p1:qc-reg@L163-L163 | cited at this line (step; \ref{bpN:p1:hessian-convert})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p1:qc-trans
KIND: step
TITLE: Transverse coercivity in the Euclidean norm
STATEMENT_SOURCE: blueprint-N/parts/p1-interfaces.tex#stepN:p1:qc-trans@L165-L165
PROOF_SOURCE: blueprint-N/parts/p1-interfaces.tex#stepN:p1:qc-trans@L165-L165
CONTRACT_ID: stepN:p1:qc-trans
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p0:qc#IsStrictlyQuasiConvex, bpN:p1:norm-compare
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p0:qc#IsStrictlyQuasiConvex | blueprint-N/parts/p1-interfaces.tex#stepN:p1:qc-trans@L165-L165 | cited at this line (step; \ref{bpN:p0:qc})
EDGE: bpN:p1:norm-compare | blueprint-N/parts/p1-interfaces.tex#stepN:p1:qc-trans@L165-L165 | cited at this line (step; \ref{bpN:p1:norm-compare})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p1:qc-freq
KIND: step
TITLE: Frequency size
STATEMENT_SOURCE: blueprint-N/parts/p1-interfaces.tex#stepN:p1:qc-freq@L167-L167
PROOF_SOURCE: blueprint-N/parts/p1-interfaces.tex#stepN:p1:qc-freq@L167-L167
CONTRACT_ID: stepN:p1:qc-freq
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p1:norm-compare
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p1:norm-compare | blueprint-N/parts/p1-interfaces.tex#stepN:p1:qc-freq@L167-L167 | cited at this line (step; \ref{bpN:p1:norm-compare})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p1:qc-conic
KIND: step
TITLE: Conic coercivity
STATEMENT_SOURCE: blueprint-N/parts/p1-interfaces.tex#stepN:p1:qc-conic@L169-L169
PROOF_SOURCE: blueprint-N/parts/p1-interfaces.tex#stepN:p1:qc-conic@L169-L169
CONTRACT_ID: stepN:p1:qc-conic
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p1:conic-coercive
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p1:conic-coercive | blueprint-N/parts/p1-interfaces.tex#stepN:p1:qc-conic@L169-L169 | cited at this line (step; \ref{bpN:p1:conic-coercive})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p1:qc-scale
KIND: step
TITLE: Scaling
STATEMENT_SOURCE: blueprint-N/parts/p1-interfaces.tex#stepN:p1:qc-scale@L171-L171
PROOF_SOURCE: blueprint-N/parts/p1-interfaces.tex#stepN:p1:qc-scale@L171-L171
CONTRACT_ID: stepN:p1:qc-scale
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

NODE: bpN:p1:period-convert
KIND: lemma
TITLE: Period conversion
STATEMENT_SOURCE: blueprint-N/parts/p1-interfaces.tex#bpN:p1:period-convert@L176-L189
PROOF_SOURCE: blueprint-N/parts/p1-interfaces.tex#bpN:p1:period-convert@L190-L196
CONTRACT_ID: bpN:p1:period-convert
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p1:pc-chain, stepN:p1:pc-field, stepN:p1:pc-scalar, bpN:p0:pert#IsAnalyticPerturbation, K:bp:p1:summation
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p1:pc-chain | blueprint-N/parts/p1-interfaces.tex#bpN:p1:period-convert@L191-L191 | proof step of this result
EDGE: stepN:p1:pc-field | blueprint-N/parts/p1-interfaces.tex#bpN:p1:period-convert@L193-L193 | proof step of this result
EDGE: stepN:p1:pc-scalar | blueprint-N/parts/p1-interfaces.tex#bpN:p1:period-convert@L195-L195 | proof step of this result
EDGE: bpN:p0:pert#IsAnalyticPerturbation | blueprint-N/parts/p1-interfaces.tex#bpN:p1:period-convert@L179-L179 | cited at this line (statement; \ref{bpN:p0:pert})
EDGE: K:bp:p1:summation | blueprint-N/parts/p1-interfaces.tex#bpN:p1:period-convert@L186-L186 | cited at this line (statement; \Kref{bp:p1:summation})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p1:pc-chain
KIND: step
TITLE: Chain rule
STATEMENT_SOURCE: blueprint-N/parts/p1-interfaces.tex#stepN:p1:pc-chain@L191-L191
PROOF_SOURCE: blueprint-N/parts/p1-interfaces.tex#stepN:p1:pc-chain@L191-L191
CONTRACT_ID: stepN:p1:pc-chain
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

NODE: stepN:p1:pc-field
KIND: step
TITLE: Vector field
STATEMENT_SOURCE: blueprint-N/parts/p1-interfaces.tex#stepN:p1:pc-field@L193-L193
PROOF_SOURCE: blueprint-N/parts/p1-interfaces.tex#stepN:p1:pc-field@L193-L193
CONTRACT_ID: stepN:p1:pc-field
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

NODE: stepN:p1:pc-scalar
KIND: step
TITLE: Scalars
STATEMENT_SOURCE: blueprint-N/parts/p1-interfaces.tex#stepN:p1:pc-scalar@L195-L195
PROOF_SOURCE: blueprint-N/parts/p1-interfaces.tex#stepN:p1:pc-scalar@L195-L195
CONTRACT_ID: stepN:p1:pc-scalar
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

NODE: bpN:p1:norm-convert
KIND: lemma
TITLE: From sup norm on a strip to the weighted Fourier norm
STATEMENT_SOURCE: blueprint-N/parts/p1-interfaces.tex#bpN:p1:norm-convert@L198-L204
PROOF_SOURCE: blueprint-N/parts/p1-interfaces.tex#bpN:p1:norm-convert@L205-L209
CONTRACT_ID: bpN:p1:norm-convert
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p1:nc-decay, stepN:p1:nc-sum, K:bp:p1:summation, K:bp:p1:decay, K:bp:p1:exp-sums
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p1:nc-decay | blueprint-N/parts/p1-interfaces.tex#bpN:p1:norm-convert@L206-L206 | proof step of this result
EDGE: stepN:p1:nc-sum | blueprint-N/parts/p1-interfaces.tex#bpN:p1:norm-convert@L208-L208 | proof step of this result
EDGE: K:bp:p1:summation | blueprint-N/parts/p1-interfaces.tex#bpN:p1:norm-convert@L203-L203 | cited at this line (statement; \Kref{bp:p1:summation}; in \source: provenance unless consumed)
EDGE: K:bp:p1:decay | blueprint-N/parts/p1-interfaces.tex#bpN:p1:norm-convert@L203-L203 | cited at this line (statement; \Kref{bp:p1:decay}; in \source: provenance unless consumed)
EDGE: K:bp:p1:exp-sums | blueprint-N/parts/p1-interfaces.tex#bpN:p1:norm-convert@L203-L203 | cited at this line (statement; \Kref{bp:p1:exp-sums}; in \source: provenance unless consumed)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p1:nc-decay
KIND: step
TITLE: Decay
STATEMENT_SOURCE: blueprint-N/parts/p1-interfaces.tex#stepN:p1:nc-decay@L206-L206
PROOF_SOURCE: blueprint-N/parts/p1-interfaces.tex#stepN:p1:nc-decay@L206-L206
CONTRACT_ID: stepN:p1:nc-decay
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: K:bp:p1:decay, K:bp:p1:summation
ROUTES: -
ROUTE_FOR: -
EDGE: K:bp:p1:decay | blueprint-N/parts/p1-interfaces.tex#stepN:p1:nc-decay@L206-L206 | cited at this line (step; \Kref{bp:p1:decay})
EDGE: K:bp:p1:summation | blueprint-N/parts/p1-interfaces.tex#stepN:p1:nc-decay@L206-L206 | cited at this line (step; \Kref{bp:p1:summation})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p1:nc-sum
KIND: step
TITLE: Sum
STATEMENT_SOURCE: blueprint-N/parts/p1-interfaces.tex#stepN:p1:nc-sum@L208-L208
PROOF_SOURCE: blueprint-N/parts/p1-interfaces.tex#stepN:p1:nc-sum@L208-L208
CONTRACT_ID: stepN:p1:nc-sum
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: K:bp:p1:exp-sums
ROUTES: -
ROUTE_FOR: -
EDGE: K:bp:p1:exp-sums | blueprint-N/parts/p1-interfaces.tex#stepN:p1:nc-sum@L208-L208 | cited at this line (step; \Kref{bp:p1:exp-sums})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpN:p1:constants
KIND: lemma
TITLE: Constants dictionary for N-HEAD-C
STATEMENT_SOURCE: blueprint-N/parts/p1-interfaces.tex#bpN:p1:constants@L213-L235
PROOF_SOURCE: blueprint-N/parts/p1-interfaces.tex#bpN:p1:constants@L236-L252
CONTRACT_ID: bpN:p1:constants
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p1:co-pos, stepN:p1:co-size, stepN:p1:co-tubes, stepN:p1:co-qc, stepN:p1:co-pert, stepN:p1:co-exc, stepN:p1:co-time, stepN:p1:co-conc, bpN:p0:integrable#IsAnalyticIntegrable, bpN:p9:setting, bpN:p4:domains, bpN:p1:qc-convert, bpN:p1:hessian-convert, bpN:p9:errata, bpN:p9:thm1, bpN:p9:dictionary
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p1:co-pos | blueprint-N/parts/p1-interfaces.tex#bpN:p1:constants@L237-L237 | proof step of this result
EDGE: stepN:p1:co-size | blueprint-N/parts/p1-interfaces.tex#bpN:p1:constants@L239-L239 | proof step of this result
EDGE: stepN:p1:co-tubes | blueprint-N/parts/p1-interfaces.tex#bpN:p1:constants@L241-L241 | proof step of this result
EDGE: stepN:p1:co-qc | blueprint-N/parts/p1-interfaces.tex#bpN:p1:constants@L243-L243 | proof step of this result
EDGE: stepN:p1:co-pert | blueprint-N/parts/p1-interfaces.tex#bpN:p1:constants@L245-L245 | proof step of this result
EDGE: stepN:p1:co-exc | blueprint-N/parts/p1-interfaces.tex#bpN:p1:constants@L247-L247 | proof step of this result
EDGE: stepN:p1:co-time | blueprint-N/parts/p1-interfaces.tex#bpN:p1:constants@L249-L249 | proof step of this result
EDGE: stepN:p1:co-conc | blueprint-N/parts/p1-interfaces.tex#bpN:p1:constants@L251-L251 | proof step of this result
EDGE: bpN:p0:integrable#IsAnalyticIntegrable | blueprint-N/parts/p1-interfaces.tex#bpN:p1:constants@L224-L224 | cited at this line (statement; \ref{bpN:p0:integrable})
EDGE: bpN:p9:setting | blueprint-N/parts/p1-interfaces.tex#bpN:p1:constants@L225-L225 | cited at this line (statement; \ref{bpN:p9:s-r})
EDGE: bpN:p4:domains | blueprint-N/parts/p1-interfaces.tex#bpN:p1:constants@L226-L226 | cited at this line (statement; \ref{bpN:p4:domains})
EDGE: bpN:p1:qc-convert | blueprint-N/parts/p1-interfaces.tex#bpN:p1:constants@L227-L227 | cited at this line (statement; \ref{bpN:p1:qc-convert})
EDGE: bpN:p1:hessian-convert | blueprint-N/parts/p1-interfaces.tex#bpN:p1:constants@L227-L227 | cited at this line (statement; \ref{bpN:p1:hessian-convert})
EDGE: bpN:p9:errata | blueprint-N/parts/p1-interfaces.tex#bpN:p1:constants@L227-L227 | cited at this line (statement; \ref{bpN:p9:errata})
EDGE: bpN:p9:thm1 | blueprint-N/parts/p1-interfaces.tex#bpN:p1:constants@L231-L231 | cited at this line (statement; \ref{bpN:p9:thm1})
EDGE: bpN:p9:dictionary | blueprint-N/parts/p1-interfaces.tex#bpN:p1:constants@L231-L231 | cited at this line (statement; \ref{bpN:p9:dictionary})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: [pre-extract: dropped reference to bpN:p0:head, which part p1 proves or sets up]

NODE: stepN:p1:co-pos
KIND: step
TITLE: Positivity and dependence
STATEMENT_SOURCE: blueprint-N/parts/p1-interfaces.tex#stepN:p1:co-pos@L237-L237
PROOF_SOURCE: blueprint-N/parts/p1-interfaces.tex#stepN:p1:co-pos@L237-L237
CONTRACT_ID: stepN:p1:co-pos
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

NODE: stepN:p1:co-size
KIND: step
TITLE: Size relations
STATEMENT_SOURCE: blueprint-N/parts/p1-interfaces.tex#stepN:p1:co-size@L239-L239
PROOF_SOURCE: blueprint-N/parts/p1-interfaces.tex#stepN:p1:co-size@L239-L239
CONTRACT_ID: stepN:p1:co-size
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

NODE: stepN:p1:co-tubes
KIND: step
TITLE: Tubes
STATEMENT_SOURCE: blueprint-N/parts/p1-interfaces.tex#stepN:p1:co-tubes@L241-L241
PROOF_SOURCE: blueprint-N/parts/p1-interfaces.tex#stepN:p1:co-tubes@L241-L241
CONTRACT_ID: stepN:p1:co-tubes
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p1:realdomain
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p1:realdomain | blueprint-N/parts/p1-interfaces.tex#stepN:p1:co-tubes@L241-L241 | cited at this line (step; \ref{bpN:p1:realdomain})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p1:co-qc
KIND: step
TITLE: Quasi-convexity and Hessian
STATEMENT_SOURCE: blueprint-N/parts/p1-interfaces.tex#stepN:p1:co-qc@L243-L243
PROOF_SOURCE: blueprint-N/parts/p1-interfaces.tex#stepN:p1:co-qc@L243-L243
CONTRACT_ID: stepN:p1:co-qc
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p1:qc-convert, bpN:p1:period-convert, bpN:p1:hessian-convert, bpN:p9:setting
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p1:qc-convert | blueprint-N/parts/p1-interfaces.tex#stepN:p1:co-qc@L243-L243 | cited at this line (step; \ref{bpN:p1:qc-convert})
EDGE: bpN:p1:period-convert | blueprint-N/parts/p1-interfaces.tex#stepN:p1:co-qc@L243-L243 | cited at this line (step; \ref{bpN:p1:period-convert})
EDGE: bpN:p1:hessian-convert | blueprint-N/parts/p1-interfaces.tex#stepN:p1:co-qc@L243-L243 | cited at this line (step; \ref{bpN:p1:hessian-convert})
EDGE: bpN:p9:setting | blueprint-N/parts/p1-interfaces.tex#stepN:p1:co-qc@L243-L243 | cited at this line (step; \ref{bpN:p9:s-r})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p1:co-pert
KIND: step
TITLE: Perturbation
STATEMENT_SOURCE: blueprint-N/parts/p1-interfaces.tex#stepN:p1:co-pert@L245-L245
PROOF_SOURCE: blueprint-N/parts/p1-interfaces.tex#stepN:p1:co-pert@L245-L245
CONTRACT_ID: stepN:p1:co-pert
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p1:norm-convert, bpN:p1:period-convert
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p1:norm-convert | blueprint-N/parts/p1-interfaces.tex#stepN:p1:co-pert@L245-L245 | cited at this line (step; \ref{bpN:p1:norm-convert})
EDGE: bpN:p1:period-convert | blueprint-N/parts/p1-interfaces.tex#stepN:p1:co-pert@L245-L245 | cited at this line (step; \ref{bpN:p1:period-convert})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p1:co-exc
KIND: step
TITLE: Exceptional branch
STATEMENT_SOURCE: blueprint-N/parts/p1-interfaces.tex#stepN:p1:co-exc@L247-L247
PROOF_SOURCE: blueprint-N/parts/p1-interfaces.tex#stepN:p1:co-exc@L247-L247
CONTRACT_ID: stepN:p1:co-exc
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p1:qc-convert
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p1:qc-convert | blueprint-N/parts/p1-interfaces.tex#stepN:p1:co-exc@L247-L247 | cited at this line (step; \ref{bpN:p1:qc-convert})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p1:co-time
KIND: step
TITLE: Time
STATEMENT_SOURCE: blueprint-N/parts/p1-interfaces.tex#stepN:p1:co-time@L249-L249
PROOF_SOURCE: blueprint-N/parts/p1-interfaces.tex#stepN:p1:co-time@L249-L249
CONTRACT_ID: stepN:p1:co-time
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p1:partials, bpN:p1:qc-convert
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p1:partials | blueprint-N/parts/p1-interfaces.tex#stepN:p1:co-time@L249-L249 | cited at this line (step; \ref{bpN:p1:partials})
EDGE: bpN:p1:qc-convert | blueprint-N/parts/p1-interfaces.tex#stepN:p1:co-time@L249-L249 | cited at this line (step; \ref{bpN:p1:qc-convert})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p1:co-conc
KIND: step
TITLE: Exponent and constants
STATEMENT_SOURCE: blueprint-N/parts/p1-interfaces.tex#stepN:p1:co-conc@L251-L251
PROOF_SOURCE: blueprint-N/parts/p1-interfaces.tex#stepN:p1:co-conc@L251-L251
CONTRACT_ID: stepN:p1:co-conc
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p9:thm1, bpN:p9:dictionary
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p9:thm1 | blueprint-N/parts/p1-interfaces.tex#stepN:p1:co-conc@L251-L251 | cited at this line (step; \ref{bpN:p9:thm1})
EDGE: bpN:p9:dictionary | blueprint-N/parts/p1-interfaces.tex#stepN:p1:co-conc@L251-L251 | cited at this line (step; \ref{bpN:p9:dictionary})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpN:p1:constants-use
KIND: claim
TITLE: Forward use and an unused constant
STATEMENT_SOURCE: blueprint-N/parts/p1-interfaces.tex#bpN:p1:constants-use@L254-L257
PROOF_SOURCE: blueprint-N/parts/p1-interfaces.tex#bpN:p1:constants-use@L254-L257
CONTRACT_ID: bpN:p1:constants-use
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p1:constants, bpN:p9:thm1, bpN:p9:errata, bpN:p3:continuation
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p1:constants | blueprint-N/parts/p1-interfaces.tex#bpN:p1:constants-use@L255-L255 | cited at this line (statement; \ref{bpN:p1:constants})
EDGE: bpN:p9:thm1 | blueprint-N/parts/p1-interfaces.tex#bpN:p1:constants-use@L255-L255 | cited at this line (statement; \ref{bpN:p9:thm1})
EDGE: bpN:p9:errata | blueprint-N/parts/p1-interfaces.tex#bpN:p1:constants-use@L255-L255 | cited at this line (statement; \ref{bpN:p9:errata})
EDGE: bpN:p3:continuation | blueprint-N/parts/p1-interfaces.tex#bpN:p1:constants-use@L256-L256 | cited at this line (statement; \ref{bpN:p3:continuation})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: remark: its justification is inline (confirm, or exclude if not a mathematical claim)
