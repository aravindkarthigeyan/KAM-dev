NODE: bpN:p3:gen-exit
KIND: lemma
TITLE: First exit
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-exit@L328-L341
PROOF_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-exit@L342-L350
CONTRACT_ID: bpN:p3:gen-exit
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p3:exit-closed, stepN:p3:exit-min, stepN:p3:exit-bdry, stepN:p3:exit-sup, bpN:p3:gen-symmetry
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p3:exit-closed | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-exit@L343-L343 | proof step of this result
EDGE: stepN:p3:exit-min | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-exit@L345-L345 | proof step of this result
EDGE: stepN:p3:exit-bdry | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-exit@L347-L347 | proof step of this result
EDGE: stepN:p3:exit-sup | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-exit@L349-L349 | proof step of this result
EDGE: bpN:p3:gen-symmetry | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-exit@L338-L338 | cited at this line (statement; \ref{bpN:p3:gen-symmetry})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p3:exit-closed
KIND: step
TITLE: Closedness
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:exit-closed@L343-L343
PROOF_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:exit-closed@L343-L343
CONTRACT_ID: stepN:p3:exit-closed
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

NODE: stepN:p3:exit-min
KIND: step
TITLE: The minimum
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:exit-min@L345-L345
PROOF_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:exit-min@L345-L345
CONTRACT_ID: stepN:p3:exit-min
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

NODE: stepN:p3:exit-bdry
KIND: step
TITLE: Boundary point
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:exit-bdry@L347-L347
PROOF_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:exit-bdry@L347-L347
CONTRACT_ID: stepN:p3:exit-bdry
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

NODE: stepN:p3:exit-sup
KIND: step
TITLE: The supremum formula
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:exit-sup@L349-L349
PROOF_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:exit-sup@L349-L349
CONTRACT_ID: stepN:p3:exit-sup
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

NODE: bpN:p3:gen-invariant
KIND: definition
TITLE: Invariant sets
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-invariant@L352-L356
PROOF_SOURCE: -
CONTRACT_ID: bpN:p3:gen-invariant
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p3:gen-uniqueness
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p3:gen-uniqueness | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-invariant@L355-L355 | cited at this line (statement; \ref{bpN:p3:gen-uniqueness})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpN:p3:gen-barrier
KIND: corollary
TITLE: Barrier
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-barrier@L358-L363
PROOF_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-barrier@L364-L368
CONTRACT_ID: bpN:p3:gen-barrier
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p3:barrier-fwd, stepN:p3:barrier-bwd, bpN:p3:ham-energy
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p3:barrier-fwd | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-barrier@L365-L365 | proof step of this result
EDGE: stepN:p3:barrier-bwd | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-barrier@L367-L367 | proof step of this result
EDGE: bpN:p3:ham-energy | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-barrier@L361-L361 | cited at this line (statement; \ref{bpN:p3:ham-energy})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p3:barrier-fwd
KIND: step
TITLE: Forward
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:barrier-fwd@L365-L365
PROOF_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:barrier-fwd@L365-L365
CONTRACT_ID: stepN:p3:barrier-fwd
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p3:gen-exit
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p3:gen-exit | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:barrier-fwd@L365-L365 | cited at this line (step; \ref{bpN:p3:gen-exit})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p3:barrier-bwd
KIND: step
TITLE: Backward
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:barrier-bwd@L367-L367
PROOF_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:barrier-bwd@L367-L367
CONTRACT_ID: stepN:p3:barrier-bwd
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p3:barrier-fwd
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p3:barrier-fwd | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:barrier-bwd@L367-L367 | cited at this line (step; \ref{stepN:p3:barrier-fwd})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpN:p3:ham-smooth
KIND: lemma
TITLE: Regularity of $X_H$
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:ham-smooth@L377-L381
PROOF_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:ham-smooth@L382-L386
CONTRACT_ID: bpN:p3:ham-smooth
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p3:hs-deriv, stepN:p3:hs-comp
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p3:hs-deriv | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:ham-smooth@L383-L383 | proof step of this result
EDGE: stepN:p3:hs-comp | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:ham-smooth@L385-L385 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p3:hs-deriv
KIND: step
TITLE: Derivative is $C^k$
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:hs-deriv@L383-L383
PROOF_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:hs-deriv@L383-L383
CONTRACT_ID: stepN:p3:hs-deriv
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p3:ext-calc
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p3:ext-calc | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:hs-deriv@L383-L383 | cited at this line (step; \ref{bpN:p3:ext-calc})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p3:hs-comp
KIND: step
TITLE: Components
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:hs-comp@L385-L385
PROOF_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:hs-comp@L385-L385
CONTRACT_ID: stepN:p3:hs-comp
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

