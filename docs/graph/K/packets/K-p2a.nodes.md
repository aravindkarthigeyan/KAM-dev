NODE: bp:p2:standing
KIND: definition
TITLE: Standing data of Part~\ref{bp:p2}
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:standing@L56-L65
PROOF_SOURCE: -
CONTRACT_ID: bp:p2:standing
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
NOTE: standing hypotheses of a part (a definition-like package; confirm modelling)

NODE: bp:p2:constants
KIND: definition
TITLE: Exponents and constants
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:constants@L78-L108
PROOF_SOURCE: -
CONTRACT_ID: bp:p2:constants
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:cohomological
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:cohomological | blueprint/parts/p2-aposteriori.tex#bp:p2:constants@L79-L79 | cited at this line (statement; \ref{bp:p1:cohomological})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p2:matrix
KIND: corollary
TITLE: Matrix norms
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:matrix@L122-L139
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:matrix@L141-L156
CONTRACT_ID: bp:p2:matrix
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p2:matrix-op, step:p2:matrix-transpose, step:p2:matrix-blocks
ROUTES: -
ROUTE_FOR: -
EDGE: step:p2:matrix-op | blueprint/parts/p2-aposteriori.tex#bp:p2:matrix@L142-L142 | proof step of this result
EDGE: step:p2:matrix-transpose | blueprint/parts/p2-aposteriori.tex#bp:p2:matrix@L146-L146 | proof step of this result
EDGE: step:p2:matrix-blocks | blueprint/parts/p2-aposteriori.tex#bp:p2:matrix@L149-L149 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:matrix-op
KIND: step
TITLE: Operator norm
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:matrix-op@L142-L144
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:matrix-op@L142-L144
CONTRACT_ID: step:p2:matrix-op
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:operator-norms
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:operator-norms | blueprint/parts/p2-aposteriori.tex#step:p2:matrix-op@L143-L143 | cited at this line (step; \ref{bp:p1:operator-norms})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:matrix-transpose
KIND: step
TITLE: Transpose and products
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:matrix-transpose@L146-L147
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:matrix-transpose@L146-L147
CONTRACT_ID: step:p2:matrix-transpose
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:matrix-norms
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:matrix-norms | blueprint/parts/p2-aposteriori.tex#step:p2:matrix-transpose@L147-L147 | cited at this line (step; \ref{bp:p1:matrix-norms})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:matrix-blocks
KIND: step
TITLE: Blocks and $\Omega_0$
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:matrix-blocks@L149-L155
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:matrix-blocks@L149-L155
CONTRACT_ID: step:p2:matrix-blocks
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:operator-norms, bp:p1:matrix-norms
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:operator-norms | blueprint/parts/p2-aposteriori.tex#step:p2:matrix-blocks@L150-L150 | cited at this line (step; \ref{bp:p1:operator-norms})
EDGE: bp:p1:matrix-norms | blueprint/parts/p2-aposteriori.tex#step:p2:matrix-blocks@L151-L151 | cited at this line (step; \ref{bp:p1:matrix-norms})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p2:averages
KIND: corollary
TITLE: Averages
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:averages@L158-L167
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:averages@L169-L180
CONTRACT_ID: bp:p2:averages
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p2:avg-bound, step:p2:avg-deriv
ROUTES: -
ROUTE_FOR: -
EDGE: step:p2:avg-bound | blueprint/parts/p2-aposteriori.tex#bp:p2:averages@L170-L170 | proof step of this result
EDGE: step:p2:avg-deriv | blueprint/parts/p2-aposteriori.tex#bp:p2:averages@L175-L175 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:avg-bound
KIND: step
TITLE: Integrability and the bound
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:avg-bound@L170-L173
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:avg-bound@L170-L173
CONTRACT_ID: step:p2:avg-bound
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:ext-integral, bp:p1:averages-matrix
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:ext-integral | blueprint/parts/p2-aposteriori.tex#step:p2:avg-bound@L171-L171 | cited at this line (step; \ref{bp:p1:ext-integral})
EDGE: bp:p1:averages-matrix | blueprint/parts/p2-aposteriori.tex#step:p2:avg-bound@L172-L172 | cited at this line (step; \ref{bp:p1:averages-matrix})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:avg-deriv
KIND: step
TITLE: Derivatives
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:avg-deriv@L175-L179
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:avg-deriv@L175-L179
CONTRACT_ID: step:p2:avg-deriv
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:averages-real, bp:p1:periodic-bounded, bp:p1:averages
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:averages-real | blueprint/parts/p2-aposteriori.tex#step:p2:avg-deriv@L178-L178 | cited at this line (step; \ref{bp:p1:averages-real})
EDGE: bp:p1:periodic-bounded | blueprint/parts/p2-aposteriori.tex#step:p2:avg-deriv@L179-L179 | cited at this line (step; \ref{bp:p1:periodic-bounded})
EDGE: bp:p1:averages | blueprint/parts/p2-aposteriori.tex#step:p2:avg-deriv@L179-L179 | cited at this line (step; \ref{bp:p1:averages})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p2:cohomological
KIND: corollary
TITLE: Cohomological equation in operator norms
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:cohomological@L186-L198
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:cohomological@L200-L212
CONTRACT_ID: bp:p2:cohomological
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p2:coh-components, step:p2:coh-apriori
ROUTES: -
ROUTE_FOR: -
EDGE: step:p2:coh-components | blueprint/parts/p2-aposteriori.tex#bp:p2:cohomological@L201-L201 | proof step of this result
EDGE: step:p2:coh-apriori | blueprint/parts/p2-aposteriori.tex#bp:p2:cohomological@L207-L207 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:coh-components
KIND: step
TITLE: Componentwise solution
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:coh-components@L201-L205
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:coh-components@L201-L205
CONTRACT_ID: step:p2:coh-components
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:cohomological
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:cohomological | blueprint/parts/p2-aposteriori.tex#step:p2:coh-components@L202-L202 | cited at this line (step; \ref{bp:p1:cohomological})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:coh-apriori
KIND: step
TITLE: The a-priori bound
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:coh-apriori@L207-L211
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:coh-apriori@L207-L211
CONTRACT_ID: step:p2:coh-apriori
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:averages, bp:p1:cohomological-operator
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:averages | blueprint/parts/p2-aposteriori.tex#step:p2:coh-apriori@L209-L209 | cited at this line (step; \ref{bp:p2:averages})
EDGE: bp:p1:cohomological-operator | blueprint/parts/p2-aposteriori.tex#step:p2:coh-apriori@L210-L210 | cited at this line (step; \ref{bp:p1:cohomological-operator})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p2:hamiltonian
KIND: lemma
TITLE: The Hamiltonian vector field
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:hamiltonian@L214-L230
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:hamiltonian@L232-L258
CONTRACT_ID: bp:p2:hamiltonian
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p2:ham-regular, step:p2:ham-periodic, step:p2:ham-real, step:p2:ham-symplectic, step:p2:ham-mvt, bp:p2:standing
ROUTES: -
ROUTE_FOR: -
EDGE: step:p2:ham-regular | blueprint/parts/p2-aposteriori.tex#bp:p2:hamiltonian@L233-L233 | proof step of this result
EDGE: step:p2:ham-periodic | blueprint/parts/p2-aposteriori.tex#bp:p2:hamiltonian@L238-L238 | proof step of this result
EDGE: step:p2:ham-real | blueprint/parts/p2-aposteriori.tex#bp:p2:hamiltonian@L243-L243 | proof step of this result
EDGE: step:p2:ham-symplectic | blueprint/parts/p2-aposteriori.tex#bp:p2:hamiltonian@L248-L248 | proof step of this result
EDGE: step:p2:ham-mvt | blueprint/parts/p2-aposteriori.tex#bp:p2:hamiltonian@L253-L253 | proof step of this result
EDGE: bp:p2:standing | blueprint/parts/p2-aposteriori.tex#bp:p2:hamiltonian@L215-L215 | cited at this line (statement; \ref{bp:p2:standing})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:ham-regular
KIND: step
TITLE: Regularity
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:ham-regular@L233-L236
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:ham-regular@L233-L236
CONTRACT_ID: step:p2:ham-regular
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:holomorphic-regularity
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:holomorphic-regularity | blueprint/parts/p2-aposteriori.tex#step:p2:ham-regular@L234-L234 | cited at this line (step; \ref{bp:p1:holomorphic-regularity})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:ham-periodic
KIND: step
TITLE: Periodicity
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:ham-periodic@L238-L241
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:ham-periodic@L238-L241
CONTRACT_ID: step:p2:ham-periodic
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

