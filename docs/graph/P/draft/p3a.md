NODE: bpP:p3:rem-uhat
KIND: claim
TITLE: Misprint in the definition of $\hat U$
STATEMENT_SOURCE: blueprint-P/parts/p3a-two-scale-iteration.tex#bpP:p3:rem-uhat@L36-L40
PROOF_SOURCE: blueprint-P/parts/p3a-two-scale-iteration.tex#bpP:p3:rem-uhat@L36-L40
CONTRACT_ID: bpP:p3:rem-uhat
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

NODE: bpP:p3:constants
KIND: definition
TITLE: Constants of the two-scale theorem
STATEMENT_SOURCE: blueprint-P/parts/p3a-two-scale-iteration.tex#bpP:p3:constants@L42-L55
PROOF_SOURCE: -
CONTRACT_ID: bpP:p3:constants
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

NODE: bpP:p3:two-scale-kam
KIND: proposition
TITLE: Two-scale KAM theorem
STATEMENT_SOURCE: blueprint-P/parts/p3a-two-scale-iteration.tex#bpP:p3:two-scale-kam@L59-L87
PROOF_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#bpP:p3:two-scale-kam@L193-L204
CONTRACT_ID: bpP:p3:two-scale-kam
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p3:pf-constr, stepP:p3:pf-ad, stepP:p3:pf-bc, stepP:p3:pf-inj, stepP:p3:pf-meas, bpP:p3:rem-norm, bpP:p3:constants, bpP:p3:avg
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p3:pf-constr | blueprint-P/parts/p3b-two-scale-limit.tex#bpP:p3:two-scale-kam@L194-L194 | proof step of this result
EDGE: stepP:p3:pf-ad | blueprint-P/parts/p3b-two-scale-limit.tex#bpP:p3:two-scale-kam@L196-L196 | proof step of this result
EDGE: stepP:p3:pf-bc | blueprint-P/parts/p3b-two-scale-limit.tex#bpP:p3:two-scale-kam@L198-L198 | proof step of this result
EDGE: stepP:p3:pf-inj | blueprint-P/parts/p3b-two-scale-limit.tex#bpP:p3:two-scale-kam@L200-L200 | proof step of this result
EDGE: stepP:p3:pf-meas | blueprint-P/parts/p3b-two-scale-limit.tex#bpP:p3:two-scale-kam@L202-L202 | proof step of this result
EDGE: bpP:p3:rem-norm | blueprint-P/parts/p3a-two-scale-iteration.tex#bpP:p3:two-scale-kam@L65-L65 | cited at this line (statement; \ref{bpP:p3:rem-norm})
EDGE: bpP:p3:constants | blueprint-P/parts/p3a-two-scale-iteration.tex#bpP:p3:two-scale-kam@L66-L66 | cited at this line (statement; \ref{bpP:p3:constants})
EDGE: bpP:p3:avg | blueprint-P/parts/p3a-two-scale-iteration.tex#bpP:p3:two-scale-kam@L86-L86 | cited at this line (statement; \ref{bpP:p3:avg})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: [pre-extract: dropped reference to bpP:p0:pg, which part p3a proves or sets up]

NODE: bpP:p3:rem-norm
KIND: claim
TITLE: Normalizations $\hat M\le M$, $\bar M_i\le\bar M$
STATEMENT_SOURCE: blueprint-P/parts/p3a-two-scale-iteration.tex#bpP:p3:rem-norm@L89-L93
PROOF_SOURCE: blueprint-P/parts/p3a-two-scale-iteration.tex#bpP:p3:rem-norm@L89-L93
CONTRACT_ID: bpP:p3:rem-norm
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

