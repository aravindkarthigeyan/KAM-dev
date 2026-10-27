NODE: bpP:p5:order
KIND: claim
TITLE: Order in which every constant is chosen
STATEMENT_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:order@L13-L23
PROOF_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:order@L13-L23
CONTRACT_ID: bpP:p5:order
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p5:main, bpP:p5:ext, bpP:p5:birkhoff-ext, bpP:p5:freq-data, bpP:p5:kam-hyp, bpP:p5:kam-cond, bpP:p5:params, bpP:p5:lower, bpP:p5:rstar
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p5:main | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:order@L14-L14 | cited at this line (statement; \ref{bpP:p5:main})
EDGE: bpP:p5:ext | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:order@L17-L17 | cited at this line (statement; \ref{bpP:p5:ext})
EDGE: bpP:p5:birkhoff-ext | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:order@L17-L17 | cited at this line (statement; \ref{bpP:p5:birkhoff-ext})
EDGE: bpP:p5:freq-data | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:order@L17-L17 | cited at this line (statement; \ref{bpP:p5:freq-data})
EDGE: bpP:p5:kam-hyp | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:order@L18-L18 | cited at this line (statement; \ref{bpP:p5:kam-hyp})
EDGE: bpP:p5:kam-cond | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:order@L19-L19 | cited at this line (statement; \ref{bpP:p5:kam-cond})
EDGE: bpP:p5:params | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:order@L19-L19 | cited at this line (statement; \ref{bpP:p5:params})
EDGE: bpP:p5:lower | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:order@L19-L19 | cited at this line (statement; \ref{bpP:p5:lower})
EDGE: bpP:p5:rstar | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:order@L20-L20 | cited at this line (statement; \ref{bpP:p5:rstar})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: remark: its justification is inline (confirm, or exclude if not a mathematical claim)

NODE: bpP:p5:ext
KIND: lemma
TITLE: Uniform holomorphic extension of the family
STATEMENT_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:ext@L29-L31
PROOF_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:ext@L32-L37
CONTRACT_ID: bpP:p5:ext
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p5:ext-loc, stepP:p5:ext-glue, stepP:p5:ext-per, stepP:p5:ext-H0
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p5:ext-loc | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:ext@L33-L33 | proof step of this result
EDGE: stepP:p5:ext-glue | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:ext@L34-L34 | proof step of this result
EDGE: stepP:p5:ext-per | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:ext@L35-L35 | proof step of this result
EDGE: stepP:p5:ext-H0 | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:ext@L36-L36 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: [pre-extract: dropped reference to bpP:p0:pg, which part p5 proves or sets up]

NODE: stepP:p5:ext-loc
KIND: step
TITLE: Local extensions
STATEMENT_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:ext-loc@L33-L33
PROOF_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:ext-loc@L33-L33
CONTRACT_ID: stepP:p5:ext-loc
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

NODE: stepP:p5:ext-glue
KIND: step
TITLE: Gluing
STATEMENT_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:ext-glue@L34-L34
PROOF_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:ext-glue@L34-L34
CONTRACT_ID: stepP:p5:ext-glue
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

NODE: stepP:p5:ext-per
KIND: step
TITLE: Periodicity
STATEMENT_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:ext-per@L35-L35
PROOF_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:ext-per@L35-L35
CONTRACT_ID: stepP:p5:ext-per
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p5:ext-glue
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p5:ext-glue | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:ext-per@L35-L35 | cited at this line (step; \ref{stepP:p5:ext-glue})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p5:ext-H0
KIND: step
TITLE: $H_0$
STATEMENT_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:ext-H0@L36-L36
PROOF_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:ext-H0@L36-L36
CONTRACT_ID: stepP:p5:ext-H0
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p5:ext-loc, stepP:p5:ext-glue, K:bp:p1:cauchy-open
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p5:ext-loc | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:ext-H0@L36-L36 | cited at this line (step; \ref{stepP:p5:ext-loc})
EDGE: stepP:p5:ext-glue | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:ext-H0@L36-L36 | cited at this line (step; \ref{stepP:p5:ext-glue})
EDGE: K:bp:p1:cauchy-open | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:ext-H0@L36-L36 | cited at this line (step; \Kref{bp:p1:cauchy-open})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpP:p5:consts
KIND: definition
TITLE: Strip, averaged function, constants
STATEMENT_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:consts@L39-L44
PROOF_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:consts@L45-L47
CONTRACT_ID: bpP:p5:consts
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p0:secavg#secularAverage, bpP:p5:kam-hyp, N:bpN:p4:sup-weighted, K:bp:p1:decay
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p0:secavg#secularAverage | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:consts@L42-L42 | cited at this line (statement; \ref{bpP:p0:secavg})
EDGE: bpP:p5:kam-hyp | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:consts@L46-L46 | cited at this line (proof; \ref{bpP:p5:kam-hyp})
EDGE: N:bpN:p4:sup-weighted | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:consts@L46-L46 | cited at this line (proof; \Nref{bpN:p4:sup-weighted})
EDGE: K:bp:p1:decay | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:consts@L46-L46 | cited at this line (proof; \Kref{bp:p1:decay})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpP:p5:birkhoff-ext
KIND: lemma
TITLE: Birkhoff coefficients as derivatives; analytic extension to $\overline V$
STATEMENT_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:birkhoff-ext@L49-L56
PROOF_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:birkhoff-ext@L57-L62
CONTRACT_ID: bpP:p5:birkhoff-ext
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p5:be-coef, stepP:p5:be-an, stepP:p5:be-jet, stepP:p5:be-det
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p5:be-coef | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:birkhoff-ext@L58-L58 | proof step of this result
EDGE: stepP:p5:be-an | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:birkhoff-ext@L59-L59 | proof step of this result
EDGE: stepP:p5:be-jet | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:birkhoff-ext@L60-L60 | proof step of this result
EDGE: stepP:p5:be-det | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:birkhoff-ext@L61-L61 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: [pre-extract: dropped reference to bpP:p0:pg, which part p5 proves or sets up]

NODE: stepP:p5:be-coef
KIND: step
TITLE: Coefficients on $V$
STATEMENT_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:be-coef@L58-L58
PROOF_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:be-coef@L58-L58
CONTRACT_ID: stepP:p5:be-coef
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p0:birkhoff#HasSecularBirkhoffForm, bpP:p5:ext
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p0:birkhoff#HasSecularBirkhoffForm | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:be-coef@L58-L58 | cited at this line (step; \ref{bpP:p0:birkhoff})
EDGE: bpP:p5:ext | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:be-coef@L58-L58 | cited at this line (step; \ref{bpP:p5:ext})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p5:be-an
KIND: step
TITLE: Analyticity
STATEMENT_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:be-an@L59-L59
PROOF_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:be-an@L59-L59
CONTRACT_ID: stepP:p5:be-an
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p5:ext
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p5:ext | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:be-an@L59-L59 | cited at this line (step; \ref{bpP:p5:ext})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p5:be-jet
KIND: step
TITLE: (b) on $V$, then everywhere
STATEMENT_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:be-jet@L60-L60
PROOF_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:be-jet@L60-L60
CONTRACT_ID: stepP:p5:be-jet
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p5:be-coef
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p5:be-coef | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:be-jet@L60-L60 | cited at this line (step; \ref{stepP:p5:be-coef})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p5:be-det
KIND: step
TITLE: (c)
STATEMENT_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:be-det@L61-L61
PROOF_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:be-det@L61-L61
CONTRACT_ID: stepP:p5:be-det
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

