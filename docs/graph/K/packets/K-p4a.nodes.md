NODE: bp:p4:lattice-count
KIND: lemma
TITLE: Counting lattice points on $\ell^1$ spheres
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:lattice-count@L53-L55
PROOF_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:lattice-count@L57-L64
CONTRACT_ID: bp:p4:lattice-count
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p4:count-projection
ROUTES: -
ROUTE_FOR: -
EDGE: step:p4:count-projection | blueprint/parts/p4-measure.tex#bp:p4:lattice-count@L58-L58 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:count-projection
KIND: step
TITLE: Projection to the first $n-1$ coordinates
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:count-projection@L58-L63
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:count-projection@L58-L63
CONTRACT_ID: step:p4:count-projection
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

NODE: bp:p4:lattice-sum
KIND: lemma
TITLE: Lattice sum
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:lattice-sum@L66-L71
PROOF_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:lattice-sum@L73-L82
CONTRACT_ID: bp:p4:lattice-sum
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p4:latsum-shells, step:p4:latsum-integral
ROUTES: -
ROUTE_FOR: -
EDGE: step:p4:latsum-shells | blueprint/parts/p4-measure.tex#bp:p4:lattice-sum@L74-L74 | proof step of this result
EDGE: step:p4:latsum-integral | blueprint/parts/p4-measure.tex#bp:p4:lattice-sum@L78-L78 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:latsum-shells
KIND: step
TITLE: Summation by shells
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:latsum-shells@L74-L76
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:latsum-shells@L74-L76
CONTRACT_ID: step:p4:latsum-shells
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p4:lattice-count
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p4:lattice-count | blueprint/parts/p4-measure.tex#step:p4:latsum-shells@L75-L75 | cited at this line (step; \ref{bp:p4:lattice-count})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:latsum-integral
KIND: step
TITLE: Integral comparison
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:latsum-integral@L78-L81
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:latsum-integral@L78-L81
CONTRACT_ID: step:p4:latsum-integral
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

NODE: bp:p4:slab
KIND: lemma
TITLE: Slabs in a cube
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:slab@L84-L89
PROOF_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:slab@L91-L102
CONTRACT_ID: bp:p4:slab
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p4:slab-coordinate, step:p4:slab-fubini
ROUTES: -
ROUTE_FOR: -
EDGE: step:p4:slab-coordinate | blueprint/parts/p4-measure.tex#bp:p4:slab@L92-L92 | proof step of this result
EDGE: step:p4:slab-fubini | blueprint/parts/p4-measure.tex#bp:p4:slab@L95-L95 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:slab-coordinate
KIND: step
TITLE: A dominant coordinate
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:slab-coordinate@L92-L93
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:slab-coordinate@L92-L93
CONTRACT_ID: step:p4:slab-coordinate
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

NODE: step:p4:slab-fubini
KIND: step
TITLE: Fubini in the coordinate $\omega_i$
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:slab-fubini@L95-L101
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:slab-fubini@L95-L101
CONTRACT_ID: step:p4:slab-fubini
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

NODE: step:p4:g3-n0
KIND: step
TITLE: The case $n=0$
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:g3-n0@L105-L107
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:g3-n0@L105-L107
CONTRACT_ID: step:p4:g3-n0
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

NODE: step:p4:g3-cube
KIND: step
TITLE: Bounding cube and constant
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:g3-cube@L109-L112
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:g3-cube@L109-L112
CONTRACT_ID: step:p4:g3-cube
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p4:lattice-sum
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p4:lattice-sum | blueprint/parts/p4-measure.tex#step:p4:g3-cube@L111-L111 | cited at this line (step; \ref{bp:p4:lattice-sum})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:g3-union
KIND: step
TITLE: Union of slabs
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:g3-union@L114-L120
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:g3-union@L114-L120
CONTRACT_ID: step:p4:g3-union
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p0:diophantine#IsDiophantine
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p0:diophantine#IsDiophantine | blueprint/parts/p4-measure.tex#step:p4:g3-union@L115-L115 | cited at this line (step; \ref{bp:p0:diophantine})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:g3-sum
KIND: step
TITLE: Summation
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:g3-sum@L122-L127
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:g3-sum@L122-L127
CONTRACT_ID: step:p4:g3-sum
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p4:slab, bp:p4:lattice-sum
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p4:slab | blueprint/parts/p4-measure.tex#step:p4:g3-sum@L123-L123 | cited at this line (step; \ref{bp:p4:slab})
EDGE: bp:p4:lattice-sum | blueprint/parts/p4-measure.tex#step:p4:g3-sum@L124-L124 | cited at this line (step; \ref{bp:p4:lattice-sum})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p4:g3-remark
KIND: claim
TITLE: bp:p4:g3-remark
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:g3-remark@L130-L133
PROOF_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:g3-remark@L130-L133
CONTRACT_ID: bp:p4:g3-remark
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p4:freq-map
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p4:freq-map | blueprint/parts/p4-measure.tex#bp:p4:g3-remark@L132-L132 | cited at this line (statement; \ref{bp:p4:freq-map})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: remark: its justification is inline (confirm, or exclude if not a mathematical claim)

