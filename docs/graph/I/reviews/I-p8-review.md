# Independent I-p8 slice review

Reviewer: `sol-review-I-p5p8`. Verdict: **FAIL**.

Source-topology review only. Read AGENTS, PLAN, DECISIONS, REVIEW-BRIEF and SPEC with rulings; all 249 source lines; all 37 nodes and 58 coverage records; the cited Part 6/7 statements and section data, the N ODE inputs, frozen I-R3BP/I-HEAD declarations and used frozen definition bodies. No implementation/provider files or proof-status ledgers were read. Proposed replacements require another reviewer; only the two assigned review reports are edited.

## Findings

The safe-region definition's exact-ham edge is attached to the wrong owner: L146 imports min/max notation from Part 7 L325-335. Use `bpI:p7:sec-complex#data`. The exact Hamiltonian proposition has the additional premise rho_max<1, established only later at sr-radii; it is applied at head-data L171. Defining the radii does not discharge their compact-carrier premises. sr-incl and sr-radii supply those premises before that application; no edge from safe to safe-region is needed or permissible.

Direct packages remain missing for converted h, action regions, orbit definitions and the physical collision-free domain. These are direct statement/proof uses, even when another dependency already reaches the package. Several source hypotheses instead name results proved by dependencies, and the signed-mu field of hd-f allows epsilon=C_F mu to be negative. The enclosing head-data claim fixes 0<=mu<mu_2; retain that scope and epsilon=|mu|C_F=C_F mu.

pf-head must use the same epsilon_H selected at constants L195, rather than an unexplained second existential threshold. Its constants edge is missing. The frozen I-HEAD application belongs here and remains a genuine direct dependency. head-data only checks its hypotheses; it does not apply its conclusion and should not acquire an I-HEAD edge. constants genuinely consumes I-HEAD's constant witness.

pf-uniq L229 proves physical uniqueness among arbitrary restricted solutions on (a,b), without requiring competitors to stay in the Delaunay image. L231 assembles all six conclusions and belongs to the already populated frozen root; it must not be claimed as an output of the uniqueness step alone.

## Frozen application and N-premise discharge

The application route preserves: K nonempty compact subset C_0 and rho_max<1 (safe-region); positive analytic radii and h_tilde nondegenerate on all real I in B_{r_0} (head-data/period-one/nondeg); B open bounded nonempty and B_prime compactly contained; f_tilde_mu holomorphic, periodic and real with epsilon=C_F mu; epsilon<epsilon_H from constants/pf-small; initial I_0 in B_prime from pf-coord. The conversion is S(theta,I)=(2 pi theta,I/(2 pi)), s_0=delta_2/(2 pi), r_0=2 pi delta_2, h_tilde=h_{(2 pi)^2,1/(2 pi)}. All constants precede mu,z_0; mu=0 is admitted. The same trajectory from pf-head is used in transfer, bounds, distances and uniqueness.

At pf-sol L223, transfer (Part 7 L448-453) takes |mu|<mu_2, B subset 2 pi K and Sol on J=R. At pf-uniq L229, newton-reduction (N Part 3 L434-449) gives the restricted equivalence on every J, openness of W_mu and C^infty of the total formula field on W_mu; it does not impose the N-body N>=2/mass data on its separate restricted case. gen-sol L88-100 restricts z to (a,b), and gen-uniqueness L217-224 uses the common initial value and C^1 on open W_mu. No smoothness at collisions and no confinement of y is assumed.

The N source contracts suffice, but no published track-N DEPGRAPH exists here to certify node retention. Concurrent draft packets appeared during this review and contain ham-reduction/newton-reduction; published retention remains pending. Keep the imports pending, per SPEC. The writer-owned I-imports NOTE fields currently overstate this as already proved in the N graph; ham-reduction/newton-reduction may later need ordinary I ownership. No import blocks are changed by this report.

## Audit of the 17 filled quantifier fields

Every field below was checked against its complete enclosing proof. The table concerns the literal fill, independently of other node findings. Replacement blocks provide explicit orders throughout.

| Step | Literal fill verdict | Check |
|---|---|---|
| Field in `stepI:p8:tp-chart` | FAIL | L76 adds every z_0 in N and existential Delaunay preimages. |
| Field in `stepI:p8:tp-open` | PASS | L78 is a set property for fixed parameters, with no new binder. |
| Field in `stepI:p8:tp-nonempty` | FAIL | L80 constructs the named midpoint/action/physical witnesses; the witness order should be recorded. |
| Field in `stepI:p8:ce-quant` | FAIL | L100 explicitly introduces q in S and mu with a bound; j ranges over the masses. |
| Field in `stepI:p8:ce-compact` | FAIL | L102 chooses minimizing q_j and then delta_S before applying (a); m>=1 and the empty branches matter. |
| Field in `stepI:p8:se-inst` | FAIL | L114 instantiates the family and chooses mu_1>=nu_0/2; the q and mu scope must be explicit. |
| Field in `stepI:p8:sr-incl` | FAIL | L161 explicitly introduces (L,G) in A^cl. |
| Field in `stepI:p8:sr-radii` | PASS | L165 is a fixed-K extrema claim; the pointwise comparison is universally implicit. Explicit expansion is supplied. |
| Field in `stepI:p8:sr-B` | PASS | L167 forms the two fixed scaled sets; no additional quantified parameter. |
| Field in `stepI:p8:hd-h` | FAIL | L180 requires every real I in B_{r_0}, not just unqualified fixed data. |
| Field in `stepI:p8:hd-sets` | PASS | L184 checks fixed sets/constants, no new binder. |
| Field in `stepI:p8:bd-r` | PASS | L209 inherits exactly (L,G) in K and ell,g real from bounds. |
| Field in `stepI:p8:bd-p` | PASS | L211 inherits the same orbit; no new binder. |
| Field in `stepI:p8:pf-coord` | FAIL | L217 chooses Delaunay preimages, then defines z_tilde_0. |
| Field in `stepI:p8:pf-small` | PASS | L219 checks smallness for the already fixed mu and constants. |
| Field in `stepI:p8:pf-head` | FAIL | L221 produces an existential global z_tilde after all input choices. |
| Field in `stepI:p8:pf-sol` | FAIL | L223 constructs the physical trajectory from that same witness. |

Together with the three I-p5 fields, this audits all 20 writer-filled fields.

## Per-node decisions

Spans are in blueprint-I/parts/p8-r3bp.tex; all complete enclosing statements/proofs were checked.