NODE: bpP:p5:uniform-remainder
KIND: proposition
TITLE: Uniform remainder: CP10 (60) from the frozen hypotheses
STATEMENT_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:uniform-remainder@L64-L70
PROOF_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:uniform-remainder@L71-L74
CONTRACT_ID: bpP:p5:uniform-remainder
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p5:ur-bound, stepP:p5:ur-schwarz, bpP:p5:birkhoff-ext
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p5:ur-bound | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:uniform-remainder@L72-L72 | proof step of this result
EDGE: stepP:p5:ur-schwarz | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:uniform-remainder@L73-L73 | proof step of this result
EDGE: bpP:p5:birkhoff-ext | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:uniform-remainder@L65-L65 | cited at this line (statement; \ref{bpP:p5:birkhoff-ext})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p5:ur-bound
KIND: step
TITLE: Bound
STATEMENT_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:ur-bound@L72-L72
PROOF_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:ur-bound@L72-L72
CONTRACT_ID: stepP:p5:ur-bound
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p5:ext
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p5:ext | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:ur-bound@L72-L72 | cited at this line (step; \ref{bpP:p5:ext})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p5:ur-schwarz
KIND: step
TITLE: Schwarz
STATEMENT_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:ur-schwarz@L73-L73
PROOF_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:ur-schwarz@L73-L73
CONTRACT_ID: stepP:p5:ur-schwarz
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p5:birkhoff-ext
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p5:birkhoff-ext | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:ur-schwarz@L73-L73 | cited at this line (step; \ref{bpP:p5:birkhoff-ext})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpP:p5:lip-complex
KIND: lemma
TITLE: Lipschitz bound on a complex neighbourhood
STATEMENT_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:lip-complex@L80-L82
PROOF_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:lip-complex@L83-L86
CONTRACT_ID: bpP:p5:lip-complex
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: K:bp:p1:cauchy-open, K:bp:p1:ext-mvt, bpP:p3:lip-sup
ROUTES: -
ROUTE_FOR: -
EDGE: K:bp:p1:cauchy-open | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:lip-complex@L84-L84 | cited at this line (proof; \Kref{bp:p1:cauchy-open})
EDGE: K:bp:p1:ext-mvt | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:lip-complex@L84-L84 | cited at this line (proof; \Kref{bp:p1:ext-mvt})
EDGE: bpP:p3:lip-sup | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:lip-complex@L85-L85 | cited at this line (proof; \ref{bpP:p3:lip-sup}; in \source: provenance unless consumed)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpP:p5:bilip
KIND: lemma
TITLE: Complex bi-Lipschitz bound for $\bar\omega_0$
STATEMENT_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:bilip@L88-L90
PROOF_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:bilip@L91-L94
CONTRACT_ID: bpP:p5:bilip
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p5:bl-real, stepP:p5:bl-comp
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p5:bl-real | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:bilip@L92-L92 | proof step of this result
EDGE: stepP:p5:bl-comp | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:bilip@L93-L93 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p5:bl-real
KIND: step
TITLE: Real facts
STATEMENT_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:bl-real@L92-L92
PROOF_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:bl-real@L92-L92
CONTRACT_ID: stepP:p5:bl-real
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p0:fastdiffeo#HasFastDiffeomorphism
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p0:fastdiffeo#HasFastDiffeomorphism | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:bl-real@L92-L92 | cited at this line (step; \ref{bpP:p0:fastdiffeo})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p5:bl-comp
KIND: step
TITLE: Compactness
STATEMENT_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:bl-comp@L93-L93
PROOF_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:bl-comp@L93-L93
CONTRACT_ID: stepP:p5:bl-comp
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p5:ext
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p5:ext | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:bl-comp@L93-L93 | cited at this line (step; \ref{bpP:p5:ext})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpP:p5:dio-one
KIND: lemma
TITLE: One-scale Diophantine measure on $V$ (CP10 (38))
STATEMENT_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:dio-one@L96-L98
PROOF_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:dio-one@L99-L102
CONTRACT_ID: bpP:p5:dio-one
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p4:lip-inverse, bpP:p4:lattice-tail, bpP:p4:affine-slab, K:bp:p1:lip-image, K:bp:p1:mcshane
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p4:lip-inverse | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:dio-one@L97-L97 | cited at this line (statement; \ref{bpP:p4:lip-inverse})
EDGE: bpP:p4:lattice-tail | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:dio-one@L97-L97 | cited at this line (statement; \ref{bpP:p4:lattice-tail})
EDGE: bpP:p4:affine-slab | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:dio-one@L100-L100 | cited at this line (proof; \ref{bpP:p4:affine-slab})
EDGE: K:bp:p1:lip-image | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:dio-one@L100-L100 | cited at this line (proof; \Kref{bp:p1:lip-image})
EDGE: K:bp:p1:mcshane | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:dio-one@L100-L100 | cited at this line (proof; \Kref{bp:p1:mcshane})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpP:p5:freq-data
KIND: lemma
TITLE: Constants of the averaged frequency map
STATEMENT_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:freq-data@L104-L108
PROOF_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:freq-data@L109-L113
CONTRACT_ID: bpP:p5:freq-data
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p5:fd-bd, stepP:p5:fd-lip, stepP:p5:fd-beta, bpP:p5:birkhoff-ext, bpP:p4:data
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p5:fd-bd | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:freq-data@L110-L110 | proof step of this result
EDGE: stepP:p5:fd-lip | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:freq-data@L111-L111 | proof step of this result
EDGE: stepP:p5:fd-beta | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:freq-data@L112-L112 | proof step of this result
EDGE: bpP:p5:birkhoff-ext | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:freq-data@L105-L105 | cited at this line (statement; \ref{bpP:p5:birkhoff-ext})
EDGE: bpP:p4:data | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:freq-data@L107-L107 | cited at this line (statement; \ref{bpP:p4:data})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p5:fd-bd
KIND: step
TITLE: Bounds
STATEMENT_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:fd-bd@L110-L110
PROOF_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:fd-bd@L110-L110
CONTRACT_ID: stepP:p5:fd-bd
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p5:birkhoff-ext
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p5:birkhoff-ext | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:fd-bd@L110-L110 | cited at this line (step; \ref{bpP:p5:birkhoff-ext})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p5:fd-lip
KIND: step
TITLE: Lipschitz
STATEMENT_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:fd-lip@L111-L111
PROOF_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:fd-lip@L111-L111
CONTRACT_ID: stepP:p5:fd-lip
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p5:lip-complex
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p5:lip-complex | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:fd-lip@L111-L111 | cited at this line (step; \ref{bpP:p5:lip-complex})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p5:fd-beta
KIND: step
TITLE: Inverse of $\tilde\beta$
STATEMENT_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:fd-beta@L112-L112
PROOF_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:fd-beta@L112-L112
CONTRACT_ID: stepP:p5:fd-beta
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p5:birkhoff-ext, bpP:p4:beta-inverse
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p5:birkhoff-ext | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:fd-beta@L112-L112 | cited at this line (step; \ref{bpP:p5:birkhoff-ext})
EDGE: bpP:p4:beta-inverse | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:fd-beta@L112-L112 | cited at this line (step; \ref{bpP:p4:beta-inverse})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpP:p5:freq-inj
KIND: lemma
TITLE: Nondegeneracy and injectivity of the frequency map on the complex neighbourhood
STATEMENT_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:freq-inj@L115-L125
PROOF_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:freq-inj@L126-L130
CONTRACT_ID: bpP:p5:freq-inj
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p5:fi-inj, stepP:p5:fi-blk, stepP:p5:fi-inv
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p5:fi-inj | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:freq-inj@L127-L127 | proof step of this result
EDGE: stepP:p5:fi-blk | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:freq-inj@L128-L128 | proof step of this result
EDGE: stepP:p5:fi-inv | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:freq-inj@L129-L129 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p5:fi-inj
KIND: step
TITLE: (a)
STATEMENT_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:fi-inj@L127-L127
PROOF_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:fi-inj@L127-L127
CONTRACT_ID: stepP:p5:fi-inj
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p5:bilip, bpP:p5:freq-data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p5:bilip | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:fi-inj@L127-L127 | cited at this line (step; \ref{bpP:p5:bilip})
EDGE: bpP:p5:freq-data | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:fi-inj@L127-L127 | cited at this line (step; \ref{bpP:p5:freq-data})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p5:fi-blk
KIND: step
TITLE: (b) Blocks
STATEMENT_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:fi-blk@L128-L128
PROOF_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:fi-blk@L128-L128
CONTRACT_ID: stepP:p5:fi-blk
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p5:bilip
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p5:bilip | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:fi-blk@L128-L128 | cited at this line (step; \ref{bpP:p5:bilip})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p5:fi-inv
KIND: step
TITLE: Inverse
STATEMENT_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:fi-inv@L129-L129
PROOF_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:fi-inv@L129-L129
CONTRACT_ID: stepP:p5:fi-inv
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

