# P-xown slice topology review

Reviewer: `sol-review-P-p`. Marker: `rev-P-p`.

**Verdict: FAIL.** The ownership transfers and the retargeted consumer edges are correct. The means proof lacks the ruled-in change-of-variables external. Means and circular also omit their direct orbit-map definition dependency. The new proof units have no coverage inventory or step records despite SPEC's labelled-proof-step threshold. Complete proposals follow; they require independent delta review.

Read REVIEW-BRIEF.md and SPEC.md, the entire assigned packet pair, the relevant published I exclusions and import contracts, and the source spans below. The already reviewed iterative-special record remains valid. No Lean implementation or manifest state was used. Only this report is written.

## Node verdicts

| Node ID | Verdict | Source spans re-read | Assessment |
| --- | --- | --- | --- |
| bpN:p6:iterative-special | PASS | N p6:29–40,93–108,140–144; N p4 norm/projections import contracts | Original iterative hypotheses and separate specializations are preserved; setting, theorem, projections and norm are directly linked. The direct-divisor extension belongs to the consuming P-p2 proof, not to this original-hypothesis remark. |
| bpI:p7:scaling | FAIL | I p7:311–322; I p6:119–149; I p7:239 | Statement and means dependency pass. Missing labelled sc-alg/sc-flow proof nodes and their coverage entries. The two omitted I imports are correctly omitted, as explained below. |
| bpI:p7:means | FAIL | I p7:20–26,41,91–114,158–168,181–203,290–301 | Missing x-change and the directly used orbit-maps definition; missing mv-cv/mv-int proof nodes and coverage. The existing SOURCE_GAP-adjacent note records the omission but does not model the prerequisite. |
| bpI:p7:circular | FAIL | I p7:158–203,290–322 | Missing the orbit-maps definition and labelled ci-alg proof node/coverage. Explicitly include the real perihelion argument g in the quantifiers. The e=0 extension correctly excludes chart bijectivity and membership in the strictly noncircular region. |

Required additions, currently absent:

| Node ID | Verdict | Source spans re-read | Assessment |
| --- | --- | --- | --- |
| bpI:p7:x-change | FAIL | I p7:41,298 | Missing P-owned external under the explicit writer ruling; complete block below. |
| stepI:p7:mv-cv | FAIL | I p7:298 | Labelled substantive change-of-variable application omitted. |
| stepI:p7:mv-int | FAIL | I p7:300 | Labelled integral and virial derivation omitted. |
| stepI:p7:ci-alg | FAIL | I p7:308 | Labelled extension to the circular endpoint omitted. |
| stepI:p7:sc-alg | FAIL | I p7:320 | Labelled algebra step omitted; retain the source's proof-step granularity. |
| stepI:p7:sc-flow | FAIL | I p7:321 | Labelled field/curve transport and averages derivation omitted. |

## Findings

**F1 — major: missing external and definition edges.** At I Part 7 line 298, mv-cv explicitly invokes x-change. The owner graph excludes x-change (I DEPGRAPH_COVERAGE item at lines 3895–3902), so this must be an ordinary P-owned external with its original unprefixed ID, not an `I:` import. The writer ruling authorizes it. Do not restore the excluded P-p7:e-cov alias or the unrelated P average proof. Means names Q in its own statement (line 291), and circular explicitly uses the orbit-map formulas with independent eccentricity (lines 304,308). Both need a direct dependency on the existing import `I:bpI:p7:orbit-maps`; the transitive path through orbit-identities does not supply a direct definition use.

**F2 — major: proof-step inventory is missing.** SPEC's node threshold includes every labelled proof step, and these source proofs contain mv-cv, mv-int, ci-alg, sc-alg and sc-flow. None has a coverage item in P-xown. An endpoint corollary can have a single proof-step node; its short length does not justify deleting that labelled unit. The proof application, circular case extension and Hamiltonian transport are substantive obligations. The proposals retain the existing enclosing records and their direct source-use edges, add the labelled proof units and attach each parent to its proof. There is no new mathematical assumption or source-gap repair.

**F3 — minor: circular argument transcription.** The real rotation argument g of the orbit formulas is implicit in “real arguments” but missing from the record's quantifier list. Make it explicit together with ell; preserve the restricted endpoint conclusion and all existing premises.

