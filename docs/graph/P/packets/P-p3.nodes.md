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

NODE: bpP:p3:sums
KIND: lemma
TITLE: Sums
STATEMENT_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#bpP:p3:sums@L6-L8
PROOF_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#bpP:p3:sums@L9-L16
CONTRACT_ID: bpP:p3:sums
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p3:sum-doubling, stepP:p3:sum-weighted, stepP:p3:sum-radii
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p3:sum-doubling | blueprint-P/parts/p3b-two-scale-limit.tex#bpP:p3:sums@L10-L10 | proof step of this result
EDGE: stepP:p3:sum-weighted | blueprint-P/parts/p3b-two-scale-limit.tex#bpP:p3:sums@L12-L12 | proof step of this result
EDGE: stepP:p3:sum-radii | blueprint-P/parts/p3b-two-scale-limit.tex#bpP:p3:sums@L14-L14 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p3:sum-doubling
KIND: step
TITLE: Doubling
STATEMENT_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:sum-doubling@L10-L11
PROOF_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:sum-doubling@L10-L11
CONTRACT_ID: stepP:p3:sum-doubling
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p3:iterative
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p3:iterative | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:sum-doubling@L11-L11 | cited at this line (step; \ref{bpP:p3:iterative})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p3:sum-weighted
KIND: step
TITLE: Weighted sum
STATEMENT_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:sum-weighted@L12-L13
PROOF_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:sum-weighted@L12-L13
CONTRACT_ID: stepP:p3:sum-weighted
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

NODE: stepP:p3:sum-radii
KIND: step
TITLE: Radii
STATEMENT_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:sum-radii@L14-L15
PROOF_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:sum-radii@L14-L15
CONTRACT_ID: stepP:p3:sum-radii
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

NODE: bpP:p3:limit-actions
KIND: lemma
TITLE: Limit actions
STATEMENT_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#bpP:p3:limit-actions@L20-L29
PROOF_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#bpP:p3:limit-actions@L30-L39
CONTRACT_ID: bpP:p3:limit-actions
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p3:la-wp, stepP:p3:la-tele, stepP:p3:la-loc, stepP:p3:la-lip
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p3:la-wp | blueprint-P/parts/p3b-two-scale-limit.tex#bpP:p3:limit-actions@L31-L31 | proof step of this result
EDGE: stepP:p3:la-tele | blueprint-P/parts/p3b-two-scale-limit.tex#bpP:p3:limit-actions@L33-L33 | proof step of this result
EDGE: stepP:p3:la-loc | blueprint-P/parts/p3b-two-scale-limit.tex#bpP:p3:limit-actions@L35-L35 | proof step of this result
EDGE: stepP:p3:la-lip | blueprint-P/parts/p3b-two-scale-limit.tex#bpP:p3:limit-actions@L37-L37 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p3:la-wp
KIND: step
TITLE: Well-posedness
STATEMENT_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:la-wp@L31-L32
PROOF_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:la-wp@L31-L32
CONTRACT_ID: stepP:p3:la-wp
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p3:iterative
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p3:iterative | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:la-wp@L32-L32 | cited at this line (step; \ref{bpP:p3:iterative})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p3:la-tele
KIND: step
TITLE: Telescoping
STATEMENT_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:la-tele@L33-L34
PROOF_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:la-tele@L33-L34
CONTRACT_ID: stepP:p3:la-tele
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p3:sums
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p3:sums | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:la-tele@L34-L34 | cited at this line (step; \ref{bpP:p3:sums})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p3:la-loc
KIND: step
TITLE: Location
STATEMENT_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:la-loc@L35-L36
PROOF_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:la-loc@L35-L36
CONTRACT_ID: stepP:p3:la-loc
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

