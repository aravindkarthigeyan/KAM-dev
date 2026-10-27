NODE: bpN:p3:ext-pl
KIND: external
TITLE: Picard--Lindel\"of, quantitative form
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:ext-pl@L32-L40
PROOF_SOURCE: -
CONTRACT_ID: bpN:p3:ext-pl
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: F : E → E; x ∈ E; a, M, L ≥ 0 with ¦F(y)¦ ≤ M and F L-Lipschitz on the closed ball B̄(x,a); T ≥ 0 with MT ≤ a (E finite-dimensional real normed space)
SOURCE_QUANTIFIERS: E; F; x; a, M, L; T; t₀ (t₀ is not introduced in the text, read as arbitrary in ℝ)
SOURCE_CONCLUSION: there is α : ℝ → E with α(t₀) = x and α has derivative F(α(t)) within [t₀−T, t₀+T] at each t of that interval
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p3a
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: external fact E1 (Mathlib IsPicardLindelof with r = 0); the text writes '¦F(y)¦ ≤ M' without saying y ∈ B̄(x,a) and uses t₀ without introducing it (reported)

NODE: bpN:p3:ext-unique
KIND: external
TITLE: Uniqueness with a Lipschitz constant on a set
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:ext-unique@L41-L45
PROOF_SOURCE: -
CONTRACT_ID: bpN:p3:ext-unique
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: S ⊂ E; F L-Lipschitz on S; f, g : [a,b] → E continuous with right derivatives F(f(t)), F(g(t)) on [a,b), values in S, f(a) = g(a)
SOURCE_QUANTIFIERS: E; S; F; L; a ≤ b; f, g
SOURCE_CONCLUSION: f = g on [a,b]; mirror statement with f(b) = g(b) and left derivatives
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p3a
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: external fact E2 (Mathlib ODE_solution_unique_of_mem_Icc_right/left)

NODE: bpN:p3:ext-lip-local
KIND: external
TITLE: $C^1$ implies locally Lipschitz
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:ext-lip-local@L46-L49
PROOF_SOURCE: -
CONTRACT_ID: bpN:p3:ext-lip-local
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: F C¹ at p (first sentence); F locally Lipschitz on a compact set (second sentence)
SOURCE_QUANTIFIERS: F; p; then L and a neighbourhood depending on p; compact set
SOURCE_CONCLUSION: there are L and a neighbourhood of p on which F is L-Lipschitz; a function locally Lipschitz on a compact set is Lipschitz there
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p3a
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: external fact E3; stays an external (SPEC decision): its \ref to Lemma gen-lip is a pointer to a related statement, not a restatement

NODE: bpN:p3:ext-compact
KIND: external
TITLE: Topology
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:ext-compact@L53-L57
PROOF_SOURCE: -
CONTRACT_ID: bpN:p3:ext-compact
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: E finite-dimensional real normed space; A ⊂ E nonempty closed (for the distance statement)
SOURCE_QUANTIFIERS: E; compact sets and sequences; A
SOURCE_CONCLUSION: Heine-Borel in E; continuous images of compact sets are compact; sequential compactness; x ↦ dist(x,A) continuous and positive exactly on E∖A for nonempty closed A; thickenings K_δ = {y : ∃x∈K, ¦y−x¦ ≤ δ}
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p3a
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: external fact E5 (topology)

NODE: bpN:p3:ext-calc
KIND: external
TITLE: Calculus
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:ext-calc@L58-L62
PROOF_SOURCE: -
CONTRACT_ID: bpN:p3:ext-calc
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: chain rule data; f continuous on [s,t] with right derivative 0 on [s,t); one-sided derivatives at a point; H C^{k+1} on an open set
SOURCE_QUANTIFIERS: functions; s < t; k
SOURCE_CONCLUSION: chain rule HasFDerivAt.comp_hasDerivAt; f constant on [s,t]; two one-sided derivatives agreeing give a two-sided one; ContDiffOn.fderiv_of_isOpen: H C^{k+1} on an open set gives DH C^k there
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p3a
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: external fact E6 (calculus)

NODE: bpN:p3:totality
KIND: claim
TITLE: Lean totality
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:totality@L78-L84
PROOF_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:totality@L78-L84
CONTRACT_ID: bpN:p3:totality
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: none (remark); frozen KAM.hamiltonianVectorField uses fderiv, which is 0 at points of non-differentiability
SOURCE_QUANTIFIERS: H; points where H is C² or inside the frozen predicates
SOURCE_CONCLUSION: states that X_H occurs only on an open set where H is C² (or inside the frozen predicates, which assert differentiability at every visited point), and that the general layer never uses F off W
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p0:vf#hamiltonianVectorField
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p0:vf#hamiltonianVectorField | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:totality@L79-L79 | KAM.hamiltonianVectorField uses fderiv (total definition)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p3a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: kept as a claim node because Part 5 (flow proof, L56) extends F by 0 outside Ω citing this remark; the Newtonian half of the remark (planeLength, radius) is track P/I business and is not used by track N

NODE: bpN:p3:gen-sol
KIND: definition
TITLE: Solutions in $W$
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-sol@L88-L93
PROOF_SOURCE: -
CONTRACT_ID: bpN:p3:gen-sol
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: F : E → E; W ⊂ E; J ⊂ ℝ; z : ℝ → E (§s-conv conventions: E finite-dimensional real normed space; F : E → E total; W ⊂ E open; 'C¹ on W' = ContDiffOn ℝ 1 F W; intervals are order-connected; derivatives two-sided)
SOURCE_QUANTIFIERS: E; F; W; J; z
SOURCE_CONCLUSION: defines IsSolIn F W J z: for every t ∈ J, z(t) ∈ W and z has derivative F(z(t)) at t (two-sided HasDerivAt, including endpoints of J)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p3a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: package for the general layer; the conventions paragraph prose-L15-L26 is recorded in the source fields (E, two-sided derivative); suggested Lean name KAM.ODE.IsSolutionIn (not a frozen declaration)