NODE: bp:p4:data
KIND: definition
TITLE: Shrunken domains and basic constants
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:data@L154-L163
PROOF_SOURCE: -
CONTRACT_ID: bp:p4:data
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:cauchy-open
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:cauchy-open | blueprint/parts/p4-measure.tex#bp:p4:data@L160-L160 | cited at this line (statement; \ref{bp:p1:cauchy-open})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p4:h-bounded
KIND: lemma
TITLE: $h$ is bounded on a shrunken neighbourhood
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:h-bounded@L168-L170
PROOF_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:h-bounded@L172-L181
CONTRACT_ID: bp:p4:h-bounded
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p4:hbdd-compact, step:p4:hbdd-continuity
ROUTES: -
ROUTE_FOR: -
EDGE: step:p4:hbdd-compact | blueprint/parts/p4-measure.tex#bp:p4:h-bounded@L173-L173 | proof step of this result
EDGE: step:p4:hbdd-continuity | blueprint/parts/p4-measure.tex#bp:p4:h-bounded@L178-L178 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:hbdd-compact
KIND: step
TITLE: A compact set between the neighbourhoods
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:hbdd-compact@L173-L176
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:hbdd-compact@L173-L176
CONTRACT_ID: step:p4:hbdd-compact
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

NODE: step:p4:hbdd-continuity
KIND: step
TITLE: Continuity
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:hbdd-continuity@L178-L180
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:hbdd-continuity@L178-L180
CONTRACT_ID: step:p4:hbdd-continuity
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

NODE: bp:p4:derivative-bounds
KIND: lemma
TITLE: Derivative bounds
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:derivative-bounds@L183-L195
PROOF_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:derivative-bounds@L197-L223
CONTRACT_ID: bp:p4:derivative-bounds
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p4:db-polydisc, step:p4:db-cauchy, step:p4:db-vectorfield
ROUTES: -
ROUTE_FOR: -
EDGE: step:p4:db-polydisc | blueprint/parts/p4-measure.tex#bp:p4:derivative-bounds@L198-L198 | proof step of this result
EDGE: step:p4:db-cauchy | blueprint/parts/p4-measure.tex#bp:p4:derivative-bounds@L204-L204 | proof step of this result
EDGE: step:p4:db-vectorfield | blueprint/parts/p4-measure.tex#bp:p4:derivative-bounds@L210-L210 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:db-polydisc
KIND: step
TITLE: Polydiscs
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:db-polydisc@L198-L202
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:db-polydisc@L198-L202
CONTRACT_ID: step:p4:db-polydisc
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

NODE: step:p4:db-cauchy
KIND: step
TITLE: Cauchy estimates
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:db-cauchy@L204-L208
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:db-cauchy@L204-L208
CONTRACT_ID: step:p4:db-cauchy
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p4:h-bounded, bp:p1:cauchy-open
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p4:h-bounded | blueprint/parts/p4-measure.tex#step:p4:db-cauchy@L205-L205 | cited at this line (step; \ref{bp:p4:h-bounded})
EDGE: bp:p1:cauchy-open | blueprint/parts/p4-measure.tex#step:p4:db-cauchy@L206-L206 | cited at this line (step; \ref{bp:p1:cauchy-open})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:db-vectorfield
KIND: step
TITLE: From $D\pfh$ to $X_\pfh$
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:db-vectorfield@L210-L222
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:db-vectorfield@L210-L222
CONTRACT_ID: step:p4:db-vectorfield
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:hamiltonian-real, bp:p1:holomorphic-regularity
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:hamiltonian-real | blueprint/parts/p4-measure.tex#step:p4:db-vectorfield@L213-L213 | cited at this line (step; \ref{bp:p1:hamiltonian-real})
EDGE: bp:p1:holomorphic-regularity | blueprint/parts/p4-measure.tex#step:p4:db-vectorfield@L216-L216 | cited at this line (step; \ref{bp:p1:holomorphic-regularity})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p4:freq-map
KIND: lemma
TITLE: The frequency map
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:freq-map@L225-L237
PROOF_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:freq-map@L239-L272
CONTRACT_ID: bp:p4:freq-map
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p4:fm-domain, step:p4:fm-gradient, step:p4:fm-hessian, step:p4:fm-bounds, step:p4:fm-lipschitz
ROUTES: -
ROUTE_FOR: -
EDGE: step:p4:fm-domain | blueprint/parts/p4-measure.tex#bp:p4:freq-map@L240-L240 | proof step of this result
EDGE: step:p4:fm-gradient | blueprint/parts/p4-measure.tex#bp:p4:freq-map@L244-L244 | proof step of this result
EDGE: step:p4:fm-hessian | blueprint/parts/p4-measure.tex#bp:p4:freq-map@L254-L254 | proof step of this result
EDGE: step:p4:fm-bounds | blueprint/parts/p4-measure.tex#bp:p4:freq-map@L262-L262 | proof step of this result
EDGE: step:p4:fm-lipschitz | blueprint/parts/p4-measure.tex#bp:p4:freq-map@L267-L267 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:fm-domain
KIND: step
TITLE: The real domain
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:fm-domain@L240-L242
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:fm-domain@L240-L242
CONTRACT_ID: step:p4:fm-domain
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