NODE: bpN:p3:ham-energy
KIND: theorem
TITLE: Energy conservation
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:ham-energy@L388-L393
PROOF_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:ham-energy@L394-L400
CONTRACT_ID: bpN:p3:ham-energy
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p3:en-chain, stepN:p3:en-cancel, stepN:p3:en-const
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p3:en-chain | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:ham-energy@L395-L395 | proof step of this result
EDGE: stepN:p3:en-cancel | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:ham-energy@L397-L397 | proof step of this result
EDGE: stepN:p3:en-const | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:ham-energy@L399-L399 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p3:en-chain
KIND: step
TITLE: Chain rule
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:en-chain@L395-L395
PROOF_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:en-chain@L395-L395
CONTRACT_ID: stepN:p3:en-chain
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p3:ext-calc
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p3:ext-calc | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:en-chain@L395-L395 | cited at this line (step; \ref{bpN:p3:ext-calc})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p3:en-cancel
KIND: step
TITLE: Cancellation
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:en-cancel@L397-L397
PROOF_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:en-cancel@L397-L397
CONTRACT_ID: stepN:p3:en-cancel
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

NODE: stepN:p3:en-const
KIND: step
TITLE: Constancy
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:en-const@L399-L399
PROOF_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:en-const@L399-L399
CONTRACT_ID: stepN:p3:en-const
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p3:ext-calc
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p3:ext-calc | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:en-const@L399-L399 | cited at this line (step; \ref{bpN:p3:ext-calc})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpN:p3:ham-periodic
KIND: lemma
TITLE: Periodicity in the angles passes to solutions
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:ham-periodic@L402-L407
PROOF_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:ham-periodic@L408-L412
CONTRACT_ID: bpN:p3:ham-periodic
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p3:per-field, stepN:p3:per-sol
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p3:per-field | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:ham-periodic@L409-L409 | proof step of this result
EDGE: stepN:p3:per-sol | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:ham-periodic@L411-L411 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p3:per-field
KIND: step
TITLE: Field
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:per-field@L409-L409
PROOF_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:per-field@L409-L409
CONTRACT_ID: stepN:p3:per-field
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

NODE: stepN:p3:per-sol
KIND: step
TITLE: Solutions
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:per-sol@L411-L411
PROOF_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:per-sol@L411-L411
CONTRACT_ID: stepN:p3:per-sol
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p3:gen-symmetry
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p3:gen-symmetry | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:per-sol@L411-L411 | cited at this line (step; \ref{bpN:p3:gen-symmetry})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpN:p3:ham-reduction
KIND: proposition
TITLE: Track N and track I Hamiltonian predicates
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:ham-reduction@L416-L427
PROOF_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:ham-reduction@L428-L432
CONTRACT_ID: bpN:p3:ham-reduction
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p3:red-mem, stepN:p3:red-diff, bpN:p0:sol#IsSolutionOn, I:bpI:p0:hamsol#IsHamiltonianSolutionOn
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p3:red-mem | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:ham-reduction@L429-L429 | proof step of this result
EDGE: stepN:p3:red-diff | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:ham-reduction@L431-L431 | proof step of this result
EDGE: bpN:p0:sol#IsSolutionOn | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:ham-reduction@L416-L416 | this result carries \frozen{KAM.Nekhoroshev.IsSolutionOn} (a statement about it)
EDGE: I:bpI:p0:hamsol#IsHamiltonianSolutionOn | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:ham-reduction@L416-L416 | this result carries \frozen{KAM.Iso.IsHamiltonianSolutionOn}, a track-I frozen declaration
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p3:red-mem
KIND: step
TITLE: Membership
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:red-mem@L429-L429
PROOF_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:red-mem@L429-L429
CONTRACT_ID: stepN:p3:red-mem
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