| Node | Verdict | Source re-read | Reason |
|---|---|---|---|
| `bpI:p8:x-topo` | PASS | L28-L31 | Source fields, direct uses and conditional premises agree. |
| `bpI:p8:x-norm` | PASS | L32-L32 | Source fields, direct uses and conditional premises agree. |
| `bpI:p8:x-cont` | PASS | L33-L33 | Source fields, direct uses and conditional premises agree. |
| `bpI:p8:e-vs-k` | FAIL | L36-L44 | The monotone involution property is justified by the paragraph, not an additional source premise. Separate the routine local identity from the external contract. |
| `bpI:p8:sec-safe#data` | PASS | L132-L132 | Source fields, direct uses and conditional premises agree. |
| `bpI:p8:A` | PASS | L49-L59 | Source fields, direct uses and conditional premises agree. |
| `bpI:p8:topology` | PASS | L61-L72, L73-L81 | Source fields, direct uses and conditional premises agree. |
| `stepI:p8:tp-A` | FAIL | L74-L74, L74-L74 | Restore the enclosing source premises and local arguments; derived claims belong on proof edges, not as source hypotheses. Missing direct bpI:p7:orbit-maps edge: C_0 and/or e(L,G), Q are the orbit-map data used here. |
| `stepI:p8:tp-chart` | FAIL | L76-L76, L76-L76 | Restore the enclosing source premises and local arguments; derived claims belong on proof edges, not as source hypotheses. Replace generic inheritance with the actual local quantifier/witness order. Missing direct bpI:p8:A edge: A and the fixed parameterization of the initial region. |
| `stepI:p8:tp-open` | FAIL | L78-L78, L78-L78 | Restore the enclosing source premises and local arguments; derived claims belong on proof edges, not as source hypotheses. Replace generic inheritance with the actual local quantifier/witness order. Missing direct bpI:p8:A edge: A and the fixed parameterization of the initial region. |
| `stepI:p8:tp-nonempty` | FAIL | L80-L80, L80-L80 | Restore the enclosing source premises and local arguments; derived claims belong on proof edges, not as source hypotheses. Replace generic inheritance with the actual local quantifier/witness order. |
| `bpI:p8:collision-exclusion` | PASS | L86-L98, L99-L103 | Source fields, direct uses and conditional premises agree. |
| `stepI:p8:ce-quant` | FAIL | L100-L100, L100-L100 | Restore the enclosing source premises and local arguments; derived claims belong on proof edges, not as source hypotheses. Replace generic inheritance with the actual local quantifier/witness order. |
| `stepI:p8:ce-compact` | FAIL | L102-L102, L102-L102 | Restore the enclosing source premises and local arguments; derived claims belong on proof edges, not as source hypotheses. Replace generic inheritance with the actual local quantifier/witness order. |
| `bpI:p8:shell-exclusion` | PASS | L105-L112, L113-L115 | Source fields, direct uses and conditional premises agree. |
| `stepI:p8:se-inst` | FAIL | L114-L114, L114-L114 | Restore the enclosing source premises and local arguments; derived claims belong on proof edges, not as source hypotheses. Replace generic inheritance with the actual local quantifier/witness order. |
| `bpI:p8:safe` | FAIL | L134-L147 | Wrong owner: the radii at L146 come from Part 7 L325-335 section data, not from an application of exact-ham (which additionally needs rho_max<1). Missing direct bpI:p7:sec-complex#data edge: r_min and rho_max are precisely the min/max definitions of Part 7 L325-335 specialized to K. Record the deferred premise verification without a safe-to-safe-region cycle. |
| `bpI:p8:safe-region` | PASS | L149-L159, L160-L168 | Source fields, direct uses and conditional premises agree. |
| `stepI:p8:sr-incl` | FAIL | L161-L161, L161-L161 | Restore the enclosing source premises and local arguments; derived claims belong on proof edges, not as source hypotheses. Replace generic inheritance with the actual local quantifier/witness order. |
| `stepI:p8:sr-elements` | FAIL | L163-L163, L163-L163 | Restore the enclosing source premises and local arguments; derived claims belong on proof edges, not as source hypotheses. Missing direct bpI:p7:orbit-maps edge: C_0 and/or e(L,G), Q are the orbit-map data used here. |
| `stepI:p8:sr-radii` | FAIL | L165-L165, L165-L165 | Restore the enclosing source premises and local arguments; derived claims belong on proof edges, not as source hypotheses. Replace generic inheritance with the actual local quantifier/witness order. Missing direct bpI:p7:orbit-maps edge: C_0 and/or e(L,G), Q are the orbit-map data used here. |
| `stepI:p8:sr-B` | FAIL | L167-L167, L167-L167 | Restore the enclosing source premises and local arguments; derived claims belong on proof edges, not as source hypotheses. Replace generic inheritance with the actual local quantifier/witness order. |
| `bpI:p8:head-data` | FAIL | L170-L178, L179-L185 | Missing direct bpI:p6:kep-ham edge: the converted h_tilde is the h_{kappa,Omega} defined in Part 6. Missing direct bpI:p6:conversion-map edge: the specified period-one scales and converted Hamiltonian. |
| `stepI:p8:hd-h` | FAIL | L180-L180, L180-L180 | Restore the enclosing source premises and local arguments; derived claims belong on proof edges, not as source hypotheses. Replace generic inheritance with the actual local quantifier/witness order. Missing direct bpI:p6:kep-ham edge: the converted h_tilde is the h_{kappa,Omega} defined in Part 6. Missing direct bpI:p8:safe edge: K, B, B_prime and/or the safe radii fixed by this package. |
| `stepI:p8:hd-f` | FAIL | L182-L182, L182-L182 | Restore the enclosing source premises and local arguments; derived claims belong on proof edges, not as source hypotheses. Replace generic inheritance with the actual local quantifier/witness order. Missing direct bpI:p6:kep-ham edge: the converted h_tilde is the h_{kappa,Omega} defined in Part 6. Missing direct bpI:p8:safe edge: K, B, B_prime and/or the safe radii fixed by this package. The old arbitrary signed-mu quantifier was incompatible with the enclosing epsilon=C_F mu. |
| `stepI:p8:hd-sets` | FAIL | L184-L184, L184-L184 | Restore the enclosing source premises and local arguments; derived claims belong on proof edges, not as source hypotheses. Replace generic inheritance with the actual local quantifier/witness order. Missing direct bpI:p8:safe edge: K, B, B_prime and/or the safe radii fixed by this package. |
| `bpI:p8:constants` | FAIL | L190-L202 | Missing direct bpI:p6:kep-ham edge: the converted h_tilde is the h_{kappa,Omega} defined in Part 6. Missing direct bpI:p6:conversion-map edge: s_0,r_0 and h_tilde are selected in the period-one normalization. |
| `bpI:p8:bounds` | PASS | L204-L207, L208-L212 | Source fields, direct uses and conditional premises agree. |
| `stepI:p8:bd-r` | FAIL | L209-L209, L209-L209 | Restore the enclosing source premises and local arguments; derived claims belong on proof edges, not as source hypotheses. Replace generic inheritance with the actual local quantifier/witness order. Missing direct bpI:p7:orbit-maps edge: Q and e(L,G) of the Delaunay orbit data. |
| `stepI:p8:bd-p` | FAIL | L211-L211, L211-L211 | Restore the enclosing source premises and local arguments; derived claims belong on proof edges, not as source hypotheses. Replace generic inheritance with the actual local quantifier/witness order. Missing direct bpI:p8:safe edge: K, B, B_prime and/or the safe radii fixed by this package. Missing direct bpI:p7:orbit-maps edge: Q and e(L,G) of the Delaunay orbit data. Missing direct bpI:p7:elements edge: E(q,p)=|p|_2^2/2-1/|q|_2 is the energy definition used in rearranging the identity. |
| `stepI:p8:pf-coord` | FAIL | L217-L217, L217-L217 | Restore the enclosing source premises and local arguments; derived claims belong on proof edges, not as source hypotheses. Replace generic inheritance with the actual local quantifier/witness order. |
| `stepI:p8:pf-small` | FAIL | L219-L219, L219-L219 | Restore the enclosing source premises and local arguments; derived claims belong on proof edges, not as source hypotheses. Replace generic inheritance with the actual local quantifier/witness order. Missing direct bpI:p6:kep-ham edge: the converted h_tilde is the h_{kappa,Omega} defined in Part 6. |
| `stepI:p8:pf-head` | FAIL | L221-L221, L221-L221 | Restore the enclosing source premises and local arguments; derived claims belong on proof edges, not as source hypotheses. Replace generic inheritance with the actual local quantifier/witness order. Missing direct bpI:p6:kep-ham edge: the converted h_tilde is the h_{kappa,Omega} defined in Part 6. Missing direct bpI:p8:constants edge: epsilon_H is the same I-HEAD threshold selected before mu and z_0; retain this witness. |
| `stepI:p8:pf-sol` | FAIL | L223-L223, L223-L223 | Restore the enclosing source premises and local arguments; derived claims belong on proof edges, not as source hypotheses. Replace generic inheritance with the actual local quantifier/witness order. Missing direct bpI:p8:safe edge: K, B, B_prime and/or the safe radii fixed by this package. Missing direct bpI:p7:orbit-maps edge: Q and e(L,G) of the Delaunay orbit data. |
| `stepI:p8:pf-bounds` | FAIL | L225-L225, L225-L225 | Restore the enclosing source premises and local arguments; derived claims belong on proof edges, not as source hypotheses. |
| `stepI:p8:pf-dist` | FAIL | L227-L227, L227-L227 | Restore the enclosing source premises and local arguments; derived claims belong on proof edges, not as source hypotheses. |
| `stepI:p8:pf-uniq` | FAIL | L229-L231, L229-L231 | Restore the enclosing source premises and local arguments; derived claims belong on proof edges, not as source hypotheses. Missing direct bpI:p7:sec-ham#data edge: W_mu is the open collision-free domain and F_mu is the same total formula extension. L231 closes the full frozen theorem, not the uniqueness step alone. Scope the proof locator to the uniqueness argument. The six-conclusion closure at L231 uses topology, constants, solution, bounds and distance steps, not uniqueness alone. |

## Coverage decisions

| Item | Verdict | Source re-read | Reason |
|---|---|---|---|
| `stepI:p8:pf-uniq` | FAIL | L229-L231 | Split the uniqueness argument from the final conjunction at the frozen root. |

**All other coverage items PASS.** All prose dispositions were checked, including the initial-region outline, e-vs-k notation and safe data L132. The min-distance corollary L117-120 and md-min L122 are correctly excluded as outside every root closure. A search of all blueprint-I parts finds only their declarations, the corollary's own proof and the introductory Iref for track P; no result consumed by g1/head/kepler/r3bp uses them, and neither ID occurs in any packet's node dependencies. pf-dist uses shell-exclusion, which uses collision-exclusion(a), not the N-body min-distance statement. The rotating remark is likewise outside the frozen rotating-frame argument. Track P must own the excluded result if it uses it.

## Proposed replacement fragments

Full blocks for the actual review applier; no packets are edited here.

```text
NODE: bpI:p8:e-vs-k
KIND: display
TITLE: Elements as inequalities on G/L (display e-vs-k)
STATEMENT_SOURCE: blueprint-I/parts/p8-r3bp.tex#bpI:p8:e-vs-k@L36-L44
PROOF_SOURCE: -
CONTRACT_ID: bpI:p8:e-vs-k
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: (L,G) in C_0; 0<=e_prime<e_doubleprime<1; kappa(x)=sqrt(1-x^2), e(L,G)=kappa(G/L)
SOURCE_QUANTIFIERS: for all (L,G) in C_0 and 0 <= e' < e'' < 1
SOURCE_CONCLUSION: e(L,G) in (e',e'') iff G/L in (kappa(e''),kappa(e')); and e(L,G) in [e',e''] iff G/L in [kappa(e''),kappa(e')]
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p8:x-cont, bpI:p7:orbit-maps
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p8:x-cont | blueprint-I/parts/p8-r3bp.tex#bpI:p8:e-vs-k@L37-L37 | kappa continuous strictly decreasing with kappa(kappa(x)) = x
EDGE: bpI:p7:orbit-maps | blueprint-I/parts/p8-r3bp.tex#bpI:p8:e-vs-k@L36-L36 | C_0, e(L,G) = sqrt(1-G^2/L^2) of Parts 6-7
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p8
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: The involution identity kappa(kappa(x))=x on [0,1] is the elementary square-root calculation at L44, combined with strict monotonicity; it is not included in the statement of x-cont as a separate external assumption.
```

