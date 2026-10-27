NODE: bpI:p5:real-ham
KIND: lemma
TITLE: Regularity and ODE reduction
STATEMENT_SOURCE: blueprint-I/parts/p5-confinement.tex#bpI:p5:real-ham@L33-L44
PROOF_SOURCE: blueprint-I/parts/p5-confinement.tex#bpI:p5:real-ham@L45-L50
CONTRACT_ID: bpI:p5:real-ham
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepI:p5:rh-values, stepI:p5:rh-smooth, stepI:p5:rh-field, stepI:p5:rh-deriv, K:bp:p1:holomorphic-regularity, K:bp:p1:hamiltonian-real, N:bpN:p3:ham-reduction
ROUTES: -
ROUTE_FOR: -
EDGE: stepI:p5:rh-values | blueprint-I/parts/p5-confinement.tex#bpI:p5:real-ham@L46-L46 | proof step of this result
EDGE: stepI:p5:rh-smooth | blueprint-I/parts/p5-confinement.tex#bpI:p5:real-ham@L47-L47 | proof step of this result
EDGE: stepI:p5:rh-field | blueprint-I/parts/p5-confinement.tex#bpI:p5:real-ham@L48-L48 | proof step of this result
EDGE: stepI:p5:rh-deriv | blueprint-I/parts/p5-confinement.tex#bpI:p5:real-ham@L49-L49 | proof step of this result
EDGE: K:bp:p1:holomorphic-regularity | blueprint-I/parts/p5-confinement.tex#bpI:p5:real-ham@L43-L43 | cited at this line (statement; \Kref{bp:p1:holomorphic-regularity}; in \source: provenance unless consumed)
EDGE: K:bp:p1:hamiltonian-real | blueprint-I/parts/p5-confinement.tex#bpI:p5:real-ham@L43-L43 | cited at this line (statement; \Kref{bp:p1:hamiltonian-real}; in \source: provenance unless consumed)
EDGE: N:bpN:p3:ham-reduction | blueprint-I/parts/p5-confinement.tex#bpI:p5:real-ham@L43-L43 | cited at this line (statement; \Nref{bpN:p3:ham-reduction}; in \source: provenance unless consumed)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: [pre-extract: dropped reference to bpI:p0:head, which part p5 proves or sets up]

NODE: stepI:p5:rh-values
KIND: step
TITLE: Values
STATEMENT_SOURCE: blueprint-I/parts/p5-confinement.tex#stepI:p5:rh-values@L46-L46
PROOF_SOURCE: blueprint-I/parts/p5-confinement.tex#stepI:p5:rh-values@L46-L46
CONTRACT_ID: stepI:p5:rh-values
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

NODE: stepI:p5:rh-smooth
KIND: step
TITLE: Smoothness and periodicity
STATEMENT_SOURCE: blueprint-I/parts/p5-confinement.tex#stepI:p5:rh-smooth@L47-L47
PROOF_SOURCE: blueprint-I/parts/p5-confinement.tex#stepI:p5:rh-smooth@L47-L47
CONTRACT_ID: stepI:p5:rh-smooth
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
EDGE: K:bp:p1:holomorphic-regularity | blueprint-I/parts/p5-confinement.tex#stepI:p5:rh-smooth@L47-L47 | cited at this line (step; \Kref{bp:p1:holomorphic-regularity})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p5:rh-field
KIND: step
TITLE: The fields
STATEMENT_SOURCE: blueprint-I/parts/p5-confinement.tex#stepI:p5:rh-field@L48-L48
PROOF_SOURCE: blueprint-I/parts/p5-confinement.tex#stepI:p5:rh-field@L48-L48
CONTRACT_ID: stepI:p5:rh-field
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: K:bp:p1:hamiltonian-real, N:bpN:p3:ham-reduction, N:bpN:p3:ham-periodic
ROUTES: -
ROUTE_FOR: -
EDGE: K:bp:p1:hamiltonian-real | blueprint-I/parts/p5-confinement.tex#stepI:p5:rh-field@L48-L48 | cited at this line (step; \Kref{bp:p1:hamiltonian-real})
EDGE: N:bpN:p3:ham-reduction | blueprint-I/parts/p5-confinement.tex#stepI:p5:rh-field@L48-L48 | cited at this line (step; \Nref{bpN:p3:ham-reduction})
EDGE: N:bpN:p3:ham-periodic | blueprint-I/parts/p5-confinement.tex#stepI:p5:rh-field@L48-L48 | cited at this line (step; \Nref{bpN:p3:ham-periodic})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p5:rh-deriv
KIND: step
TITLE: Derivative bound
STATEMENT_SOURCE: blueprint-I/parts/p5-confinement.tex#stepI:p5:rh-deriv@L49-L49
PROOF_SOURCE: blueprint-I/parts/p5-confinement.tex#stepI:p5:rh-deriv@L49-L49
CONTRACT_ID: stepI:p5:rh-deriv
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p3:hypothesis-d
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p3:hypothesis-d | blueprint-I/parts/p5-confinement.tex#stepI:p5:rh-deriv@L49-L49 | cited at this line (step; \ref{bpI:p3:hypothesis-d})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpI:p5:ext-banach
KIND: external
TITLE: bpI:p5:ext-banach
STATEMENT_SOURCE: blueprint-I/parts/p5-confinement.tex#bpI:p5:ext-banach@L54-L54
PROOF_SOURCE: -
CONTRACT_ID: bpI:p5:ext-banach
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
NOTE: external item that cites \Kref{bp:p1:ext-banach}, \Kref{bp:p1:ext-mvt}: if it only restates the cited external, exclude it as an alias and point its consumers at the cited node (SPEC)

