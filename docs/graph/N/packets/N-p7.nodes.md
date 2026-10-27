NODE: bpN:p7:ext-banach
KIND: external
TITLE: Banach fixed point theorem
STATEMENT_SOURCE: blueprint-N/parts/p7-stability.tex#bpN:p7:ext-banach@L17-L17
PROOF_SOURCE: -
CONTRACT_ID: bpN:p7:ext-banach
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

NODE: bpN:p7:ext-taylor
KIND: external
TITLE: Taylor, Lagrange form, order one
STATEMENT_SOURCE: blueprint-N/parts/p7-stability.tex#bpN:p7:ext-taylor@L18-L18
PROOF_SOURCE: -
CONTRACT_ID: bpN:p7:ext-taylor
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

NODE: bpN:p7:ext-num
KIND: external
TITLE: Numerics
STATEMENT_SOURCE: blueprint-N/parts/p7-stability.tex#bpN:p7:ext-num@L19-L19
PROOF_SOURCE: -
CONTRACT_ID: bpN:p7:ext-num
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

NODE: bpN:p7:ext-linalg
KIND: external
TITLE: Orthogonal projections
STATEMENT_SOURCE: blueprint-N/parts/p7-stability.tex#bpN:p7:ext-linalg@L20-L20
PROOF_SOURCE: -
CONTRACT_ID: bpN:p7:ext-linalg
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