NODE: step:p2:ham-real
KIND: step
TITLE: Realness
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:ham-real@L243-L246
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:ham-real@L243-L246
CONTRACT_ID: step:p2:ham-real
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

NODE: step:p2:ham-symplectic
KIND: step
TITLE: Symplectic identity
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:ham-symplectic@L248-L251
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:ham-symplectic@L248-L251
CONTRACT_ID: step:p2:ham-symplectic
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
EDGE: bp:p1:hamiltonian-real | blueprint/parts/p2-aposteriori.tex#step:p2:ham-symplectic@L249-L249 | cited at this line (step; \ref{bp:p1:hamiltonian-real})
EDGE: bp:p1:holomorphic-regularity | blueprint/parts/p2-aposteriori.tex#step:p2:ham-symplectic@L250-L250 | cited at this line (step; \ref{bp:p1:holomorphic-regularity})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:ham-mvt
KIND: step
TITLE: Mean value estimates
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:ham-mvt@L253-L257
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:ham-mvt@L253-L257
CONTRACT_ID: step:p2:ham-mvt
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:increments-open, bp:p1:taylor
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:increments-open | blueprint/parts/p2-aposteriori.tex#step:p2:ham-mvt@L255-L255 | cited at this line (step; \ref{bp:p1:increments-open})
EDGE: bp:p1:taylor | blueprint/parts/p2-aposteriori.tex#step:p2:ham-mvt@L256-L256 | cited at this line (step; \ref{bp:p1:taylor})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p2:transposes
KIND: claim
TITLE: Transposed derivatives
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:transposes@L260-L265
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:transposes@L260-L265
CONTRACT_ID: bp:p2:transposes
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:matrix, bp:p2:hamiltonian
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:matrix | blueprint/parts/p2-aposteriori.tex#bp:p2:transposes@L262-L262 | cited at this line (statement; \ref{bp:p2:matrix})
EDGE: bp:p2:hamiltonian | blueprint/parts/p2-aposteriori.tex#bp:p2:transposes@L263-L263 | cited at this line (statement; \ref{bp:p2:hamiltonian})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: remark: its justification is inline (confirm, or exclude if not a mathematical claim)

