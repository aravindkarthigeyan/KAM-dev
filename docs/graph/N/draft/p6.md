NODE: bpN:p6:ext-numerics
KIND: external
TITLE: Numerics
STATEMENT_SOURCE: blueprint-N/parts/p6-normal-form.tex#bpN:p6:ext-numerics@L22-L22
PROOF_SOURCE: -
CONTRACT_ID: bpN:p6:ext-numerics
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

NODE: bpN:p6:ext-chain
KIND: external
TITLE: Chain rule for holomorphic maps
STATEMENT_SOURCE: blueprint-N/parts/p6-normal-form.tex#bpN:p6:ext-chain@L23-L23
PROOF_SOURCE: -
CONTRACT_ID: bpN:p6:ext-chain
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

NODE: bpN:p6:setting
KIND: definition
TITLE: Resonant setting
STATEMENT_SOURCE: blueprint-N/parts/p6-normal-form.tex#bpN:p6:setting@L29-L40
PROOF_SOURCE: -
CONTRACT_ID: bpN:p6:setting
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p4:domains
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p4:domains | blueprint-N/parts/p6-normal-form.tex#bpN:p6:setting@L30-L30 | cited at this line (statement; \ref{bpN:p4:domains})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpN:p6:lipschitz
KIND: lemma
TITLE: Lipschitz bound from the Hessian
STATEMENT_SOURCE: blueprint-N/parts/p6-normal-form.tex#bpN:p6:lipschitz@L42-L45
PROOF_SOURCE: blueprint-N/parts/p6-normal-form.tex#bpN:p6:lipschitz@L46-L48
CONTRACT_ID: bpN:p6:lipschitz
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p6:lip-seg, bpN:p6:setting, bpN:p1:hessian-convert
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p6:lip-seg | blueprint-N/parts/p6-normal-form.tex#bpN:p6:lipschitz@L47-L47 | proof step of this result
EDGE: bpN:p6:setting | blueprint-N/parts/p6-normal-form.tex#bpN:p6:lipschitz@L43-L43 | cited at this line (statement; \ref{bpN:p6:cond-L})
EDGE: bpN:p1:hessian-convert | blueprint-N/parts/p6-normal-form.tex#bpN:p6:lipschitz@L43-L43 | cited at this line (statement; \ref{bpN:p1:hessian-convert})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p6:lip-seg
KIND: step
TITLE: Segment
STATEMENT_SOURCE: blueprint-N/parts/p6-normal-form.tex#stepN:p6:lip-seg@L47-L47
PROOF_SOURCE: blueprint-N/parts/p6-normal-form.tex#stepN:p6:lip-seg@L47-L47
CONTRACT_ID: stepN:p6:lip-seg
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p4:domains, K:bp:p1:ext-mvt
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p4:domains | blueprint-N/parts/p6-normal-form.tex#stepN:p6:lip-seg@L47-L47 | cited at this line (step; \ref{bpN:p4:domains})
EDGE: K:bp:p1:ext-mvt | blueprint-N/parts/p6-normal-form.tex#stepN:p6:lip-seg@L47-L47 | cited at this line (step; \Kref{bp:p1:ext-mvt})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpN:p6:divisor
KIND: lemma
TITLE: Divisor bound
STATEMENT_SOURCE: blueprint-N/parts/p6-normal-form.tex#bpN:p6:divisor@L50-L53
PROOF_SOURCE: blueprint-N/parts/p6-normal-form.tex#bpN:p6:divisor@L54-L56
CONTRACT_ID: bpN:p6:divisor
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p6:div, bpN:p6:setting
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p6:div | blueprint-N/parts/p6-normal-form.tex#bpN:p6:divisor@L55-L55 | proof step of this result
EDGE: bpN:p6:setting | blueprint-N/parts/p6-normal-form.tex#bpN:p6:divisor@L51-L51 | cited at this line (statement; \ref{bpN:p6:cond-nr})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p6:div
KIND: step
TITLE: Move to $D$
STATEMENT_SOURCE: blueprint-N/parts/p6-normal-form.tex#stepN:p6:div@L55-L55
PROOF_SOURCE: blueprint-N/parts/p6-normal-form.tex#stepN:p6:div@L55-L55
CONTRACT_ID: stepN:p6:div
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p6:setting
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p6:setting | blueprint-N/parts/p6-normal-form.tex#stepN:p6:div@L55-L55 | cited at this line (step; \ref{bpN:p6:cond-nr})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpN:p6:homological
KIND: proposition
TITLE: Homological equation
STATEMENT_SOURCE: blueprint-N/parts/p6-normal-form.tex#bpN:p6:homological@L60-L70
PROOF_SOURCE: blueprint-N/parts/p6-normal-form.tex#bpN:p6:homological@L71-L79
CONTRACT_ID: bpN:p6:homological
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p6:hom-def, stepN:p6:hom-norm, stepN:p6:hom-eq, stepN:p6:hom-real, bpN:p6:setting
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p6:hom-def | blueprint-N/parts/p6-normal-form.tex#bpN:p6:homological@L72-L72 | proof step of this result
EDGE: stepN:p6:hom-norm | blueprint-N/parts/p6-normal-form.tex#bpN:p6:homological@L74-L74 | proof step of this result
EDGE: stepN:p6:hom-eq | blueprint-N/parts/p6-normal-form.tex#bpN:p6:homological@L76-L76 | proof step of this result
EDGE: stepN:p6:hom-real | blueprint-N/parts/p6-normal-form.tex#bpN:p6:homological@L78-L78 | proof step of this result
EDGE: bpN:p6:setting | blueprint-N/parts/p6-normal-form.tex#bpN:p6:homological@L61-L61 | cited at this line (statement; \ref{bpN:p6:cond-nr})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p6:hom-def
KIND: step
TITLE: Well defined and holomorphic
STATEMENT_SOURCE: blueprint-N/parts/p6-normal-form.tex#stepN:p6:hom-def@L72-L72
PROOF_SOURCE: blueprint-N/parts/p6-normal-form.tex#stepN:p6:hom-def@L72-L72
CONTRACT_ID: stepN:p6:hom-def
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p6:divisor, bpN:p4:coefficients, bpN:p4:projections
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p6:divisor | blueprint-N/parts/p6-normal-form.tex#stepN:p6:hom-def@L72-L72 | cited at this line (step; \ref{bpN:p6:divisor})
EDGE: bpN:p4:coefficients | blueprint-N/parts/p6-normal-form.tex#stepN:p6:hom-def@L72-L72 | cited at this line (step; \ref{bpN:p4:coefficients})
EDGE: bpN:p4:projections | blueprint-N/parts/p6-normal-form.tex#stepN:p6:hom-def@L72-L72 | cited at this line (step; \ref{bpN:p4:projections})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p6:hom-norm
KIND: step
TITLE: Norms
STATEMENT_SOURCE: blueprint-N/parts/p6-normal-form.tex#stepN:p6:hom-norm@L74-L74
PROOF_SOURCE: blueprint-N/parts/p6-normal-form.tex#stepN:p6:hom-norm@L74-L74
CONTRACT_ID: stepN:p6:hom-norm
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p6:divisor, bpN:p4:projections
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p6:divisor | blueprint-N/parts/p6-normal-form.tex#stepN:p6:hom-norm@L74-L74 | cited at this line (step; \ref{bpN:p6:divisor})
EDGE: bpN:p4:projections | blueprint-N/parts/p6-normal-form.tex#stepN:p6:hom-norm@L74-L74 | cited at this line (step; \ref{bpN:p4:projections})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p6:hom-eq
KIND: step
TITLE: The equation
STATEMENT_SOURCE: blueprint-N/parts/p6-normal-form.tex#stepN:p6:hom-eq@L76-L76
PROOF_SOURCE: blueprint-N/parts/p6-normal-form.tex#stepN:p6:hom-eq@L76-L76
CONTRACT_ID: stepN:p6:hom-eq
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
EDGE: bpN:p4:coefficients | blueprint-N/parts/p6-normal-form.tex#stepN:p6:hom-eq@L76-L76 | cited at this line (step; \ref{bpN:p4:coefficients})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p6:hom-real
KIND: step
TITLE: Reality
STATEMENT_SOURCE: blueprint-N/parts/p6-normal-form.tex#stepN:p6:hom-real@L78-L78
PROOF_SOURCE: blueprint-N/parts/p6-normal-form.tex#stepN:p6:hom-real@L78-L78
CONTRACT_ID: stepN:p6:hom-real
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