NODE: bpP:p3:period-dictionary
KIND: lemma
TITLE: Period dictionary
STATEMENT_SOURCE: blueprint-P/parts/p3a-two-scale-iteration.tex#bpP:p3:period-dictionary@L95-L100
PROOF_SOURCE: blueprint-P/parts/p3a-two-scale-iteration.tex#bpP:p3:period-dictionary@L101-L109
CONTRACT_ID: bpP:p3:period-dictionary
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p3:pd-subst, stepP:p3:pd-invar, stepP:p3:pd-dyn, bpP:p1:period-convert, bpP:p3:constants, bpP:p3:two-scale-kam, bpP:p1:cyl-pipeline
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p3:pd-subst | blueprint-P/parts/p3a-two-scale-iteration.tex#bpP:p3:period-dictionary@L102-L102 | proof step of this result
EDGE: stepP:p3:pd-invar | blueprint-P/parts/p3a-two-scale-iteration.tex#bpP:p3:period-dictionary@L104-L104 | proof step of this result
EDGE: stepP:p3:pd-dyn | blueprint-P/parts/p3a-two-scale-iteration.tex#bpP:p3:period-dictionary@L107-L107 | proof step of this result
EDGE: bpP:p1:period-convert | blueprint-P/parts/p3a-two-scale-iteration.tex#bpP:p3:period-dictionary@L96-L96 | cited at this line (statement; \ref{bpP:p1:period-convert})
EDGE: bpP:p3:constants | blueprint-P/parts/p3a-two-scale-iteration.tex#bpP:p3:period-dictionary@L96-L96 | cited at this line (statement; \ref{bpP:p3:constants})
EDGE: bpP:p3:two-scale-kam | blueprint-P/parts/p3a-two-scale-iteration.tex#bpP:p3:period-dictionary@L98-L98 | cited at this line (statement; \ref{bpP:p3:two-scale-kam})
EDGE: bpP:p1:cyl-pipeline | blueprint-P/parts/p3a-two-scale-iteration.tex#bpP:p3:period-dictionary@L99-L99 | cited at this line (statement; \ref{bpP:p1:cyl-pipeline})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p3:pd-subst
KIND: step
TITLE: Substitution
STATEMENT_SOURCE: blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:pd-subst@L102-L103
PROOF_SOURCE: blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:pd-subst@L102-L103
CONTRACT_ID: stepP:p3:pd-subst
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

NODE: stepP:p3:pd-invar
KIND: step
TITLE: Invariants
STATEMENT_SOURCE: blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:pd-invar@L104-L106
PROOF_SOURCE: blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:pd-invar@L104-L106
CONTRACT_ID: stepP:p3:pd-invar
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

NODE: stepP:p3:pd-dyn
KIND: step
TITLE: Dynamics and tori
STATEMENT_SOURCE: blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:pd-dyn@L107-L108
PROOF_SOURCE: blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:pd-dyn@L107-L108
CONTRACT_ID: stepP:p3:pd-dyn
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p1:period-convert
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p1:period-convert | blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:pd-dyn@L108-L108 | cited at this line (step; \ref{bpP:p1:period-convert})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpP:p3:ext-ift
KIND: external
TITLE: Holomorphic inverse function theorem
STATEMENT_SOURCE: blueprint-P/parts/p3a-two-scale-iteration.tex#bpP:p3:ext-ift@L114-L114
PROOF_SOURCE: -
CONTRACT_ID: bpP:p3:ext-ift
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

NODE: bpP:p3:ext-fourier
KIND: external
TITLE: Fourier coefficients of periodic continuous functions
STATEMENT_SOURCE: blueprint-P/parts/p3a-two-scale-iteration.tex#bpP:p3:ext-fourier@L115-L115
PROOF_SOURCE: -
CONTRACT_ID: bpP:p3:ext-fourier
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
NOTE: external item that cites \ref{bpP:p3:fourier-compact}, \Kref{bp:p1:ext-fourier}: if it only restates the cited external, exclude it as an alias and point its consumers at the cited node (SPEC)

NODE: bpP:p3:ext-weierstrass
KIND: external
TITLE: Weierstrass
STATEMENT_SOURCE: blueprint-P/parts/p3a-two-scale-iteration.tex#bpP:p3:ext-weierstrass@L116-L116
PROOF_SOURCE: -
CONTRACT_ID: bpP:p3:ext-weierstrass
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
NOTE: external item that cites \Kref{bp:p1:uniform-limits}: if it only restates the cited external, exclude it as an alias and point its consumers at the cited node (SPEC)