NODE: bpI:p5:ext-top
KIND: external
TITLE: Topology
STATEMENT_SOURCE: blueprint-I/parts/p5-confinement.tex#bpI:p5:ext-top@L55-L56
PROOF_SOURCE: -
CONTRACT_ID: bpI:p5:ext-top
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

NODE: bpI:p5:ext-ift
KIND: external
TITLE: bpI:p5:ext-ift
STATEMENT_SOURCE: blueprint-I/parts/p5-confinement.tex#bpI:p5:ext-ift@L57-L57
PROOF_SOURCE: -
CONTRACT_ID: bpI:p5:ext-ift
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
NOTE: external item that cites \ref{bpI:p3}, \ref{bpI:p3:ext-ift}: if it only restates the cited external, exclude it as an alias and point its consumers at the cited node (SPEC)

NODE: bpI:p5:patch-const
KIND: definition
TITLE: Patch constants
STATEMENT_SOURCE: blueprint-I/parts/p5-confinement.tex#bpI:p5:patch-const@L68-L77
PROOF_SOURCE: -
CONTRACT_ID: bpI:p5:patch-const
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p3:patch, bpI:p3:patch-rays
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p3:patch | blueprint-I/parts/p5-confinement.tex#bpI:p5:patch-const@L70-L70 | cited at this line (statement; \ref{bpI:p3:P1})
EDGE: bpI:p3:patch-rays | blueprint-I/parts/p5-confinement.tex#bpI:p5:patch-const@L74-L74 | cited at this line (statement; \ref{bpI:p3:patch-rays})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpI:p5:eps0
KIND: definition
TITLE: The constant $\varepsilon_0$
STATEMENT_SOURCE: blueprint-I/parts/p5-confinement.tex#bpI:p5:eps0@L79-L85
PROOF_SOURCE: -
CONTRACT_ID: bpI:p5:eps0
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