NODE: stepN:p3:red-diff
KIND: step
TITLE: Differentiability is free
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:red-diff@L431-L431
PROOF_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:red-diff@L431-L431
CONTRACT_ID: stepN:p3:red-diff
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p3:ham-smooth
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p3:ham-smooth | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:red-diff@L431-L431 | cited at this line (step; \ref{bpN:p3:ham-smooth})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpN:p3:newton-reduction
KIND: proposition
TITLE: Newtonian predicates
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:newton-reduction@L434-L449
PROOF_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:newton-reduction@L450-L454
CONTRACT_ID: bpN:p3:newton-reduction
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p3:nr-smooth, stepN:p3:nr-pair, P:bpP:p0:newton#IsNewtonSolution, P:bpP:p0:fixedsol#IsFixedSolution, I:bpI:p0:restricted#IsRestrictedSolutionOn
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p3:nr-smooth | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:newton-reduction@L451-L451 | proof step of this result
EDGE: stepN:p3:nr-pair | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:newton-reduction@L453-L453 | proof step of this result
EDGE: P:bpP:p0:newton#IsNewtonSolution | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:newton-reduction@L434-L434 | this result carries \frozen{KAM.Planetary.IsNewtonSolution}, a track-P frozen declaration
EDGE: P:bpP:p0:fixedsol#IsFixedSolution | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:newton-reduction@L434-L434 | this result carries \frozen{KAM.Planetary.IsFixedSolution}, a track-P frozen declaration
EDGE: I:bpI:p0:restricted#IsRestrictedSolutionOn | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:newton-reduction@L434-L434 | this result carries \frozen{KAM.Iso.IsRestrictedSolutionOn}, a track-I frozen declaration
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p3:nr-smooth
KIND: step
TITLE: Open domain and smoothness
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:nr-smooth@L451-L451
PROOF_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:nr-smooth@L451-L451
CONTRACT_ID: stepN:p3:nr-smooth
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

NODE: stepN:p3:nr-pair
KIND: step
TITLE: Derivatives of pairs
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:nr-pair@L453-L453
PROOF_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:nr-pair@L453-L453
CONTRACT_ID: stepN:p3:nr-pair
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

