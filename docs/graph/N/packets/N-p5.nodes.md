NODE: bpN:p5:route
KIND: claim
TITLE: Decision for Lemma~B.5: the Lie series, not the sup-norm fallback
STATEMENT_SOURCE: blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:route@L8-L15
PROOF_SOURCE: blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:route@L8-L15
CONTRACT_ID: bpN:p5:route
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p4:sup-weighted, bpN:p5:flow, bpN:p5:canonical-map, bpN:p4:bracket, bpN:p5:adjoint, bpN:p5:taylor, bpN:p5:composition
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p4:sup-weighted | blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:route@L9-L9 | cited at this line (statement; \ref{bpN:p4:sup-weighted})
EDGE: bpN:p5:flow | blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:route@L12-L12 | cited at this line (statement; \ref{bpN:p5:flow})
EDGE: bpN:p5:canonical-map | blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:route@L12-L12 | cited at this line (statement; \ref{bpN:p5:canonical-map})
EDGE: bpN:p4:bracket | blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:route@L13-L13 | cited at this line (statement; \ref{bpN:p4:bracket})
EDGE: bpN:p5:adjoint | blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:route@L13-L13 | cited at this line (statement; \ref{bpN:p5:adjoint})
EDGE: bpN:p5:taylor | blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:route@L13-L13 | cited at this line (statement; \ref{bpN:p5:taylor})
EDGE: bpN:p5:composition | blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:route@L14-L14 | cited at this line (statement; \ref{bpN:p5:composition})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: remark: its justification is inline (confirm, or exclude if not a mathematical claim)

NODE: bpN:p5:setting
KIND: definition
TITLE: Hamiltonian field, bracket, scaled norm
STATEMENT_SOURCE: blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:setting@L19-L26
PROOF_SOURCE: -
CONTRACT_ID: bpN:p5:setting
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p0:vf#hamiltonianVectorField, bpN:p5:lie-derivative, K:bp:p1:hamiltonian-real
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p0:vf#hamiltonianVectorField | blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:setting@L22-L22 | cited at this line (statement; \ref{bpN:p0:vf})
EDGE: bpN:p5:lie-derivative | blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:setting@L22-L22 | cited at this line (statement; \ref{bpN:p5:lie-derivative})
EDGE: K:bp:p1:hamiltonian-real | blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:setting@L22-L22 | cited at this line (statement; \Kref{bp:p1:hamiltonian-real})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpN:p5:vf-bound
KIND: lemma
TITLE: Size of the field
STATEMENT_SOURCE: blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:vf-bound@L29-L34
PROOF_SOURCE: blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:vf-bound@L35-L40
CONTRACT_ID: bpN:p5:vf-bound
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p5:vf-deriv, stepN:p5:vf-field
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p5:vf-deriv | blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:vf-bound@L36-L36 | proof step of this result
EDGE: stepN:p5:vf-field | blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:vf-bound@L39-L39 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p5:vf-deriv
KIND: step
TITLE: Derivatives
STATEMENT_SOURCE: blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:vf-deriv@L36-L37
PROOF_SOURCE: blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:vf-deriv@L36-L37
CONTRACT_ID: stepN:p5:vf-deriv
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p4:cauchy, bpN:p4:sup-weighted
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p4:cauchy | blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:vf-deriv@L36-L36 | cited at this line (step; \ref{bpN:p4:cauchy})
EDGE: bpN:p4:sup-weighted | blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:vf-deriv@L37-L37 | cited at this line (step; \ref{bpN:p4:sup-weighted})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p5:vf-field
KIND: step
TITLE: The field
STATEMENT_SOURCE: blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:vf-field@L39-L39
PROOF_SOURCE: blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:vf-field@L39-L39
CONTRACT_ID: stepN:p5:vf-field
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