NODE: bpP:p3:ext-banach
KIND: external
TITLE: bpP:p3:ext-banach
STATEMENT_SOURCE: blueprint-P/parts/p3a-two-scale-iteration.tex#bpP:p3:ext-banach@L117-L117
PROOF_SOURCE: -
CONTRACT_ID: bpP:p3:ext-banach
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
NOTE: external item that cites \Kref{bp:p1:ext-banach}, \Kref{bp:p1:ext-mvt}, \Kref{bp:p1:cauchy-open}: if it only restates the cited external, exclude it as an alias and point its consumers at the cited node (SPEC)

NODE: bpP:p3:ext-neumann
KIND: external
TITLE: bpP:p3:ext-neumann
STATEMENT_SOURCE: blueprint-P/parts/p3a-two-scale-iteration.tex#bpP:p3:ext-neumann@L118-L118
PROOF_SOURCE: -
CONTRACT_ID: bpP:p3:ext-neumann
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

NODE: bpP:p3:ext-lip
KIND: external
TITLE: bpP:p3:ext-lip
STATEMENT_SOURCE: blueprint-P/parts/p3a-two-scale-iteration.tex#bpP:p3:ext-lip@L119-L119
PROOF_SOURCE: -
CONTRACT_ID: bpP:p3:ext-lip
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
NOTE: external item that cites \Kref{bp:p1:lip-image}, \Kref{bp:p1:mcshane}: if it only restates the cited external, exclude it as an alias and point its consumers at the cited node (SPEC)

NODE: bpP:p3:ball
KIND: lemma
TITLE: Balls in the image of a diffeomorphism
STATEMENT_SOURCE: blueprint-P/parts/p3a-two-scale-iteration.tex#bpP:p3:ball@L124-L126
PROOF_SOURCE: blueprint-P/parts/p3a-two-scale-iteration.tex#bpP:p3:ball@L127-L136
CONTRACT_ID: bpP:p3:ball
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p3:ball-inv, stepP:p3:ball-lift, stepP:p3:ball-closed, stepP:p3:ball-lip
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p3:ball-inv | blueprint-P/parts/p3a-two-scale-iteration.tex#bpP:p3:ball@L128-L128 | proof step of this result
EDGE: stepP:p3:ball-lift | blueprint-P/parts/p3a-two-scale-iteration.tex#bpP:p3:ball@L130-L130 | proof step of this result
EDGE: stepP:p3:ball-closed | blueprint-P/parts/p3a-two-scale-iteration.tex#bpP:p3:ball@L132-L132 | proof step of this result
EDGE: stepP:p3:ball-lip | blueprint-P/parts/p3a-two-scale-iteration.tex#bpP:p3:ball@L134-L134 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p3:ball-inv
KIND: step
TITLE: Inverse
STATEMENT_SOURCE: blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:ball-inv@L128-L129
PROOF_SOURCE: blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:ball-inv@L128-L129
CONTRACT_ID: stepP:p3:ball-inv
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p3:ext-ift
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p3:ext-ift | blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:ball-inv@L129-L129 | cited at this line (step; \ref{bpP:p3:ext-ift})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p3:ball-lift
KIND: step
TITLE: Path lifting
STATEMENT_SOURCE: blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:ball-lift@L130-L131
PROOF_SOURCE: blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:ball-lift@L130-L131
CONTRACT_ID: stepP:p3:ball-lift
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p3:ext-banach
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p3:ext-banach | blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:ball-lift@L131-L131 | cited at this line (step; \ref{bpP:p3:ext-banach})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p3:ball-closed
KIND: step
TITLE: Closedness
STATEMENT_SOURCE: blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:ball-closed@L132-L133
PROOF_SOURCE: blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:ball-closed@L132-L133
CONTRACT_ID: stepP:p3:ball-closed
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