NODE: stepP:p3:la-lip
KIND: step
TITLE: Lipschitz constant
STATEMENT_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:la-lip@L37-L38
PROOF_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:la-lip@L37-L38
CONTRACT_ID: stepP:p3:la-lip
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p3:iterative
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p3:iterative | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:la-lip@L38-L38 | cited at this line (step; \ref{bpP:p3:iterative})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpP:p3:psi-lip
KIND: lemma
TITLE: Domains and rescaled Lipschitz bounds for $\Psi_k$
STATEMENT_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#bpP:p3:psi-lip@L45-L51
PROOF_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#bpP:p3:psi-lip@L52-L62
CONTRACT_ID: bpP:p3:psi-lip
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p3:pl-dom, stepP:p3:pl-disp, stepP:p3:pl-lip, stepP:p3:pl-sum
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p3:pl-dom | blueprint-P/parts/p3b-two-scale-limit.tex#bpP:p3:psi-lip@L53-L53 | proof step of this result
EDGE: stepP:p3:pl-disp | blueprint-P/parts/p3b-two-scale-limit.tex#bpP:p3:psi-lip@L55-L55 | proof step of this result
EDGE: stepP:p3:pl-lip | blueprint-P/parts/p3b-two-scale-limit.tex#bpP:p3:psi-lip@L57-L57 | proof step of this result
EDGE: stepP:p3:pl-sum | blueprint-P/parts/p3b-two-scale-limit.tex#bpP:p3:psi-lip@L60-L60 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p3:pl-dom
KIND: step
TITLE: Domains
STATEMENT_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:pl-dom@L53-L54
PROOF_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:pl-dom@L53-L54
CONTRACT_ID: stepP:p3:pl-dom
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p3:iterative
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p3:iterative | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:pl-dom@L54-L54 | cited at this line (step; \ref{bpP:p3:iterative})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p3:pl-disp
KIND: step
TITLE: Bound on displacement
STATEMENT_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:pl-disp@L55-L56
PROOF_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:pl-disp@L55-L56
CONTRACT_ID: stepP:p3:pl-disp
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p3:sums
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p3:sums | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:pl-disp@L56-L56 | cited at this line (step; \ref{bpP:p3:sums})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p3:pl-lip
KIND: step
TITLE: Lipschitz
STATEMENT_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:pl-lip@L57-L59
PROOF_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:pl-lip@L57-L59
CONTRACT_ID: stepP:p3:pl-lip
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p3:lip-sup, bpP:p3:iterative
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p3:lip-sup | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:pl-lip@L58-L58 | cited at this line (step; \ref{bpP:p3:lip-sup})
EDGE: bpP:p3:iterative | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:pl-lip@L58-L58 | cited at this line (step; \ref{bpP:p3:iterative})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p3:pl-sum
KIND: step
TITLE: Sum
STATEMENT_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:pl-sum@L60-L61
PROOF_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:pl-sum@L60-L61
CONTRACT_ID: stepP:p3:pl-sum
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p3:sums
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p3:sums | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:pl-sum@L61-L61 | cited at this line (step; \ref{bpP:p3:sums})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpP:p3:fourier-compact
KIND: lemma
TITLE: Compactness of periodic holomorphic functions on a strip
STATEMENT_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#bpP:p3:fourier-compact@L64-L66
PROOF_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#bpP:p3:fourier-compact@L67-L75
CONTRACT_ID: bpP:p3:fourier-compact
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p3:fc-decay, stepP:p3:fc-coef, stepP:p3:fc-tail
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p3:fc-decay | blueprint-P/parts/p3b-two-scale-limit.tex#bpP:p3:fourier-compact@L68-L68 | proof step of this result
EDGE: stepP:p3:fc-coef | blueprint-P/parts/p3b-two-scale-limit.tex#bpP:p3:fourier-compact@L70-L70 | proof step of this result
EDGE: stepP:p3:fc-tail | blueprint-P/parts/p3b-two-scale-limit.tex#bpP:p3:fourier-compact@L72-L72 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p3:fc-decay
KIND: step
TITLE: Coefficient decay
STATEMENT_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:fc-decay@L68-L69
PROOF_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:fc-decay@L68-L69
CONTRACT_ID: stepP:p3:fc-decay
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: K:bp:p1:ext-rectangle
ROUTES: -
ROUTE_FOR: -
EDGE: K:bp:p1:ext-rectangle | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:fc-decay@L69-L69 | cited at this line (step; \Kref{bp:p1:ext-rectangle})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p3:fc-coef
KIND: step
TITLE: Convergence of coefficients
STATEMENT_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:fc-coef@L70-L71
PROOF_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:fc-coef@L70-L71
CONTRACT_ID: stepP:p3:fc-coef
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p3:ext-fourier
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p3:ext-fourier | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:fc-coef@L71-L71 | cited at this line (step; \ref{bpP:p3:ext-fourier})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p3:fc-tail
KIND: step
TITLE: Tail and finite part on $\abs{\operatorname{Im}\vartheta}\le v$
STATEMENT_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:fc-tail@L72-L74
PROOF_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:fc-tail@L72-L74
CONTRACT_ID: stepP:p3:fc-tail
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p3:ext-weierstrass
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p3:ext-weierstrass | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:fc-tail@L74-L74 | cited at this line (step; \ref{bpP:p3:ext-weierstrass})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpP:p3:limit-phi
KIND: lemma
TITLE: The limit map $\Phi$
STATEMENT_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#bpP:p3:limit-phi@L77-L85
PROOF_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#bpP:p3:limit-phi@L86-L95
CONTRACT_ID: bpP:p3:limit-phi
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p3:lp-tele, stepP:p3:lp-cauchy, stepP:p3:lp-per, stepP:p3:lp-an
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p3:lp-tele | blueprint-P/parts/p3b-two-scale-limit.tex#bpP:p3:limit-phi@L87-L87 | proof step of this result
EDGE: stepP:p3:lp-cauchy | blueprint-P/parts/p3b-two-scale-limit.tex#bpP:p3:limit-phi@L89-L89 | proof step of this result
EDGE: stepP:p3:lp-per | blueprint-P/parts/p3b-two-scale-limit.tex#bpP:p3:limit-phi@L91-L91 | proof step of this result
EDGE: stepP:p3:lp-an | blueprint-P/parts/p3b-two-scale-limit.tex#bpP:p3:limit-phi@L93-L93 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p3:lp-tele
KIND: step
TITLE: Telescoping of the displacements
STATEMENT_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:lp-tele@L87-L88
PROOF_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:lp-tele@L87-L88
CONTRACT_ID: stepP:p3:lp-tele
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p3:limit-actions, bpP:p3:iterative, bpP:p3:sums
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p3:limit-actions | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:lp-tele@L88-L88 | cited at this line (step; \ref{bpP:p3:limit-actions})
EDGE: bpP:p3:iterative | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:lp-tele@L88-L88 | cited at this line (step; \ref{bpP:p3:iterative})
EDGE: bpP:p3:sums | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:lp-tele@L88-L88 | cited at this line (step; \ref{bpP:p3:sums})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p3:lp-cauchy
KIND: step
TITLE: Cauchy sequence
STATEMENT_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:lp-cauchy@L89-L90
PROOF_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:lp-cauchy@L89-L90
CONTRACT_ID: stepP:p3:lp-cauchy
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p3:psi-lip, bpP:p3:limit-actions, stepP:p3:la-lip
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p3:psi-lip | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:lp-cauchy@L90-L90 | cited at this line (step; \ref{bpP:p3:psi-lip})
EDGE: bpP:p3:limit-actions | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:lp-cauchy@L90-L90 | cited at this line (step; \ref{bpP:p3:limit-actions})
EDGE: stepP:p3:la-lip | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:lp-cauchy@L90-L90 | cited at this line (step; \ref{stepP:p3:la-lip})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p3:lp-per
KIND: step
TITLE: Periodicity and injectivity
STATEMENT_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:lp-per@L91-L92
PROOF_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:lp-per@L91-L92
CONTRACT_ID: stepP:p3:lp-per
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p3:iterative
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p3:iterative | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:lp-per@L92-L92 | cited at this line (step; \ref{bpP:p3:iterative})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p3:lp-an
KIND: step
TITLE: Analyticity in $\theta$
STATEMENT_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:lp-an@L93-L94
PROOF_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:lp-an@L93-L94
CONTRACT_ID: stepP:p3:lp-an
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p3:fourier-compact, bpP:p3:two-scale-kam
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p3:fourier-compact | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:lp-an@L94-L94 | cited at this line (step; \ref{bpP:p3:fourier-compact})
EDGE: bpP:p3:two-scale-kam | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:lp-an@L94-L94 | cited at this line (step; \ref{bpP:p3:two-scale-kam})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpP:p3:estimates
KIND: lemma
TITLE: Estimates and location
STATEMENT_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#bpP:p3:estimates@L102-L106
PROOF_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#bpP:p3:estimates@L107-L112
CONTRACT_ID: bpP:p3:estimates
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p3:es-sup, stepP:p3:es-loc, bpP:p3:two-scale-kam
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p3:es-sup | blueprint-P/parts/p3b-two-scale-limit.tex#bpP:p3:estimates@L108-L108 | proof step of this result
EDGE: stepP:p3:es-loc | blueprint-P/parts/p3b-two-scale-limit.tex#bpP:p3:estimates@L110-L110 | proof step of this result
EDGE: bpP:p3:two-scale-kam | blueprint-P/parts/p3b-two-scale-limit.tex#bpP:p3:estimates@L104-L104 | cited at this line (statement; \ref{bpP:p3:two-scale-kam})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p3:es-sup
KIND: step
TITLE: Sup bounds
STATEMENT_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:es-sup@L108-L109
PROOF_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:es-sup@L108-L109
CONTRACT_ID: stepP:p3:es-sup
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p3:limit-phi, bpP:p3:limit-actions
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p3:limit-phi | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:es-sup@L109-L109 | cited at this line (step; \ref{bpP:p3:limit-phi})
EDGE: bpP:p3:limit-actions | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:es-sup@L109-L109 | cited at this line (step; \ref{bpP:p3:limit-actions})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p3:es-loc
KIND: step
TITLE: Location
STATEMENT_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:es-loc@L110-L111
PROOF_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:es-loc@L110-L111
CONTRACT_ID: stepP:p3:es-loc
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

