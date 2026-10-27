NODE: bpN:p4:ext-param
KIND: external
TITLE: Holomorphic dependence on a parameter
STATEMENT_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:ext-param@L23-L25
PROOF_SOURCE: -
CONTRACT_ID: bpN:p4:ext-param
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

NODE: bpN:p4:ext-weier
KIND: external
TITLE: Uniform limits
STATEMENT_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:ext-weier@L26-L27
PROOF_SOURCE: -
CONTRACT_ID: bpN:p4:ext-weier
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
NOTE: external item that cites \ref{bpN:p4:general-cauchy}, \Kref{bp:p1:uniform-limits}: if it only restates the cited external, exclude it as an alias and point its consumers at the cited node (SPEC)

NODE: bpN:p4:ext-series
KIND: external
TITLE: Series and integrals
STATEMENT_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:ext-series@L28-L29
PROOF_SOURCE: -
CONTRACT_ID: bpN:p4:ext-series
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
NOTE: external item that cites \Kref{bp:p1:ext-integral}: if it only restates the cited external, exclude it as an alias and point its consumers at the cited node (SPEC)

NODE: bpN:p4:domains
KIND: definition
TITLE: Domains
STATEMENT_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:domains@L34-L39
PROOF_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:domains@L40-L45
CONTRACT_ID: bpN:p4:domains
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p4:dom-open, stepN:p4:dom-poly
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p4:dom-open | blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:domains@L41-L41 | proof step of this result
EDGE: stepN:p4:dom-poly | blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:domains@L43-L43 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p4:dom-open
KIND: step
TITLE: Openness and monotonicity
STATEMENT_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:dom-open@L41-L41
PROOF_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:dom-open@L41-L41
CONTRACT_ID: stepN:p4:dom-open
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

NODE: stepN:p4:dom-poly
KIND: step
TITLE: Polydisc
STATEMENT_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:dom-poly@L43-L44
PROOF_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:dom-poly@L43-L44
CONTRACT_ID: stepN:p4:dom-poly
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

NODE: bpN:p4:norm
KIND: definition
TITLE: The class $\Os rs$ and the weighted norm
STATEMENT_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:norm@L47-L54
PROOF_SOURCE: -
CONTRACT_ID: bpN:p4:norm
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