NODE: step:p4:fm-gradient
KIND: step
TITLE: Guarded fact: the frozen frequency map is the gradient
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:fm-gradient@L244-L252
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:fm-gradient@L244-L252
CONTRACT_ID: step:p4:fm-gradient
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p0:totality
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p0:totality | blueprint/parts/p4-measure.tex#step:p4:fm-gradient@L252-L252 | cited at this line (step; \ref{bp:p0:totality})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:fm-hessian
KIND: step
TITLE: The Hessian
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:fm-hessian@L254-L260
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:fm-hessian@L254-L260
CONTRACT_ID: step:p4:fm-hessian
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:holomorphic-regularity, step:p4:fm-gradient
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:holomorphic-regularity | blueprint/parts/p4-measure.tex#step:p4:fm-hessian@L255-L255 | cited at this line (step; \ref{bp:p1:holomorphic-regularity})
EDGE: step:p4:fm-gradient | blueprint/parts/p4-measure.tex#step:p4:fm-hessian@L257-L257 | cited at this line (step; \ref{step:p4:fm-gradient})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:fm-bounds
KIND: step
TITLE: Bounds
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:fm-bounds@L262-L265
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:fm-bounds@L262-L265
CONTRACT_ID: step:p4:fm-bounds
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p4:derivative-bounds
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p4:derivative-bounds | blueprint/parts/p4-measure.tex#step:p4:fm-bounds@L265-L265 | cited at this line (step; \ref{bp:p4:derivative-bounds})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:fm-lipschitz
KIND: step
TITLE: Lipschitz bound on $B$
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:fm-lipschitz@L267-L271
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:fm-lipschitz@L267-L271
CONTRACT_ID: step:p4:fm-lipschitz
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

NODE: bp:p4:hessian-inverse
KIND: lemma
TITLE: Kolmogorov nondegeneracy at a point
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:hessian-inverse@L274-L278
PROOF_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:hessian-inverse@L280-L292
CONTRACT_ID: bp:p4:hessian-inverse
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p4:hess-quotient, step:p4:hess-norm
ROUTES: -
ROUTE_FOR: -
EDGE: step:p4:hess-quotient | blueprint/parts/p4-measure.tex#bp:p4:hessian-inverse@L281-L281 | proof step of this result
EDGE: step:p4:hess-norm | blueprint/parts/p4-measure.tex#bp:p4:hessian-inverse@L287-L287 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:hess-quotient
KIND: step
TITLE: Difference quotients
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:hess-quotient@L281-L285
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:hess-quotient@L281-L285
CONTRACT_ID: step:p4:hess-quotient
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p4:freq-map
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p4:freq-map | blueprint/parts/p4-measure.tex#step:p4:hess-quotient@L285-L285 | cited at this line (step; \ref{bp:p4:freq-map})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:hess-norm
KIND: step
TITLE: Inverse and its norm
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:hess-norm@L287-L291
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:hess-norm@L287-L291
CONTRACT_ID: step:p4:hess-norm
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