NODE: bpN:p6:bracket-g
KIND: lemma
TITLE: Bracket with a decomposed $g$
STATEMENT_SOURCE: blueprint-N/parts/p6-normal-form.tex#bpN:p6:bracket-g@L81-L85
PROOF_SOURCE: blueprint-N/parts/p6-normal-form.tex#bpN:p6:bracket-g@L86-L89
CONTRACT_ID: bpN:p6:bracket-g
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p6:bg-term, stepN:p6:bg-sum, bpN:p6:setting, bpN:p4:bracket
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p6:bg-term | blueprint-N/parts/p6-normal-form.tex#bpN:p6:bracket-g@L87-L87 | proof step of this result
EDGE: stepN:p6:bg-sum | blueprint-N/parts/p6-normal-form.tex#bpN:p6:bracket-g@L88-L88 | proof step of this result
EDGE: bpN:p6:setting | blueprint-N/parts/p6-normal-form.tex#bpN:p6:bracket-g@L82-L82 | cited at this line (statement; \ref{bpN:p6:setting})
EDGE: bpN:p4:bracket | blueprint-N/parts/p6-normal-form.tex#bpN:p6:bracket-g@L84-L84 | cited at this line (statement; \ref{bpN:p4:bracket}; in \source: provenance unless consumed)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p6:bg-term
KIND: step
TITLE: One term
STATEMENT_SOURCE: blueprint-N/parts/p6-normal-form.tex#stepN:p6:bg-term@L87-L87
PROOF_SOURCE: blueprint-N/parts/p6-normal-form.tex#stepN:p6:bg-term@L87-L87
CONTRACT_ID: stepN:p6:bg-term
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
EDGE: bpN:p4:bracket | blueprint-N/parts/p6-normal-form.tex#stepN:p6:bg-term@L87-L87 | cited at this line (step; \ref{bpN:p4:bracket})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p6:bg-sum
KIND: step
TITLE: Sum
STATEMENT_SOURCE: blueprint-N/parts/p6-normal-form.tex#stepN:p6:bg-sum@L88-L88
PROOF_SOURCE: blueprint-N/parts/p6-normal-form.tex#stepN:p6:bg-sum@L88-L88
CONTRACT_ID: stepN:p6:bg-sum
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p6:ext-numerics
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p6:ext-numerics | blueprint-N/parts/p6-normal-form.tex#stepN:p6:bg-sum@L88-L88 | cited at this line (step; \ref{bpN:p6:ext-numerics})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpN:p6:iterative
KIND: theorem
TITLE: Iterative Lemma
STATEMENT_SOURCE: blueprint-N/parts/p6-normal-form.tex#bpN:p6:iterative@L93-L108
PROOF_SOURCE: blueprint-N/parts/p6-normal-form.tex#bpN:p6:iterative@L109-L127
CONTRACT_ID: bpN:p6:iterative
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p6:it-gen, stepN:p6:it-map, stepN:p6:it-taylor, stepN:p6:it-decomp, stepN:p6:it-integrand, stepN:p6:it-terms, stepN:p6:it-real, bpN:p6:setting, bpN:p6:homological, bpN:p5:canonical-map, bpN:p5:setting, bpN:p4:dictionary, bpN:p5:composition, bpN:p5:route, bpN:p4:bracket
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p6:it-gen | blueprint-N/parts/p6-normal-form.tex#bpN:p6:iterative@L110-L110 | proof step of this result
EDGE: stepN:p6:it-map | blueprint-N/parts/p6-normal-form.tex#bpN:p6:iterative@L112-L112 | proof step of this result
EDGE: stepN:p6:it-taylor | blueprint-N/parts/p6-normal-form.tex#bpN:p6:iterative@L114-L114 | proof step of this result
EDGE: stepN:p6:it-decomp | blueprint-N/parts/p6-normal-form.tex#bpN:p6:iterative@L117-L117 | proof step of this result
EDGE: stepN:p6:it-integrand | blueprint-N/parts/p6-normal-form.tex#bpN:p6:iterative@L121-L121 | proof step of this result
EDGE: stepN:p6:it-terms | blueprint-N/parts/p6-normal-form.tex#bpN:p6:iterative@L124-L124 | proof step of this result
EDGE: stepN:p6:it-real | blueprint-N/parts/p6-normal-form.tex#bpN:p6:iterative@L126-L126 | proof step of this result
EDGE: bpN:p6:setting | blueprint-N/parts/p6-normal-form.tex#bpN:p6:iterative@L94-L94 | cited at this line (statement; \ref{bpN:p6:cond-nr})
EDGE: bpN:p6:homological | blueprint-N/parts/p6-normal-form.tex#bpN:p6:iterative@L96-L96 | cited at this line (statement; \ref{bpN:p6:homological})
EDGE: bpN:p5:canonical-map | blueprint-N/parts/p6-normal-form.tex#bpN:p6:iterative@L98-L98 | cited at this line (statement; \ref{bpN:p5:canonical-map})
EDGE: bpN:p5:setting | blueprint-N/parts/p6-normal-form.tex#bpN:p6:iterative@L99-L99 | cited at this line (statement; \ref{bpN:p5:setting})
EDGE: bpN:p4:dictionary | blueprint-N/parts/p6-normal-form.tex#bpN:p6:iterative@L107-L107 | cited at this line (statement; \ref{bpN:p4:dictionary}; in \source: provenance unless consumed)
EDGE: bpN:p5:composition | blueprint-N/parts/p6-normal-form.tex#bpN:p6:iterative@L107-L107 | cited at this line (statement; \ref{bpN:p5:composition}; in \source: provenance unless consumed)
EDGE: bpN:p5:route | blueprint-N/parts/p6-normal-form.tex#bpN:p6:iterative@L107-L107 | cited at this line (statement; \ref{bpN:p5:route}; in \source: provenance unless consumed)
EDGE: bpN:p4:bracket | blueprint-N/parts/p6-normal-form.tex#bpN:p6:iterative@L107-L107 | cited at this line (statement; \ref{bpN:p4:bracket}; in \source: provenance unless consumed)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p6:it-gen
KIND: step
TITLE: The generating function
STATEMENT_SOURCE: blueprint-N/parts/p6-normal-form.tex#stepN:p6:it-gen@L110-L110
PROOF_SOURCE: blueprint-N/parts/p6-normal-form.tex#stepN:p6:it-gen@L110-L110
CONTRACT_ID: stepN:p6:it-gen
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p6:homological
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p6:homological | blueprint-N/parts/p6-normal-form.tex#stepN:p6:it-gen@L110-L110 | cited at this line (step; \ref{bpN:p6:homological})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p6:it-map
KIND: step
TITLE: Items (a), (b)
STATEMENT_SOURCE: blueprint-N/parts/p6-normal-form.tex#stepN:p6:it-map@L112-L112
PROOF_SOURCE: blueprint-N/parts/p6-normal-form.tex#stepN:p6:it-map@L112-L112
CONTRACT_ID: stepN:p6:it-map
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p5:canonical-map
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p5:canonical-map | blueprint-N/parts/p6-normal-form.tex#stepN:p6:it-map@L112-L112 | cited at this line (step; \ref{bpN:p5:canonical-map})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p6:it-taylor
KIND: step
TITLE: Taylor identity
STATEMENT_SOURCE: blueprint-N/parts/p6-normal-form.tex#stepN:p6:it-taylor@L114-L115
PROOF_SOURCE: blueprint-N/parts/p6-normal-form.tex#stepN:p6:it-taylor@L114-L115
CONTRACT_ID: stepN:p6:it-taylor
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p6:homological, bpN:p5:setting, bpN:p5:transform
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p6:homological | blueprint-N/parts/p6-normal-form.tex#stepN:p6:it-taylor@L114-L114 | cited at this line (step; \ref{bpN:p6:homological})
EDGE: bpN:p5:setting | blueprint-N/parts/p6-normal-form.tex#stepN:p6:it-taylor@L114-L114 | cited at this line (step; \ref{bpN:p5:setting})
EDGE: bpN:p5:transform | blueprint-N/parts/p6-normal-form.tex#stepN:p6:it-taylor@L114-L114 | cited at this line (step; \ref{bpN:p5:transform})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p6:it-decomp
KIND: step
TITLE: Decomposition of $H\circ\Phi$
STATEMENT_SOURCE: blueprint-N/parts/p6-normal-form.tex#stepN:p6:it-decomp@L117-L119
PROOF_SOURCE: blueprint-N/parts/p6-normal-form.tex#stepN:p6:it-decomp@L117-L119
CONTRACT_ID: stepN:p6:it-decomp
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p5:composition, bpN:p5:composition-integral
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p5:composition | blueprint-N/parts/p6-normal-form.tex#stepN:p6:it-decomp@L119-L119 | cited at this line (step; \ref{bpN:p5:composition})
EDGE: bpN:p5:composition-integral | blueprint-N/parts/p6-normal-form.tex#stepN:p6:it-decomp@L119-L119 | cited at this line (step; \ref{bpN:p5:composition-integral})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p6:it-integrand
KIND: step
TITLE: The integrand
STATEMENT_SOURCE: blueprint-N/parts/p6-normal-form.tex#stepN:p6:it-integrand@L121-L122
PROOF_SOURCE: blueprint-N/parts/p6-normal-form.tex#stepN:p6:it-integrand@L121-L122
CONTRACT_ID: stepN:p6:it-integrand
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p6:bracket-g, bpN:p4:bracket
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p6:bracket-g | blueprint-N/parts/p6-normal-form.tex#stepN:p6:it-integrand@L121-L121 | cited at this line (step; \ref{bpN:p6:bracket-g})
EDGE: bpN:p4:bracket | blueprint-N/parts/p6-normal-form.tex#stepN:p6:it-integrand@L121-L121 | cited at this line (step; \ref{bpN:p4:bracket})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p6:it-terms
KIND: step
TITLE: The two terms
STATEMENT_SOURCE: blueprint-N/parts/p6-normal-form.tex#stepN:p6:it-terms@L124-L124
PROOF_SOURCE: blueprint-N/parts/p6-normal-form.tex#stepN:p6:it-terms@L124-L124
CONTRACT_ID: stepN:p6:it-terms
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p5:composition-integral, stepN:p6:it-taylor, bpN:p4:projections, bpN:p5:composition
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p5:composition-integral | blueprint-N/parts/p6-normal-form.tex#stepN:p6:it-terms@L124-L124 | cited at this line (step; \ref{bpN:p5:composition-integral})
EDGE: stepN:p6:it-taylor | blueprint-N/parts/p6-normal-form.tex#stepN:p6:it-terms@L124-L124 | cited at this line (step; \ref{stepN:p6:it-taylor})
EDGE: bpN:p4:projections | blueprint-N/parts/p6-normal-form.tex#stepN:p6:it-terms@L124-L124 | cited at this line (step; \ref{bpN:p4:projections})
EDGE: bpN:p5:composition | blueprint-N/parts/p6-normal-form.tex#stepN:p6:it-terms@L124-L124 | cited at this line (step; \ref{bpN:p5:composition})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p6:it-real
KIND: step
TITLE: Reality
STATEMENT_SOURCE: blueprint-N/parts/p6-normal-form.tex#stepN:p6:it-real@L126-L126
PROOF_SOURCE: blueprint-N/parts/p6-normal-form.tex#stepN:p6:it-real@L126-L126
CONTRACT_ID: stepN:p6:it-real
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p6:homological, bpN:p5:canonical-map
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p6:homological | blueprint-N/parts/p6-normal-form.tex#stepN:p6:it-real@L126-L126 | cited at this line (step; \ref{bpN:p6:homological})
EDGE: bpN:p5:canonical-map | blueprint-N/parts/p6-normal-form.tex#stepN:p6:it-real@L126-L126 | cited at this line (step; \ref{bpN:p5:canonical-map})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpN:p6:iterative-direct
KIND: corollary
TITLE: Iterative Lemma, direct divisor form
STATEMENT_SOURCE: blueprint-N/parts/p6-normal-form.tex#bpN:p6:iterative-direct@L129-L134
PROOF_SOURCE: blueprint-N/parts/p6-normal-form.tex#bpN:p6:iterative-direct@L135-L138
CONTRACT_ID: bpN:p6:iterative-direct
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p6:dir-use, stepN:p6:dir-concl, bpN:p6:setting, bpN:p6:homological, bpN:p6:iterative, bpN:p6:iterative-special, P:bpP:p2:direct
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p6:dir-use | blueprint-N/parts/p6-normal-form.tex#bpN:p6:iterative-direct@L136-L136 | proof step of this result
EDGE: stepN:p6:dir-concl | blueprint-N/parts/p6-normal-form.tex#bpN:p6:iterative-direct@L137-L137 | proof step of this result
EDGE: bpN:p6:setting | blueprint-N/parts/p6-normal-form.tex#bpN:p6:iterative-direct@L130-L130 | cited at this line (statement; \ref{bpN:p6:cond-nr})
EDGE: bpN:p6:homological | blueprint-N/parts/p6-normal-form.tex#bpN:p6:iterative-direct@L132-L132 | cited at this line (statement; \ref{bpN:p6:homological})
EDGE: bpN:p6:iterative | blueprint-N/parts/p6-normal-form.tex#bpN:p6:iterative-direct@L132-L132 | cited at this line (statement; \ref{bpN:p6:iterative})
EDGE: bpN:p6:iterative-special | blueprint-N/parts/p6-normal-form.tex#bpN:p6:iterative-direct@L132-L132 | cited at this line (statement; \ref{bpN:p6:iterative-special})
EDGE: P:bpP:p2:direct | blueprint-N/parts/p6-normal-form.tex#bpN:p6:iterative-direct@L133-L133 | cited at this line (statement; \Pref{bpP:p2:direct}; in \source: provenance unless consumed)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p6:dir-use
KIND: step
TITLE: Where the old hypotheses enter
STATEMENT_SOURCE: blueprint-N/parts/p6-normal-form.tex#stepN:p6:dir-use@L136-L136
PROOF_SOURCE: blueprint-N/parts/p6-normal-form.tex#stepN:p6:dir-use@L136-L136
CONTRACT_ID: stepN:p6:dir-use
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p6:homological, bpN:p6:iterative, bpN:p6:setting, bpN:p6:divisor, stepN:p6:hom-def, stepN:p6:hom-norm, stepN:p6:it-gen, stepN:p6:it-real
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p6:homological | blueprint-N/parts/p6-normal-form.tex#stepN:p6:dir-use@L136-L136 | cited at this line (step; \ref{bpN:p6:homological})
EDGE: bpN:p6:iterative | blueprint-N/parts/p6-normal-form.tex#stepN:p6:dir-use@L136-L136 | cited at this line (step; \ref{bpN:p6:iterative})
EDGE: bpN:p6:setting | blueprint-N/parts/p6-normal-form.tex#stepN:p6:dir-use@L136-L136 | cited at this line (step; \ref{bpN:p6:cond-nr})
EDGE: bpN:p6:divisor | blueprint-N/parts/p6-normal-form.tex#stepN:p6:dir-use@L136-L136 | cited at this line (step; \ref{bpN:p6:divisor})
EDGE: stepN:p6:hom-def | blueprint-N/parts/p6-normal-form.tex#stepN:p6:dir-use@L136-L136 | cited at this line (step; \ref{stepN:p6:hom-def})
EDGE: stepN:p6:hom-norm | blueprint-N/parts/p6-normal-form.tex#stepN:p6:dir-use@L136-L136 | cited at this line (step; \ref{stepN:p6:hom-norm})
EDGE: stepN:p6:it-gen | blueprint-N/parts/p6-normal-form.tex#stepN:p6:dir-use@L136-L136 | cited at this line (step; \ref{stepN:p6:it-gen})
EDGE: stepN:p6:it-real | blueprint-N/parts/p6-normal-form.tex#stepN:p6:dir-use@L136-L136 | cited at this line (step; \ref{stepN:p6:it-real})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p6:dir-concl
KIND: step
TITLE: Conclusion
STATEMENT_SOURCE: blueprint-N/parts/p6-normal-form.tex#stepN:p6:dir-concl@L137-L137
PROOF_SOURCE: blueprint-N/parts/p6-normal-form.tex#stepN:p6:dir-concl@L137-L137
CONTRACT_ID: stepN:p6:dir-concl
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p6:divisor, stepN:p6:nf-first
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p6:divisor | blueprint-N/parts/p6-normal-form.tex#stepN:p6:dir-concl@L137-L137 | cited at this line (step; \ref{bpN:p6:divisor})
EDGE: stepN:p6:nf-first | blueprint-N/parts/p6-normal-form.tex#stepN:p6:dir-concl@L137-L137 | cited at this line (step; \ref{stepN:p6:nf-first})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpN:p6:iterative-special
KIND: claim
TITLE: Special cases for track~P
STATEMENT_SOURCE: blueprint-N/parts/p6-normal-form.tex#bpN:p6:iterative-special@L140-L144
PROOF_SOURCE: blueprint-N/parts/p6-normal-form.tex#bpN:p6:iterative-special@L140-L144
CONTRACT_ID: bpN:p6:iterative-special
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p6:setting
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p6:setting | blueprint-N/parts/p6-normal-form.tex#bpN:p6:iterative-special@L142-L142 | cited at this line (statement; \ref{bpN:p6:cond-nr})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: remark: its justification is inline (confirm, or exclude if not a mathematical claim)

