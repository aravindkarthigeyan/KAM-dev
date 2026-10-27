NODE: bp:p3:standing
KIND: definition
TITLE: Two invariant tori
STATEMENT_SOURCE: blueprint/parts/p3-uniqueness.tex#bp:p3:standing@L55-L72
PROOF_SOURCE: -
CONTRACT_ID: bp:p3:standing
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

NODE: bp:p3:matrix-norms
KIND: lemma
TITLE: Matrix norms of the frame
STATEMENT_SOURCE: blueprint/parts/p3-uniqueness.tex#bp:p3:matrix-norms@L124-L131
PROOF_SOURCE: blueprint/parts/p3-uniqueness.tex#bp:p3:matrix-norms@L133-L140
CONTRACT_ID: bp:p3:matrix-norms
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p3:norms-frame
ROUTES: -
ROUTE_FOR: -
EDGE: step:p3:norms-frame | blueprint/parts/p3-uniqueness.tex#bp:p3:matrix-norms@L134-L134 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p3:norms-frame
KIND: step
TITLE: The frame
STATEMENT_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:norms-frame@L134-L139
PROOF_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:norms-frame@L134-L139
CONTRACT_ID: step:p3:norms-frame
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:matrix-norms, bp:p1:operator-norms
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:matrix-norms | blueprint/parts/p3-uniqueness.tex#step:p3:norms-frame@L136-L136 | cited at this line (step; \ref{bp:p1:matrix-norms})
EDGE: bp:p1:operator-norms | blueprint/parts/p3-uniqueness.tex#step:p3:norms-frame@L139-L139 | cited at this line (step; \ref{bp:p1:operator-norms})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p3:lagrangian
KIND: lemma
TITLE: The reference torus is Lagrangian
STATEMENT_SOURCE: blueprint/parts/p3-uniqueness.tex#bp:p3:lagrangian@L149-L151
PROOF_SOURCE: blueprint/parts/p3-uniqueness.tex#bp:p3:lagrangian@L153-L171
CONTRACT_ID: bp:p3:lagrangian
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p3:lagrangian-transport, step:p3:lagrangian-unique
ROUTES: -
ROUTE_FOR: -
EDGE: step:p3:lagrangian-transport | blueprint/parts/p3-uniqueness.tex#bp:p3:lagrangian@L154-L154 | proof step of this result
EDGE: step:p3:lagrangian-unique | blueprint/parts/p3-uniqueness.tex#bp:p3:lagrangian@L160-L160 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p3:lagrangian-transport
KIND: step
TITLE: Invariance of $\Omega_{K_1}$ along the flow
STATEMENT_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:lagrangian-transport@L154-L158
PROOF_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:lagrangian-transport@L154-L158
CONTRACT_ID: step:p3:lagrangian-transport
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:frame-identities, bp:p2:periodicity, bp:p2:exactness
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:frame-identities | blueprint/parts/p3-uniqueness.tex#step:p3:lagrangian-transport@L156-L156 | cited at this line (step; \ref{bp:p2:frame-identities})
EDGE: bp:p2:periodicity | blueprint/parts/p3-uniqueness.tex#step:p3:lagrangian-transport@L157-L157 | cited at this line (step; \ref{bp:p2:periodicity})
EDGE: bp:p2:exactness | blueprint/parts/p3-uniqueness.tex#step:p3:lagrangian-transport@L157-L157 | cited at this line (step; \ref{bp:p2:exactness})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p3:lagrangian-unique
KIND: step
TITLE: Nonresonance
STATEMENT_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:lagrangian-unique@L160-L170
PROOF_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:lagrangian-unique@L160-L170
CONTRACT_ID: step:p3:lagrangian-unique
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:matrix-norms, bp:p3:matrix-norms, bp:p1:cohomological
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:matrix-norms | blueprint/parts/p3-uniqueness.tex#step:p3:lagrangian-unique@L161-L161 | cited at this line (step; \ref{bp:p1:matrix-norms})
EDGE: bp:p3:matrix-norms | blueprint/parts/p3-uniqueness.tex#step:p3:lagrangian-unique@L162-L162 | cited at this line (step; \ref{bp:p3:matrix-norms})
EDGE: bp:p1:cohomological | blueprint/parts/p3-uniqueness.tex#step:p3:lagrangian-unique@L167-L167 | cited at this line (step; \ref{bp:p1:cohomological})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p3:frequency-bound
KIND: lemma
TITLE: A priori bound on the frequency
STATEMENT_SOURCE: blueprint/parts/p3-uniqueness.tex#bp:p3:frequency-bound@L176-L178
PROOF_SOURCE: blueprint/parts/p3-uniqueness.tex#bp:p3:frequency-bound@L180-L191
CONTRACT_ID: bp:p3:frequency-bound
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p3:frequency-omega, step:p3:frequency-gamma
ROUTES: -
ROUTE_FOR: -
EDGE: step:p3:frequency-omega | blueprint/parts/p3-uniqueness.tex#bp:p3:frequency-bound@L181-L181 | proof step of this result
EDGE: step:p3:frequency-gamma | blueprint/parts/p3-uniqueness.tex#bp:p3:frequency-bound@L188-L188 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p3:frequency-omega
KIND: step
TITLE: Bound on $\omega$
STATEMENT_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:frequency-omega@L181-L186
PROOF_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:frequency-omega@L181-L186
CONTRACT_ID: step:p3:frequency-omega
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:admissible, bp:p2:frequency
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:admissible | blueprint/parts/p3-uniqueness.tex#step:p3:frequency-omega@L182-L182 | cited at this line (step; \ref{bp:p2:A3})
EDGE: bp:p2:frequency | blueprint/parts/p3-uniqueness.tex#step:p3:frequency-omega@L183-L183 | cited at this line (step; \ref{bp:p2:frequency})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p3:frequency-gamma
KIND: step
TITLE: Bound on $\gamma$
STATEMENT_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:frequency-gamma@L188-L190
PROOF_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:frequency-gamma@L188-L190
CONTRACT_ID: step:p3:frequency-gamma
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:frequency, bp:p0:diophantine#IsDiophantine
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:frequency | blueprint/parts/p3-uniqueness.tex#step:p3:frequency-gamma@L189-L189 | cited at this line (step; \ref{bp:p2:frequency})
EDGE: bp:p0:diophantine#IsDiophantine | blueprint/parts/p3-uniqueness.tex#step:p3:frequency-gamma@L190-L190 | cited at this line (step; \ref{bp:p0:diophantine})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p3:reducibility
KIND: lemma
TITLE: Exact reducibility
STATEMENT_SOURCE: blueprint/parts/p3-uniqueness.tex#bp:p3:reducibility@L193-L203
PROOF_SOURCE: blueprint/parts/p3-uniqueness.tex#bp:p3:reducibility@L205-L234
CONTRACT_ID: bp:p3:reducibility
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p3:red-holomorphy, step:p3:red-frame, step:p3:red-tangent, step:p3:red-normal, step:p3:red-assembly
ROUTES: -
ROUTE_FOR: -
EDGE: step:p3:red-holomorphy | blueprint/parts/p3-uniqueness.tex#bp:p3:reducibility@L206-L206 | proof step of this result
EDGE: step:p3:red-frame | blueprint/parts/p3-uniqueness.tex#bp:p3:reducibility@L212-L212 | proof step of this result
EDGE: step:p3:red-tangent | blueprint/parts/p3-uniqueness.tex#bp:p3:reducibility@L222-L222 | proof step of this result
EDGE: step:p3:red-normal | blueprint/parts/p3-uniqueness.tex#bp:p3:reducibility@L226-L226 | proof step of this result
EDGE: step:p3:red-assembly | blueprint/parts/p3-uniqueness.tex#bp:p3:reducibility@L231-L231 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p3:red-holomorphy
KIND: step
TITLE: Holomorphy
STATEMENT_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:red-holomorphy@L206-L210
PROOF_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:red-holomorphy@L206-L210
CONTRACT_ID: step:p3:red-holomorphy
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
EDGE: bp:p1:holomorphic-regularity | blueprint/parts/p3-uniqueness.tex#step:p3:red-holomorphy@L207-L207 | cited at this line (step; \ref{bp:p1:holomorphic-regularity})
EDGE: bp:p1:holomorphic-inverse | blueprint/parts/p3-uniqueness.tex#step:p3:red-holomorphy@L209-L209 | cited at this line (step; \ref{bp:p1:holomorphic-inverse})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p3:red-frame
KIND: step
TITLE: Symplectic frame
STATEMENT_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:red-frame@L212-L220
PROOF_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:red-frame@L212-L220
CONTRACT_ID: step:p3:red-frame
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p3:lagrangian, bp:p2:frame-identities, bp:p2:matrix
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p3:lagrangian | blueprint/parts/p3-uniqueness.tex#step:p3:red-frame@L213-L213 | cited at this line (step; \ref{bp:p3:lagrangian})
EDGE: bp:p2:frame-identities | blueprint/parts/p3-uniqueness.tex#step:p3:red-frame@L214-L214 | cited at this line (step; \ref{bp:p2:frame-identities})
EDGE: bp:p2:matrix | blueprint/parts/p3-uniqueness.tex#step:p3:red-frame@L216-L216 | cited at this line (step; \ref{bp:p2:matrix})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p3:red-tangent
KIND: step
TITLE: Tangent columns
STATEMENT_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:red-tangent@L222-L224
PROOF_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:red-tangent@L222-L224
CONTRACT_ID: step:p3:red-tangent
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:frame-identities
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:frame-identities | blueprint/parts/p3-uniqueness.tex#step:p3:red-tangent@L223-L223 | cited at this line (step; \ref{bp:p2:frame-identities})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p3:red-normal
KIND: step
TITLE: Normal columns
STATEMENT_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:red-normal@L226-L229
PROOF_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:red-normal@L226-L229
CONTRACT_ID: step:p3:red-normal
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:frame-identities
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:frame-identities | blueprint/parts/p3-uniqueness.tex#step:p3:red-normal@L227-L227 | cited at this line (step; \ref{bp:p2:frame-identities})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p3:red-assembly
KIND: step
TITLE: Assembly
STATEMENT_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:red-assembly@L231-L233
PROOF_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:red-assembly@L231-L233
CONTRACT_ID: step:p3:red-assembly
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