NODE: bpP:p5:freq-inj-rem
KIND: claim
TITLE: bpP:p5:freq-inj-rem
STATEMENT_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:freq-inj-rem@L131-L133
PROOF_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:freq-inj-rem@L131-L133
CONTRACT_ID: bpP:p5:freq-inj-rem
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p5:bilip, bpP:p3:period-dictionary, bpP:p5:kam-hyp
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p5:bilip | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:freq-inj-rem@L132-L132 | cited at this line (statement; \ref{bpP:p5:bilip})
EDGE: bpP:p3:period-dictionary | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:freq-inj-rem@L132-L132 | cited at this line (statement; \ref{bpP:p3:period-dictionary})
EDGE: bpP:p5:kam-hyp | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:freq-inj-rem@L132-L132 | cited at this line (statement; \ref{bpP:p5:kam-hyp})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: remark: its justification is inline (confirm, or exclude if not a mathematical claim)

NODE: bpP:p5:params
KIND: definition
TITLE: Parameters as functions of $(r,\mu)$
STATEMENT_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:params@L137-L145
PROOF_SOURCE: -
CONTRACT_ID: bpP:p5:params
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p5:order, bpP:p5:kam-hyp, bpP:p5:kam-cond, bpP:p3:constants
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p5:order | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:params@L138-L138 | cited at this line (statement; \ref{bpP:p5:order})
EDGE: bpP:p5:kam-hyp | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:params@L138-L138 | cited at this line (statement; \ref{bpP:p5:kam-hyp})
EDGE: bpP:p5:kam-cond | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:params@L138-L138 | cited at this line (statement; \ref{bpP:p5:kam-cond})
EDGE: bpP:p3:constants | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:params@L144-L144 | cited at this line (statement; \ref{bpP:p3:constants})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpP:p5:rstar
KIND: definition
TITLE: Smallness thresholds
STATEMENT_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:rstar@L147-L156
PROOF_SOURCE: -
CONTRACT_ID: bpP:p5:rstar
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p5:order, bpP:p5:lower, bpP:p4:data, bpP:p5:location
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p5:order | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:rstar@L148-L148 | cited at this line (statement; \ref{bpP:p5:order})
EDGE: bpP:p5:lower | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:rstar@L148-L148 | cited at this line (statement; \ref{bpP:p5:lower})
EDGE: bpP:p4:data | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:rstar@L150-L150 | cited at this line (statement; \ref{bpP:p4:data})
EDGE: bpP:p5:location | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:rstar@L154-L154 | cited at this line (statement; \ref{bpP:p5:location})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpP:p5:param-facts
KIND: lemma
TITLE: Consequences of the parameter choice
STATEMENT_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:param-facts@L158-L163
PROOF_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:param-facts@L164-L166
CONTRACT_ID: bpP:p5:param-facts
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p4:collar, bpP:p5:dio-one
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p4:collar | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:param-facts@L165-L165 | cited at this line (proof; \ref{bpP:p4:collar})
EDGE: bpP:p5:dio-one | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:param-facts@L165-L165 | cited at this line (proof; \ref{bpP:p5:dio-one})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpP:p5:avg
KIND: proposition
TITLE: Averaged system in CP variables
STATEMENT_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:avg@L170-L174
PROOF_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:avg@L175-L180
CONTRACT_ID: bpP:p5:avg
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p5:av-dict, stepP:p5:av-R1, stepP:p5:av-R2, stepP:p5:av-id, bpP:p5:ext, bpP:p2:osc-averaging
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p5:av-dict | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:avg@L176-L176 | proof step of this result
EDGE: stepP:p5:av-R1 | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:avg@L177-L177 | proof step of this result
EDGE: stepP:p5:av-R2 | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:avg@L178-L178 | proof step of this result
EDGE: stepP:p5:av-id | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:avg@L179-L179 | proof step of this result
EDGE: bpP:p5:ext | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:avg@L171-L171 | cited at this line (statement; \ref{bpP:p5:ext})
EDGE: bpP:p2:osc-averaging | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:avg@L171-L171 | cited at this line (statement; \ref{bpP:p2:osc-averaging})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p5:av-dict
KIND: step
TITLE: Dictionary
STATEMENT_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:av-dict@L176-L176
PROOF_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:av-dict@L176-L176
CONTRACT_ID: stepP:p5:av-dict
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p2:averaged-remainder, bpP:p5:consts, bpP:p2:use5
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p2:averaged-remainder | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:av-dict@L176-L176 | cited at this line (step; \ref{bpP:p2:averaged-remainder})
EDGE: bpP:p5:consts | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:av-dict@L176-L176 | cited at this line (step; \ref{bpP:p5:consts})
EDGE: bpP:p2:use5 | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:av-dict@L176-L176 | cited at this line (step; \ref{bpP:p2:use5})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p5:av-R1
KIND: step
TITLE: (R1)
STATEMENT_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:av-R1@L177-L177
PROOF_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:av-R1@L177-L177
CONTRACT_ID: stepP:p5:av-R1
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