## The two “as in” citations

**PASS: do not import `I:bpI:p6:conversion` or `I:stepI:p7:sy-field` for scaling.** Conversion(a) is a result about the particular period-conversion matrix diag(2π,2π,1/(2π),1/(2π)), not about S_k. Line 320 supplies S_k's diagonal derivative and the block calculation is repeated locally. The sy-field statement is about the Delaunay map Q on its own domain W; it is not an arbitrary-linear-map theorem applicable to S_k. Line 321 repeats the field identity and its chain-rule consequence for S_k, whose symplectic identity is supplied by sc-alg. The common calculation is a proof pattern, not an application of either published statement. Importing those specialized statements would not discharge the local premises. No SOURCE_GAP is needed for this elementary repeated algebra and chain rule.

## Coverage

| Missing coverage item | Verdict | Reason |
| --- | --- | --- |
| bpI:p7:x-change | FAIL | Consumed external now explicitly P-owned. |
| stepI:p7:mv-cv | FAIL | Labelled proof step at I p7:298. |
| stepI:p7:mv-int | FAIL | Labelled proof step at I p7:300. |
| stepI:p7:ci-alg | FAIL | Labelled proof step at I p7:308. |
| stepI:p7:sc-alg | FAIL | Labelled proof step at I p7:320. |
| stepI:p7:sc-flow | FAIL | Labelled proof step at I p7:321. |

all other coverage items PASS

The four existing coverage dispositions correctly name P-owned nodes, and their source ranges match. I's exclusions of means/circular/scaling are confirmed in I DEPGRAPH_COVERAGE:4498–4559. The cross-owned source files are already pinned in P CORPUS.sha256; no pin addition is outstanding.

## P-xown replacement and addition blocks

Replace only the following three existing nodes. Unmentioned fields are preserved verbatim; proposed records remain PROPOSED until independent delta review.

```text
NODE: bpI:p7:scaling
KIND: proposition
TITLE: Scaling to a general Kepler strength
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#bpI:p7:scaling@L311-L318
PROOF_SOURCE: blueprint-I/parts/p7-delaunay.tex#bpI:p7:scaling@L319-L322
CONTRACT_ID: bpI:p7:scaling
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: k>0; E_k(q,p)=¦p¦^2/2-k/¦q¦ and S_k(Q,P)=(Q/k,kP); for the dynamical claims (Q,P)(tau) solves Hamilton equations of E_1; mean-anomaly averages as in Proposition means; mass dictionary: body of mass m>0 in the field of a centre of strength k=G m_0 with H(q,p)=¦p¦^2/(2m)-km/¦q¦
SOURCE_QUANTIFIERS: k>0 then (Q,P) a solution (or Kepler orbit with semi-major axis a); m>0 and k=G m_0 for the mass dictionary
SOURCE_CONCLUSION: S_k is linear and symplectic (DS_k^T J DS_k=J), E_k o S_k=k^2 E_1, (q,p)(t)=S_k(Q,P)(k^2 t) solves Hamilton equations of E_k, semi-major axis a_k=a/k, averages <1/¦q¦_2>=1/a_k, <¦p¦_2^2>=k/a_k, E_k=-k/(2a_k); mass dictionary: H=m E_k(q,p/m), v=p/m obeys qdot=v, vdot=-kq/¦q¦^3, orbit and elements a_k,e are those of E_k, Gamma_mass=m Gamma(q,v), L_mass=m sqrt(k a_k), <¦p¦^2>=m^2 k/a_k, <1/¦q¦>=1/a_k
CONSTANT_SCOPE: none (k and m are the data; no dependence on any other constant)
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p7:means, stepI:p7:sc-alg, stepI:p7:sc-flow
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p7:means | blueprint-I/parts/p7-delaunay.tex#bpI:p7:scaling@L320-L321 | averages 1/¦Q¦ and ¦P¦^2 over the mean anomaly equal 1/a and 1/a, giving the scaled averages and E_k
EDGE: stepI:p7:sc-alg | blueprint-I/parts/p7-delaunay.tex#stepI:p7:sc-alg@L320-L320 | local energy and symplectic block calculation
EDGE: stepI:p7:sc-flow | blueprint-I/parts/p7-delaunay.tex#stepI:p7:sc-flow@L321-L321 | local field transport, time rescaling and averages
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: writer-xown-sonnet
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: P-OWNED: I excludes this proposition from its own root closure; P consumes it at bpP:p6:kepler-part, stepP:p7:rg-scale and (via bpI:p7:circular) Part 7. Source remains the I blueprint. Proof step sc-alg cites Lemma bpI:p6:conversion(a) and step sc-flow cites Step stepI:p7:sy-field (naturality of Hamiltonian fields) only as "as in" pointers to the same one-line algebra, so no edges are recorded; both are nodes of the published I graph, if the reviewer wants them as imports.
```