NODE: bp:p3:torsion-bound
KIND: lemma
TITLE: The torsion
STATEMENT_SOURCE: blueprint/parts/p3-uniqueness.tex#bp:p3:torsion-bound@L241-L245
PROOF_SOURCE: blueprint/parts/p3-uniqueness.tex#bp:p3:torsion-bound@L247-L268
CONTRACT_ID: bp:p3:torsion-bound
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p3:torsion-holomorphy, step:p3:torsion-bound-step
ROUTES: -
ROUTE_FOR: -
EDGE: step:p3:torsion-holomorphy | blueprint/parts/p3-uniqueness.tex#bp:p3:torsion-bound@L248-L248 | proof step of this result
EDGE: step:p3:torsion-bound-step | blueprint/parts/p3-uniqueness.tex#bp:p3:torsion-bound@L254-L254 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p3:torsion-holomorphy
KIND: step
TITLE: Holomorphy
STATEMENT_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:torsion-holomorphy@L248-L252
PROOF_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:torsion-holomorphy@L248-L252
CONTRACT_ID: step:p3:torsion-holomorphy
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p3:reducibility, bp:p2:hamiltonian
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p3:reducibility | blueprint/parts/p3-uniqueness.tex#step:p3:torsion-holomorphy@L249-L249 | cited at this line (step; \ref{bp:p3:reducibility})
EDGE: bp:p2:hamiltonian | blueprint/parts/p3-uniqueness.tex#step:p3:torsion-holomorphy@L251-L251 | cited at this line (step; \ref{bp:p2:hamiltonian})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p3:torsion-bound-step
KIND: step
TITLE: Bound
STATEMENT_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:torsion-bound-step@L254-L267
PROOF_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:torsion-bound-step@L254-L267
CONTRACT_ID: step:p3:torsion-bound-step
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p3:matrix-norms, bp:p1:cauchy-strip, bp:p3:frequency-bound
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p3:matrix-norms | blueprint/parts/p3-uniqueness.tex#step:p3:torsion-bound-step@L255-L255 | cited at this line (step; \ref{bp:p3:matrix-norms})
EDGE: bp:p1:cauchy-strip | blueprint/parts/p3-uniqueness.tex#step:p3:torsion-bound-step@L255-L255 | cited at this line (step; \ref{bp:p1:cauchy-strip})
EDGE: bp:p3:frequency-bound | blueprint/parts/p3-uniqueness.tex#step:p3:torsion-bound-step@L257-L257 | cited at this line (step; \ref{bp:p3:frequency-bound})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p3:phase
KIND: lemma
TITLE: Phase normalization
STATEMENT_SOURCE: blueprint/parts/p3-uniqueness.tex#bp:p3:phase@L279-L288
PROOF_SOURCE: blueprint/parts/p3-uniqueness.tex#bp:p3:phase@L290-L342
CONTRACT_ID: bp:p3:phase
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p3:phase-real, step:p3:phase-fixed-point, step:p3:phase-derivatives, step:p3:phase-contraction, step:p3:phase-conclusion
ROUTES: -
ROUTE_FOR: -
EDGE: step:p3:phase-real | blueprint/parts/p3-uniqueness.tex#bp:p3:phase@L294-L294 | proof step of this result
EDGE: step:p3:phase-fixed-point | blueprint/parts/p3-uniqueness.tex#bp:p3:phase@L302-L302 | proof step of this result
EDGE: step:p3:phase-derivatives | blueprint/parts/p3-uniqueness.tex#bp:p3:phase@L314-L314 | proof step of this result
EDGE: step:p3:phase-contraction | blueprint/parts/p3-uniqueness.tex#bp:p3:phase@L322-L322 | proof step of this result
EDGE: step:p3:phase-conclusion | blueprint/parts/p3-uniqueness.tex#bp:p3:phase@L339-L339 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p3:phase-real
KIND: step
TITLE: Realness
STATEMENT_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:phase-real@L294-L300
PROOF_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:phase-real@L294-L300
CONTRACT_ID: step:p3:phase-real
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:real-inverse
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:real-inverse | blueprint/parts/p3-uniqueness.tex#step:p3:phase-real@L297-L297 | cited at this line (step; \ref{bp:p1:real-inverse})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p3:phase-fixed-point
KIND: step
TITLE: Fixed-point form
STATEMENT_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:phase-fixed-point@L302-L312
PROOF_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:phase-fixed-point@L302-L312
CONTRACT_ID: step:p3:phase-fixed-point
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