NODE: bpN:p7:setting
KIND: definition
TITLE: Real neighbourhoods, real systems, orbits
STATEMENT_SOURCE: blueprint-N/parts/p7-stability.tex#bpN:p7:setting@L26-L32
PROOF_SOURCE: -
CONTRACT_ID: bpN:p7:setting
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p4:domains, bpN:p3:totality, bpN:p3:gen-sol, K:bp:p1:hamiltonian-real
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p4:domains | blueprint-N/parts/p7-stability.tex#bpN:p7:setting@L27-L27 | cited at this line (statement; \ref{bpN:p4:domains})
EDGE: bpN:p3:totality | blueprint-N/parts/p7-stability.tex#bpN:p7:setting@L28-L28 | cited at this line (statement; \ref{bpN:p3:totality})
EDGE: bpN:p3:gen-sol | blueprint-N/parts/p7-stability.tex#bpN:p7:setting@L29-L29 | cited at this line (statement; \ref{bpN:p3:gen-sol})
EDGE: K:bp:p1:hamiltonian-real | blueprint-N/parts/p7-stability.tex#bpN:p7:setting@L31-L31 | cited at this line (statement; \Kref{bp:p1:hamiltonian-real}; in \source: provenance unless consumed)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpN:p7:real-system
KIND: lemma
TITLE: Holomorphic real systems
STATEMENT_SOURCE: blueprint-N/parts/p7-stability.tex#bpN:p7:real-system@L34-L37
PROOF_SOURCE: blueprint-N/parts/p7-stability.tex#bpN:p7:real-system@L38-L42
CONTRACT_ID: bpN:p7:real-system
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p7:rs-smooth, stepN:p7:rs-field, bpN:p3:ham-energy, bpN:p3:gen-uniqueness, bpN:p3:gen-maximal, bpN:p3:gen-continuation-periodic, bpN:p3:gen-exit, bpN:p1:holo-real, K:bp:p1:hamiltonian-real, K:bp:p1:holomorphic-regularity, bpN:p3:ham-smooth
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p7:rs-smooth | blueprint-N/parts/p7-stability.tex#bpN:p7:real-system@L39-L39 | proof step of this result
EDGE: stepN:p7:rs-field | blueprint-N/parts/p7-stability.tex#bpN:p7:real-system@L40-L40 | proof step of this result
EDGE: bpN:p3:ham-energy | blueprint-N/parts/p7-stability.tex#bpN:p7:real-system@L35-L35 | cited at this line (statement; \ref{bpN:p3:ham-energy})
EDGE: bpN:p3:gen-uniqueness | blueprint-N/parts/p7-stability.tex#bpN:p7:real-system@L35-L35 | cited at this line (statement; \ref{bpN:p3:gen-uniqueness})
EDGE: bpN:p3:gen-maximal | blueprint-N/parts/p7-stability.tex#bpN:p7:real-system@L35-L35 | cited at this line (statement; \ref{bpN:p3:gen-maximal})
EDGE: bpN:p3:gen-continuation-periodic | blueprint-N/parts/p7-stability.tex#bpN:p7:real-system@L35-L35 | cited at this line (statement; \ref{bpN:p3:gen-continuation-periodic})
EDGE: bpN:p3:gen-exit | blueprint-N/parts/p7-stability.tex#bpN:p7:real-system@L35-L35 | cited at this line (statement; \ref{bpN:p3:gen-exit})
EDGE: bpN:p1:holo-real | blueprint-N/parts/p7-stability.tex#bpN:p7:real-system@L36-L36 | cited at this line (statement; \ref{bpN:p1:holo-real}; in \source: provenance unless consumed)
EDGE: K:bp:p1:hamiltonian-real | blueprint-N/parts/p7-stability.tex#bpN:p7:real-system@L36-L36 | cited at this line (statement; \Kref{bp:p1:hamiltonian-real}; in \source: provenance unless consumed)
EDGE: K:bp:p1:holomorphic-regularity | blueprint-N/parts/p7-stability.tex#bpN:p7:real-system@L36-L36 | cited at this line (statement; \Kref{bp:p1:holomorphic-regularity}; in \source: provenance unless consumed)
EDGE: bpN:p3:ham-smooth | blueprint-N/parts/p7-stability.tex#bpN:p7:real-system@L41-L41 | cited at this line (proof; \ref{bpN:p3:ham-smooth})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p7:rs-smooth
KIND: step
TITLE: Smoothness
STATEMENT_SOURCE: blueprint-N/parts/p7-stability.tex#stepN:p7:rs-smooth@L39-L39
PROOF_SOURCE: blueprint-N/parts/p7-stability.tex#stepN:p7:rs-smooth@L39-L39
CONTRACT_ID: stepN:p7:rs-smooth
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p1:ext-restrict, K:bp:p1:holomorphic-regularity
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p1:ext-restrict | blueprint-N/parts/p7-stability.tex#stepN:p7:rs-smooth@L39-L39 | cited at this line (step; \ref{bpN:p1:ext-restrict})
EDGE: K:bp:p1:holomorphic-regularity | blueprint-N/parts/p7-stability.tex#stepN:p7:rs-smooth@L39-L39 | cited at this line (step; \Kref{bp:p1:holomorphic-regularity})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p7:rs-field
KIND: step
TITLE: Field
STATEMENT_SOURCE: blueprint-N/parts/p7-stability.tex#stepN:p7:rs-field@L40-L40
PROOF_SOURCE: blueprint-N/parts/p7-stability.tex#stepN:p7:rs-field@L40-L40
CONTRACT_ID: stepN:p7:rs-field
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p3:ham-smooth, bpN:p3:ham-periodic, K:bp:p1:hamiltonian-real
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p3:ham-smooth | blueprint-N/parts/p7-stability.tex#stepN:p7:rs-field@L40-L40 | cited at this line (step; \ref{bpN:p3:ham-smooth})
EDGE: bpN:p3:ham-periodic | blueprint-N/parts/p7-stability.tex#stepN:p7:rs-field@L40-L40 | cited at this line (step; \ref{bpN:p3:ham-periodic})
EDGE: K:bp:p1:hamiltonian-real | blueprint-N/parts/p7-stability.tex#stepN:p7:rs-field@L40-L40 | cited at this line (step; \Kref{bp:p1:hamiltonian-real})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpN:p7:theta-derivative
KIND: lemma
TITLE: Derivative bound at real points
STATEMENT_SOURCE: blueprint-N/parts/p7-stability.tex#bpN:p7:theta-derivative@L44-L47
PROOF_SOURCE: blueprint-N/parts/p7-stability.tex#bpN:p7:theta-derivative@L48-L51
CONTRACT_ID: bpN:p7:theta-derivative
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p7:td-loss, stepN:p7:td-lim, bpN:p4:cauchy
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p7:td-loss | blueprint-N/parts/p7-stability.tex#bpN:p7:theta-derivative@L49-L49 | proof step of this result
EDGE: stepN:p7:td-lim | blueprint-N/parts/p7-stability.tex#bpN:p7:theta-derivative@L50-L50 | proof step of this result
EDGE: bpN:p4:cauchy | blueprint-N/parts/p7-stability.tex#bpN:p7:theta-derivative@L46-L46 | cited at this line (statement; \ref{bpN:p4:cauchy}; in \source: provenance unless consumed)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p7:td-loss
KIND: step
TITLE: Strip loss
STATEMENT_SOURCE: blueprint-N/parts/p7-stability.tex#stepN:p7:td-loss@L49-L49
PROOF_SOURCE: blueprint-N/parts/p7-stability.tex#stepN:p7:td-loss@L49-L49
CONTRACT_ID: stepN:p7:td-loss
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p4:b3-a, bpN:p4:cauchy, stepN:p4:b1-a, bpN:p4:sup-weighted
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p4:b3-a | blueprint-N/parts/p7-stability.tex#stepN:p7:td-loss@L49-L49 | cited at this line (step; \ref{stepN:p4:b3-a})
EDGE: bpN:p4:cauchy | blueprint-N/parts/p7-stability.tex#stepN:p7:td-loss@L49-L49 | cited at this line (step; \ref{bpN:p4:cauchy})
EDGE: stepN:p4:b1-a | blueprint-N/parts/p7-stability.tex#stepN:p7:td-loss@L49-L49 | cited at this line (step; \ref{stepN:p4:b1-a})
EDGE: bpN:p4:sup-weighted | blueprint-N/parts/p7-stability.tex#stepN:p7:td-loss@L49-L49 | cited at this line (step; \ref{bpN:p4:sup-weighted})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p7:td-lim
KIND: step
TITLE: Limit
STATEMENT_SOURCE: blueprint-N/parts/p7-stability.tex#stepN:p7:td-lim@L50-L50
PROOF_SOURCE: blueprint-N/parts/p7-stability.tex#stepN:p7:td-lim@L50-L50
CONTRACT_ID: stepN:p7:td-lim
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p1:norm-compare, bpN:p4:sup-weighted
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p1:norm-compare | blueprint-N/parts/p7-stability.tex#stepN:p7:td-lim@L50-L50 | cited at this line (step; \ref{bpN:p1:norm-compare})
EDGE: bpN:p4:sup-weighted | blueprint-N/parts/p7-stability.tex#stepN:p7:td-lim@L50-L50 | cited at this line (step; \ref{bpN:p4:sup-weighted})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpN:p7:resonant-gradient
KIND: lemma
TITLE: Resonant gradients lie in the span of $\Lambda$
STATEMENT_SOURCE: blueprint-N/parts/p7-stability.tex#bpN:p7:resonant-gradient@L53-L56
PROOF_SOURCE: blueprint-N/parts/p7-stability.tex#bpN:p7:resonant-gradient@L57-L60
CONTRACT_ID: bpN:p7:resonant-gradient
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p7:rg-coef, stepN:p7:rg-zero
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p7:rg-coef | blueprint-N/parts/p7-stability.tex#bpN:p7:resonant-gradient@L58-L58 | proof step of this result
EDGE: stepN:p7:rg-zero | blueprint-N/parts/p7-stability.tex#bpN:p7:resonant-gradient@L59-L59 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p7:rg-coef
KIND: step
TITLE: Coefficients
STATEMENT_SOURCE: blueprint-N/parts/p7-stability.tex#stepN:p7:rg-coef@L58-L58
PROOF_SOURCE: blueprint-N/parts/p7-stability.tex#stepN:p7:rg-coef@L58-L58
CONTRACT_ID: stepN:p7:rg-coef
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p4:coefficients, bpN:p4:projections
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p4:coefficients | blueprint-N/parts/p7-stability.tex#stepN:p7:rg-coef@L58-L58 | cited at this line (step; \ref{bpN:p4:coefficients})
EDGE: bpN:p4:projections | blueprint-N/parts/p7-stability.tex#stepN:p7:rg-coef@L58-L58 | cited at this line (step; \ref{bpN:p4:projections})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p7:rg-zero
KIND: step
TITLE: Vanishing
STATEMENT_SOURCE: blueprint-N/parts/p7-stability.tex#stepN:p7:rg-zero@L59-L59
PROOF_SOURCE: blueprint-N/parts/p7-stability.tex#stepN:p7:rg-zero@L59-L59
CONTRACT_ID: stepN:p7:rg-zero
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p4:cauchy, bpN:p4:coefficients
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p4:cauchy | blueprint-N/parts/p7-stability.tex#stepN:p7:rg-zero@L59-L59 | cited at this line (step; \ref{bpN:p4:cauchy})
EDGE: bpN:p4:coefficients | blueprint-N/parts/p7-stability.tex#stepN:p7:rg-zero@L59-L59 | cited at this line (step; \ref{bpN:p4:coefficients})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpN:p7:conjugation
KIND: lemma
TITLE: Conjugation of orbits
STATEMENT_SOURCE: blueprint-N/parts/p7-stability.tex#bpN:p7:conjugation@L64-L67
PROOF_SOURCE: blueprint-N/parts/p7-stability.tex#bpN:p7:conjugation@L68-L71
CONTRACT_ID: bpN:p7:conjugation
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p7:cj-real, stepN:p7:cj-chain, bpN:p5:canonical
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p7:cj-real | blueprint-N/parts/p7-stability.tex#bpN:p7:conjugation@L69-L69 | proof step of this result
EDGE: stepN:p7:cj-chain | blueprint-N/parts/p7-stability.tex#bpN:p7:conjugation@L70-L70 | proof step of this result
EDGE: bpN:p5:canonical | blueprint-N/parts/p7-stability.tex#bpN:p7:conjugation@L66-L66 | cited at this line (statement; \ref{bpN:p5:canonical}; in \source: provenance unless consumed)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p7:cj-real
KIND: step
TITLE: Real points
STATEMENT_SOURCE: blueprint-N/parts/p7-stability.tex#stepN:p7:cj-real@L69-L69
PROOF_SOURCE: blueprint-N/parts/p7-stability.tex#stepN:p7:cj-real@L69-L69
CONTRACT_ID: stepN:p7:cj-real
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p5:sy-conserve, K:bp:p1:real-restriction
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p5:sy-conserve | blueprint-N/parts/p7-stability.tex#stepN:p7:cj-real@L69-L69 | cited at this line (step; \ref{stepN:p5:sy-conserve})
EDGE: K:bp:p1:real-restriction | blueprint-N/parts/p7-stability.tex#stepN:p7:cj-real@L69-L69 | cited at this line (step; \Kref{bp:p1:real-restriction})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p7:cj-chain
KIND: step
TITLE: Chain rule
STATEMENT_SOURCE: blueprint-N/parts/p7-stability.tex#stepN:p7:cj-chain@L70-L70
PROOF_SOURCE: blueprint-N/parts/p7-stability.tex#stepN:p7:cj-chain@L70-L70
CONTRACT_ID: stepN:p7:cj-chain
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p7:real-system, stepN:p7:cj-real
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p7:real-system | blueprint-N/parts/p7-stability.tex#stepN:p7:cj-chain@L70-L70 | cited at this line (step; \ref{bpN:p7:real-system})
EDGE: stepN:p7:cj-real | blueprint-N/parts/p7-stability.tex#stepN:p7:cj-chain@L70-L70 | cited at this line (step; \ref{stepN:p7:cj-real})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpN:p7:preimage
KIND: lemma
TITLE: Real preimages of a near-identity map
STATEMENT_SOURCE: blueprint-N/parts/p7-stability.tex#bpN:p7:preimage@L73-L76
PROOF_SOURCE: blueprint-N/parts/p7-stability.tex#bpN:p7:preimage@L77-L83
CONTRACT_ID: bpN:p7:preimage
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p7:pi-set, stepN:p7:pi-self, stepN:p7:pi-contr, stepN:p7:pi-fix, bpN:p5:canonical-map, bpN:p5:setting
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p7:pi-set | blueprint-N/parts/p7-stability.tex#bpN:p7:preimage@L79-L79 | proof step of this result
EDGE: stepN:p7:pi-self | blueprint-N/parts/p7-stability.tex#bpN:p7:preimage@L80-L80 | proof step of this result
EDGE: stepN:p7:pi-contr | blueprint-N/parts/p7-stability.tex#bpN:p7:preimage@L81-L81 | proof step of this result
EDGE: stepN:p7:pi-fix | blueprint-N/parts/p7-stability.tex#bpN:p7:preimage@L82-L82 | proof step of this result
EDGE: bpN:p5:canonical-map | blueprint-N/parts/p7-stability.tex#bpN:p7:preimage@L75-L75 | cited at this line (statement; \ref{bpN:p5:canonical-map}; in \source: provenance unless consumed)
EDGE: bpN:p5:setting | blueprint-N/parts/p7-stability.tex#bpN:p7:preimage@L78-L78 | cited at this line (proof; \ref{bpN:p5:setting})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p7:pi-set
KIND: step
TITLE: A closed convex set
STATEMENT_SOURCE: blueprint-N/parts/p7-stability.tex#stepN:p7:pi-set@L79-L79
PROOF_SOURCE: blueprint-N/parts/p7-stability.tex#stepN:p7:pi-set@L79-L79
CONTRACT_ID: stepN:p7:pi-set
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