NODE: bp:p2:objects
KIND: definition
TITLE: Objects attached to a parameterization
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:objects@L270-L293
PROOF_SOURCE: -
CONTRACT_ID: bp:p2:objects
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

NODE: bp:p2:frozen-agreement
KIND: claim
TITLE: Agreement with the frozen definitions
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:frozen-agreement@L295-L304
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:frozen-agreement@L295-L304
CONTRACT_ID: bp:p2:frozen-agreement
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
EDGE: bp:p0:totality | blueprint/parts/p2-aposteriori.tex#bp:p2:frozen-agreement@L301-L301 | cited at this line (statement; \ref{bp:p0:totality})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: remark: its justification is inline (confirm, or exclude if not a mathematical claim)

NODE: bp:p2:admissible
KIND: definition
TITLE: Admissible parameterization
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:admissible@L306-L317
PROOF_SOURCE: -
CONTRACT_ID: bp:p2:admissible
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

NODE: bp:p2:periodicity
KIND: lemma
TITLE: Periodicity and realness of the attached objects
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:periodicity@L324-L333
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:periodicity@L335-L355
CONTRACT_ID: bp:p2:periodicity
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p2:per-dk, step:p2:per-compose, step:p2:per-real
ROUTES: -
ROUTE_FOR: -
EDGE: step:p2:per-dk | blueprint/parts/p2-aposteriori.tex#bp:p2:periodicity@L336-L336 | proof step of this result
EDGE: step:p2:per-compose | blueprint/parts/p2-aposteriori.tex#bp:p2:periodicity@L342-L342 | proof step of this result
EDGE: step:p2:per-real | blueprint/parts/p2-aposteriori.tex#bp:p2:periodicity@L348-L348 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:per-dk
KIND: step
TITLE: Periodicity of $DK$ and $K^I$
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:per-dk@L336-L340
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:per-dk@L336-L340
CONTRACT_ID: step:p2:per-dk
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