```text
NODE: bpI:p7:means
KIND: proposition
TITLE: Mean values
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#bpI:p7:means@L290-L296
PROOF_SOURCE: blueprint-I/parts/p7-delaunay.tex#bpI:p7:means@L297-L301
CONTRACT_ID: bpI:p7:means
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: (L,G) in C_0, g in R, e=e(L,G), a=L^2, (q,p)=Q(ell,g,L,G) (Delaunay map of Definition orbit-maps), r=¦q¦_2
SOURCE_QUANTIFIERS: (L,G) in C_0 and g in R, then the mean anomaly ell in [0,2pi]
SOURCE_CONCLUSION: (1/2pi) int_0^{2pi} dell/r = 1/a; (1/2pi) int_0^{2pi} ¦p¦_2^2 dell = 1/a (virial); (1/2pi) int_0^{2pi} r dell = a(1+e^2/2)
CONSTANT_SCOPE: none (a=L^2 and e=e(L,G) are determined by (L,G))
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: I:bpI:p7:kepler-eq, I:bpI:p7:orbit-identities, I:bpI:p7:orbit-maps, bpI:p7:x-change, stepI:p7:mv-cv, stepI:p7:mv-int
ROUTES: -
ROUTE_FOR: -
EDGE: I:bpI:p7:kepler-eq | blueprint-I/parts/p7-delaunay.tex#bpI:p7:means@L298-L298 | ell -> u=u_R(ell,e) increasing C^1 with u(0)=0, u(2pi)=2pi and dell=D du (parts (b),(c))
EDGE: I:bpI:p7:orbit-identities | blueprint-I/parts/p7-delaunay.tex#bpI:p7:means@L299-L300 | r=aD (part a) and E=-1/(2a) (part c) used for the three integrals and the virial identity
EDGE: I:bpI:p7:orbit-maps | blueprint-I/parts/p7-delaunay.tex#bpI:p7:means@L291-L291 | the statement and proof use the defined Delaunay orbit map and its quantities
EDGE: bpI:p7:x-change | blueprint-I/parts/p7-delaunay.tex#stepI:p7:mv-cv@L298-L298 | change of variables with the increasing C1 Kepler anomaly map; the proof uses continuous integrands
EDGE: stepI:p7:mv-cv | blueprint-I/parts/p7-delaunay.tex#stepI:p7:mv-cv@L298-L298 | the labelled change-of-variable proof step
EDGE: stepI:p7:mv-int | blueprint-I/parts/p7-delaunay.tex#stepI:p7:mv-int@L300-L300 | the labelled three-integral and virial computation
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: writer-xown-sonnet
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: P-OWNED: I excludes this proposition from its own root closure; P consumes it via circular, stepP:p7:ke-c and scaling. Source remains the I blueprint; not an I import. The P-owned external x-change supplies mv-cv; the labelled proof steps and direct orbit-map definition are explicitly attached. The averages are over one 2pi mean-anomaly period.
```