NODE: bpN:p3:gen-sol#consequences
KIND: claim
TITLE: Elementary consequences of IsSolIn
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-sol@L95-L99
PROOF_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-sol@L95-L99
CONTRACT_ID: bpN:p3:gen-sol#consequences
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: IsSolIn F W J z (bpN:p3:gen-sol); (i) J' ⊂ J; (iii) J' open and a neighbourhood of each of its points, z = y on J'
SOURCE_QUANTIFIERS: F; W; J; z; J'; y
SOURCE_CONCLUSION: (i) IsSolIn F W J' z (restriction); (ii) z is continuous on J; (iii) local nature: for open J' with z = y on J', IsSolIn F W J' y ⇔ IsSolIn F W J' z
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p3:gen-sol, bpN:p3:ext-calc
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p3:gen-sol | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-sol#consequences@L95-L95 | elementary consequences of the predicate IsSolIn
EDGE: bpN:p3:ext-calc | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-sol#consequences@L95-L95 | each a one-line Lean lemma, from the calculus facts (differentiable implies continuous; derivative at a point depends only on a neighbourhood)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p3a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: section-data claim for coverage item p3:prose-L95-L99; statement and proof are the same unlabelled paragraph; consumers: short-boot, short-ext, uq-compact, ext-right, max-glue, cont-glue, exit-closed, exit-bdry

NODE: bpN:p3:gen-symmetry
KIND: lemma
TITLE: Symmetries
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-symmetry@L101-L110
PROOF_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-symmetry@L111-L114
CONTRACT_ID: bpN:p3:gen-symmetry
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: IsSolIn F W J z; (a) c ∈ ℝ; (b) F C¹ on W for the second clause; (c) v ∈ E with W + v = W and F(x+v) = F(x) for x ∈ W
SOURCE_QUANTIFIERS: E; F; W; J; z; then c, resp. v
SOURCE_CONCLUSION: (a) t ↦ z(t+c) is a solution on J−c; (b) t ↦ z(−t) is a solution of −F on −J, and −F is C¹ on W if F is; (c) t ↦ z(t)+v is a solution of F in W on J
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p3:gen-sol, stepN:p3:sym
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p3:gen-sol | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-symmetry@L102-L102 | hypothesis IsSolIn F W J z and conclusion about solutions
EDGE: stepN:p3:sym | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-symmetry@L112-L112 | proof step
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p3a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p3:sym
KIND: step
TITLE: Chain rule
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:sym@L112-L113
PROOF_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:sym@L112-L113
CONTRACT_ID: stepN:p3:sym
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: IsSolIn F W J z; chain rule; for (c) F(z(t)+v) = F(z(t)) and W + v = W
SOURCE_QUANTIFIERS: as gen-symmetry
SOURCE_CONCLUSION: (a), (b) by the chain rule for t ↦ t+c, t ↦ −t; (c) z+v has derivative F(z(t)) = F(z(t)+v) and z(t)+v ∈ W+v = W
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p3:ext-calc, bpN:p3:gen-sol
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p3:ext-calc | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:sym@L112-L112 | chain rule for t ↦ t+c and t ↦ −t
EDGE: bpN:p3:gen-sol | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:sym@L113-L113 | membership in W and derivative of the solution
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p3a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpN:p3:gen-lip
KIND: lemma
TITLE: Bounds and Lipschitz constants on compact sets
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-lip@L116-L120
PROOF_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-lip@L121-L134
CONTRACT_ID: bpN:p3:gen-lip
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: F C¹ on the open set W ⊂ E; K ⊂ W compact
SOURCE_QUANTIFIERS: E; W; F; K; then M and L
SOURCE_CONCLUSION: F is bounded on K, and there is L ≥ 0 with ¦F(x)−F(y)¦ ≤ L¦x−y¦ for x, y ∈ K
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p3:lip-bdd
ROUTES: stepN:p3:lip-mathlib, stepN:p3:lip-explicit
ROUTE_FOR: -
EDGE: stepN:p3:lip-bdd | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-lip@L124-L124 | boundedness of F on K (common to both routes)
EDGE: stepN:p3:lip-mathlib | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-lip@L122-L122 | route (i): via Mathlib (locally Lipschitz on compact set)
EDGE: stepN:p3:lip-explicit | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-lip@L124-L124 | route (ii): explanatory proof by contradiction and compactness ('Alternatively')
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p3a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: 'Alternatively' at L122 makes the Mathlib route and the explanatory proof two alternative routes for the Lipschitz clause; the bound is shared

NODE: stepN:p3:lip-mathlib
KIND: route
TITLE: Via Mathlib
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:lip-mathlib@L122-L122
PROOF_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:lip-mathlib@L122-L122
CONTRACT_ID: stepN:p3:lip-mathlib
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: F C¹ on W open; K ⊂ W compact
SOURCE_QUANTIFIERS: as gen-lip
SOURCE_CONCLUSION: F is locally Lipschitz at every point of W, hence on K, and LocallyLipschitzOn.exists_lipschitzOnWith_of_compact gives L
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p3:ext-lip-local
ROUTES: -
ROUTE_FOR: bpN:p3:gen-lip
EDGE: bpN:p3:ext-lip-local | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:lip-mathlib@L122-L122 | C¹ implies locally Lipschitz; locally Lipschitz on a compact set is Lipschitz
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p3a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p3:lip-explicit
KIND: route
TITLE: Explanatory proof of the Lipschitz clause
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:lip-explicit@L124-L133
PROOF_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:lip-explicit@L124-L133
CONTRACT_ID: stepN:p3:lip-explicit
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: F C¹ on W open; K ⊂ W compact
SOURCE_QUANTIFIERS: as gen-lip
SOURCE_CONCLUSION: explanatory proof of the Lipschitz clause: contradiction hypothesis and compactness (the steps lip-contra, lip-compact)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p3:lip-contra, stepN:p3:lip-compact
ROUTES: -
ROUTE_FOR: bpN:p3:gen-lip
EDGE: stepN:p3:lip-contra | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:lip-explicit@L126-L126 | if no L works, sequences x_k, y_k with the Lipschitz quotient > k
EDGE: stepN:p3:lip-compact | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:lip-explicit@L130-L130 | convergent subsequence and local Lipschitz constant contradict
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p3a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: new route node: the remaining steps lip-bdd..lip-compact of Lemma gen-lip ('The remaining steps are the explanatory proof of that fact', L122); lip-bdd is shared with the other route; STATEMENT/PROOF_SOURCE are L124-L133