NODE: bp:p4:inverse-freq
KIND: lemma
TITLE: The inverse frequency map
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:inverse-freq@L294-L300
PROOF_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:inverse-freq@L302-L307
CONTRACT_ID: bp:p4:inverse-freq
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p4:invfreq-proof
ROUTES: -
ROUTE_FOR: -
EDGE: step:p4:invfreq-proof | blueprint/parts/p4-measure.tex#bp:p4:inverse-freq@L303-L303 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:invfreq-proof
KIND: step
TITLE: Inverse Lipschitz bound
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:invfreq-proof@L303-L306
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:invfreq-proof@L303-L306
CONTRACT_ID: step:p4:invfreq-proof
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p4:hess-quotient, bp:p4:freq-map
ROUTES: -
ROUTE_FOR: -
EDGE: step:p4:hess-quotient | blueprint/parts/p4-measure.tex#step:p4:invfreq-proof@L305-L305 | cited at this line (step; \ref{step:p4:hess-quotient})
EDGE: bp:p4:freq-map | blueprint/parts/p4-measure.tex#step:p4:invfreq-proof@L306-L306 | cited at this line (step; \ref{bp:p4:freq-map})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p4:h1
KIND: lemma
TITLE: The Hamiltonian hypothesis H1
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:h1@L309-L313
PROOF_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:h1@L315-L331
CONTRACT_ID: bp:p4:h1
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p4:h1-open, step:p4:h1-holo, step:p4:h1-bounds, bp:p0:g1, bp:p0:g2, bp:p4:derivative-bounds
ROUTES: -
ROUTE_FOR: -
EDGE: step:p4:h1-open | blueprint/parts/p4-measure.tex#bp:p4:h1@L316-L316 | proof step of this result
EDGE: step:p4:h1-holo | blueprint/parts/p4-measure.tex#bp:p4:h1@L321-L321 | proof step of this result
EDGE: step:p4:h1-bounds | blueprint/parts/p4-measure.tex#bp:p4:h1@L329-L329 | proof step of this result
EDGE: bp:p0:g1 | blueprint/parts/p4-measure.tex#bp:p4:h1@L311-L311 | cited at this line (statement; \ref{bp:p0:g1})
EDGE: bp:p0:g2 | blueprint/parts/p4-measure.tex#bp:p4:h1@L311-L311 | cited at this line (statement; \ref{bp:p0:g2})
EDGE: bp:p4:derivative-bounds | blueprint/parts/p4-measure.tex#bp:p4:h1@L312-L312 | cited at this line (statement; \ref{bp:p4:derivative-bounds})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:h1-open
KIND: step
TITLE: Openness and invariance
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:h1-open@L316-L319
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:h1-open@L316-L319
CONTRACT_ID: step:p4:h1-open
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

NODE: step:p4:h1-holo
KIND: step
TITLE: Holomorphy, periodicity, reality
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:h1-holo@L321-L327
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:h1-holo@L321-L327
CONTRACT_ID: step:p4:h1-holo
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

NODE: step:p4:h1-bounds
KIND: step
TITLE: Derivative bounds
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:h1-bounds@L329-L330
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:h1-bounds@L329-L330
CONTRACT_ID: step:p4:h1-bounds
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p4:derivative-bounds
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p4:derivative-bounds | blueprint/parts/p4-measure.tex#step:p4:h1-bounds@L330-L330 | cited at this line (step; \ref{bp:p4:derivative-bounds})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p4:unperturbed
KIND: lemma
TITLE: Geometry of the unperturbed torus
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:unperturbed@L341-L361
PROOF_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:unperturbed@L363-L404
CONTRACT_ID: bp:p4:unperturbed
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p4:unp-frame, step:p4:unp-normal, step:p4:unp-torsion, step:p4:unp-twist, step:p4:unp-error, step:p4:unp-ball
ROUTES: -
ROUTE_FOR: -
EDGE: step:p4:unp-frame | blueprint/parts/p4-measure.tex#bp:p4:unperturbed@L364-L364 | proof step of this result
EDGE: step:p4:unp-normal | blueprint/parts/p4-measure.tex#bp:p4:unperturbed@L371-L371 | proof step of this result
EDGE: step:p4:unp-torsion | blueprint/parts/p4-measure.tex#bp:p4:unperturbed@L376-L376 | proof step of this result
EDGE: step:p4:unp-twist | blueprint/parts/p4-measure.tex#bp:p4:unperturbed@L386-L386 | proof step of this result
EDGE: step:p4:unp-error | blueprint/parts/p4-measure.tex#bp:p4:unperturbed@L393-L393 | proof step of this result
EDGE: step:p4:unp-ball | blueprint/parts/p4-measure.tex#bp:p4:unperturbed@L400-L400 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:unp-frame
KIND: step
TITLE: Frame and Gram matrix
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:unp-frame@L364-L369
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:unp-frame@L364-L369
CONTRACT_ID: step:p4:unp-frame
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

NODE: step:p4:unp-normal
KIND: step
TITLE: Normal frame
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:unp-normal@L371-L374
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:unp-normal@L371-L374
CONTRACT_ID: step:p4:unp-normal
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