NODE: step:p2:per-compose
KIND: step
TITLE: Periodicity of the composed objects
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:per-compose@L342-L346
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:per-compose@L342-L346
CONTRACT_ID: step:p2:per-compose
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:hamiltonian
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:hamiltonian | blueprint/parts/p2-aposteriori.tex#step:p2:per-compose@L343-L343 | cited at this line (step; \ref{bp:p2:hamiltonian})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:per-real
KIND: step
TITLE: Realness
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:per-real@L348-L354
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:per-real@L348-L354
CONTRACT_ID: step:p2:per-real
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:hamiltonian, bp:p1:real-inverse, bp:p2:averages
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:hamiltonian | blueprint/parts/p2-aposteriori.tex#step:p2:per-real@L351-L351 | cited at this line (step; \ref{bp:p2:hamiltonian})
EDGE: bp:p1:real-inverse | blueprint/parts/p2-aposteriori.tex#step:p2:per-real@L352-L352 | cited at this line (step; \ref{bp:p1:real-inverse})
EDGE: bp:p2:averages | blueprint/parts/p2-aposteriori.tex#step:p2:per-real@L354-L354 | cited at this line (step; \ref{bp:p2:averages})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p2:frequency
KIND: lemma
TITLE: Frequency bound
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:frequency@L357-L365
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:frequency@L367-L380
CONTRACT_ID: bp:p2:frequency
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p2:freq-solve, step:p2:freq-upper, step:p2:freq-lower, bp:p2:admissible
ROUTES: -
ROUTE_FOR: -
EDGE: step:p2:freq-solve | blueprint/parts/p2-aposteriori.tex#bp:p2:frequency@L368-L368 | proof step of this result
EDGE: step:p2:freq-upper | blueprint/parts/p2-aposteriori.tex#bp:p2:frequency@L372-L372 | proof step of this result
EDGE: step:p2:freq-lower | blueprint/parts/p2-aposteriori.tex#bp:p2:frequency@L377-L377 | proof step of this result
EDGE: bp:p2:admissible | blueprint/parts/p2-aposteriori.tex#bp:p2:frequency@L358-L358 | cited at this line (statement; \ref{bp:p2:A3})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:freq-solve
KIND: step
TITLE: Solving for $\omega$
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:freq-solve@L368-L370
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:freq-solve@L368-L370
CONTRACT_ID: step:p2:freq-solve
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

NODE: step:p2:freq-upper
KIND: step
TITLE: Upper bound
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:freq-upper@L372-L375
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:freq-upper@L372-L375
CONTRACT_ID: step:p2:freq-upper
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:matrix
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:matrix | blueprint/parts/p2-aposteriori.tex#step:p2:freq-upper@L373-L373 | cited at this line (step; \ref{bp:p2:matrix})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:freq-lower
KIND: step
TITLE: Lower bound
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:freq-lower@L377-L379
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:freq-lower@L377-L379
CONTRACT_ID: step:p2:freq-lower
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