NODE: stepN:p3:lip-bdd
KIND: step
TITLE: Bounded
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:lip-bdd@L124-L124
PROOF_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:lip-bdd@L124-L124
CONTRACT_ID: stepN:p3:lip-bdd
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: F continuous on W ⊃ K; K compact
SOURCE_QUANTIFIERS: as gen-lip; M
SOURCE_CONCLUSION: ¦F¦ ≤ M on the compact set K
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p3:ext-compact
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p3:ext-compact | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:lip-bdd@L124-L124 | continuous image of a compact set is bounded
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p3a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p3:lip-contra
KIND: step
TITLE: Contradiction hypothesis
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:lip-contra@L126-L128
PROOF_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:lip-contra@L126-L128
CONTRACT_ID: stepN:p3:lip-contra
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: no L works; M from lip-bdd
SOURCE_QUANTIFIERS: k ∈ ℕ, k ≥ 1; x_k ≠ y_k ∈ K
SOURCE_CONCLUSION: for every k there are x_k ≠ y_k ∈ K with ¦F(x_k)−F(y_k)¦ > k¦x_k−y_k¦, hence ¦x_k−y_k¦ < 2M/k → 0
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p3:lip-bdd
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p3:lip-bdd | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:lip-contra@L127-L127 | the bound M gives ¦x_k−y_k¦ < 2M/k
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p3a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p3:lip-compact
KIND: step
TITLE: Compactness
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:lip-compact@L130-L133
PROOF_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:lip-compact@L130-L133
CONTRACT_ID: stepN:p3:lip-compact
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: sequences x_k, y_k of lip-contra; K compact; F C¹ at p
SOURCE_QUANTIFIERS: p ∈ K; L_p and neighbourhood N_p of p; large j
SOURCE_CONCLUSION: a subsequence x_{k_j} → p ∈ K and y_{k_j} → p; for large j both lie in the L_p-Lipschitz neighbourhood N_p and k_j > L_p, contradicting lip-contra
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p3:ext-compact, bpN:p3:ext-lip-local, stepN:p3:lip-contra
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p3:ext-compact | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:lip-compact@L130-L130 | sequential compactness of K
EDGE: bpN:p3:ext-lip-local | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:lip-compact@L130-L130 | L_p and a neighbourhood N_p of p on which F is L_p-Lipschitz
EDGE: stepN:p3:lip-contra | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:lip-compact@L132-L132 | contradiction with the choice of x_k, y_k
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p3a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpN:p3:gen-uniform
KIND: definition
TITLE: Uniform data
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-uniform@L136-L141
PROOF_SOURCE: -
CONTRACT_ID: bpN:p3:gen-uniform
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: F C¹ on the open set W; Φ ⊂ E; δ > 0; M, L ≥ 0 (§s-conv conventions: E finite-dimensional real normed space; F : E → E total; W ⊂ E open; 'C¹ on W' = ContDiffOn ℝ 1 F W; intervals are order-connected; derivatives two-sided)
SOURCE_QUANTIFIERS: E; W; F; Φ; δ, M, L
SOURCE_CONCLUSION: defines 'Φ has uniform data (δ,M,L)': for every x ∈ Φ, B̄(x,δ) ⊂ W, ¦F¦ ≤ M on B̄(x,δ) and F is L-Lipschitz on B̄(x,δ)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p3a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: package for continuation results, Part 7 transfer and Part 11c; the parenthetical via ext-mvt (gradient bound gives Lipschitz clause) is an aside, not used