```text
NODE: stepI:p8:tp-A
KIND: step
TITLE: Elements as inequalities on G/L
STATEMENT_SOURCE: blueprint-I/parts/p8-r3bp.tex#stepI:p8:tp-A@L74-L74
PROOF_SOURCE: blueprint-I/parts/p8-r3bp.tex#stepI:p8:tp-A@L74-L74
CONTRACT_ID: stepI:p8:tp-A
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: 0<a_-<a_+, 0<e_-<e_+<1/4, a_+(1+e_+)<1; the action region A and Delaunay notation of L36-59; (L,G) in C_0
SOURCE_QUANTIFIERS: for (L,G) in C_0
SOURCE_CONCLUSION: (a): a_-<L^2<a_+ iff sqrt(a_-)<L<sqrt(a_+) and e_-<e<e_+ iff kappa(e_+)L < G < kappa(e_-)L
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p8:A, bpI:p8:e-vs-k, bpI:p7:orbit-maps
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p8:A | blueprint-I/parts/p8-r3bp.tex#stepI:p8:tp-A@L74-L74 | A subset A^cl subset C_0
EDGE: bpI:p8:e-vs-k | blueprint-I/parts/p8-r3bp.tex#stepI:p8:tp-A@L74-L74 | e in (e_-,e_+) iff G/L in (kappa(e_+),kappa(e_-))
EDGE: bpI:p7:orbit-maps | blueprint-I/parts/p8-r3bp.tex#stepI:p8:tp-A@L74-L74 | C_0 and/or e(L,G), Q are the orbit-map data used here
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p8
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepI:p8:tp-chart
KIND: step
TITLE: Chart description
STATEMENT_SOURCE: blueprint-I/parts/p8-r3bp.tex#stepI:p8:tp-chart@L76-L76
PROOF_SOURCE: blueprint-I/parts/p8-r3bp.tex#stepI:p8:tp-chart@L76-L76
CONTRACT_ID: stepI:p8:tp-chart
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: 0<a_-<a_+, 0<e_-<e_+<1/4, a_+(1+e_+)<1; the action region A and Delaunay notation of L36-59
SOURCE_QUANTIFIERS: For each fixed a_pm,e_pm as in the topology proposition, every z_0 in N has some ell_0,g_0 in R and (L_0,G_0) in A with Q(ell_0,g_0,L_0,G_0)=z_0
SOURCE_CONCLUSION: N = Q(R^2 x A) and every z_0 in N has a preimage in R^2 x A
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p7:near-circular, stepI:p8:tp-A, bpI:p7:orbit-maps, bpI:p8:A
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p7:near-circular | blueprint-I/parts/p8-r3bp.tex#stepI:p8:tp-chart@L76-L76 | N = Q({(l,g,L,G) in D_R : a_-<L^2<a_+, e_-<e<e_+})
EDGE: stepI:p8:tp-A | blueprint-I/parts/p8-r3bp.tex#stepI:p8:tp-chart@L76-L76 | (a) converts the conditions to membership in A
EDGE: bpI:p7:orbit-maps | blueprint-I/parts/p8-r3bp.tex#stepI:p8:tp-chart@L76-L76 | Q and D_R
EDGE: bpI:p8:A | blueprint-I/parts/p8-r3bp.tex#stepI:p8:tp-chart@L76-L76 | A and the fixed parameterization of the initial region
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p8
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepI:p8:tp-open
KIND: step
TITLE: Openness
STATEMENT_SOURCE: blueprint-I/parts/p8-r3bp.tex#stepI:p8:tp-open@L78-L78
PROOF_SOURCE: blueprint-I/parts/p8-r3bp.tex#stepI:p8:tp-open@L78-L78
CONTRACT_ID: stepI:p8:tp-open
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: 0<a_-<a_+, 0<e_-<e_+<1/4, a_+(1+e_+)<1; the action region A and Delaunay notation of L36-59
SOURCE_QUANTIFIERS: For each a_pm,e_pm satisfying the enclosing topology proposition; no new point or witness is selected
SOURCE_CONCLUSION: N is open in R^2 x R^2
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p7:near-circular, bpI:p7:elements, bpI:p8:x-topo, bpI:p8:A
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p7:near-circular | blueprint-I/parts/p8-r3bp.tex#stepI:p8:tp-open@L78-L78 | N = {(q,p) in C : a_-<a<a_+, e_-<e<e_+}
EDGE: bpI:p7:elements | blueprint-I/parts/p8-r3bp.tex#stepI:p8:tp-open@L78-L78 | C open, a and e continuous on C
EDGE: bpI:p8:x-topo | blueprint-I/parts/p8-r3bp.tex#stepI:p8:tp-open@L78-L78 | finite intersection of preimages of open intervals is open
EDGE: bpI:p8:A | blueprint-I/parts/p8-r3bp.tex#stepI:p8:tp-open@L78-L78 | A and the fixed parameterization of the initial region
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p8
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepI:p8:tp-nonempty
KIND: step
TITLE: Nonemptiness
STATEMENT_SOURCE: blueprint-I/parts/p8-r3bp.tex#stepI:p8:tp-nonempty@L80-L80
PROOF_SOURCE: blueprint-I/parts/p8-r3bp.tex#stepI:p8:tp-nonempty@L80-L80
CONTRACT_ID: stepI:p8:tp-nonempty
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: 0<a_-<a_+, 0<e_-<e_+<1/4, a_+(1+e_+)<1; the action region A and Delaunay notation of L36-59; a_*=(a_-+a_+)/2, e_*=(e_-+e_+)/2, L_*=sqrt(a_*), G_*=L_* kappa(e_*)
SOURCE_QUANTIFIERS: After a_pm,e_pm, define a_*,e_*,L_*,G_* in that order; the displayed point Q(0,0,L_*,G_*) witnesses nonemptiness
SOURCE_CONCLUSION: (L_*,G_*) in A and Q(0,0,L_*,G_*) = ((a_*(1-e_*),0),(0,kappa(e_*)/(L_*(1-e_*)))) in N; hence N nonempty
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p8:x-cont, bpI:p8:A, stepI:p8:tp-chart, bpI:p7:kepler-eq, bpI:p7:orbit-maps
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p8:x-cont | blueprint-I/parts/p8-r3bp.tex#stepI:p8:tp-nonempty@L80-L80 | strict monotonicity of kappa gives G_* in (kappa(e_+)L_*, kappa(e_-)L_*)
EDGE: bpI:p8:A | blueprint-I/parts/p8-r3bp.tex#stepI:p8:tp-nonempty@L80-L80 | (L_*,G_*) in A
EDGE: stepI:p8:tp-chart | blueprint-I/parts/p8-r3bp.tex#stepI:p8:tp-nonempty@L80-L80 | Q(0,0,L_*,G_*) in N by (b)
EDGE: bpI:p7:kepler-eq | blueprint-I/parts/p8-r3bp.tex#stepI:p8:tp-nonempty@L80-L80 | u(0,e) = 0 (Proposition kepler-eq (c))
EDGE: bpI:p7:orbit-maps | blueprint-I/parts/p8-r3bp.tex#stepI:p8:tp-nonempty@L80-L80 | evaluation of Q at l=g=0: c=1, s=0, D=1-e_*, R(0)=id
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p8
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepI:p8:ce-quant
KIND: step
TITLE: Quantitative form
STATEMENT_SOURCE: blueprint-I/parts/p8-r3bp.tex#stepI:p8:ce-quant@L100-L100
PROOF_SOURCE: blueprint-I/parts/p8-r3bp.tex#stepI:p8:ce-quant@L100-L100
CONTRACT_ID: stepI:p8:ce-quant
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: X is a real normed space; m in N; x_j in X; c>=0, mu_1>0; y_j(mu) defined for |mu|<=mu_1 with |y_j(mu)-x_j|<=c|mu|; S subset X, delta>0 with |q-x_j|>=delta for q in S and j; mu_* as in L93
SOURCE_QUANTIFIERS: For fixed X,m,x_j,c,mu_1,y_j, then S,delta as in (a), define mu_*; for every real mu with |mu|<=mu_*, every q in S and every j<=m
SOURCE_CONCLUSION: |q - y_j(mu)| >= |q-x_j| - |x_j - y_j(mu)| >= delta - c|mu| >= delta/2
CONSTANT_SCOPE: depends on (delta,c,mu_1) only
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p8:x-norm
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p8:x-norm | blueprint-I/parts/p8-r3bp.tex#stepI:p8:ce-quant@L100-L100 | reverse triangle inequality
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p8
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepI:p8:ce-compact
KIND: step
TITLE: Compact sets
STATEMENT_SOURCE: blueprint-I/parts/p8-r3bp.tex#stepI:p8:ce-compact@L102-L102
PROOF_SOURCE: blueprint-I/parts/p8-r3bp.tex#stepI:p8:ce-compact@L102-L102
CONTRACT_ID: stepI:p8:ce-compact
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: X is a real normed space; m in N; x_j in X; c>=0, mu_1>0; y_j(mu) defined for |mu|<=mu_1 with |y_j(mu)-x_j|<=c|mu|; X finite dimensional; S compact, x_j not in S; the nondegenerate branch has S nonempty and m>=1 (the other branches are vacuous as stated at L95)
SOURCE_QUANTIFIERS: For fixed X,m,x_j,c,mu_1,y_j and compact S with x_j not in S, handle S empty or m=0 vacuously; otherwise choose a minimizing q_j in S for each j, then delta_S>0 and mu_*,d, before mu,q,j
SOURCE_CONCLUSION: delta_S = min_j min_{q in S}|q-x_j| > 0 (attained, q_j != x_j) and (a) applies with delta = delta_S
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p8:x-topo, stepI:p8:ce-quant
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p8:x-topo | blueprint-I/parts/p8-r3bp.tex#stepI:p8:ce-compact@L102-L102 | continuous function attains its minimum on a nonempty compact set
EDGE: stepI:p8:ce-quant | blueprint-I/parts/p8-r3bp.tex#stepI:p8:ce-compact@L102-L102 | apply (a) with delta = delta_S
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p8
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepI:p8:se-inst
KIND: step
TITLE: Instance of the lemma
STATEMENT_SOURCE: blueprint-I/parts/p8-r3bp.tex#stepI:p8:se-inst@L114-L114
PROOF_SOURCE: blueprint-I/parts/p8-r3bp.tex#stepI:p8:se-inst@L114-L114
CONTRACT_ID: stepI:p8:se-inst
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: 0<r_min<=rho_max<1; nu_0=min{r_min,1-rho_max}; |mu|<=nu_0/2; X=R^2 with Euclidean length, m=2, x_1=(0,0), x_2=(1,0), y_j(mu)=primary_j(mu), c=1 and S the radial shell
SOURCE_QUANTIFIERS: For fixed r_min,rho_max, let nu_0=min{r_min,1-rho_max}; instantiate the mass family and shell, choosing any mu_1>=nu_0/2; for all mu with |mu|<=nu_0/2, all q in the shell and all p in R^2
SOURCE_CONCLUSION: rad(q-a_j(mu)) >= nu_0/2 for q in S, and positive radii mean collision freedom
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p8:collision-exclusion, bpI:p8:x-norm, bpI:p0:primaries#primary1, bpI:p0:primaries#primary2, bpI:p0:primaries#radius, bpI:p0:primaries#CollisionFree
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p8:collision-exclusion | blueprint-I/parts/p8-r3bp.tex#stepI:p8:se-inst@L114-L114 | part (a) with delta = nu_0 and c = 1
EDGE: bpI:p8:x-norm | blueprint-I/parts/p8-r3bp.tex#stepI:p8:se-inst@L114-L114 | ¦q - x_2¦_2 >= ¦x_2¦_2 - ¦q¦_2
EDGE: bpI:p0:primaries#primary1 | blueprint-I/parts/p8-r3bp.tex#stepI:p8:se-inst@L114-L114 | y_1(mu) = a_1(mu)
EDGE: bpI:p0:primaries#primary2 | blueprint-I/parts/p8-r3bp.tex#stepI:p8:se-inst@L114-L114 | y_2(mu) = a_2(mu)
EDGE: bpI:p0:primaries#radius | blueprint-I/parts/p8-r3bp.tex#stepI:p8:se-inst@L114-L114 | rad is the Euclidean norm
EDGE: bpI:p0:primaries#CollisionFree | blueprint-I/parts/p8-r3bp.tex#stepI:p8:se-inst@L114-L114 | rad > 0 is collision freedom
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p8
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: bpI:p8:safe
KIND: definition
TITLE: Enlargement and safe region
STATEMENT_SOURCE: blueprint-I/parts/p8-r3bp.tex#bpI:p8:safe@L134-L147
PROOF_SOURCE: -
CONTRACT_ID: bpI:p8:safe
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: a_-,a_+,e_-,e_+ as in Theorem I-R3BP (0<a_-<a_+, 0<e_-<e_+<1/4, a_+(1+e_+)<1); Definition bpI:p8:A; r_min, rho_max of Part 7 Section sec-complex for the compact set calK
SOURCE_QUANTIFIERS: a_pm, e_pm fixed; then t, a'_pm, e'_pm, U, calK, B, B', eta
SOURCE_CONCLUSION: defines t = min{1/8,(1-rho_*)/(6a_+)} > 0, a'_- = a_-/2, a'_+ = a_+(1+t), e'_- = e_-/2, e'_+ = e_++t; U and calK = A, A^cl for (a'_pm,e'_pm) with 0<e'_-<e'_+<3/8<1; B = 2 pi U, B' = 2 pi A, eta = 1; r_min, rho_max those of Part 7 for calK
CONSTANT_SCOPE: depends on a_pm, e_pm only
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p8:A, bpI:p8:sec-safe#data, bpI:p8:x-cont, bpI:p7:sec-complex#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p8:A | blueprint-I/parts/p8-r3bp.tex#bpI:p8:safe@L142-L142 | U and calK are A, A^cl for (a_pm_pr, e_pm_pr)
EDGE: bpI:p8:sec-safe#data | blueprint-I/parts/p8-r3bp.tex#bpI:p8:safe@L136-L136 | rho_*, e_+ and the fixed parameters
EDGE: bpI:p8:x-cont | blueprint-I/parts/p8-r3bp.tex#bpI:p8:safe@L139-L139 | kappa(e_pr) for the primed parameters
EDGE: bpI:p7:sec-complex#data | blueprint-I/parts/p8-r3bp.tex#bpI:p8:safe@L146-L146 | r_min and rho_max are precisely the min/max definitions of Part 7 L325-335 specialized to K
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p8
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: The radius symbols specialize the section-data definitions to K; their nonempty compact carrier and positivity are verified by sr-incl and sr-radii, before head-data applies exact-ham. No exact-ham application occurs in the definition.
```