NODE: bp:p2:frame-basic
KIND: lemma
TITLE: Regularity and bounds of the frame
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:frame-basic@L382-L398
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:frame-basic@L400-L425
CONTRACT_ID: bp:p2:frame-basic
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p2:fb-holo, step:p2:fb-bounds, step:p2:fb-eta, step:p2:fb-torsion, bp:p2:admissible, bp:p2:torsion-route
ROUTES: -
ROUTE_FOR: -
EDGE: step:p2:fb-holo | blueprint/parts/p2-aposteriori.tex#bp:p2:frame-basic@L401-L401 | proof step of this result
EDGE: step:p2:fb-bounds | blueprint/parts/p2-aposteriori.tex#bp:p2:frame-basic@L408-L408 | proof step of this result
EDGE: step:p2:fb-eta | blueprint/parts/p2-aposteriori.tex#bp:p2:frame-basic@L414-L414 | proof step of this result
EDGE: step:p2:fb-torsion | blueprint/parts/p2-aposteriori.tex#bp:p2:frame-basic@L418-L418 | proof step of this result
EDGE: bp:p2:admissible | blueprint/parts/p2-aposteriori.tex#bp:p2:frame-basic@L383-L383 | cited at this line (statement; \ref{bp:p2:A2})
EDGE: bp:p2:torsion-route | blueprint/parts/p2-aposteriori.tex#bp:p2:frame-basic@L397-L397 | cited at this line (statement; \ref{bp:p2:torsion-route})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:fb-holo
KIND: step
TITLE: Holomorphy
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:fb-holo@L401-L406
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:fb-holo@L401-L406
CONTRACT_ID: step:p2:fb-holo
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:hamiltonian, bp:p2:admissible, bp:p1:holomorphic-inverse
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:hamiltonian | blueprint/parts/p2-aposteriori.tex#step:p2:fb-holo@L403-L403 | cited at this line (step; \ref{bp:p2:hamiltonian})
EDGE: bp:p2:admissible | blueprint/parts/p2-aposteriori.tex#step:p2:fb-holo@L403-L403 | cited at this line (step; \ref{bp:p2:A4})
EDGE: bp:p1:holomorphic-inverse | blueprint/parts/p2-aposteriori.tex#step:p2:fb-holo@L404-L404 | cited at this line (step; \ref{bp:p1:holomorphic-inverse})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:fb-bounds
KIND: step
TITLE: Frame bounds
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:fb-bounds@L408-L412
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:fb-bounds@L408-L412
CONTRACT_ID: step:p2:fb-bounds
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:admissible, bp:p2:matrix, bp:p2:standing
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:admissible | blueprint/parts/p2-aposteriori.tex#step:p2:fb-bounds@L409-L409 | cited at this line (step; \ref{bp:p2:A3})
EDGE: bp:p2:matrix | blueprint/parts/p2-aposteriori.tex#step:p2:fb-bounds@L409-L409 | cited at this line (step; \ref{bp:p2:matrix})
EDGE: bp:p2:standing | blueprint/parts/p2-aposteriori.tex#step:p2:fb-bounds@L412-L412 | cited at this line (step; \ref{bp:p2:standing})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:fb-eta
KIND: step
TITLE: Bounds on $\eta$
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:fb-eta@L414-L416
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:fb-eta@L414-L416
CONTRACT_ID: step:p2:fb-eta
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

NODE: step:p2:fb-torsion
KIND: step
TITLE: Torsion bound
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:fb-torsion@L418-L424
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:fb-torsion@L418-L424
CONTRACT_ID: step:p2:fb-torsion
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:cauchy-corollaries
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:cauchy-corollaries | blueprint/parts/p2-aposteriori.tex#step:p2:fb-torsion@L419-L419 | cited at this line (step; \ref{bp:p1:cauchy-corollaries})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p2:torsion-route
KIND: claim
TITLE: Route for the torsion
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:torsion-route@L427-L432
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:torsion-route@L427-L432
CONTRACT_ID: bp:p2:torsion-route
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:frequency
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:frequency | blueprint/parts/p2-aposteriori.tex#bp:p2:torsion-route@L430-L430 | cited at this line (statement; \ref{bp:p2:frequency})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: remark: its justification is inline (confirm, or exclude if not a mathematical claim)

