NODE: bpI:p8:x-topo
KIND: external
TITLE: Topology of $\R^k$
STATEMENT_SOURCE: blueprint-I/parts/p8-r3bp.tex#bpI:p8:x-topo@L28-L31
PROOF_SOURCE: -
CONTRACT_ID: bpI:p8:x-topo
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

NODE: bpI:p8:x-norm
KIND: external
TITLE: Triangle inequality
STATEMENT_SOURCE: blueprint-I/parts/p8-r3bp.tex#bpI:p8:x-norm@L32-L32
PROOF_SOURCE: -
CONTRACT_ID: bpI:p8:x-norm
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

NODE: bpI:p8:x-cont
KIND: external
TITLE: Monotone functions
STATEMENT_SOURCE: blueprint-I/parts/p8-r3bp.tex#bpI:p8:x-cont@L33-L33
PROOF_SOURCE: -
CONTRACT_ID: bpI:p8:x-cont
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

NODE: bpI:p8:A
KIND: definition
TITLE: The action region of $\mathcal N$
STATEMENT_SOURCE: blueprint-I/parts/p8-r3bp.tex#bpI:p8:A@L49-L59
PROOF_SOURCE: -
CONTRACT_ID: bpI:p8:A
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p8:x-topo
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p8:x-topo | blueprint-I/parts/p8-r3bp.tex#bpI:p8:A@L57-L57 | cited at this line (statement; \ref{bpI:p8:x-topo})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpI:p8:topology
KIND: proposition
TITLE: Topology of $\mathcal N$
STATEMENT_SOURCE: blueprint-I/parts/p8-r3bp.tex#bpI:p8:topology@L61-L72
PROOF_SOURCE: blueprint-I/parts/p8-r3bp.tex#bpI:p8:topology@L73-L81
CONTRACT_ID: bpI:p8:topology
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepI:p8:tp-A, stepI:p8:tp-chart, stepI:p8:tp-open, stepI:p8:tp-nonempty, bpI:p0:nearcircular#NearCircular
ROUTES: -
ROUTE_FOR: -
EDGE: stepI:p8:tp-A | blueprint-I/parts/p8-r3bp.tex#bpI:p8:topology@L74-L74 | proof step of this result
EDGE: stepI:p8:tp-chart | blueprint-I/parts/p8-r3bp.tex#bpI:p8:topology@L76-L76 | proof step of this result
EDGE: stepI:p8:tp-open | blueprint-I/parts/p8-r3bp.tex#bpI:p8:topology@L78-L78 | proof step of this result
EDGE: stepI:p8:tp-nonempty | blueprint-I/parts/p8-r3bp.tex#bpI:p8:topology@L80-L80 | proof step of this result
EDGE: bpI:p0:nearcircular#NearCircular | blueprint-I/parts/p8-r3bp.tex#bpI:p8:topology@L61-L61 | this result carries \frozen{KAM.Iso.NearCircular} (a statement about it)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: [pre-extract: dropped reference to bpI:p0:r3bp, which part p8 proves or sets up]