NODE: bpN:p6:telescope
KIND: lemma
TITLE: Telescoping
STATEMENT_SOURCE: blueprint-N/parts/p6-normal-form.tex#bpN:p6:telescope@L148-L150
PROOF_SOURCE: blueprint-N/parts/p6-normal-form.tex#bpN:p6:telescope@L151-L153
CONTRACT_ID: bpN:p6:telescope
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p6:tel
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p6:tel | blueprint-N/parts/p6-normal-form.tex#bpN:p6:telescope@L152-L152 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p6:tel
KIND: step
TITLE: Telescoping
STATEMENT_SOURCE: blueprint-N/parts/p6-normal-form.tex#stepN:p6:tel@L152-L152
PROOF_SOURCE: blueprint-N/parts/p6-normal-form.tex#stepN:p6:tel@L152-L152
CONTRACT_ID: stepN:p6:tel
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p6:ext-chain
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p6:ext-chain | blueprint-N/parts/p6-normal-form.tex#stepN:p6:tel@L152-L152 | cited at this line (step; \ref{bpN:p6:ext-chain})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpN:p6:normal-form
KIND: theorem
TITLE: Normal Form Lemma
STATEMENT_SOURCE: blueprint-N/parts/p6-normal-form.tex#bpN:p6:normal-form@L157-L174
PROOF_SOURCE: blueprint-N/parts/p6-normal-form.tex#bpN:p6:normal-form@L175-L209
CONTRACT_ID: bpN:p6:normal-form
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p6:nf-first, stepN:p6:nf-case, stepN:p6:nf-N, stepN:p6:nf-induct, stepN:p6:nf-concl, stepN:p6:nf-disp, stepN:p6:nf-real, bpN:p6:setting, bpN:p5:composition, bpN:p6:iterative, bpN:p6:deviations
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p6:nf-first | blueprint-N/parts/p6-normal-form.tex#bpN:p6:normal-form@L178-L178 | proof step of this result
EDGE: stepN:p6:nf-case | blueprint-N/parts/p6-normal-form.tex#bpN:p6:normal-form@L180-L180 | proof step of this result
EDGE: stepN:p6:nf-N | blueprint-N/parts/p6-normal-form.tex#bpN:p6:normal-form@L186-L186 | proof step of this result
EDGE: stepN:p6:nf-induct | blueprint-N/parts/p6-normal-form.tex#bpN:p6:normal-form@L191-L191 | proof step of this result
EDGE: stepN:p6:nf-concl | blueprint-N/parts/p6-normal-form.tex#bpN:p6:normal-form@L200-L200 | proof step of this result
EDGE: stepN:p6:nf-disp | blueprint-N/parts/p6-normal-form.tex#bpN:p6:normal-form@L204-L204 | proof step of this result
EDGE: stepN:p6:nf-real | blueprint-N/parts/p6-normal-form.tex#bpN:p6:normal-form@L208-L208 | proof step of this result
EDGE: bpN:p6:setting | blueprint-N/parts/p6-normal-form.tex#bpN:p6:normal-form@L158-L158 | cited at this line (statement; \ref{bpN:p6:cond-nr})
EDGE: bpN:p5:composition | blueprint-N/parts/p6-normal-form.tex#bpN:p6:normal-form@L173-L173 | cited at this line (statement; \ref{bpN:p5:composition}; in \source: provenance unless consumed)
EDGE: bpN:p6:iterative | blueprint-N/parts/p6-normal-form.tex#bpN:p6:normal-form@L173-L173 | cited at this line (statement; \ref{bpN:p6:iterative}; in \source: provenance unless consumed)
EDGE: bpN:p6:deviations | blueprint-N/parts/p6-normal-form.tex#bpN:p6:normal-form@L173-L173 | cited at this line (statement; \ref{bpN:p6:deviations}; in \source: provenance unless consumed)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p6:nf-first
KIND: step
TITLE: Step 0: hypotheses of the Iterative Lemma
STATEMENT_SOURCE: blueprint-N/parts/p6-normal-form.tex#stepN:p6:nf-first@L178-L178
PROOF_SOURCE: blueprint-N/parts/p6-normal-form.tex#stepN:p6:nf-first@L178-L178
CONTRACT_ID: stepN:p6:nf-first
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p6:iterative
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p6:iterative | blueprint-N/parts/p6-normal-form.tex#stepN:p6:nf-first@L178-L178 | cited at this line (step; \ref{bpN:p6:iterative})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p6:nf-case
KIND: step
TITLE: Step 0: two cases
STATEMENT_SOURCE: blueprint-N/parts/p6-normal-form.tex#stepN:p6:nf-case@L180-L184
PROOF_SOURCE: blueprint-N/parts/p6-normal-form.tex#stepN:p6:nf-case@L180-L184
CONTRACT_ID: stepN:p6:nf-case
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p6:iterative, stepN:p6:nf-disp
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p6:iterative | blueprint-N/parts/p6-normal-form.tex#stepN:p6:nf-case@L180-L180 | cited at this line (step; \ref{bpN:p6:iterative})
EDGE: stepN:p6:nf-disp | blueprint-N/parts/p6-normal-form.tex#stepN:p6:nf-case@L184-L184 | cited at this line (step; \ref{stepN:p6:nf-disp})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p6:nf-N
KIND: step
TITLE: Number of steps
STATEMENT_SOURCE: blueprint-N/parts/p6-normal-form.tex#stepN:p6:nf-N@L186-L189
PROOF_SOURCE: blueprint-N/parts/p6-normal-form.tex#stepN:p6:nf-N@L186-L189
CONTRACT_ID: stepN:p6:nf-N
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p6:ext-numerics
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p6:ext-numerics | blueprint-N/parts/p6-normal-form.tex#stepN:p6:nf-N@L186-L186 | cited at this line (step; \ref{bpN:p6:ext-numerics})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p6:nf-induct
KIND: step
TITLE: Induction
STATEMENT_SOURCE: blueprint-N/parts/p6-normal-form.tex#stepN:p6:nf-induct@L191-L198
PROOF_SOURCE: blueprint-N/parts/p6-normal-form.tex#stepN:p6:nf-induct@L191-L198
CONTRACT_ID: stepN:p6:nf-induct
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p4:projections, bpN:p6:setting, bpN:p6:iterative
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p4:projections | blueprint-N/parts/p6-normal-form.tex#stepN:p6:nf-induct@L191-L191 | cited at this line (step; \ref{bpN:p4:projections})
EDGE: bpN:p6:setting | blueprint-N/parts/p6-normal-form.tex#stepN:p6:nf-induct@L194-L194 | cited at this line (step; \ref{bpN:p6:setting})
EDGE: bpN:p6:iterative | blueprint-N/parts/p6-normal-form.tex#stepN:p6:nf-induct@L197-L197 | cited at this line (step; \ref{bpN:p6:iterative})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p6:nf-concl
KIND: step
TITLE: Conclusion of the construction
STATEMENT_SOURCE: blueprint-N/parts/p6-normal-form.tex#stepN:p6:nf-concl@L200-L202
PROOF_SOURCE: blueprint-N/parts/p6-normal-form.tex#stepN:p6:nf-concl@L200-L202
CONTRACT_ID: stepN:p6:nf-concl
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p6:telescope, bpN:p6:iterative
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p6:telescope | blueprint-N/parts/p6-normal-form.tex#stepN:p6:nf-concl@L200-L200 | cited at this line (step; \ref{bpN:p6:telescope})
EDGE: bpN:p6:iterative | blueprint-N/parts/p6-normal-form.tex#stepN:p6:nf-concl@L200-L200 | cited at this line (step; \ref{bpN:p6:iterative})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p6:nf-disp
KIND: step
TITLE: (c) Displacement
STATEMENT_SOURCE: blueprint-N/parts/p6-normal-form.tex#stepN:p6:nf-disp@L204-L206
PROOF_SOURCE: blueprint-N/parts/p6-normal-form.tex#stepN:p6:nf-disp@L204-L206
CONTRACT_ID: stepN:p6:nf-disp
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p6:telescope, bpN:p6:iterative
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p6:telescope | blueprint-N/parts/p6-normal-form.tex#stepN:p6:nf-disp@L204-L204 | cited at this line (step; \ref{bpN:p6:telescope})
EDGE: bpN:p6:iterative | blueprint-N/parts/p6-normal-form.tex#stepN:p6:nf-disp@L204-L204 | cited at this line (step; \ref{bpN:p6:iterative})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p6:nf-real
KIND: step
TITLE: (d) Reality
STATEMENT_SOURCE: blueprint-N/parts/p6-normal-form.tex#stepN:p6:nf-real@L208-L208
PROOF_SOURCE: blueprint-N/parts/p6-normal-form.tex#stepN:p6:nf-real@L208-L208
CONTRACT_ID: stepN:p6:nf-real
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p6:iterative
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p6:iterative | blueprint-N/parts/p6-normal-form.tex#stepN:p6:nf-real@L208-L208 | cited at this line (step; \ref{bpN:p6:iterative})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpN:p6:action-displacement
KIND: corollary
TITLE: Consequence for the action variable
STATEMENT_SOURCE: blueprint-N/parts/p6-normal-form.tex#bpN:p6:action-displacement@L211-L214
PROOF_SOURCE: blueprint-N/parts/p6-normal-form.tex#bpN:p6:action-displacement@L215-L217
CONTRACT_ID: bpN:p6:action-displacement
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p6:normal-form
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p6:normal-form | blueprint-N/parts/p6-normal-form.tex#bpN:p6:action-displacement@L212-L212 | cited at this line (statement; \ref{bpN:p6:normal-form})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpN:p6:nonresonant-case
KIND: proposition
TITLE: No transformation for small $Ks$
STATEMENT_SOURCE: blueprint-N/parts/p6-normal-form.tex#bpN:p6:nonresonant-case@L221-L227
PROOF_SOURCE: blueprint-N/parts/p6-normal-form.tex#bpN:p6:nonresonant-case@L228-L230
CONTRACT_ID: bpN:p6:nonresonant-case
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p6:nr-triv, bpN:p7:factor-e
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p6:nr-triv | blueprint-N/parts/p6-normal-form.tex#bpN:p6:nonresonant-case@L229-L229 | proof step of this result
EDGE: bpN:p7:factor-e | blueprint-N/parts/p6-normal-form.tex#bpN:p6:nonresonant-case@L226-L226 | cited at this line (statement; \ref{bpN:p7:factor-e}; in \source: provenance unless consumed)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p6:nr-triv
KIND: step
TITLE: Trivial
STATEMENT_SOURCE: blueprint-N/parts/p6-normal-form.tex#stepN:p6:nr-triv@L229-L229
PROOF_SOURCE: blueprint-N/parts/p6-normal-form.tex#stepN:p6:nr-triv@L229-L229
CONTRACT_ID: stepN:p6:nr-triv
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

