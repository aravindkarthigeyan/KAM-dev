NODE: bpI:p3:setting
KIND: definition
TITLE: Data of Part~\ref{bpI:p3}
STATEMENT_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:setting@L34-L46
PROOF_SOURCE: -
CONTRACT_ID: bpI:p3:setting
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: K:bp:p4:freq-map
ROUTES: -
ROUTE_FOR: -
EDGE: K:bp:p4:freq-map | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:setting@L45-L45 | cited at this line (statement; \Kref{bp:p4:freq-map})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: standing hypotheses of a part (a local hypothesis package, KIND definition; see SPEC) [pre-extract: dropped reference to bpI:p0:head, which part p3 proves or sets up]

NODE: bpI:p3:constants
KIND: definition
TITLE: Constants of the data
STATEMENT_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:constants@L52-L79
PROOF_SOURCE: -
CONTRACT_ID: bpI:p3:constants
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: K:bp:p4:data, K:bp:p4:h-bounded, K:bp:p1:cauchy-open
ROUTES: -
ROUTE_FOR: -
EDGE: K:bp:p4:data | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:constants@L53-L53 | cited at this line (statement; \Kref{bp:p4:data})
EDGE: K:bp:p4:h-bounded | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:constants@L58-L58 | cited at this line (statement; \Kref{bp:p4:h-bounded})
EDGE: K:bp:p1:cauchy-open | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:constants@L58-L58 | cited at this line (statement; \Kref{bp:p1:cauchy-open})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpI:p3:compact
KIND: lemma
TITLE: $\mathcal S$ and the constants are well defined
STATEMENT_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:compact@L81-L83
PROOF_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:compact@L84-L97
CONTRACT_ID: bpI:p3:compact
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepI:p3:cp-compact, stepI:p3:cp-grad, stepI:p3:cp-inverse
ROUTES: -
ROUTE_FOR: -
EDGE: stepI:p3:cp-compact | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:compact@L85-L85 | proof step of this result
EDGE: stepI:p3:cp-grad | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:compact@L89-L89 | proof step of this result
EDGE: stepI:p3:cp-inverse | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:compact@L92-L92 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p3:cp-compact
KIND: step
TITLE: Compactness and inclusion
STATEMENT_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:cp-compact@L85-L88
PROOF_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:cp-compact@L85-L88
CONTRACT_ID: stepI:p3:cp-compact
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

NODE: stepI:p3:cp-grad
KIND: step
TITLE: The gradient is nonzero
STATEMENT_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:cp-grad@L89-L91
PROOF_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:cp-grad@L89-L91
CONTRACT_ID: stepI:p3:cp-grad
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p3:det-identity, K:bp:p4:freq-map
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p3:det-identity | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:cp-grad@L90-L90 | cited at this line (step; \ref{bpI:p3:det-identity})
EDGE: K:bp:p4:freq-map | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:cp-grad@L91-L91 | cited at this line (step; \Kref{bp:p4:freq-map})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p3:cp-inverse
KIND: step
TITLE: The bordered inverse
STATEMENT_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:cp-inverse@L92-L96
PROOF_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:cp-inverse@L92-L96
CONTRACT_ID: stepI:p3:cp-inverse
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: K:bp:p4:freq-map, K:bp:p1:holomorphic-regularity, K:bp:p1:ext-cramer, K:bp:p1:real-inverse
ROUTES: -
ROUTE_FOR: -
EDGE: K:bp:p4:freq-map | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:cp-inverse@L93-L93 | cited at this line (step; \Kref{bp:p4:freq-map})
EDGE: K:bp:p1:holomorphic-regularity | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:cp-inverse@L94-L94 | cited at this line (step; \Kref{bp:p1:holomorphic-regularity})
EDGE: K:bp:p1:ext-cramer | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:cp-inverse@L95-L95 | cited at this line (step; \Kref{bp:p1:ext-cramer})
EDGE: K:bp:p1:real-inverse | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:cp-inverse@L96-L96 | cited at this line (step; \Kref{bp:p1:real-inverse})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpI:p3:ext-ift
KIND: external
TITLE: Inverse function theorem
STATEMENT_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:ext-ift@L102-L104
PROOF_SOURCE: -
CONTRACT_ID: bpI:p3:ext-ift
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

NODE: bpI:p3:ext-compact
KIND: external
TITLE: Compactness
STATEMENT_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:ext-compact@L105-L106
PROOF_SOURCE: -
CONTRACT_ID: bpI:p3:ext-compact
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