NODE: bpN:p4:coefficients
KIND: lemma
TITLE: Coefficients, derivatives, series
STATEMENT_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:coefficients@L57-L67
PROOF_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:coefficients@L68-L81
CONTRACT_ID: bpN:p4:coefficients
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p4:co-holo, stepN:p4:co-deriv, stepN:p4:co-series, stepN:p4:co-repr, K:bp:p1:fourier-basic, K:bp:p1:summation
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p4:co-holo | blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:coefficients@L69-L69 | proof step of this result
EDGE: stepN:p4:co-deriv | blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:coefficients@L72-L72 | proof step of this result
EDGE: stepN:p4:co-series | blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:coefficients@L75-L75 | proof step of this result
EDGE: stepN:p4:co-repr | blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:coefficients@L79-L79 | proof step of this result
EDGE: K:bp:p1:fourier-basic | blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:coefficients@L66-L66 | cited at this line (statement; \Kref{bp:p1:fourier-basic}; in \source: provenance unless consumed)
EDGE: K:bp:p1:summation | blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:coefficients@L66-L66 | cited at this line (statement; \Kref{bp:p1:summation}; in \source: provenance unless consumed)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p4:co-holo
KIND: step
TITLE: (a)
STATEMENT_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:co-holo@L69-L70
PROOF_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:co-holo@L69-L70
CONTRACT_ID: stepN:p4:co-holo
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p4:ext-param, K:bp:p1:holomorphic-regularity
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p4:ext-param | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:co-holo@L70-L70 | cited at this line (step; \ref{bpN:p4:ext-param})
EDGE: K:bp:p1:holomorphic-regularity | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:co-holo@L70-L70 | cited at this line (step; \Kref{bp:p1:holomorphic-regularity})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p4:co-deriv
KIND: step
TITLE: (b)
STATEMENT_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:co-deriv@L72-L73
PROOF_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:co-deriv@L72-L73
CONTRACT_ID: stepN:p4:co-deriv
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: K:bp:p1:holomorphic-regularity, K:bp:p1:fourier-basic, bpN:p4:ext-param, stepN:p4:co-holo
ROUTES: -
ROUTE_FOR: -
EDGE: K:bp:p1:holomorphic-regularity | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:co-deriv@L72-L72 | cited at this line (step; \Kref{bp:p1:holomorphic-regularity})
EDGE: K:bp:p1:fourier-basic | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:co-deriv@L72-L72 | cited at this line (step; \Kref{bp:p1:fourier-basic})
EDGE: bpN:p4:ext-param | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:co-deriv@L73-L73 | cited at this line (step; \ref{bpN:p4:ext-param})
EDGE: stepN:p4:co-holo | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:co-deriv@L73-L73 | cited at this line (step; \ref{stepN:p4:co-holo})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p4:co-series
KIND: step
TITLE: (c)
STATEMENT_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:co-series@L75-L77
PROOF_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:co-series@L75-L77
CONTRACT_ID: stepN:p4:co-series
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p4:ext-weier, K:bp:p1:exp-sums, bpN:p4:ext-series, K:bp:p1:summation
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p4:ext-weier | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:co-series@L76-L76 | cited at this line (step; \ref{bpN:p4:ext-weier})
EDGE: K:bp:p1:exp-sums | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:co-series@L76-L76 | cited at this line (step; \Kref{bp:p1:exp-sums})
EDGE: bpN:p4:ext-series | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:co-series@L77-L77 | cited at this line (step; \ref{bpN:p4:ext-series})
EDGE: K:bp:p1:summation | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:co-series@L77-L77 | cited at this line (step; \Kref{bp:p1:summation})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p4:co-repr
KIND: step
TITLE: (d)
STATEMENT_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:co-repr@L79-L80
PROOF_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:co-repr@L79-L80
CONTRACT_ID: stepN:p4:co-repr
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: K:bp:p1:summation, K:bp:p1:fourier-basic
ROUTES: -
ROUTE_FOR: -
EDGE: K:bp:p1:summation | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:co-repr@L79-L79 | cited at this line (step; \Kref{bp:p1:summation})
EDGE: K:bp:p1:fourier-basic | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:co-repr@L80-L80 | cited at this line (step; \Kref{bp:p1:fourier-basic})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpN:p4:sup-weighted
KIND: lemma
TITLE: B.1
STATEMENT_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:sup-weighted@L85-L93
PROOF_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:sup-weighted@L94-L101
CONTRACT_ID: bpN:p4:sup-weighted
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p4:b1-a, stepN:p4:b1-b, bpN:p4:dictionary, bpN:p1:norm-convert, K:bp:p1:summation, K:bp:p1:decay, K:bp:p1:exp-sums
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p4:b1-a | blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:sup-weighted@L95-L95 | proof step of this result
EDGE: stepN:p4:b1-b | blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:sup-weighted@L98-L98 | proof step of this result
EDGE: bpN:p4:dictionary | blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:sup-weighted@L91-L91 | cited at this line (statement; \ref{bpN:p4:dictionary})
EDGE: bpN:p1:norm-convert | blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:sup-weighted@L92-L92 | cited at this line (statement; \ref{bpN:p1:norm-convert}; in \source: provenance unless consumed)
EDGE: K:bp:p1:summation | blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:sup-weighted@L92-L92 | cited at this line (statement; \Kref{bp:p1:summation}; in \source: provenance unless consumed)
EDGE: K:bp:p1:decay | blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:sup-weighted@L92-L92 | cited at this line (statement; \Kref{bp:p1:decay}; in \source: provenance unless consumed)
EDGE: K:bp:p1:exp-sums | blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:sup-weighted@L92-L92 | cited at this line (statement; \Kref{bp:p1:exp-sums}; in \source: provenance unless consumed)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p4:b1-a
KIND: step
TITLE: (a)
STATEMENT_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b1-a@L95-L96
PROOF_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b1-a@L95-L96
CONTRACT_ID: stepN:p4:b1-a
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p4:coefficients, bpN:p0:actionnbhd#actionNbhd, bpN:p0:strip#complexStrip
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p4:coefficients | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b1-a@L95-L95 | cited at this line (step; \ref{bpN:p4:coefficients})
EDGE: bpN:p0:actionnbhd#actionNbhd | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b1-a@L96-L96 | cited at this line (step; \Kref{bp:p0:domains})
EDGE: bpN:p0:strip#complexStrip | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b1-a@L96-L96 | cited at this line (step; \Kref{bp:p0:domains})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p4:b1-b
KIND: step
TITLE: (b)
STATEMENT_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b1-b@L98-L100
PROOF_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b1-b@L98-L100
CONTRACT_ID: stepN:p4:b1-b
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: K:bp:p1:decay, K:bp:p1:exp-sums
ROUTES: -
ROUTE_FOR: -
EDGE: K:bp:p1:decay | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b1-b@L98-L98 | cited at this line (step; \Kref{bp:p1:decay})
EDGE: K:bp:p1:exp-sums | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b1-b@L99-L99 | cited at this line (step; \Kref{bp:p1:exp-sums})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpN:p4:algebra
KIND: lemma
TITLE: B.2
STATEMENT_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:algebra@L105-L109
PROOF_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:algebra@L110-L118
CONTRACT_ID: bpN:p4:algebra
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p4:b2-class, stepN:p4:b2-coeff, stepN:p4:b2-norm
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p4:b2-class | blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:algebra@L111-L111 | proof step of this result
EDGE: stepN:p4:b2-coeff | blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:algebra@L113-L113 | proof step of this result
EDGE: stepN:p4:b2-norm | blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:algebra@L116-L116 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p4:b2-class
KIND: step
TITLE: Product is in the class
STATEMENT_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b2-class@L111-L111
PROOF_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b2-class@L111-L111
CONTRACT_ID: stepN:p4:b2-class
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