NODE: stepP:p3:ball-lip
KIND: step
TITLE: Lipschitz bound
STATEMENT_SOURCE: blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:ball-lip@L134-L135
PROOF_SOURCE: blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:ball-lip@L134-L135
CONTRACT_ID: stepP:p3:ball-lip
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

NODE: bpP:p3:lip-sup
KIND: lemma
TITLE: Lipschitz constants from sup bounds, non-convex sets
STATEMENT_SOURCE: blueprint-P/parts/p3a-two-scale-iteration.tex#bpP:p3:lip-sup@L138-L140
PROOF_SOURCE: blueprint-P/parts/p3a-two-scale-iteration.tex#bpP:p3:lip-sup@L141-L146
CONTRACT_ID: bpP:p3:lip-sup
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p3:ls-close, stepP:p3:ls-far
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p3:ls-close | blueprint-P/parts/p3a-two-scale-iteration.tex#bpP:p3:lip-sup@L142-L142 | proof step of this result
EDGE: stepP:p3:ls-far | blueprint-P/parts/p3a-two-scale-iteration.tex#bpP:p3:lip-sup@L144-L144 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p3:ls-close
KIND: step
TITLE: Close pairs
STATEMENT_SOURCE: blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:ls-close@L142-L143
PROOF_SOURCE: blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:ls-close@L142-L143
CONTRACT_ID: stepP:p3:ls-close
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: K:bp:p1:cauchy-open
ROUTES: -
ROUTE_FOR: -
EDGE: K:bp:p1:cauchy-open | blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:ls-close@L143-L143 | cited at this line (step; \Kref{bp:p1:cauchy-open})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p3:ls-far
KIND: step
TITLE: Distant pairs
STATEMENT_SOURCE: blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:ls-far@L144-L145
PROOF_SOURCE: blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:ls-far@L144-L145
CONTRACT_ID: stepP:p3:ls-far
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