NODE: bpI:p5:graph
KIND: lemma
TITLE: Graph property
STATEMENT_SOURCE: blueprint-I/parts/p5-confinement.tex#bpI:p5:graph@L92-L99
PROOF_SOURCE: blueprint-I/parts/p5-confinement.tex#bpI:p5:graph@L100-L105
CONTRACT_ID: bpI:p5:graph
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepI:p5:gr-contr, stepI:p5:gr-bij, stepI:p5:gr-graph, stepI:p5:gr-energy
ROUTES: -
ROUTE_FOR: -
EDGE: stepI:p5:gr-contr | blueprint-I/parts/p5-confinement.tex#bpI:p5:graph@L101-L101 | proof step of this result
EDGE: stepI:p5:gr-bij | blueprint-I/parts/p5-confinement.tex#bpI:p5:graph@L102-L102 | proof step of this result
EDGE: stepI:p5:gr-graph | blueprint-I/parts/p5-confinement.tex#bpI:p5:graph@L103-L103 | proof step of this result
EDGE: stepI:p5:gr-energy | blueprint-I/parts/p5-confinement.tex#bpI:p5:graph@L104-L104 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p5:gr-contr
KIND: step
TITLE: Contraction
STATEMENT_SOURCE: blueprint-I/parts/p5-confinement.tex#stepI:p5:gr-contr@L101-L101
PROOF_SOURCE: blueprint-I/parts/p5-confinement.tex#stepI:p5:gr-contr@L101-L101
CONTRACT_ID: stepI:p5:gr-contr
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p3:tori, K:bp:p1:real-restriction, K:bp:p1:ext-mvt
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p3:tori | blueprint-I/parts/p5-confinement.tex#stepI:p5:gr-contr@L101-L101 | cited at this line (step; \ref{bpI:p3:T4})
EDGE: K:bp:p1:real-restriction | blueprint-I/parts/p5-confinement.tex#stepI:p5:gr-contr@L101-L101 | cited at this line (step; \Kref{bp:p1:real-restriction})
EDGE: K:bp:p1:ext-mvt | blueprint-I/parts/p5-confinement.tex#stepI:p5:gr-contr@L101-L101 | cited at this line (step; \Kref{bp:p1:ext-mvt})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p5:gr-bij
KIND: step
TITLE: Bijectivity
STATEMENT_SOURCE: blueprint-I/parts/p5-confinement.tex#stepI:p5:gr-bij@L102-L102
PROOF_SOURCE: blueprint-I/parts/p5-confinement.tex#stepI:p5:gr-bij@L102-L102
CONTRACT_ID: stepI:p5:gr-bij
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p5:ext-banach
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p5:ext-banach | blueprint-I/parts/p5-confinement.tex#stepI:p5:gr-bij@L102-L102 | cited at this line (step; \ref{bpI:p5:ext-banach})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p5:gr-graph
KIND: step
TITLE: Graph
STATEMENT_SOURCE: blueprint-I/parts/p5-confinement.tex#stepI:p5:gr-graph@L103-L103
PROOF_SOURCE: blueprint-I/parts/p5-confinement.tex#stepI:p5:gr-graph@L103-L103
CONTRACT_ID: stepI:p5:gr-graph
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p3:tori
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p3:tori | blueprint-I/parts/p5-confinement.tex#stepI:p5:gr-graph@L103-L103 | cited at this line (step; \ref{bpI:p3:T4})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p5:gr-energy
KIND: step
TITLE: Energy and position
STATEMENT_SOURCE: blueprint-I/parts/p5-confinement.tex#stepI:p5:gr-energy@L104-L104
PROOF_SOURCE: blueprint-I/parts/p5-confinement.tex#stepI:p5:gr-energy@L104-L104
CONTRACT_ID: stepI:p5:gr-energy
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p3:tori, bpI:p3:points, bpI:p5:real-ham
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p3:tori | blueprint-I/parts/p5-confinement.tex#stepI:p5:gr-energy@L104-L104 | cited at this line (step; \ref{bpI:p3:T3})
EDGE: bpI:p3:points | blueprint-I/parts/p5-confinement.tex#stepI:p5:gr-energy@L104-L104 | cited at this line (step; \ref{bpI:p3:points})
EDGE: bpI:p5:real-ham | blueprint-I/parts/p5-confinement.tex#stepI:p5:gr-energy@L104-L104 | cited at this line (step; \ref{bpI:p5:real-ham})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpI:p5:invariance
KIND: lemma
TITLE: Invariance
STATEMENT_SOURCE: blueprint-I/parts/p5-confinement.tex#bpI:p5:invariance@L107-L109
PROOF_SOURCE: blueprint-I/parts/p5-confinement.tex#bpI:p5:invariance@L110-L114
CONTRACT_ID: bpI:p5:invariance
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepI:p5:inv-incl, stepI:p5:inv-sol, stepI:p5:inv-uniq, N:bpN:p3:gen-invariant
ROUTES: -
ROUTE_FOR: -
EDGE: stepI:p5:inv-incl | blueprint-I/parts/p5-confinement.tex#bpI:p5:invariance@L111-L111 | proof step of this result
EDGE: stepI:p5:inv-sol | blueprint-I/parts/p5-confinement.tex#bpI:p5:invariance@L112-L112 | proof step of this result
EDGE: stepI:p5:inv-uniq | blueprint-I/parts/p5-confinement.tex#bpI:p5:invariance@L113-L113 | proof step of this result
EDGE: N:bpN:p3:gen-invariant | blueprint-I/parts/p5-confinement.tex#bpI:p5:invariance@L108-L108 | cited at this line (statement; \Nref{bpN:p3:gen-invariant})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p5:inv-incl
KIND: step
TITLE: Inclusion
STATEMENT_SOURCE: blueprint-I/parts/p5-confinement.tex#stepI:p5:inv-incl@L111-L111
PROOF_SOURCE: blueprint-I/parts/p5-confinement.tex#stepI:p5:inv-incl@L111-L111
CONTRACT_ID: stepI:p5:inv-incl
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p5:graph, bpI:p3:patch
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p5:graph | blueprint-I/parts/p5-confinement.tex#stepI:p5:inv-incl@L111-L111 | cited at this line (step; \ref{bpI:p5:graph})
EDGE: bpI:p3:patch | blueprint-I/parts/p5-confinement.tex#stepI:p5:inv-incl@L111-L111 | cited at this line (step; \ref{bpI:p3:P1})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p5:inv-sol
KIND: step
TITLE: The torus solution
STATEMENT_SOURCE: blueprint-I/parts/p5-confinement.tex#stepI:p5:inv-sol@L112-L112
PROOF_SOURCE: blueprint-I/parts/p5-confinement.tex#stepI:p5:inv-sol@L112-L112
CONTRACT_ID: stepI:p5:inv-sol
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p3:tori, bpI:p5:real-ham, stepI:p5:inv-incl, K:bp:p1:real-restriction
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p3:tori | blueprint-I/parts/p5-confinement.tex#stepI:p5:inv-sol@L112-L112 | cited at this line (step; \ref{bpI:p3:T2})
EDGE: bpI:p5:real-ham | blueprint-I/parts/p5-confinement.tex#stepI:p5:inv-sol@L112-L112 | cited at this line (step; \ref{bpI:p5:real-ham})
EDGE: stepI:p5:inv-incl | blueprint-I/parts/p5-confinement.tex#stepI:p5:inv-sol@L112-L112 | cited at this line (step; \ref{stepI:p5:inv-incl})
EDGE: K:bp:p1:real-restriction | blueprint-I/parts/p5-confinement.tex#stepI:p5:inv-sol@L112-L112 | cited at this line (step; \Kref{bp:p1:real-restriction})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p5:inv-uniq
KIND: step
TITLE: Uniqueness
STATEMENT_SOURCE: blueprint-I/parts/p5-confinement.tex#stepI:p5:inv-uniq@L113-L113
PROOF_SOURCE: blueprint-I/parts/p5-confinement.tex#stepI:p5:inv-uniq@L113-L113
CONTRACT_ID: stepI:p5:inv-uniq
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p5:real-ham, N:bpN:p3:gen-uniqueness
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p5:real-ham | blueprint-I/parts/p5-confinement.tex#stepI:p5:inv-uniq@L113-L113 | cited at this line (step; \ref{bpI:p5:real-ham})
EDGE: N:bpN:p3:gen-uniqueness | blueprint-I/parts/p5-confinement.tex#stepI:p5:inv-uniq@L113-L113 | cited at this line (step; \Nref{bpN:p3:gen-uniqueness})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpI:p5:energy-coordinate
KIND: lemma
TITLE: Energy equation is uniquely solvable in $e=h(I)$
STATEMENT_SOURCE: blueprint-I/parts/p5-confinement.tex#bpI:p5:energy-coordinate@L119-L122
PROOF_SOURCE: blueprint-I/parts/p5-confinement.tex#bpI:p5:energy-coordinate@L123-L126
CONTRACT_ID: bpI:p5:energy-coordinate
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepI:p5:ec-reduce, stepI:p5:ec-lip
ROUTES: -
ROUTE_FOR: -
EDGE: stepI:p5:ec-reduce | blueprint-I/parts/p5-confinement.tex#bpI:p5:energy-coordinate@L124-L124 | proof step of this result
EDGE: stepI:p5:ec-lip | blueprint-I/parts/p5-confinement.tex#bpI:p5:energy-coordinate@L125-L125 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p5:ec-reduce
KIND: step
TITLE: Reduction to one variable
STATEMENT_SOURCE: blueprint-I/parts/p5-confinement.tex#stepI:p5:ec-reduce@L124-L124
PROOF_SOURCE: blueprint-I/parts/p5-confinement.tex#stepI:p5:ec-reduce@L124-L124
CONTRACT_ID: stepI:p5:ec-reduce
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p5:real-ham
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p5:real-ham | blueprint-I/parts/p5-confinement.tex#stepI:p5:ec-reduce@L124-L124 | cited at this line (step; \ref{bpI:p5:real-ham})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p5:ec-lip
KIND: step
TITLE: Contraction
STATEMENT_SOURCE: blueprint-I/parts/p5-confinement.tex#stepI:p5:ec-lip@L125-L125
PROOF_SOURCE: blueprint-I/parts/p5-confinement.tex#stepI:p5:ec-lip@L125-L125
CONTRACT_ID: stepI:p5:ec-lip
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p5:real-ham, K:bp:p1:ext-mvt
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p5:real-ham | blueprint-I/parts/p5-confinement.tex#stepI:p5:ec-lip@L125-L125 | cited at this line (step; \ref{bpI:p5:real-ham})
EDGE: K:bp:p1:ext-mvt | blueprint-I/parts/p5-confinement.tex#stepI:p5:ec-lip@L125-L125 | cited at this line (step; \Kref{bp:p1:ext-mvt})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpI:p5:mu
KIND: lemma
TITLE: Position of the graphs in the chart
STATEMENT_SOURCE: blueprint-I/parts/p5-confinement.tex#bpI:p5:mu@L137-L139
PROOF_SOURCE: blueprint-I/parts/p5-confinement.tex#bpI:p5:mu@L140-L144
CONTRACT_ID: bpI:p5:mu
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepI:p5:mu-cont, stepI:p5:mu-lip, stepI:p5:mu-order
ROUTES: -
ROUTE_FOR: -
EDGE: stepI:p5:mu-cont | blueprint-I/parts/p5-confinement.tex#bpI:p5:mu@L141-L141 | proof step of this result
EDGE: stepI:p5:mu-lip | blueprint-I/parts/p5-confinement.tex#bpI:p5:mu@L142-L142 | proof step of this result
EDGE: stepI:p5:mu-order | blueprint-I/parts/p5-confinement.tex#bpI:p5:mu@L143-L143 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p5:mu-cont
KIND: step
TITLE: Continuity
STATEMENT_SOURCE: blueprint-I/parts/p5-confinement.tex#stepI:p5:mu-cont@L141-L141
PROOF_SOURCE: blueprint-I/parts/p5-confinement.tex#stepI:p5:mu-cont@L141-L141
CONTRACT_ID: stepI:p5:mu-cont
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p5:graph
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p5:graph | blueprint-I/parts/p5-confinement.tex#stepI:p5:mu-cont@L141-L141 | cited at this line (step; \ref{bpI:p5:graph})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p5:mu-lip
KIND: step
TITLE: Lipschitz comparison
STATEMENT_SOURCE: blueprint-I/parts/p5-confinement.tex#stepI:p5:mu-lip@L142-L142
PROOF_SOURCE: blueprint-I/parts/p5-confinement.tex#stepI:p5:mu-lip@L142-L142
CONTRACT_ID: stepI:p5:mu-lip
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p3:points, K:bp:p1:ext-mvt
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p3:points | blueprint-I/parts/p5-confinement.tex#stepI:p5:mu-lip@L142-L142 | cited at this line (step; \ref{bpI:p3:points})
EDGE: K:bp:p1:ext-mvt | blueprint-I/parts/p5-confinement.tex#stepI:p5:mu-lip@L142-L142 | cited at this line (step; \Kref{bp:p1:ext-mvt})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p5:mu-order
KIND: step
TITLE: Ordering
STATEMENT_SOURCE: blueprint-I/parts/p5-confinement.tex#stepI:p5:mu-order@L143-L143
PROOF_SOURCE: blueprint-I/parts/p5-confinement.tex#stepI:p5:mu-order@L143-L143
CONTRACT_ID: stepI:p5:mu-order
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