NODE: stepP:p5:av-R2
KIND: step
TITLE: (R2) and the remainder
STATEMENT_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:av-R2@L178-L178
PROOF_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:av-R2@L178-L178
CONTRACT_ID: stepP:p5:av-R2
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p5:kam-cond, bpP:p2:averaged-remainder
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p5:kam-cond | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:av-R2@L178-L178 | cited at this line (step; \ref{bpP:p5:kam-cond})
EDGE: bpP:p2:averaged-remainder | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:av-R2@L178-L178 | cited at this line (step; \ref{bpP:p2:averaged-remainder})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p5:av-id
KIND: step
TITLE: Identification
STATEMENT_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:av-id@L179-L179
PROOF_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:av-id@L179-L179
CONTRACT_ID: stepP:p5:av-id
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p2:averaged-remainder, bpP:p5:birkhoff-ext, bpP:p2:use5
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p2:averaged-remainder | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:av-id@L179-L179 | cited at this line (step; \ref{bpP:p2:averaged-remainder})
EDGE: bpP:p5:birkhoff-ext | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:av-id@L179-L179 | cited at this line (step; \ref{bpP:p5:birkhoff-ext})
EDGE: bpP:p2:use5 | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:av-id@L179-L179 | cited at this line (step; \ref{bpP:p2:use5})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpP:p5:phi
KIND: definition
TITLE: Polar chart, composite chart $\Phi$
STATEMENT_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:phi@L184-L186
PROOF_SOURCE: -
CONTRACT_ID: bpP:p5:phi
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

NODE: bpP:p5:phi-chart
KIND: lemma
TITLE: $\Phi$ is a $1$-chart with the lattice properties of \Pref{bpP:p1:cyl-pipeline}
STATEMENT_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:phi-chart@L188-L191
PROOF_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:phi-chart@L192-L196
CONTRACT_ID: bpP:p5:phi-chart
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p5:pc-img, stepP:p5:pc-lat, stepP:p5:pc-ham, bpP:p1:cyl-pipeline, bpP:p1:chart
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p5:pc-img | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:phi-chart@L193-L193 | proof step of this result
EDGE: stepP:p5:pc-lat | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:phi-chart@L194-L194 | proof step of this result
EDGE: stepP:p5:pc-ham | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:phi-chart@L195-L195 | proof step of this result
EDGE: bpP:p1:cyl-pipeline | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:phi-chart@L188-L188 | cited at this line (statement; \ref{bpP:p1:cyl-pipeline})
EDGE: bpP:p1:chart | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:phi-chart@L189-L189 | cited at this line (statement; \ref{bpP:p1:chart})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p5:pc-img
KIND: step
TITLE: Image
STATEMENT_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:pc-img@L193-L193
PROOF_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:pc-img@L193-L193
CONTRACT_ID: stepP:p5:pc-img
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p1:hol-chart, bpP:p5:avg, bpP:p1:typical
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p1:hol-chart | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:pc-img@L193-L193 | cited at this line (step; \ref{bpP:p1:hol-chart})
EDGE: bpP:p5:avg | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:pc-img@L193-L193 | cited at this line (step; \ref{bpP:p5:avg})
EDGE: bpP:p1:typical | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:pc-img@L193-L193 | cited at this line (step; \ref{bpP:p1:typical})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p5:pc-lat
KIND: step
TITLE: Lattice
STATEMENT_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:pc-lat@L194-L194
PROOF_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:pc-lat@L194-L194
CONTRACT_ID: stepP:p5:pc-lat
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p5:avg, bpP:p4:disc-measure
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p5:avg | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:pc-lat@L194-L194 | cited at this line (step; \ref{bpP:p5:avg})
EDGE: bpP:p4:disc-measure | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:pc-lat@L194-L194 | cited at this line (step; \ref{bpP:p4:disc-measure})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p5:pc-ham
KIND: step
TITLE: Hamiltonian
STATEMENT_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:pc-ham@L195-L195
PROOF_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:pc-ham@L195-L195
CONTRACT_ID: stepP:p5:pc-ham
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p5:avg, bpP:p0:oscaction#oscillatorAction
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p5:avg | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:pc-ham@L195-L195 | cited at this line (step; \ref{bpP:p5:avg})
EDGE: bpP:p0:oscaction#oscillatorAction | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:pc-ham@L195-L195 | cited at this line (step; \ref{bpP:p0:oscaction})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpP:p5:kam-hyp
KIND: lemma
TITLE: Hypotheses of the two-scale KAM theorem
STATEMENT_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:kam-hyp@L198-L202
PROOF_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:kam-hyp@L203-L208
CONTRACT_ID: bpP:p5:kam-hyp
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p5:kh-dom, stepP:p5:kh-h, stepP:p5:kh-f, stepP:p5:kh-norm, bpP:p5:order, bpP:p3:two-scale-kam, bpP:p5:params, bpP:p5:freq-inj
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p5:kh-dom | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:kam-hyp@L204-L204 | proof step of this result
EDGE: stepP:p5:kh-h | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:kam-hyp@L205-L205 | proof step of this result
EDGE: stepP:p5:kh-f | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:kam-hyp@L206-L206 | proof step of this result
EDGE: stepP:p5:kh-norm | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:kam-hyp@L207-L207 | proof step of this result
EDGE: bpP:p5:order | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:kam-hyp@L199-L199 | cited at this line (statement; \ref{bpP:p5:order})
EDGE: bpP:p3:two-scale-kam | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:kam-hyp@L199-L199 | cited at this line (statement; \ref{bpP:p3:two-scale-kam})
EDGE: bpP:p5:params | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:kam-hyp@L199-L199 | cited at this line (statement; \ref{bpP:p5:params})
EDGE: bpP:p5:freq-inj | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:kam-hyp@L201-L201 | cited at this line (statement; \ref{bpP:p5:freq-inj})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p5:kh-dom
KIND: step
TITLE: Domain
STATEMENT_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:kh-dom@L204-L204
PROOF_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:kh-dom@L204-L204
CONTRACT_ID: stepP:p5:kh-dom
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