NODE: bp:p2:frame-identities
KIND: lemma
TITLE: Frame identities
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:frame-identities@L441-L463
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:frame-identities@L465-L513
CONTRACT_ID: bp:p2:frame-identities
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p2:fi-products, step:p2:fi-sym, step:p2:fi-dl, step:p2:fi-domegak, step:p2:fi-blocks, step:p2:fi-22, step:p2:fi-q
ROUTES: -
ROUTE_FOR: -
EDGE: step:p2:fi-products | blueprint/parts/p2-aposteriori.tex#bp:p2:frame-identities@L466-L466 | proof step of this result
EDGE: step:p2:fi-sym | blueprint/parts/p2-aposteriori.tex#bp:p2:frame-identities@L471-L471 | proof step of this result
EDGE: step:p2:fi-dl | blueprint/parts/p2-aposteriori.tex#bp:p2:frame-identities@L477-L477 | proof step of this result
EDGE: step:p2:fi-domegak | blueprint/parts/p2-aposteriori.tex#bp:p2:frame-identities@L483-L483 | proof step of this result
EDGE: step:p2:fi-blocks | blueprint/parts/p2-aposteriori.tex#bp:p2:frame-identities@L489-L489 | proof step of this result
EDGE: step:p2:fi-22 | blueprint/parts/p2-aposteriori.tex#bp:p2:frame-identities@L499-L499 | proof step of this result
EDGE: step:p2:fi-q | blueprint/parts/p2-aposteriori.tex#bp:p2:frame-identities@L509-L509 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:fi-products
KIND: step
TITLE: Products with $\Omega_0$
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:fi-products@L466-L469
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:fi-products@L466-L469
CONTRACT_ID: step:p2:fi-products
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

NODE: step:p2:fi-sym
KIND: step
TITLE: Symplecticity defect
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:fi-sym@L471-L475
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:fi-sym@L471-L475
CONTRACT_ID: step:p2:fi-sym
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