NODE: bpN:p6:deviations
KIND: claim
TITLE: Deviations from P\"oschel and bookkeeping
STATEMENT_SOURCE: blueprint-N/parts/p6-normal-form.tex#bpN:p6:deviations@L234-L243
PROOF_SOURCE: blueprint-N/parts/p6-normal-form.tex#bpN:p6:deviations@L234-L243
CONTRACT_ID: bpN:p6:deviations
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p6:nf-first, stepN:p6:nf-induct, bpN:p4:bracket, bpN:p6:setting, bpN:p6:normal-form, bpN:p5:canonical-map, stepN:p6:nf-case
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p6:nf-first | blueprint-N/parts/p6-normal-form.tex#bpN:p6:deviations@L236-L236 | cited at this line (statement; \ref{stepN:p6:nf-first})
EDGE: stepN:p6:nf-induct | blueprint-N/parts/p6-normal-form.tex#bpN:p6:deviations@L236-L236 | cited at this line (statement; \ref{stepN:p6:nf-induct})
EDGE: bpN:p4:bracket | blueprint-N/parts/p6-normal-form.tex#bpN:p6:deviations@L237-L237 | cited at this line (statement; \ref{bpN:p4:bracket})
EDGE: bpN:p6:setting | blueprint-N/parts/p6-normal-form.tex#bpN:p6:deviations@L238-L238 | cited at this line (statement; \ref{bpN:p6:cond-L})
EDGE: bpN:p6:normal-form | blueprint-N/parts/p6-normal-form.tex#bpN:p6:deviations@L238-L238 | cited at this line (statement; \ref{bpN:p6:normal-form})
EDGE: bpN:p5:canonical-map | blueprint-N/parts/p6-normal-form.tex#bpN:p6:deviations@L239-L239 | cited at this line (statement; \ref{bpN:p5:canonical-map})
EDGE: stepN:p6:nf-case | blueprint-N/parts/p6-normal-form.tex#bpN:p6:deviations@L240-L240 | cited at this line (statement; \ref{stepN:p6:nf-case})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: remark: its justification is inline (confirm, or exclude if not a mathematical claim)

