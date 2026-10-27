# I-nown slice review

Reviewer: `sol-review-I-nown`. Marker: `rev-I-nown`.

**Verdict: FAIL.** Ownership and retargeting PASS. Four node records require correction: two promote proof ingredients to hypotheses, one suppresses the displayed field data, and the smoothness step lacks two direct definition edges. The derivative-pair conclusion also drops domain membership. This is a source-topology review, not a proof-status or Lean verification receipt.

## Snapshot and authority

Read AGENTS.md, docs/PLAN.md, docs/DECISIONS.md, the complete REVIEW-BRIEF.md and SPEC.md, both I-nown packets, the used I-imports/I-p0 records, and the raw statements and consumer spans listed below. Applied the build-proof-dependency-graph skill. The final SPEC ruling controls: these are seven ordinary track-I nodes with their original N labels, not N imports. No track-I part-level hypothesis package applies to these shared general ODE results. Their ambient finite-dimensional normed-space/C1 conventions are at N Part 3 L15–24.

Reviewed packet hashes (SHA256):

- I-nown.nodes.md: `649837bdb0c9ef13f238a0785c43e177cb9ed1781bd191f2eca69b90c8437807`.
- I-nown.coverage.md: `235d338fe5d07c06233396522008097042be94404f7f1f640290f7b01876c3e2`.
- SPEC.md: `24beb6c45e4c634c38fccc4b31542b72accf3cd6eb4ab61738181ed310b82ed3`.

All nine CORPUS pins and seven IMPORTS pins match the files, including the added N corpus file and P Part 0 import source. Other writers changed HEAD during the review; the hashes identify the reviewed slice. The assembled I DEPGRAPH/COVERAGE files were absent; cross-slice checks below use the current packets.

## Per-node decisions

All locators in this table refer to `blueprint-N/parts/p3-hamiltonian-ode.tex`.

| Node | Verdict | Source re-read | Reason |
|---|---|---|---|
| `bpN:p3:gen-invariant` | PASS | L15–24, L88–93, L352–356 | Exact quantified definition, including arbitrary intervals, entry at any t1, and both time directions. Its direct IsSolIn edge is correct. |
| `bpN:p3:gen-barrier` | PASS | L328–341, L352–368 | Every stated hypothesis is retained. Two proof steps and the two definitions are direct uses. The energy-level example at L361 is not a ham-energy edge. |
| `stepN:p3:barrier-fwd` | PASS | L328–341, L358–365 | Imported first-exit alternative (ii) applies with all its premises supplied by the parent hypotheses. Range in G and invariance give the stated contradiction; no Jordan theorem is used. |
| `stepN:p3:barrier-bwd` | FAIL | L101–110, L358–367 | “the forward step” is a proof ingredient, not a source hypothesis. Retain it solely as the existing dependency. Time reversal and the invariant-set definition supply the reversed-field premises. |
| `bpN:p3:newton-reduction` | FAIL | L434–454; P Part 0 L226–242; I Part 0 L130–153 | The source fixes explicit F_N and Fprime formulas; the record names them without recording their definitions. Restore the data, including the fixed-Sun parameters. The restricted equivalence is for arbitrary mu and J, not only physical mu or intervals. Existing predicate/domain/field edges are direct and correctly oriented. |
| `stepN:p3:nr-smooth` | FAIL | L435–445, L451; I Part 0 L130–153 | Missing direct CollisionFree and restrictedVectorField edges: the proof must unfold the domain and field whose openness/smoothness it asserts. Four radius/primary edges do not supply those definitions. Quantifiers also omit the fixed-Sun parameters. |
| `stepN:p3:nr-pair` | FAIL | L440–445, L453; P Part 0 L226–242; I Part 0 L147–149 | “the smoothness step” is an added proof premise (and is not needed). The recorded derivative-only iff is false: membership in W must remain a conjunct on the derivative side. Existing four predicate/IsSolIn dependencies are correct. |

The two parent-data references in step hypotheses name only typing, domains, fields and source assumptions; they must not be read as assuming the conclusions of the parent propositions or introduce parent-to-child cycles. Routine finite-product differentiation and polynomial/square-root calculus at L451/L453 do not require new substantive bridge nodes under SPEC's node threshold.

## Coverage

| Failing coverage item | Verdict | Reason |
|---|---|---|
| None | — | All seven inventory items map to their correct ordinary node and exact statement/proof-step span. |

**All other coverage items PASS.** Node-record failures above do not invalidate the inventory dispositions. There is no missing labelled result or proof step in L352–368 / L434–454. The parenthetical examples at L354–355 are not used as results in a root proof: I Part 5 L113 proves the relevant invariance/union assertion itself. Hence they require neither a new in-closure node nor a spurious gen-uniqueness edge on the definition. The example citation at L361 likewise supplies no premise of the general barrier theorem.

## Ownership, imports and consumers

The seven N-owned names are absent as node declarations from N's current node packets; all seven are EXCLUDED in N-p3b.coverage.md. They occur exactly once as ordinary I-nown nodes. No N:-prefixed former node or dependency/route target remains in any I node packet. All dependency targets of I-nown resolve in the current I packets.