NODE: bpI:p3:ext-lebesgue
KIND: external
TITLE: Lebesgue measure on $\R^2$
STATEMENT_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:ext-lebesgue@L107-L107
PROOF_SOURCE: -
CONTRACT_ID: bpI:p3:ext-lebesgue
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

NODE: bpI:p3:det-identity
KIND: lemma
TITLE: The bordered determinant
STATEMENT_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:det-identity@L116-L123
PROOF_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:det-identity@L124-L132
CONTRACT_ID: bpI:p3:det-identity
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepI:p3:di-expand, stepI:p3:di-conseq, K:bp:p4:freq-map
ROUTES: -
ROUTE_FOR: -
EDGE: stepI:p3:di-expand | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:det-identity@L125-L125 | proof step of this result
EDGE: stepI:p3:di-conseq | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:det-identity@L130-L130 | proof step of this result
EDGE: K:bp:p4:freq-map | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:det-identity@L117-L117 | cited at this line (statement; \Kref{bp:p4:freq-map})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p3:di-expand
KIND: step
TITLE: Expansion
STATEMENT_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:di-expand@L125-L129
PROOF_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:di-expand@L125-L129
CONTRACT_ID: stepI:p3:di-expand
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p0:bordered#borderedHessian, bpI:p1:trivial, stepI:p1:tr-compare
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p0:bordered#borderedHessian | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:di-expand@L126-L126 | cited at this line (step; \ref{bpI:p0:bordered})
EDGE: bpI:p1:trivial | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:di-expand@L126-L126 | cited at this line (step; \ref{bpI:p1:trivial})
EDGE: stepI:p1:tr-compare | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:di-expand@L127-L127 | cited at this line (step; \ref{stepI:p1:tr-compare})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p3:di-conseq
KIND: step
TITLE: Consequences
STATEMENT_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:di-conseq@L130-L131
PROOF_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:di-conseq@L130-L131
CONTRACT_ID: stepI:p3:di-conseq
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

NODE: bpI:p3:coordinates
KIND: definition
TITLE: Direction coordinates at a point
STATEMENT_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:coordinates@L134-L149
PROOF_SOURCE: -
CONTRACT_ID: bpI:p3:coordinates
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: K:bp:p4:freq-map
ROUTES: -
ROUTE_FOR: -
EDGE: K:bp:p4:freq-map | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:coordinates@L148-L148 | cited at this line (statement; \Kref{bp:p4:freq-map})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpI:p3:slope-ray
KIND: claim
TITLE: Slopes encode rays
STATEMENT_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:slope-ray@L151-L156
PROOF_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:slope-ray@L151-L156
CONTRACT_ID: bpI:p3:slope-ray
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
NOTE: remark: its justification is inline (confirm, or exclude if not a mathematical claim)