NODE: stepN:p7:pi-self
KIND: step
TITLE: Self-map
STATEMENT_SOURCE: blueprint-N/parts/p7-stability.tex#stepN:p7:pi-self@L80-L80
PROOF_SOURCE: blueprint-N/parts/p7-stability.tex#stepN:p7:pi-self@L80-L80
CONTRACT_ID: stepN:p7:pi-self
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

NODE: stepN:p7:pi-contr
KIND: step
TITLE: Contraction
STATEMENT_SOURCE: blueprint-N/parts/p7-stability.tex#stepN:p7:pi-contr@L81-L81
PROOF_SOURCE: blueprint-N/parts/p7-stability.tex#stepN:p7:pi-contr@L81-L81
CONTRACT_ID: stepN:p7:pi-contr
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p4:general-cauchy, bpN:p1:ext-restrict, K:bp:p1:ext-mvt
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p4:general-cauchy | blueprint-N/parts/p7-stability.tex#stepN:p7:pi-contr@L81-L81 | cited at this line (step; \ref{bpN:p4:general-cauchy})
EDGE: bpN:p1:ext-restrict | blueprint-N/parts/p7-stability.tex#stepN:p7:pi-contr@L81-L81 | cited at this line (step; \ref{bpN:p1:ext-restrict})
EDGE: K:bp:p1:ext-mvt | blueprint-N/parts/p7-stability.tex#stepN:p7:pi-contr@L81-L81 | cited at this line (step; \Kref{bp:p1:ext-mvt})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p7:pi-fix
KIND: step
TITLE: Fixed point
STATEMENT_SOURCE: blueprint-N/parts/p7-stability.tex#stepN:p7:pi-fix@L82-L82
PROOF_SOURCE: blueprint-N/parts/p7-stability.tex#stepN:p7:pi-fix@L82-L82
CONTRACT_ID: stepN:p7:pi-fix
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p7:ext-banach
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p7:ext-banach | blueprint-N/parts/p7-stability.tex#stepN:p7:pi-fix@L82-L82 | cited at this line (step; \ref{bpN:p7:ext-banach})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpN:p7:preimage-nfl
KIND: corollary
TITLE: Preimages for the Normal Form Lemma
STATEMENT_SOURCE: blueprint-N/parts/p7-stability.tex#bpN:p7:preimage-nfl@L85-L87
PROOF_SOURCE: blueprint-N/parts/p7-stability.tex#bpN:p7:preimage-nfl@L88-L90
CONTRACT_ID: bpN:p7:preimage-nfl
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p7:pn-apply, bpN:p6:normal-form
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p7:pn-apply | blueprint-N/parts/p7-stability.tex#bpN:p7:preimage-nfl@L89-L89 | proof step of this result
EDGE: bpN:p6:normal-form | blueprint-N/parts/p7-stability.tex#bpN:p7:preimage-nfl@L86-L86 | cited at this line (statement; \ref{bpN:p6:normal-form})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p7:pn-apply
KIND: step
TITLE: Apply Lemma~\ref{bpN:p7:preimage}
STATEMENT_SOURCE: blueprint-N/parts/p7-stability.tex#stepN:p7:pn-apply@L89-L89
PROOF_SOURCE: blueprint-N/parts/p7-stability.tex#stepN:p7:pn-apply@L89-L89
CONTRACT_ID: stepN:p7:pn-apply
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p7:preimage, bpN:p6:normal-form
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p7:preimage | blueprint-N/parts/p7-stability.tex#stepN:p7:pn-apply@L89-L89 | cited at this line (step; \ref{bpN:p7:preimage})
EDGE: bpN:p6:normal-form | blueprint-N/parts/p7-stability.tex#stepN:p7:pn-apply@L89-L89 | cited at this line (step; \ref{bpN:p6:normal-form})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpN:p7:transfer
KIND: lemma
TITLE: Transfer of an a priori confinement through a symplectic map
STATEMENT_SOURCE: blueprint-N/parts/p7-stability.tex#bpN:p7:transfer@L92-L102
PROOF_SOURCE: blueprint-N/parts/p7-stability.tex#bpN:p7:transfer@L103-L108
CONTRACT_ID: bpN:p7:transfer
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p7:tr-orbit, stepN:p7:tr-long, stepN:p7:tr-ident, stepN:p7:tr-est, bpN:p7:conjugation, bpN:p3:confinement-glue
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p7:tr-orbit | blueprint-N/parts/p7-stability.tex#bpN:p7:transfer@L104-L104 | proof step of this result
EDGE: stepN:p7:tr-long | blueprint-N/parts/p7-stability.tex#bpN:p7:transfer@L105-L105 | proof step of this result
EDGE: stepN:p7:tr-ident | blueprint-N/parts/p7-stability.tex#bpN:p7:transfer@L106-L106 | proof step of this result
EDGE: stepN:p7:tr-est | blueprint-N/parts/p7-stability.tex#bpN:p7:transfer@L107-L107 | proof step of this result
EDGE: bpN:p7:conjugation | blueprint-N/parts/p7-stability.tex#bpN:p7:transfer@L93-L93 | cited at this line (statement; \ref{bpN:p7:conjugation})
EDGE: bpN:p3:confinement-glue | blueprint-N/parts/p7-stability.tex#bpN:p7:transfer@L101-L101 | cited at this line (statement; \ref{bpN:p3:confinement-glue}; in \source: provenance unless consumed)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p7:tr-orbit
KIND: step
TITLE: A normal-form orbit
STATEMENT_SOURCE: blueprint-N/parts/p7-stability.tex#stepN:p7:tr-orbit@L104-L104
PROOF_SOURCE: blueprint-N/parts/p7-stability.tex#stepN:p7:tr-orbit@L104-L104
CONTRACT_ID: stepN:p7:tr-orbit
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p7:real-system, bpN:p3:gen-maximal
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p7:real-system | blueprint-N/parts/p7-stability.tex#stepN:p7:tr-orbit@L104-L104 | cited at this line (step; \ref{bpN:p7:real-system})
EDGE: bpN:p3:gen-maximal | blueprint-N/parts/p7-stability.tex#stepN:p7:tr-orbit@L104-L104 | cited at this line (step; \ref{bpN:p3:gen-maximal})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p7:tr-long
KIND: step
TITLE: It lives long enough
STATEMENT_SOURCE: blueprint-N/parts/p7-stability.tex#stepN:p7:tr-long@L105-L105
PROOF_SOURCE: blueprint-N/parts/p7-stability.tex#stepN:p7:tr-long@L105-L105
CONTRACT_ID: stepN:p7:tr-long
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p3:gen-continuation-periodic, bpN:p7:real-system
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p3:gen-continuation-periodic | blueprint-N/parts/p7-stability.tex#stepN:p7:tr-long@L105-L105 | cited at this line (step; \ref{bpN:p3:gen-continuation-periodic})
EDGE: bpN:p7:real-system | blueprint-N/parts/p7-stability.tex#stepN:p7:tr-long@L105-L105 | cited at this line (step; \ref{bpN:p7:real-system})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p7:tr-ident
KIND: step
TITLE: Identification
STATEMENT_SOURCE: blueprint-N/parts/p7-stability.tex#stepN:p7:tr-ident@L106-L106
PROOF_SOURCE: blueprint-N/parts/p7-stability.tex#stepN:p7:tr-ident@L106-L106
CONTRACT_ID: stepN:p7:tr-ident
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p7:conjugation, bpN:p3:gen-uniqueness
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p7:conjugation | blueprint-N/parts/p7-stability.tex#stepN:p7:tr-ident@L106-L106 | cited at this line (step; \ref{bpN:p7:conjugation})
EDGE: bpN:p3:gen-uniqueness | blueprint-N/parts/p7-stability.tex#stepN:p7:tr-ident@L106-L106 | cited at this line (step; \ref{bpN:p3:gen-uniqueness})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p7:tr-est
KIND: step
TITLE: Estimate
STATEMENT_SOURCE: blueprint-N/parts/p7-stability.tex#stepN:p7:tr-est@L107-L107
PROOF_SOURCE: blueprint-N/parts/p7-stability.tex#stepN:p7:tr-est@L107-L107
CONTRACT_ID: stepN:p7:tr-est
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