NODE: stepP:p5:kh-h
KIND: step
TITLE: $h$
STATEMENT_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:kh-h@L205-L205
PROOF_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:kh-h@L205-L205
CONTRACT_ID: stepP:p5:kh-h
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p5:freq-inj, bpP:p5:param-facts
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p5:freq-inj | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:kh-h@L205-L205 | cited at this line (step; \ref{bpP:p5:freq-inj})
EDGE: bpP:p5:param-facts | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:kh-h@L205-L205 | cited at this line (step; \ref{bpP:p5:param-facts})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p5:kh-f
KIND: step
TITLE: $f$
STATEMENT_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:kh-f@L206-L206
PROOF_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:kh-f@L206-L206
CONTRACT_ID: stepP:p5:kh-f
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p5:uniform-remainder, bpP:p5:consts, N:bpN:p4:sup-weighted
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p5:uniform-remainder | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:kh-f@L206-L206 | cited at this line (step; \ref{bpP:p5:uniform-remainder})
EDGE: bpP:p5:consts | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:kh-f@L206-L206 | cited at this line (step; \ref{bpP:p5:consts})
EDGE: N:bpN:p4:sup-weighted | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:kh-f@L206-L206 | cited at this line (step; \Nref{bpN:p4:sup-weighted})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p5:kh-norm
KIND: step
TITLE: Normalizations
STATEMENT_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:kh-norm@L207-L207
PROOF_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:kh-norm@L207-L207
CONTRACT_ID: stepP:p5:kh-norm
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p3:rem-norm
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p3:rem-norm | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:kh-norm@L207-L207 | cited at this line (step; \ref{bpP:p3:rem-norm})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpP:p5:kam-cond
KIND: lemma
TITLE: Scale constants and the KAM condition
STATEMENT_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:kam-cond@L212-L222
PROOF_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:kam-cond@L223-L226
CONTRACT_ID: bpP:p5:kam-cond
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p5:kc-eval, stepP:p5:kc-small, bpP:p3:constants, bpP:p5:kam-hyp
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p5:kc-eval | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:kam-cond@L224-L224 | proof step of this result
EDGE: stepP:p5:kc-small | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:kam-cond@L225-L225 | proof step of this result
EDGE: bpP:p3:constants | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:kam-cond@L213-L213 | cited at this line (statement; \ref{bpP:p3:constants})
EDGE: bpP:p5:kam-hyp | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:kam-cond@L219-L219 | cited at this line (statement; \ref{bpP:p5:kam-hyp})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p5:kc-eval
KIND: step
TITLE: Evaluation
STATEMENT_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:kc-eval@L224-L224
PROOF_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:kc-eval@L224-L224
CONTRACT_ID: stepP:p5:kc-eval
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

NODE: stepP:p5:kc-small
KIND: step
TITLE: Smallness
STATEMENT_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:kc-small@L225-L225
PROOF_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:kc-small@L225-L225
CONTRACT_ID: stepP:p5:kc-small
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

NODE: bpP:p5:rK
KIND: lemma
TITLE: The radius $r_K$ (what Part~4 should state instead of $r_K\le C\hat\rho\le C\gamma_2$)
STATEMENT_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:rK@L228-L231
PROOF_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:rK@L232-L234
CONTRACT_ID: bpP:p5:rK
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p5:rk-dir, bpP:p5:kam-cond, bpP:p3:two-scale-kam
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p5:rk-dir | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:rK@L233-L233 | proof step of this result
EDGE: bpP:p5:kam-cond | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:rK@L229-L229 | cited at this line (statement; \ref{bpP:p5:kam-cond})
EDGE: bpP:p3:two-scale-kam | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:rK@L229-L229 | cited at this line (statement; \ref{bpP:p3:two-scale-kam})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p5:rk-dir
KIND: step
TITLE: Direct
STATEMENT_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:rk-dir@L233-L233
PROOF_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:rk-dir@L233-L233
CONTRACT_ID: stepP:p5:rk-dir
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p5:param-facts
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p5:param-facts | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:rk-dir@L233-L233 | cited at this line (step; \ref{bpP:p5:param-facts})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpP:p5:use5-fix
KIND: claim
TITLE: Interface with Part~4 (reviews P4-01, P4-02)
STATEMENT_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:use5-fix@L235-L237
PROOF_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:use5-fix@L235-L237
CONTRACT_ID: bpP:p5:use5-fix
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p4:use5, bpP:p4:domain-collar, bpP:p5:budget, stepP:p5:bu-collar, stepP:p4:dc-prod, stepP:p4:dc-diff, bpP:p5:rK, bpP:p5:param-facts
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p4:use5 | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:use5-fix@L236-L236 | cited at this line (statement; \ref{bpP:p4:use5})
EDGE: bpP:p4:domain-collar | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:use5-fix@L236-L236 | cited at this line (statement; \ref{bpP:p4:domain-collar})
EDGE: bpP:p5:budget | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:use5-fix@L236-L236 | cited at this line (statement; \ref{bpP:p5:budget})
EDGE: stepP:p5:bu-collar | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:use5-fix@L236-L236 | cited at this line (statement; \ref{stepP:p5:bu-collar})
EDGE: stepP:p4:dc-prod | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:use5-fix@L236-L236 | cited at this line (statement; \ref{stepP:p4:dc-prod})
EDGE: stepP:p4:dc-diff | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:use5-fix@L236-L236 | cited at this line (statement; \ref{stepP:p4:dc-diff})
EDGE: bpP:p5:rK | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:use5-fix@L236-L236 | cited at this line (statement; \ref{bpP:p5:rK})
EDGE: bpP:p5:param-facts | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:use5-fix@L236-L236 | cited at this line (statement; \ref{bpP:p5:param-facts})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: remark: its justification is inline (confirm, or exclude if not a mathematical claim)