```text
NODE: stepI:p8:sr-incl
KIND: step
TITLE: Inclusions
STATEMENT_SOURCE: blueprint-I/parts/p8-r3bp.tex#stepI:p8:sr-incl@L161-L161
PROOF_SOURCE: blueprint-I/parts/p8-r3bp.tex#stepI:p8:sr-incl@L161-L161
CONTRACT_ID: stepI:p8:sr-incl
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: 0<a_-<a_+, 0<e_-<e_+<1/4, a_+(1+e_+)<1; the action region A and Delaunay notation of L36-59; t,a_pm_prime,e_pm_prime,U,K,B,B_prime,eta defined at L134-147
SOURCE_QUANTIFIERS: For fixed a_pm,e_pm, form the primed parameters,U,K; for every (L,G) in A^cl prove (L,G) in U, yielding the set inclusions
SOURCE_CONCLUSION: calK subset C_0 compact, U open bounded, calK nonempty, and closure(A) subset A^cl subset U subset calK
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p8:A, bpI:p8:topology, bpI:p8:x-cont, bpI:p8:safe, bpI:p8:sec-safe#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p8:A | blueprint-I/parts/p8-r3bp.tex#stepI:p8:sr-incl@L161-L161 | Definition A applied to (a_pm_pr, e_pm_pr)
EDGE: bpI:p8:topology | blueprint-I/parts/p8-r3bp.tex#stepI:p8:sr-incl@L161-L161 | (d): A nonempty
EDGE: bpI:p8:x-cont | blueprint-I/parts/p8-r3bp.tex#stepI:p8:sr-incl@L161-L161 | kappa strictly decreasing: kappa(e_+_pr)L < kappa(e_+)L and kappa(e_-)L < kappa(e_-_pr)L
EDGE: bpI:p8:safe | blueprint-I/parts/p8-r3bp.tex#stepI:p8:sr-incl@L161-L161 | U, calK, primed parameters
EDGE: bpI:p8:sec-safe#data | blueprint-I/parts/p8-r3bp.tex#stepI:p8:sr-incl@L161-L161 | sqrt(a_-_pr) < sqrt(a_-), e_+_pr > e_+, e_-_pr < e_-
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p8
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepI:p8:sr-elements
KIND: step
TITLE: Elements on calK
STATEMENT_SOURCE: blueprint-I/parts/p8-r3bp.tex#stepI:p8:sr-elements@L163-L163
PROOF_SOURCE: blueprint-I/parts/p8-r3bp.tex#stepI:p8:sr-elements@L163-L163
CONTRACT_ID: stepI:p8:sr-elements
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: 0<a_-<a_+, 0<e_-<e_+<1/4, a_+(1+e_+)<1; the action region A and Delaunay notation of L36-59; t,a_pm_prime,e_pm_prime,U,K,B,B_prime,eta defined at L134-147; (L,G) in K
SOURCE_QUANTIFIERS: for (L,G) in calK
SOURCE_CONCLUSION: L^2 in [a'_-,a'_+] and e(L,G) in [e'_-,e'_+]
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p8:e-vs-k, stepI:p8:sr-incl, bpI:p8:safe, bpI:p7:orbit-maps
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p8:e-vs-k | blueprint-I/parts/p8-r3bp.tex#stepI:p8:sr-elements@L163-L163 | closed-interval form of the equivalence
EDGE: stepI:p8:sr-incl | blueprint-I/parts/p8-r3bp.tex#stepI:p8:sr-elements@L163-L163 | calK subset C_0
EDGE: bpI:p8:safe | blueprint-I/parts/p8-r3bp.tex#stepI:p8:sr-elements@L163-L163 | definition of calK
EDGE: bpI:p7:orbit-maps | blueprint-I/parts/p8-r3bp.tex#stepI:p8:sr-elements@L163-L163 | C_0 and/or e(L,G), Q are the orbit-map data used here
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p8
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepI:p8:sr-radii
KIND: step
TITLE: The radii
STATEMENT_SOURCE: blueprint-I/parts/p8-r3bp.tex#stepI:p8:sr-radii@L165-L165
PROOF_SOURCE: blueprint-I/parts/p8-r3bp.tex#stepI:p8:sr-radii@L165-L165
CONTRACT_ID: stepI:p8:sr-radii
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: 0<a_-<a_+, 0<e_-<e_+<1/4, a_+(1+e_+)<1; the action region A and Delaunay notation of L36-59; t,a_pm_prime,e_pm_prime,U,K,B,B_prime,eta defined at L134-147
SOURCE_QUANTIFIERS: For fixed a_pm,e_pm and the resulting K, bound L^2(1+e) and L^2(1-e) for every (L,G) in K; take the maximum and minimum on the nonempty compact K
SOURCE_CONCLUSION: rho_max <= a'_+(1+e'_+) <= (1+rho_*)/2 < 1; r_min >= a'_-(1-e'_+) > 0; max and min exist; r_min <= rho_max
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepI:p8:sr-elements, bpI:p8:safe, bpI:p8:sec-safe#data, bpI:p8:x-topo, stepI:p8:sr-incl, bpI:p7:orbit-maps
ROUTES: -
ROUTE_FOR: -
EDGE: stepI:p8:sr-elements | blueprint-I/parts/p8-r3bp.tex#stepI:p8:sr-radii@L165-L165 | (b) bounds on L^2 and e
EDGE: bpI:p8:safe | blueprint-I/parts/p8-r3bp.tex#stepI:p8:sr-radii@L165-L165 | t, a_pr_+, e_pr_+, r_min, rho_max
EDGE: bpI:p8:sec-safe#data | blueprint-I/parts/p8-r3bp.tex#stepI:p8:sr-radii@L165-L165 | rho_*, e_+ < 1/4
EDGE: bpI:p8:x-topo | blueprint-I/parts/p8-r3bp.tex#stepI:p8:sr-radii@L165-L165 | max and min exist by compactness
EDGE: stepI:p8:sr-incl | blueprint-I/parts/p8-r3bp.tex#stepI:p8:sr-radii@L165-L165 | calK compact nonempty
EDGE: bpI:p7:orbit-maps | blueprint-I/parts/p8-r3bp.tex#stepI:p8:sr-radii@L165-L165 | C_0 and/or e(L,G), Q are the orbit-map data used here
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p8
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepI:p8:sr-B
KIND: step
TITLE: The action domain
STATEMENT_SOURCE: blueprint-I/parts/p8-r3bp.tex#stepI:p8:sr-B@L167-L167
PROOF_SOURCE: blueprint-I/parts/p8-r3bp.tex#stepI:p8:sr-B@L167-L167
CONTRACT_ID: stepI:p8:sr-B
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: 0<a_-<a_+, 0<e_-<e_+<1/4, a_+(1+e_+)<1; the action region A and Delaunay notation of L36-59; t,a_pm_prime,e_pm_prime,U,K,B,B_prime,eta defined at L134-147
SOURCE_QUANTIFIERS: For fixed a_pm,e_pm and U,A,K, define B=2 pi U and B_prime=2 pi A; no additional binder
SOURCE_CONCLUSION: B = 2 pi U open bounded nonempty with B subset 2 pi calK; B' open, closure(B') = 2 pi closure(A) compact inside B; (e) explicit dependence on (a_pm,e_pm)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p8:x-topo, stepI:p8:sr-incl, bpI:p8:safe
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p8:x-topo | blueprint-I/parts/p8-r3bp.tex#stepI:p8:sr-B@L167-L167 | linear isomorphism is a homeomorphism; closures
EDGE: stepI:p8:sr-incl | blueprint-I/parts/p8-r3bp.tex#stepI:p8:sr-B@L167-L167 | (a): closure(A) subset U subset calK
EDGE: bpI:p8:safe | blueprint-I/parts/p8-r3bp.tex#stepI:p8:sr-B@L167-L167 | B = 2 pi U, B_pr = 2 pi A
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p8
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: bpI:p8:head-data
KIND: proposition
TITLE: The period-one data of I-HEAD for the restricted problem
STATEMENT_SOURCE: blueprint-I/parts/p8-r3bp.tex#bpI:p8:head-data@L170-L178
PROOF_SOURCE: blueprint-I/parts/p8-r3bp.tex#bpI:p8:head-data@L179-L185
CONTRACT_ID: bpI:p8:head-data
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: calK, B, B', eta as in Definition bpI:p8:safe; delta_2, mu_2, C_F, F from Proposition bpI:p7:exact-ham for calK (calK nonempty compact in C_0, rho_max < 1 by Lemma safe-region (c)); s_0 = delta_2/(2 pi), r_0 = 2 pi delta_2, h~ = h_{(2 pi)^2,1/(2 pi)}, f~_mu as in Corollary bpI:p7:period-one extended by 0 outside T_{s_0} x B_{r_0}
SOURCE_QUANTIFIERS: a_pm, e_pm fixed; then for every real mu with 0 <= mu < mu_2
SOURCE_CONCLUSION: (a) hypotheses of Theorem I-HEAD on (B,s_0,r_0,h~,B',eta) hold (B open bounded nonempty; s_0,r_0 > 0; h~ holomorphic on B_{r_0}, real at real I, det B_h~(I) = 3/I_1^4 != 0 on real I in B_{r_0}; B' open with compact closure inside B; eta > 0); (b) f = f~_mu and epsilon = C_F mu >= 0 satisfy the hypotheses of I-HEAD on (f,epsilon) except epsilon < epsilon_0 (holomorphy and Z^2-periodicity on T_{s_0} x B_{r_0}, Im f = 0 at real points, |f| <= epsilon); (c) s_0, r_0, mu_2, C_F depend only on (a_pm,e_pm)
CONSTANT_SCOPE: s_0, r_0, mu_2, C_F depend only on (a_pm, e_pm)
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepI:p8:hd-h, stepI:p8:hd-f, stepI:p8:hd-sets, bpI:p8:safe, bpI:p8:safe-region, bpI:p7:exact-ham, bpI:p7:period-one, bpI:p0:bordered#borderedHessian, bpI:p0:domains#complexStrip, bpI:p0:domains#actionNbhd, bpI:p6:kep-ham, bpI:p6:conversion-map
ROUTES: -
ROUTE_FOR: -
EDGE: stepI:p8:hd-h | blueprint-I/parts/p8-r3bp.tex#bpI:p8:head-data@L180-L180 | proof step (a)
EDGE: stepI:p8:hd-f | blueprint-I/parts/p8-r3bp.tex#bpI:p8:head-data@L182-L182 | proof step (b)
EDGE: stepI:p8:hd-sets | blueprint-I/parts/p8-r3bp.tex#bpI:p8:head-data@L184-L184 | proof step (a),(c)
EDGE: bpI:p8:safe | blueprint-I/parts/p8-r3bp.tex#bpI:p8:head-data@L171-L171 | calK, B, B_pr, eta
EDGE: bpI:p8:safe-region | blueprint-I/parts/p8-r3bp.tex#bpI:p8:head-data@L171-L171 | rho_max < 1 for admissibility of exact-ham
EDGE: bpI:p7:exact-ham | blueprint-I/parts/p8-r3bp.tex#bpI:p8:head-data@L171-L171 | delta_2, mu_2, C_F, F
EDGE: bpI:p7:period-one | blueprint-I/parts/p8-r3bp.tex#bpI:p8:head-data@L171-L171 | h~ and f~_mu
EDGE: bpI:p0:bordered#borderedHessian | blueprint-I/parts/p8-r3bp.tex#bpI:p8:head-data@L173-L173 | det B_h~
EDGE: bpI:p0:domains#complexStrip | blueprint-I/parts/p8-r3bp.tex#bpI:p8:head-data@L174-L174 | T_{s_0}
EDGE: bpI:p0:domains#actionNbhd | blueprint-I/parts/p8-r3bp.tex#bpI:p8:head-data@L173-L173 | B_{r_0}
EDGE: bpI:p6:kep-ham | blueprint-I/parts/p8-r3bp.tex#bpI:p8:head-data@L170-L178 | the converted h_tilde is the h_{kappa,Omega} defined in Part 6
EDGE: bpI:p6:conversion-map | blueprint-I/parts/p8-r3bp.tex#bpI:p8:head-data@L171-L171 | the specified period-one scales and converted Hamiltonian
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p8
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: The statement reproduces the hypotheses of Theorem I-HEAD (a check, not a use of its conclusion): no edge to bpI:p0:head here; the application is stepI:p8:pf-head.
```