NODE: bpP:p3:lagr
KIND: lemma
TITLE: Immersion and Lagrangian property
STATEMENT_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#bpP:p3:lagr@L114-L116
PROOF_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#bpP:p3:lagr@L117-L124
CONTRACT_ID: bpP:p3:lagr
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p3:lg-cauchy, stepP:p3:lg-j, stepP:p3:lg-lim
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p3:lg-cauchy | blueprint-P/parts/p3b-two-scale-limit.tex#bpP:p3:lagr@L118-L118 | proof step of this result
EDGE: stepP:p3:lg-j | blueprint-P/parts/p3b-two-scale-limit.tex#bpP:p3:lagr@L120-L120 | proof step of this result
EDGE: stepP:p3:lg-lim | blueprint-P/parts/p3b-two-scale-limit.tex#bpP:p3:lagr@L122-L122 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p3:lg-cauchy
KIND: step
TITLE: Cauchy in the strip
STATEMENT_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:lg-cauchy@L118-L119
PROOF_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:lg-cauchy@L118-L119
CONTRACT_ID: stepP:p3:lg-cauchy
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

NODE: stepP:p3:lg-j
KIND: step
TITLE: Each $\Phi_j$-torus is Lagrangian
STATEMENT_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:lg-j@L120-L121
PROOF_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:lg-j@L120-L121
CONTRACT_ID: stepP:p3:lg-j
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