NODE: stepN:p4:b2-coeff
KIND: step
TITLE: Coefficients
STATEMENT_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b2-coeff@L113-L114
PROOF_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b2-coeff@L113-L114
CONTRACT_ID: stepN:p4:b2-coeff
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p4:coefficients, bpN:p4:ext-series
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p4:coefficients | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b2-coeff@L113-L113 | cited at this line (step; \ref{bpN:p4:coefficients})
EDGE: bpN:p4:ext-series | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b2-coeff@L113-L113 | cited at this line (step; \ref{bpN:p4:ext-series})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p4:b2-norm
KIND: step
TITLE: Norm
STATEMENT_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b2-norm@L116-L117
PROOF_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b2-norm@L116-L117
CONTRACT_ID: stepN:p4:b2-norm
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

NODE: bpN:p4:cauchy
KIND: lemma
TITLE: B.3
STATEMENT_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:cauchy@L122-L130
PROOF_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:cauchy@L131-L140
CONTRACT_ID: bpN:p4:cauchy
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p4:b3-a, stepN:p4:b3-b, bpN:p4:sharp, bpN:p4:dictionary
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p4:b3-a | blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:cauchy@L132-L132 | proof step of this result
EDGE: stepN:p4:b3-b | blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:cauchy@L135-L135 | proof step of this result
EDGE: bpN:p4:sharp | blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:cauchy@L125-L125 | cited at this line (statement; \ref{bpN:p4:sharp})
EDGE: bpN:p4:dictionary | blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:cauchy@L129-L129 | cited at this line (statement; \ref{bpN:p4:dictionary}; in \source: provenance unless consumed)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p4:b3-a
KIND: step
TITLE: (a): coefficients
STATEMENT_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b3-a@L132-L133
PROOF_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b3-a@L132-L133
CONTRACT_ID: stepN:p4:b3-a
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p4:coefficients, K:bp:p1:exp-sums
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p4:coefficients | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b3-a@L132-L132 | cited at this line (step; \ref{bpN:p4:coefficients})
EDGE: K:bp:p1:exp-sums | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b3-a@L133-L133 | cited at this line (step; \Kref{bp:p1:exp-sums})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p4:b3-b
KIND: step
TITLE: (b): Cauchy integral
STATEMENT_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b3-b@L135-L139
PROOF_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b3-b@L135-L139
CONTRACT_ID: stepN:p4:b3-b
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p4:coefficients, K:bp:p1:ext-cauchy, bpN:p4:ext-series
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p4:coefficients | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b3-b@L136-L136 | cited at this line (step; \ref{bpN:p4:coefficients})
EDGE: K:bp:p1:ext-cauchy | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b3-b@L136-L136 | cited at this line (step; \Kref{bp:p1:ext-cauchy})
EDGE: bpN:p4:ext-series | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b3-b@L137-L137 | cited at this line (step; \ref{bpN:p4:ext-series})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpN:p4:bracket
KIND: lemma
TITLE: B.4
STATEMENT_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:bracket@L146-L150
PROOF_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:bracket@L151-L164
CONTRACT_ID: bpN:p4:bracket
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p4:b4-four, stepN:p4:b4-prod
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p4:b4-four | blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:bracket@L154-L154 | proof step of this result
EDGE: stepN:p4:b4-prod | blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:bracket@L159-L159 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p4:b4-four
KIND: step
TITLE: Pointwise product estimate
STATEMENT_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b4-four@L154-L157
PROOF_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b4-four@L154-L157
CONTRACT_ID: stepN:p4:b4-four
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p4:algebra
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p4:algebra | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b4-four@L154-L154 | cited at this line (step; \ref{bpN:p4:algebra})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p4:b4-prod
KIND: step
TITLE: Four derivative bounds
STATEMENT_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b4-prod@L159-L163
PROOF_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b4-prod@L159-L163
CONTRACT_ID: stepN:p4:b4-prod
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p4:cauchy
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p4:cauchy | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b4-prod@L159-L159 | cited at this line (step; \ref{bpN:p4:cauchy})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpN:p4:general-cauchy
KIND: lemma
TITLE: C.1
STATEMENT_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:general-cauchy@L168-L171
PROOF_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:general-cauchy@L172-L176
CONTRACT_ID: bpN:p4:general-cauchy
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p4:c1-line, stepN:p4:c1-cauchy
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p4:c1-line | blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:general-cauchy@L173-L173 | proof step of this result
EDGE: stepN:p4:c1-cauchy | blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:general-cauchy@L175-L175 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p4:c1-line
KIND: step
TITLE: Reduction to one variable
STATEMENT_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:c1-line@L173-L173
PROOF_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:c1-line@L173-L173
CONTRACT_ID: stepN:p4:c1-line
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