```text
NODE: bpI:p7:circular
KIND: corollary
TITLE: Circular endpoint
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#bpI:p7:circular@L303-L306
PROOF_SOURCE: blueprint-I/parts/p7-delaunay.tex#bpI:p7:circular@L307-L309
CONTRACT_ID: bpI:p7:circular
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: real arguments L>0, 0<=e<1, k=sqrt(1-e^2), G=Lk, u=u_R(ell,e); Delaunay data as in Definition orbit-maps
SOURCE_QUANTIFIERS: L>0 and 0<=e<1 (including e=0), ell and g real
SOURCE_CONCLUSION: the endpoint formulas (a),(b) of orbit-identities, the scalar identities E=-1/(2L^2) and Gamma=G of its part (c), the mean values of means (with the scaling and mass dictionary of scaling) hold for 0<=e<1, in particular for circular orbits e=0 (u=ell, r=L^2, ¦p¦=1/L, E=-1/(2L^2), Gamma=L); not claimed for e=0: membership in the strictly noncircular region C, the Delaunay-elements definition on C, and the chart statements of Theorem chart (these remain for 0<e<1 only)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: I:bpI:p7:orbit-identities, I:bpI:p7:kepler-eq, bpI:p7:means, bpI:p7:scaling, I:bpI:p7:orbit-maps, stepI:p7:ci-alg
ROUTES: -
ROUTE_FOR: -
EDGE: I:bpI:p7:orbit-identities | blueprint-I/parts/p7-delaunay.tex#bpI:p7:circular@L308-L308 | same algebra as steps oi-r..oi-en with e>=0: endpoint formulas (a),(b) and scalar energy and Gamma identities of (c)
EDGE: I:bpI:p7:kepler-eq | blueprint-I/parts/p7-delaunay.tex#bpI:p7:circular@L308-L308 | u=u_R(ell,e) defined for ¦e¦<1 (part (c))
EDGE: bpI:p7:means | blueprint-I/parts/p7-delaunay.tex#bpI:p7:circular@L308-L308 | steps mv-cv..mv-int use only c^2+s^2=1, k^2=1-e^2, D>=1-e>0, so the mean values hold for e>=0
EDGE: bpI:p7:scaling | blueprint-I/parts/p7-delaunay.tex#bpI:p7:circular@L304-L304 | the scaling and mass dictionary of the statement is stated as holding for 0<=e<1 (proof does not otherwise re-derive it)
EDGE: I:bpI:p7:orbit-maps | blueprint-I/parts/p7-delaunay.tex#bpI:p7:circular@L304-L304 | the endpoint uses Q_el with independent eccentricity and G=L sqrt(1-e^2)
EDGE: stepI:p7:ci-alg | blueprint-I/parts/p7-delaunay.tex#stepI:p7:ci-alg@L308-L308 | the labelled algebraic extension to e=0
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: writer-xown-sonnet
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: P-OWNED: I excludes this corollary from its own root closure; P consumes it at bpP:p7:kepler, stepP:p7:ke-c and stepP:p7:po-el. Source remains the I blueprint. The proof is the single labelled step ci-alg (same algebra, no e>0), explicitly linked below this corollary.
```

Add the following six nodes:

```text
NODE: bpI:p7:x-change
KIND: external
TITLE: Change of variables in R
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#bpI:p7:x-change@L41-L41
PROOF_SOURCE: -
CONTRACT_ID: bpI:p7:x-change
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: u:[a,b] -> R is C1 and increasing; phi is the integrand of the source formula (no regularity class is explicitly specified there)
SOURCE_QUANTIFIERS: real a,b with a<=b; u:[a,b] -> R; phi on u([a,b])
SOURCE_CONCLUSION: int_a^b phi(u(ell)) u_prime(ell) dell = int_{u(a)}^{u(b)} phi
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sol-review-P-p
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: P-OWNED external: excluded by the published I graph because its only consumer means is outside the I root closure; owned by P under the writer ruling. The actual consumer mv-cv uses continuous phi, so the standard change-of-variable theorem applies. The source item leaves integrand regularity implicit; this record does not silently add a source premise.
```