NODE: stepP:p3:lg-lim
KIND: step
TITLE: Limit
STATEMENT_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:lg-lim@L122-L123
PROOF_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:lg-lim@L122-L123
CONTRACT_ID: stepP:p3:lg-lim
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p3:limit-phi, stepP:p3:lp-an, bpP:p3:fourier-compact
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p3:limit-phi | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:lg-lim@L123-L123 | cited at this line (step; \ref{bpP:p3:limit-phi})
EDGE: stepP:p3:lp-an | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:lg-lim@L123-L123 | cited at this line (step; \ref{stepP:p3:lp-an})
EDGE: bpP:p3:fourier-compact | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:lg-lim@L123-L123 | cited at this line (step; \ref{bpP:p3:fourier-compact})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpP:p3:invariance
KIND: lemma
TITLE: Invariance
STATEMENT_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#bpP:p3:invariance@L126-L129
PROOF_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#bpP:p3:invariance@L130-L144
CONTRACT_ID: bpP:p3:invariance
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p3:inv-conj, stepP:p3:inv-dphi, stepP:p3:inv-err, stepP:p3:inv-lim
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p3:inv-conj | blueprint-P/parts/p3b-two-scale-limit.tex#bpP:p3:invariance@L132-L132 | proof step of this result
EDGE: stepP:p3:inv-dphi | blueprint-P/parts/p3b-two-scale-limit.tex#bpP:p3:invariance@L135-L135 | proof step of this result
EDGE: stepP:p3:inv-err | blueprint-P/parts/p3b-two-scale-limit.tex#bpP:p3:invariance@L137-L137 | proof step of this result
EDGE: stepP:p3:inv-lim | blueprint-P/parts/p3b-two-scale-limit.tex#bpP:p3:invariance@L142-L142 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p3:inv-conj
KIND: step
TITLE: Symplectic conjugation
STATEMENT_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:inv-conj@L132-L134
PROOF_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:inv-conj@L132-L134
CONTRACT_ID: stepP:p3:inv-conj
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: N:bpN:p5:symplectic
ROUTES: -
ROUTE_FOR: -
EDGE: N:bpN:p5:symplectic | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:inv-conj@L133-L133 | cited at this line (step; \Nref{bpN:p5:symplectic})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p3:inv-dphi
KIND: step
TITLE: $D\Phi_j$ bounded
STATEMENT_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:inv-dphi@L135-L136
PROOF_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:inv-dphi@L135-L136
CONTRACT_ID: stepP:p3:inv-dphi
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p3:limit-phi
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p3:limit-phi | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:inv-dphi@L136-L136 | cited at this line (step; \ref{bpP:p3:limit-phi})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p3:inv-err
KIND: step
TITLE: The three error terms
STATEMENT_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:inv-err@L137-L141
PROOF_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:inv-err@L137-L141
CONTRACT_ID: stepP:p3:inv-err
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p3:limit-actions, K:bp:p1:cauchy-open
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p3:limit-actions | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:inv-err@L138-L138 | cited at this line (step; \ref{bpP:p3:limit-actions})
EDGE: K:bp:p1:cauchy-open | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:inv-err@L139-L139 | cited at this line (step; \Kref{bp:p1:cauchy-open})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p3:inv-lim
KIND: step
TITLE: Passing to the limit
STATEMENT_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:inv-lim@L142-L143
PROOF_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:inv-lim@L142-L143
CONTRACT_ID: stepP:p3:inv-lim
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p3:limit-phi, stepP:p3:inv-conj, K:bp:p1:cauchy-open, N:bpN:p5:symplectic, N:bpN:p5:canonical
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p3:limit-phi | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:inv-lim@L143-L143 | cited at this line (step; \ref{bpP:p3:limit-phi})
EDGE: stepP:p3:inv-conj | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:inv-lim@L143-L143 | cited at this line (step; \ref{stepP:p3:inv-conj})
EDGE: K:bp:p1:cauchy-open | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:inv-lim@L143-L143 | cited at this line (step; \Kref{bp:p1:cauchy-open})
EDGE: N:bpN:p5:symplectic | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:inv-lim@L143-L143 | cited at this line (step; \Nref{bpN:p5:symplectic})
EDGE: N:bpN:p5:canonical | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:inv-lim@L143-L143 | cited at this line (step; \Nref{bpN:p5:canonical})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpP:p3:cover
KIND: lemma
TITLE: Bi-Lipschitz extension and covering
STATEMENT_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#bpP:p3:cover@L150-L152
PROOF_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#bpP:p3:cover@L153-L160
CONTRACT_ID: bpP:p3:cover
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p3:cv-ext, stepP:p3:cv-bij, stepP:p3:cv-loc
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p3:cv-ext | blueprint-P/parts/p3b-two-scale-limit.tex#bpP:p3:cover@L154-L154 | proof step of this result
EDGE: stepP:p3:cv-bij | blueprint-P/parts/p3b-two-scale-limit.tex#bpP:p3:cover@L156-L156 | proof step of this result
EDGE: stepP:p3:cv-loc | blueprint-P/parts/p3b-two-scale-limit.tex#bpP:p3:cover@L158-L158 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p3:cv-ext
KIND: step
TITLE: Extension
STATEMENT_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:cv-ext@L154-L155
PROOF_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:cv-ext@L154-L155
CONTRACT_ID: stepP:p3:cv-ext
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: K:bp:p1:mcshane
ROUTES: -
ROUTE_FOR: -
EDGE: K:bp:p1:mcshane | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:cv-ext@L155-L155 | cited at this line (step; \Kref{bp:p1:mcshane})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p3:cv-bij
KIND: step
TITLE: Bijectivity
STATEMENT_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:cv-bij@L156-L157
PROOF_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:cv-bij@L156-L157
CONTRACT_ID: stepP:p3:cv-bij
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
EDGE: bpP:p3:ext-banach | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:cv-bij@L157-L157 | cited at this line (step; \ref{bpP:p3:ext-banach})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p3:cv-loc
KIND: step
TITLE: Location of preimages
STATEMENT_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:cv-loc@L158-L159
PROOF_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:cv-loc@L158-L159
CONTRACT_ID: stepP:p3:cv-loc
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