NODE: bpN:p3:newton-continuation
KIND: corollary
TITLE: Newtonian continuation
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:newton-continuation@L456-L462
PROOF_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:newton-continuation@L463-L468
CONTRACT_ID: bpN:p3:newton-continuation
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p3:nc-data, stepN:p3:nc-apply, bpN:p3:newton-reduction, bpN:p3:gen-maximal
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p3:nc-data | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:newton-continuation@L464-L464 | proof step of this result
EDGE: stepN:p3:nc-apply | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:newton-continuation@L467-L467 | proof step of this result
EDGE: bpN:p3:newton-reduction | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:newton-continuation@L457-L457 | cited at this line (statement; \ref{bpN:p3:newton-reduction})
EDGE: bpN:p3:gen-maximal | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:newton-continuation@L458-L458 | cited at this line (statement; \ref{bpN:p3:gen-maximal})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p3:nc-data
KIND: step
TITLE: Uniform data
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:nc-data@L464-L465
PROOF_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:nc-data@L464-L465
CONTRACT_ID: stepN:p3:nc-data
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p3:ext-mvt
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p3:ext-mvt | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:nc-data@L465-L465 | cited at this line (step; \ref{bpN:p3:ext-mvt})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p3:nc-apply
KIND: step
TITLE: Apply
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:nc-apply@L467-L467
PROOF_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:nc-apply@L467-L467
CONTRACT_ID: stepN:p3:nc-apply
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p3:gen-continuation
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p3:gen-continuation | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:nc-apply@L467-L467 | cited at this line (step; \ref{bpN:p3:gen-continuation})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpN:p3:holo-input
KIND: lemma
TITLE: Input from Part 1: $H$ is smooth on $W_s$
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:holo-input@L479-L483
PROOF_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:holo-input@L484-L490
CONTRACT_ID: bpN:p3:holo-input
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p3:hi-cite, stepN:p3:hi-reg, stepN:p3:hi-per, bpN:p1:holo-real, K:bp:p1:holomorphic-regularity, K:bp:p1:hamiltonian-real
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p3:hi-cite | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:holo-input@L485-L485 | proof step of this result
EDGE: stepN:p3:hi-reg | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:holo-input@L487-L487 | proof step of this result
EDGE: stepN:p3:hi-per | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:holo-input@L489-L489 | proof step of this result
EDGE: bpN:p1:holo-real | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:holo-input@L482-L482 | cited at this line (statement; \ref{bpN:p1:holo-real}; in \source: provenance unless consumed)
EDGE: K:bp:p1:holomorphic-regularity | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:holo-input@L482-L482 | cited at this line (statement; \Kref{bp:p1:holomorphic-regularity}; in \source: provenance unless consumed)
EDGE: K:bp:p1:hamiltonian-real | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:holo-input@L482-L482 | cited at this line (statement; \Kref{bp:p1:hamiltonian-real}; in \source: provenance unless consumed)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p3:hi-cite
KIND: step
TITLE: Citation
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:hi-cite@L485-L485
PROOF_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:hi-cite@L485-L485
CONTRACT_ID: stepN:p3:hi-cite
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p1:holo-real
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p1:holo-real | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:hi-cite@L485-L485 | cited at this line (step; \ref{bpN:p1:holo-real})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p3:hi-reg
KIND: step
TITLE: Regularity
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:hi-reg@L487-L487
PROOF_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:hi-reg@L487-L487
CONTRACT_ID: stepN:p3:hi-reg
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p0:integrable#IsAnalyticIntegrable, bpN:p0:pert#IsAnalyticPerturbation, bpN:p1:holo-real, K:bp:p1:holomorphic-regularity, K:bp:p1:hamiltonian-real
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p0:integrable#IsAnalyticIntegrable | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:hi-reg@L487-L487 | cited at this line (step; \ref{bpN:p0:integrable})
EDGE: bpN:p0:pert#IsAnalyticPerturbation | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:hi-reg@L487-L487 | cited at this line (step; \ref{bpN:p0:pert})
EDGE: bpN:p1:holo-real | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:hi-reg@L487-L487 | cited at this line (step; \ref{bpN:p1:holo-real})
EDGE: K:bp:p1:holomorphic-regularity | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:hi-reg@L487-L487 | cited at this line (step; \Kref{bp:p1:holomorphic-regularity})
EDGE: K:bp:p1:hamiltonian-real | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:hi-reg@L487-L487 | cited at this line (step; \Kref{bp:p1:hamiltonian-real})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p3:hi-per
KIND: step
TITLE: Periodicity
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:hi-per@L489-L489
PROOF_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:hi-per@L489-L489
CONTRACT_ID: stepN:p3:hi-per
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