NODE: stepI:p8:tp-A
KIND: step
TITLE: Elements as inequalities on $G/L$
STATEMENT_SOURCE: blueprint-I/parts/p8-r3bp.tex#stepI:p8:tp-A@L74-L74
PROOF_SOURCE: blueprint-I/parts/p8-r3bp.tex#stepI:p8:tp-A@L74-L74
CONTRACT_ID: stepI:p8:tp-A
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p8:A
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p8:A | blueprint-I/parts/p8-r3bp.tex#stepI:p8:tp-A@L74-L74 | cited at this line (step; \ref{bpI:p8:A})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p8:tp-chart
KIND: step
TITLE: Chart description
STATEMENT_SOURCE: blueprint-I/parts/p8-r3bp.tex#stepI:p8:tp-chart@L76-L76
PROOF_SOURCE: blueprint-I/parts/p8-r3bp.tex#stepI:p8:tp-chart@L76-L76
CONTRACT_ID: stepI:p8:tp-chart
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p7:near-circular
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p7:near-circular | blueprint-I/parts/p8-r3bp.tex#stepI:p8:tp-chart@L76-L76 | cited at this line (step; \ref{bpI:p7:near-circular})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p8:tp-open
KIND: step
TITLE: Openness
STATEMENT_SOURCE: blueprint-I/parts/p8-r3bp.tex#stepI:p8:tp-open@L78-L78
PROOF_SOURCE: blueprint-I/parts/p8-r3bp.tex#stepI:p8:tp-open@L78-L78
CONTRACT_ID: stepI:p8:tp-open
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p7:near-circular, bpI:p7:elements, bpI:p8:x-topo
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p7:near-circular | blueprint-I/parts/p8-r3bp.tex#stepI:p8:tp-open@L78-L78 | cited at this line (step; \ref{bpI:p7:near-circular})
EDGE: bpI:p7:elements | blueprint-I/parts/p8-r3bp.tex#stepI:p8:tp-open@L78-L78 | cited at this line (step; \ref{bpI:p7:elements})
EDGE: bpI:p8:x-topo | blueprint-I/parts/p8-r3bp.tex#stepI:p8:tp-open@L78-L78 | cited at this line (step; \ref{bpI:p8:x-topo})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p8:tp-nonempty
KIND: step
TITLE: Nonemptiness
STATEMENT_SOURCE: blueprint-I/parts/p8-r3bp.tex#stepI:p8:tp-nonempty@L80-L80
PROOF_SOURCE: blueprint-I/parts/p8-r3bp.tex#stepI:p8:tp-nonempty@L80-L80
CONTRACT_ID: stepI:p8:tp-nonempty
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p7:kepler-eq, bpI:p7:orbit-maps
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p7:kepler-eq | blueprint-I/parts/p8-r3bp.tex#stepI:p8:tp-nonempty@L80-L80 | cited at this line (step; \ref{bpI:p7:kepler-eq})
EDGE: bpI:p7:orbit-maps | blueprint-I/parts/p8-r3bp.tex#stepI:p8:tp-nonempty@L80-L80 | cited at this line (step; \ref{bpI:p7:orbit-maps})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpI:p8:collision-exclusion
KIND: lemma
TITLE: Collision exclusion from a compact safe set
STATEMENT_SOURCE: blueprint-I/parts/p8-r3bp.tex#bpI:p8:collision-exclusion@L86-L98
PROOF_SOURCE: blueprint-I/parts/p8-r3bp.tex#bpI:p8:collision-exclusion@L99-L103
CONTRACT_ID: bpI:p8:collision-exclusion
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepI:p8:ce-quant, stepI:p8:ce-compact
ROUTES: -
ROUTE_FOR: -
EDGE: stepI:p8:ce-quant | blueprint-I/parts/p8-r3bp.tex#bpI:p8:collision-exclusion@L100-L100 | proof step of this result
EDGE: stepI:p8:ce-compact | blueprint-I/parts/p8-r3bp.tex#bpI:p8:collision-exclusion@L102-L102 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p8:ce-quant
KIND: step
TITLE: Quantitative form
STATEMENT_SOURCE: blueprint-I/parts/p8-r3bp.tex#stepI:p8:ce-quant@L100-L100
PROOF_SOURCE: blueprint-I/parts/p8-r3bp.tex#stepI:p8:ce-quant@L100-L100
CONTRACT_ID: stepI:p8:ce-quant
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p8:x-norm
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p8:x-norm | blueprint-I/parts/p8-r3bp.tex#stepI:p8:ce-quant@L100-L100 | cited at this line (step; \ref{bpI:p8:x-norm})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p8:ce-compact
KIND: step
TITLE: Compact sets
STATEMENT_SOURCE: blueprint-I/parts/p8-r3bp.tex#stepI:p8:ce-compact@L102-L102
PROOF_SOURCE: blueprint-I/parts/p8-r3bp.tex#stepI:p8:ce-compact@L102-L102
CONTRACT_ID: stepI:p8:ce-compact
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p8:x-topo
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p8:x-topo | blueprint-I/parts/p8-r3bp.tex#stepI:p8:ce-compact@L102-L102 | cited at this line (step; \ref{bpI:p8:x-topo})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpI:p8:shell-exclusion
KIND: corollary
TITLE: The restricted problem: shell around the primary
STATEMENT_SOURCE: blueprint-I/parts/p8-r3bp.tex#bpI:p8:shell-exclusion@L105-L112
PROOF_SOURCE: blueprint-I/parts/p8-r3bp.tex#bpI:p8:shell-exclusion@L113-L115
CONTRACT_ID: bpI:p8:shell-exclusion
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepI:p8:se-inst, bpI:p0:primaries#radiusSq, bpI:p0:primaries#radius, bpI:p0:primaries#primary1, bpI:p0:primaries#primary2, bpI:p0:primaries#CollisionFree
ROUTES: -
ROUTE_FOR: -
EDGE: stepI:p8:se-inst | blueprint-I/parts/p8-r3bp.tex#bpI:p8:shell-exclusion@L114-L114 | proof step of this result
EDGE: bpI:p0:primaries#radiusSq | blueprint-I/parts/p8-r3bp.tex#bpI:p8:shell-exclusion@L110-L110 | cited at this line (statement; \ref{bpI:p0:primaries})
EDGE: bpI:p0:primaries#radius | blueprint-I/parts/p8-r3bp.tex#bpI:p8:shell-exclusion@L110-L110 | cited at this line (statement; \ref{bpI:p0:primaries})
EDGE: bpI:p0:primaries#primary1 | blueprint-I/parts/p8-r3bp.tex#bpI:p8:shell-exclusion@L110-L110 | cited at this line (statement; \ref{bpI:p0:primaries})
EDGE: bpI:p0:primaries#primary2 | blueprint-I/parts/p8-r3bp.tex#bpI:p8:shell-exclusion@L110-L110 | cited at this line (statement; \ref{bpI:p0:primaries})
EDGE: bpI:p0:primaries#CollisionFree | blueprint-I/parts/p8-r3bp.tex#bpI:p8:shell-exclusion@L110-L110 | cited at this line (statement; \ref{bpI:p0:primaries})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p8:se-inst
KIND: step
TITLE: Instance of the lemma
STATEMENT_SOURCE: blueprint-I/parts/p8-r3bp.tex#stepI:p8:se-inst@L114-L114
PROOF_SOURCE: blueprint-I/parts/p8-r3bp.tex#stepI:p8:se-inst@L114-L114
CONTRACT_ID: stepI:p8:se-inst
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p8:x-norm, bpI:p8:collision-exclusion
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p8:x-norm | blueprint-I/parts/p8-r3bp.tex#stepI:p8:se-inst@L114-L114 | cited at this line (step; \ref{bpI:p8:x-norm})
EDGE: bpI:p8:collision-exclusion | blueprint-I/parts/p8-r3bp.tex#stepI:p8:se-inst@L114-L114 | cited at this line (step; \ref{bpI:p8:collision-exclusion})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpI:p8:min-distance
KIND: corollary
TITLE: Minimal separation of a compact set of $N$-body configurations
STATEMENT_SOURCE: blueprint-I/parts/p8-r3bp.tex#bpI:p8:min-distance@L117-L120
PROOF_SOURCE: blueprint-I/parts/p8-r3bp.tex#bpI:p8:min-distance@L121-L123
CONTRACT_ID: bpI:p8:min-distance
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepI:p8:md-min
ROUTES: -
ROUTE_FOR: -
EDGE: stepI:p8:md-min | blueprint-I/parts/p8-r3bp.tex#bpI:p8:min-distance@L122-L122 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p8:md-min
KIND: step
TITLE: Minimum on a compact set
STATEMENT_SOURCE: blueprint-I/parts/p8-r3bp.tex#stepI:p8:md-min@L122-L122
PROOF_SOURCE: blueprint-I/parts/p8-r3bp.tex#stepI:p8:md-min@L122-L122
CONTRACT_ID: stepI:p8:md-min
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p8:x-topo
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p8:x-topo | blueprint-I/parts/p8-r3bp.tex#stepI:p8:md-min@L122-L122 | cited at this line (step; \ref{bpI:p8:x-topo})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpI:p8:rotating
KIND: claim
TITLE: Moving frames
STATEMENT_SOURCE: blueprint-I/parts/p8-r3bp.tex#bpI:p8:rotating@L125-L127
PROOF_SOURCE: blueprint-I/parts/p8-r3bp.tex#bpI:p8:rotating@L125-L127
CONTRACT_ID: bpI:p8:rotating
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p7:newton
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p7:newton | blueprint-I/parts/p8-r3bp.tex#bpI:p8:rotating@L126-L126 | cited at this line (statement; \ref{bpI:p7:newton})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: remark: its justification is inline (confirm, or exclude if not a mathematical claim)