NODE: bpI:p5:separation
KIND: proposition
TITLE: Separation by two invariant tori
STATEMENT_SOURCE: blueprint-I/parts/p5-confinement.tex#bpI:p5:separation@L146-L153
PROOF_SOURCE: blueprint-I/parts/p5-confinement.tex#bpI:p5:separation@L154-L161
CONTRACT_ID: bpI:p5:separation
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepI:p5:sp-open, stepI:p5:sp-init, stepI:p5:sp-closure, stepI:p5:sp-window, stepI:p5:sp-bdry, stepI:p5:sp-barrier, bpI:p3:tori
ROUTES: -
ROUTE_FOR: -
EDGE: stepI:p5:sp-open | blueprint-I/parts/p5-confinement.tex#bpI:p5:separation@L155-L155 | proof step of this result
EDGE: stepI:p5:sp-init | blueprint-I/parts/p5-confinement.tex#bpI:p5:separation@L156-L156 | proof step of this result
EDGE: stepI:p5:sp-closure | blueprint-I/parts/p5-confinement.tex#bpI:p5:separation@L157-L157 | proof step of this result
EDGE: stepI:p5:sp-window | blueprint-I/parts/p5-confinement.tex#bpI:p5:separation@L158-L158 | proof step of this result
EDGE: stepI:p5:sp-bdry | blueprint-I/parts/p5-confinement.tex#bpI:p5:separation@L159-L159 | proof step of this result
EDGE: stepI:p5:sp-barrier | blueprint-I/parts/p5-confinement.tex#bpI:p5:separation@L160-L160 | proof step of this result
EDGE: bpI:p3:tori | blueprint-I/parts/p5-confinement.tex#bpI:p5:separation@L147-L147 | cited at this line (statement; \ref{bpI:p3:tori})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p5:sp-open
KIND: step
TITLE: Openness
STATEMENT_SOURCE: blueprint-I/parts/p5-confinement.tex#stepI:p5:sp-open@L155-L155
PROOF_SOURCE: blueprint-I/parts/p5-confinement.tex#stepI:p5:sp-open@L155-L155
CONTRACT_ID: stepI:p5:sp-open
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p5:mu
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p5:mu | blueprint-I/parts/p5-confinement.tex#stepI:p5:sp-open@L155-L155 | cited at this line (step; \ref{bpI:p5:mu})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p5:sp-init
KIND: step
TITLE: The initial point
STATEMENT_SOURCE: blueprint-I/parts/p5-confinement.tex#stepI:p5:sp-init@L156-L156
PROOF_SOURCE: blueprint-I/parts/p5-confinement.tex#stepI:p5:sp-init@L156-L156
CONTRACT_ID: stepI:p5:sp-init
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p3:patch, bpI:p5:mu, bpI:p5:graph
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p3:patch | blueprint-I/parts/p5-confinement.tex#stepI:p5:sp-init@L156-L156 | cited at this line (step; \ref{bpI:p3:P3})
EDGE: bpI:p5:mu | blueprint-I/parts/p5-confinement.tex#stepI:p5:sp-init@L156-L156 | cited at this line (step; \ref{bpI:p5:mu})
EDGE: bpI:p5:graph | blueprint-I/parts/p5-confinement.tex#stepI:p5:sp-init@L156-L156 | cited at this line (step; \ref{bpI:p5:graph})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p5:sp-closure
KIND: step
TITLE: Closure
STATEMENT_SOURCE: blueprint-I/parts/p5-confinement.tex#stepI:p5:sp-closure@L157-L157
PROOF_SOURCE: blueprint-I/parts/p5-confinement.tex#stepI:p5:sp-closure@L157-L157
CONTRACT_ID: stepI:p5:sp-closure
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p5:ext-top
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p5:ext-top | blueprint-I/parts/p5-confinement.tex#stepI:p5:sp-closure@L157-L157 | cited at this line (step; \ref{bpI:p5:ext-top})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p5:sp-window
KIND: step
TITLE: Energy window
STATEMENT_SOURCE: blueprint-I/parts/p5-confinement.tex#stepI:p5:sp-window@L158-L158
PROOF_SOURCE: blueprint-I/parts/p5-confinement.tex#stepI:p5:sp-window@L158-L158
CONTRACT_ID: stepI:p5:sp-window
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p5:real-ham
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p5:real-ham | blueprint-I/parts/p5-confinement.tex#stepI:p5:sp-window@L158-L158 | cited at this line (step; \ref{bpI:p5:real-ham})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p5:sp-bdry
KIND: step
TITLE: Boundary on the level
STATEMENT_SOURCE: blueprint-I/parts/p5-confinement.tex#stepI:p5:sp-bdry@L159-L159
PROOF_SOURCE: blueprint-I/parts/p5-confinement.tex#stepI:p5:sp-bdry@L159-L159
CONTRACT_ID: stepI:p5:sp-bdry
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepI:p5:sp-closure, bpI:p5:mu, stepI:p5:sp-window, bpI:p5:graph, bpI:p5:energy-coordinate
ROUTES: -
ROUTE_FOR: -
EDGE: stepI:p5:sp-closure | blueprint-I/parts/p5-confinement.tex#stepI:p5:sp-bdry@L159-L159 | cited at this line (step; \ref{stepI:p5:sp-closure})
EDGE: bpI:p5:mu | blueprint-I/parts/p5-confinement.tex#stepI:p5:sp-bdry@L159-L159 | cited at this line (step; \ref{bpI:p5:mu})
EDGE: stepI:p5:sp-window | blueprint-I/parts/p5-confinement.tex#stepI:p5:sp-bdry@L159-L159 | cited at this line (step; \ref{stepI:p5:sp-window})
EDGE: bpI:p5:graph | blueprint-I/parts/p5-confinement.tex#stepI:p5:sp-bdry@L159-L159 | cited at this line (step; \ref{bpI:p5:graph})
EDGE: bpI:p5:energy-coordinate | blueprint-I/parts/p5-confinement.tex#stepI:p5:sp-bdry@L159-L159 | cited at this line (step; \ref{bpI:p5:energy-coordinate})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p5:sp-barrier
KIND: step
TITLE: Barrier
STATEMENT_SOURCE: blueprint-I/parts/p5-confinement.tex#stepI:p5:sp-barrier@L160-L160
PROOF_SOURCE: blueprint-I/parts/p5-confinement.tex#stepI:p5:sp-barrier@L160-L160
CONTRACT_ID: stepI:p5:sp-barrier
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p5:real-ham, bpI:p5:invariance, N:bpN:p3:ham-energy, N:bpN:p3:gen-barrier
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p5:real-ham | blueprint-I/parts/p5-confinement.tex#stepI:p5:sp-barrier@L160-L160 | cited at this line (step; \ref{bpI:p5:real-ham})
EDGE: bpI:p5:invariance | blueprint-I/parts/p5-confinement.tex#stepI:p5:sp-barrier@L160-L160 | cited at this line (step; \ref{bpI:p5:invariance})
EDGE: N:bpN:p3:ham-energy | blueprint-I/parts/p5-confinement.tex#stepI:p5:sp-barrier@L160-L160 | cited at this line (step; \Nref{bpN:p3:ham-energy})
EDGE: N:bpN:p3:gen-barrier | blueprint-I/parts/p5-confinement.tex#stepI:p5:sp-barrier@L160-L160 | cited at this line (step; \Nref{bpN:p3:gen-barrier})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpI:p5:topology-remark
KIND: claim
TITLE: On the topology
STATEMENT_SOURCE: blueprint-I/parts/p5-confinement.tex#bpI:p5:topology-remark@L163-L167
PROOF_SOURCE: blueprint-I/parts/p5-confinement.tex#bpI:p5:topology-remark@L163-L167
CONTRACT_ID: bpI:p5:topology-remark
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p5:graph, bpI:p5:energy-coordinate
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p5:graph | blueprint-I/parts/p5-confinement.tex#bpI:p5:topology-remark@L165-L165 | cited at this line (statement; \ref{bpI:p5:graph})
EDGE: bpI:p5:energy-coordinate | blueprint-I/parts/p5-confinement.tex#bpI:p5:topology-remark@L165-L165 | cited at this line (statement; \ref{bpI:p5:energy-coordinate})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: remark: its justification is inline (confirm, or exclude if not a mathematical claim)