NODE: bpN:p7:stopped-extension
KIND: corollary
TITLE: Stopped form for any extension of the field
STATEMENT_SOURCE: blueprint-N/parts/p7-stability.tex#bpN:p7:stopped-extension@L110-L112
PROOF_SOURCE: blueprint-N/parts/p7-stability.tex#bpN:p7:stopped-extension@L113-L116
CONTRACT_ID: bpN:p7:stopped-extension
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p7:se-stop, stepN:p7:se-noexit
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p7:se-stop | blueprint-N/parts/p7-stability.tex#bpN:p7:stopped-extension@L114-L114 | proof step of this result
EDGE: stepN:p7:se-noexit | blueprint-N/parts/p7-stability.tex#bpN:p7:stopped-extension@L115-L115 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p7:se-stop
KIND: step
TITLE: The stopped interval
STATEMENT_SOURCE: blueprint-N/parts/p7-stability.tex#stepN:p7:se-stop@L114-L114
PROOF_SOURCE: blueprint-N/parts/p7-stability.tex#stepN:p7:se-stop@L114-L114
CONTRACT_ID: stepN:p7:se-stop
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

NODE: stepN:p7:se-noexit
KIND: step
TITLE: No exit
STATEMENT_SOURCE: blueprint-N/parts/p7-stability.tex#stepN:p7:se-noexit@L115-L115
PROOF_SOURCE: blueprint-N/parts/p7-stability.tex#stepN:p7:se-noexit@L115-L115
CONTRACT_ID: stepN:p7:se-noexit
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

NODE: bpN:p7:exit-ball
KIND: lemma
TITLE: First exit from a norm ball
STATEMENT_SOURCE: blueprint-N/parts/p7-stability.tex#bpN:p7:exit-ball@L118-L120
PROOF_SOURCE: blueprint-N/parts/p7-stability.tex#bpN:p7:exit-ball@L121-L123
CONTRACT_ID: bpN:p7:exit-ball
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p7:eb-exit
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p7:eb-exit | blueprint-N/parts/p7-stability.tex#bpN:p7:exit-ball@L122-L122 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p7:eb-exit
KIND: step
TITLE: Exit set
STATEMENT_SOURCE: blueprint-N/parts/p7-stability.tex#stepN:p7:eb-exit@L122-L122
PROOF_SOURCE: blueprint-N/parts/p7-stability.tex#stepN:p7:eb-exit@L122-L122
CONTRACT_ID: stepN:p7:eb-exit
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p3:gen-exit
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p3:gen-exit | blueprint-N/parts/p7-stability.tex#stepN:p7:eb-exit@L122-L122 | cited at this line (step; \ref{bpN:p3:gen-exit})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpN:p7:nonresonant
KIND: proposition
TITLE: Nonresonant stability estimate
STATEMENT_SOURCE: blueprint-N/parts/p7-stability.tex#bpN:p7:nonresonant@L127-L138
PROOF_SOURCE: blueprint-N/parts/p7-stability.tex#bpN:p7:nonresonant@L139-L147
CONTRACT_ID: bpN:p7:nonresonant
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p7:nr-dataA, stepN:p7:nr-t3, stepN:p7:nr-concA, stepN:p7:nr-caseB, bpN:p6:setting, bpN:p6:nonresonant-case, bpN:p7:factor-e
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p7:nr-dataA | blueprint-N/parts/p7-stability.tex#bpN:p7:nonresonant@L141-L141 | proof step of this result
EDGE: stepN:p7:nr-t3 | blueprint-N/parts/p7-stability.tex#bpN:p7:nonresonant@L142-L142 | proof step of this result
EDGE: stepN:p7:nr-concA | blueprint-N/parts/p7-stability.tex#bpN:p7:nonresonant@L145-L145 | proof step of this result
EDGE: stepN:p7:nr-caseB | blueprint-N/parts/p7-stability.tex#bpN:p7:nonresonant@L146-L146 | proof step of this result
EDGE: bpN:p6:setting | blueprint-N/parts/p7-stability.tex#bpN:p7:nonresonant@L131-L131 | cited at this line (statement; \ref{bpN:p6:cond-L})
EDGE: bpN:p6:nonresonant-case | blueprint-N/parts/p7-stability.tex#bpN:p7:nonresonant@L137-L137 | cited at this line (statement; \ref{bpN:p6:nonresonant-case}; in \source: provenance unless consumed)
EDGE: bpN:p7:factor-e | blueprint-N/parts/p7-stability.tex#bpN:p7:nonresonant@L137-L137 | cited at this line (statement; \ref{bpN:p7:factor-e}; in \source: provenance unless consumed)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p7:nr-dataA
KIND: step
TITLE: Case A, $\kappa\ge6$: data
STATEMENT_SOURCE: blueprint-N/parts/p7-stability.tex#stepN:p7:nr-dataA@L141-L141
PROOF_SOURCE: blueprint-N/parts/p7-stability.tex#stepN:p7:nr-dataA@L141-L141
CONTRACT_ID: stepN:p7:nr-dataA
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p6:normal-form, bpN:p6:setting, bpN:p7:preimage-nfl
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p6:normal-form | blueprint-N/parts/p7-stability.tex#stepN:p7:nr-dataA@L141-L141 | cited at this line (step; \ref{bpN:p6:normal-form})
EDGE: bpN:p6:setting | blueprint-N/parts/p7-stability.tex#stepN:p7:nr-dataA@L141-L141 | cited at this line (step; \ref{bpN:p6:cond-nr})
EDGE: bpN:p7:preimage-nfl | blueprint-N/parts/p7-stability.tex#stepN:p7:nr-dataA@L141-L141 | cited at this line (step; \ref{bpN:p7:preimage-nfl})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p7:nr-t3
KIND: step
TITLE: Case A: (T3)
STATEMENT_SOURCE: blueprint-N/parts/p7-stability.tex#stepN:p7:nr-t3@L142-L144
PROOF_SOURCE: blueprint-N/parts/p7-stability.tex#stepN:p7:nr-t3@L142-L144
CONTRACT_ID: stepN:p7:nr-t3
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p7:exit-ball, bpN:p7:real-system, bpN:p7:theta-derivative, K:bp:p1:ext-mvt, bpN:p7:ext-num
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p7:exit-ball | blueprint-N/parts/p7-stability.tex#stepN:p7:nr-t3@L142-L142 | cited at this line (step; \ref{bpN:p7:exit-ball})
EDGE: bpN:p7:real-system | blueprint-N/parts/p7-stability.tex#stepN:p7:nr-t3@L142-L142 | cited at this line (step; \ref{bpN:p7:real-system})
EDGE: bpN:p7:theta-derivative | blueprint-N/parts/p7-stability.tex#stepN:p7:nr-t3@L142-L142 | cited at this line (step; \ref{bpN:p7:theta-derivative})
EDGE: K:bp:p1:ext-mvt | blueprint-N/parts/p7-stability.tex#stepN:p7:nr-t3@L142-L142 | cited at this line (step; \Kref{bp:p1:ext-mvt})
EDGE: bpN:p7:ext-num | blueprint-N/parts/p7-stability.tex#stepN:p7:nr-t3@L144-L144 | cited at this line (step; \ref{bpN:p7:ext-num})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p7:nr-concA
KIND: step
TITLE: Case A: conclusion
STATEMENT_SOURCE: blueprint-N/parts/p7-stability.tex#stepN:p7:nr-concA@L145-L145
PROOF_SOURCE: blueprint-N/parts/p7-stability.tex#stepN:p7:nr-concA@L145-L145
CONTRACT_ID: stepN:p7:nr-concA
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p7:transfer
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p7:transfer | blueprint-N/parts/p7-stability.tex#stepN:p7:nr-concA@L145-L145 | cited at this line (step; \ref{bpN:p7:transfer})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p7:nr-caseB
KIND: step
TITLE: Case B, $\kappa<6$
STATEMENT_SOURCE: blueprint-N/parts/p7-stability.tex#stepN:p7:nr-caseB@L146-L146
PROOF_SOURCE: blueprint-N/parts/p7-stability.tex#stepN:p7:nr-caseB@L146-L146
CONTRACT_ID: stepN:p7:nr-caseB
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p6:nonresonant-case, stepN:p7:nr-t3, bpN:p7:transfer
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p6:nonresonant-case | blueprint-N/parts/p7-stability.tex#stepN:p7:nr-caseB@L146-L146 | cited at this line (step; \ref{bpN:p6:nonresonant-case})
EDGE: stepN:p7:nr-t3 | blueprint-N/parts/p7-stability.tex#stepN:p7:nr-caseB@L146-L146 | cited at this line (step; \ref{stepN:p7:nr-t3})
EDGE: bpN:p7:transfer | blueprint-N/parts/p7-stability.tex#stepN:p7:nr-caseB@L146-L146 | cited at this line (step; \ref{bpN:p7:transfer})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpN:p7:factor-e
KIND: claim
TITLE: The factor $e$ in the nonresonant case
STATEMENT_SOURCE: blueprint-N/parts/p7-stability.tex#bpN:p7:factor-e@L149-L151
PROOF_SOURCE: blueprint-N/parts/p7-stability.tex#bpN:p7:factor-e@L149-L151
CONTRACT_ID: bpN:p7:factor-e
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p6:nonresonant-case
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p6:nonresonant-case | blueprint-N/parts/p7-stability.tex#bpN:p7:factor-e@L150-L150 | cited at this line (statement; \ref{bpN:p6:nonresonant-case})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: remark: its justification is inline (confirm, or exclude if not a mathematical claim)