NODE: stepN:p4:c1-cauchy
KIND: step
TITLE: Cauchy
STATEMENT_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:c1-cauchy@L175-L175
PROOF_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:c1-cauchy@L175-L175
CONTRACT_ID: stepN:p4:c1-cauchy
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: K:bp:p1:ext-cauchy
ROUTES: -
ROUTE_FOR: -
EDGE: K:bp:p1:ext-cauchy | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:c1-cauchy@L175-L175 | cited at this line (step; \Kref{bp:p1:ext-cauchy})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpN:p4:projections
KIND: lemma
TITLE: $P_S$, $T_K$, averages
STATEMENT_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:projections@L181-L187
PROOF_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:projections@L188-L192
CONTRACT_ID: bpN:p4:projections
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p4:pr-class, stepN:p4:pr-tail
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p4:pr-class | blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:projections@L189-L189 | proof step of this result
EDGE: stepN:p4:pr-tail | blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:projections@L191-L191 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p4:pr-class
KIND: step
TITLE: Class and coefficients
STATEMENT_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:pr-class@L189-L189
PROOF_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:pr-class@L189-L189
CONTRACT_ID: stepN:p4:pr-class
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p4:coefficients
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p4:coefficients | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:pr-class@L189-L189 | cited at this line (step; \ref{bpN:p4:coefficients})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p4:pr-tail
KIND: step
TITLE: Tail
STATEMENT_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:pr-tail@L191-L191
PROOF_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:pr-tail@L191-L191
CONTRACT_ID: stepN:p4:pr-tail
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p4:coefficients
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p4:coefficients | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:pr-tail@L191-L191 | cited at this line (step; \ref{bpN:p4:coefficients})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpN:p4:sharp
KIND: lemma
TITLE: Variants for $\sharp$
STATEMENT_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:sharp@L201-L205
PROOF_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:sharp@L206-L213
CONTRACT_ID: bpN:p4:sharp
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p4:sh-b1, stepN:p4:sh-b2, stepN:p4:sh-b3, stepN:p4:sh-b4, stepN:p4:sh-pr, bpN:p4:sup-weighted, bpN:p4:algebra, bpN:p4:cauchy, bpN:p4:bracket, bpN:p4:projections, bpN:p4:coefficients
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p4:sh-b1 | blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:sharp@L208-L208 | proof step of this result
EDGE: stepN:p4:sh-b2 | blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:sharp@L209-L209 | proof step of this result
EDGE: stepN:p4:sh-b3 | blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:sharp@L210-L210 | proof step of this result
EDGE: stepN:p4:sh-b4 | blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:sharp@L211-L211 | proof step of this result
EDGE: stepN:p4:sh-pr | blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:sharp@L212-L212 | proof step of this result
EDGE: bpN:p4:sup-weighted | blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:sharp@L202-L202 | cited at this line (statement; \ref{bpN:p4:sup-weighted})
EDGE: bpN:p4:algebra | blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:sharp@L202-L202 | cited at this line (statement; \ref{bpN:p4:algebra})
EDGE: bpN:p4:cauchy | blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:sharp@L202-L202 | cited at this line (statement; \ref{bpN:p4:cauchy})
EDGE: bpN:p4:bracket | blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:sharp@L202-L202 | cited at this line (statement; \ref{bpN:p4:bracket})
EDGE: bpN:p4:projections | blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:sharp@L202-L202 | cited at this line (statement; \ref{bpN:p4:projections})
EDGE: bpN:p4:coefficients | blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:sharp@L203-L203 | cited at this line (statement; \ref{bpN:p4:coefficients})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p4:sh-b1
KIND: step
TITLE: B.1
STATEMENT_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:sh-b1@L208-L208
PROOF_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:sh-b1@L208-L208
CONTRACT_ID: stepN:p4:sh-b1
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