```text
NODE: stepI:p7:mv-cv
KIND: step
TITLE: Change of variable
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:mv-cv@L298-L298
PROOF_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:mv-cv@L298-L298
CONTRACT_ID: stepI:p7:mv-cv
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: (L,G) in C_0, g in R, e=e(L,G), a=L^2, (q,p)=Q(ell,g,L,G), r=¦q¦_2, as in means; no previously derived integral identity is assumed
SOURCE_QUANTIFIERS: (L,G) in C_0; g in R; continuous phi on [0,2pi]
SOURCE_CONCLUSION: ell -> u_R(ell,e) is increasing C1 with endpoints 0,2pi and dell=D du; int_0^{2pi} phi(u(ell)) dell = int_0^{2pi} phi(u) D(u) du, D(u)=1-e cos u
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: I:bpI:p7:kepler-eq, I:bpI:p7:orbit-maps, bpI:p7:x-change
ROUTES: -
ROUTE_FOR: -
EDGE: I:bpI:p7:kepler-eq | blueprint-I/parts/p7-delaunay.tex#stepI:p7:mv-cv@L298-L298 | parts (b),(c) supply the real anomaly diffeomorphism, derivative and endpoints
EDGE: I:bpI:p7:orbit-maps | blueprint-I/parts/p7-delaunay.tex#stepI:p7:mv-cv@L298-L298 | defines u and D used by the orbit parametrization
EDGE: bpI:p7:x-change | blueprint-I/parts/p7-delaunay.tex#stepI:p7:mv-cv@L298-L298 | change of variables for the continuous integrand and increasing C1 inverse anomaly
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sol-review-P-p
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepI:p7:mv-int
KIND: step
TITLE: Integrals
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:mv-int@L300-L300
PROOF_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:mv-int@L300-L300
CONTRACT_ID: stepI:p7:mv-int
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: (L,G) in C_0, g in R, e=e(L,G), a=L^2, (q,p)=Q(ell,g,L,G), r=¦q¦_2, as in means; no previously derived integral identity is assumed
SOURCE_QUANTIFIERS: (L,G) in C_0; g in R
SOURCE_CONCLUSION: the normalized means of 1/r, ¦p¦_2^2 and r are 1/a, 1/a and a(1+e^2/2), respectively
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepI:p7:mv-cv, I:bpI:p7:orbit-identities, I:bpI:p7:orbit-maps
ROUTES: -
ROUTE_FOR: -
EDGE: stepI:p7:mv-cv | blueprint-I/parts/p7-delaunay.tex#stepI:p7:mv-int@L300-L300 | replace dell by D du in the continuous integrals
EDGE: I:bpI:p7:orbit-identities | blueprint-I/parts/p7-delaunay.tex#stepI:p7:mv-int@L300-L300 | r=aD and E=-1/(2a) supply the radius and virial calculation
EDGE: I:bpI:p7:orbit-maps | blueprint-I/parts/p7-delaunay.tex#stepI:p7:mv-int@L300-L300 | the orbit quantities q,p,r,a,e are the defined ones
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sol-review-P-p
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepI:p7:ci-alg
KIND: step
TITLE: Same algebra
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:ci-alg@L308-L308
PROOF_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:ci-alg@L308-L308
CONTRACT_ID: stepI:p7:ci-alg
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: real L>0, 0<=e<1, k=sqrt(1-e^2), G=Lk; ell,g real; q,p are the explicit orbit formulas with u=u_R(ell,e)
SOURCE_QUANTIFIERS: L>0; 0<=e<1; ell,g in R
SOURCE_CONCLUSION: the radius, momentum, scalar energy and angular-momentum formulas and the three means extend to e=0; at e=0 u=ell, r=L^2, ¦p¦_2=1/L, E=-1/(2L^2), Gamma=L; no membership in C or chart bijectivity at e=0 is asserted
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: I:bpI:p7:orbit-maps, I:bpI:p7:orbit-identities, I:bpI:p7:kepler-eq, stepI:p7:mv-cv, stepI:p7:mv-int
ROUTES: -
ROUTE_FOR: -
EDGE: I:bpI:p7:orbit-maps | blueprint-I/parts/p7-delaunay.tex#stepI:p7:ci-alg@L308-L308 | the explicit Q_el formulas admit independent e=0
EDGE: I:bpI:p7:orbit-identities | blueprint-I/parts/p7-delaunay.tex#stepI:p7:ci-alg@L308-L308 | reuse the computations of oi-r through oi-en, which require D>0 but not e>0; do not apply the C-membership conclusion at e=0
EDGE: I:bpI:p7:kepler-eq | blueprint-I/parts/p7-delaunay.tex#stepI:p7:ci-alg@L308-L308 | real anomaly exists for ¦e¦<1 and u(ell,0)=ell
EDGE: stepI:p7:mv-cv | blueprint-I/parts/p7-delaunay.tex#stepI:p7:ci-alg@L308-L308 | reuse the change-of-variable computation, whose derivative and endpoint conditions still hold at e=0
EDGE: stepI:p7:mv-int | blueprint-I/parts/p7-delaunay.tex#stepI:p7:ci-alg@L308-L308 | reuse the integral and scalar virial computations with D=1
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sol-review-P-p
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: The dependencies on proof computations record the source-explicit reuse of algebra, not application of a strictly noncircular statement at e=0.
```