NODE: bpP:p5:location
KIND: lemma
TITLE: Location of the tori in the cylinder
STATEMENT_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:location@L241-L243
PROOF_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:location@L244-L248
CONTRACT_ID: bpP:p5:location
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p5:lo-range, stepP:p5:lo-act, stepP:p5:lo-disc, bpP:p3:two-scale-kam, bpP:p5:avg
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p5:lo-range | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:location@L245-L245 | proof step of this result
EDGE: stepP:p5:lo-act | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:location@L246-L246 | proof step of this result
EDGE: stepP:p5:lo-disc | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:location@L247-L247 | proof step of this result
EDGE: bpP:p3:two-scale-kam | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:location@L242-L242 | cited at this line (statement; \ref{bpP:p3:two-scale-kam})
EDGE: bpP:p5:avg | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:location@L242-L242 | cited at this line (statement; \ref{bpP:p5:avg})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p5:lo-range
KIND: step
TITLE: Range
STATEMENT_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:lo-range@L245-L245
PROOF_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:lo-range@L245-L245
CONTRACT_ID: stepP:p5:lo-range
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p5:rK
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p5:rK | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:lo-range@L245-L245 | cited at this line (step; \ref{bpP:p5:rK})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p5:lo-act
KIND: step
TITLE: Actions
STATEMENT_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:lo-act@L246-L246
PROOF_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:lo-act@L246-L246
CONTRACT_ID: stepP:p5:lo-act
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p5:avg, bpP:p4:collar
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p5:avg | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:lo-act@L246-L246 | cited at this line (step; \ref{bpP:p5:avg})
EDGE: bpP:p4:collar | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:lo-act@L246-L246 | cited at this line (step; \ref{bpP:p4:collar})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p5:lo-disc
KIND: step
TITLE: Discs
STATEMENT_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:lo-disc@L247-L247
PROOF_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:lo-disc@L247-L247
CONTRACT_ID: stepP:p5:lo-disc
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p5:rK
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p5:rK | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:lo-disc@L247-L247 | cited at this line (step; \ref{bpP:p5:rK})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpP:p5:kset
KIND: definition
TITLE: Torus family and Kolmogorov set
STATEMENT_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:kset@L250-L254
PROOF_SOURCE: -
CONTRACT_ID: bpP:p5:kset
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p3:two-scale-kam, bpP:p1:period-convert
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p3:two-scale-kam | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:kset@L251-L251 | cited at this line (statement; \ref{bpP:p3:two-scale-kam})
EDGE: bpP:p1:period-convert | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:kset@L253-L253 | cited at this line (statement; \ref{bpP:p1:period-convert})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpP:p5:torus-conv
KIND: proposition
TITLE: Each torus is a frozen cylinder torus with frozen frequencies
STATEMENT_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:torus-conv@L256-L258
PROOF_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:torus-conv@L259-L264
CONTRACT_ID: bpP:p5:torus-conv
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p5:tc-chart, stepP:p5:tc-LT, stepP:p5:tc-pipe, stepP:p5:tc-freq
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p5:tc-chart | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:torus-conv@L260-L260 | proof step of this result
EDGE: stepP:p5:tc-LT | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:torus-conv@L261-L261 | proof step of this result
EDGE: stepP:p5:tc-pipe | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:torus-conv@L262-L262 | proof step of this result
EDGE: stepP:p5:tc-freq | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:torus-conv@L263-L263 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p5:tc-chart
KIND: step
TITLE: Chart data
STATEMENT_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:tc-chart@L260-L260
PROOF_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:tc-chart@L260-L260
CONTRACT_ID: stepP:p5:tc-chart
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p5:phi-chart, bpP:p1:cyl-pipeline
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p5:phi-chart | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:tc-chart@L260-L260 | cited at this line (step; \ref{bpP:p5:phi-chart})
EDGE: bpP:p1:cyl-pipeline | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:tc-chart@L260-L260 | cited at this line (step; \ref{bpP:p1:cyl-pipeline})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p5:tc-LT
KIND: step
TITLE: $\operatorname{LT}(G_3,O,w,K_3)$, $K_3=\pi\circ\varphi_\omega$
STATEMENT_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:tc-LT@L261-L261
PROOF_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:tc-LT@L261-L261
CONTRACT_ID: stepP:p5:tc-LT
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p3:two-scale-kam, bpP:p5:location, stepP:p5:lo-range, bpP:p1:chart-field, bpP:p1:order
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p3:two-scale-kam | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:tc-LT@L261-L261 | cited at this line (step; \ref{bpP:p3:two-scale-kam})
EDGE: bpP:p5:location | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:tc-LT@L261-L261 | cited at this line (step; \ref{bpP:p5:location})
EDGE: stepP:p5:lo-range | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:tc-LT@L261-L261 | cited at this line (step; \ref{stepP:p5:lo-range})
EDGE: bpP:p1:chart-field | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:tc-LT@L261-L261 | cited at this line (step; \ref{bpP:p1:chart-field})
EDGE: bpP:p1:order | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:tc-LT@L261-L261 | cited at this line (step; \ref{bpP:p1:order})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p5:tc-pipe
KIND: step
TITLE: Pipeline
STATEMENT_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:tc-pipe@L262-L262
PROOF_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:tc-pipe@L262-L262
CONTRACT_ID: stepP:p5:tc-pipe
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p1:cyl-pipeline, bpP:p5:location
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p1:cyl-pipeline | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:tc-pipe@L262-L262 | cited at this line (step; \ref{bpP:p1:cyl-pipeline})
EDGE: bpP:p5:location | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:tc-pipe@L262-L262 | cited at this line (step; \ref{bpP:p5:location})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p5:tc-freq
KIND: step
TITLE: Frequencies
STATEMENT_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:tc-freq@L263-L263
PROOF_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:tc-freq@L263-L263
CONTRACT_ID: stepP:p5:tc-freq
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
EDGE: bpP:p1:dio-sources | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:tc-freq@L263-L263 | cited at this line (step; \ref{bpP:p1:dio-sources})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpP:p5:cell-transfer
KIND: lemma
TITLE: Borelness, whole tori, cell measure
STATEMENT_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:cell-transfer@L266-L268
PROOF_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:cell-transfer@L269-L275
CONTRACT_ID: bpP:p5:cell-transfer
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p5:ct-cell, stepP:p5:ct-dec, stepP:p5:ct-disj, stepP:p5:ct-count, stepP:p5:ct-liou
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p5:ct-cell | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:cell-transfer@L270-L270 | proof step of this result
EDGE: stepP:p5:ct-dec | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:cell-transfer@L271-L271 | proof step of this result
EDGE: stepP:p5:ct-disj | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:cell-transfer@L272-L272 | proof step of this result
EDGE: stepP:p5:ct-count | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:cell-transfer@L273-L273 | proof step of this result
EDGE: stepP:p5:ct-liou | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:cell-transfer@L274-L274 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p5:ct-cell
KIND: step
TITLE: $\sigma$-compactness
STATEMENT_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:ct-cell@L270-L270
PROOF_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:ct-cell@L270-L270
CONTRACT_ID: stepP:p5:ct-cell
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p3:limit-actions, bpP:p3:limit-phi
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p3:limit-actions | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:ct-cell@L270-L270 | cited at this line (step; \ref{bpP:p3:limit-actions})
EDGE: bpP:p3:limit-phi | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:ct-cell@L270-L270 | cited at this line (step; \ref{bpP:p3:limit-phi})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p5:ct-dec
KIND: step
TITLE: Decomposition
STATEMENT_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:ct-dec@L271-L271
PROOF_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:ct-dec@L271-L271
CONTRACT_ID: stepP:p5:ct-dec
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p5:location, bpP:p5:phi-chart
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p5:location | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:ct-dec@L271-L271 | cited at this line (step; \ref{bpP:p5:location})
EDGE: bpP:p5:phi-chart | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:ct-dec@L271-L271 | cited at this line (step; \ref{bpP:p5:phi-chart})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p5:ct-disj
KIND: step
TITLE: Disjointness and injectivity
STATEMENT_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:ct-disj@L272-L272
PROOF_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:ct-disj@L272-L272
CONTRACT_ID: stepP:p5:ct-disj
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p5:phi-chart
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p5:phi-chart | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:ct-disj@L272-L272 | cited at this line (step; \ref{bpP:p5:phi-chart})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p5:ct-count
KIND: step
TITLE: Counting
STATEMENT_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:ct-count@L273-L273
PROOF_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:ct-count@L273-L273
CONTRACT_ID: stepP:p5:ct-count
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