The remaining three N imports used here are `N:bpN:p3:gen-sol` (L88–93), `N:bpN:p3:gen-exit` (L328–341), and `N:bpN:p3:gen-symmetry` (L101–110). Their statement contracts agree with the source at those locators; each has KIND external, LEAN_STATUS EXTERNAL, PROOF_SOURCE -, DEPS -, and each underlying node exists in N's packets. Their direct uses in this slice are genuine, not provenance edges.

The I-p0 targets resolve to the frozen radiusSq, radius, primary1, primary2, CollisionFree, restrictedVectorField and IsRestrictedSolutionOn anchors. Read their frozen definition bodies and the corresponding I Part 0 source. In particular, restrictedVectorField has a collision-free subtype argument; the source explicitly constructs its total formula extension. Smoothness is on the open domain, with no claim across a primary collision. The restricted predicate requires membership and a two-sided derivative at every t in J, including endpoints; J need not itself be an interval for the reduction.

The two P imports are `P:bpP:p0:newton#IsNewtonSolution` and `P:bpP:p0:fixedsol#IsFixedSolution`, at P Part 0 L226–233 / L235–242. Their source contracts and import-leaf fields match those definitions. They are correctly imports rather than I frozen anchors. Their NOTE explicitly says pending P graph; the owning-graph inclusion condition remains a writer/global-review check when P's graph exists. The writer should also record the P: import policy explicitly in SPEC, whose general import-ID paragraph still lists only K:/N:. The ownership ruling necessitates these P definitions, but does not spell out this extension. No new P import has been silently introduced in this review.

Every former consumer edge is now local (checked DEPS and matching EDGE fields, then re-read the following raw spans):

| Owned target | Consumer | Consumer source |
|---|---|---|
| bpN:p3:gen-invariant | bpI:p5:invariance | p5-confinement.tex L108 |
| bpN:p3:gen-invariant | stepI:p5:inv-uniq | p5-confinement.tex L113 |
| bpN:p3:gen-barrier | stepI:p5:sp-barrier | p5-confinement.tex L160 |
| bpN:p3:newton-reduction | bpI:p7:ham-eq | p7-delaunay.tex L54 |
| bpN:p3:newton-reduction | stepI:p7:he-sol | p7-delaunay.tex L69 |
| bpN:p3:newton-reduction | stepI:p8:pf-uniq | p8-r3bp.tex L229 |

The stale abbreviated prose “N:gen-invariant” in I-p5's SOURCE_CONCLUSION is editorial only: its actual DEPS/EDGE target is correct. Internal I-nown edges likewise use the ordinary IDs. Packet traversal from the four frozen I roots reaches all seven nodes from I-R3BP; the four invariant/barrier nodes also feed I-HEAD. None is kept solely because another track cites it. This checks the requested transfer, not unrelated topology defects in those other slices.

## Suspected blueprint defect

N Part 3 L453 says: “The first block ... is membership in W_N” and then “Together they say exactly that x has derivative F_N(x(t)) at t.” The last sentence omits membership, already identified in its first sentence. A derivative equation for a total field does not imply membership in the open collision-free set. For example, take the total Newton formula with G=0 and constant colliding Q=0,V=0: the derivative equation holds under total real division, while distance positivity fails. The intended statement is membership AND the derivative equation, i.e. the pointwise IsSolIn clause. The replacement below records that clause; it does not repair the blueprint. No defect in a pinned paper is asserted here.

## Replacement fragments

Apply these complete blocks to I-nown.nodes.md, then obtain a different reviewer for the rewritten records. Preserve all other node and coverage blocks.

```text
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
EXTRACTOR: sonnet-extract-I-nown
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
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
EXTRACTOR: sonnet-extract-I-nown
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: The fields are the displayed formulas, not arbitrary fields called Newtonian. No mass, G or mu positivity assumption, and no interval assumption on J in the restricted equivalence. planeLength and planeSq are the elementary planar formulas recalled at L451; the P solution-predicate imports remain pending the owning P graph.
```

```text
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
EXTRACTOR: sonnet-extract-I-nown
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
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
EXTRACTOR: sonnet-extract-I-nown
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: L453 identifies the first block with domain membership before bundling the derivative blocks. Its final sentence omits the membership conjunct in words; retain that conjunct as required by the first block and IsSolIn. This is a reported source wording defect, not a new smoothness premise.
```

## Checks

Packet traversal: seven owned nodes, six external consumer edges, zero former N:-prefixed nodes/targets, zero missing I-nown dependency targets; all seven reach an I root. Pin check: 9/9 CORPUS and 7/7 IMPORTS match. Source and edge locators were checked against the numbered raw source. All seven used I-p0 anchor identities match the manifest (path, export, anchor ID, ABI; no state fields consulted). Review-fragment dry run: `4 replaced, 0 added, 0 coverage items, 0 unresolved FAILs, 3 PASS nodes`. Whitespace check: passed. No Lean invocation, implementation inspection, build, packet mutation or state-changing git command was used.