NODE: bpN:p7:resonance-data
KIND: definition
TITLE: Resonance data, convexity, quasi-convexity
STATEMENT_SOURCE: blueprint-N/parts/p7-stability.tex#bpN:p7:resonance-data@L155-L159
PROOF_SOURCE: -
CONTRACT_ID: bpN:p7:resonance-data
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p7:resonant-gradient, bpN:p7:setting, bpN:p1:qc-convert
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p7:resonant-gradient | blueprint-N/parts/p7-stability.tex#bpN:p7:resonance-data@L156-L156 | cited at this line (statement; \ref{bpN:p7:resonant-gradient})
EDGE: bpN:p7:setting | blueprint-N/parts/p7-stability.tex#bpN:p7:resonance-data@L157-L157 | cited at this line (statement; \ref{bpN:p7:setting})
EDGE: bpN:p1:qc-convert | blueprint-N/parts/p7-stability.tex#bpN:p7:resonance-data@L157-L157 | cited at this line (statement; \ref{bpN:p1:qc-convert})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpN:p7:energy-core
KIND: lemma
TITLE: Energy--convexity inequality (reusable core)
STATEMENT_SOURCE: blueprint-N/parts/p7-stability.tex#bpN:p7:energy-core@L161-L171
PROOF_SOURCE: blueprint-N/parts/p7-stability.tex#bpN:p7:energy-core@L172-L176
CONTRACT_ID: bpN:p7:energy-core
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p7:ec-energy, stepN:p7:ec-proj, stepN:p7:ec-taylor
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p7:ec-energy | blueprint-N/parts/p7-stability.tex#bpN:p7:energy-core@L173-L173 | proof step of this result
EDGE: stepN:p7:ec-proj | blueprint-N/parts/p7-stability.tex#bpN:p7:energy-core@L174-L174 | proof step of this result
EDGE: stepN:p7:ec-taylor | blueprint-N/parts/p7-stability.tex#bpN:p7:energy-core@L175-L175 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p7:ec-energy
KIND: step
TITLE: Energy
STATEMENT_SOURCE: blueprint-N/parts/p7-stability.tex#stepN:p7:ec-energy@L173-L173
PROOF_SOURCE: blueprint-N/parts/p7-stability.tex#stepN:p7:ec-energy@L173-L173
CONTRACT_ID: stepN:p7:ec-energy
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p3:ham-energy
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p3:ham-energy | blueprint-N/parts/p7-stability.tex#stepN:p7:ec-energy@L173-L173 | cited at this line (step; \ref{bpN:p3:ham-energy})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p7:ec-proj
KIND: step
TITLE: Resonant projection
STATEMENT_SOURCE: blueprint-N/parts/p7-stability.tex#stepN:p7:ec-proj@L174-L174
PROOF_SOURCE: blueprint-N/parts/p7-stability.tex#stepN:p7:ec-proj@L174-L174
CONTRACT_ID: stepN:p7:ec-proj
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: K:bp:p1:ext-mvt
ROUTES: -
ROUTE_FOR: -
EDGE: K:bp:p1:ext-mvt | blueprint-N/parts/p7-stability.tex#stepN:p7:ec-proj@L174-L174 | cited at this line (step; \Kref{bp:p1:ext-mvt})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p7:ec-taylor
KIND: step
TITLE: Taylor and combination
STATEMENT_SOURCE: blueprint-N/parts/p7-stability.tex#stepN:p7:ec-taylor@L175-L175
PROOF_SOURCE: blueprint-N/parts/p7-stability.tex#stepN:p7:ec-taylor@L175-L175
CONTRACT_ID: stepN:p7:ec-taylor
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p7:ext-taylor, bpN:p7:ext-linalg
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p7:ext-taylor | blueprint-N/parts/p7-stability.tex#stepN:p7:ec-taylor@L175-L175 | cited at this line (step; \ref{bpN:p7:ext-taylor})
EDGE: bpN:p7:ext-linalg | blueprint-N/parts/p7-stability.tex#stepN:p7:ec-taylor@L175-L175 | cited at this line (step; \ref{bpN:p7:ext-linalg})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpN:p7:admissible
KIND: lemma
TITLE: Admissible initial actions
STATEMENT_SOURCE: blueprint-N/parts/p7-stability.tex#bpN:p7:admissible@L181-L183
PROOF_SOURCE: blueprint-N/parts/p7-stability.tex#bpN:p7:admissible@L184-L187
CONTRACT_ID: bpN:p7:admissible
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p7:ad-ball, stepN:p7:ad-close
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p7:ad-ball | blueprint-N/parts/p7-stability.tex#bpN:p7:admissible@L185-L185 | proof step of this result
EDGE: stepN:p7:ad-close | blueprint-N/parts/p7-stability.tex#bpN:p7:admissible@L186-L186 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p7:ad-ball
KIND: step
TITLE: Ball
STATEMENT_SOURCE: blueprint-N/parts/p7-stability.tex#stepN:p7:ad-ball@L185-L185
PROOF_SOURCE: blueprint-N/parts/p7-stability.tex#stepN:p7:ad-ball@L185-L185
CONTRACT_ID: stepN:p7:ad-ball
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