NODE: bpI:p3:chart
KIND: lemma
TITLE: Local chart
STATEMENT_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:chart@L158-L164
PROOF_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:chart@L165-L175
CONTRACT_ID: bpI:p3:chart
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepI:p3:ch-deriv, stepI:p3:ch-det, stepI:p3:ch-ift
ROUTES: -
ROUTE_FOR: -
EDGE: stepI:p3:ch-deriv | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:chart@L166-L166 | proof step of this result
EDGE: stepI:p3:ch-det | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:chart@L170-L170 | proof step of this result
EDGE: stepI:p3:ch-ift | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:chart@L173-L173 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p3:ch-deriv
KIND: step
TITLE: Derivative of $h$ and of $m_c$
STATEMENT_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:ch-deriv@L166-L169
PROOF_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:ch-deriv@L166-L169
CONTRACT_ID: stepI:p3:ch-deriv
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: K:bp:p4:freq-map
ROUTES: -
ROUTE_FOR: -
EDGE: K:bp:p4:freq-map | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:ch-deriv@L167-L167 | cited at this line (step; \Kref{bp:p4:freq-map})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p3:ch-det
KIND: step
TITLE: Determinant
STATEMENT_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:ch-det@L170-L172
PROOF_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:ch-det@L170-L172
CONTRACT_ID: stepI:p3:ch-det
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p3:det-identity
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p3:det-identity | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:ch-det@L172-L172 | cited at this line (step; \ref{bpI:p3:det-identity})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p3:ch-ift
KIND: step
TITLE: Inverse function theorem
STATEMENT_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:ch-ift@L173-L174
PROOF_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:ch-ift@L173-L174
CONTRACT_ID: stepI:p3:ch-ift
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p3:ext-ift
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p3:ext-ift | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:ch-ift@L174-L174 | cited at this line (step; \ref{bpI:p3:ext-ift})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpI:p3:patch
KIND: definition
TITLE: Patch
STATEMENT_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:patch@L177-L186
PROOF_SOURCE: -
CONTRACT_ID: bpI:p3:patch
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p3:chart
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p3:chart | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:patch@L178-L178 | cited at this line (statement; \ref{bpI:p3:chart})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpI:p3:cover
KIND: lemma
TITLE: Finite cover
STATEMENT_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:cover@L188-L192
PROOF_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:cover@L193-L199
CONTRACT_ID: bpI:p3:cover
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepI:p3:cv-local, stepI:p3:cv-compact
ROUTES: -
ROUTE_FOR: -
EDGE: stepI:p3:cv-local | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:cover@L194-L194 | proof step of this result
EDGE: stepI:p3:cv-compact | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:cover@L197-L197 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p3:cv-local
KIND: step
TITLE: A patch at every $c\in\overline{B'}$
STATEMENT_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:cv-local@L194-L196
PROOF_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:cv-local@L194-L196
CONTRACT_ID: stepI:p3:cv-local
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p3:chart, bpI:p3:patch
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p3:chart | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:cv-local@L195-L195 | cited at this line (step; \ref{bpI:p3:chart})
EDGE: bpI:p3:patch | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:cv-local@L195-L195 | cited at this line (step; \ref{bpI:p3:P1})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p3:cv-compact
KIND: step
TITLE: Compactness
STATEMENT_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:cv-compact@L197-L198
PROOF_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:cv-compact@L197-L198
CONTRACT_ID: stepI:p3:cv-compact
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p3:ext-compact
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p3:ext-compact | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:cv-compact@L198-L198 | cited at this line (step; \ref{bpI:p3:ext-compact})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpI:p3:dio-open
KIND: lemma
TITLE: Diophantine vectors in an open set
STATEMENT_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:dio-open@L204-L209
PROOF_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:dio-open@L210-L215
CONTRACT_ID: bpI:p3:dio-open
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepI:p3:do-positive, stepI:p3:do-choice, K:bp:p0:g3
ROUTES: -
ROUTE_FOR: -
EDGE: stepI:p3:do-positive | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:dio-open@L211-L211 | proof step of this result
EDGE: stepI:p3:do-choice | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:dio-open@L213-L213 | proof step of this result
EDGE: K:bp:p0:g3 | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:dio-open@L206-L206 | cited at this line (statement; \Kref{bp:p0:g3}; in \source: provenance unless consumed)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p3:do-positive
KIND: step
TITLE: Positive measure
STATEMENT_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:do-positive@L211-L212
PROOF_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:do-positive@L211-L212
CONTRACT_ID: stepI:p3:do-positive
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p3:ext-lebesgue, K:bp:p0:g3
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p3:ext-lebesgue | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:do-positive@L212-L212 | cited at this line (step; \ref{bpI:p3:ext-lebesgue})
EDGE: K:bp:p0:g3 | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:do-positive@L212-L212 | cited at this line (step; \Kref{bp:p0:g3})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p3:do-choice
KIND: step
TITLE: Choice of $\gamma$
STATEMENT_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:do-choice@L213-L214
PROOF_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:do-choice@L213-L214
CONTRACT_ID: stepI:p3:do-choice
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

NODE: bpI:p3:rays
KIND: lemma
TITLE: Rays in a sector
STATEMENT_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:rays@L217-L222
PROOF_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:rays@L223-L230
CONTRACT_ID: bpI:p3:rays
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepI:p3:ry-open, stepI:p3:ry-dio
ROUTES: -
ROUTE_FOR: -
EDGE: stepI:p3:ry-open | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:rays@L224-L224 | proof step of this result
EDGE: stepI:p3:ry-dio | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:rays@L228-L228 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p3:ry-open
KIND: step
TITLE: An open nonempty set
STATEMENT_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:ry-open@L224-L227
PROOF_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:ry-open@L224-L227
CONTRACT_ID: stepI:p3:ry-open
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

NODE: stepI:p3:ry-dio
KIND: step
TITLE: Diophantine
STATEMENT_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:ry-dio@L228-L229
PROOF_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:ry-dio@L228-L229
CONTRACT_ID: stepI:p3:ry-dio
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p3:dio-open
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p3:dio-open | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:ry-dio@L229-L229 | cited at this line (step; \ref{bpI:p3:dio-open})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpI:p3:patch-rays
KIND: definition
TITLE: Rays of a patch
STATEMENT_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:patch-rays@L232-L240
PROOF_SOURCE: -
CONTRACT_ID: bpI:p3:patch-rays
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p3:cover, bpI:p3:rays
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p3:cover | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:patch-rays@L233-L233 | cited at this line (statement; \ref{bpI:p3:cover})
EDGE: bpI:p3:rays | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:patch-rays@L233-L233 | cited at this line (statement; \ref{bpI:p3:rays})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpI:p3:points
KIND: lemma
TITLE: The two points on the energy curve
STATEMENT_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:points@L242-L257
PROOF_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:points@L258-L269
CONTRACT_ID: bpI:p3:points
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepI:p3:pt-exist, stepI:p3:pt-parallel, stepI:p3:pt-position, stepI:p3:pt-segment, bpI:p3:patch-rays
ROUTES: -
ROUTE_FOR: -
EDGE: stepI:p3:pt-exist | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:points@L259-L259 | proof step of this result
EDGE: stepI:p3:pt-parallel | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:points@L261-L261 | proof step of this result
EDGE: stepI:p3:pt-position | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:points@L265-L265 | proof step of this result
EDGE: stepI:p3:pt-segment | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:points@L267-L267 | proof step of this result
EDGE: bpI:p3:patch-rays | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:points@L243-L243 | cited at this line (statement; \ref{bpI:p3:patch-rays})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p3:pt-exist
KIND: step
TITLE: Existence
STATEMENT_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:pt-exist@L259-L260
PROOF_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:pt-exist@L259-L260
CONTRACT_ID: stepI:p3:pt-exist
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p3:patch
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p3:patch | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:pt-exist@L260-L260 | cited at this line (step; \ref{bpI:p3:P2})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p3:pt-parallel
KIND: step
TITLE: Parallel gradient
STATEMENT_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:pt-parallel@L261-L264
PROOF_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:pt-parallel@L261-L264
CONTRACT_ID: stepI:p3:pt-parallel
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p3:slope-ray, bpI:p3:patch
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p3:slope-ray | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:pt-parallel@L263-L263 | cited at this line (step; \ref{bpI:p3:slope-ray})
EDGE: bpI:p3:patch | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:pt-parallel@L264-L264 | cited at this line (step; \ref{bpI:p3:P1})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p3:pt-position
KIND: step
TITLE: Position
STATEMENT_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:pt-position@L265-L266
PROOF_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:pt-position@L265-L266
CONTRACT_ID: stepI:p3:pt-position
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p3:patch
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p3:patch | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:pt-position@L266-L266 | cited at this line (step; \ref{bpI:p3:P1})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p3:pt-segment
KIND: step
TITLE: Energy segment
STATEMENT_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:pt-segment@L267-L268
PROOF_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:pt-segment@L267-L268
CONTRACT_ID: stepI:p3:pt-segment
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

NODE: bpI:p3:hypothesis-d
KIND: lemma
TITLE: The hypotheses (I1)--(I4) for $H=h+f$
STATEMENT_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:hypothesis-d@L274-L279
PROOF_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:hypothesis-d@L280-L287
CONTRACT_ID: bpI:p3:hypothesis-d
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepI:p3:hd-open, stepI:p3:hd-bounds, bpI:p3:setting, bpI:p0:g1, bpI:p3:constants, K:bp:p4:h1, K:bp:p4:derivative-bounds
ROUTES: -
ROUTE_FOR: -
EDGE: stepI:p3:hd-open | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:hypothesis-d@L281-L281 | proof step of this result
EDGE: stepI:p3:hd-bounds | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:hypothesis-d@L284-L284 | proof step of this result
EDGE: bpI:p3:setting | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:hypothesis-d@L275-L275 | cited at this line (statement; \ref{bpI:p3:setting})
EDGE: bpI:p0:g1 | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:hypothesis-d@L275-L275 | cited at this line (statement; \ref{bpI:p0:g1})
EDGE: bpI:p3:constants | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:hypothesis-d@L276-L276 | cited at this line (statement; \ref{bpI:p3:constants})
EDGE: K:bp:p4:h1 | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:hypothesis-d@L278-L278 | cited at this line (statement; \Kref{bp:p4:h1}; in \source: provenance unless consumed)
EDGE: K:bp:p4:derivative-bounds | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:hypothesis-d@L278-L278 | cited at this line (statement; \Kref{bp:p4:derivative-bounds}; in \source: provenance unless consumed)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p3:hd-open
KIND: step
TITLE: (I1)--(I3)
STATEMENT_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:hd-open@L281-L283
PROOF_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:hd-open@L281-L283
CONTRACT_ID: stepI:p3:hd-open
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: K:step:p4:h1-open, K:step:p4:h1-holo, K:bp:p4:h1
ROUTES: -
ROUTE_FOR: -
EDGE: K:step:p4:h1-open | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:hd-open@L282-L282 | cited at this line (step; \Kref{step:p4:h1-open})
EDGE: K:step:p4:h1-holo | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:hd-open@L282-L282 | cited at this line (step; \Kref{step:p4:h1-holo})
EDGE: K:bp:p4:h1 | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:hd-open@L282-L282 | cited at this line (step; \Kref{bp:p4:h1})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p3:hd-bounds
KIND: step
TITLE: (I4)
STATEMENT_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:hd-bounds@L284-L286
PROOF_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:hd-bounds@L284-L286
CONTRACT_ID: stepI:p3:hd-bounds
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: K:bp:p4:derivative-bounds, K:step:p4:db-cauchy
ROUTES: -
ROUTE_FOR: -
EDGE: K:bp:p4:derivative-bounds | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:hd-bounds@L285-L285 | cited at this line (step; \Kref{bp:p4:derivative-bounds})
EDGE: K:step:p4:db-cauchy | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:hd-bounds@L285-L285 | cited at this line (step; \Kref{step:p4:db-cauchy})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpI:p3:torus
KIND: lemma
TITLE: The flat torus of $H=h+f$
STATEMENT_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:torus@L289-L302
PROOF_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:torus@L303-L318
CONTRACT_ID: bpI:p3:torus
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepI:p3:to-torus, stepI:p3:to-error, stepI:p3:to-torsion, stepI:p3:to-neumann, stepI:p3:to-energy, bpI:p3:setting, bpI:p1:trivial, bpI:p1:last-row
ROUTES: -
ROUTE_FOR: -
EDGE: stepI:p3:to-torus | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:torus@L304-L304 | proof step of this result
EDGE: stepI:p3:to-error | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:torus@L308-L308 | proof step of this result
EDGE: stepI:p3:to-torsion | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:torus@L310-L310 | proof step of this result
EDGE: stepI:p3:to-neumann | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:torus@L314-L314 | proof step of this result
EDGE: stepI:p3:to-energy | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:torus@L316-L316 | proof step of this result
EDGE: bpI:p3:setting | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:torus@L290-L290 | cited at this line (statement; \ref{bpI:p3:setting})
EDGE: bpI:p1:trivial | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:torus@L301-L301 | cited at this line (statement; \ref{bpI:p1:trivial}; in \source: provenance unless consumed)
EDGE: bpI:p1:last-row | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:torus@L301-L301 | cited at this line (statement; \ref{bpI:p1:last-row}; in \source: provenance unless consumed)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p3:to-torus
KIND: step
TITLE: The torus and its frame
STATEMENT_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:to-torus@L304-L307
PROOF_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:to-torus@L304-L307
CONTRACT_ID: stepI:p3:to-torus
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepI:p1:tr-torus, stepI:p1:tr-frame, bpI:p1:trivial
ROUTES: -
ROUTE_FOR: -
EDGE: stepI:p1:tr-torus | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:to-torus@L305-L305 | cited at this line (step; \ref{stepI:p1:tr-torus})
EDGE: stepI:p1:tr-frame | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:to-torus@L305-L305 | cited at this line (step; \ref{stepI:p1:tr-frame})
EDGE: bpI:p1:trivial | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:to-torus@L305-L305 | cited at this line (step; \ref{bpI:p1:trivial})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p3:to-error
KIND: step
TITLE: The error
STATEMENT_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:to-error@L308-L309
PROOF_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:to-error@L308-L309
CONTRACT_ID: stepI:p3:to-error
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p1:trivial, stepI:p1:tr-field, bpI:p3:hypothesis-d
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p1:trivial | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:to-error@L309-L309 | cited at this line (step; \ref{bpI:p1:trivial})
EDGE: stepI:p1:tr-field | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:to-error@L309-L309 | cited at this line (step; \ref{stepI:p1:tr-field})
EDGE: bpI:p3:hypothesis-d | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:to-error@L309-L309 | cited at this line (step; \ref{bpI:p3:hypothesis-d})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p3:to-torsion
KIND: step
TITLE: Torsion and border
STATEMENT_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:to-torsion@L310-L313
PROOF_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:to-torsion@L310-L313
CONTRACT_ID: stepI:p3:to-torsion
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepI:p1:tr-torsion, bpI:p1:last-row, stepI:p1:tr-compare, bpI:p3:hypothesis-d, bpI:p1:extended-basic, K:bp:p1:ext-integral
ROUTES: -
ROUTE_FOR: -
EDGE: stepI:p1:tr-torsion | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:to-torsion@L311-L311 | cited at this line (step; \ref{stepI:p1:tr-torsion})
EDGE: bpI:p1:last-row | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:to-torsion@L312-L312 | cited at this line (step; \ref{bpI:p1:last-row})
EDGE: stepI:p1:tr-compare | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:to-torsion@L313-L313 | cited at this line (step; \ref{stepI:p1:tr-compare})
EDGE: bpI:p3:hypothesis-d | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:to-torsion@L313-L313 | cited at this line (step; \ref{bpI:p3:hypothesis-d})
EDGE: bpI:p1:extended-basic | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:to-torsion@L313-L313 | cited at this line (step; \ref{bpI:p1:extended-basic})
EDGE: K:bp:p1:ext-integral | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:to-torsion@L313-L313 | cited at this line (step; \Kref{bp:p1:ext-integral})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p3:to-neumann
KIND: step
TITLE: Invertibility
STATEMENT_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:to-neumann@L314-L315
PROOF_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:to-neumann@L314-L315
CONTRACT_ID: stepI:p3:to-neumann
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: K:bp:p1:neumann, K:bp:p1:real-inverse
ROUTES: -
ROUTE_FOR: -
EDGE: K:bp:p1:neumann | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:to-neumann@L315-L315 | cited at this line (step; \Kref{bp:p1:neumann})
EDGE: K:bp:p1:real-inverse | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:to-neumann@L315-L315 | cited at this line (step; \Kref{bp:p1:real-inverse})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p3:to-energy
KIND: step
TITLE: Energy average
STATEMENT_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:to-energy@L316-L317
PROOF_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:to-energy@L316-L317
CONTRACT_ID: stepI:p3:to-energy
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

NODE: bpI:p3:apply
KIND: lemma
TITLE: One application of I-G1
STATEMENT_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:apply@L320-L333
PROOF_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:apply@L334-L349
CONTRACT_ID: bpI:p3:apply
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepI:p3:ap-d, stepI:p3:ap-k, stepI:p3:ap-t, stepI:p3:ap-ray, stepI:p3:ap-error, stepI:p3:ap-small, stepI:p3:ap-conclusion, bpI:p0:g1, bpI:p3:constants, bpI:p3:setting, bpI:p3:points
ROUTES: -
ROUTE_FOR: -
EDGE: stepI:p3:ap-d | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:apply@L335-L335 | proof step of this result
EDGE: stepI:p3:ap-k | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:apply@L337-L337 | proof step of this result
EDGE: stepI:p3:ap-t | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:apply@L339-L339 | proof step of this result
EDGE: stepI:p3:ap-ray | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:apply@L341-L341 | proof step of this result
EDGE: stepI:p3:ap-error | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:apply@L343-L343 | proof step of this result
EDGE: stepI:p3:ap-small | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:apply@L345-L345 | proof step of this result
EDGE: stepI:p3:ap-conclusion | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:apply@L347-L347 | proof step of this result
EDGE: bpI:p0:g1 | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:apply@L321-L321 | cited at this line (statement; \ref{bpI:p0:g1})
EDGE: bpI:p3:constants | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:apply@L322-L322 | cited at this line (statement; \ref{bpI:p3:constants})
EDGE: bpI:p3:setting | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:apply@L323-L323 | cited at this line (statement; \ref{bpI:p3:setting})
EDGE: bpI:p3:points | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:apply@L327-L327 | cited at this line (statement; \ref{bpI:p3:points})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p3:ap-d
KIND: step
TITLE: (I1)--(I4)
STATEMENT_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:ap-d@L335-L336
PROOF_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:ap-d@L335-L336
CONTRACT_ID: stepI:p3:ap-d
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
EDGE: bpI:p3:hypothesis-d | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:ap-d@L336-L336 | cited at this line (step; \ref{bpI:p3:hypothesis-d})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p3:ap-k
KIND: step
TITLE: (I5)--(I7)
STATEMENT_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:ap-k@L337-L338
PROOF_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:ap-k@L337-L338
CONTRACT_ID: stepI:p3:ap-k
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p3:torus, bpI:p3:points
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p3:torus | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:ap-k@L338-L338 | cited at this line (step; \ref{bpI:p3:torus})
EDGE: bpI:p3:points | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:ap-k@L338-L338 | cited at this line (step; \ref{bpI:p3:points})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p3:ap-t
KIND: step
TITLE: (I8)
STATEMENT_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:ap-t@L339-L340
PROOF_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:ap-t@L339-L340
CONTRACT_ID: stepI:p3:ap-t
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p3:points, bpI:p3:torus
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p3:points | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:ap-t@L340-L340 | cited at this line (step; \ref{bpI:p3:points})
EDGE: bpI:p3:torus | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:ap-t@L340-L340 | cited at this line (step; \ref{bpI:p3:torus})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p3:ap-ray
KIND: step
TITLE: (I9)
STATEMENT_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:ap-ray@L341-L342
PROOF_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:ap-ray@L341-L342
CONTRACT_ID: stepI:p3:ap-ray
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

NODE: stepI:p3:ap-error
KIND: step
TITLE: (I10)--(I12)
STATEMENT_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:ap-error@L343-L344
PROOF_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:ap-error@L343-L344
CONTRACT_ID: stepI:p3:ap-error
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p3:patch-rays, bpI:p3:torus
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p3:patch-rays | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:ap-error@L344-L344 | cited at this line (step; \ref{bpI:p3:patch-rays})
EDGE: bpI:p3:torus | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:ap-error@L344-L344 | cited at this line (step; \ref{bpI:p3:torus})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p3:ap-small
KIND: step
TITLE: (I13)
STATEMENT_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:ap-small@L345-L346
PROOF_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:ap-small@L345-L346
CONTRACT_ID: stepI:p3:ap-small
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

NODE: stepI:p3:ap-conclusion
KIND: step
TITLE: Conclusion
STATEMENT_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:ap-conclusion@L347-L348
PROOF_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:ap-conclusion@L347-L348
CONTRACT_ID: stepI:p3:ap-conclusion
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p0:g1
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p0:g1 | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:ap-conclusion@L348-L348 | cited at this line (step; \ref{bpI:p0:g1})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpI:p3:constants-order
KIND: claim
TITLE: Constants of Part~\ref{bpI:p2} make the order of quantifiers harmless
STATEMENT_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:constants-order@L351-L354
PROOF_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:constants-order@L351-L354
CONTRACT_ID: bpI:p3:constants-order
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p0:g1, bpI:p2:g1
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p0:g1 | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:constants-order@L352-L352 | cited at this line (statement; \ref{bpI:p0:g1})
EDGE: bpI:p2:g1 | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:constants-order@L353-L353 | cited at this line (statement; \ref{bpI:p2:g1})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: remark: its justification is inline (confirm, or exclude if not a mathematical claim)

NODE: bpI:p3:uniform
KIND: definition
TITLE: Uniform constants
STATEMENT_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:uniform@L359-L369
PROOF_SOURCE: -
CONTRACT_ID: bpI:p3:uniform
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p3:cover, bpI:p3:patch-rays, bpI:p3:apply
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p3:cover | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:uniform@L360-L360 | cited at this line (statement; \ref{bpI:p3:cover})
EDGE: bpI:p3:patch-rays | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:uniform@L360-L360 | cited at this line (statement; \ref{bpI:p3:patch-rays})
EDGE: bpI:p3:apply | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:uniform@L360-L360 | cited at this line (statement; \ref{bpI:p3:apply})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpI:p3:tori
KIND: proposition
TITLE: Invariant tori on both sides: output of Part~\ref{bpI:p3}
STATEMENT_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:tori@L371-L387
PROOF_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:tori@L388-L405
CONTRACT_ID: bpI:p3:tori
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepI:p3:tori-patch, stepI:p3:tori-base, stepI:p3:tori-ig1, stepI:p3:tori-close, stepI:p3:tori-position, bpI:p3:setting, bpI:p3:uniform, bpI:p0:g1
ROUTES: -
ROUTE_FOR: -
EDGE: stepI:p3:tori-patch | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:tori@L389-L389 | proof step of this result
EDGE: stepI:p3:tori-base | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:tori@L392-L392 | proof step of this result
EDGE: stepI:p3:tori-ig1 | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:tori@L394-L394 | proof step of this result
EDGE: stepI:p3:tori-close | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:tori@L398-L398 | proof step of this result
EDGE: stepI:p3:tori-position | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:tori@L401-L401 | proof step of this result
EDGE: bpI:p3:setting | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:tori@L372-L372 | cited at this line (statement; \ref{bpI:p3:setting})
EDGE: bpI:p3:uniform | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:tori@L372-L372 | cited at this line (statement; \ref{bpI:p3:uniform})
EDGE: bpI:p0:g1 | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:tori@L386-L386 | cited at this line (statement; \ref{bpI:p0:g1}; in \source: provenance unless consumed)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p3:tori-patch
KIND: step
TITLE: Choice of the patch
STATEMENT_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:tori-patch@L389-L391
PROOF_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:tori-patch@L389-L391
CONTRACT_ID: stepI:p3:tori-patch
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p3:cover, bpI:p3:patch
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p3:cover | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:tori-patch@L390-L390 | cited at this line (step; \ref{bpI:p3:cover})
EDGE: bpI:p3:patch | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:tori-patch@L390-L390 | cited at this line (step; \ref{bpI:p3:P3})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p3:tori-base
KIND: step
TITLE: The base points
STATEMENT_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:tori-base@L392-L393
PROOF_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:tori-base@L392-L393
CONTRACT_ID: stepI:p3:tori-base
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p3:points
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p3:points | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:tori-base@L393-L393 | cited at this line (step; \ref{bpI:p3:points})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p3:tori-ig1
KIND: step
TITLE: Application of I-G1
STATEMENT_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:tori-ig1@L394-L397
PROOF_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:tori-ig1@L394-L397
CONTRACT_ID: stepI:p3:tori-ig1
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p3:apply, bpI:p0:g1, K:bp:p1:real-restriction, bpI:p0:realham#realHamiltonian, bpI:p0:realham#frequencyMap
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p3:apply | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:tori-ig1@L395-L395 | cited at this line (step; \ref{bpI:p3:apply})
EDGE: bpI:p0:g1 | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:tori-ig1@L395-L395 | cited at this line (step; \ref{bpI:p0:g1})
EDGE: K:bp:p1:real-restriction | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:tori-ig1@L396-L396 | cited at this line (step; \Kref{bp:p1:real-restriction})
EDGE: bpI:p0:realham#realHamiltonian | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:tori-ig1@L397-L397 | cited at this line (step; \ref{bpI:p0:realham})
EDGE: bpI:p0:realham#frequencyMap | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:tori-ig1@L397-L397 | cited at this line (step; \ref{bpI:p0:realham})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p3:tori-close
KIND: step
TITLE: Closeness and derivatives
STATEMENT_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:tori-close@L398-L400
PROOF_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:tori-close@L398-L400
CONTRACT_ID: stepI:p3:tori-close
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: K:bp:p1:cauchy-strip
ROUTES: -
ROUTE_FOR: -
EDGE: K:bp:p1:cauchy-strip | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:tori-close@L400-L400 | cited at this line (step; \Kref{bp:p1:cauchy-strip})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p3:tori-position
KIND: step
TITLE: Position
STATEMENT_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:tori-position@L401-L404
PROOF_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:tori-position@L401-L404
CONTRACT_ID: stepI:p3:tori-position
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p3:compact, bpI:p0:g1
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p3:compact | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:tori-position@L403-L403 | cited at this line (step; \ref{bpI:p3:compact})
EDGE: bpI:p0:g1 | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:tori-position@L403-L403 | cited at this line (step; \ref{bpI:p0:g1})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpI:p3:consumption
KIND: claim
TITLE: What Part~5 does with this
STATEMENT_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:consumption@L407-L410
PROOF_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:consumption@L407-L410
CONTRACT_ID: bpI:p3:consumption
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p3:tori, bpI:p5:mu, bpI:p5:separation, bpI:p5:confinement, bpI:p5:p3-gap
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p3:tori | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:consumption@L408-L408 | cited at this line (statement; \ref{bpI:p3:tori})
EDGE: bpI:p5:mu | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:consumption@L409-L409 | cited at this line (statement; \ref{bpI:p5:mu})
EDGE: bpI:p5:separation | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:consumption@L409-L409 | cited at this line (statement; \ref{bpI:p5:separation})
EDGE: bpI:p5:confinement | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:consumption@L409-L409 | cited at this line (statement; \ref{bpI:p5:confinement})
EDGE: bpI:p5:p3-gap | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:consumption@L409-L409 | cited at this line (statement; \ref{bpI:p5:p3-gap})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: remark: its justification is inline (confirm, or exclude if not a mathematical claim)

NODE: bpI:p3:doubts
KIND: claim
TITLE: Deviations, doubts
STATEMENT_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:doubts@L412-L416
PROOF_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:doubts@L412-L416
CONTRACT_ID: bpI:p3:doubts
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p3:det-identity, N:bpN:p2:qc-kernel
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p3:det-identity | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:doubts@L413-L413 | cited at this line (statement; \ref{bpI:p3:det-identity})
EDGE: N:bpN:p2:qc-kernel | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:doubts@L415-L415 | cited at this line (statement; \Nref{bpN:p2:qc-kernel})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: remark: its justification is inline (confirm, or exclude if not a mathematical claim)
