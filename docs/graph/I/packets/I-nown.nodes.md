NODE: bpN:p3:gen-invariant
KIND: definition
TITLE: Invariant sets
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-invariant@L352-L356
PROOF_SOURCE: -
CONTRACT_ID: bpN:p3:gen-invariant
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: F : E -> E; W subset E; S subset E (typing data)
SOURCE_QUANTIFIERS: F, W, S
SOURCE_CONCLUSION: defines: S is invariant for (F,W) iff for every interval J' and every y with IsSolIn F W J' y, if y(t1) in S for one t1 in J' then y(t) in S for all t in J'
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: N:bpN:p3:gen-sol
ROUTES: -
ROUTE_FOR: -
EDGE: N:bpN:p3:gen-sol | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-invariant@L353-L353 | IsSolIn used in the definition
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-nown
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
SOURCE_HYPOTHESES: E a finite-dimensional real normed space; F C^1 on the open set W; V subset E open; IsSolIn F W J z with J an interval, 0 in J, z(0) in V; G subset E with z(J) subset G; (boundary of V) cap G subset S with S invariant for (F,W) (Definition bpN:p3:gen-invariant) and z(0) not in S
SOURCE_QUANTIFIERS: F, W, V, J, z, G, S fixed
SOURCE_CONCLUSION: z(t) in V for all t in J (both time directions)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p3:barrier-fwd, stepN:p3:barrier-bwd, N:bpN:p3:gen-sol, bpN:p3:gen-invariant
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p3:barrier-fwd | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-barrier@L365-L365 | proof step (forward)
EDGE: stepN:p3:barrier-bwd | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-barrier@L367-L367 | proof step (backward)
EDGE: N:bpN:p3:gen-sol | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-barrier@L359-L359 | IsSolIn F W J z
EDGE: bpN:p3:gen-invariant | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-barrier@L360-L360 | S invariant
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-nown
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p3:barrier-fwd
KIND: step
TITLE: Barrier, forward in time
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:barrier-fwd@L365-L365
PROOF_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:barrier-fwd@L365-L365
CONTRACT_ID: stepN:p3:barrier-fwd
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: hypotheses of bpN:p3:gen-barrier
SOURCE_QUANTIFIERS: z, V, G, S
SOURCE_CONCLUSION: z(t) in V for all t in J with t >= 0
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: N:bpN:p3:gen-exit, bpN:p3:gen-invariant
ROUTES: -
ROUTE_FOR: -
EDGE: N:bpN:p3:gen-exit | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:barrier-fwd@L365-L365 | Lemma gen-exit(ii): first exit time t* in J with z(t*) in boundary V cap G
EDGE: bpN:p3:gen-invariant | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:barrier-fwd@L365-L365 | invariance of S gives z(0) in S, a contradiction
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-nown
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p3:barrier-bwd
KIND: step
TITLE: Barrier, backward in time
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:barrier-bwd@L367-L367
PROOF_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:barrier-bwd@L367-L367
CONTRACT_ID: stepN:p3:barrier-bwd
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: hypotheses of bpN:p3:gen-barrier; the forward step
SOURCE_QUANTIFIERS: z, V, G, S, F
SOURCE_CONCLUSION: z(t) in V for all t in J with t <= 0
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p3:barrier-fwd, N:bpN:p3:gen-symmetry, bpN:p3:gen-invariant, N:bpN:p3:gen-sol
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p3:barrier-fwd | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:barrier-bwd@L367-L367 | forward step applied to t -> z(-t)
EDGE: N:bpN:p3:gen-symmetry | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:barrier-bwd@L367-L367 | time reversal: z(-t) solves -F on -J, -F is C^1
EDGE: bpN:p3:gen-invariant | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:barrier-bwd@L367-L367 | S invariant for -F as well (reversal swaps solutions of F and -F)
EDGE: N:bpN:p3:gen-sol | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:barrier-bwd@L367-L367 | IsSolIn for -F on -J
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-nown
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
SOURCE_HYPOTHESES: N >= 2, G in R, mass : Fin N -> R; E_N = (Fin N -> R^2) x (Fin N -> R^2) with the max norm; W_N = {(q,v) : planeLength(q_j - q_i) > 0 for all i != j} and F_N the Newtonian field; for IsFixedSolution G m0 m eps: W_N' = W_N cap {planeLength(q_i) > 0} and the field F'; for IsRestrictedSolutionOn mu J: W_mu = {(q,p) : CollisionFree mu (q,p)} and F_mu the total extension of restrictedVectorField mu
SOURCE_QUANTIFIERS: N, G, mass (resp. G, m0, m, eps; resp. mu, J) fixed; for all Q, V : R -> (Fin N -> R^2) with x(t) = (Q(t),V(t)) (resp. all z : R -> R^2 x R^2)
SOURCE_CONCLUSION: W_N is open, F_N is C^infinity on W_N and IsNewtonSolution G mass Q V <-> IsSolIn F_N W_N R x; likewise IsFixedSolution with (W_N', F'); IsRestrictedSolutionOn mu J z <-> IsSolIn F_mu W_mu J z; in all three cases F is C^infinity on the open set W and the general layer applies
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p3:nr-smooth, stepN:p3:nr-pair, N:bpN:p3:gen-sol, P:bpP:p0:newton#IsNewtonSolution, P:bpP:p0:fixedsol#IsFixedSolution, bpI:p0:restricted#IsRestrictedSolutionOn, bpI:p0:restricted#restrictedVectorField, bpI:p0:primaries#CollisionFree
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p3:nr-smooth | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:newton-reduction@L451-L451 | proof step: open domain and smoothness
EDGE: stepN:p3:nr-pair | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:newton-reduction@L453-L453 | proof step: derivatives of pairs
EDGE: N:bpN:p3:gen-sol | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:newton-reduction@L441-L441 | IsSolIn F_N W_N R x
EDGE: P:bpP:p0:newton#IsNewtonSolution | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:newton-reduction@L441-L441 | IsNewtonSolution
EDGE: P:bpP:p0:fixedsol#IsFixedSolution | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:newton-reduction@L442-L442 | IsFixedSolution
EDGE: bpI:p0:restricted#IsRestrictedSolutionOn | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:newton-reduction@L445-L445 | IsRestrictedSolutionOn mu J z
EDGE: bpI:p0:restricted#restrictedVectorField | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:newton-reduction@L444-L444 | F_mu is the total extension of restrictedVectorField mu
EDGE: bpI:p0:primaries#CollisionFree | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:newton-reduction@L444-L444 | W_mu defined by CollisionFree
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-nown
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: planeLength, planeSq (used by symbol in the statement) are not nodes of any track-I anchor; they are part of the frozen Newton/restricted definitions.