NODE: step:p3:phase-derivatives
KIND: step
TITLE: Derivative bounds on the real torus
STATEMENT_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:phase-derivatives@L314-L320
PROOF_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:phase-derivatives@L314-L320
CONTRACT_ID: step:p3:phase-derivatives
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:increments, bp:p1:holomorphic-regularity
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:increments | blueprint/parts/p3-uniqueness.tex#step:p3:phase-derivatives@L315-L315 | cited at this line (step; \ref{bp:p1:increments})
EDGE: bp:p1:holomorphic-regularity | blueprint/parts/p3-uniqueness.tex#step:p3:phase-derivatives@L316-L316 | cited at this line (step; \ref{bp:p1:holomorphic-regularity})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p3:phase-contraction
KIND: step
TITLE: Contraction
STATEMENT_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:phase-contraction@L322-L337
PROOF_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:phase-contraction@L322-L337
CONTRACT_ID: step:p3:phase-contraction
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p3:phase-derivatives
ROUTES: -
ROUTE_FOR: -
EDGE: step:p3:phase-derivatives | blueprint/parts/p3-uniqueness.tex#step:p3:phase-contraction@L328-L328 | cited at this line (step; \ref{step:p3:phase-derivatives})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p3:phase-conclusion
KIND: step
TITLE: Conclusion
STATEMENT_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:phase-conclusion@L339-L341
PROOF_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:phase-conclusion@L339-L341
CONTRACT_ID: step:p3:phase-conclusion
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:ext-banach, step:p3:phase-fixed-point
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:ext-banach | blueprint/parts/p3-uniqueness.tex#step:p3:phase-conclusion@L340-L340 | cited at this line (step; \ref{bp:p1:ext-banach})
EDGE: step:p3:phase-fixed-point | blueprint/parts/p3-uniqueness.tex#step:p3:phase-conclusion@L341-L341 | cited at this line (step; \ref{step:p3:phase-fixed-point})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p3:difference-equation
KIND: lemma
TITLE: The difference in the frame
STATEMENT_SOURCE: blueprint/parts/p3-uniqueness.tex#bp:p3:difference-equation@L359-L373
PROOF_SOURCE: blueprint/parts/p3-uniqueness.tex#bp:p3:difference-equation@L375-L406
CONTRACT_ID: bp:p3:difference-equation
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p3:diff-regularity, step:p3:diff-linearized, step:p3:diff-triangular, step:p3:diff-bounds
ROUTES: -
ROUTE_FOR: -
EDGE: step:p3:diff-regularity | blueprint/parts/p3-uniqueness.tex#bp:p3:difference-equation@L376-L376 | proof step of this result
EDGE: step:p3:diff-linearized | blueprint/parts/p3-uniqueness.tex#bp:p3:difference-equation@L386-L386 | proof step of this result
EDGE: step:p3:diff-triangular | blueprint/parts/p3-uniqueness.tex#bp:p3:difference-equation@L393-L393 | proof step of this result
EDGE: step:p3:diff-bounds | blueprint/parts/p3-uniqueness.tex#bp:p3:difference-equation@L399-L399 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p3:diff-regularity
KIND: step
TITLE: Regularity and periodicity
STATEMENT_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:diff-regularity@L376-L384
PROOF_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:diff-regularity@L376-L384
CONTRACT_ID: step:p3:diff-regularity
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p3:reducibility, bp:p2:periodicity
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p3:reducibility | blueprint/parts/p3-uniqueness.tex#step:p3:diff-regularity@L382-L382 | cited at this line (step; \ref{bp:p3:reducibility})
EDGE: bp:p2:periodicity | blueprint/parts/p3-uniqueness.tex#step:p3:diff-regularity@L384-L384 | cited at this line (step; \ref{bp:p2:periodicity})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p3:diff-linearized
KIND: step
TITLE: Linearized equation
STATEMENT_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:diff-linearized@L386-L391
PROOF_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:diff-linearized@L386-L391
CONTRACT_ID: step:p3:diff-linearized
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