NODE: bpN:p3:lipschitz
KIND: theorem
TITLE: $X_H$ is $C^1$, hence locally Lipschitz
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:lipschitz@L492-L496
PROOF_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:lipschitz@L497-L500
CONTRACT_ID: bpN:p3:lipschitz
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p3:lip-smooth, stepN:p3:lip-lip, bpN:p3:gen-uniform-periodic
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p3:lip-smooth | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:lipschitz@L498-L498 | proof step of this result
EDGE: stepN:p3:lip-lip | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:lipschitz@L499-L499 | proof step of this result
EDGE: bpN:p3:gen-uniform-periodic | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:lipschitz@L494-L494 | cited at this line (statement; \ref{bpN:p3:gen-uniform-periodic})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p3:lip-smooth
KIND: step
TITLE: Smoothness
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:lip-smooth@L498-L498
PROOF_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:lip-smooth@L498-L498
CONTRACT_ID: stepN:p3:lip-smooth
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p3:holo-input, bpN:p3:ham-smooth
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p3:holo-input | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:lip-smooth@L498-L498 | cited at this line (step; \ref{bpN:p3:holo-input})
EDGE: bpN:p3:ham-smooth | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:lip-smooth@L498-L498 | cited at this line (step; \ref{bpN:p3:ham-smooth})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p3:lip-lip
KIND: step
TITLE: Lipschitz
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:lip-lip@L499-L499
PROOF_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:lip-lip@L499-L499
CONTRACT_ID: stepN:p3:lip-lip
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p3:gen-lip, bpN:p3:gen-uniform-periodic, bpN:p3:ham-periodic, bpN:p3:holo-input
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p3:gen-lip | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:lip-lip@L499-L499 | cited at this line (step; \ref{bpN:p3:gen-lip})
EDGE: bpN:p3:gen-uniform-periodic | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:lip-lip@L499-L499 | cited at this line (step; \ref{bpN:p3:gen-uniform-periodic})
EDGE: bpN:p3:ham-periodic | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:lip-lip@L499-L499 | cited at this line (step; \ref{bpN:p3:ham-periodic})
EDGE: bpN:p3:holo-input | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:lip-lip@L499-L499 | cited at this line (step; \ref{bpN:p3:holo-input})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpN:p3:local-exist
KIND: theorem
TITLE: Local existence and uniqueness for $\texttt{IsSolutionOn}$
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:local-exist@L502-L507
PROOF_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:local-exist@L508-L511
CONTRACT_ID: bpN:p3:local-exist
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p3:le-red, stepN:p3:le-apply, bpN:p3:ext-pl
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p3:le-red | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:local-exist@L509-L509 | proof step of this result
EDGE: stepN:p3:le-apply | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:local-exist@L510-L510 | proof step of this result
EDGE: bpN:p3:ext-pl | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:local-exist@L506-L506 | cited at this line (statement; \ref{bpN:p3:ext-pl}; in \source: provenance unless consumed)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p3:le-red
KIND: step
TITLE: Reduction
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:le-red@L509-L509
PROOF_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:le-red@L509-L509
CONTRACT_ID: stepN:p3:le-red
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p3:ham-reduction, bpN:p3:holo-input
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p3:ham-reduction | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:le-red@L509-L509 | cited at this line (step; \ref{bpN:p3:ham-reduction})
EDGE: bpN:p3:holo-input | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:le-red@L509-L509 | cited at this line (step; \ref{bpN:p3:holo-input})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p3:le-apply
KIND: step
TITLE: Existence, uniqueness
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:le-apply@L510-L510
PROOF_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:le-apply@L510-L510
CONTRACT_ID: stepN:p3:le-apply
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p3:gen-local, bpN:p3:gen-uniqueness
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p3:gen-local | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:le-apply@L510-L510 | cited at this line (step; \ref{bpN:p3:gen-local})
EDGE: bpN:p3:gen-uniqueness | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:le-apply@L510-L510 | cited at this line (step; \ref{bpN:p3:gen-uniqueness})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpN:p3:energy
KIND: theorem
TITLE: Energy conservation for $\texttt{IsSolutionOn}$
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:energy@L513-L517
PROOF_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:energy@L518-L520
CONTRACT_ID: bpN:p3:energy
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p3:en-direct
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p3:en-direct | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:energy@L519-L519 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p3:en-direct
KIND: step
TITLE: Direct
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:en-direct@L519-L519
PROOF_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:en-direct@L519-L519
CONTRACT_ID: stepN:p3:en-direct
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p3:ham-energy
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p3:ham-energy | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:en-direct@L519-L519 | cited at this line (step; \ref{bpN:p3:ham-energy})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpN:p3:continuation
KIND: theorem
TITLE: Maximal solutions and continuation
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:continuation@L522-L529
PROOF_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:continuation@L530-L533
CONTRACT_ID: bpN:p3:continuation
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p3:co-general, stepN:p3:co-periodic, bpN:p3:gen-maximal, bpN:p3:ham-reduction
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p3:co-general | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:continuation@L531-L531 | proof step of this result
EDGE: stepN:p3:co-periodic | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:continuation@L532-L532 | proof step of this result
EDGE: bpN:p3:gen-maximal | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:continuation@L525-L525 | cited at this line (statement; \ref{bpN:p3:gen-maximal})
EDGE: bpN:p3:ham-reduction | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:continuation@L525-L525 | cited at this line (statement; \ref{bpN:p3:ham-reduction})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p3:co-general
KIND: step
TITLE: General statements
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:co-general@L531-L531
PROOF_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:co-general@L531-L531
CONTRACT_ID: stepN:p3:co-general
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p3:ham-reduction, bpN:p3:gen-maximal
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p3:ham-reduction | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:co-general@L531-L531 | cited at this line (step; \ref{bpN:p3:ham-reduction})
EDGE: bpN:p3:gen-maximal | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:co-general@L531-L531 | cited at this line (step; \ref{bpN:p3:gen-maximal})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p3:co-periodic
KIND: step
TITLE: Periodic cylinder
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:co-periodic@L532-L532
PROOF_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:co-periodic@L532-L532
CONTRACT_ID: stepN:p3:co-periodic
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p3:ham-periodic, bpN:p3:holo-input, bpN:p3:gen-continuation-periodic
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p3:ham-periodic | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:co-periodic@L532-L532 | cited at this line (step; \ref{bpN:p3:ham-periodic})
EDGE: bpN:p3:holo-input | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:co-periodic@L532-L532 | cited at this line (step; \ref{bpN:p3:holo-input})
EDGE: bpN:p3:gen-continuation-periodic | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:co-periodic@L532-L532 | cited at this line (step; \ref{bpN:p3:gen-continuation-periodic})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpN:p3:uniqueness-closed
KIND: theorem
TITLE: Uniqueness on closed intervals
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:uniqueness-closed@L535-L539
PROOF_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:uniqueness-closed@L540-L542
CONTRACT_ID: bpN:p3:uniqueness-closed
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p3:uc-apply, bpN:p3:gen-uniqueness
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p3:uc-apply | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:uniqueness-closed@L541-L541 | proof step of this result
EDGE: bpN:p3:gen-uniqueness | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:uniqueness-closed@L537-L537 | cited at this line (statement; \ref{bpN:p3:gen-uniqueness})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: [pre-extract: dropped reference to bpN:p0:head, which part p3 proves or sets up]