NODE: bpN:p5:flow
KIND: lemma
TITLE: Flow of a small holomorphic field
STATEMENT_SOURCE: blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:flow@L44-L54
PROOF_SOURCE: blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:flow@L55-L74
CONTRACT_ID: bpN:p5:flow
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p5:fl-max, stepN:p5:fl-picard, stepN:p5:fl-limit, stepN:p5:fl-inverse, stepN:p5:fl-symmetry, bpN:p3:totality, K:bp:p1:holomorphic-regularity
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p5:fl-max | blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:flow@L58-L58 | proof step of this result
EDGE: stepN:p5:fl-picard | blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:flow@L62-L62 | proof step of this result
EDGE: stepN:p5:fl-limit | blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:flow@L66-L66 | proof step of this result
EDGE: stepN:p5:fl-inverse | blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:flow@L69-L69 | proof step of this result
EDGE: stepN:p5:fl-symmetry | blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:flow@L72-L72 | proof step of this result
EDGE: bpN:p3:totality | blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:flow@L56-L56 | cited at this line (proof; \ref{bpN:p3:totality})
EDGE: K:bp:p1:holomorphic-regularity | blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:flow@L56-L56 | cited at this line (proof; \Kref{bp:p1:holomorphic-regularity})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p5:fl-max
KIND: step
TITLE: (a) The maximal solution stays in a compact set
STATEMENT_SOURCE: blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:fl-max@L58-L60
PROOF_SOURCE: blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:fl-max@L58-L60
CONTRACT_ID: stepN:p5:fl-max
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p3:gen-maximal, K:bp:p1:ext-mvt, bpN:p3:gen-continuation-compact, bpN:p3:gen-symmetry, bpN:p3:gen-uniqueness
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p3:gen-maximal | blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:fl-max@L58-L58 | cited at this line (step; \ref{bpN:p3:gen-maximal})
EDGE: K:bp:p1:ext-mvt | blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:fl-max@L58-L58 | cited at this line (step; \Kref{bp:p1:ext-mvt})
EDGE: bpN:p3:gen-continuation-compact | blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:fl-max@L59-L59 | cited at this line (step; \ref{bpN:p3:gen-continuation-compact})
EDGE: bpN:p3:gen-symmetry | blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:fl-max@L59-L59 | cited at this line (step; \ref{bpN:p3:gen-symmetry})
EDGE: bpN:p3:gen-uniqueness | blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:fl-max@L60-L60 | cited at this line (step; \ref{bpN:p3:gen-uniqueness})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p5:fl-picard
KIND: step
TITLE: (b) Picard iterates
STATEMENT_SOURCE: blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:fl-picard@L62-L64
PROOF_SOURCE: blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:fl-picard@L62-L64
CONTRACT_ID: stepN:p5:fl-picard
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: K:bp:p1:ext-mvt, bpN:p4:ext-param
ROUTES: -
ROUTE_FOR: -
EDGE: K:bp:p1:ext-mvt | blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:fl-picard@L62-L62 | cited at this line (step; \Kref{bp:p1:ext-mvt})
EDGE: bpN:p4:ext-param | blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:fl-picard@L64-L64 | cited at this line (step; \ref{bpN:p4:ext-param})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p5:fl-limit
KIND: step
TITLE: (b) Convergence and identification
STATEMENT_SOURCE: blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:fl-limit@L66-L67
PROOF_SOURCE: blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:fl-limit@L66-L67
CONTRACT_ID: stepN:p5:fl-limit
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p4:ext-weier, bpN:p4:ext-param
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p4:ext-weier | blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:fl-limit@L67-L67 | cited at this line (step; \ref{bpN:p4:ext-weier})
EDGE: bpN:p4:ext-param | blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:fl-limit@L67-L67 | cited at this line (step; \ref{bpN:p4:ext-param})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p5:fl-inverse
KIND: step
TITLE: (c)
STATEMENT_SOURCE: blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:fl-inverse@L69-L70
PROOF_SOURCE: blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:fl-inverse@L69-L70
CONTRACT_ID: stepN:p5:fl-inverse
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p3:gen-uniqueness, bpN:p3:gen-symmetry, bpN:p4:general-cauchy
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p3:gen-uniqueness | blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:fl-inverse@L69-L69 | cited at this line (step; \ref{bpN:p3:gen-uniqueness})
EDGE: bpN:p3:gen-symmetry | blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:fl-inverse@L69-L69 | cited at this line (step; \ref{bpN:p3:gen-symmetry})
EDGE: bpN:p4:general-cauchy | blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:fl-inverse@L70-L70 | cited at this line (step; \ref{bpN:p4:general-cauchy})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p5:fl-symmetry
KIND: step
TITLE: (d),(e)
STATEMENT_SOURCE: blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:fl-symmetry@L72-L73
PROOF_SOURCE: blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:fl-symmetry@L72-L73
CONTRACT_ID: stepN:p5:fl-symmetry
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p3:gen-symmetry, K:bp:p1:real-restriction
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p3:gen-symmetry | blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:fl-symmetry@L72-L72 | cited at this line (step; \ref{bpN:p3:gen-symmetry})
EDGE: K:bp:p1:real-restriction | blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:fl-symmetry@L73-L73 | cited at this line (step; \Kref{bp:p1:real-restriction})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpN:p5:symplectic
KIND: lemma
TITLE: Symplectic flow
STATEMENT_SOURCE: blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:symplectic@L76-L81
PROOF_SOURCE: blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:symplectic@L82-L88
CONTRACT_ID: bpN:p5:symplectic
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p5:sy-var, stepN:p5:sy-field, stepN:p5:sy-conserve, bpN:p5:flow
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p5:sy-var | blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:symplectic@L83-L83 | proof step of this result
EDGE: stepN:p5:sy-field | blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:symplectic@L85-L85 | proof step of this result
EDGE: stepN:p5:sy-conserve | blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:symplectic@L87-L87 | proof step of this result
EDGE: bpN:p5:flow | blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:symplectic@L77-L77 | cited at this line (statement; \ref{bpN:p5:flow})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p5:sy-var
KIND: step
TITLE: Variational equation
STATEMENT_SOURCE: blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:sy-var@L83-L83
PROOF_SOURCE: blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:sy-var@L83-L83
CONTRACT_ID: stepN:p5:sy-var
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p5:flow
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p5:flow | blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:sy-var@L83-L83 | cited at this line (step; \ref{bpN:p5:flow})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p5:sy-field
KIND: step
TITLE: The field
STATEMENT_SOURCE: blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:sy-field@L85-L85
PROOF_SOURCE: blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:sy-field@L85-L85
CONTRACT_ID: stepN:p5:sy-field
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
EDGE: K:bp:p1:ext-schwarz | blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:sy-field@L85-L85 | cited at this line (step; \Kref{bp:p1:ext-schwarz})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p5:sy-conserve
KIND: step
TITLE: Conservation
STATEMENT_SOURCE: blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:sy-conserve@L87-L87
PROOF_SOURCE: blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:sy-conserve@L87-L87
CONTRACT_ID: stepN:p5:sy-conserve
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