```text
NODE: stepI:p7:sc-alg
KIND: step
TITLE: Algebra
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:sc-alg@L320-L320
PROOF_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:sc-alg@L320-L320
CONTRACT_ID: stepI:p7:sc-alg
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: k>0; E_k(q,p)=¦p¦_2^2/2-k/¦q¦_2 on q!=0; S_k(Q,P)=(Q/k,kP); J is the standard positions-first symplectic matrix
SOURCE_QUANTIFIERS: k>0; Q,P in R^2 with Q!=0
SOURCE_CONCLUSION: E_k(S_k(Q,P))=k^2 E_1(Q,P); DS_k=diag(k^-1,k^-1,k,k) and DS_k^T J DS_k=J
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sol-review-P-p
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: The conversion(a) citation is an as-in pointer to the same block multiplication for a different matrix, not an application of that specialized result.
```

```text
NODE: stepI:p7:sc-flow
KIND: step
TITLE: Flow and averages
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:sc-flow@L321-L321
PROOF_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:sc-flow@L321-L321
CONTRACT_ID: stepI:p7:sc-flow
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: k>0; E_k and S_k as in scaling; for the flow assertion (Q,P)(tau) solves Hamilton equations of E_1 on the collision-free domain; for the averages a is the semi-major axis of the bound Kepler orbit, with mean-anomaly averages as in means
SOURCE_QUANTIFIERS: k>0; an E_1 solution on its time interval; for the averages a bound Kepler orbit
SOURCE_CONCLUSION: DS_k X_{E_k o S_k}=X_{E_k} o S_k and k^2 DS_k X_{E_1}=X_{E_k} o S_k; t -> S_k(Q,P)(k^2 t) solves E_k; a_k=a/k, <1/¦q¦_2>=1/a_k, <¦p¦_2^2>=k/a_k, E_k=-k/(2a_k)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepI:p7:sc-alg, bpI:p7:means
ROUTES: -
ROUTE_FOR: -
EDGE: stepI:p7:sc-alg | blueprint-I/parts/p7-delaunay.tex#stepI:p7:sc-flow@L321-L321 | energy rescaling and the symplectic matrix identity supply the local field calculation
EDGE: bpI:p7:means | blueprint-I/parts/p7-delaunay.tex#stepI:p7:sc-flow@L321-L321 | unit-strength mean values give the scaled averages
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sol-review-P-p
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: The sy-field citation is an as-in pointer: the source repeats naturality and the curve chain rule for the linear S_k. It does not apply the Q-specific Delaunay-field theorem.
```

Add the corresponding coverage items (the existing four items need no replacement):

```text
ITEM: bpI:p7:x-change
KIND: external
SOURCE: blueprint-I/parts/p7-delaunay.tex#bpI:p7:x-change@L41-L41
DISPOSITION: NODE bpI:p7:x-change
REASON: P-owned external consumed by means under the writer ruling; excluded from the published I root closure
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sol-review-P-p
REVIEWER: -
```

```text
ITEM: stepI:p7:mv-cv
KIND: proof-region
SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:mv-cv@L298-L298
DISPOSITION: NODE stepI:p7:mv-cv
REASON: P-owned labelled proof step of a cross-owned result consumed by track P; excluded from the published I root closure
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sol-review-P-p
REVIEWER: -
```

```text
ITEM: stepI:p7:mv-int
KIND: proof-region
SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:mv-int@L300-L300
DISPOSITION: NODE stepI:p7:mv-int
REASON: P-owned labelled proof step of a cross-owned result consumed by track P; excluded from the published I root closure
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sol-review-P-p
REVIEWER: -
```