NODE: stepP:p5:ct-liou
KIND: step
TITLE: Liouville
STATEMENT_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:ct-liou@L274-L274
PROOF_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:ct-liou@L274-L274
CONTRACT_ID: stepP:p5:ct-liou
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p5:ct-disj, bpP:p1:liouville, bpP:p1:period-convert
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p5:ct-disj | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:ct-liou@L274-L274 | cited at this line (step; \ref{stepP:p5:ct-disj})
EDGE: bpP:p1:liouville | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:ct-liou@L274-L274 | cited at this line (step; \ref{bpP:p1:liouville})
EDGE: bpP:p1:period-convert | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:ct-liou@L274-L274 | cited at this line (step; \ref{bpP:p1:period-convert})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpP:p5:budget
KIND: lemma
TITLE: Budget on the action side
STATEMENT_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:budget@L280-L283
PROOF_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:budget@L284-L288
CONTRACT_ID: bpP:p5:budget
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p5:bu-read, stepP:p5:bu-dio, stepP:p5:bu-collar
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p5:bu-read | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:budget@L285-L285 | proof step of this result
EDGE: stepP:p5:bu-dio | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:budget@L286-L286 | proof step of this result
EDGE: stepP:p5:bu-collar | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:budget@L287-L287 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p5:bu-read
KIND: step
TITLE: Reading (3.1)
STATEMENT_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:bu-read@L285-L285
PROOF_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:bu-read@L285-L285
CONTRACT_ID: stepP:p5:bu-read
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p3:two-scale-kam
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p3:two-scale-kam | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:bu-read@L285-L285 | cited at this line (step; \ref{bpP:p3:two-scale-kam})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p5:bu-dio
KIND: step
TITLE: Diophantine part
STATEMENT_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:bu-dio@L286-L286
PROOF_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:bu-dio@L286-L286
CONTRACT_ID: stepP:p5:bu-dio
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p4:freq, bpP:p4:data, bpP:p5:param-facts, bpP:p5:freq-data, bpP:p4:two-scale-diophantine-measure
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p4:freq | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:bu-dio@L286-L286 | cited at this line (step; \ref{bpP:p4:freq})
EDGE: bpP:p4:data | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:bu-dio@L286-L286 | cited at this line (step; \ref{bpP:p4:data})
EDGE: bpP:p5:param-facts | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:bu-dio@L286-L286 | cited at this line (step; \ref{bpP:p5:param-facts})
EDGE: bpP:p5:freq-data | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:bu-dio@L286-L286 | cited at this line (step; \ref{bpP:p5:freq-data})
EDGE: bpP:p4:two-scale-diophantine-measure | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:bu-dio@L286-L286 | cited at this line (step; \ref{bpP:p4:two-scale-diophantine-measure})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p5:bu-collar
KIND: step
TITLE: Collar part
STATEMENT_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:bu-collar@L287-L287
PROOF_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:bu-collar@L287-L287
CONTRACT_ID: stepP:p5:bu-collar
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p4:domain-collar, stepP:p4:dc-prod, bpP:p4:collar, bpP:p5:dio-one, stepP:p4:dc-diff, bpP:p5:rK
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p4:domain-collar | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:bu-collar@L287-L287 | cited at this line (step; \ref{bpP:p4:domain-collar})
EDGE: stepP:p4:dc-prod | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:bu-collar@L287-L287 | cited at this line (step; \ref{stepP:p4:dc-prod})
EDGE: bpP:p4:collar | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:bu-collar@L287-L287 | cited at this line (step; \ref{bpP:p4:collar})
EDGE: bpP:p5:dio-one | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:bu-collar@L287-L287 | cited at this line (step; \ref{bpP:p5:dio-one})
EDGE: stepP:p4:dc-diff | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:bu-collar@L287-L287 | cited at this line (step; \ref{stepP:p4:dc-diff})
EDGE: bpP:p5:rK | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:bu-collar@L287-L287 | cited at this line (step; \ref{bpP:p5:rK})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpP:p5:lower
KIND: proposition
TITLE: Lower bound for $\meas(S\cap\mathcal F)$
STATEMENT_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:lower@L290-L293
PROOF_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:lower@L294-L298
CONTRACT_ID: bpP:p5:lower
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p5:lo-setup, stepP:p5:lo-bad, stepP:p5:lo-lost
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p5:lo-setup | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:lower@L295-L295 | proof step of this result
EDGE: stepP:p5:lo-bad | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:lower@L296-L296 | proof step of this result
EDGE: stepP:p5:lo-lost | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:lower@L297-L297 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p5:lo-setup
KIND: step
TITLE: Set up
STATEMENT_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:lo-setup@L295-L295
PROOF_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:lo-setup@L295-L295
CONTRACT_ID: stepP:p5:lo-setup
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p5:cell-transfer, bpP:p5:location, bpP:p4:disc-measure
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p5:cell-transfer | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:lo-setup@L295-L295 | cited at this line (step; \ref{bpP:p5:cell-transfer})
EDGE: bpP:p5:location | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:lo-setup@L295-L295 | cited at this line (step; \ref{bpP:p5:location})
EDGE: bpP:p4:disc-measure | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:lo-setup@L295-L295 | cited at this line (step; \ref{bpP:p4:disc-measure})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p5:lo-bad
KIND: step
TITLE: Bad actions
STATEMENT_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:lo-bad@L296-L296
PROOF_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:lo-bad@L296-L296
CONTRACT_ID: stepP:p5:lo-bad
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p4:collar, bpP:p5:dio-one
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p4:collar | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:lo-bad@L296-L296 | cited at this line (step; \ref{bpP:p4:collar})
EDGE: bpP:p5:dio-one | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:lo-bad@L296-L296 | cited at this line (step; \ref{bpP:p5:dio-one})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p5:lo-lost
KIND: step
TITLE: Lost tori
STATEMENT_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:lo-lost@L297-L297
PROOF_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:lo-lost@L297-L297
CONTRACT_ID: stepP:p5:lo-lost
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p5:budget
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p5:budget | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:lo-lost@L297-L297 | cited at this line (step; \ref{bpP:p5:budget})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpP:p5:strictness
KIND: proposition
TITLE: Deleting a small positive-measure family of tori
STATEMENT_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:strictness@L302-L307
PROOF_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:strictness@L308-L313
CONTRACT_ID: bpP:p5:strictness
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p5:st-add, stepP:p5:st-null, stepP:p5:st-ivt, stepP:p5:st-conc
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p5:st-add | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:strictness@L309-L309 | proof step of this result
EDGE: stepP:p5:st-null | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:strictness@L310-L310 | proof step of this result
EDGE: stepP:p5:st-ivt | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:strictness@L311-L311 | proof step of this result
EDGE: stepP:p5:st-conc | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:strictness@L312-L312 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p5:st-add
KIND: step
TITLE: Additivity
STATEMENT_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:st-add@L309-L309
PROOF_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:st-add@L309-L309
CONTRACT_ID: stepP:p5:st-add
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p5:cell-transfer, bpP:p3:two-scale-kam
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p5:cell-transfer | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:st-add@L309-L309 | cited at this line (step; \ref{bpP:p5:cell-transfer})
EDGE: bpP:p3:two-scale-kam | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:st-add@L309-L309 | cited at this line (step; \ref{bpP:p3:two-scale-kam})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p5:st-null
KIND: step
TITLE: Slices are null
STATEMENT_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:st-null@L310-L310
PROOF_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:st-null@L310-L310
CONTRACT_ID: stepP:p5:st-null
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p3:limit-actions, bpP:p3:limit-phi, bpP:p1:torus-union
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p3:limit-actions | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:st-null@L310-L310 | cited at this line (step; \ref{bpP:p3:limit-actions})
EDGE: bpP:p3:limit-phi | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:st-null@L310-L310 | cited at this line (step; \ref{bpP:p3:limit-phi})
EDGE: bpP:p1:torus-union | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:st-null@L310-L310 | cited at this line (step; \ref{bpP:p1:torus-union})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p5:st-ivt
KIND: step
TITLE: Intermediate value
STATEMENT_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:st-ivt@L311-L311
PROOF_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:st-ivt@L311-L311
CONTRACT_ID: stepP:p5:st-ivt
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p5:lower, stepP:p5:st-null
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p5:lower | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:st-ivt@L311-L311 | cited at this line (step; \ref{bpP:p5:lower})
EDGE: stepP:p5:st-null | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:st-ivt@L311-L311 | cited at this line (step; \ref{stepP:p5:st-null})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p5:st-conc
KIND: step
TITLE: Conclusion
STATEMENT_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:st-conc@L312-L312
PROOF_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:st-conc@L312-L312
CONTRACT_ID: stepP:p5:st-conc
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