NODE: bpN:p3:gen-uniform-compact
KIND: lemma
TITLE: Compact sets have uniform data
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-uniform-compact@L143-L146
PROOF_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-uniform-compact@L147-L154
CONTRACT_ID: bpN:p3:gen-uniform-compact
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: F C¹ on the open set W; K ⊂ W compact; uniform data of bpN:p3:gen-uniform
SOURCE_QUANTIFIERS: E; W; F; K; then δ > 0, M, L
SOURCE_CONCLUSION: K has uniform data (δ,M,L) for some δ > 0, and K_δ = {y : ∃x∈K, ¦y−x¦ ≤ δ} ⊂ W is compact
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p3:gen-uniform, stepN:p3:uc-delta, stepN:p3:uc-data
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p3:gen-uniform | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-uniform-compact@L144-L144 | conclusion is uniform data
EDGE: stepN:p3:uc-delta | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-uniform-compact@L148-L148 | choice of δ and compactness of K_δ
EDGE: stepN:p3:uc-data | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-uniform-compact@L153-L153 | constants M, L on K_δ
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p3a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p3:uc-delta
KIND: step
TITLE: Choice of $\delta$
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:uc-delta@L148-L151
PROOF_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:uc-delta@L148-L151
CONTRACT_ID: stepN:p3:uc-delta
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: K ⊂ W compact, W open
SOURCE_QUANTIFIERS: case split K = ∅, W = E, otherwise; δ
SOURCE_CONCLUSION: δ > 0 with K_δ ⊂ W (δ = 1 if K = ∅ or W = E; else 2δ = min of dist(·, E∖W) on K) and K_δ compact (image of K × B̄(0,δ) under addition)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p3:ext-compact
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p3:ext-compact | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:uc-delta@L149-L149 | dist(·,A) continuous and positive on K, minimum on compact K, image of compact set
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p3a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p3:uc-data
KIND: step
TITLE: Data
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:uc-data@L153-L153
PROOF_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:uc-data@L153-L153
CONTRACT_ID: stepN:p3:uc-data
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: K_δ ⊂ W compact (uc-delta); F C¹ on W
SOURCE_QUANTIFIERS: x ∈ K
SOURCE_CONCLUSION: ¦F¦ ≤ M and F L-Lipschitz on K_δ ⊃ B̄(x,δ) for x ∈ K
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p3:gen-lip, stepN:p3:uc-delta
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p3:gen-lip | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:uc-data@L153-L153 | bound and Lipschitz constant on the compact set K_δ
EDGE: stepN:p3:uc-delta | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:uc-data@L153-L153 | K_δ ⊂ W compact
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p3a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpN:p3:gen-uniform-periodic
KIND: lemma
TITLE: Uniform data for angle-periodic fields
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-uniform-periodic@L156-L160
PROOF_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-uniform-periodic@L161-L169
CONTRACT_ID: bpN:p3:gen-uniform-periodic
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: E = ℝⁿ × ℝⁿ with max norm; U ⊂ ℝⁿ open; W = ℝⁿ × U; F C¹ on W with F(θ+k,I) = F(θ,I) for (θ,I) ∈ W, k ∈ ℤⁿ; K ⊂ U compact
SOURCE_QUANTIFIERS: n; U; F; K; then δ ∈ (0,1], M, L
SOURCE_CONCLUSION: Φ = ℝⁿ × K has uniform data (δ,M,L) for some δ ∈ (0,1]
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p3:gen-uniform, stepN:p3:up-cell, stepN:p3:up-translate
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p3:gen-uniform | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-uniform-periodic@L157-L157 | conclusion is uniform data
EDGE: stepN:p3:up-cell | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-uniform-periodic@L162-L162 | choice of δ and compact cell C
EDGE: stepN:p3:up-translate | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-uniform-periodic@L166-L166 | translation of balls into the cell
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p3a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p3:up-cell
KIND: step
TITLE: A compact cell
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:up-cell@L162-L164
PROOF_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:up-cell@L162-L164
CONTRACT_ID: stepN:p3:up-cell
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: U open, K ⊂ U compact, F C¹ on W
SOURCE_QUANTIFIERS: case K = ∅; δ ∈ (0,1]; C = [−1,2]ⁿ × K_δ; M, L_C
SOURCE_CONCLUSION: δ ∈ (0,1] with K_δ ⊂ U; C = [−1,2]ⁿ × K_δ compact ⊂ W; constants M, L_C of F on C
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p3:uc-delta, bpN:p3:ext-compact, bpN:p3:gen-lip
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p3:uc-delta | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:up-cell@L162-L162 | choice of δ as in Step uc-delta (distance to the closed set ℝⁿ∖U)
EDGE: bpN:p3:ext-compact | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:up-cell@L163-L163 | compactness of C
EDGE: bpN:p3:gen-lip | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:up-cell@L164-L164 | M and L_C on the compact C
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p3a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p3:up-translate
KIND: step
TITLE: Translating a ball into the cell
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:up-translate@L166-L168
PROOF_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:up-translate@L166-L168
CONTRACT_ID: stepN:p3:up-translate
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: δ ≤ 1; max norm; C, M, L_C from up-cell; F periodic in θ
SOURCE_QUANTIFIERS: x = (θ,I) ∈ Φ; k = (⌊θ_i⌋)_i; x' = x − (k,0)
SOURCE_CONCLUSION: B̄(x',δ) ⊂ C and B̄(x,δ) = B̄(x',δ) + (k,0) ⊂ W; by periodicity ¦F¦ ≤ M and F is L_C-Lipschitz on B̄(x,δ)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p3:up-cell
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p3:up-cell | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:up-translate@L166-L166 | cell C and constants M, L_C
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p3a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpN:p3:gen-short
KIND: lemma
TITLE: A priori short-time confinement
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-short@L173-L179
PROOF_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-short@L180-L188
CONTRACT_ID: bpN:p3:gen-short
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: J interval; t₀ ∈ J; α : ℝ → E with α(t₀) = x and α'(t) = F(α(t)) for all t ∈ J (two-sided; F only a function); ¦F¦ ≤ M on B̄(x,δ), M > 0
SOURCE_QUANTIFIERS: E; F; J; t₀; α; x; δ; M
SOURCE_CONCLUSION: ¦α(t)−x¦ ≤ M¦t−t₀¦ for all t ∈ J with ¦t−t₀¦ < δ/M; in particular α(t) ∈ B̄(x,δ)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p3:short-boot, stepN:p3:short-ext
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p3:short-boot | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-short@L181-L181 | bootstrap set A and its supremum
EDGE: stepN:p3:short-ext | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-short@L185-L185 | extension past s*
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p3a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p3:short-boot
KIND: step
TITLE: Forward bootstrap
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:short-boot@L181-L183
PROOF_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:short-boot@L181-L183
CONTRACT_ID: stepN:p3:short-boot
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: case t₀ < t < t₀+δ/M; α continuous on J
SOURCE_QUANTIFIERS: t ∈ J; A = {s ∈ [t₀,t] : ¦α(u)−x¦ ≤ M(u−t₀) ∀u ∈ [t₀,s]}; s* = sup A
SOURCE_CONCLUSION: t₀ ∈ A, A closed, so s* ∈ A (t < t₀ by time reversal, t = t₀ trivial)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p3:gen-symmetry, bpN:p3:gen-sol#consequences
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p3:gen-symmetry | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:short-boot@L181-L181 | case t < t₀ by time reversal (gen-symmetry(b))
EDGE: bpN:p3:gen-sol#consequences | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:short-boot@L182-L182 | continuity of α on J gives A closed
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p3a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p3:short-ext
KIND: step
TITLE: Extension
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:short-ext@L185-L187
PROOF_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:short-ext@L185-L187
CONTRACT_ID: stepN:p3:short-ext
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: s* ∈ A (short-boot); s* < t; ¦F¦ ≤ M on B̄(x,δ)
SOURCE_QUANTIFIERS: η > 0
SOURCE_CONCLUSION: s* = t: otherwise ¦α(s*)−x¦ < δ, continuity gives η with α([s*,s*+η]) ⊂ B̄(x,δ), the mean value inequality gives ¦α(u)−x¦ ≤ M(u−t₀) there, contradicting the definition of s*
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p3:short-boot, bpN:p3:gen-sol#consequences, K:bp:p1:ext-mvt
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p3:short-boot | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:short-ext@L185-L185 | s* ∈ A and definition of A
EDGE: bpN:p3:gen-sol#consequences | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:short-ext@L185-L185 | continuity of α gives η
EDGE: K:bp:p1:ext-mvt | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:short-ext@L186-L186 | mean value inequality for a curve with derivative bounded by M
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p3a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpN:p3:gen-uniform-exist
KIND: proposition
TITLE: Local existence with uniform time
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-uniform-exist@L190-L196
PROOF_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-uniform-exist@L197-L203
CONTRACT_ID: bpN:p3:gen-uniform-exist
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: F C¹ on the open set W; Φ has uniform data (δ,M,L); M' = max(M,1); ε = δ/M'
SOURCE_QUANTIFIERS: E; W; F; Φ; δ, M, L; then for every x ∈ Φ and t₀ ∈ ℝ an α
SOURCE_CONCLUSION: for every x ∈ Φ and t₀ ∈ ℝ there is α : ℝ → E with α(t₀) = x, ¦α(t)−x¦ < δ on (t₀−ε, t₀+ε) and IsSolIn F W (t₀−ε, t₀+ε) α; ε depends only on (δ,M)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p3:gen-uniform, bpN:p3:gen-sol, stepN:p3:ue-pl, stepN:p3:ue-stay
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p3:gen-uniform | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-uniform-exist@L191-L191 | hypothesis: Φ has uniform data (δ,M,L)
EDGE: bpN:p3:gen-sol | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-uniform-exist@L196-L196 | conclusion IsSolIn
EDGE: stepN:p3:ue-pl | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-uniform-exist@L198-L198 | construction of α by Picard-Lindelöf
EDGE: stepN:p3:ue-stay | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-uniform-exist@L202-L202 | α stays in B̄(x,δ) ⊂ W
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p3a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: parent depends on the package gen-uniform (statement) and gen-sol (conclusion predicate)