NODE: step:p4:unp-torsion
KIND: step
TITLE: Torsion
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:unp-torsion@L376-L384
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:unp-torsion@L376-L384
CONTRACT_ID: step:p4:unp-torsion
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p4:db-vectorfield, step:p4:unp-normal
ROUTES: -
ROUTE_FOR: -
EDGE: step:p4:db-vectorfield | blueprint/parts/p4-measure.tex#step:p4:unp-torsion@L377-L377 | cited at this line (step; \ref{step:p4:db-vectorfield})
EDGE: step:p4:unp-normal | blueprint/parts/p4-measure.tex#step:p4:unp-torsion@L381-L381 | cited at this line (step; \ref{step:p4:unp-normal})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:unp-twist
KIND: step
TITLE: Twist
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:unp-twist@L386-L391
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:unp-twist@L386-L391
CONTRACT_ID: step:p4:unp-twist
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p4:derivative-bounds, bp:p4:hessian-inverse, bp:p1:neumann
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p4:derivative-bounds | blueprint/parts/p4-measure.tex#step:p4:unp-twist@L388-L388 | cited at this line (step; \ref{bp:p4:derivative-bounds})
EDGE: bp:p4:hessian-inverse | blueprint/parts/p4-measure.tex#step:p4:unp-twist@L390-L390 | cited at this line (step; \ref{bp:p4:hessian-inverse})
EDGE: bp:p1:neumann | blueprint/parts/p4-measure.tex#step:p4:unp-twist@L391-L391 | cited at this line (step; \ref{bp:p1:neumann})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:unp-error
KIND: step
TITLE: Invariance error
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:unp-error@L393-L398
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:unp-error@L393-L398
CONTRACT_ID: step:p4:unp-error
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p4:freq-map, bp:p4:derivative-bounds
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p4:freq-map | blueprint/parts/p4-measure.tex#step:p4:unp-error@L395-L395 | cited at this line (step; \ref{bp:p4:freq-map})
EDGE: bp:p4:derivative-bounds | blueprint/parts/p4-measure.tex#step:p4:unp-error@L398-L398 | cited at this line (step; \ref{bp:p4:derivative-bounds})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:unp-ball
KIND: step
TITLE: Neighbourhood
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:unp-ball@L400-L403
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:unp-ball@L400-L403
CONTRACT_ID: step:p4:unp-ball
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

NODE: bp:p4:parameters
KIND: definition
TITLE: Parameters of the applications of G1 and G2
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:parameters@L406-L436
PROOF_SOURCE: -
CONTRACT_ID: bp:p4:parameters
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p0:g1, bp:p0:g2
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p0:g1 | blueprint/parts/p4-measure.tex#bp:p4:parameters@L411-L411 | cited at this line (statement; \ref{bp:p0:g1})
EDGE: bp:p0:g2 | blueprint/parts/p4-measure.tex#bp:p4:parameters@L414-L414 | cited at this line (statement; \ref{bp:p0:g2})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p4:smallness
KIND: lemma
TITLE: Smallness consequences
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:smallness@L445-L456
PROOF_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:smallness@L458-L466
CONTRACT_ID: bp:p4:smallness
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p4:small-proof
ROUTES: -
ROUTE_FOR: -
EDGE: step:p4:small-proof | blueprint/parts/p4-measure.tex#bp:p4:smallness@L459-L459 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:small-proof
KIND: step
TITLE: Reduction to $c_*$
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:small-proof@L459-L465
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:small-proof@L459-L465
CONTRACT_ID: step:p4:small-proof
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

NODE: bp:p4:apply
KIND: theorem
TITLE: APPLY: a torus for every Diophantine frequency
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:apply@L468-L474
PROOF_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:apply@L476-L496
CONTRACT_ID: bp:p4:apply
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p4:apply-g1
ROUTES: -
ROUTE_FOR: -
EDGE: step:p4:apply-g1 | blueprint/parts/p4-measure.tex#bp:p4:apply@L477-L477 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:apply-g1
KIND: step
TITLE: Application of G1 at the unperturbed torus
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:apply-g1@L477-L495
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:apply-g1@L477-L495
CONTRACT_ID: step:p4:apply-g1
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p0:g1, bp:p4:parameters, bp:p4:h1, bp:p4:unperturbed
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p0:g1 | blueprint/parts/p4-measure.tex#step:p4:apply-g1@L478-L478 | cited at this line (step; \ref{bp:p0:g1})
EDGE: bp:p4:parameters | blueprint/parts/p4-measure.tex#step:p4:apply-g1@L478-L478 | cited at this line (step; \ref{bp:p4:parameters})
EDGE: bp:p4:h1 | blueprint/parts/p4-measure.tex#step:p4:apply-g1@L483-L483 | cited at this line (step; \ref{bp:p4:h1})
EDGE: bp:p4:unperturbed | blueprint/parts/p4-measure.tex#step:p4:apply-g1@L485-L485 | cited at this line (step; \ref{bp:p4:unperturbed})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p4:omega-gamma
KIND: claim
TITLE: Why no distance to the boundary of $\pfg(B)$
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:omega-gamma@L498-L505
PROOF_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:omega-gamma@L498-L505
CONTRACT_ID: bp:p4:omega-gamma
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p4:unperturbed
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p4:unperturbed | blueprint/parts/p4-measure.tex#bp:p4:omega-gamma@L501-L501 | cited at this line (statement; \ref{bp:p4:unperturbed})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: remark: its justification is inline (confirm, or exclude if not a mathematical claim)