NODE: bpN:p5:canonical
KIND: corollary
TITLE: Canonical maps: bracket invariance and conjugation
STATEMENT_SOURCE: blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:canonical@L90-L98
PROOF_SOURCE: blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:canonical@L99-L105
CONTRACT_ID: bpN:p5:canonical
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p5:ca-chain, stepN:p5:ca-a, stepN:p5:ca-b, bpN:p5:symplectic
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p5:ca-chain | blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:canonical@L100-L100 | proof step of this result
EDGE: stepN:p5:ca-a | blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:canonical@L102-L102 | proof step of this result
EDGE: stepN:p5:ca-b | blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:canonical@L104-L104 | proof step of this result
EDGE: bpN:p5:symplectic | blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:canonical@L91-L91 | cited at this line (statement; \ref{bpN:p5:symplectic})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p5:ca-chain
KIND: step
TITLE: Chain rule
STATEMENT_SOURCE: blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:ca-chain@L100-L100
PROOF_SOURCE: blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:ca-chain@L100-L100
CONTRACT_ID: stepN:p5:ca-chain
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p5:flow
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p5:flow | blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:ca-chain@L100-L100 | cited at this line (step; \ref{bpN:p5:flow})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p5:ca-a
KIND: step
TITLE: (a)
STATEMENT_SOURCE: blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:ca-a@L102-L102
PROOF_SOURCE: blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:ca-a@L102-L102
CONTRACT_ID: stepN:p5:ca-a
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p5:symplectic
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p5:symplectic | blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:ca-a@L102-L102 | cited at this line (step; \ref{bpN:p5:symplectic})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p5:ca-b
KIND: step
TITLE: (b),(c)
STATEMENT_SOURCE: blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:ca-b@L104-L104
PROOF_SOURCE: blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:ca-b@L104-L104
CONTRACT_ID: stepN:p5:ca-b
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