NODE: step:p3:diff-triangular
KIND: step
TITLE: Triangular system
STATEMENT_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:diff-triangular@L393-L397
PROOF_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:diff-triangular@L393-L397
CONTRACT_ID: step:p3:diff-triangular
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p3:reducibility
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p3:reducibility | blueprint/parts/p3-uniqueness.tex#step:p3:diff-triangular@L395-L395 | cited at this line (step; \ref{bp:p3:reducibility})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p3:diff-bounds
KIND: step
TITLE: Bounds
STATEMENT_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:diff-bounds@L399-L405
PROOF_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:diff-bounds@L399-L405
CONTRACT_ID: step:p3:diff-bounds
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p3:matrix-norms, bp:p1:taylor, bp:p2:hamiltonian, step:p3:diff-regularity, bp:p1:holomorphic-regularity
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p3:matrix-norms | blueprint/parts/p3-uniqueness.tex#step:p3:diff-bounds@L401-L401 | cited at this line (step; \ref{bp:p3:matrix-norms})
EDGE: bp:p1:taylor | blueprint/parts/p3-uniqueness.tex#step:p3:diff-bounds@L401-L401 | cited at this line (step; \ref{bp:p1:taylor})
EDGE: bp:p2:hamiltonian | blueprint/parts/p3-uniqueness.tex#step:p3:diff-bounds@L402-L402 | cited at this line (step; \ref{bp:p2:hamiltonian})
EDGE: step:p3:diff-regularity | blueprint/parts/p3-uniqueness.tex#step:p3:diff-bounds@L403-L403 | cited at this line (step; \ref{step:p3:diff-regularity})
EDGE: bp:p1:holomorphic-regularity | blueprint/parts/p3-uniqueness.tex#step:p3:diff-bounds@L405-L405 | cited at this line (step; \ref{bp:p1:holomorphic-regularity})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p3:quadratic
KIND: proposition
TITLE: Quadratic estimate
STATEMENT_SOURCE: blueprint/parts/p3-uniqueness.tex#bp:p3:quadratic@L415-L425
PROOF_SOURCE: blueprint/parts/p3-uniqueness.tex#bp:p3:quadratic@L427-L500
CONTRACT_ID: bp:p3:quadratic
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p3:quad-remainder, step:p3:quad-normal-osc, step:p3:quad-normal-avg, step:p3:quad-normal, step:p3:quad-tangent, step:p3:quad-combine, bp:p3:difference-equation, bp:p3:frequency-bound
ROUTES: -
ROUTE_FOR: -
EDGE: step:p3:quad-remainder | blueprint/parts/p3-uniqueness.tex#bp:p3:quadratic@L435-L435 | proof step of this result
EDGE: step:p3:quad-normal-osc | blueprint/parts/p3-uniqueness.tex#bp:p3:quadratic@L438-L438 | proof step of this result
EDGE: step:p3:quad-normal-avg | blueprint/parts/p3-uniqueness.tex#bp:p3:quadratic@L450-L450 | proof step of this result
EDGE: step:p3:quad-normal | blueprint/parts/p3-uniqueness.tex#bp:p3:quadratic@L463-L463 | proof step of this result
EDGE: step:p3:quad-tangent | blueprint/parts/p3-uniqueness.tex#bp:p3:quadratic@L470-L470 | proof step of this result
EDGE: step:p3:quad-combine | blueprint/parts/p3-uniqueness.tex#bp:p3:quadratic@L488-L488 | proof step of this result
EDGE: bp:p3:difference-equation | blueprint/parts/p3-uniqueness.tex#bp:p3:quadratic@L428-L428 | cited at this line (proof; \ref{bp:p3:difference-equation})
EDGE: bp:p3:frequency-bound | blueprint/parts/p3-uniqueness.tex#bp:p3:quadratic@L430-L430 | cited at this line (proof; \ref{bp:p3:frequency-bound})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p3:quad-remainder
KIND: step
TITLE: The remainder
STATEMENT_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:quad-remainder@L435-L436
PROOF_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:quad-remainder@L435-L436
CONTRACT_ID: step:p3:quad-remainder
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p3:difference-equation
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p3:difference-equation | blueprint/parts/p3-uniqueness.tex#step:p3:quad-remainder@L436-L436 | cited at this line (step; \ref{bp:p3:difference-equation})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p3:quad-normal-osc
KIND: step
TITLE: Oscillating part of the normal coordinate
STATEMENT_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:quad-normal-osc@L438-L448
PROOF_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:quad-normal-osc@L438-L448
CONTRACT_ID: step:p3:quad-normal-osc
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:averages, bp:p1:cohomological
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:averages | blueprint/parts/p3-uniqueness.tex#step:p3:quad-normal-osc@L441-L441 | cited at this line (step; \ref{bp:p1:averages})
EDGE: bp:p1:cohomological | blueprint/parts/p3-uniqueness.tex#step:p3:quad-normal-osc@L443-L443 | cited at this line (step; \ref{bp:p1:cohomological})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p3:quad-normal-avg
KIND: step
TITLE: Average of the normal coordinate
STATEMENT_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:quad-normal-avg@L450-L461
PROOF_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:quad-normal-avg@L450-L461
CONTRACT_ID: step:p3:quad-normal-avg
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:averages, bp:p3:torsion-bound
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:averages | blueprint/parts/p3-uniqueness.tex#step:p3:quad-normal-avg@L452-L452 | cited at this line (step; \ref{bp:p1:averages})
EDGE: bp:p3:torsion-bound | blueprint/parts/p3-uniqueness.tex#step:p3:quad-normal-avg@L459-L459 | cited at this line (step; \ref{bp:p3:torsion-bound})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p3:quad-normal
KIND: step
TITLE: The normal coordinate
STATEMENT_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:quad-normal@L463-L468
PROOF_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:quad-normal@L463-L468
CONTRACT_ID: step:p3:quad-normal
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