NODE: bp:p4:matrix-norms
KIND: corollary
TITLE: Matrix norms
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:matrix-norms@L518-L533
PROOF_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:matrix-norms@L535-L544
CONTRACT_ID: bp:p4:matrix-norms
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p4:mn-rowsum, bp:p4:unperturbed, bp:p0:stripdata#IsPrimaryOnStrip, bp:p0:stripdata#IsRealOnReals, bp:p0:stripdata#invarianceError, bp:p0:stripdata#dotC, bp:p0:stripdata#gramMatrix, bp:p0:stripdata#normalFrame, bp:p0:stripdata#torsion, bp:p0:stripdata#torsionAverage
ROUTES: -
ROUTE_FOR: -
EDGE: step:p4:mn-rowsum | blueprint/parts/p4-measure.tex#bp:p4:matrix-norms@L536-L536 | proof step of this result
EDGE: bp:p4:unperturbed | blueprint/parts/p4-measure.tex#bp:p4:matrix-norms@L526-L526 | cited at this line (statement; \ref{bp:p4:unperturbed})
EDGE: bp:p0:stripdata#IsPrimaryOnStrip | blueprint/parts/p4-measure.tex#bp:p4:matrix-norms@L527-L527 | cited at this line (statement; \ref{bp:p0:stripdata})
EDGE: bp:p0:stripdata#IsRealOnReals | blueprint/parts/p4-measure.tex#bp:p4:matrix-norms@L527-L527 | cited at this line (statement; \ref{bp:p0:stripdata})
EDGE: bp:p0:stripdata#invarianceError | blueprint/parts/p4-measure.tex#bp:p4:matrix-norms@L527-L527 | cited at this line (statement; \ref{bp:p0:stripdata})
EDGE: bp:p0:stripdata#dotC | blueprint/parts/p4-measure.tex#bp:p4:matrix-norms@L527-L527 | cited at this line (statement; \ref{bp:p0:stripdata})
EDGE: bp:p0:stripdata#gramMatrix | blueprint/parts/p4-measure.tex#bp:p4:matrix-norms@L527-L527 | cited at this line (statement; \ref{bp:p0:stripdata})
EDGE: bp:p0:stripdata#normalFrame | blueprint/parts/p4-measure.tex#bp:p4:matrix-norms@L527-L527 | cited at this line (statement; \ref{bp:p0:stripdata})
EDGE: bp:p0:stripdata#torsion | blueprint/parts/p4-measure.tex#bp:p4:matrix-norms@L527-L527 | cited at this line (statement; \ref{bp:p0:stripdata})
EDGE: bp:p0:stripdata#torsionAverage | blueprint/parts/p4-measure.tex#bp:p4:matrix-norms@L527-L527 | cited at this line (statement; \ref{bp:p0:stripdata})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:mn-rowsum
KIND: step
TITLE: Row sums
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:mn-rowsum@L536-L543
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:mn-rowsum@L536-L543
CONTRACT_ID: step:p4:mn-rowsum
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:operator-norms, bp:p1:matrix-norms, bp:p1:ext-integral
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:operator-norms | blueprint/parts/p4-measure.tex#step:p4:mn-rowsum@L537-L537 | cited at this line (step; \ref{bp:p1:operator-norms})
EDGE: bp:p1:matrix-norms | blueprint/parts/p4-measure.tex#step:p4:mn-rowsum@L538-L538 | cited at this line (step; \ref{bp:p1:matrix-norms})
EDGE: bp:p1:ext-integral | blueprint/parts/p4-measure.tex#step:p4:mn-rowsum@L542-L542 | cited at this line (step; \ref{bp:p1:ext-integral})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p4:torsion-regular
KIND: lemma
TITLE: Guarded facts for the frame and the torsion
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:torsion-regular@L546-L561
PROOF_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:torsion-regular@L563-L581
CONTRACT_ID: bp:p4:torsion-regular
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p4:tr-inverse, step:p4:tr-torsion, step:p4:tr-periodic
ROUTES: -
ROUTE_FOR: -
EDGE: step:p4:tr-inverse | blueprint/parts/p4-measure.tex#bp:p4:torsion-regular@L564-L564 | proof step of this result
EDGE: step:p4:tr-torsion | blueprint/parts/p4-measure.tex#bp:p4:torsion-regular@L570-L570 | proof step of this result
EDGE: step:p4:tr-periodic | blueprint/parts/p4-measure.tex#bp:p4:torsion-regular@L576-L576 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:tr-inverse
KIND: step
TITLE: Inverse
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:tr-inverse@L564-L568
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:tr-inverse@L564-L568
CONTRACT_ID: step:p4:tr-inverse
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:holomorphic-regularity, bp:p1:holomorphic-inverse
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:holomorphic-regularity | blueprint/parts/p4-measure.tex#step:p4:tr-inverse@L565-L565 | cited at this line (step; \ref{bp:p1:holomorphic-regularity})
EDGE: bp:p1:holomorphic-inverse | blueprint/parts/p4-measure.tex#step:p4:tr-inverse@L568-L568 | cited at this line (step; \ref{bp:p1:holomorphic-inverse})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:tr-torsion
KIND: step
TITLE: Frame and torsion
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:tr-torsion@L570-L574
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:tr-torsion@L570-L574
CONTRACT_ID: step:p4:tr-torsion
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p4:matrix-norms
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p4:matrix-norms | blueprint/parts/p4-measure.tex#step:p4:tr-torsion@L574-L574 | cited at this line (step; \ref{bp:p4:matrix-norms})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:tr-periodic
KIND: step
TITLE: Periodicity
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:tr-periodic@L576-L580
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:tr-periodic@L576-L580
CONTRACT_ID: step:p4:tr-periodic
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p4:h1
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p4:h1 | blueprint/parts/p4-measure.tex#step:p4:tr-periodic@L580-L580 | cited at this line (step; \ref{bp:p4:h1})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p4:stab
KIND: theorem
TITLE: STAB
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:stab@L583-L601
PROOF_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:stab@L603-L665
CONTRACT_ID: bp:p4:stab
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p4:stab-small, step:p4:stab-cauchy, step:p4:stab-ball, step:p4:stab-gram, step:p4:stab-frame, step:p4:stab-xn, step:p4:stab-torsion, step:p4:stab-twist, step:p4:stab-h2h4, bp:p4:parameters
ROUTES: -
ROUTE_FOR: -
EDGE: step:p4:stab-small | blueprint/parts/p4-measure.tex#bp:p4:stab@L604-L604 | proof step of this result
EDGE: step:p4:stab-cauchy | blueprint/parts/p4-measure.tex#bp:p4:stab@L610-L610 | proof step of this result
EDGE: step:p4:stab-ball | blueprint/parts/p4-measure.tex#bp:p4:stab@L619-L619 | proof step of this result
EDGE: step:p4:stab-gram | blueprint/parts/p4-measure.tex#bp:p4:stab@L624-L624 | proof step of this result
EDGE: step:p4:stab-frame | blueprint/parts/p4-measure.tex#bp:p4:stab@L631-L631 | proof step of this result
EDGE: step:p4:stab-xn | blueprint/parts/p4-measure.tex#bp:p4:stab@L638-L638 | proof step of this result
EDGE: step:p4:stab-torsion | blueprint/parts/p4-measure.tex#bp:p4:stab@L649-L649 | proof step of this result
EDGE: step:p4:stab-twist | blueprint/parts/p4-measure.tex#bp:p4:stab@L654-L654 | proof step of this result
EDGE: step:p4:stab-h2h4 | blueprint/parts/p4-measure.tex#bp:p4:stab@L661-L661 | proof step of this result
EDGE: bp:p4:parameters | blueprint/parts/p4-measure.tex#bp:p4:stab@L600-L600 | cited at this line (statement; \ref{bp:p4:parameters})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:stab-small
KIND: step
TITLE: Smallness bookkeeping
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:stab-small@L604-L608
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:stab-small@L604-L608
CONTRACT_ID: step:p4:stab-small
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