NODE: bpI:p8:safe
KIND: definition
TITLE: Enlargement and safe region
STATEMENT_SOURCE: blueprint-I/parts/p8-r3bp.tex#bpI:p8:safe@L134-L147
PROOF_SOURCE: -
CONTRACT_ID: bpI:p8:safe
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p8:A
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p8:A | blueprint-I/parts/p8-r3bp.tex#bpI:p8:safe@L142-L142 | cited at this line (statement; \ref{bpI:p8:A})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpI:p8:safe-region
KIND: lemma
TITLE: Safe region
STATEMENT_SOURCE: blueprint-I/parts/p8-r3bp.tex#bpI:p8:safe-region@L149-L159
PROOF_SOURCE: blueprint-I/parts/p8-r3bp.tex#bpI:p8:safe-region@L160-L168
CONTRACT_ID: bpI:p8:safe-region
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepI:p8:sr-incl, stepI:p8:sr-elements, stepI:p8:sr-radii, stepI:p8:sr-B
ROUTES: -
ROUTE_FOR: -
EDGE: stepI:p8:sr-incl | blueprint-I/parts/p8-r3bp.tex#bpI:p8:safe-region@L161-L161 | proof step of this result
EDGE: stepI:p8:sr-elements | blueprint-I/parts/p8-r3bp.tex#bpI:p8:safe-region@L163-L163 | proof step of this result
EDGE: stepI:p8:sr-radii | blueprint-I/parts/p8-r3bp.tex#bpI:p8:safe-region@L165-L165 | proof step of this result
EDGE: stepI:p8:sr-B | blueprint-I/parts/p8-r3bp.tex#bpI:p8:safe-region@L167-L167 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p8:sr-incl
KIND: step
TITLE: Inclusions
STATEMENT_SOURCE: blueprint-I/parts/p8-r3bp.tex#stepI:p8:sr-incl@L161-L161
PROOF_SOURCE: blueprint-I/parts/p8-r3bp.tex#stepI:p8:sr-incl@L161-L161
CONTRACT_ID: stepI:p8:sr-incl
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p8:A, bpI:p8:topology, bpI:p8:x-cont
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p8:A | blueprint-I/parts/p8-r3bp.tex#stepI:p8:sr-incl@L161-L161 | cited at this line (step; \ref{bpI:p8:A})
EDGE: bpI:p8:topology | blueprint-I/parts/p8-r3bp.tex#stepI:p8:sr-incl@L161-L161 | cited at this line (step; \ref{bpI:p8:topology})
EDGE: bpI:p8:x-cont | blueprint-I/parts/p8-r3bp.tex#stepI:p8:sr-incl@L161-L161 | cited at this line (step; \ref{bpI:p8:x-cont})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p8:sr-elements
KIND: step
TITLE: Elements on $\mathcal K$
STATEMENT_SOURCE: blueprint-I/parts/p8-r3bp.tex#stepI:p8:sr-elements@L163-L163
PROOF_SOURCE: blueprint-I/parts/p8-r3bp.tex#stepI:p8:sr-elements@L163-L163
CONTRACT_ID: stepI:p8:sr-elements
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