NODE: step:p3:quad-tangent
KIND: step
TITLE: The tangential coordinate
STATEMENT_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:quad-tangent@L470-L486
PROOF_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:quad-tangent@L470-L486
CONTRACT_ID: step:p3:quad-tangent
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p3:quad-normal-avg, step:p3:quad-normal, bp:p1:cohomological
ROUTES: -
ROUTE_FOR: -
EDGE: step:p3:quad-normal-avg | blueprint/parts/p3-uniqueness.tex#step:p3:quad-tangent@L472-L472 | cited at this line (step; \ref{step:p3:quad-normal-avg})
EDGE: step:p3:quad-normal | blueprint/parts/p3-uniqueness.tex#step:p3:quad-tangent@L479-L479 | cited at this line (step; \ref{step:p3:quad-normal})
EDGE: bp:p1:cohomological | blueprint/parts/p3-uniqueness.tex#step:p3:quad-tangent@L481-L481 | cited at this line (step; \ref{bp:p1:cohomological})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p3:quad-combine
KIND: step
TITLE: Return to $\Delta$
STATEMENT_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:quad-combine@L488-L499
PROOF_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:quad-combine@L488-L499
CONTRACT_ID: step:p3:quad-combine
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p3:quad-normal
ROUTES: -
ROUTE_FOR: -
EDGE: step:p3:quad-normal | blueprint/parts/p3-uniqueness.tex#step:p3:quad-combine@L489-L489 | cited at this line (step; \ref{step:p3:quad-normal})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p3:g2-constant
KIND: step
TITLE: Choice of the threshold
STATEMENT_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:g2-constant@L513-L524
PROOF_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:g2-constant@L513-L524
CONTRACT_ID: step:p3:g2-constant
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p3:standing
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p3:standing | blueprint/parts/p3-uniqueness.tex#step:p3:g2-constant@L521-L521 | cited at this line (step; \ref{bp:p3:standing})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p3:g2-smallness
KIND: step
TITLE: The three smallness conditions
STATEMENT_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:g2-smallness@L526-L533
PROOF_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:g2-smallness@L526-L533
CONTRACT_ID: step:p3:g2-smallness
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p3:frequency-bound, step:p3:g2-constant
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p3:frequency-bound | blueprint/parts/p3-uniqueness.tex#step:p3:g2-smallness@L527-L527 | cited at this line (step; \ref{bp:p3:frequency-bound})
EDGE: step:p3:g2-constant | blueprint/parts/p3-uniqueness.tex#step:p3:g2-smallness@L528-L528 | cited at this line (step; \ref{eq:p3:c})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p3:g2-phase
KIND: step
TITLE: Phase
STATEMENT_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:g2-phase@L535-L538
PROOF_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:g2-phase@L535-L538
CONTRACT_ID: step:p3:g2-phase
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p3:phase
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p3:phase | blueprint/parts/p3-uniqueness.tex#step:p3:g2-phase@L536-L536 | cited at this line (step; \ref{bp:p3:phase})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p3:g2-size
KIND: step
TITLE: Size of the difference
STATEMENT_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:g2-size@L540-L547
PROOF_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:g2-size@L540-L547
CONTRACT_ID: step:p3:g2-size
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:increments-open
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:increments-open | blueprint/parts/p3-uniqueness.tex#step:p3:g2-size@L543-L543 | cited at this line (step; \ref{bp:p1:increments-open})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p3:g2-iteration
KIND: step
TITLE: Iteration on shrinking strips
STATEMENT_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:g2-iteration@L549-L563
PROOF_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:g2-iteration@L549-L563
CONTRACT_ID: step:p3:g2-iteration
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p3:quadratic, step:p3:g2-size, bp:p1:iteration
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p3:quadratic | blueprint/parts/p3-uniqueness.tex#step:p3:g2-iteration@L552-L552 | cited at this line (step; \ref{bp:p3:quadratic})
EDGE: step:p3:g2-size | blueprint/parts/p3-uniqueness.tex#step:p3:g2-iteration@L558-L558 | cited at this line (step; \ref{step:p3:g2-size})
EDGE: bp:p1:iteration | blueprint/parts/p3-uniqueness.tex#step:p3:g2-iteration@L562-L562 | cited at this line (step; \ref{bp:p1:iteration})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p3:g2-conclusion
KIND: step
TITLE: Conclusion
STATEMENT_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:g2-conclusion@L565-L567
PROOF_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:g2-conclusion@L565-L567
CONTRACT_ID: step:p3:g2-conclusion
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