NODE: stepN:p3:uc-apply
KIND: step
TITLE: Apply
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:uc-apply@L541-L541
PROOF_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:uc-apply@L541-L541
CONTRACT_ID: stepN:p3:uc-apply
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p3:local-exist
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p3:local-exist | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:uc-apply@L541-L541 | cited at this line (step; \ref{bpN:p3:local-exist})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpN:p3:confinement-glue
KIND: theorem
TITLE: Confinement glue
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:confinement-glue@L544-L552
PROOF_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:confinement-glue@L553-L557
CONTRACT_ID: bpN:p3:confinement-glue
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p3:cg-set, stepN:p3:cg-glue
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p3:cg-set | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:confinement-glue@L554-L554 | proof step of this result
EDGE: stepN:p3:cg-glue | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:confinement-glue@L555-L555 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: [pre-extract: dropped reference to bpN:p0:head, which part p3 proves or sets up]

NODE: stepN:p3:cg-set
KIND: step
TITLE: Compact confinement set
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:cg-set@L554-L554
PROOF_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:cg-set@L554-L554
CONTRACT_ID: stepN:p3:cg-set
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p3:gen-uniform-periodic, bpN:p3:ham-periodic
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p3:gen-uniform-periodic | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:cg-set@L554-L554 | cited at this line (step; \ref{bpN:p3:gen-uniform-periodic})
EDGE: bpN:p3:ham-periodic | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:cg-set@L554-L554 | cited at this line (step; \ref{bpN:p3:ham-periodic})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p3:cg-glue
KIND: step
TITLE: General glue
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:cg-glue@L555-L556
PROOF_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:cg-glue@L555-L556
CONTRACT_ID: stepN:p3:cg-glue
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p3:ham-reduction, bpN:p3:gen-confinement, bpN:p3:uniqueness-closed
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p3:ham-reduction | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:cg-glue@L555-L555 | cited at this line (step; \ref{bpN:p3:ham-reduction})
EDGE: bpN:p3:gen-confinement | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:cg-glue@L556-L556 | cited at this line (step; \ref{bpN:p3:gen-confinement})
EDGE: bpN:p3:uniqueness-closed | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:cg-glue@L556-L556 | cited at this line (step; \ref{bpN:p3:uniqueness-closed})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