NODE: bpP:p3:meas-actions
KIND: lemma
TITLE: Measure of the complement of $D_*$
STATEMENT_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#bpP:p3:meas-actions@L162-L164
PROOF_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#bpP:p3:meas-actions@L165-L170
CONTRACT_ID: bpP:p3:meas-actions
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p3:ma-ext, stepP:p3:ma-meas
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p3:ma-ext | blueprint-P/parts/p3b-two-scale-limit.tex#bpP:p3:meas-actions@L166-L166 | proof step of this result
EDGE: stepP:p3:ma-meas | blueprint-P/parts/p3b-two-scale-limit.tex#bpP:p3:meas-actions@L168-L168 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p3:ma-ext
KIND: step
TITLE: Extension and preimage
STATEMENT_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:ma-ext@L166-L167
PROOF_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:ma-ext@L166-L167
CONTRACT_ID: stepP:p3:ma-ext
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p3:cover
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p3:cover | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:ma-ext@L167-L167 | cited at this line (step; \ref{bpP:p3:cover})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p3:ma-meas
KIND: step
TITLE: Measure
STATEMENT_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:ma-meas@L168-L169
PROOF_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:ma-meas@L168-L169
CONTRACT_ID: stepP:p3:ma-meas
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: K:bp:p1:lip-image
ROUTES: -
ROUTE_FOR: -
EDGE: K:bp:p1:lip-image | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:ma-meas@L169-L169 | cited at this line (step; \Kref{bp:p1:lip-image})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpP:p3:meas-torus
KIND: lemma
TITLE: Measure of the complement of $K_\Omega$ over $D$
STATEMENT_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#bpP:p3:meas-torus@L172-L174
PROOF_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#bpP:p3:meas-torus@L175-L189
CONTRACT_ID: bpP:p3:meas-torus
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p3:mt-split, stepP:p3:mt-ext, stepP:p3:mt-pre, stepP:p3:mt-meas, stepP:p3:mt-shell, stepP:p3:mt-sum
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p3:mt-split | blueprint-P/parts/p3b-two-scale-limit.tex#bpP:p3:meas-torus@L177-L177 | proof step of this result
EDGE: stepP:p3:mt-ext | blueprint-P/parts/p3b-two-scale-limit.tex#bpP:p3:meas-torus@L179-L179 | proof step of this result
EDGE: stepP:p3:mt-pre | blueprint-P/parts/p3b-two-scale-limit.tex#bpP:p3:meas-torus@L181-L181 | proof step of this result
EDGE: stepP:p3:mt-meas | blueprint-P/parts/p3b-two-scale-limit.tex#bpP:p3:meas-torus@L183-L183 | proof step of this result
EDGE: stepP:p3:mt-shell | blueprint-P/parts/p3b-two-scale-limit.tex#bpP:p3:meas-torus@L185-L185 | proof step of this result
EDGE: stepP:p3:mt-sum | blueprint-P/parts/p3b-two-scale-limit.tex#bpP:p3:meas-torus@L187-L187 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p3:mt-split
KIND: step
TITLE: Splitting
STATEMENT_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:mt-split@L177-L178
PROOF_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:mt-split@L177-L178
CONTRACT_ID: stepP:p3:mt-split
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p3:meas-actions
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p3:meas-actions | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:mt-split@L178-L178 | cited at this line (step; \ref{bpP:p3:meas-actions})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p3:mt-ext
KIND: step
TITLE: Rescaled extension
STATEMENT_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:mt-ext@L179-L180
PROOF_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:mt-ext@L179-L180
CONTRACT_ID: stepP:p3:mt-ext
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p3:limit-phi, bpP:p3:cover
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p3:limit-phi | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:mt-ext@L180-L180 | cited at this line (step; \ref{bpP:p3:limit-phi})
EDGE: bpP:p3:cover | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:mt-ext@L180-L180 | cited at this line (step; \ref{bpP:p3:cover})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p3:mt-pre
KIND: step
TITLE: Preimage structure
STATEMENT_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:mt-pre@L181-L182
PROOF_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:mt-pre@L181-L182
CONTRACT_ID: stepP:p3:mt-pre
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