NODE: stepN:p7:ad-close
KIND: step
TITLE: Closeness
STATEMENT_SOURCE: blueprint-N/parts/p7-stability.tex#stepN:p7:ad-close@L186-L186
PROOF_SOURCE: blueprint-N/parts/p7-stability.tex#stepN:p7:ad-close@L186-L186
CONTRACT_ID: stepN:p7:ad-close
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

NODE: bpN:p7:no-exit
KIND: lemma
TITLE: No exit under convexity along the segment
STATEMENT_SOURCE: blueprint-N/parts/p7-stability.tex#bpN:p7:no-exit@L189-L198
PROOF_SOURCE: blueprint-N/parts/p7-stability.tex#bpN:p7:no-exit@L199-L205
CONTRACT_ID: bpN:p7:no-exit
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p7:ne-core, stepN:p7:ne-terms, stepN:p7:ne-contra
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p7:ne-core | blueprint-N/parts/p7-stability.tex#bpN:p7:no-exit@L201-L201 | proof step of this result
EDGE: stepN:p7:ne-terms | blueprint-N/parts/p7-stability.tex#bpN:p7:no-exit@L203-L203 | proof step of this result
EDGE: stepN:p7:ne-contra | blueprint-N/parts/p7-stability.tex#bpN:p7:no-exit@L204-L204 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p7:ne-core
KIND: step
TITLE: Apply the core
STATEMENT_SOURCE: blueprint-N/parts/p7-stability.tex#stepN:p7:ne-core@L201-L202
PROOF_SOURCE: blueprint-N/parts/p7-stability.tex#stepN:p7:ne-core@L201-L202
CONTRACT_ID: stepN:p7:ne-core
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p7:admissible, bpN:p7:real-system, bpN:p7:resonant-gradient, bpN:p7:energy-core
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p7:admissible | blueprint-N/parts/p7-stability.tex#stepN:p7:ne-core@L201-L201 | cited at this line (step; \ref{bpN:p7:admissible})
EDGE: bpN:p7:real-system | blueprint-N/parts/p7-stability.tex#stepN:p7:ne-core@L201-L201 | cited at this line (step; \ref{bpN:p7:real-system})
EDGE: bpN:p7:resonant-gradient | blueprint-N/parts/p7-stability.tex#stepN:p7:ne-core@L201-L201 | cited at this line (step; \ref{bpN:p7:resonant-gradient})
EDGE: bpN:p7:energy-core | blueprint-N/parts/p7-stability.tex#stepN:p7:ne-core@L201-L201 | cited at this line (step; \ref{bpN:p7:energy-core})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p7:ne-terms
KIND: step
TITLE: Three terms
STATEMENT_SOURCE: blueprint-N/parts/p7-stability.tex#stepN:p7:ne-terms@L203-L203
PROOF_SOURCE: blueprint-N/parts/p7-stability.tex#stepN:p7:ne-terms@L203-L203
CONTRACT_ID: stepN:p7:ne-terms
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p7:theta-derivative, bpN:p7:admissible, bpN:p7:energy-core
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p7:theta-derivative | blueprint-N/parts/p7-stability.tex#stepN:p7:ne-terms@L203-L203 | cited at this line (step; \ref{bpN:p7:theta-derivative})
EDGE: bpN:p7:admissible | blueprint-N/parts/p7-stability.tex#stepN:p7:ne-terms@L203-L203 | cited at this line (step; \ref{bpN:p7:admissible})
EDGE: bpN:p7:energy-core | blueprint-N/parts/p7-stability.tex#stepN:p7:ne-terms@L203-L203 | cited at this line (step; \ref{bpN:p7:energy-core})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p7:ne-contra
KIND: step
TITLE: Contradiction
STATEMENT_SOURCE: blueprint-N/parts/p7-stability.tex#stepN:p7:ne-contra@L204-L204
PROOF_SOURCE: blueprint-N/parts/p7-stability.tex#stepN:p7:ne-contra@L204-L204
CONTRACT_ID: stepN:p7:ne-contra
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p7:ext-num
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p7:ext-num | blueprint-N/parts/p7-stability.tex#stepN:p7:ne-contra@L204-L204 | cited at this line (step; \ref{bpN:p7:ext-num})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpN:p7:resonant-lemma1
KIND: lemma
TITLE: Lemma 1: stability for $m$-convex $h$ in normal form
STATEMENT_SOURCE: blueprint-N/parts/p7-stability.tex#bpN:p7:resonant-lemma1@L209-L214
PROOF_SOURCE: blueprint-N/parts/p7-stability.tex#bpN:p7:resonant-lemma1@L215-L218
CONTRACT_ID: bpN:p7:resonant-lemma1
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p7:l1-exit, stepN:p7:l1-hyp, bpN:p7:exit-ball
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p7:l1-exit | blueprint-N/parts/p7-stability.tex#bpN:p7:resonant-lemma1@L216-L216 | proof step of this result
EDGE: stepN:p7:l1-hyp | blueprint-N/parts/p7-stability.tex#bpN:p7:resonant-lemma1@L217-L217 | proof step of this result
EDGE: bpN:p7:exit-ball | blueprint-N/parts/p7-stability.tex#bpN:p7:resonant-lemma1@L213-L213 | cited at this line (statement; \ref{bpN:p7:exit-ball}; in \source: provenance unless consumed)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p7:l1-exit
KIND: step
TITLE: Exit
STATEMENT_SOURCE: blueprint-N/parts/p7-stability.tex#stepN:p7:l1-exit@L216-L216
PROOF_SOURCE: blueprint-N/parts/p7-stability.tex#stepN:p7:l1-exit@L216-L216
CONTRACT_ID: stepN:p7:l1-exit
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p7:exit-ball, bpN:p7:no-exit
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p7:exit-ball | blueprint-N/parts/p7-stability.tex#stepN:p7:l1-exit@L216-L216 | cited at this line (step; \ref{bpN:p7:exit-ball})
EDGE: bpN:p7:no-exit | blueprint-N/parts/p7-stability.tex#stepN:p7:l1-exit@L216-L216 | cited at this line (step; \ref{bpN:p7:no-exit})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p7:l1-hyp
KIND: step
TITLE: Hypotheses (ii), (iii)
STATEMENT_SOURCE: blueprint-N/parts/p7-stability.tex#stepN:p7:l1-hyp@L217-L217
PROOF_SOURCE: blueprint-N/parts/p7-stability.tex#stepN:p7:l1-hyp@L217-L217
CONTRACT_ID: stepN:p7:l1-hyp
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p7:admissible, bpN:p7:no-exit
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p7:admissible | blueprint-N/parts/p7-stability.tex#stepN:p7:l1-hyp@L217-L217 | cited at this line (step; \ref{bpN:p7:admissible})
EDGE: bpN:p7:no-exit | blueprint-N/parts/p7-stability.tex#stepN:p7:l1-hyp@L217-L217 | cited at this line (step; \ref{bpN:p7:no-exit})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpN:p7:resonant-lemma2
KIND: lemma
TITLE: Lemma 2: stability for $\ell,m$-quasi-convex $h$ in normal form
STATEMENT_SOURCE: blueprint-N/parts/p7-stability.tex#bpN:p7:resonant-lemma2@L220-L226
PROOF_SOURCE: blueprint-N/parts/p7-stability.tex#bpN:p7:resonant-lemma2@L227-L233
CONTRACT_ID: bpN:p7:resonant-lemma2
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p7:l2-exit, stepN:p7:l2-iii, stepN:p7:l2-cone, stepN:p7:l2-conv, bpN:p7:errata
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p7:l2-exit | blueprint-N/parts/p7-stability.tex#bpN:p7:resonant-lemma2@L228-L228 | proof step of this result
EDGE: stepN:p7:l2-iii | blueprint-N/parts/p7-stability.tex#bpN:p7:resonant-lemma2@L229-L229 | proof step of this result
EDGE: stepN:p7:l2-cone | blueprint-N/parts/p7-stability.tex#bpN:p7:resonant-lemma2@L230-L230 | proof step of this result
EDGE: stepN:p7:l2-conv | blueprint-N/parts/p7-stability.tex#bpN:p7:resonant-lemma2@L232-L232 | proof step of this result
EDGE: bpN:p7:errata | blueprint-N/parts/p7-stability.tex#bpN:p7:resonant-lemma2@L223-L223 | cited at this line (statement; \ref{bpN:p7:errata})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p7:l2-exit
KIND: step
TITLE: Exit
STATEMENT_SOURCE: blueprint-N/parts/p7-stability.tex#stepN:p7:l2-exit@L228-L228
PROOF_SOURCE: blueprint-N/parts/p7-stability.tex#stepN:p7:l2-exit@L228-L228
CONTRACT_ID: stepN:p7:l2-exit
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p7:resonant-lemma1, bpN:p7:no-exit
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p7:resonant-lemma1 | blueprint-N/parts/p7-stability.tex#stepN:p7:l2-exit@L228-L228 | cited at this line (step; \ref{bpN:p7:resonant-lemma1})
EDGE: bpN:p7:no-exit | blueprint-N/parts/p7-stability.tex#stepN:p7:l2-exit@L228-L228 | cited at this line (step; \ref{bpN:p7:no-exit})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p7:l2-iii
KIND: step
TITLE: (iii)
STATEMENT_SOURCE: blueprint-N/parts/p7-stability.tex#stepN:p7:l2-iii@L229-L229
PROOF_SOURCE: blueprint-N/parts/p7-stability.tex#stepN:p7:l2-iii@L229-L229
CONTRACT_ID: stepN:p7:l2-iii
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