NODE: stepN:p4:sh-b2
KIND: step
TITLE: B.2
STATEMENT_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:sh-b2@L209-L209
PROOF_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:sh-b2@L209-L209
CONTRACT_ID: stepN:p4:sh-b2
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p4:b2-norm
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p4:b2-norm | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:sh-b2@L209-L209 | cited at this line (step; \ref{stepN:p4:b2-norm})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p4:sh-b3
KIND: step
TITLE: B.3
STATEMENT_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:sh-b3@L210-L210
PROOF_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:sh-b3@L210-L210
CONTRACT_ID: stepN:p4:sh-b3
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p4:b3-a, stepN:p4:b3-b
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p4:b3-a | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:sh-b3@L210-L210 | cited at this line (step; \ref{stepN:p4:b3-a})
EDGE: stepN:p4:b3-b | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:sh-b3@L210-L210 | cited at this line (step; \ref{stepN:p4:b3-b})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p4:sh-b4
KIND: step
TITLE: B.4
STATEMENT_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:sh-b4@L211-L211
PROOF_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:sh-b4@L211-L211
CONTRACT_ID: stepN:p4:sh-b4
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p4:b4-prod
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p4:b4-prod | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:sh-b4@L211-L211 | cited at this line (step; \ref{stepN:p4:b4-prod})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p4:sh-pr
KIND: step
TITLE: Projections
STATEMENT_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:sh-pr@L212-L212
PROOF_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:sh-pr@L212-L212
CONTRACT_ID: stepN:p4:sh-pr
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

NODE: bpN:p4:dictionary
KIND: claim
TITLE: Dictionary with P\"oschel's normalisation and with Part~1
STATEMENT_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:dictionary@L215-L223
PROOF_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:dictionary@L215-L223
CONTRACT_ID: bpN:p4:dictionary
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p1:period-convert, bpN:p4:cauchy
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p1:period-convert | blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:dictionary@L219-L219 | cited at this line (statement; \ref{bpN:p1:period-convert})
EDGE: bpN:p4:cauchy | blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:dictionary@L222-L222 | cited at this line (statement; \ref{bpN:p4:cauchy})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: remark: its justification is inline (confirm, or exclude if not a mathematical claim)