NODE: bpP:p3:avg
KIND: lemma
TITLE: One averaging step with two scales
STATEMENT_SOURCE: blueprint-P/parts/p3a-two-scale-iteration.tex#bpP:p3:avg@L150-L163
PROOF_SOURCE: blueprint-P/parts/p3a-two-scale-iteration.tex#bpP:p3:avg@L164-L166
CONTRACT_ID: bpP:p3:avg
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p2:avg, bpP:p3:step, bpP:p2:nfb, bpP:p2:split, bpP:p2:diff
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p2:avg | blueprint-P/parts/p3a-two-scale-iteration.tex#bpP:p3:avg@L165-L165 | cited at this line (proof; \ref{bpP:p2:avg})
EDGE: bpP:p3:step | blueprint-P/parts/p3a-two-scale-iteration.tex#bpP:p3:avg@L165-L165 | cited at this line (proof; \ref{bpP:p3:step})
EDGE: bpP:p2:nfb | blueprint-P/parts/p3a-two-scale-iteration.tex#bpP:p3:avg@L165-L165 | cited at this line (proof; \ref{bpP:p2:nfb})
EDGE: bpP:p2:split | blueprint-P/parts/p3a-two-scale-iteration.tex#bpP:p3:avg@L165-L165 | cited at this line (proof; \ref{bpP:p2:split})
EDGE: bpP:p2:diff | blueprint-P/parts/p3a-two-scale-iteration.tex#bpP:p3:avg@L165-L165 | cited at this line (proof; \ref{bpP:p2:diff})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpP:p3:step
KIND: lemma
TITLE: One KAM step
STATEMENT_SOURCE: blueprint-P/parts/p3a-two-scale-iteration.tex#bpP:p3:step@L170-L190
PROOF_SOURCE: blueprint-P/parts/p3a-two-scale-iteration.tex#bpP:p3:step@L192-L226
CONTRACT_ID: bpP:p3:step
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p3:st-nonres, stepP:p3:st-small, stepP:p3:st-avg, stepP:p3:st-disp, stepP:p3:st-dg, stepP:p3:st-U, stepP:p3:st-inj, stepP:p3:st-ihat, stepP:p3:st-const, stepP:p3:st-quad, bpP:p3:two-scale-kam, bpP:p3:constants
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p3:st-nonres | blueprint-P/parts/p3a-two-scale-iteration.tex#bpP:p3:step@L193-L193 | proof step of this result
EDGE: stepP:p3:st-small | blueprint-P/parts/p3a-two-scale-iteration.tex#bpP:p3:step@L198-L198 | proof step of this result
EDGE: stepP:p3:st-avg | blueprint-P/parts/p3a-two-scale-iteration.tex#bpP:p3:step@L200-L200 | proof step of this result
EDGE: stepP:p3:st-disp | blueprint-P/parts/p3a-two-scale-iteration.tex#bpP:p3:step@L203-L203 | proof step of this result
EDGE: stepP:p3:st-dg | blueprint-P/parts/p3a-two-scale-iteration.tex#bpP:p3:step@L206-L206 | proof step of this result
EDGE: stepP:p3:st-U | blueprint-P/parts/p3a-two-scale-iteration.tex#bpP:p3:step@L210-L210 | proof step of this result
EDGE: stepP:p3:st-inj | blueprint-P/parts/p3a-two-scale-iteration.tex#bpP:p3:step@L213-L213 | proof step of this result
EDGE: stepP:p3:st-ihat | blueprint-P/parts/p3a-two-scale-iteration.tex#bpP:p3:step@L216-L216 | proof step of this result
EDGE: stepP:p3:st-const | blueprint-P/parts/p3a-two-scale-iteration.tex#bpP:p3:step@L220-L220 | proof step of this result
EDGE: stepP:p3:st-quad | blueprint-P/parts/p3a-two-scale-iteration.tex#bpP:p3:step@L224-L224 | proof step of this result
EDGE: bpP:p3:two-scale-kam | blueprint-P/parts/p3a-two-scale-iteration.tex#bpP:p3:step@L171-L171 | cited at this line (statement; \ref{bpP:p3:two-scale-kam})
EDGE: bpP:p3:constants | blueprint-P/parts/p3a-two-scale-iteration.tex#bpP:p3:step@L171-L171 | cited at this line (statement; \ref{bpP:p3:constants})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p3:st-nonres
KIND: step
TITLE: Non-resonance on $D_{\hat\rho}$
STATEMENT_SOURCE: blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:st-nonres@L193-L197
PROOF_SOURCE: blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:st-nonres@L193-L197
CONTRACT_ID: stepP:p3:st-nonres
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
EDGE: K:bp:p1:ext-mvt | blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:st-nonres@L194-L194 | cited at this line (step; \Kref{bp:p1:ext-mvt})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p3:st-small
KIND: step
TITLE: Smallness and $Ks\ge6$
STATEMENT_SOURCE: blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:st-small@L198-L199
PROOF_SOURCE: blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:st-small@L198-L199
CONTRACT_ID: stepP:p3:st-small
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p3:avg
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p3:avg | blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:st-small@L199-L199 | cited at this line (step; \ref{bpP:p3:avg})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p3:st-avg
KIND: step
TITLE: Averaging
STATEMENT_SOURCE: blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:st-avg@L200-L202
PROOF_SOURCE: blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:st-avg@L200-L202
CONTRACT_ID: stepP:p3:st-avg
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p3:avg
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p3:avg | blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:st-avg@L201-L201 | cited at this line (step; \ref{bpP:p3:avg})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p3:st-disp
KIND: step
TITLE: Displacements
STATEMENT_SOURCE: blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:st-disp@L203-L205
PROOF_SOURCE: blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:st-disp@L203-L205
CONTRACT_ID: stepP:p3:st-disp
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p3:avg
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p3:avg | blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:st-disp@L204-L204 | cited at this line (step; \ref{bpP:p3:avg})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p3:st-dg
KIND: step
TITLE: Derivatives of $g$
STATEMENT_SOURCE: blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:st-dg@L206-L209
PROOF_SOURCE: blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:st-dg@L206-L209
CONTRACT_ID: stepP:p3:st-dg
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: K:bp:p1:cauchy-open
ROUTES: -
ROUTE_FOR: -
EDGE: K:bp:p1:cauchy-open | blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:st-dg@L207-L207 | cited at this line (step; \Kref{bp:p1:cauchy-open})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p3:st-U
KIND: step
TITLE: Bounds on $U_+$
STATEMENT_SOURCE: blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:st-U@L210-L212
PROOF_SOURCE: blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:st-U@L210-L212
CONTRACT_ID: stepP:p3:st-U
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p3:ext-neumann
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p3:ext-neumann | blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:st-U@L212-L212 | cited at this line (step; \ref{bpP:p3:ext-neumann})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p3:st-inj
KIND: step
TITLE: Injectivity of $\omega_+$ on $D_{\hat\rho/8}$
STATEMENT_SOURCE: blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:st-inj@L213-L215
PROOF_SOURCE: blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:st-inj@L213-L215
CONTRACT_ID: stepP:p3:st-inj
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p3:ball, bpP:p3:ext-ift
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p3:ball | blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:st-inj@L214-L214 | cited at this line (step; \ref{bpP:p3:ball})
EDGE: bpP:p3:ext-ift | blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:st-inj@L215-L215 | cited at this line (step; \ref{bpP:p3:ext-ift})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p3:st-ihat
KIND: step
TITLE: The map $\hat\imath_+$ and $D_+$
STATEMENT_SOURCE: blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:st-ihat@L216-L219
PROOF_SOURCE: blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:st-ihat@L216-L219
CONTRACT_ID: stepP:p3:st-ihat
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p3:ball, bpP:p3:lip-sup
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p3:ball | blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:st-ihat@L217-L217 | cited at this line (step; \ref{bpP:p3:ball})
EDGE: bpP:p3:lip-sup | blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:st-ihat@L219-L219 | cited at this line (step; \ref{bpP:p3:lip-sup})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p3:st-const
KIND: step
TITLE: The new constants
STATEMENT_SOURCE: blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:st-const@L220-L223
PROOF_SOURCE: blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:st-const@L220-L223
CONTRACT_ID: stepP:p3:st-const
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