NODE: bpI:p5:confinement
KIND: proposition
TITLE: Confinement and global existence
STATEMENT_SOURCE: blueprint-I/parts/p5-confinement.tex#bpI:p5:confinement@L172-L174
PROOF_SOURCE: blueprint-I/parts/p5-confinement.tex#bpI:p5:confinement@L175-L178
CONTRACT_ID: bpI:p5:confinement
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepI:p5:cf-conf, stepI:p5:cf-cont, bpI:p5:separation, N:bpN:p3:gen-maximal
ROUTES: -
ROUTE_FOR: -
EDGE: stepI:p5:cf-conf | blueprint-I/parts/p5-confinement.tex#bpI:p5:confinement@L176-L176 | proof step of this result
EDGE: stepI:p5:cf-cont | blueprint-I/parts/p5-confinement.tex#bpI:p5:confinement@L177-L177 | proof step of this result
EDGE: bpI:p5:separation | blueprint-I/parts/p5-confinement.tex#bpI:p5:confinement@L173-L173 | cited at this line (statement; \ref{bpI:p5:separation})
EDGE: N:bpN:p3:gen-maximal | blueprint-I/parts/p5-confinement.tex#bpI:p5:confinement@L173-L173 | cited at this line (statement; \Nref{bpN:p3:gen-maximal})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p5:cf-conf
KIND: step
TITLE: Confinement on the maximal interval
STATEMENT_SOURCE: blueprint-I/parts/p5-confinement.tex#stepI:p5:cf-conf@L176-L176
PROOF_SOURCE: blueprint-I/parts/p5-confinement.tex#stepI:p5:cf-conf@L176-L176
CONTRACT_ID: stepI:p5:cf-conf
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p5:separation, bpI:p3:patch
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p5:separation | blueprint-I/parts/p5-confinement.tex#stepI:p5:cf-conf@L176-L176 | cited at this line (step; \ref{bpI:p5:separation})
EDGE: bpI:p3:patch | blueprint-I/parts/p5-confinement.tex#stepI:p5:cf-conf@L176-L176 | cited at this line (step; \ref{bpI:p3:P1})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p5:cf-cont
KIND: step
TITLE: Continuation
STATEMENT_SOURCE: blueprint-I/parts/p5-confinement.tex#stepI:p5:cf-cont@L177-L177
PROOF_SOURCE: blueprint-I/parts/p5-confinement.tex#stepI:p5:cf-cont@L177-L177
CONTRACT_ID: stepI:p5:cf-cont
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p5:real-ham, N:bpN:p3:gen-continuation-periodic
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p5:real-ham | blueprint-I/parts/p5-confinement.tex#stepI:p5:cf-cont@L177-L177 | cited at this line (step; \ref{bpI:p5:real-ham})
EDGE: N:bpN:p3:gen-continuation-periodic | blueprint-I/parts/p5-confinement.tex#stepI:p5:cf-cont@L177-L177 | cited at this line (step; \Nref{bpN:p3:gen-continuation-periodic})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p5:hd-eps
KIND: step
TITLE: The constant
STATEMENT_SOURCE: blueprint-I/parts/p5-confinement.tex#stepI:p5:hd-eps@L181-L181
PROOF_SOURCE: blueprint-I/parts/p5-confinement.tex#stepI:p5:hd-eps@L181-L181
CONTRACT_ID: stepI:p5:hd-eps
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p5:eps0, bpI:p0:head-remarks
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p5:eps0 | blueprint-I/parts/p5-confinement.tex#stepI:p5:hd-eps@L181-L181 | cited at this line (step; \ref{bpI:p5:eps0})
EDGE: bpI:p0:head-remarks | blueprint-I/parts/p5-confinement.tex#stepI:p5:hd-eps@L181-L181 | cited at this line (step; \ref{bpI:p0:head-remarks})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p5:hd-fix
KIND: step
TITLE: Fixing $f,\varepsilon,z_0$
STATEMENT_SOURCE: blueprint-I/parts/p5-confinement.tex#stepI:p5:hd-fix@L182-L182
PROOF_SOURCE: blueprint-I/parts/p5-confinement.tex#stepI:p5:hd-fix@L182-L182
CONTRACT_ID: stepI:p5:hd-fix
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p5:real-ham, bpI:p3:tori
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p5:real-ham | blueprint-I/parts/p5-confinement.tex#stepI:p5:hd-fix@L182-L182 | cited at this line (step; \ref{bpI:p5:real-ham})
EDGE: bpI:p3:tori | blueprint-I/parts/p5-confinement.tex#stepI:p5:hd-fix@L182-L182 | cited at this line (step; \ref{bpI:p3:tori})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p5:hd-sol
KIND: step
TITLE: The solution
STATEMENT_SOURCE: blueprint-I/parts/p5-confinement.tex#stepI:p5:hd-sol@L183-L183
PROOF_SOURCE: blueprint-I/parts/p5-confinement.tex#stepI:p5:hd-sol@L183-L183
CONTRACT_ID: stepI:p5:hd-sol
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p5:confinement, bpI:p5:real-ham
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p5:confinement | blueprint-I/parts/p5-confinement.tex#stepI:p5:hd-sol@L183-L183 | cited at this line (step; \ref{bpI:p5:confinement})
EDGE: bpI:p5:real-ham | blueprint-I/parts/p5-confinement.tex#stepI:p5:hd-sol@L183-L183 | cited at this line (step; \ref{bpI:p5:real-ham})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p5:hd-uniq
KIND: step
TITLE: Uniqueness among all solutions
STATEMENT_SOURCE: blueprint-I/parts/p5-confinement.tex#stepI:p5:hd-uniq@L184-L184
PROOF_SOURCE: blueprint-I/parts/p5-confinement.tex#stepI:p5:hd-uniq@L184-L184
CONTRACT_ID: stepI:p5:hd-uniq
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p5:real-ham, N:bpN:p3:gen-uniqueness
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p5:real-ham | blueprint-I/parts/p5-confinement.tex#stepI:p5:hd-uniq@L184-L184 | cited at this line (step; \ref{bpI:p5:real-ham})
EDGE: N:bpN:p3:gen-uniqueness | blueprint-I/parts/p5-confinement.tex#stepI:p5:hd-uniq@L184-L184 | cited at this line (step; \Nref{bpN:p3:gen-uniqueness})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpI:p5:p3-gap
KIND: claim
TITLE: What Part~\ref{bpI:p3} does not provide, and where it is proved here
STATEMENT_SOURCE: blueprint-I/parts/p5-confinement.tex#bpI:p5:p3-gap@L187-L192
PROOF_SOURCE: blueprint-I/parts/p5-confinement.tex#bpI:p5:p3-gap@L187-L192
CONTRACT_ID: bpI:p5:p3-gap
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepI:p5:sp-init, bpI:p5:mu, bpI:p5:eps0, bpI:p5:confinement, bpI:p3:consumption
ROUTES: -
ROUTE_FOR: -
EDGE: stepI:p5:sp-init | blueprint-I/parts/p5-confinement.tex#bpI:p5:p3-gap@L189-L189 | cited at this line (statement; \ref{stepI:p5:sp-init})
EDGE: bpI:p5:mu | blueprint-I/parts/p5-confinement.tex#bpI:p5:p3-gap@L190-L190 | cited at this line (statement; \ref{bpI:p5:mu})
EDGE: bpI:p5:eps0 | blueprint-I/parts/p5-confinement.tex#bpI:p5:p3-gap@L191-L191 | cited at this line (statement; \ref{bpI:p5:eps0})
EDGE: bpI:p5:confinement | blueprint-I/parts/p5-confinement.tex#bpI:p5:p3-gap@L191-L191 | cited at this line (statement; \ref{bpI:p5:confinement})
EDGE: bpI:p3:consumption | blueprint-I/parts/p5-confinement.tex#bpI:p5:p3-gap@L191-L191 | cited at this line (statement; \ref{bpI:p3:consumption})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: remark: its justification is inline (confirm, or exclude if not a mathematical claim)