NODE: stepN:p7:l2-cone
KIND: step
TITLE: The cone condition along the segment
STATEMENT_SOURCE: blueprint-N/parts/p7-stability.tex#stepN:p7:l2-cone@L230-L231
PROOF_SOURCE: blueprint-N/parts/p7-stability.tex#stepN:p7:l2-cone@L230-L231
CONTRACT_ID: stepN:p7:l2-cone
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p7:admissible, bpN:p7:energy-core, bpN:p7:theta-derivative, stepN:p7:l2-iii
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p7:admissible | blueprint-N/parts/p7-stability.tex#stepN:p7:l2-cone@L230-L230 | cited at this line (step; \ref{bpN:p7:admissible})
EDGE: bpN:p7:energy-core | blueprint-N/parts/p7-stability.tex#stepN:p7:l2-cone@L230-L230 | cited at this line (step; \ref{bpN:p7:energy-core})
EDGE: bpN:p7:theta-derivative | blueprint-N/parts/p7-stability.tex#stepN:p7:l2-cone@L230-L230 | cited at this line (step; \ref{bpN:p7:theta-derivative})
EDGE: stepN:p7:l2-iii | blueprint-N/parts/p7-stability.tex#stepN:p7:l2-cone@L230-L230 | cited at this line (step; \ref{stepN:p7:l2-iii})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p7:l2-conv
KIND: step
TITLE: Convexity along the segment
STATEMENT_SOURCE: blueprint-N/parts/p7-stability.tex#stepN:p7:l2-conv@L232-L232
PROOF_SOURCE: blueprint-N/parts/p7-stability.tex#stepN:p7:l2-conv@L232-L232
CONTRACT_ID: stepN:p7:l2-conv
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p7:no-exit
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p7:no-exit | blueprint-N/parts/p7-stability.tex#stepN:p7:l2-conv@L232-L232 | cited at this line (step; \ref{bpN:p7:no-exit})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpN:p7:resonant-prop2
KIND: proposition
TITLE: Resonant Stability Lemma
STATEMENT_SOURCE: blueprint-N/parts/p7-stability.tex#bpN:p7:resonant-prop2@L237-L252
PROOF_SOURCE: blueprint-N/parts/p7-stability.tex#bpN:p7:resonant-prop2@L253-L262
CONTRACT_ID: bpN:p7:resonant-prop2
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p7:p2-red, stepN:p7:p2-cases, stepN:p7:p2-t12, stepN:p7:p2-t3, stepN:p7:p2-concl, bpN:p7:errata
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p7:p2-red | blueprint-N/parts/p7-stability.tex#bpN:p7:resonant-prop2@L254-L254 | proof step of this result
EDGE: stepN:p7:p2-cases | blueprint-N/parts/p7-stability.tex#bpN:p7:resonant-prop2@L255-L255 | proof step of this result
EDGE: stepN:p7:p2-t12 | blueprint-N/parts/p7-stability.tex#bpN:p7:resonant-prop2@L259-L259 | proof step of this result
EDGE: stepN:p7:p2-t3 | blueprint-N/parts/p7-stability.tex#bpN:p7:resonant-prop2@L260-L260 | proof step of this result
EDGE: stepN:p7:p2-concl | blueprint-N/parts/p7-stability.tex#bpN:p7:resonant-prop2@L261-L261 | proof step of this result
EDGE: bpN:p7:errata | blueprint-N/parts/p7-stability.tex#bpN:p7:resonant-prop2@L251-L251 | cited at this line (statement; \ref{bpN:p7:errata}; in \source: provenance unless consumed)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p7:p2-red
KIND: step
TITLE: Reductions
STATEMENT_SOURCE: blueprint-N/parts/p7-stability.tex#stepN:p7:p2-red@L254-L254
PROOF_SOURCE: blueprint-N/parts/p7-stability.tex#stepN:p7:p2-red@L254-L254
CONTRACT_ID: stepN:p7:p2-red
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p6:setting, bpN:p6:lipschitz
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p6:setting | blueprint-N/parts/p7-stability.tex#stepN:p7:p2-red@L254-L254 | cited at this line (step; \ref{bpN:p6:cond-L})
EDGE: bpN:p6:lipschitz | blueprint-N/parts/p7-stability.tex#stepN:p7:p2-red@L254-L254 | cited at this line (step; \ref{bpN:p6:lipschitz})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p7:p2-cases
KIND: step
TITLE: Three cases
STATEMENT_SOURCE: blueprint-N/parts/p7-stability.tex#stepN:p7:p2-cases@L255-L258
PROOF_SOURCE: blueprint-N/parts/p7-stability.tex#stepN:p7:p2-cases@L255-L258
CONTRACT_ID: stepN:p7:p2-cases
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p6:normal-form, bpN:p6:setting
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p6:normal-form | blueprint-N/parts/p7-stability.tex#stepN:p7:p2-cases@L255-L255 | cited at this line (step; \ref{bpN:p6:normal-form})
EDGE: bpN:p6:setting | blueprint-N/parts/p7-stability.tex#stepN:p7:p2-cases@L255-L255 | cited at this line (step; \ref{bpN:p6:cond-nr})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p7:p2-t12
KIND: step
TITLE: (T1), (T2)
STATEMENT_SOURCE: blueprint-N/parts/p7-stability.tex#stepN:p7:p2-t12@L259-L259
PROOF_SOURCE: blueprint-N/parts/p7-stability.tex#stepN:p7:p2-t12@L259-L259
CONTRACT_ID: stepN:p7:p2-t12
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p6:normal-form, bpN:p7:preimage-nfl
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p6:normal-form | blueprint-N/parts/p7-stability.tex#stepN:p7:p2-t12@L259-L259 | cited at this line (step; \ref{bpN:p6:normal-form})
EDGE: bpN:p7:preimage-nfl | blueprint-N/parts/p7-stability.tex#stepN:p7:p2-t12@L259-L259 | cited at this line (step; \ref{bpN:p7:preimage-nfl})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p7:p2-t3
KIND: step
TITLE: (T3)
STATEMENT_SOURCE: blueprint-N/parts/p7-stability.tex#stepN:p7:p2-t3@L260-L260
PROOF_SOURCE: blueprint-N/parts/p7-stability.tex#stepN:p7:p2-t3@L260-L260
CONTRACT_ID: stepN:p7:p2-t3
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p7:resonant-lemma2
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p7:resonant-lemma2 | blueprint-N/parts/p7-stability.tex#stepN:p7:p2-t3@L260-L260 | cited at this line (step; \ref{bpN:p7:resonant-lemma2})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p7:p2-concl
KIND: step
TITLE: Conclusion
STATEMENT_SOURCE: blueprint-N/parts/p7-stability.tex#stepN:p7:p2-concl@L261-L261
PROOF_SOURCE: blueprint-N/parts/p7-stability.tex#stepN:p7:p2-concl@L261-L261
CONTRACT_ID: stepN:p7:p2-concl
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p7:transfer
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p7:transfer | blueprint-N/parts/p7-stability.tex#stepN:p7:p2-concl@L261-L261 | cited at this line (step; \ref{bpN:p7:transfer})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpN:p7:errata
KIND: claim
TITLE: Suspected defects in Pos93 (to the ledger)
STATEMENT_SOURCE: blueprint-N/parts/p7-stability.tex#bpN:p7:errata@L266-L274
PROOF_SOURCE: blueprint-N/parts/p7-stability.tex#bpN:p7:errata@L266-L274
CONTRACT_ID: bpN:p7:errata
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p7:resonant-lemma2, bpN:p7:resonant-prop2, bpN:p9:errata, bpN:p7:preimage, bpN:p6:normal-form, bpN:p6:nonresonant-case, bpN:p7:factor-e
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p7:resonant-lemma2 | blueprint-N/parts/p7-stability.tex#bpN:p7:errata@L268-L268 | cited at this line (statement; \ref{bpN:p7:resonant-lemma2})
EDGE: bpN:p7:resonant-prop2 | blueprint-N/parts/p7-stability.tex#bpN:p7:errata@L268-L268 | cited at this line (statement; \ref{bpN:p7:resonant-prop2})
EDGE: bpN:p9:errata | blueprint-N/parts/p7-stability.tex#bpN:p7:errata@L268-L268 | cited at this line (statement; \ref{bpN:p9:errata})
EDGE: bpN:p7:preimage | blueprint-N/parts/p7-stability.tex#bpN:p7:errata@L270-L270 | cited at this line (statement; \ref{bpN:p7:preimage})
EDGE: bpN:p6:normal-form | blueprint-N/parts/p7-stability.tex#bpN:p7:errata@L270-L270 | cited at this line (statement; \ref{bpN:p6:normal-form})
EDGE: bpN:p6:nonresonant-case | blueprint-N/parts/p7-stability.tex#bpN:p7:errata@L271-L271 | cited at this line (statement; \ref{bpN:p6:nonresonant-case})
EDGE: bpN:p7:factor-e | blueprint-N/parts/p7-stability.tex#bpN:p7:errata@L271-L271 | cited at this line (statement; \ref{bpN:p7:factor-e})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: remark: its justification is inline (confirm, or exclude if not a mathematical claim)