```text
NODE: stepI:p8:hd-h
KIND: step
TITLE: The Hamiltonian
STATEMENT_SOURCE: blueprint-I/parts/p8-r3bp.tex#stepI:p8:hd-h@L180-L180
PROOF_SOURCE: blueprint-I/parts/p8-r3bp.tex#stepI:p8:hd-h@L180-L180
CONTRACT_ID: stepI:p8:hd-h
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: 0<a_-<a_+, 0<e_-<e_+<1/4, a_+(1+e_+)<1; the action region A and Delaunay notation of L36-59; t,a_pm_prime,e_pm_prime,U,K,B,B_prime,eta defined at L134-147; delta_2,mu_2,C_F,F are selected for K as at L171, s_0=delta_2/(2 pi), r_0=2 pi delta_2, h_tilde=h_{(2 pi)^2,1/(2 pi)}, f_tilde_mu the period-one perturbation extended by zero outside the analytic domain
SOURCE_QUANTIFIERS: After fixing a_pm,e_pm and the common analytic data of L171, for every real I in B_{r_0}
SOURCE_CONCLUSION: h~ holomorphic on B_{r_0}, real at real I, and det B_h~(I) = 3/I_1^4 > 0 for every real I in B_{r_0}
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p7:period-one, bpI:p7:nondeg, bpI:p0:bordered#borderedHessian, bpI:p6:kep-ham, bpI:p8:safe
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p7:period-one | blueprint-I/parts/p8-r3bp.tex#stepI:p8:hd-h@L180-L180 | (b) holomorphy, reality, I_1 > 0
EDGE: bpI:p7:nondeg | blueprint-I/parts/p8-r3bp.tex#stepI:p8:hd-h@L180-L180 | det B_h~(I) = 3/I_1^4
EDGE: bpI:p0:bordered#borderedHessian | blueprint-I/parts/p8-r3bp.tex#stepI:p8:hd-h@L180-L180 | the bordered Hessian
EDGE: bpI:p6:kep-ham | blueprint-I/parts/p8-r3bp.tex#stepI:p8:hd-h@L180-L180 | the converted h_tilde is the h_{kappa,Omega} defined in Part 6
EDGE: bpI:p8:safe | blueprint-I/parts/p8-r3bp.tex#stepI:p8:hd-h@L180-L180 | K, B, B_prime and/or the safe radii fixed by this package
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p8
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepI:p8:hd-f
KIND: step
TITLE: The perturbation
STATEMENT_SOURCE: blueprint-I/parts/p8-r3bp.tex#stepI:p8:hd-f@L182-L182
PROOF_SOURCE: blueprint-I/parts/p8-r3bp.tex#stepI:p8:hd-f@L182-L182
CONTRACT_ID: stepI:p8:hd-f
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: 0<a_-<a_+, 0<e_-<e_+<1/4, a_+(1+e_+)<1; the action region A and Delaunay notation of L36-59; t,a_pm_prime,e_pm_prime,U,K,B,B_prime,eta defined at L134-147; delta_2,mu_2,C_F,F are selected for K as at L171, s_0=delta_2/(2 pi), r_0=2 pi delta_2, h_tilde=h_{(2 pi)^2,1/(2 pi)}, f_tilde_mu the period-one perturbation extended by zero outside the analytic domain; real mu with 0<=mu<mu_2, epsilon=C_F mu
SOURCE_QUANTIFIERS: For each real mu with 0<=mu<mu_2, put epsilon=C_F mu; for all (theta,I) in T_{s_0} x B_{r_0}, with reality at its real points
SOURCE_CONCLUSION: f_tilde_mu is holomorphic on T_{s_0} x B_{r_0}, 1-periodic, real at its real points and bounded by |mu| C_F = C_F mu = epsilon since 0<=mu<mu_2; extension by zero does not change these on-domain facts
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p7:period-one, bpI:p6:kep-ham, bpI:p8:safe
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p7:period-one | blueprint-I/parts/p8-r3bp.tex#stepI:p8:hd-f@L182-L182 | (c)
EDGE: bpI:p6:kep-ham | blueprint-I/parts/p8-r3bp.tex#stepI:p8:hd-f@L182-L182 | the converted h_tilde is the h_{kappa,Omega} defined in Part 6
EDGE: bpI:p8:safe | blueprint-I/parts/p8-r3bp.tex#stepI:p8:hd-f@L182-L182 | K, B, B_prime and/or the safe radii fixed by this package
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p8
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepI:p8:hd-sets
KIND: step
TITLE: Sets
STATEMENT_SOURCE: blueprint-I/parts/p8-r3bp.tex#stepI:p8:hd-sets@L184-L184
PROOF_SOURCE: blueprint-I/parts/p8-r3bp.tex#stepI:p8:hd-sets@L184-L184
CONTRACT_ID: stepI:p8:hd-sets
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: 0<a_-<a_+, 0<e_-<e_+<1/4, a_+(1+e_+)<1; the action region A and Delaunay notation of L36-59; t,a_pm_prime,e_pm_prime,U,K,B,B_prime,eta defined at L134-147; delta_2,mu_2,C_F,F are selected for K as at L171, s_0=delta_2/(2 pi), r_0=2 pi delta_2, h_tilde=h_{(2 pi)^2,1/(2 pi)}, f_tilde_mu the period-one perturbation extended by zero outside the analytic domain
SOURCE_QUANTIFIERS: For fixed a_pm,e_pm and the analytic constants selected for K at L171; no new solution, point or parameter is chosen
SOURCE_CONCLUSION: B open bounded nonempty, B' open with compact closure in B, s_0, r_0 > 0; (c) dependence on (a_pm,e_pm) only
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p8:safe-region, bpI:p7:period-one, bpI:p7:exact-ham, bpI:p8:safe
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p8:safe-region | blueprint-I/parts/p8-r3bp.tex#stepI:p8:hd-sets@L184-L184 | (d) and (e)
EDGE: bpI:p7:period-one | blueprint-I/parts/p8-r3bp.tex#stepI:p8:hd-sets@L184-L184 | (e) dependence of s_0, r_0, mu_2, C_F
EDGE: bpI:p7:exact-ham | blueprint-I/parts/p8-r3bp.tex#stepI:p8:hd-sets@L184-L184 | delta_2 in (0,delta_1]
EDGE: bpI:p8:safe | blueprint-I/parts/p8-r3bp.tex#stepI:p8:hd-sets@L184-L184 | K, B, B_prime and/or the safe radii fixed by this package
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p8
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: bpI:p8:constants
KIND: definition
TITLE: Choice of mu_0, d, R
STATEMENT_SOURCE: blueprint-I/parts/p8-r3bp.tex#bpI:p8:constants@L190-L202
PROOF_SOURCE: -
CONTRACT_ID: bpI:p8:constants
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Definition bpI:p8:safe, Lemma safe-region, Proposition head-data; eps_0 of Theorem I-HEAD for (B,s_0,r_0,h~,B',eta); C_F = 6/(eps_0^sh sqrt(c_*)) > 0 of Lemma bpI:p7:shift
SOURCE_QUANTIFIERS: in this order depending only on (a_pm,e_pm): (1) t, a'_pm, e'_pm, U, calK, B, B', eta=1, r_min, rho_max; (2) delta_2, mu_2, C_F, s_0, r_0, h~; (3) eps_H; (4) nu_0, mu_0, d, R
SOURCE_CONCLUSION: defines eps_H := the constant epsilon_0 of I-HEAD for (B,s_0,r_0,h~,B',eta); nu_0 = min{r_min,1-rho_max} > 0; mu_0 = min{1/2, mu_2, eps_H/C_F, nu_0/2} in (0,1/2]; d = nu_0/2; R = sqrt(2/r_min); R > 1 > rho_max
CONSTANT_SCOPE: mu_0, d, R depend on nothing but (a_pm,e_pm); fixed before mu and z_0
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p8:safe, bpI:p8:safe-region, bpI:p8:head-data, bpI:p7:shift, bpI:p0:head, bpI:p8:sec-safe#data, bpI:p6:kep-ham, bpI:p6:conversion-map
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p8:safe | blueprint-I/parts/p8-r3bp.tex#bpI:p8:constants@L193-L193 | step (1) data
EDGE: bpI:p8:safe-region | blueprint-I/parts/p8-r3bp.tex#bpI:p8:constants@L193-L193 | r_min, rho_max and rho_max < 1
EDGE: bpI:p8:head-data | blueprint-I/parts/p8-r3bp.tex#bpI:p8:constants@L194-L194 | delta_2, mu_2, C_F, s_0, r_0, h~
EDGE: bpI:p7:shift | blueprint-I/parts/p8-r3bp.tex#bpI:p8:constants@L194-L194 | C_F = 6/(eps_0^sh sqrt(c_*)) > 0
EDGE: bpI:p0:head | blueprint-I/parts/p8-r3bp.tex#bpI:p8:constants@L195-L195 | eps_H is the constant epsilon_0 of I-HEAD
EDGE: bpI:p8:sec-safe#data | blueprint-I/parts/p8-r3bp.tex#bpI:p8:constants@L193-L193 | rho_* and the parameters a_pm, e_pm
EDGE: bpI:p6:kep-ham | blueprint-I/parts/p8-r3bp.tex#bpI:p8:constants@L190-L202 | the converted h_tilde is the h_{kappa,Omega} defined in Part 6
EDGE: bpI:p6:conversion-map | blueprint-I/parts/p8-r3bp.tex#bpI:p8:constants@L194-L194 | s_0,r_0 and h_tilde are selected in the period-one normalization
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p8
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepI:p8:bd-r
KIND: step
TITLE: Radius
STATEMENT_SOURCE: blueprint-I/parts/p8-r3bp.tex#stepI:p8:bd-r@L209-L209
PROOF_SOURCE: blueprint-I/parts/p8-r3bp.tex#stepI:p8:bd-r@L209-L209
CONTRACT_ID: stepI:p8:bd-r
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: 0<a_-<a_+, 0<e_-<e_+<1/4, a_+(1+e_+)<1; the action region A and Delaunay notation of L36-59; t,a_pm_prime,e_pm_prime,U,K,B,B_prime,eta defined at L134-147; R from L198; (L,G) in K, ell,g real, (q,p)=Q(ell,g,L,G)
SOURCE_QUANTIFIERS: For every (L,G) in K and real ell,g, with (q,p)=Q(ell,g,L,G), as in the enclosing lemma
SOURCE_CONCLUSION: r_min <= rad(q) <= rho_max
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p7:orbit-identities, bpI:p8:safe, bpI:p7:orbit-maps
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p7:orbit-identities | blueprint-I/parts/p8-r3bp.tex#stepI:p8:bd-r@L209-L209 | (a) bounds on ¦q¦_2
EDGE: bpI:p8:safe | blueprint-I/parts/p8-r3bp.tex#stepI:p8:bd-r@L209-L209 | definition of r_min, rho_max
EDGE: bpI:p7:orbit-maps | blueprint-I/parts/p8-r3bp.tex#stepI:p8:bd-r@L209-L209 | Q and e(L,G) of the Delaunay orbit data
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p8
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepI:p8:bd-p
KIND: step
TITLE: Momentum
STATEMENT_SOURCE: blueprint-I/parts/p8-r3bp.tex#stepI:p8:bd-p@L211-L211
PROOF_SOURCE: blueprint-I/parts/p8-r3bp.tex#stepI:p8:bd-p@L211-L211
CONTRACT_ID: stepI:p8:bd-p
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: 0<a_-<a_+, 0<e_-<e_+<1/4, a_+(1+e_+)<1; the action region A and Delaunay notation of L36-59; t,a_pm_prime,e_pm_prime,U,K,B,B_prime,eta defined at L134-147; R from L198; (L,G) in K, ell,g real, (q,p)=Q(ell,g,L,G)
SOURCE_QUANTIFIERS: For every (L,G) in K and real ell,g, with (q,p)=Q(ell,g,L,G), as in the enclosing lemma
SOURCE_CONCLUSION: |p|_2^2 = 2/|q|_2 - 1/L^2 <= 2/r_min = R^2
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p7:orbit-identities, stepI:p8:bd-r, bpI:p8:constants, bpI:p8:safe, bpI:p7:orbit-maps, bpI:p7:elements
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p7:orbit-identities | blueprint-I/parts/p8-r3bp.tex#stepI:p8:bd-p@L211-L211 | (c) energy -1/(2L^2)
EDGE: stepI:p8:bd-r | blueprint-I/parts/p8-r3bp.tex#stepI:p8:bd-p@L211-L211 | ¦q¦_2 >= r_min
EDGE: bpI:p8:constants | blueprint-I/parts/p8-r3bp.tex#stepI:p8:bd-p@L211-L211 | R = sqrt(2/r_min)
EDGE: bpI:p8:safe | blueprint-I/parts/p8-r3bp.tex#stepI:p8:bd-p@L211-L211 | K, B, B_prime and/or the safe radii fixed by this package
EDGE: bpI:p7:orbit-maps | blueprint-I/parts/p8-r3bp.tex#stepI:p8:bd-p@L211-L211 | Q and e(L,G) of the Delaunay orbit data
EDGE: bpI:p7:elements | blueprint-I/parts/p8-r3bp.tex#stepI:p8:bd-p@L211-L211 | E(q,p)=|p|_2^2/2-1/|q|_2 is the energy definition used in rearranging the identity
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p8
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepI:p8:pf-coord
KIND: step
TITLE: Delaunay coordinates of z_0
STATEMENT_SOURCE: blueprint-I/parts/p8-r3bp.tex#stepI:p8:pf-coord@L217-L217
PROOF_SOURCE: blueprint-I/parts/p8-r3bp.tex#stepI:p8:pf-coord@L217-L217
CONTRACT_ID: stepI:p8:pf-coord
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: 0<a_-<a_+, 0<e_-<e_+<1/4, a_+(1+e_+)<1; the action region A and Delaunay notation of L36-59; t,a_pm_prime,e_pm_prime,U,K,B,B_prime,eta defined at L134-147; delta_2,mu_2,C_F,F are selected for K as at L171, s_0=delta_2/(2 pi), r_0=2 pi delta_2, h_tilde=h_{(2 pi)^2,1/(2 pi)}, f_tilde_mu the period-one perturbation extended by zero outside the analytic domain; constants mu_0,d,R chosen at L190-202; 0<=mu<mu_0; z_0 in N
SOURCE_QUANTIFIERS: After a_pm,e_pm and mu_0,d,R, for each mu in [0,mu_0) and z_0 in N choose ell_0,g_0,L_0,G_0, then define z_tilde_0 with I_0 in B_prime
SOURCE_CONCLUSION: z_0 = Q(l_0,g_0,L_0,G_0) with (L_0,G_0) in A; z~_0 = (theta_0,I_0) := S^{-1}(l_0,g_0,L_0,G_0) = ((l_0,g_0)/(2 pi), 2 pi (L_0,G_0)), Q(S(z~_0)) = z_0 and I_0 in 2 pi A = B'
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p8:topology, bpI:p6:conversion-map, bpI:p8:safe, bpI:p7:orbit-maps
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p8:topology | blueprint-I/parts/p8-r3bp.tex#stepI:p8:pf-coord@L217-L217 | (b) Delaunay preimage in R^2 x A
EDGE: bpI:p6:conversion-map | blueprint-I/parts/p8-r3bp.tex#stepI:p8:pf-coord@L217-L217 | S and its inverse (period-one conversion)
EDGE: bpI:p8:safe | blueprint-I/parts/p8-r3bp.tex#stepI:p8:pf-coord@L217-L217 | B_pr = 2 pi A
EDGE: bpI:p7:orbit-maps | blueprint-I/parts/p8-r3bp.tex#stepI:p8:pf-coord@L217-L217 | Q
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p8
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepI:p8:pf-small
KIND: step
TITLE: Smallness for I-HEAD
STATEMENT_SOURCE: blueprint-I/parts/p8-r3bp.tex#stepI:p8:pf-small@L219-L219
PROOF_SOURCE: blueprint-I/parts/p8-r3bp.tex#stepI:p8:pf-small@L219-L219
CONTRACT_ID: stepI:p8:pf-small
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: 0<a_-<a_+, 0<e_-<e_+<1/4, a_+(1+e_+)<1; the action region A and Delaunay notation of L36-59; t,a_pm_prime,e_pm_prime,U,K,B,B_prime,eta defined at L134-147; delta_2,mu_2,C_F,F are selected for K as at L171, s_0=delta_2/(2 pi), r_0=2 pi delta_2, h_tilde=h_{(2 pi)^2,1/(2 pi)}, f_tilde_mu the period-one perturbation extended by zero outside the analytic domain; constants mu_0,d,R chosen at L190-202; 0<=mu<mu_0; z_0 in N
SOURCE_QUANTIFIERS: After a_pm,e_pm and mu_0,d,R, for each mu in [0,mu_0) and z_0 in N put f=f_tilde_mu and epsilon=C_F mu; no new witness
SOURCE_CONCLUSION: f = f~_mu and epsilon = C_F mu satisfy the hypotheses of I-HEAD on (f,epsilon) and epsilon < eps_H = epsilon_0; the remaining hypotheses of I-HEAD hold by head-data (a)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p8:head-data, bpI:p8:constants, bpI:p8:safe, bpI:p6:kep-ham
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p8:head-data | blueprint-I/parts/p8-r3bp.tex#stepI:p8:pf-small@L219-L219 | (a) and (b) discharge the premises of I-HEAD
EDGE: bpI:p8:constants | blueprint-I/parts/p8-r3bp.tex#stepI:p8:pf-small@L219-L219 | mu_0 <= mu_2 and C_F mu_0 <= eps_H
EDGE: bpI:p8:safe | blueprint-I/parts/p8-r3bp.tex#stepI:p8:pf-small@L219-L219 | B, B_pr, eta data of I-HEAD
EDGE: bpI:p6:kep-ham | blueprint-I/parts/p8-r3bp.tex#stepI:p8:pf-small@L219-L219 | the converted h_tilde is the h_{kappa,Omega} defined in Part 6
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p8
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepI:p8:pf-head
KIND: step
TITLE: Apply I-HEAD
STATEMENT_SOURCE: blueprint-I/parts/p8-r3bp.tex#stepI:p8:pf-head@L221-L221
PROOF_SOURCE: blueprint-I/parts/p8-r3bp.tex#stepI:p8:pf-head@L221-L221
CONTRACT_ID: stepI:p8:pf-head
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: 0<a_-<a_+, 0<e_-<e_+<1/4, a_+(1+e_+)<1; the action region A and Delaunay notation of L36-59; t,a_pm_prime,e_pm_prime,U,K,B,B_prime,eta defined at L134-147; delta_2,mu_2,C_F,F are selected for K as at L171, s_0=delta_2/(2 pi), r_0=2 pi delta_2, h_tilde=h_{(2 pi)^2,1/(2 pi)}, f_tilde_mu the period-one perturbation extended by zero outside the analytic domain; constants mu_0,d,R chosen at L190-202; 0<=mu<mu_0; z_0 in N; z_tilde_0 and I_0 are the coordinates chosen at L217
SOURCE_QUANTIFIERS: After the fixed geometric data, their common epsilon_H, mu in [0,mu_0), z_0 and the chosen z_tilde_0, there exists z_tilde:R->R^2 x R^2; then for every t in R
SOURCE_CONCLUSION: z~ : R -> R^2 x R^2 with z~(0) = z~_0 and Sol(Ham_{h~,f~_mu},B,R,z~): z~(t)_2 in B, Ham differentiable at z~(t), z~'(t) = X(z~(t)); confinement and uniqueness clauses not needed
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p0:head, stepI:p8:pf-small, stepI:p8:pf-coord, bpI:p8:head-data, bpI:p0:hamsol#IsHamiltonianSolutionOn, bpI:p0:realham#realHamiltonian, bpI:p8:safe, bpI:p6:kep-ham, bpI:p8:constants
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p0:head | blueprint-I/parts/p8-r3bp.tex#stepI:p8:pf-head@L221-L221 | frozen theorem I-HEAD applied (not re-proved)
EDGE: stepI:p8:pf-small | blueprint-I/parts/p8-r3bp.tex#stepI:p8:pf-head@L221-L221 | hypotheses and epsilon < epsilon_0 discharged
EDGE: stepI:p8:pf-coord | blueprint-I/parts/p8-r3bp.tex#stepI:p8:pf-head@L221-L221 | initial point z~_0 with I_0 in B_pr
EDGE: bpI:p8:head-data | blueprint-I/parts/p8-r3bp.tex#stepI:p8:pf-head@L221-L221 | hypotheses (a) on (B,s_0,r_0,h~,B_pr,eta)
EDGE: bpI:p0:hamsol#IsHamiltonianSolutionOn | blueprint-I/parts/p8-r3bp.tex#stepI:p8:pf-head@L221-L221 | Sol
EDGE: bpI:p0:realham#realHamiltonian | blueprint-I/parts/p8-r3bp.tex#stepI:p8:pf-head@L221-L221 | Ham_{h~,f~_mu}
EDGE: bpI:p8:safe | blueprint-I/parts/p8-r3bp.tex#stepI:p8:pf-head@L221-L221 | B, B_pr, eta
EDGE: bpI:p6:kep-ham | blueprint-I/parts/p8-r3bp.tex#stepI:p8:pf-head@L221-L221 | the converted h_tilde is the h_{kappa,Omega} defined in Part 6
EDGE: bpI:p8:constants | blueprint-I/parts/p8-r3bp.tex#stepI:p8:pf-head@L221-L221 | epsilon_H is the same I-HEAD threshold selected before mu and z_0; retain this witness
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p8
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepI:p8:pf-sol
KIND: step
TITLE: The physical solution
STATEMENT_SOURCE: blueprint-I/parts/p8-r3bp.tex#stepI:p8:pf-sol@L223-L223
PROOF_SOURCE: blueprint-I/parts/p8-r3bp.tex#stepI:p8:pf-sol@L223-L223
CONTRACT_ID: stepI:p8:pf-sol
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: 0<a_-<a_+, 0<e_-<e_+<1/4, a_+(1+e_+)<1; the action region A and Delaunay notation of L36-59; t,a_pm_prime,e_pm_prime,U,K,B,B_prime,eta defined at L134-147; delta_2,mu_2,C_F,F are selected for K as at L171, s_0=delta_2/(2 pi), r_0=2 pi delta_2, h_tilde=h_{(2 pi)^2,1/(2 pi)}, f_tilde_mu the period-one perturbation extended by zero outside the analytic domain; constants mu_0,d,R chosen at L190-202; 0<=mu<mu_0; z_0 in N; z_tilde is the same trajectory obtained at L221; define z=Q o S o z_tilde
SOURCE_QUANTIFIERS: After choosing the same z_tilde at L221, define z=Q o S o z_tilde:R->R^2 x R^2; then for every t in R
SOURCE_CONCLUSION: z(0) = z_0 and RSol_mu(R,z)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepI:p8:pf-head, stepI:p8:pf-coord, bpI:p7:transfer, bpI:p8:constants, bpI:p8:safe-region, bpI:p6:conversion-map, bpI:p0:restricted#IsRestrictedSolutionOn, bpI:p8:safe, bpI:p7:orbit-maps
ROUTES: -
ROUTE_FOR: -
EDGE: stepI:p8:pf-head | blueprint-I/parts/p8-r3bp.tex#stepI:p8:pf-sol@L223-L223 | the Delaunay solution z~
EDGE: stepI:p8:pf-coord | blueprint-I/parts/p8-r3bp.tex#stepI:p8:pf-sol@L223-L223 | z(0) = z_0
EDGE: bpI:p7:transfer | blueprint-I/parts/p8-r3bp.tex#stepI:p8:pf-sol@L223-L223 | transfer of Delaunay solutions to the physical problem
EDGE: bpI:p8:constants | blueprint-I/parts/p8-r3bp.tex#stepI:p8:pf-sol@L223-L223 | mu < mu_0 <= mu_2
EDGE: bpI:p8:safe-region | blueprint-I/parts/p8-r3bp.tex#stepI:p8:pf-sol@L223-L223 | (d): B subset 2 pi calK
EDGE: bpI:p6:conversion-map | blueprint-I/parts/p8-r3bp.tex#stepI:p8:pf-sol@L223-L223 | S
EDGE: bpI:p0:restricted#IsRestrictedSolutionOn | blueprint-I/parts/p8-r3bp.tex#stepI:p8:pf-sol@L223-L223 | RSol_mu
EDGE: bpI:p8:safe | blueprint-I/parts/p8-r3bp.tex#stepI:p8:pf-sol@L223-L223 | K, B, B_prime and/or the safe radii fixed by this package
EDGE: bpI:p7:orbit-maps | blueprint-I/parts/p8-r3bp.tex#stepI:p8:pf-sol@L223-L223 | Q and e(L,G) of the Delaunay orbit data
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p8
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepI:p8:pf-bounds
KIND: step
TITLE: Radius bounds
STATEMENT_SOURCE: blueprint-I/parts/p8-r3bp.tex#stepI:p8:pf-bounds@L225-L225
PROOF_SOURCE: blueprint-I/parts/p8-r3bp.tex#stepI:p8:pf-bounds@L225-L225
CONTRACT_ID: stepI:p8:pf-bounds
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: 0<a_-<a_+, 0<e_-<e_+<1/4, a_+(1+e_+)<1; the action region A and Delaunay notation of L36-59; t,a_pm_prime,e_pm_prime,U,K,B,B_prime,eta defined at L134-147; delta_2,mu_2,C_F,F are selected for K as at L171, s_0=delta_2/(2 pi), r_0=2 pi delta_2, h_tilde=h_{(2 pi)^2,1/(2 pi)}, f_tilde_mu the period-one perturbation extended by zero outside the analytic domain; constants mu_0,d,R chosen at L190-202; 0<=mu<mu_0; z_0 in N; z_tilde is the trajectory from L221, z=Q o S o z_tilde as at L223; t in R
SOURCE_QUANTIFIERS: for t in R
SOURCE_CONCLUSION: r_min <= rad(q(t)) <= rho_max < 1 < R and rad(p(t)) <= R
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepI:p8:pf-sol, stepI:p8:pf-head, bpI:p8:bounds, bpI:p8:safe, bpI:p8:safe-region, bpI:p8:constants, bpI:p6:conversion-map, bpI:p0:primaries#radius
ROUTES: -
ROUTE_FOR: -
EDGE: stepI:p8:pf-sol | blueprint-I/parts/p8-r3bp.tex#stepI:p8:pf-bounds@L225-L225 | z = Q o S o z~
EDGE: stepI:p8:pf-head | blueprint-I/parts/p8-r3bp.tex#stepI:p8:pf-bounds@L225-L225 | z~(t)_2 in B
EDGE: bpI:p8:bounds | blueprint-I/parts/p8-r3bp.tex#stepI:p8:pf-bounds@L225-L225 | bounds along a Delaunay orbit for (L,G) in calK
EDGE: bpI:p8:safe | blueprint-I/parts/p8-r3bp.tex#stepI:p8:pf-bounds@L225-L225 | B = 2 pi U and U subset calK
EDGE: bpI:p8:safe-region | blueprint-I/parts/p8-r3bp.tex#stepI:p8:pf-bounds@L225-L225 | U subset calK and rho_max < 1
EDGE: bpI:p8:constants | blueprint-I/parts/p8-r3bp.tex#stepI:p8:pf-bounds@L225-L225 | R > 1 > rho_max
EDGE: bpI:p6:conversion-map | blueprint-I/parts/p8-r3bp.tex#stepI:p8:pf-bounds@L225-L225 | S z~(t) = (l,g,L,G) with (L,G) = z~(t)_2/(2 pi)
EDGE: bpI:p0:primaries#radius | blueprint-I/parts/p8-r3bp.tex#stepI:p8:pf-bounds@L225-L225 | rad
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p8
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepI:p8:pf-dist
KIND: step
TITLE: Distance to the primaries
STATEMENT_SOURCE: blueprint-I/parts/p8-r3bp.tex#stepI:p8:pf-dist@L227-L227
PROOF_SOURCE: blueprint-I/parts/p8-r3bp.tex#stepI:p8:pf-dist@L227-L227
CONTRACT_ID: stepI:p8:pf-dist
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: 0<a_-<a_+, 0<e_-<e_+<1/4, a_+(1+e_+)<1; the action region A and Delaunay notation of L36-59; t,a_pm_prime,e_pm_prime,U,K,B,B_prime,eta defined at L134-147; delta_2,mu_2,C_F,F are selected for K as at L171, s_0=delta_2/(2 pi), r_0=2 pi delta_2, h_tilde=h_{(2 pi)^2,1/(2 pi)}, f_tilde_mu the period-one perturbation extended by zero outside the analytic domain; constants mu_0,d,R chosen at L190-202; 0<=mu<mu_0; z_0 in N; z is the physical trajectory defined at L223; t in R
SOURCE_QUANTIFIERS: for t in R
SOURCE_CONCLUSION: rad(q(t) - a_j(mu)) >= nu_0/2 = d for j = 1,2 and all t in R
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p8:shell-exclusion, stepI:p8:pf-bounds, bpI:p8:constants, bpI:p8:safe-region, bpI:p0:primaries#primary1, bpI:p0:primaries#primary2, bpI:p0:primaries#radius
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p8:shell-exclusion | blueprint-I/parts/p8-r3bp.tex#stepI:p8:pf-dist@L227-L227 | shell around the primary (instance of the collision-exclusion lemma)
EDGE: stepI:p8:pf-bounds | blueprint-I/parts/p8-r3bp.tex#stepI:p8:pf-dist@L227-L227 | q(t) lies in the shell r_min <= rad <= rho_max
EDGE: bpI:p8:constants | blueprint-I/parts/p8-r3bp.tex#stepI:p8:pf-dist@L227-L227 | nu_0, d = nu_0/2, mu_0 <= nu_0/2
EDGE: bpI:p8:safe-region | blueprint-I/parts/p8-r3bp.tex#stepI:p8:pf-dist@L227-L227 | r_min, rho_max with 0 < r_min <= rho_max < 1
EDGE: bpI:p0:primaries#primary1 | blueprint-I/parts/p8-r3bp.tex#stepI:p8:pf-dist@L227-L227 | a_1(mu)
EDGE: bpI:p0:primaries#primary2 | blueprint-I/parts/p8-r3bp.tex#stepI:p8:pf-dist@L227-L227 | a_2(mu)
EDGE: bpI:p0:primaries#radius | blueprint-I/parts/p8-r3bp.tex#stepI:p8:pf-dist@L227-L227 | rad
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p8
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepI:p8:pf-uniq
KIND: step
TITLE: Uniqueness
STATEMENT_SOURCE: blueprint-I/parts/p8-r3bp.tex#stepI:p8:pf-uniq@L229-L229
PROOF_SOURCE: blueprint-I/parts/p8-r3bp.tex#stepI:p8:pf-uniq@L229-L229
CONTRACT_ID: stepI:p8:pf-uniq
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: 0<a_-<a_+, 0<e_-<e_+<1/4, a_+(1+e_+)<1; the action region A and Delaunay notation of L36-59; t,a_pm_prime,e_pm_prime,U,K,B,B_prime,eta defined at L134-147; delta_2,mu_2,C_F,F are selected for K as at L171, s_0=delta_2/(2 pi), r_0=2 pi delta_2, h_tilde=h_{(2 pi)^2,1/(2 pi)}, f_tilde_mu the period-one perturbation extended by zero outside the analytic domain; constants mu_0,d,R chosen at L190-202; 0<=mu<mu_0; z_0 in N; z is the physical trajectory from L223; a<0<b, y:R->R^2 x R^2 with y(0)=z_0 and RSol_mu((a,b),y)
SOURCE_QUANTIFIERS: for all a<0<b and y
SOURCE_CONCLUSION: IsSolIn F_mu W_mu (a,b) y and IsSolIn F_mu W_mu (a,b) z; for every t in (a,b), y(t)=z(t)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p7:ham-eq, N:bpN:p3:newton-reduction, N:bpN:p3:gen-sol, N:bpN:p3:gen-uniqueness, stepI:p8:pf-sol, stepI:p8:pf-coord, bpI:p0:restricted#IsRestrictedSolutionOn, bpI:p0:restricted#restrictedVectorField, bpI:p0:primaries#CollisionFree, bpI:p7:sec-ham#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p7:ham-eq | blueprint-I/parts/p8-r3bp.tex#stepI:p8:pf-uniq@L229-L229 | RSol iff z(t) in W_mu and z_pr = X_Ham; shared ODE layer
EDGE: N:bpN:p3:newton-reduction | blueprint-I/parts/p8-r3bp.tex#stepI:p8:pf-uniq@L229-L229 | IsRestrictedSolutionOn iff IsSolIn for V_mu on W_mu
EDGE: N:bpN:p3:gen-sol | blueprint-I/parts/p8-r3bp.tex#stepI:p8:pf-uniq@L229-L229 | restriction of a solution to a subinterval
EDGE: N:bpN:p3:gen-uniqueness | blueprint-I/parts/p8-r3bp.tex#stepI:p8:pf-uniq@L229-L229 | uniqueness on arbitrary interval (a,b)
EDGE: stepI:p8:pf-sol | blueprint-I/parts/p8-r3bp.tex#stepI:p8:pf-uniq@L229-L229 | RSol_mu(R,z) for z
EDGE: stepI:p8:pf-coord | blueprint-I/parts/p8-r3bp.tex#stepI:p8:pf-uniq@L229-L229 | common initial value z_0
EDGE: bpI:p0:restricted#IsRestrictedSolutionOn | blueprint-I/parts/p8-r3bp.tex#stepI:p8:pf-uniq@L229-L229 | RSol_mu
EDGE: bpI:p0:restricted#restrictedVectorField | blueprint-I/parts/p8-r3bp.tex#stepI:p8:pf-uniq@L229-L229 | V_mu
EDGE: bpI:p0:primaries#CollisionFree | blueprint-I/parts/p8-r3bp.tex#stepI:p8:pf-uniq@L229-L229 | W_mu = collision-free points
EDGE: bpI:p7:sec-ham#data | blueprint-I/parts/p8-r3bp.tex#stepI:p8:pf-uniq@L229-L229 | W_mu is the open collision-free domain and F_mu is the same total formula extension
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p8
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
ITEM: stepI:p8:pf-uniq
KIND: proof-region
SOURCE: blueprint-I/parts/p8-r3bp.tex#stepI:p8:pf-uniq@L229-L231
DISPOSITION: NODE stepI:p8:pf-uniq, bpI:p0:r3bp
REASON: L229 is physical arbitrary-interval uniqueness; L231 gathers all six conclusions at the frozen root, whose direct inputs already include topology, constants and every pf-* step
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p8
REVIEWER: -
```