NODE: bpN:p5:lie-derivative
KIND: lemma
TITLE: Derivative along the flow
STATEMENT_SOURCE: blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:lie-derivative@L110-L114
PROOF_SOURCE: blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:lie-derivative@L115-L119
CONTRACT_ID: bpN:p5:lie-derivative
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p5:ld-one, stepN:p5:ld-ind, bpN:p5:symplectic
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p5:ld-one | blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:lie-derivative@L116-L116 | proof step of this result
EDGE: stepN:p5:ld-ind | blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:lie-derivative@L118-L118 | proof step of this result
EDGE: bpN:p5:symplectic | blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:lie-derivative@L111-L111 | cited at this line (statement; \ref{bpN:p5:symplectic})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p5:ld-one
KIND: step
TITLE: One derivative
STATEMENT_SOURCE: blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:ld-one@L116-L116
PROOF_SOURCE: blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:ld-one@L116-L116
CONTRACT_ID: stepN:p5:ld-one
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p5:setting
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p5:setting | blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:ld-one@L116-L116 | cited at this line (step; \ref{bpN:p5:setting})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p5:ld-ind
KIND: step
TITLE: Induction
STATEMENT_SOURCE: blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:ld-ind@L118-L118
PROOF_SOURCE: blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:ld-ind@L118-L118
CONTRACT_ID: stepN:p5:ld-ind
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
EDGE: K:bp:p1:holomorphic-regularity | blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:ld-ind@L118-L118 | cited at this line (step; \Kref{bp:p1:holomorphic-regularity})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpN:p5:taylor
KIND: lemma
TITLE: Taylor with integral remainder along the flow
STATEMENT_SOURCE: blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:taylor@L121-L132
PROOF_SOURCE: blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:taylor@L133-L137
CONTRACT_ID: bpN:p5:taylor
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p5:ta-taylor, stepN:p5:ta-poschel, bpN:p5:lie-derivative
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p5:ta-taylor | blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:taylor@L134-L134 | proof step of this result
EDGE: stepN:p5:ta-poschel | blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:taylor@L136-L136 | proof step of this result
EDGE: bpN:p5:lie-derivative | blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:taylor@L122-L122 | cited at this line (statement; \ref{bpN:p5:lie-derivative})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p5:ta-taylor
KIND: step
TITLE: Taylor
STATEMENT_SOURCE: blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:ta-taylor@L134-L134
PROOF_SOURCE: blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:ta-taylor@L134-L134
CONTRACT_ID: stepN:p5:ta-taylor
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p5:lie-derivative, K:bp:p1:ext-integral
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p5:lie-derivative | blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:ta-taylor@L134-L134 | cited at this line (step; \ref{bpN:p5:lie-derivative})
EDGE: K:bp:p1:ext-integral | blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:ta-taylor@L134-L134 | cited at this line (step; \Kref{bp:p1:ext-integral})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p5:ta-poschel
KIND: step
TITLE: The displayed formula
STATEMENT_SOURCE: blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:ta-poschel@L136-L136
PROOF_SOURCE: blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:ta-poschel@L136-L136
CONTRACT_ID: stepN:p5:ta-poschel
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

NODE: bpN:p5:adjoint
KIND: lemma
TITLE: Iterated brackets
STATEMENT_SOURCE: blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:adjoint@L141-L145
PROOF_SOURCE: blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:adjoint@L146-L155
CONTRACT_ID: bpN:p5:adjoint
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p5:ad-setup, stepN:p5:ad-step, stepN:p5:ad-product
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p5:ad-setup | blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:adjoint@L147-L147 | proof step of this result
EDGE: stepN:p5:ad-step | blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:adjoint@L149-L149 | proof step of this result
EDGE: stepN:p5:ad-product | blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:adjoint@L153-L153 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p5:ad-setup
KIND: step
TITLE: Setup
STATEMENT_SOURCE: blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:ad-setup@L147-L147
PROOF_SOURCE: blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:ad-setup@L147-L147
CONTRACT_ID: stepN:p5:ad-setup
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