NODE: bpN:p7:dictionary
KIND: claim
TITLE: Dictionary with P\"oschel's normalisation
STATEMENT_SOURCE: blueprint-N/parts/p7-stability.tex#bpN:p7:dictionary@L276-L278
PROOF_SOURCE: blueprint-N/parts/p7-stability.tex#bpN:p7:dictionary@L276-L278
CONTRACT_ID: bpN:p7:dictionary
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p4:dictionary
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p4:dictionary | blueprint-N/parts/p7-stability.tex#bpN:p7:dictionary@L277-L277 | cited at this line (statement; \ref{bpN:p4:dictionary})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: remark: its justification is inline (confirm, or exclude if not a mathematical claim)

NODE: bpN:p7:consumers
KIND: claim
TITLE: Consumers
STATEMENT_SOURCE: blueprint-N/parts/p7-stability.tex#bpN:p7:consumers@L280-L282
PROOF_SOURCE: blueprint-N/parts/p7-stability.tex#bpN:p7:consumers@L280-L282
CONTRACT_ID: bpN:p7:consumers
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p7:resonant-prop2, bpN:p8:direction, bpN:p8:cutoffs, bpN:p7:nonresonant, bpN:p9:errata, bpN:p1:hessian-convert, bpN:p1:qc-convert, bpN:p1:realdomain, bpN:p1:constants, bpN:p7:stopped-extension, bpN:p3:confinement-glue, bpN:p7:energy-core, bpN:p7:no-exit, bpN:p7:resonant-lemma1, bpN:p7:resonant-lemma2
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p7:resonant-prop2 | blueprint-N/parts/p7-stability.tex#bpN:p7:consumers@L281-L281 | cited at this line (statement; \ref{bpN:p7:resonant-prop2})
EDGE: bpN:p8:direction | blueprint-N/parts/p7-stability.tex#bpN:p7:consumers@L281-L281 | cited at this line (statement; \ref{bpN:p8:direction})
EDGE: bpN:p8:cutoffs | blueprint-N/parts/p7-stability.tex#bpN:p7:consumers@L281-L281 | cited at this line (statement; \ref{bpN:p8:cutoffs})
EDGE: bpN:p7:nonresonant | blueprint-N/parts/p7-stability.tex#bpN:p7:consumers@L281-L281 | cited at this line (statement; \ref{bpN:p7:nonresonant})
EDGE: bpN:p9:errata | blueprint-N/parts/p7-stability.tex#bpN:p7:consumers@L281-L281 | cited at this line (statement; \ref{bpN:p9:errata})
EDGE: bpN:p1:hessian-convert | blueprint-N/parts/p7-stability.tex#bpN:p7:consumers@L281-L281 | cited at this line (statement; \ref{bpN:p1:hessian-convert})
EDGE: bpN:p1:qc-convert | blueprint-N/parts/p7-stability.tex#bpN:p7:consumers@L281-L281 | cited at this line (statement; \ref{bpN:p1:qc-convert})
EDGE: bpN:p1:realdomain | blueprint-N/parts/p7-stability.tex#bpN:p7:consumers@L281-L281 | cited at this line (statement; \ref{bpN:p1:realdomain})
EDGE: bpN:p1:constants | blueprint-N/parts/p7-stability.tex#bpN:p7:consumers@L281-L281 | cited at this line (statement; \ref{bpN:p1:constants})
EDGE: bpN:p7:stopped-extension | blueprint-N/parts/p7-stability.tex#bpN:p7:consumers@L281-L281 | cited at this line (statement; \ref{bpN:p7:stopped-extension})
EDGE: bpN:p3:confinement-glue | blueprint-N/parts/p7-stability.tex#bpN:p7:consumers@L281-L281 | cited at this line (statement; \ref{bpN:p3:confinement-glue})
EDGE: bpN:p7:energy-core | blueprint-N/parts/p7-stability.tex#bpN:p7:consumers@L281-L281 | cited at this line (statement; \ref{bpN:p7:energy-core})
EDGE: bpN:p7:no-exit | blueprint-N/parts/p7-stability.tex#bpN:p7:consumers@L281-L281 | cited at this line (statement; \ref{bpN:p7:no-exit})
EDGE: bpN:p7:resonant-lemma1 | blueprint-N/parts/p7-stability.tex#bpN:p7:consumers@L281-L281 | cited at this line (statement; \ref{bpN:p7:resonant-lemma1})
EDGE: bpN:p7:resonant-lemma2 | blueprint-N/parts/p7-stability.tex#bpN:p7:consumers@L281-L281 | cited at this line (statement; \ref{bpN:p7:resonant-lemma2})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: remark: its justification is inline (confirm, or exclude if not a mathematical claim)