NODE: bpN:p6:consumers
KIND: claim
TITLE: Consumers
STATEMENT_SOURCE: blueprint-N/parts/p6-normal-form.tex#bpN:p6:consumers@L245-L247
PROOF_SOURCE: blueprint-N/parts/p6-normal-form.tex#bpN:p6:consumers@L245-L247
CONTRACT_ID: bpN:p6:consumers
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p6:normal-form, bpN:p6:action-displacement, bpN:p6:nonresonant-case, bpN:p8:direction, bpN:p4:bracket, bpN:p4:cauchy, bpN:p6:iterative, bpN:p6:iterative-special
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p6:normal-form | blueprint-N/parts/p6-normal-form.tex#bpN:p6:consumers@L246-L246 | cited at this line (statement; \ref{bpN:p6:normal-form})
EDGE: bpN:p6:action-displacement | blueprint-N/parts/p6-normal-form.tex#bpN:p6:consumers@L246-L246 | cited at this line (statement; \ref{bpN:p6:action-displacement})
EDGE: bpN:p6:nonresonant-case | blueprint-N/parts/p6-normal-form.tex#bpN:p6:consumers@L246-L246 | cited at this line (statement; \ref{bpN:p6:nonresonant-case})
EDGE: bpN:p8:direction | blueprint-N/parts/p6-normal-form.tex#bpN:p6:consumers@L246-L246 | cited at this line (statement; \ref{bpN:p8:direction})
EDGE: bpN:p4:bracket | blueprint-N/parts/p6-normal-form.tex#bpN:p6:consumers@L246-L246 | cited at this line (statement; \ref{bpN:p4:bracket})
EDGE: bpN:p4:cauchy | blueprint-N/parts/p6-normal-form.tex#bpN:p6:consumers@L246-L246 | cited at this line (statement; \ref{bpN:p4:cauchy})
EDGE: bpN:p6:iterative | blueprint-N/parts/p6-normal-form.tex#bpN:p6:consumers@L246-L246 | cited at this line (statement; \ref{bpN:p6:iterative})
EDGE: bpN:p6:iterative-special | blueprint-N/parts/p6-normal-form.tex#bpN:p6:consumers@L246-L246 | cited at this line (statement; \ref{bpN:p6:iterative-special})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: remark: its justification is inline (confirm, or exclude if not a mathematical claim)