NODE: stepP:p3:mt-meas
KIND: step
TITLE: Measure
STATEMENT_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:mt-meas@L183-L184
PROOF_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:mt-meas@L183-L184
CONTRACT_ID: stepP:p3:mt-meas
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: K:bp:p1:lip-image
ROUTES: -
ROUTE_FOR: -
EDGE: K:bp:p1:lip-image | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:mt-meas@L184-L184 | cited at this line (step; \Kref{bp:p1:lip-image})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p3:mt-shell
KIND: step
TITLE: The shell
STATEMENT_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:mt-shell@L185-L186
PROOF_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:mt-shell@L185-L186
CONTRACT_ID: stepP:p3:mt-shell
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p3:meas-actions
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p3:meas-actions | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:mt-shell@L186-L186 | cited at this line (step; \ref{bpP:p3:meas-actions})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p3:mt-sum
KIND: step
TITLE: Sum
STATEMENT_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:mt-sum@L187-L188
PROOF_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:mt-sum@L187-L188
CONTRACT_ID: stepP:p3:mt-sum
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

NODE: stepP:p3:pf-constr
KIND: step
TITLE: Construction
STATEMENT_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:pf-constr@L194-L195
PROOF_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:pf-constr@L194-L195
CONTRACT_ID: stepP:p3:pf-constr
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p3:iterative, bpP:p3:limit-actions, bpP:p3:limit-phi
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p3:iterative | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:pf-constr@L195-L195 | cited at this line (step; \ref{bpP:p3:iterative})
EDGE: bpP:p3:limit-actions | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:pf-constr@L195-L195 | cited at this line (step; \ref{bpP:p3:limit-actions})
EDGE: bpP:p3:limit-phi | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:pf-constr@L195-L195 | cited at this line (step; \ref{bpP:p3:limit-phi})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p3:pf-ad
KIND: step
TITLE: (a), (d)
STATEMENT_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:pf-ad@L196-L197
PROOF_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:pf-ad@L196-L197
CONTRACT_ID: stepP:p3:pf-ad
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p3:limit-phi, bpP:p3:estimates
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p3:limit-phi | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:pf-ad@L197-L197 | cited at this line (step; \ref{bpP:p3:limit-phi})
EDGE: bpP:p3:estimates | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:pf-ad@L197-L197 | cited at this line (step; \ref{bpP:p3:estimates})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p3:pf-bc
KIND: step
TITLE: (b), (c)
STATEMENT_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:pf-bc@L198-L199
PROOF_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:pf-bc@L198-L199
CONTRACT_ID: stepP:p3:pf-bc
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p3:invariance, bpP:p3:lagr
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p3:invariance | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:pf-bc@L199-L199 | cited at this line (step; \ref{bpP:p3:invariance})
EDGE: bpP:p3:lagr | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:pf-bc@L199-L199 | cited at this line (step; \ref{bpP:p3:lagr})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p3:pf-inj
KIND: step
TITLE: Injectivity and Lipschitz structure
STATEMENT_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:pf-inj@L200-L201
PROOF_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:pf-inj@L200-L201
CONTRACT_ID: stepP:p3:pf-inj
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p3:limit-phi, bpP:p3:limit-actions, bpP:p3:ball
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p3:limit-phi | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:pf-inj@L201-L201 | cited at this line (step; \ref{bpP:p3:limit-phi})
EDGE: bpP:p3:limit-actions | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:pf-inj@L201-L201 | cited at this line (step; \ref{bpP:p3:limit-actions})
EDGE: bpP:p3:ball | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:pf-inj@L201-L201 | cited at this line (step; \ref{bpP:p3:ball})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p3:pf-meas
KIND: step
TITLE: Measure
STATEMENT_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:pf-meas@L202-L203
PROOF_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:pf-meas@L202-L203
CONTRACT_ID: stepP:p3:pf-meas
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p3:estimates, bpP:p3:meas-torus
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p3:estimates | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:pf-meas@L203-L203 | cited at this line (step; \ref{bpP:p3:estimates})
EDGE: bpP:p3:meas-torus | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:pf-meas@L203-L203 | cited at this line (step; \ref{bpP:p3:meas-torus})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