NODE: stepN:p3:ue-pl
KIND: step
TITLE: Picard--Lindel\"of
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:ue-pl@L198-L200
PROOF_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:ue-pl@L198-L200
CONTRACT_ID: stepN:p3:ue-pl
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: uniform data (δ,M,L); ε = δ/M'
SOURCE_QUANTIFIERS: x ∈ Φ; t₀
SOURCE_CONCLUSION: ext-pl with a = δ, bound M', Lipschitz L, T = ε (M'T = δ ≤ a) gives α with α(t₀) = x and derivative F(α(t)) within [t₀−ε,t₀+ε]; two-sided on the open interval
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p3:ext-pl, bpN:p3:gen-uniform
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p3:ext-pl | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:ue-pl@L198-L198 | quantitative Picard-Lindelöf with a = δ, T = ε
EDGE: bpN:p3:gen-uniform | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:ue-pl@L198-L198 | bound M and Lipschitz constant L on B̄(x,δ) come from the uniform data
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p3a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p3:ue-stay
KIND: step
TITLE: Staying in $W$
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:ue-stay@L202-L202
PROOF_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:ue-stay@L202-L202
CONTRACT_ID: stepN:p3:ue-stay
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: α from ue-pl on J = (t₀−ε,t₀+ε); uniform data
SOURCE_QUANTIFIERS: t ∈ J
SOURCE_CONCLUSION: ¦α(t)−x¦ ≤ M'¦t−t₀¦ < δ, so α(t) ∈ B̄(x,δ) ⊂ W
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p3:gen-short, stepN:p3:ue-pl, bpN:p3:gen-uniform
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p3:gen-short | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:ue-stay@L202-L202 | a priori short-time confinement on J
EDGE: stepN:p3:ue-pl | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:ue-stay@L202-L202 | the solution α
EDGE: bpN:p3:gen-uniform | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:ue-stay@L202-L202 | B̄(x,δ) ⊂ W
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p3a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpN:p3:gen-local
KIND: theorem
TITLE: Local existence, both time directions
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-local@L205-L210
PROOF_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-local@L211-L213
CONTRACT_ID: bpN:p3:gen-local
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: F C¹ on the open set W; x₀ ∈ W; t₀ ∈ ℝ; (for the uniform clause) K ⊂ W compact
SOURCE_QUANTIFIERS: E; W; F; x₀; t₀; (K); then ε and α
SOURCE_CONCLUSION: there are ε > 0 and α : ℝ → E with α(t₀) = x₀ and IsSolIn F W (t₀−ε, t₀+ε) α; ε may be taken uniform on any compact K ⊂ W (all x₀ ∈ K)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p3:gen-sol, stepN:p3:loc-red
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p3:gen-sol | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-local@L207-L207 | conclusion IsSolIn
EDGE: stepN:p3:loc-red | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-local@L212-L212 | reduction to uniform data
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p3a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p3:loc-red
KIND: step
TITLE: Reduction
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:loc-red@L212-L212
PROOF_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:loc-red@L212-L212
CONTRACT_ID: stepN:p3:loc-red
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: {x₀} resp. K compact; F C¹ on W
SOURCE_QUANTIFIERS: x₀ or K
SOURCE_CONCLUSION: uniform data for {x₀} resp. K (gen-uniform-compact) and the claim (gen-uniform-exist)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p3:gen-uniform-compact, bpN:p3:gen-uniform-exist
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p3:gen-uniform-compact | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:loc-red@L212-L212 | uniform data on the compact set
EDGE: bpN:p3:gen-uniform-exist | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:loc-red@L212-L212 | local solution of uniform time
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p3a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpN:p3:gen-uniqueness
KIND: theorem
TITLE: Uniqueness on arbitrary intervals
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-uniqueness@L217-L224
PROOF_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-uniqueness@L225-L234
CONTRACT_ID: bpN:p3:gen-uniqueness
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: F C¹ on the open set W; J ⊂ ℝ an interval of any kind; t₀ ∈ J; y₁, y₂ : ℝ → E with IsSolIn F W J y_i and y₁(t₀) = y₂(t₀); no confinement, boundedness or smallness assumed
SOURCE_QUANTIFIERS: E; W; F; J; t₀; y₁, y₂
SOURCE_CONCLUSION: y₁ = y₂ on J; in particular solutions on intervals J₁, J₂ agreeing at one point of J₁∩J₂ agree on J₁∩J₂
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p3:gen-sol, stepN:p3:uq-compact, stepN:p3:uq-lip, stepN:p3:uq-apply
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p3:gen-sol | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-uniqueness@L219-L219 | hypothesis IsSolIn F W J y_i
EDGE: stepN:p3:uq-compact | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-uniqueness@L226-L226 | compact piece
EDGE: stepN:p3:uq-lip | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-uniqueness@L230-L230 | Lipschitz constant on K
EDGE: stepN:p3:uq-apply | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-uniqueness@L232-L232 | apply the uniqueness external
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p3a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p3:uq-compact
KIND: step
TITLE: A compact piece
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:uq-compact@L226-L228
PROOF_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:uq-compact@L226-L228
CONTRACT_ID: stepN:p3:uq-compact
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: t₁ ∈ J, t₁ > t₀ (t₁ < t₀ mirror); y_i continuous on [t₀,t₁] ⊂ J
SOURCE_QUANTIFIERS: t₁; K = y₁([t₀,t₁]) ∪ y₂([t₀,t₁])
SOURCE_CONCLUSION: K is compact and K ⊂ W
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p3:ext-compact, bpN:p3:gen-sol#consequences, bpN:p3:ext-unique
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p3:ext-compact | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:uq-compact@L227-L227 | continuous images of compact sets are compact
EDGE: bpN:p3:gen-sol#consequences | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:uq-compact@L227-L227 | y_i continuous on [t₀,t₁] and the values lie in W
EDGE: bpN:p3:ext-unique | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:uq-compact@L226-L226 | left-derivative form for the mirror case t₁ < t₀
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p3a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p3:uq-lip
KIND: step
TITLE: Lipschitz on $K$
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:uq-lip@L230-L230
PROOF_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:uq-lip@L230-L230
CONTRACT_ID: stepN:p3:uq-lip
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: K ⊂ W compact (uq-compact); F C¹ on W
SOURCE_QUANTIFIERS: L
SOURCE_CONCLUSION: F is L-Lipschitz on K
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p3:gen-lip, stepN:p3:uq-compact
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p3:gen-lip | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:uq-lip@L230-L230 | Lipschitz constant on the compact set K
EDGE: stepN:p3:uq-compact | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:uq-lip@L230-L230 | the compact set K
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p3a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p3:uq-apply
KIND: step
TITLE: Apply \ref{bpN:p3:ext-unique}
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:uq-apply@L232-L233
PROOF_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:uq-apply@L232-L233
CONTRACT_ID: stepN:p3:uq-apply
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: y_i continuous on [t₀,t₁], right derivative F(y_i(t)) on [t₀,t₁), values in K, F L-Lipschitz on K
SOURCE_QUANTIFIERS: t₁
SOURCE_CONCLUSION: y₁(t₁) = y₂(t₁)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p3:ext-unique, stepN:p3:uq-lip, stepN:p3:uq-compact
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p3:ext-unique | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:uq-apply@L232-L232 | uniqueness with a Lipschitz constant on a set
EDGE: stepN:p3:uq-lip | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:uq-apply@L232-L232 | F is Lipschitz on K
EDGE: stepN:p3:uq-compact | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:uq-apply@L232-L232 | values in K, continuity
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p3a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpN:p3:gen-extend
KIND: lemma
TITLE: Extension to an open interval
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-extend@L238-L241
PROOF_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-extend@L242-L249
CONTRACT_ID: bpN:p3:gen-extend
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: F C¹ on the open set W; J ≠ ∅ an interval; IsSolIn F W J y
SOURCE_QUANTIFIERS: E; W; F; J; y; then J' and y'
SOURCE_CONCLUSION: there are an open interval J' ⊃ J and y' with y' = y on J and IsSolIn F W J' y'
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p3:gen-sol, stepN:p3:ext-right, stepN:p3:ext-left
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p3:gen-sol | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-extend@L240-L240 | hypothesis and conclusion IsSolIn
EDGE: stepN:p3:ext-right | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-extend@L243-L243 | right end
EDGE: stepN:p3:ext-left | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-extend@L248-L248 | left end
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p3a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p3:ext-right
KIND: step
TITLE: Right end
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:ext-right@L243-L246
PROOF_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:ext-right@L243-L246
CONTRACT_ID: stepN:p3:ext-right
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: J has a largest element b (else J₁ = J); y(b) ∈ W
SOURCE_QUANTIFIERS: b; ε; α; y₁
SOURCE_CONCLUSION: y₁ = y on s ≤ b, = α on s > b is a solution on J₁ = J ∪ (b,b+ε): two-sided derivative at b from the two one-sided ones
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p3:gen-local, bpN:p3:ext-calc, bpN:p3:gen-sol#consequences
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p3:gen-local | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:ext-right@L243-L243 | local solution α through y(b) at t₀ = b
EDGE: bpN:p3:ext-calc | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:ext-right@L245-L245 | two one-sided derivatives give a two-sided one
EDGE: bpN:p3:gen-sol#consequences | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:ext-right@L245-L245 | local nature: y₁ agrees with y, resp. α, near t
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p3a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p3:ext-left
KIND: step
TITLE: Left end
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:ext-left@L248-L248
PROOF_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:ext-left@L248-L248
CONTRACT_ID: stepN:p3:ext-left
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: ext-right; reversed solution y₁(−·)
SOURCE_QUANTIFIERS: as ext-right
SOURCE_CONCLUSION: the result of ext-right applied to y(−·) has no endpoint, so is an open interval
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p3:ext-right, bpN:p3:gen-symmetry
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p3:ext-right | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:ext-left@L248-L248 | apply Step ext-right to the reversed solution
EDGE: bpN:p3:gen-symmetry | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:ext-left@L248-L248 | time reversal (gen-symmetry(b))
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p3a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpN:p3:gen-maximal
KIND: theorem
TITLE: Maximal solution
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-maximal@L251-L258
PROOF_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-maximal@L259-L268
CONTRACT_ID: bpN:p3:gen-maximal
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: F C¹ on the open set W; x₀ ∈ W
SOURCE_QUANTIFIERS: E; W; F; x₀; then T₋, T₊, z
SOURCE_CONCLUSION: there are T₋ ∈ [−∞,0), T₊ ∈ (0,+∞] and z with z(0) = x₀, IsSolIn F W (T₋,T₊) z, such that every solution y with y(0) = x₀ on an interval J ∋ 0 has J ⊂ (T₋,T₊) and y = z on J; interval and solution unique; for initial time t₀ use gen-symmetry(a)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p3:gen-sol, bpN:p3:gen-symmetry, stepN:p3:max-union, stepN:p3:max-glue, stepN:p3:max-max
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p3:gen-sol | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-maximal@L253-L253 | conclusion IsSolIn
EDGE: bpN:p3:gen-symmetry | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-maximal@L257-L257 | time shift for initial time t₀
EDGE: stepN:p3:max-union | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-maximal@L260-L260 | union of open intervals
EDGE: stepN:p3:max-glue | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-maximal@L263-L263 | gluing
EDGE: stepN:p3:max-max | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-maximal@L266-L266 | maximality
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p3a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p3:max-union
KIND: step
TITLE: The union
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:max-union@L260-L261
PROOF_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:max-union@L260-L261
CONTRACT_ID: stepN:p3:max-union
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: 𝒥 = open intervals J ∋ 0 carrying a solution y_J with y_J(0) = x₀
SOURCE_QUANTIFIERS: x₀; J ∈ 𝒥
SOURCE_CONCLUSION: 𝒥 ≠ ∅ and I = ∪𝒥 is an open interval (T₋,T₊) ∋ 0
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p3:gen-local
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p3:gen-local | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:max-union@L260-L260 | 𝒥 nonempty by local existence
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p3a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p3:max-glue
KIND: step
TITLE: Gluing
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:max-glue@L263-L264
PROOF_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:max-glue@L263-L264
CONTRACT_ID: stepN:p3:max-glue
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: 𝒥 and I from max-union
SOURCE_QUANTIFIERS: t ∈ I; J ∈ 𝒥 with t ∈ J
SOURCE_CONCLUSION: z(t) = y_J(t) is independent of J, and z is a solution on I
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p3:gen-uniqueness, bpN:p3:gen-sol#consequences, stepN:p3:max-union
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p3:gen-uniqueness | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:max-glue@L263-L263 | y_J = y_{J'} on J∩J' ∋ 0
EDGE: bpN:p3:gen-sol#consequences | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:max-glue@L264-L264 | local nature (iii)
EDGE: stepN:p3:max-union | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:max-glue@L263-L263 | the family 𝒥 and its union I
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p3a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p3:max-max
KIND: step
TITLE: Maximality
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:max-max@L266-L267
PROOF_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:max-max@L266-L267
CONTRACT_ID: stepN:p3:max-max
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: y a solution on J ∋ 0 with y(0) = x₀; z from max-glue
SOURCE_QUANTIFIERS: y; J; J'; y'
SOURCE_CONCLUSION: J ⊂ J' ⊂ I and y = y' = z on J; uniqueness of the maximal interval and of z on it
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p3:gen-extend, bpN:p3:gen-uniqueness, stepN:p3:max-union, stepN:p3:max-glue
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p3:gen-extend | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:max-max@L266-L266 | open J' ⊃ J and solution y' extending y
EDGE: bpN:p3:gen-uniqueness | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:max-max@L267-L267 | y' = z on J'
EDGE: stepN:p3:max-union | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:max-max@L266-L266 | J' ∈ 𝒥 so J' ⊂ I
EDGE: stepN:p3:max-glue | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:max-max@L267-L267 | z is a solution on I
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p3a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpN:p3:gen-continuation
KIND: theorem
TITLE: Continuation criterion, uniform form
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-continuation@L270-L277
PROOF_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-continuation@L278-L287
CONTRACT_ID: bpN:p3:gen-continuation
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: F C¹ on the open set W; x₀ ∈ W; (T₋,T₊), z the maximal interval and solution of gen-maximal; Φ has uniform data (δ,M,L)
SOURCE_QUANTIFIERS: E; W; F; x₀; Φ; δ, M, L; t_*
SOURCE_CONCLUSION: if T₊ < ∞ there is no t_* ∈ [0,T₊) with z(t) ∈ Φ for all t ∈ [t_*,T₊); symmetrically on the left; equivalently, staying in Φ near an end of the maximal interval forces that end to be ±∞
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p3:gen-maximal, bpN:p3:gen-uniform, stepN:p3:cont-setup, stepN:p3:cont-alpha, stepN:p3:cont-glue
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p3:gen-maximal | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-continuation@L271-L271 | maximal interval and solution
EDGE: bpN:p3:gen-uniform | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-continuation@L271-L271 | hypothesis: Φ has uniform data
EDGE: stepN:p3:cont-setup | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-continuation@L279-L279 | set-up
EDGE: stepN:p3:cont-alpha | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-continuation@L281-L281 | solution through z(t₁)
EDGE: stepN:p3:cont-glue | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-continuation@L284-L284 | gluing past T₊
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p3a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p3:cont-setup
KIND: step
TITLE: Set-up
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:cont-setup@L279-L279
PROOF_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:cont-setup@L279-L279
CONTRACT_ID: stepN:p3:cont-setup
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: T₊ < ∞; z(t) ∈ Φ on [t_*,T₊); uniform data (δ,M,L)
SOURCE_QUANTIFIERS: ε = δ/max(M,1); t₁
SOURCE_CONCLUSION: ε as in gen-uniform-exist and t₁ ∈ [t_*,T₊) with t₁ > T₊ − ε
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p3:gen-uniform-exist
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p3:gen-uniform-exist | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:cont-setup@L279-L279 | uniform existence time ε = δ/max(M,1)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p3a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p3:cont-alpha
KIND: step
TITLE: A solution through $z(t_1)$
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:cont-alpha@L281-L282
PROOF_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:cont-alpha@L281-L282
CONTRACT_ID: stepN:p3:cont-alpha
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: t₁ from cont-setup; z(t₁) ∈ Φ
SOURCE_QUANTIFIERS: α on (t₁−ε,t₁+ε)
SOURCE_CONCLUSION: α with α(t₁) = z(t₁) on (t₁−ε,t₁+ε) and α = z on (t₁−ε,t₁+ε) ∩ (T₋,T₊)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p3:gen-uniform-exist, bpN:p3:gen-uniqueness, stepN:p3:cont-setup
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p3:gen-uniform-exist | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:cont-alpha@L281-L281 | solution α through x = z(t₁) ∈ Φ at t₀ = t₁
EDGE: bpN:p3:gen-uniqueness | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:cont-alpha@L282-L282 | α = z on the overlap
EDGE: stepN:p3:cont-setup | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:cont-alpha@L281-L281 | ε and t₁
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p3a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p3:cont-glue
KIND: step
TITLE: Gluing past $T_+$
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:cont-glue@L284-L286
PROOF_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:cont-glue@L284-L286
CONTRACT_ID: stepN:p3:cont-glue
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: α from cont-alpha; maximal (T₋,T₊), z
SOURCE_QUANTIFIERS: y
SOURCE_CONCLUSION: y = z on (T₋,T₊), y = α on [T₊,t₁+ε) is a solution on (T₋,t₁+ε) ∋ 0 with y(0) = x₀, contradicting gen-maximal; the left end by time reversal
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p3:cont-alpha, bpN:p3:gen-sol#consequences, bpN:p3:gen-maximal, bpN:p3:gen-symmetry
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p3:cont-alpha | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:cont-glue@L284-L284 | α and its agreement with z
EDGE: bpN:p3:gen-sol#consequences | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:cont-glue@L285-L285 | local nature on the two open sets covering (T₋,t₁+ε)
EDGE: bpN:p3:gen-maximal | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:cont-glue@L286-L286 | t₁+ε > T₊ contradicts maximality
EDGE: bpN:p3:gen-symmetry | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:cont-glue@L286-L286 | left end by time reversal
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p3a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpN:p3:gen-continuation-compact
KIND: corollary
TITLE: Compact continuation
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-continuation-compact@L289-L292
PROOF_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-continuation-compact@L293-L295
CONTRACT_ID: bpN:p3:gen-continuation-compact
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: setting of gen-continuation; K ⊂ W compact; z(t) ∈ K for all t ∈ [t_*,T₊) (some t_* ∈ [0,T₊))
SOURCE_QUANTIFIERS: as gen-continuation; K; t_*
SOURCE_CONCLUSION: T₊ = +∞; likewise on the left
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p3:gen-continuation, bpN:p3:gen-uniform-compact
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p3:gen-continuation | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-continuation-compact@L290-L290 | setting and continuation criterion applied to Φ = K
EDGE: bpN:p3:gen-uniform-compact | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-continuation-compact@L294-L294 | uniform data for the compact set K
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p3a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpN:p3:gen-continuation-periodic
KIND: corollary
TITLE: Closed sets, periodic fields
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-continuation-periodic@L297-L299
PROOF_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-continuation-periodic@L300-L302
CONTRACT_ID: bpN:p3:gen-continuation-periodic
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: E = ℝⁿ×ℝⁿ; U ⊂ ℝⁿ open; W = ℝⁿ × U; F C¹ on W with F(θ+k,I) = F(θ,I), k ∈ ℤⁿ; z the maximal solution through x₀ ∈ W; z(t)₂ ∈ K for t ∈ [t_*,T₊), K ⊂ U compact
SOURCE_QUANTIFIERS: n; U; F; x₀; K; t_*
SOURCE_CONCLUSION: T₊ = +∞ (likewise on the left); the angle components z(t)₁ may be unbounded
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p3:gen-maximal, bpN:p3:gen-continuation, bpN:p3:gen-uniform-periodic
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p3:gen-maximal | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-continuation-periodic@L298-L298 | maximal solution through x₀
EDGE: bpN:p3:gen-continuation | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-continuation-periodic@L300-L300 | continuation criterion
EDGE: bpN:p3:gen-uniform-periodic | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-continuation-periodic@L300-L300 | uniform data for Φ = ℝⁿ × K
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p3a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpN:p3:gen-confinement
KIND: theorem
TITLE: Confinement glue
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-confinement@L310-L318
PROOF_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-confinement@L319-L324
CONTRACT_ID: bpN:p3:gen-confinement
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: F C¹ on the open set W; x₀ ∈ W; τ > 0; Φ ⊂ E with uniform data; a priori confinement: every solution y on an open interval J ∋ 0 with y(0) = x₀ satisfies y(t) ∈ Φ for t ∈ J, ¦t¦ ≤ τ
SOURCE_QUANTIFIERS: E; W; F; x₀; τ; Φ; (δ,M,L); then z
SOURCE_CONCLUSION: the maximal interval contains [−τ,τ] in its interior, z is a solution on [−τ,τ] with z(t) ∈ Φ for ¦t¦ ≤ τ, and every solution on [−L,L] (0 ≤ L ≤ τ) with initial value x₀ equals z there
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p3:gen-uniform, bpN:p3:gen-sol, bpN:p3:gen-maximal, stepN:p3:conf-noexit, stepN:p3:conf-concl
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p3:gen-uniform | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-confinement@L312-L312 | hypothesis: Φ has uniform data
EDGE: bpN:p3:gen-sol | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-confinement@L313-L313 | solutions y and conclusion IsSolIn
EDGE: bpN:p3:gen-maximal | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-confinement@L316-L316 | maximal interval and solution
EDGE: stepN:p3:conf-noexit | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-confinement@L320-L320 | no exit before τ
EDGE: stepN:p3:conf-concl | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-confinement@L323-L323 | conclusion
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p3a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p3:conf-noexit
KIND: step
TITLE: No exit before $\tau$
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:conf-noexit@L320-L321
PROOF_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:conf-noexit@L320-L321
CONTRACT_ID: stepN:p3:conf-noexit
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: a priori confinement; maximal (T₋,T₊), z of gen-maximal; Φ has uniform data
SOURCE_QUANTIFIERS: T₊ ≤ τ assumed
SOURCE_CONCLUSION: T₊ > τ and T₋ < −τ: otherwise z(t) ∈ Φ on [0,T₊) by confinement and gen-continuation gives T₊ = ∞
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p3:gen-maximal, bpN:p3:gen-continuation
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p3:gen-maximal | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:conf-noexit@L320-L320 | maximal solution z on (T₋,T₊)
EDGE: bpN:p3:gen-continuation | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:conf-noexit@L321-L321 | continuation criterion gives T₊ = ∞
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p3a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p3:conf-concl
KIND: step
TITLE: Conclusion
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:conf-concl@L323-L323
PROOF_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:conf-concl@L323-L323
CONTRACT_ID: stepN:p3:conf-concl
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: conf-noexit; confinement applied to z
SOURCE_QUANTIFIERS: t with ¦t¦ ≤ τ; L ∈ [0,τ]
SOURCE_CONCLUSION: [−τ,τ] ⊂ (T₋,T₊), z solution on [−τ,τ] with z(t) ∈ Φ for ¦t¦ ≤ τ; uniqueness on [−L,L]
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p3:conf-noexit, bpN:p3:gen-uniqueness
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p3:conf-noexit | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:conf-concl@L323-L323 | [−τ,τ] in the maximal interval
EDGE: bpN:p3:gen-uniqueness | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:conf-concl@L323-L323 | uniqueness of solutions on [−L,L]
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p3a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