NODE: stepP:p3:st-quad
KIND: step
TITLE: The quadratic bound
STATEMENT_SOURCE: blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:st-quad@L224-L225
PROOF_SOURCE: blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:st-quad@L224-L225
CONTRACT_ID: stepP:p3:st-quad
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

NODE: bpP:p3:rem-step
KIND: claim
TITLE: Differences from CP10 in the step
STATEMENT_SOURCE: blueprint-P/parts/p3a-two-scale-iteration.tex#bpP:p3:rem-step@L228-L232
PROOF_SOURCE: blueprint-P/parts/p3a-two-scale-iteration.tex#bpP:p3:rem-step@L228-L232
CONTRACT_ID: bpP:p3:rem-step
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p3:ball, bpP:p3:lip-sup
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p3:ball | blueprint-P/parts/p3a-two-scale-iteration.tex#bpP:p3:rem-step@L230-L230 | cited at this line (statement; \ref{bpP:p3:ball})
EDGE: bpP:p3:lip-sup | blueprint-P/parts/p3a-two-scale-iteration.tex#bpP:p3:rem-step@L230-L230 | cited at this line (statement; \ref{bpP:p3:lip-sup})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: remark: its justification is inline (confirm, or exclude if not a mathematical claim)

NODE: bpP:p3:seq
KIND: definition
TITLE: The sequences
STATEMENT_SOURCE: blueprint-P/parts/p3a-two-scale-iteration.tex#bpP:p3:seq@L236-L240
PROOF_SOURCE: -
CONTRACT_ID: bpP:p3:seq
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p3:two-scale-kam, bpP:p3:constants, bpP:p3:step
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p3:two-scale-kam | blueprint-P/parts/p3a-two-scale-iteration.tex#bpP:p3:seq@L237-L237 | cited at this line (statement; \ref{bpP:p3:two-scale-kam})
EDGE: bpP:p3:constants | blueprint-P/parts/p3a-two-scale-iteration.tex#bpP:p3:seq@L239-L239 | cited at this line (statement; \ref{bpP:p3:constants})
EDGE: bpP:p3:step | blueprint-P/parts/p3a-two-scale-iteration.tex#bpP:p3:seq@L239-L239 | cited at this line (statement; \ref{bpP:p3:step})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpP:p3:iterative
KIND: lemma
TITLE: Iterative lemma
STATEMENT_SOURCE: blueprint-P/parts/p3a-two-scale-iteration.tex#bpP:p3:iterative@L242-L253
PROOF_SOURCE: blueprint-P/parts/p3a-two-scale-iteration.tex#bpP:p3:iterative@L254-L265
CONTRACT_ID: bpP:p3:iterative
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p3:it-ind, stepP:p3:it-base, stepP:p3:it-step, stepP:p3:it-comp, stepP:p3:it-rates, bpP:p3:two-scale-kam
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p3:it-ind | blueprint-P/parts/p3a-two-scale-iteration.tex#bpP:p3:iterative@L255-L255 | proof step of this result
EDGE: stepP:p3:it-base | blueprint-P/parts/p3a-two-scale-iteration.tex#bpP:p3:iterative@L257-L257 | proof step of this result
EDGE: stepP:p3:it-step | blueprint-P/parts/p3a-two-scale-iteration.tex#bpP:p3:iterative@L259-L259 | proof step of this result
EDGE: stepP:p3:it-comp | blueprint-P/parts/p3a-two-scale-iteration.tex#bpP:p3:iterative@L261-L261 | proof step of this result
EDGE: stepP:p3:it-rates | blueprint-P/parts/p3a-two-scale-iteration.tex#bpP:p3:iterative@L263-L263 | proof step of this result
EDGE: bpP:p3:two-scale-kam | blueprint-P/parts/p3a-two-scale-iteration.tex#bpP:p3:iterative@L243-L243 | cited at this line (statement; \ref{bpP:p3:two-scale-kam})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p3:it-ind
KIND: step
TITLE: Induction hypothesis
STATEMENT_SOURCE: blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:it-ind@L255-L256
PROOF_SOURCE: blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:it-ind@L255-L256
CONTRACT_ID: stepP:p3:it-ind
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p3:step
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p3:step | blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:it-ind@L256-L256 | cited at this line (step; \ref{bpP:p3:step})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p3:it-base
KIND: step
TITLE: Base
STATEMENT_SOURCE: blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:it-base@L257-L258
PROOF_SOURCE: blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:it-base@L257-L258
CONTRACT_ID: stepP:p3:it-base
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
EDGE: bpP:p3:two-scale-kam | blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:it-base@L258-L258 | cited at this line (step; \ref{bpP:p3:two-scale-kam})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p3:it-step
KIND: step
TITLE: Induction
STATEMENT_SOURCE: blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:it-step@L259-L260
PROOF_SOURCE: blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:it-step@L259-L260
CONTRACT_ID: stepP:p3:it-step
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p3:step, bpP:p3:seq
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p3:step | blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:it-step@L260-L260 | cited at this line (step; \ref{bpP:p3:step})
EDGE: bpP:p3:seq | blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:it-step@L260-L260 | cited at this line (step; \ref{bpP:p3:seq})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p3:it-comp
KIND: step
TITLE: Composition
STATEMENT_SOURCE: blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:it-comp@L261-L262
PROOF_SOURCE: blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:it-comp@L261-L262
CONTRACT_ID: stepP:p3:it-comp
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

NODE: stepP:p3:it-rates
KIND: step
TITLE: (iv)--(v) of the Lemma
STATEMENT_SOURCE: blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:it-rates@L263-L264
PROOF_SOURCE: blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:it-rates@L263-L264
CONTRACT_ID: stepP:p3:it-rates
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p3:step
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p3:step | blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:it-rates@L264-L264 | cited at this line (step; \ref{bpP:p3:step})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