NODE: stepI:p8:sr-radii
KIND: step
TITLE: The radii
STATEMENT_SOURCE: blueprint-I/parts/p8-r3bp.tex#stepI:p8:sr-radii@L165-L165
PROOF_SOURCE: blueprint-I/parts/p8-r3bp.tex#stepI:p8:sr-radii@L165-L165
CONTRACT_ID: stepI:p8:sr-radii
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p8:x-topo
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p8:x-topo | blueprint-I/parts/p8-r3bp.tex#stepI:p8:sr-radii@L165-L165 | cited at this line (step; \ref{bpI:p8:x-topo})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p8:sr-B
KIND: step
TITLE: The action domain
STATEMENT_SOURCE: blueprint-I/parts/p8-r3bp.tex#stepI:p8:sr-B@L167-L167
PROOF_SOURCE: blueprint-I/parts/p8-r3bp.tex#stepI:p8:sr-B@L167-L167
CONTRACT_ID: stepI:p8:sr-B
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p8:x-topo
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p8:x-topo | blueprint-I/parts/p8-r3bp.tex#stepI:p8:sr-B@L167-L167 | cited at this line (step; \ref{bpI:p8:x-topo})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpI:p8:head-data
KIND: proposition
TITLE: The period-one data of I-HEAD for the restricted problem
STATEMENT_SOURCE: blueprint-I/parts/p8-r3bp.tex#bpI:p8:head-data@L170-L178
PROOF_SOURCE: blueprint-I/parts/p8-r3bp.tex#bpI:p8:head-data@L179-L185
CONTRACT_ID: bpI:p8:head-data
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepI:p8:hd-h, stepI:p8:hd-f, stepI:p8:hd-sets, bpI:p8:safe, bpI:p7:exact-ham, bpI:p8:safe-region, bpI:p7:period-one, bpI:p0:head, bpI:p7:nondeg
ROUTES: -
ROUTE_FOR: -
EDGE: stepI:p8:hd-h | blueprint-I/parts/p8-r3bp.tex#bpI:p8:head-data@L180-L180 | proof step of this result
EDGE: stepI:p8:hd-f | blueprint-I/parts/p8-r3bp.tex#bpI:p8:head-data@L182-L182 | proof step of this result
EDGE: stepI:p8:hd-sets | blueprint-I/parts/p8-r3bp.tex#bpI:p8:head-data@L184-L184 | proof step of this result
EDGE: bpI:p8:safe | blueprint-I/parts/p8-r3bp.tex#bpI:p8:head-data@L171-L171 | cited at this line (statement; \ref{bpI:p8:safe})
EDGE: bpI:p7:exact-ham | blueprint-I/parts/p8-r3bp.tex#bpI:p8:head-data@L171-L171 | cited at this line (statement; \ref{bpI:p7:exact-ham})
EDGE: bpI:p8:safe-region | blueprint-I/parts/p8-r3bp.tex#bpI:p8:head-data@L171-L171 | cited at this line (statement; \ref{bpI:p8:safe-region})
EDGE: bpI:p7:period-one | blueprint-I/parts/p8-r3bp.tex#bpI:p8:head-data@L171-L171 | cited at this line (statement; \ref{bpI:p7:period-one})
EDGE: bpI:p0:head | blueprint-I/parts/p8-r3bp.tex#bpI:p8:head-data@L173-L173 | cited at this line (statement; \ref{bpI:p0:head})
EDGE: bpI:p7:nondeg | blueprint-I/parts/p8-r3bp.tex#bpI:p8:head-data@L177-L177 | cited at this line (statement; \ref{bpI:p7:nondeg}; in \source: provenance unless consumed)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p8:hd-h
KIND: step
TITLE: The Hamiltonian
STATEMENT_SOURCE: blueprint-I/parts/p8-r3bp.tex#stepI:p8:hd-h@L180-L180
PROOF_SOURCE: blueprint-I/parts/p8-r3bp.tex#stepI:p8:hd-h@L180-L180
CONTRACT_ID: stepI:p8:hd-h
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p7:period-one, bpI:p7:nondeg
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p7:period-one | blueprint-I/parts/p8-r3bp.tex#stepI:p8:hd-h@L180-L180 | cited at this line (step; \ref{bpI:p7:period-one})
EDGE: bpI:p7:nondeg | blueprint-I/parts/p8-r3bp.tex#stepI:p8:hd-h@L180-L180 | cited at this line (step; \ref{bpI:p7:nondeg})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p8:hd-f
KIND: step
TITLE: The perturbation
STATEMENT_SOURCE: blueprint-I/parts/p8-r3bp.tex#stepI:p8:hd-f@L182-L182
PROOF_SOURCE: blueprint-I/parts/p8-r3bp.tex#stepI:p8:hd-f@L182-L182
CONTRACT_ID: stepI:p8:hd-f
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p7:period-one
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p7:period-one | blueprint-I/parts/p8-r3bp.tex#stepI:p8:hd-f@L182-L182 | cited at this line (step; \ref{bpI:p7:period-one})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p8:hd-sets
KIND: step
TITLE: Sets
STATEMENT_SOURCE: blueprint-I/parts/p8-r3bp.tex#stepI:p8:hd-sets@L184-L184
PROOF_SOURCE: blueprint-I/parts/p8-r3bp.tex#stepI:p8:hd-sets@L184-L184
CONTRACT_ID: stepI:p8:hd-sets
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p8:safe-region, bpI:p7:period-one
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p8:safe-region | blueprint-I/parts/p8-r3bp.tex#stepI:p8:hd-sets@L184-L184 | cited at this line (step; \ref{bpI:p8:safe-region})
EDGE: bpI:p7:period-one | blueprint-I/parts/p8-r3bp.tex#stepI:p8:hd-sets@L184-L184 | cited at this line (step; \ref{bpI:p7:period-one})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpI:p8:constants
KIND: definition
TITLE: Choice of $\mu_0$, $d$, $R$
STATEMENT_SOURCE: blueprint-I/parts/p8-r3bp.tex#bpI:p8:constants@L190-L202
PROOF_SOURCE: -
CONTRACT_ID: bpI:p8:constants
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p8:safe, bpI:p8:safe-region, bpI:p8:head-data, bpI:p7:shift, bpI:p0:head, bpI:p0:head-remarks
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p8:safe | blueprint-I/parts/p8-r3bp.tex#bpI:p8:constants@L193-L193 | cited at this line (statement; \ref{bpI:p8:safe})
EDGE: bpI:p8:safe-region | blueprint-I/parts/p8-r3bp.tex#bpI:p8:constants@L193-L193 | cited at this line (statement; \ref{bpI:p8:safe-region})
EDGE: bpI:p8:head-data | blueprint-I/parts/p8-r3bp.tex#bpI:p8:constants@L194-L194 | cited at this line (statement; \ref{bpI:p8:head-data})
EDGE: bpI:p7:shift | blueprint-I/parts/p8-r3bp.tex#bpI:p8:constants@L194-L194 | cited at this line (statement; \ref{bpI:p7:shift})
EDGE: bpI:p0:head | blueprint-I/parts/p8-r3bp.tex#bpI:p8:constants@L195-L195 | cited at this line (statement; \ref{bpI:p0:head})
EDGE: bpI:p0:head-remarks | blueprint-I/parts/p8-r3bp.tex#bpI:p8:constants@L195-L195 | cited at this line (statement; \ref{bpI:p0:head-remarks})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpI:p8:bounds
KIND: lemma
TITLE: Bounds along a Delaunay orbit
STATEMENT_SOURCE: blueprint-I/parts/p8-r3bp.tex#bpI:p8:bounds@L204-L207
PROOF_SOURCE: blueprint-I/parts/p8-r3bp.tex#bpI:p8:bounds@L208-L212
CONTRACT_ID: bpI:p8:bounds
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepI:p8:bd-r, stepI:p8:bd-p
ROUTES: -
ROUTE_FOR: -
EDGE: stepI:p8:bd-r | blueprint-I/parts/p8-r3bp.tex#bpI:p8:bounds@L209-L209 | proof step of this result
EDGE: stepI:p8:bd-p | blueprint-I/parts/p8-r3bp.tex#bpI:p8:bounds@L211-L211 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p8:bd-r
KIND: step
TITLE: Radius
STATEMENT_SOURCE: blueprint-I/parts/p8-r3bp.tex#stepI:p8:bd-r@L209-L209
PROOF_SOURCE: blueprint-I/parts/p8-r3bp.tex#stepI:p8:bd-r@L209-L209
CONTRACT_ID: stepI:p8:bd-r
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p7:orbit-identities
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p7:orbit-identities | blueprint-I/parts/p8-r3bp.tex#stepI:p8:bd-r@L209-L209 | cited at this line (step; \ref{bpI:p7:orbit-identities})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p8:bd-p
KIND: step
TITLE: Momentum
STATEMENT_SOURCE: blueprint-I/parts/p8-r3bp.tex#stepI:p8:bd-p@L211-L211
PROOF_SOURCE: blueprint-I/parts/p8-r3bp.tex#stepI:p8:bd-p@L211-L211
CONTRACT_ID: stepI:p8:bd-p
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p7:orbit-identities
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p7:orbit-identities | blueprint-I/parts/p8-r3bp.tex#stepI:p8:bd-p@L211-L211 | cited at this line (step; \ref{bpI:p7:orbit-identities})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p8:pf-coord
KIND: step
TITLE: Delaunay coordinates of $z_0$
STATEMENT_SOURCE: blueprint-I/parts/p8-r3bp.tex#stepI:p8:pf-coord@L217-L217
PROOF_SOURCE: blueprint-I/parts/p8-r3bp.tex#stepI:p8:pf-coord@L217-L217
CONTRACT_ID: stepI:p8:pf-coord
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p8:topology
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p8:topology | blueprint-I/parts/p8-r3bp.tex#stepI:p8:pf-coord@L217-L217 | cited at this line (step; \ref{bpI:p8:topology})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p8:pf-small
KIND: step
TITLE: Smallness for I-HEAD
STATEMENT_SOURCE: blueprint-I/parts/p8-r3bp.tex#stepI:p8:pf-small@L219-L219
PROOF_SOURCE: blueprint-I/parts/p8-r3bp.tex#stepI:p8:pf-small@L219-L219
CONTRACT_ID: stepI:p8:pf-small
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p8:head-data, bpI:p0:head
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p8:head-data | blueprint-I/parts/p8-r3bp.tex#stepI:p8:pf-small@L219-L219 | cited at this line (step; \ref{bpI:p8:head-data})
EDGE: bpI:p0:head | blueprint-I/parts/p8-r3bp.tex#stepI:p8:pf-small@L219-L219 | cited at this line (step; \ref{bpI:p0:head})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p8:pf-head
KIND: step
TITLE: Apply I-HEAD
STATEMENT_SOURCE: blueprint-I/parts/p8-r3bp.tex#stepI:p8:pf-head@L221-L221
PROOF_SOURCE: blueprint-I/parts/p8-r3bp.tex#stepI:p8:pf-head@L221-L221
CONTRACT_ID: stepI:p8:pf-head
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p0:head
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p0:head | blueprint-I/parts/p8-r3bp.tex#stepI:p8:pf-head@L221-L221 | cited at this line (step; \ref{bpI:p0:head})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p8:pf-sol
KIND: step
TITLE: The physical solution
STATEMENT_SOURCE: blueprint-I/parts/p8-r3bp.tex#stepI:p8:pf-sol@L223-L223
PROOF_SOURCE: blueprint-I/parts/p8-r3bp.tex#stepI:p8:pf-sol@L223-L223
CONTRACT_ID: stepI:p8:pf-sol
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepI:p8:pf-coord, bpI:p7:transfer
ROUTES: -
ROUTE_FOR: -
EDGE: stepI:p8:pf-coord | blueprint-I/parts/p8-r3bp.tex#stepI:p8:pf-sol@L223-L223 | cited at this line (step; \ref{stepI:p8:pf-coord})
EDGE: bpI:p7:transfer | blueprint-I/parts/p8-r3bp.tex#stepI:p8:pf-sol@L223-L223 | cited at this line (step; \ref{bpI:p7:transfer})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p8:pf-bounds
KIND: step
TITLE: Radius bounds
STATEMENT_SOURCE: blueprint-I/parts/p8-r3bp.tex#stepI:p8:pf-bounds@L225-L225
PROOF_SOURCE: blueprint-I/parts/p8-r3bp.tex#stepI:p8:pf-bounds@L225-L225
CONTRACT_ID: stepI:p8:pf-bounds
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p8:bounds
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p8:bounds | blueprint-I/parts/p8-r3bp.tex#stepI:p8:pf-bounds@L225-L225 | cited at this line (step; \ref{bpI:p8:bounds})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p8:pf-dist
KIND: step
TITLE: Distance to the primaries
STATEMENT_SOURCE: blueprint-I/parts/p8-r3bp.tex#stepI:p8:pf-dist@L227-L227
PROOF_SOURCE: blueprint-I/parts/p8-r3bp.tex#stepI:p8:pf-dist@L227-L227
CONTRACT_ID: stepI:p8:pf-dist
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p8:shell-exclusion, bpI:p8:collision-exclusion
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p8:shell-exclusion | blueprint-I/parts/p8-r3bp.tex#stepI:p8:pf-dist@L227-L227 | cited at this line (step; \ref{bpI:p8:shell-exclusion})
EDGE: bpI:p8:collision-exclusion | blueprint-I/parts/p8-r3bp.tex#stepI:p8:pf-dist@L227-L227 | cited at this line (step; \ref{bpI:p8:collision-exclusion})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p8:pf-uniq
KIND: step
TITLE: Uniqueness
STATEMENT_SOURCE: blueprint-I/parts/p8-r3bp.tex#stepI:p8:pf-uniq@L229-L231
PROOF_SOURCE: blueprint-I/parts/p8-r3bp.tex#stepI:p8:pf-uniq@L229-L231
CONTRACT_ID: stepI:p8:pf-uniq
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p7:ham-eq, stepI:p8:pf-sol, N:bpN:p3:newton-reduction, N:bpN:p3:gen-sol, N:bpN:p3:gen-uniqueness
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p7:ham-eq | blueprint-I/parts/p8-r3bp.tex#stepI:p8:pf-uniq@L229-L229 | cited at this line (step; \ref{bpI:p7:ham-eq})
EDGE: stepI:p8:pf-sol | blueprint-I/parts/p8-r3bp.tex#stepI:p8:pf-uniq@L229-L229 | cited at this line (step; \ref{stepI:p8:pf-sol})
EDGE: N:bpN:p3:newton-reduction | blueprint-I/parts/p8-r3bp.tex#stepI:p8:pf-uniq@L229-L229 | cited at this line (step; \Nref{bpN:p3:newton-reduction})
EDGE: N:bpN:p3:gen-sol | blueprint-I/parts/p8-r3bp.tex#stepI:p8:pf-uniq@L229-L229 | cited at this line (step; \Nref{bpN:p3:gen-sol})
EDGE: N:bpN:p3:gen-uniqueness | blueprint-I/parts/p8-r3bp.tex#stepI:p8:pf-uniq@L229-L229 | cited at this line (step; \Nref{bpN:p3:gen-uniqueness})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpI:p8:dependence
KIND: claim
TITLE: Dependence of the constants and where each hypothesis enters
STATEMENT_SOURCE: blueprint-I/parts/p8-r3bp.tex#bpI:p8:dependence@L234-L242
PROOF_SOURCE: blueprint-I/parts/p8-r3bp.tex#bpI:p8:dependence@L234-L242
CONTRACT_ID: bpI:p8:dependence
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p8:safe-region, bpI:p7:exact-ham
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p8:safe-region | blueprint-I/parts/p8-r3bp.tex#bpI:p8:dependence@L237-L237 | cited at this line (statement; \ref{bpI:p8:safe-region})
EDGE: bpI:p7:exact-ham | blueprint-I/parts/p8-r3bp.tex#bpI:p8:dependence@L237-L237 | cited at this line (statement; \ref{bpI:p7:exact-ham})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: remark: its justification is inline (confirm, or exclude if not a mathematical claim)