NODE: step:p4:stab-cauchy
KIND: step
TITLE: Cauchy estimates
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:stab-cauchy@L610-L617
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:stab-cauchy@L610-L617
CONTRACT_ID: step:p4:stab-cauchy
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:cauchy-strip, bp:p1:holomorphic-regularity
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:cauchy-strip | blueprint/parts/p4-measure.tex#step:p4:stab-cauchy@L611-L611 | cited at this line (step; \ref{bp:p1:cauchy-strip})
EDGE: bp:p1:holomorphic-regularity | blueprint/parts/p4-measure.tex#step:p4:stab-cauchy@L613-L613 | cited at this line (step; \ref{bp:p1:holomorphic-regularity})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:stab-ball
KIND: step
TITLE: Neighbourhood
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:stab-ball@L619-L622
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:stab-ball@L619-L622
CONTRACT_ID: step:p4:stab-ball
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p4:unperturbed
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p4:unperturbed | blueprint/parts/p4-measure.tex#step:p4:stab-ball@L622-L622 | cited at this line (step; \ref{bp:p4:unperturbed})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:stab-gram
KIND: step
TITLE: Gram matrix
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:stab-gram@L624-L629
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:stab-gram@L624-L629
CONTRACT_ID: step:p4:stab-gram
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p4:matrix-norms, bp:p1:neumann, bp:p4:torsion-regular
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p4:matrix-norms | blueprint/parts/p4-measure.tex#step:p4:stab-gram@L625-L625 | cited at this line (step; \ref{bp:p4:matrix-norms})
EDGE: bp:p1:neumann | blueprint/parts/p4-measure.tex#step:p4:stab-gram@L627-L627 | cited at this line (step; \ref{bp:p1:neumann})
EDGE: bp:p4:torsion-regular | blueprint/parts/p4-measure.tex#step:p4:stab-gram@L629-L629 | cited at this line (step; \ref{bp:p4:torsion-regular})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:stab-frame
KIND: step
TITLE: Normal frame
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:stab-frame@L631-L636
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:stab-frame@L631-L636
CONTRACT_ID: step:p4:stab-frame
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p4:torsion-regular
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p4:torsion-regular | blueprint/parts/p4-measure.tex#step:p4:stab-frame@L633-L633 | cited at this line (step; \ref{bp:p4:torsion-regular})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:stab-xn
KIND: step
TITLE: The vector $X_N$
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:stab-xn@L638-L647
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:stab-xn@L638-L647
CONTRACT_ID: step:p4:stab-xn
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p4:h1, bp:p1:increments-open, bp:p4:unperturbed
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p4:h1 | blueprint/parts/p4-measure.tex#step:p4:stab-xn@L641-L641 | cited at this line (step; \ref{bp:p4:h1})
EDGE: bp:p1:increments-open | blueprint/parts/p4-measure.tex#step:p4:stab-xn@L641-L641 | cited at this line (step; \ref{bp:p1:increments-open})
EDGE: bp:p4:unperturbed | blueprint/parts/p4-measure.tex#step:p4:stab-xn@L643-L643 | cited at this line (step; \ref{bp:p4:unperturbed})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:stab-torsion
KIND: step
TITLE: Torsion
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:stab-torsion@L649-L652
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:stab-torsion@L649-L652
CONTRACT_ID: step:p4:stab-torsion
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p4:matrix-norms
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p4:matrix-norms | blueprint/parts/p4-measure.tex#step:p4:stab-torsion@L651-L651 | cited at this line (step; \ref{bp:p4:matrix-norms})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:stab-twist
KIND: step
TITLE: Twist
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:stab-twist@L654-L659
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:stab-twist@L654-L659
CONTRACT_ID: step:p4:stab-twist
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p4:torsion-regular, bp:p4:unperturbed, bp:p4:matrix-norms, bp:p1:neumann
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p4:torsion-regular | blueprint/parts/p4-measure.tex#step:p4:stab-twist@L655-L655 | cited at this line (step; \ref{bp:p4:torsion-regular})
EDGE: bp:p4:unperturbed | blueprint/parts/p4-measure.tex#step:p4:stab-twist@L655-L655 | cited at this line (step; \ref{bp:p4:unperturbed})
EDGE: bp:p4:matrix-norms | blueprint/parts/p4-measure.tex#step:p4:stab-twist@L656-L656 | cited at this line (step; \ref{bp:p4:matrix-norms})
EDGE: bp:p1:neumann | blueprint/parts/p4-measure.tex#step:p4:stab-twist@L658-L658 | cited at this line (step; \ref{bp:p1:neumann})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:stab-h2h4
KIND: step
TITLE: The hypotheses H2--H4
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:stab-h2h4@L661-L664
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:stab-h2h4@L661-L664
CONTRACT_ID: step:p4:stab-h2h4
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