```text
ITEM: stepI:p7:ci-alg
KIND: proof-region
SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:ci-alg@L308-L308
DISPOSITION: NODE stepI:p7:ci-alg
REASON: P-owned labelled proof step of a cross-owned result consumed by track P; excluded from the published I root closure
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sol-review-P-p
REVIEWER: -
```

```text
ITEM: stepI:p7:sc-alg
KIND: proof-region
SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:sc-alg@L320-L320
DISPOSITION: NODE stepI:p7:sc-alg
REASON: P-owned labelled proof step of a cross-owned result consumed by track P; excluded from the published I root closure
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sol-review-P-p
REVIEWER: -
```

```text
ITEM: stepI:p7:sc-flow
KIND: proof-region
SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:sc-flow@L321-L321
DISPOSITION: NODE stepI:p7:sc-flow
REASON: P-owned labelled proof step of a cross-owned result consumed by track P; excluded from the published I root closure
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sol-review-P-p
REVIEWER: -
```

For clarity, the specifically requested means edge (also included in the complete replacement above) is:

```text
EDGE: bpI:p7:x-change | blueprint-I/parts/p7-delaunay.tex#stepI:p7:mv-cv@L298-L298 | change of variables with the increasing C1 Kepler anomaly map; the proof uses continuous integrands
```

## For slice P-p6

The retargeted `bpP:p6:kepler-part -> bpI:p7:scaling` edge **PASSes**. The consumer at P Part 6:72 uses the mass dictionary with k=Gm0 and mass m_i. Its data package supplies the positive physical parameters, and the summand retains the planet mass rather than the reduced mass. No replacement is required for this ownership retargeting.

## For slice P-p7

All four retargeted consumer records **PASS for the ownership change**:

| Consumer | Target(s) | Source use |
| --- | --- | --- |
| stepP:p7:rg-scale | bpI:p7:scaling | P p7:64: mass/strength dictionary. |
| bpP:p7:kepler | bpI:p7:circular | P p7:76: endpoint C=Lambda in clause (c). |
| stepP:p7:ke-c | bpI:p7:means, bpI:p7:circular | P p7:88: noncircular and circular means, then physical mass/strength scaling. |
| stepP:p7:po-el | bpI:p7:circular | P p7:158: only scalar circular identities, not noncircular chart bijectivity. |

The applicable case split is C<Lambda versus C=Lambda, with L=Lambda/m>0 and e=sqrt(1-C^2/Lambda^2) in [0,1). The parent/step records attach the P Kepler data and convention packages. The e=0 claims are supplied by circular, not by applying the strictly noncircular orbit-identities statement outside its domain. No ownership-retargeting replacement is required here; this is not a new full review of unrelated P-p6/P-p7 records.

## Checks and limitations

- `inp_depgraph_slice_check.py docs/graph/P/packets P-xown --structural`: exit 0, `4 nodes, 11 edges, 4 coverage items, 0 problems`. This checks the current packet syntax and cannot detect omitted proof inventory or missing mathematical uses.
- `sha256sum -c docs/graph/P/CORPUS.sha256`: all eighteen entries OK, including cross-owned N Part 6 and I Part 7.
- The proposed records have complete fields, one EDGE per dependency, existing or explicitly proposed targets, and no internal dependency cycle. No external is assigned an I import prefix, and no frozen identity is introduced.
- Report whitespace, code fences and proposal structural checks: passed.

## Suspected blueprint defects

No new mathematical defect identified. The external at I Part 7:41 states “If u:[a,b] -> R is C1, increasing” and the integral identity without specifying a regularity class for phi. This is an underspecified external interface, not a failure of mv-cv: line 298 explicitly uses continuous phi, and all subsequent integrands are continuous because D>=1-e>0. The proposed external preserves that source omission explicitly rather than adding a premise silently. A future exact formal external statement must specify the integrability/regularity class. No pinned source or frozen statement was edited.

No state-changing git or Lean command was run. Repository-wide Lean linting and builds are excluded by the source-only review brief; this report introduces no Lean module.
