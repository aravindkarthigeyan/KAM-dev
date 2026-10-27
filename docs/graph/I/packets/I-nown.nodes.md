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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-I-nown
REVIEWER: sol-review-I-nown
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-I-nown
REVIEWER: sol-review-I-nown
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-I-nown
REVIEWER: sol-review-I-nown
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
SOURCE_HYPOTHESES: hypotheses of bpN:p3:gen-barrier (source data and assumptions only)
SOURCE_QUANTIFIERS: E, F, W, V, J, z, G, S as in bpN:p3:gen-barrier; for all t in J with t <= 0
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
EXTRACTOR: sonnet-extract-I-nown+sol-review-I-nown
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
SOURCE_HYPOTHESES: N >= 2; E_N = (Fin N -> R^2) x (Fin N -> R^2) with max norm; ell = planeLength; W_N = {(q,v) : ell(q_j-q_i) > 0 for every i != j}; F_N(q,v) = (v, (sum_{j != i} (G mass_j / ell(q_j-q_i)^3) (q_j-q_i))_i); for the fixed-Sun variant W_Nprime = W_N cap {(q,v) : ell(q_i) > 0 for every i}, Fprime(q,v) = (v, (-G m0 q_i / ell(q_i)^3 + eps sum_{j != i} (G m_j / ell(q_j-q_i)^3) (q_j-q_i))_i); for the restricted variant W_mu = {z : CollisionFree mu z}, F_mu is the total extension by the same formula of restrictedVectorField mu
SOURCE_QUANTIFIERS: for every N >= 2, G in R and mass : Fin N -> R, and all Q,V : R -> (Fin N -> R^2), set x(t)=(Q(t),V(t)); likewise for every G,m0,eps in R and m : Fin N -> R in the fixed-Sun variant; for every mu in R, arbitrary J subset R and z : R -> R^2 x R^2 in the restricted variant
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
EXTRACTOR: sonnet-extract-I-nown+sol-review-I-nown
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: The fields are the displayed formulas, not arbitrary fields called Newtonian. No mass, G or mu positivity assumption, and no interval assumption on J in the restricted equivalence. planeLength and planeSq are the elementary planar formulas recalled at L451; the P solution-predicate imports remain pending the owning P graph.

NODE: stepN:p3:nr-smooth
KIND: step
TITLE: Open domain and smoothness
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:nr-smooth@L451-L451
PROOF_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:nr-smooth@L451-L451
CONTRACT_ID: stepN:p3:nr-smooth
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: data of bpN:p3:newton-reduction
SOURCE_QUANTIFIERS: for every N >= 2, G in R and mass : Fin N -> R; in the fixed-Sun variant also m0,eps in R and m : Fin N -> R; in the restricted variant every mu in R
SOURCE_CONCLUSION: W_N, W_N', W_mu are open and F_N, F', F_mu are C^infinity on them
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p0:primaries#radius, bpI:p0:primaries#radiusSq, bpI:p0:primaries#primary1, bpI:p0:primaries#primary2, bpI:p0:primaries#CollisionFree, bpI:p0:restricted#restrictedVectorField
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p0:primaries#radius | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:nr-smooth@L451-L451 | radius = sqrt(radiusSq) in F_mu
EDGE: bpI:p0:primaries#radiusSq | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:nr-smooth@L451-L451 | radiusSq polynomial
EDGE: bpI:p0:primaries#primary1 | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:nr-smooth@L451-L451 | shift by primary_1 mu
EDGE: bpI:p0:primaries#primary2 | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:nr-smooth@L451-L451 | shift by primary_2 mu
EDGE: bpI:p0:primaries#CollisionFree | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:nr-smooth@L451-L451 | openness of W_mu uses its two strict positive-radius inequalities
EDGE: bpI:p0:restricted#restrictedVectorField | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:nr-smooth@L451-L451 | finite sums and products in the explicit formula for F_mu
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-nown+sol-review-I-nown
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
SOURCE_HYPOTHESES: typing and field/domain data of bpN:p3:newton-reduction; x(s)=(Q(s),V(s)); no smoothness result assumed
SOURCE_QUANTIFIERS: all Newtonian and fixed-Sun parameters as in bpN:p3:newton-reduction; all Q,V : R -> (Fin N -> R^2) and t in R; likewise every mu in R and z : R -> R^2 x R^2, pointwise for t in an arbitrary J subset R
SOURCE_CONCLUSION: the three frozen Newtonian clauses at t (positive pair distances, component derivatives Q_i prime = V_i(t), and V_i prime = force_i) hold iff x(t) in W_N AND HasDerivAt x (F_N(x(t))) t; likewise for the fixed-Sun domain W_Nprime and field Fprime; the restricted clause at t is equivalently z(t) in W_mu AND HasDerivAt z (F_mu(z(t))) t. Quantifying these pointwise equivalences gives the IsSolIn equivalences of bpN:p3:newton-reduction
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
EXTRACTOR: sonnet-extract-I-nown+sol-review-I-nown
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: L453 identifies the first block with domain membership before bundling the derivative blocks. Its final sentence omits the membership conjunct in words; retain that conjunct as required by the first block and IsSolIn. This is a reported source wording defect, not a new smoothness premise.