NODE: bpP:p5:main
KIND: theorem
TITLE: P-G; \Pref{bpP:p0:pg}
STATEMENT_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:main@L317-L320
PROOF_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:main@L321-L326
CONTRACT_ID: bpP:p5:main
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p5:mn-const, stepP:p5:mn-given, stepP:p5:mn-set, stepP:p5:mn-meas, bpP:p5:rstar
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p5:mn-const | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:main@L322-L322 | proof step of this result
EDGE: stepP:p5:mn-given | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:main@L323-L323 | proof step of this result
EDGE: stepP:p5:mn-set | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:main@L324-L324 | proof step of this result
EDGE: stepP:p5:mn-meas | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:main@L325-L325 | proof step of this result
EDGE: bpP:p5:rstar | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:main@L319-L319 | cited at this line (statement; \ref{bpP:p5:rstar})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: [pre-extract: dropped reference to bpP:p0:pg, which part p5 proves or sets up]

NODE: stepP:p5:mn-const
KIND: step
TITLE: Constants first
STATEMENT_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:mn-const@L322-L322
PROOF_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:mn-const@L322-L322
CONTRACT_ID: stepP:p5:mn-const
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p5:order, bpP:p5:ext, bpP:p5:freq-inj, bpP:p5:uniform-remainder, bpP:p5:kam-cond, bpP:p5:budget, bpP:p5:lower, bpP:p5:rstar
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p5:order | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:mn-const@L322-L322 | cited at this line (step; \ref{bpP:p5:order})
EDGE: bpP:p5:ext | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:mn-const@L322-L322 | cited at this line (step; \ref{bpP:p5:ext})
EDGE: bpP:p5:freq-inj | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:mn-const@L322-L322 | cited at this line (step; \ref{bpP:p5:freq-inj})
EDGE: bpP:p5:uniform-remainder | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:mn-const@L322-L322 | cited at this line (step; \ref{bpP:p5:uniform-remainder})
EDGE: bpP:p5:kam-cond | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:mn-const@L322-L322 | cited at this line (step; \ref{bpP:p5:kam-cond})
EDGE: bpP:p5:budget | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:mn-const@L322-L322 | cited at this line (step; \ref{bpP:p5:budget})
EDGE: bpP:p5:lower | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:mn-const@L322-L322 | cited at this line (step; \ref{bpP:p5:lower})
EDGE: bpP:p5:rstar | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:mn-const@L322-L322 | cited at this line (step; \ref{bpP:p5:rstar})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p5:mn-given
KIND: step
TITLE: Given $(r,\mu)$
STATEMENT_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:mn-given@L323-L323
PROOF_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:mn-given@L323-L323
CONTRACT_ID: stepP:p5:mn-given
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p5:params, bpP:p5:param-facts, bpP:p5:avg, bpP:p5:kam-hyp, bpP:p5:kam-cond, bpP:p3:two-scale-kam, bpP:p5:freq-inj
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p5:params | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:mn-given@L323-L323 | cited at this line (step; \ref{bpP:p5:params})
EDGE: bpP:p5:param-facts | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:mn-given@L323-L323 | cited at this line (step; \ref{bpP:p5:param-facts})
EDGE: bpP:p5:avg | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:mn-given@L323-L323 | cited at this line (step; \ref{bpP:p5:avg})
EDGE: bpP:p5:kam-hyp | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:mn-given@L323-L323 | cited at this line (step; \ref{bpP:p5:kam-hyp})
EDGE: bpP:p5:kam-cond | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:mn-given@L323-L323 | cited at this line (step; \ref{bpP:p5:kam-cond})
EDGE: bpP:p3:two-scale-kam | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:mn-given@L323-L323 | cited at this line (step; \ref{bpP:p3:two-scale-kam})
EDGE: bpP:p5:freq-inj | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:mn-given@L323-L323 | cited at this line (step; \ref{bpP:p5:freq-inj})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p5:mn-set
KIND: step
TITLE: The set
STATEMENT_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:mn-set@L324-L324
PROOF_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:mn-set@L324-L324
CONTRACT_ID: stepP:p5:mn-set
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p5:strictness, bpP:p5:cell-transfer, bpP:p5:torus-conv, bpP:p0:cylkol#IsCylinderKolmogorovSet
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p5:strictness | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:mn-set@L324-L324 | cited at this line (step; \ref{bpP:p5:strictness})
EDGE: bpP:p5:cell-transfer | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:mn-set@L324-L324 | cited at this line (step; \ref{bpP:p5:cell-transfer})
EDGE: bpP:p5:torus-conv | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:mn-set@L324-L324 | cited at this line (step; \ref{bpP:p5:torus-conv})
EDGE: bpP:p0:cylkol#IsCylinderKolmogorovSet | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:mn-set@L324-L324 | cited at this line (step; \ref{bpP:p0:cylkol})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p5:mn-meas
KIND: step
TITLE: Measures
STATEMENT_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:mn-meas@L325-L325
PROOF_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:mn-meas@L325-L325
CONTRACT_ID: stepP:p5:mn-meas
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p5:strictness, bpP:p0:totality
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p5:strictness | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:mn-meas@L325-L325 | cited at this line (step; \ref{bpP:p5:strictness})
EDGE: bpP:p0:totality | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:mn-meas@L325-L325 | cited at this line (step; \ref{bpP:p0:totality})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpP:p5:quant
KIND: claim
TITLE: Quantifier audit
STATEMENT_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:quant@L328-L330
PROOF_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:quant@L328-L330
CONTRACT_ID: bpP:p5:quant
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p5:order
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p5:order | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:quant@L329-L329 | cited at this line (statement; \ref{bpP:p5:order})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: remark: its justification is inline (confirm, or exclude if not a mathematical claim)