NODE: bpI:p5:doubts
KIND: claim
TITLE: Guards, dependence, doubts
STATEMENT_SOURCE: blueprint-I/parts/p5-confinement.tex#bpI:p5:doubts@L194-L201
PROOF_SOURCE: blueprint-I/parts/p5-confinement.tex#bpI:p5:doubts@L194-L201
CONTRACT_ID: bpI:p5:doubts
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p5:real-ham, bpI:p0:totality, N:bpN:p3:ham-reduction, bpI:p3:tori
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p5:real-ham | blueprint-I/parts/p5-confinement.tex#bpI:p5:doubts@L195-L195 | cited at this line (statement; \ref{bpI:p5:real-ham})
EDGE: bpI:p0:totality | blueprint-I/parts/p5-confinement.tex#bpI:p5:doubts@L195-L195 | cited at this line (statement; \ref{bpI:p0:totality})
EDGE: N:bpN:p3:ham-reduction | blueprint-I/parts/p5-confinement.tex#bpI:p5:doubts@L195-L195 | cited at this line (statement; \Nref{bpN:p3:ham-reduction})
EDGE: bpI:p3:tori | blueprint-I/parts/p5-confinement.tex#bpI:p5:doubts@L198-L198 | cited at this line (statement; \ref{bpI:p3:T3})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: remark: its justification is inline (confirm, or exclude if not a mathematical claim)