NODE: step:p2:fi-dl
KIND: step
TITLE: Derivative of the frame along $\omega$
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:fi-dl@L477-L481
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:fi-dl@L477-L481
CONTRACT_ID: step:p2:fi-dl
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:holomorphic-regularity
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:holomorphic-regularity | blueprint/parts/p2-aposteriori.tex#step:p2:fi-dl@L478-L478 | cited at this line (step; \ref{bp:p1:holomorphic-regularity})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:fi-domegak
KIND: step
TITLE: Derivative of $\Omega_K$
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:fi-domegak@L483-L487
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:fi-domegak@L483-L487
CONTRACT_ID: step:p2:fi-domegak
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:hamiltonian
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:hamiltonian | blueprint/parts/p2-aposteriori.tex#step:p2:fi-domegak@L487-L487 | cited at this line (step; \ref{bp:p2:hamiltonian})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:fi-blocks
KIND: step
TITLE: Block form of the reduced field
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:fi-blocks@L489-L497
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:fi-blocks@L489-L497
CONTRACT_ID: step:p2:fi-blocks
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:matrix
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:matrix | blueprint/parts/p2-aposteriori.tex#step:p2:fi-blocks@L491-L491 | cited at this line (step; \ref{bp:p2:matrix})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:fi-22
KIND: step
TITLE: The $(2,2)$ block
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:fi-22@L499-L507
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:fi-22@L499-L507
CONTRACT_ID: step:p2:fi-22
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:hamiltonian
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:hamiltonian | blueprint/parts/p2-aposteriori.tex#step:p2:fi-22@L502-L502 | cited at this line (step; \ref{bp:p2:hamiltonian})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:fi-q
KIND: step
TITLE: The products with $Q$
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:fi-q@L509-L512
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:fi-q@L509-L512
CONTRACT_ID: step:p2:fi-q
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:objects, bp:p2:matrix
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:objects | blueprint/parts/p2-aposteriori.tex#step:p2:fi-q@L511-L511 | cited at this line (step; \ref{bp:p2:objects})
EDGE: bp:p2:matrix | blueprint/parts/p2-aposteriori.tex#step:p2:fi-q@L512-L512 | cited at this line (step; \ref{bp:p2:matrix})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p2:exactness
KIND: lemma
TITLE: Exactness: two vanishing averages
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:exactness@L515-L523
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:exactness@L525-L547
CONTRACT_ID: bp:p2:exactness
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p2:ex-curl, step:p2:ex-avg-omega, step:p2:ex-gradient, step:p2:ex-avg-eta
ROUTES: -
ROUTE_FOR: -
EDGE: step:p2:ex-curl | blueprint/parts/p2-aposteriori.tex#bp:p2:exactness@L526-L526 | proof step of this result
EDGE: step:p2:ex-avg-omega | blueprint/parts/p2-aposteriori.tex#bp:p2:exactness@L534-L534 | proof step of this result
EDGE: step:p2:ex-gradient | blueprint/parts/p2-aposteriori.tex#bp:p2:exactness@L538-L538 | proof step of this result
EDGE: step:p2:ex-avg-eta | blueprint/parts/p2-aposteriori.tex#bp:p2:exactness@L543-L543 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:ex-curl
KIND: step
TITLE: $\Omega_K$ is a curl of periodic functions
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:ex-curl@L526-L532
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:ex-curl@L526-L532
CONTRACT_ID: step:p2:ex-curl
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:holomorphic-regularity
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:holomorphic-regularity | blueprint/parts/p2-aposteriori.tex#step:p2:ex-curl@L531-L531 | cited at this line (step; \ref{bp:p1:holomorphic-regularity})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:ex-avg-omega
KIND: step
TITLE: Average of $\Omega_K$
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:ex-avg-omega@L534-L536
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:ex-avg-omega@L534-L536
CONTRACT_ID: step:p2:ex-avg-omega
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:periodicity, bp:p2:averages
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:periodicity | blueprint/parts/p2-aposteriori.tex#step:p2:ex-avg-omega@L535-L535 | cited at this line (step; \ref{bp:p2:periodicity})
EDGE: bp:p2:averages | blueprint/parts/p2-aposteriori.tex#step:p2:ex-avg-omega@L536-L536 | cited at this line (step; \ref{bp:p2:averages})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:ex-gradient
KIND: step
TITLE: The gradient identity
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:ex-gradient@L538-L541
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:ex-gradient@L538-L541
CONTRACT_ID: step:p2:ex-gradient
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:hamiltonian
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:hamiltonian | blueprint/parts/p2-aposteriori.tex#step:p2:ex-gradient@L539-L539 | cited at this line (step; \ref{bp:p2:hamiltonian})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:ex-avg-eta
KIND: step
TITLE: Average of $L^\top\Omega_0E$
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:ex-avg-eta@L543-L546
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:ex-avg-eta@L543-L546
CONTRACT_ID: step:p2:ex-avg-eta
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:periodicity, bp:p2:averages
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:periodicity | blueprint/parts/p2-aposteriori.tex#step:p2:ex-avg-eta@L544-L544 | cited at this line (step; \ref{bp:p2:periodicity})
EDGE: bp:p2:averages | blueprint/parts/p2-aposteriori.tex#step:p2:ex-avg-eta@L545-L545 | cited at this line (step; \ref{bp:p2:averages})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p2:geometry
KIND: lemma
TITLE: Approximate Lagrangian property, symplecticity and reducibility
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:geometry@L549-L563
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:geometry@L565-L596
CONTRACT_ID: bp:p2:geometry
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p2:geo-de, step:p2:geo-domegak, step:p2:geo-ered, step:p2:geo-omegak, step:p2:geo-esym
ROUTES: -
ROUTE_FOR: -
EDGE: step:p2:geo-de | blueprint/parts/p2-aposteriori.tex#bp:p2:geometry@L566-L566 | proof step of this result
EDGE: step:p2:geo-domegak | blueprint/parts/p2-aposteriori.tex#bp:p2:geometry@L571-L571 | proof step of this result
EDGE: step:p2:geo-ered | blueprint/parts/p2-aposteriori.tex#bp:p2:geometry@L576-L576 | proof step of this result
EDGE: step:p2:geo-omegak | blueprint/parts/p2-aposteriori.tex#bp:p2:geometry@L582-L582 | proof step of this result
EDGE: step:p2:geo-esym | blueprint/parts/p2-aposteriori.tex#bp:p2:geometry@L589-L589 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:geo-de
KIND: step
TITLE: Derivatives of the error
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:geo-de@L566-L569
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:geo-de@L566-L569
CONTRACT_ID: step:p2:geo-de
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:cauchy-strip, bp:p1:cauchy-corollaries
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:cauchy-strip | blueprint/parts/p2-aposteriori.tex#step:p2:geo-de@L568-L568 | cited at this line (step; \ref{bp:p1:cauchy-strip})
EDGE: bp:p1:cauchy-corollaries | blueprint/parts/p2-aposteriori.tex#step:p2:geo-de@L568-L568 | cited at this line (step; \ref{bp:p1:cauchy-corollaries})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:geo-domegak
KIND: step
TITLE: Bound on $\partial_\omega\Omega_K$
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:geo-domegak@L571-L574
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:geo-domegak@L571-L574
CONTRACT_ID: step:p2:geo-domegak
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:frame-identities, bp:p2:frame-basic
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:frame-identities | blueprint/parts/p2-aposteriori.tex#step:p2:geo-domegak@L572-L572 | cited at this line (step; \ref{bp:p2:frame-identities})
EDGE: bp:p2:frame-basic | blueprint/parts/p2-aposteriori.tex#step:p2:geo-domegak@L572-L572 | cited at this line (step; \ref{bp:p2:frame-basic})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:geo-ered
KIND: step
TITLE: Bound on $E_{\mathrm{red}}$
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:geo-ered@L576-L580
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:geo-ered@L576-L580
CONTRACT_ID: step:p2:geo-ered
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:frame-identities, bp:p2:matrix
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:frame-identities | blueprint/parts/p2-aposteriori.tex#step:p2:geo-ered@L577-L577 | cited at this line (step; \ref{bp:p2:frame-identities})
EDGE: bp:p2:matrix | blueprint/parts/p2-aposteriori.tex#step:p2:geo-ered@L577-L577 | cited at this line (step; \ref{bp:p2:matrix})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:geo-omegak
KIND: step
TITLE: The Lagrangian defect by the cohomological equation
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:geo-omegak@L582-L587
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:geo-omegak@L582-L587
CONTRACT_ID: step:p2:geo-omegak
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:exactness, bp:p2:cohomological
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:exactness | blueprint/parts/p2-aposteriori.tex#step:p2:geo-omegak@L584-L584 | cited at this line (step; \ref{bp:p2:exactness})
EDGE: bp:p2:cohomological | blueprint/parts/p2-aposteriori.tex#step:p2:geo-omegak@L585-L585 | cited at this line (step; \ref{bp:p2:cohomological})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:geo-esym
KIND: step
TITLE: The symplecticity defect
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:geo-esym@L589-L595
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:geo-esym@L589-L595
CONTRACT_ID: step:p2:geo-esym
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:frame-identities, bp:p2:matrix
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:frame-identities | blueprint/parts/p2-aposteriori.tex#step:p2:geo-esym@L590-L590 | cited at this line (step; \ref{bp:p2:frame-identities})
EDGE: bp:p2:matrix | blueprint/parts/p2-aposteriori.tex#step:p2:geo-esym@L590-L590 | cited at this line (step; \ref{bp:p2:matrix})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