NODE: stepN:p3:nr-smooth
KIND: step
TITLE: Open domain and smoothness
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:nr-smooth@L451-L451
PROOF_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:nr-smooth@L451-L451
CONTRACT_ID: stepN:p3:nr-smooth
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: data of bpN:p3:newton-reduction
SOURCE_QUANTIFIERS: N, G, mass, mu
SOURCE_CONCLUSION: W_N, W_N', W_mu are open and F_N, F', F_mu are C^infinity on them
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p0:primaries#radius, bpI:p0:primaries#radiusSq, bpI:p0:primaries#primary1, bpI:p0:primaries#primary2
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p0:primaries#radius | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:nr-smooth@L451-L451 | radius = sqrt(radiusSq) in F_mu
EDGE: bpI:p0:primaries#radiusSq | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:nr-smooth@L451-L451 | radiusSq polynomial
EDGE: bpI:p0:primaries#primary1 | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:nr-smooth@L451-L451 | shift by primary_1 mu
EDGE: bpI:p0:primaries#primary2 | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:nr-smooth@L451-L451 | shift by primary_2 mu
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-nown
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
SOURCE_HYPOTHESES: data of bpN:p3:newton-reduction; the smoothness step
SOURCE_QUANTIFIERS: Q, V, x, t
SOURCE_CONCLUSION: x has derivative F_N(x(t)) at t iff the three blocks of the frozen predicate hold (membership in W_N, Q' = V, V' = force); likewise for the fixed-Sun and restricted predicates
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: P:bpP:p0:newton#IsNewtonSolution, P:bpP:p0:fixedsol#IsFixedSolution, bpI:p0:restricted#IsRestrictedSolutionOn, N:bpN:p3:gen-sol
ROUTES: -
ROUTE_FOR: -
EDGE: P:bpP:p0:newton#IsNewtonSolution | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:nr-pair@L453-L453 | blocks of IsNewtonSolution
EDGE: P:bpP:p0:fixedsol#IsFixedSolution | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:nr-pair@L453-L453 | blocks of IsFixedSolution
EDGE: bpI:p0:restricted#IsRestrictedSolutionOn | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:nr-pair@L453-L453 | restricted predicate analogue
EDGE: N:bpN:p3:gen-sol | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:nr-pair@L453-L453 | IsSolIn: derivative F(z(t)) with membership in W
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-nown
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