NODE: bpI:p8:totality
KIND: claim
TITLE: Lean totality and doubts
STATEMENT_SOURCE: blueprint-I/parts/p8-r3bp.tex#bpI:p8:totality@L244-L249
PROOF_SOURCE: blueprint-I/parts/p8-r3bp.tex#bpI:p8:totality@L244-L249
CONTRACT_ID: bpI:p8:totality
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p8:shell-exclusion, bpI:p7:shift, bpI:p7:transfer, bpI:p7:totality, N:bpN:p3:newton-reduction, N:bpN:p3:gen-uniqueness, bpI:p7:errata
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p8:shell-exclusion | blueprint-I/parts/p8-r3bp.tex#bpI:p8:totality@L245-L245 | cited at this line (statement; \ref{bpI:p8:shell-exclusion})
EDGE: bpI:p7:shift | blueprint-I/parts/p8-r3bp.tex#bpI:p8:totality@L245-L245 | cited at this line (statement; \ref{bpI:p7:shift})
EDGE: bpI:p7:transfer | blueprint-I/parts/p8-r3bp.tex#bpI:p8:totality@L246-L246 | cited at this line (statement; \ref{bpI:p7:transfer})
EDGE: bpI:p7:totality | blueprint-I/parts/p8-r3bp.tex#bpI:p8:totality@L246-L246 | cited at this line (statement; \ref{bpI:p7:totality})
EDGE: N:bpN:p3:newton-reduction | blueprint-I/parts/p8-r3bp.tex#bpI:p8:totality@L247-L247 | cited at this line (statement; \Nref{bpN:p3:newton-reduction})
EDGE: N:bpN:p3:gen-uniqueness | blueprint-I/parts/p8-r3bp.tex#bpI:p8:totality@L247-L247 | cited at this line (statement; \Nref{bpN:p3:gen-uniqueness})
EDGE: bpI:p7:errata | blueprint-I/parts/p8-r3bp.tex#bpI:p8:totality@L248-L248 | cited at this line (statement; \ref{bpI:p7:errata})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: remark: its justification is inline (confirm, or exclude if not a mathematical claim)