## Suspected blueprint defects and deviations

No new mathematical defect identified in Part 8 or either frozen theorem. Its enlarged safe region correctly avoids the original open-region uniform-margin problem. No source repair, new assumption, or mathematical deviation is introduced. The final assembly is faithfully relocated in coverage, not strengthened.

## Checks and limits

- `python3 scripts/depgraph_slice_check.py docs/graph/I/packets I-p8`: `I-p8: 37 nodes, 146 edges, 58 coverage items, 0 problems`. This structural result does not clear the semantic findings.
- `sha256sum -c docs/graph/I/CORPUS.sha256`: all eight blueprint-I files OK. `sha256sum -c docs/graph/I/IMPORTS.sha256`: five OK, K's p1-analysis.tex FAILED. The N ODE pin is OK. The K hash drift is a writer/global-review issue requiring adjudication before a whole-graph PASS; no pin was silently updated.
- I-R3BP identity: `iso.restricted_near_circular.v1`, export `KAM.Iso.restricted_near_circular`, ABI `51ef78464ec9887a4af758841d92ff8ebd3a8b16d5455a50490c8df10bf6cc2e`. I-HEAD identity and constant order were checked against its frozen declaration and manifest identity fields. No state interpreted.
- No Lean, source lint, build or #print axioms was run: the review brief prohibits Lean and permits only review-file writes. No axiom or proof-closure claim is made.

Final report validation: `python3 scripts/depgraph_apply_review.py docs/graph/I/packets I-p8 docs/graph/I/reviews/I-p8-review.md sol-review-I-p5p8 --dry-run` returned `I-p8: 27 replaced, 0 added, 1 coverage items, 0 unresolved FAILs, 10 PASS nodes`. In-memory checks found exactly one node-verdict row per original node, matching and resolvable replacement DEPS/EDGE targets, and no cycles in the merged graph with both proposals. Review files have no trailing whitespace; `git diff --check` returned no output. Packets and source files were not modified by this review.