NODE: stepN:p5:ad-step
KIND: step
TITLE: One step
STATEMENT_SOURCE: blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:ad-step@L149-L151
PROOF_SOURCE: blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:ad-step@L149-L151
CONTRACT_ID: stepN:p5:ad-step
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p4:bracket
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p4:bracket | blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:ad-step@L149-L149 | cited at this line (step; \ref{bpN:p4:bracket})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p5:ad-product
KIND: step
TITLE: Product
STATEMENT_SOURCE: blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:ad-product@L153-L154
PROOF_SOURCE: blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:ad-product@L153-L154
CONTRACT_ID: stepN:p5:ad-product
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

NODE: bpN:p5:composition
KIND: theorem
TITLE: Lemma B.5: $\abs{u\circ X^1_\phi}\le(1-\eta)^{-1}\abs u$
STATEMENT_SOURCE: blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:composition@L157-L168
PROOF_SOURCE: blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:composition@L169-L181
CONTRACT_ID: bpN:p5:composition
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p5:co-field, stepN:p5:co-series, stepN:p5:co-remainder, stepN:p5:co-t, bpN:p5:flow, bpN:p5:route
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p5:co-field | blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:composition@L170-L170 | proof step of this result
EDGE: stepN:p5:co-series | blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:composition@L173-L173 | proof step of this result
EDGE: stepN:p5:co-remainder | blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:composition@L176-L176 | proof step of this result
EDGE: stepN:p5:co-t | blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:composition@L180-L180 | proof step of this result
EDGE: bpN:p5:flow | blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:composition@L160-L160 | cited at this line (statement; \ref{bpN:p5:flow})
EDGE: bpN:p5:route | blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:composition@L167-L167 | cited at this line (statement; \ref{bpN:p5:route}; in \source: provenance unless consumed)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p5:co-field
KIND: step
TITLE: The field and the domain
STATEMENT_SOURCE: blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:co-field@L170-L171
PROOF_SOURCE: blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:co-field@L170-L171
CONTRACT_ID: stepN:p5:co-field
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p5:vf-bound, bpN:p4:domains, bpN:p5:flow
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p5:vf-bound | blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:co-field@L170-L170 | cited at this line (step; \ref{bpN:p5:vf-bound})
EDGE: bpN:p4:domains | blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:co-field@L171-L171 | cited at this line (step; \ref{bpN:p4:domains})
EDGE: bpN:p5:flow | blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:co-field@L171-L171 | cited at this line (step; \ref{bpN:p5:flow})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p5:co-series
KIND: step
TITLE: The series
STATEMENT_SOURCE: blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:co-series@L173-L174
PROOF_SOURCE: blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:co-series@L173-L174
CONTRACT_ID: stepN:p5:co-series
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p5:adjoint, bpN:p4:sup-weighted, bpN:p4:ext-weier, bpN:p4:ext-series
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p5:adjoint | blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:co-series@L173-L173 | cited at this line (step; \ref{bpN:p5:adjoint})
EDGE: bpN:p4:sup-weighted | blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:co-series@L173-L173 | cited at this line (step; \ref{bpN:p4:sup-weighted})
EDGE: bpN:p4:ext-weier | blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:co-series@L174-L174 | cited at this line (step; \ref{bpN:p4:ext-weier})
EDGE: bpN:p4:ext-series | blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:co-series@L174-L174 | cited at this line (step; \ref{bpN:p4:ext-series})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p5:co-remainder
KIND: step
TITLE: The remainder tends to $0$
STATEMENT_SOURCE: blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:co-remainder@L176-L178
PROOF_SOURCE: blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:co-remainder@L176-L178
CONTRACT_ID: stepN:p5:co-remainder
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p5:co-field, bpN:p5:adjoint, bpN:p4:sup-weighted, bpN:p5:taylor
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p5:co-field | blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:co-remainder@L176-L176 | cited at this line (step; \ref{stepN:p5:co-field})
EDGE: bpN:p5:adjoint | blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:co-remainder@L177-L177 | cited at this line (step; \ref{bpN:p5:adjoint})
EDGE: bpN:p4:sup-weighted | blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:co-remainder@L177-L177 | cited at this line (step; \ref{bpN:p4:sup-weighted})
EDGE: bpN:p5:taylor | blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:co-remainder@L178-L178 | cited at this line (step; \ref{bpN:p5:taylor})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p5:co-t
KIND: step
TITLE: (iii), (iv)
STATEMENT_SOURCE: blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:co-t@L180-L180
PROOF_SOURCE: blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:co-t@L180-L180
CONTRACT_ID: stepN:p5:co-t
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p5:flow
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p5:flow | blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:co-t@L180-L180 | cited at this line (step; \ref{bpN:p5:flow})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpN:p5:transform
KIND: proposition
TITLE: Lie transform with first-order remainder, in the weighted norm
STATEMENT_SOURCE: blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:transform@L183-L190
PROOF_SOURCE: blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:transform@L191-L201
CONTRACT_ID: bpN:p5:transform
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p5:tr-h, stepN:p5:tr-f, stepN:p5:tr-sum, stepN:p5:tr-int, bpN:p5:composition, bpN:p5:taylor
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p5:tr-h | blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:transform@L192-L192 | proof step of this result
EDGE: stepN:p5:tr-f | blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:transform@L196-L196 | proof step of this result
EDGE: stepN:p5:tr-sum | blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:transform@L198-L198 | proof step of this result
EDGE: stepN:p5:tr-int | blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:transform@L200-L200 | proof step of this result
EDGE: bpN:p5:composition | blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:transform@L184-L184 | cited at this line (statement; \ref{bpN:p5:composition})
EDGE: bpN:p5:taylor | blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:transform@L188-L188 | cited at this line (statement; \ref{bpN:p5:taylor})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p5:tr-h
KIND: step
TITLE: Derivatives of $h$
STATEMENT_SOURCE: blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:tr-h@L192-L194
PROOF_SOURCE: blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:tr-h@L192-L194
CONTRACT_ID: stepN:p5:tr-h
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p5:lie-derivative, stepN:p5:co-remainder, bpN:p5:adjoint
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p5:lie-derivative | blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:tr-h@L192-L192 | cited at this line (step; \ref{bpN:p5:lie-derivative})
EDGE: stepN:p5:co-remainder | blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:tr-h@L194-L194 | cited at this line (step; \ref{stepN:p5:co-remainder})
EDGE: bpN:p5:adjoint | blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:tr-h@L194-L194 | cited at this line (step; \ref{bpN:p5:adjoint})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p5:tr-f
KIND: step
TITLE: Derivatives of $f_0$
STATEMENT_SOURCE: blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:tr-f@L196-L196
PROOF_SOURCE: blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:tr-f@L196-L196
CONTRACT_ID: stepN:p5:tr-f
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p5:composition
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p5:composition | blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:tr-f@L196-L196 | cited at this line (step; \ref{bpN:p5:composition})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p5:tr-sum
KIND: step
TITLE: Sum and bound
STATEMENT_SOURCE: blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:tr-sum@L198-L198
PROOF_SOURCE: blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:tr-sum@L198-L198
CONTRACT_ID: stepN:p5:tr-sum
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p5:adjoint, stepN:p5:co-series
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p5:adjoint | blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:tr-sum@L198-L198 | cited at this line (step; \ref{bpN:p5:adjoint})
EDGE: stepN:p5:co-series | blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:tr-sum@L198-L198 | cited at this line (step; \ref{stepN:p5:co-series})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p5:tr-int
KIND: step
TITLE: Integral form
STATEMENT_SOURCE: blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:tr-int@L200-L200
PROOF_SOURCE: blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:tr-int@L200-L200
CONTRACT_ID: stepN:p5:tr-int
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p5:taylor, stepN:p5:co-field
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p5:taylor | blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:tr-int@L200-L200 | cited at this line (step; \ref{bpN:p5:eq:poschel})
EDGE: stepN:p5:co-field | blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:tr-int@L200-L200 | cited at this line (step; \ref{stepN:p5:co-field})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpN:p5:composition-integral
KIND: corollary
TITLE: Integral remainders in the weighted norm
STATEMENT_SOURCE: blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:composition-integral@L203-L206
PROOF_SOURCE: blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:composition-integral@L207-L211
CONTRACT_ID: bpN:p5:composition-integral
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p5:ci-integrand, stepN:p5:ci-coeff, bpN:p5:composition
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p5:ci-integrand | blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:composition-integral@L208-L208 | proof step of this result
EDGE: stepN:p5:ci-coeff | blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:composition-integral@L210-L210 | proof step of this result
EDGE: bpN:p5:composition | blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:composition-integral@L204-L204 | cited at this line (statement; \ref{bpN:p5:composition})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p5:ci-integrand
KIND: step
TITLE: Integrand
STATEMENT_SOURCE: blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:ci-integrand@L208-L208
PROOF_SOURCE: blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:ci-integrand@L208-L208
CONTRACT_ID: stepN:p5:ci-integrand
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p5:composition, bpN:p5:flow
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p5:composition | blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:ci-integrand@L208-L208 | cited at this line (step; \ref{bpN:p5:composition})
EDGE: bpN:p5:flow | blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:ci-integrand@L208-L208 | cited at this line (step; \ref{bpN:p5:flow})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p5:ci-coeff
KIND: step
TITLE: Holomorphy and coefficients
STATEMENT_SOURCE: blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:ci-coeff@L210-L210
PROOF_SOURCE: blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:ci-coeff@L210-L210
CONTRACT_ID: stepN:p5:ci-coeff
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p4:ext-param
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p4:ext-param | blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:ci-coeff@L210-L210 | cited at this line (step; \ref{bpN:p4:ext-param})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpN:p5:canonical-map
KIND: proposition
TITLE: Iterative-Lemma package for $\Phi$
STATEMENT_SOURCE: blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:canonical-map@L215-L225
PROOF_SOURCE: blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:canonical-map@L226-L232
CONTRACT_ID: bpN:p5:canonical-map
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p5:cm-field, stepN:p5:cm-ab, stepN:p5:cm-cde, bpN:p5:flow, bpN:p5:canonical
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p5:cm-field | blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:canonical-map@L227-L227 | proof step of this result
EDGE: stepN:p5:cm-ab | blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:canonical-map@L229-L229 | proof step of this result
EDGE: stepN:p5:cm-cde | blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:canonical-map@L231-L231 | proof step of this result
EDGE: bpN:p5:flow | blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:canonical-map@L216-L216 | cited at this line (statement; \ref{bpN:p5:flow})
EDGE: bpN:p5:canonical | blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:canonical-map@L221-L221 | cited at this line (statement; \ref{bpN:p5:canonical})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p5:cm-field
KIND: step
TITLE: Field
STATEMENT_SOURCE: blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:cm-field@L227-L227
PROOF_SOURCE: blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:cm-field@L227-L227
CONTRACT_ID: stepN:p5:cm-field
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p5:vf-bound, bpN:p4:domains
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p5:vf-bound | blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:cm-field@L227-L227 | cited at this line (step; \ref{bpN:p5:vf-bound})
EDGE: bpN:p4:domains | blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:cm-field@L227-L227 | cited at this line (step; \ref{bpN:p4:domains})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p5:cm-ab
KIND: step
TITLE: (a),(b)
STATEMENT_SOURCE: blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:cm-ab@L229-L229
PROOF_SOURCE: blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:cm-ab@L229-L229
CONTRACT_ID: stepN:p5:cm-ab
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p5:flow, bpN:p5:vf-bound
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p5:flow | blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:cm-ab@L229-L229 | cited at this line (step; \ref{bpN:p5:flow})
EDGE: bpN:p5:vf-bound | blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:cm-ab@L229-L229 | cited at this line (step; \ref{bpN:p5:vf-bound})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p5:cm-cde
KIND: step
TITLE: (c)--(e)
STATEMENT_SOURCE: blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:cm-cde@L231-L231
PROOF_SOURCE: blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:cm-cde@L231-L231
CONTRACT_ID: stepN:p5:cm-cde
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p5:flow, stepN:p5:cm-field, bpN:p5:symplectic, bpN:p5:canonical
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p5:flow | blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:cm-cde@L231-L231 | cited at this line (step; \ref{bpN:p5:flow})
EDGE: stepN:p5:cm-field | blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:cm-cde@L231-L231 | cited at this line (step; \ref{stepN:p5:cm-field})
EDGE: bpN:p5:symplectic | blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:cm-cde@L231-L231 | cited at this line (step; \ref{bpN:p5:symplectic})
EDGE: bpN:p5:canonical | blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:cm-cde@L231-L231 | cited at this line (step; \ref{bpN:p5:canonical})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpN:p5:sharp-composition
KIND: proposition
TITLE: Composition in the norm $\sharp$
STATEMENT_SOURCE: blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:sharp-composition@L236-L239
PROOF_SOURCE: blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:sharp-composition@L240-L243
CONTRACT_ID: bpN:p5:sharp-composition
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p5:sh-where, stepN:p5:sh-series, bpN:p5:vf-bound, bpN:p5:adjoint, bpN:p5:composition, bpN:p5:transform, bpN:p5:composition-integral, bpN:p5:canonical-map, bpN:p4:sharp
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p5:sh-where | blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:sharp-composition@L241-L241 | proof step of this result
EDGE: stepN:p5:sh-series | blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:sharp-composition@L242-L242 | proof step of this result
EDGE: bpN:p5:vf-bound | blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:sharp-composition@L237-L237 | cited at this line (statement; \ref{bpN:p5:vf-bound})
EDGE: bpN:p5:adjoint | blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:sharp-composition@L237-L237 | cited at this line (statement; \ref{bpN:p5:adjoint})
EDGE: bpN:p5:composition | blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:sharp-composition@L237-L237 | cited at this line (statement; \ref{bpN:p5:composition})
EDGE: bpN:p5:transform | blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:sharp-composition@L237-L237 | cited at this line (statement; \ref{bpN:p5:transform})
EDGE: bpN:p5:composition-integral | blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:sharp-composition@L237-L237 | cited at this line (statement; \ref{bpN:p5:composition-integral})
EDGE: bpN:p5:canonical-map | blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:sharp-composition@L237-L237 | cited at this line (statement; \ref{bpN:p5:canonical-map})
EDGE: bpN:p4:sharp | blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:sharp-composition@L237-L237 | cited at this line (statement; \ref{bpN:p4:sharp})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p5:sh-where
KIND: step
TITLE: Where the norm enters
STATEMENT_SOURCE: blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:sh-where@L241-L241
PROOF_SOURCE: blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:sh-where@L241-L241
CONTRACT_ID: stepN:p5:sh-where
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p4:sharp, bpN:p5:vf-bound
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p4:sharp | blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:sh-where@L241-L241 | cited at this line (step; \ref{bpN:p4:sharp})
EDGE: bpN:p5:vf-bound | blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:sh-where@L241-L241 | cited at this line (step; \ref{bpN:p5:vf-bound})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p5:sh-series
KIND: step
TITLE: Series
STATEMENT_SOURCE: blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:sh-series@L242-L242
PROOF_SOURCE: blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:sh-series@L242-L242
CONTRACT_ID: stepN:p5:sh-series
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p5:adjoint, bpN:p5:composition, stepN:p5:co-series
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p5:adjoint | blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:sh-series@L242-L242 | cited at this line (step; \ref{bpN:p5:adjoint})
EDGE: bpN:p5:composition | blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:sh-series@L242-L242 | cited at this line (step; \ref{bpN:p5:composition})
EDGE: stepN:p5:co-series | blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:sh-series@L242-L242 | cited at this line (step; \ref{stepN:p5:co-series})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpN:p5:use
KIND: claim
TITLE: Use by Part~6 and track P; what is not provided
STATEMENT_SOURCE: blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:use@L245-L249
PROOF_SOURCE: blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:use@L245-L249
CONTRACT_ID: bpN:p5:use
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p5:transform, bpN:p5:composition, bpN:p5:canonical-map
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p5:transform | blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:use@L246-L246 | cited at this line (statement; \ref{bpN:p5:transform})
EDGE: bpN:p5:composition | blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:use@L246-L246 | cited at this line (statement; \ref{bpN:p5:composition})
EDGE: bpN:p5:canonical-map | blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:use@L247-L247 | cited at this line (statement; \ref{bpN:p5:canonical-map})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: remark: its justification is inline (confirm, or exclude if not a mathematical claim)