NODE: bp:p3:totality-check
KIND: claim
TITLE: Hypotheses used, and Lean totality
STATEMENT_SOURCE: blueprint/parts/p3-uniqueness.tex#bp:p3:totality-check@L570-L584
PROOF_SOURCE: blueprint/parts/p3-uniqueness.tex#bp:p3:totality-check@L570-L584
CONTRACT_ID: bp:p3:totality-check
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:standing, bp:p0:totality, step:p3:red-holomorphy, bp:p3:torsion-bound
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:standing | blueprint/parts/p3-uniqueness.tex#bp:p3:totality-check@L573-L573 | cited at this line (statement; \ref{bp:p2:standing})
EDGE: bp:p0:totality | blueprint/parts/p3-uniqueness.tex#bp:p3:totality-check@L577-L577 | cited at this line (statement; \ref{bp:p0:totality})
EDGE: step:p3:red-holomorphy | blueprint/parts/p3-uniqueness.tex#bp:p3:totality-check@L580-L580 | cited at this line (statement; \ref{step:p3:red-holomorphy})
EDGE: bp:p3:torsion-bound | blueprint/parts/p3-uniqueness.tex#bp:p3:totality-check@L583-L583 | cited at this line (statement; \ref{bp:p3:torsion-bound})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: remark: its justification is inline (confirm, or exclude if not a mathematical claim)

NODE: bp:p3:deviations
KIND: claim
TITLE: Deviations from the sources
STATEMENT_SOURCE: blueprint/parts/p3-uniqueness.tex#bp:p3:deviations@L586-L608
PROOF_SOURCE: blueprint/parts/p3-uniqueness.tex#bp:p3:deviations@L586-L608
CONTRACT_ID: bp:p3:deviations
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p3:phase, bp:p3:frequency-bound, step:p3:g2-constant
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p3:phase | blueprint/parts/p3-uniqueness.tex#bp:p3:deviations@L589-L589 | cited at this line (statement; \ref{bp:p3:phase})
EDGE: bp:p3:frequency-bound | blueprint/parts/p3-uniqueness.tex#bp:p3:deviations@L599-L599 | cited at this line (statement; \ref{bp:p3:frequency-bound})
EDGE: step:p3:g2-constant | blueprint/parts/p3-uniqueness.tex#bp:p3:deviations@L601-L601 | cited at this line (statement; \ref{eq:p3:c})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: remark: its justification is inline (confirm, or exclude if not a mathematical claim) [pre-extract: dropped reference to bp:p0:g2, which this part proves]
