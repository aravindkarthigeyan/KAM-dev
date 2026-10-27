# K-p3 independent topology review

Reviewer: sol-review-r3. Verdict: **FAIL**.

Reviewed every one of the 44 node records and every coverage record against the raw source. Source scope: `blueprint/parts/p3-uniqueness.tex` L1-L608. Also re-read the cited Part 0 contracts, Part 1 result statements and proofs, and Part 2 results used by these slices. All five corpus hashes pass `sha256sum -c docs/graph/K/CORPUS.sha256`. Frozen definitions and the G1/G2 declarations were used only for contract comparison; the manifest was consulted for identity fields. No implementation or provider module was read, and no Lean command or state-changing git command was run.

PASS below is a local source-record/topology verdict, not a proof-status claim. Parent results retain their own verdict even where a child record needs repair. For proof steps, SOURCE_HYPOTHESES is read as inherited source context plus explicitly established earlier facts, not as new theorem premises. No alternative proof route was found in either assigned slice.

## Node table

| Node | Verdict | Source spans re-read | Finding |
|---|---|---|---|
| `bp:p3:standing` | FAIL | L55-L72 ; definition ; setting L74-L93 | Two existing EDGE locators (L85 and L87) are outside the declared L55-L72 source span. The unlabelled setting L74-L93 supplies notation and the explicit bridge to Part 2 but has no coverage entry; include it and record that bridge. |
| `bp:p3:matrix-norms` | PASS | L124-L131 ; proof L133-L140 | Statement fields, direct uses and locators agree with the source. |
| `step:p3:norms-frame` | PASS | L134-L139 ; proof L134-L139 | Statement fields, direct uses and locators agree with the source. |
| `bp:p3:lagrangian` | PASS | L149-L151 ; proof L153-L171 | Statement fields, direct uses and locators agree with the source. |
| `step:p3:lagrangian-transport` | PASS | L154-L158 ; proof L154-L158 | Statement fields, direct uses and locators agree with the source. |
| `step:p3:lagrangian-unique` | PASS | L160-L170 ; proof L160-L170 | Statement fields, direct uses and locators agree with the source. |
| `bp:p3:frequency-bound` | PASS | L176-L178 ; proof L180-L191 | Statement fields, direct uses and locators agree with the source. |
| `step:p3:frequency-omega` | PASS | L181-L186 ; proof L181-L186 | Statement fields, direct uses and locators agree with the source. |
| `step:p3:frequency-gamma` | PASS | L188-L190 ; proof L188-L190 | Statement fields, direct uses and locators agree with the source. |
| `bp:p3:reducibility` | PASS | L193-L203 ; proof L205-L234 | Statement fields, direct uses and locators agree with the source. |
| `step:p3:red-holomorphy` | PASS | L206-L210 ; proof L206-L210 | Statement fields, direct uses and locators agree with the source. |
| `step:p3:red-frame` | PASS | L212-L220 ; proof L212-L220 | Statement fields, direct uses and locators agree with the source. |
| `step:p3:red-tangent` | PASS | L222-L224 ; proof L222-L224 | Statement fields, direct uses and locators agree with the source. |
| `step:p3:red-normal` | PASS | L226-L229 ; proof L226-L229 | Statement fields, direct uses and locators agree with the source. |
| `step:p3:red-assembly` | PASS | L231-L233 ; proof L231-L233 | Statement fields, direct uses and locators agree with the source. |
| `bp:p3:torsion-bound` | PASS | L241-L245 ; proof L247-L268 | Statement fields, direct uses and locators agree with the source. |
| `step:p3:torsion-holomorphy` | FAIL | L248-L252 ; proof L248-L252 | The implicit inference that partial_omega N is holomorphic uses derivative regularity; reducibility supplies holomorphy of N but not of its derivative. |
| `step:p3:torsion-bound-step` | PASS | L254-L267 ; proof L254-L267 | Statement fields, direct uses and locators agree with the source. |
| `bp:p3:phase` | PASS | L279-L288 ; proof L290-L342 | Statement fields, direct uses and locators agree with the source. |
| `step:p3:phase-real` | PASS | L294-L300 ; proof L294-L300 | Statement fields, direct uses and locators agree with the source. |
| `step:p3:phase-fixed-point` | FAIL | L302-L312 ; proof L302-L312 | Phi is declared R^n-valued at L308 using the real averages established in phase-real. The empty dependency list misses this direct construction premise. |
| `step:p3:phase-derivatives` | PASS | L314-L320 ; proof L314-L320 | Statement fields, direct uses and locators agree with the source. |
| `step:p3:phase-contraction` | FAIL | L322-L337 ; proof L322-L337 | The phase-real edge at L335 points to a norm estimate, not a use of realness; realness belongs to the earlier construction of Phi. Conversely, the displayed integral identity and integral norm estimates use E6 directly without an edge. |
| `step:p3:phase-conclusion` | PASS | L339-L341 ; proof L339-L341 | Statement fields, direct uses and locators agree with the source. |
| `bp:p3:difference-equation` | FAIL | L359-L373 ; proof L375-L406 ; construction L350-L353 | The named Delta construction at L350-L353 is used in the statement and lacks coverage; extend the statement span to include that construction. |
| `step:p3:diff-regularity` | FAIL | L376-L384 ; proof L376-L384 | The construction of the holomorphic remainder R uses holomorphy of X_h and DX_h in addition to holomorphy of the tori and inverse frame. |
| `step:p3:diff-linearized` | PASS | L386-L391 ; proof L386-L391 | Statement fields, direct uses and locators agree with the source. |
| `step:p3:diff-triangular` | FAIL | L393-L397 ; proof L393-L397 | The insertion Delta=P xi at L394 directly uses diff-regularity(a); the existing edges provide the differential equation and reducibility but omit this change of coordinates. |
| `step:p3:diff-bounds` | FAIL | L399-L405 ; proof L399-L405 | The matrix-norms lemma bounds the displayed stacked matrix, not P^{-1} by name. Identifying it with P^{-1} at L400 uses exact reducibility directly. |
| `bp:p3:quadratic` | PASS | L415-L425 ; proof L427-L500 | Statement fields, direct uses and locators agree with the source. |
| `step:p3:quad-remainder` | PASS | L435-L436 ; proof L435-L436 | Statement fields, direct uses and locators agree with the source. |
| `step:p3:quad-normal-osc` | PASS | L438-L448 ; proof L438-L448 | difference-equation supplies holomorphy of q and xi, and the directional-derivative identity supplies periodicity; the averages and cohomological calls have their required premises. |
| `step:p3:quad-normal-avg` | PASS | L450-L461 ; proof L450-L461 | Statement fields, direct uses and locators agree with the source. |
| `step:p3:quad-normal` | PASS | L463-L468 ; proof L463-L468 | Statement fields, direct uses and locators agree with the source. |
| `step:p3:quad-tangent` | PASS | L470-L486 ; proof L470-L486 | Statement fields, direct uses and locators agree with the source. |
| `step:p3:quad-combine` | PASS | L488-L499 ; proof L488-L499 | Statement fields, direct uses and locators agree with the source. |
| `step:p3:g2-constant` | PASS | L513-L524 ; proof L513-L524 | Statement fields, direct uses and locators agree with the source. |
| `step:p3:g2-smallness` | PASS | L526-L533 ; proof L526-L533 | Statement fields, direct uses and locators agree with the source. |
| `step:p3:g2-phase` | PASS | L535-L538 ; proof L535-L538 | Statement fields, direct uses and locators agree with the source. |
| `step:p3:g2-size` | PASS | L540-L547 ; proof L540-L547 | Statement fields, direct uses and locators agree with the source. |
| `step:p3:g2-iteration` | PASS | L549-L563 ; proof L549-L563 | Statement fields, direct uses and locators agree with the source. |
| `step:p3:g2-conclusion` | PASS | L565-L567 ; proof L565-L567 | Statement fields, direct uses and locators agree with the source. |
| `bp:p3:standing#constants` | FAIL | L95-L117 ; proof L95-L117 | SOURCE_HYPOTHESES adds (S1)-(S4) as data hypotheses to constants explicitly chosen before any data at L95-L96. This changes the source contract and would make even S3-only frame bounds depend on an unnecessary second torus. |
| `bp:p3:quadratic#absorb` | PASS | L428-L433 ; proof L428-L433 | Statement fields, direct uses and locators agree with the source. |

## Coverage failures

The following inventory entries are missing; the rows specify their required disposition. All other coverage items PASS. Existing exclusions for provenance, headings and administrative remarks are valid.

| Coverage item | Verdict | Source | Finding |
|---|---|---|---|
| `p3:setting-notation` | FAIL | L74-L93 | Missing inventory item: explicit supply of the Part 2 package and the attached-object notation; included in the corrected standing source span. |
| `eq:p3:Cquad` | FAIL | L105-L112 | Missing named display: definitions of C^N, C^L and C_quad belong to the constants construction. |
| `eq:p3:phase-small` | FAIL | L281-L283 | Missing named display: smallness hypothesis of phase normalization. |
| `eq:p3:Delta` | FAIL | L350-L353 | Missing named display: construction of Delta used in the difference equation; include it in that node source span. |
| `eq:p3:c` | FAIL | L515-L518 | Missing named display: threshold construction in the G2 constant step. |

## Replacement fragments

Each node block below replaces the same node block in the packet in full; unchanged metadata is retained. These are proposed graph repairs, not edits to source mathematics. Each coverage block is an addition.

### `bp:p3:standing`

Two existing EDGE locators (L85 and L87) are outside the declared L55-L72 source span. The unlabelled setting L74-L93 supplies notation and the explicit bridge to Part 2 but has no coverage entry; include it and record that bridge.

```text
NODE: bp:p3:standing
KIND: definition
TITLE: Two invariant tori
STATEMENT_SOURCE: blueprint/parts/p3-uniqueness.tex#bp:p3:standing@L55-L93
PROOF_SOURCE: -
CONTRACT_ID: bp:p3:standing
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: none beyond the typing data: B, h, K_1, K_2, omega, gamma; (S1) B open, invariant under integer shifts of theta, h holomorphic on B, 1-periodic in theta, real at real points of B, and |Dh|,|X_h|,|DX_h|,|D^2X_h|<=M on B; (S2) gamma>0, omega in Dio_{gamma,tau}; (S3) K_1 holomorphic, primary, real on reals on T_rho, ball of radius mu around K_1(theta) in B, |DK_1|<=sigma_K-mu, L^T L invertible, |B|<=sigma_B-mu, avg T invertible with |avg T^{-1}|<=sigma_T-mu, E_1=0 on T_rho; (S4) K_2 holomorphic, primary, real on reals on T_rho, K_2(T_rho) in B, E_2=0 on T_rho
SOURCE_QUANTIFIERS: n>=2, tau>=n-1, rho>0, M,sigma_K,sigma_B,sigma_T,mu>0 fixed; then data B,h,K_1,K_2,omega,gamma; theta ranges over T_rho in (S3)
SOURCE_CONCLUSION: defines the hypothesis package (S1)-(S4): the hypotheses of G2 without the closeness hypothesis (S1-S2 contain bp:p2:standing)
CONSTANT_SCOPE: M,sigma_K,sigma_B,sigma_T,mu are fixed constants of the part, independent of gamma; no derived constants here
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p0:diophantine#IsDiophantine, bp:p0:stripdata#IsPrimaryOnStrip, bp:p0:stripdata#IsRealOnReals, bp:p0:stripdata#invarianceError, bp:p0:stripdata#gramMatrix, bp:p0:stripdata#normalFrame, bp:p0:stripdata#torsion, bp:p0:stripdata#torsionAverage, bp:p2:standing, bp:p2:objects
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p0:diophantine#IsDiophantine | blueprint/parts/p3-uniqueness.tex#bp:p3:standing@L63-L63 | (S2) omega in Dio_{gamma,tau}
EDGE: bp:p0:stripdata#IsPrimaryOnStrip | blueprint/parts/p3-uniqueness.tex#bp:p3:standing@L64-L64 | (S3),(S4) primary on T_rho
EDGE: bp:p0:stripdata#IsRealOnReals | blueprint/parts/p3-uniqueness.tex#bp:p3:standing@L64-L64 | (S3),(S4) real on reals
EDGE: bp:p0:stripdata#invarianceError | blueprint/parts/p3-uniqueness.tex#bp:p3:standing@L68-L68 | E_i = X_h(K_i) - DK_i omega
EDGE: bp:p0:stripdata#gramMatrix | blueprint/parts/p3-uniqueness.tex#bp:p3:standing@L66-L66 | Gram matrix L^T L
EDGE: bp:p0:stripdata#normalFrame | blueprint/parts/p3-uniqueness.tex#bp:p3:standing@L85-L85 | N, P of the frame, B = (L^T L)^{-1}
EDGE: bp:p0:stripdata#torsion | blueprint/parts/p3-uniqueness.tex#bp:p3:standing@L87-L87 | torsion T = N^T Omega_0 X_N
EDGE: bp:p0:stripdata#torsionAverage | blueprint/parts/p3-uniqueness.tex#bp:p3:standing@L87-L87 | avg T used in (S3)
EDGE: bp:p2:standing | blueprint/parts/p3-uniqueness.tex#bp:p3:standing@L74-L77 | S1-S2 supply the Part 2 standing package with the same n,tau,M,sigma parameters; S3 supplies the additional torus premises when a Part 2 result is applied
EDGE: bp:p2:objects | blueprint/parts/p3-uniqueness.tex#bp:p3:standing@L77-L88 | the frame, torsion and error notation are specialized from the objects of Part 2 at K=K_1
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: standing hypotheses of Part 3, a local package (SPEC): (S1)-(S4)
```

### `bp:p3:standing#constants`

SOURCE_HYPOTHESES adds (S1)-(S4) as data hypotheses to constants explicitly chosen before any data at L95-L96. This changes the source contract and would make even S3-only frame bounds depend on an unnecessary second torus.

```text
NODE: bp:p3:standing#constants
KIND: step
TITLE: Constants of Part 3
STATEMENT_SOURCE: blueprint/parts/p3-uniqueness.tex#bp:p3:standing#constants@L95-L117
PROOF_SOURCE: blueprint/parts/p3-uniqueness.tex#bp:p3:standing#constants@L95-L117
CONTRACT_ID: bp:p3:standing#constants
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: n>=2, tau>=n-1, rho>0, M,sigma_K,sigma_B,sigma_T>0; c(n,tau) is the constant of bp:p1:cohomological; no B,h,K_1,K_2,omega,gamma or package (S1)-(S4) is assumed
SOURCE_QUANTIFIERS: n,tau,rho,M,sigma_K,sigma_B,sigma_T fixed before any data; then C_P, Gamma, C_tor, C_coh, C^N, C^L, C_quad
SOURCE_CONCLUSION: defines C_P=2n sigma_K(1+sigma_B), Gamma=C_P M, C_tor=C_P^2 M(1+4n C_P/rho), C_coh=c(n,tau), C^N=(1/2)C_P M[(1+sigma_T C_tor)C_coh+sigma_T Gamma rho^{tau+n}], C^L=C_coh[C_tor C^N+(1/2)C_P M Gamma rho^{tau+n}], C_quad=C_P max{C^L,Gamma rho^{tau+n} C^N}; forward descriptions at L113-L117 add no dependencies
CONSTANT_SCOPE: all constants depend only on n,tau,rho,M,sigma_K,sigma_B,sigma_T (C_coh only on n,tau; C_P only on n,sigma_K,sigma_B); not on gamma, mu or the data
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:cohomological
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:cohomological | blueprint/parts/p3-uniqueness.tex#bp:p3:standing#constants@L104-L104 | C_coh is the constant c(n,tau) of that lemma
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: ADDED step: the constants paragraph of the setting (L95-117) is a construction reused throughout; not a labelled environment
```

### `step:p3:phase-fixed-point`

Phi is declared R^n-valued at L308 using the real averages established in phase-real. The empty dependency list misses this direct construction premise.

```text
NODE: step:p3:phase-fixed-point
KIND: step
TITLE: Fixed-point form
STATEMENT_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:phase-fixed-point@L302-L312
PROOF_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:phase-fixed-point@L302-L312
CONTRACT_ID: step:p3:phase-fixed-point
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: BL^T L=I; W=K_2-K_1
SOURCE_QUANTIFIERS: theta,psi in R^n
SOURCE_CONCLUSION: normalization holds iff Phi(psi)=psi for Phi(psi)=-avg(BL^T(W(.+psi)+K_1(.+psi)-K_1-L psi))
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p3:phase-real
ROUTES: -
ROUTE_FOR: -
EDGE: step:p3:phase-real | blueprint/parts/p3-uniqueness.tex#step:p3:phase-fixed-point@L308-L310 | the two averaged integrands are real, so Phi is a map R^n to R^n
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### `step:p3:phase-contraction`

The phase-real edge at L335 points to a norm estimate, not a use of realness; realness belongs to the earlier construction of Phi. Conversely, the displayed integral identity and integral norm estimates use E6 directly without an edge.

```text
NODE: step:p3:phase-contraction
KIND: step
TITLE: Contraction
STATEMENT_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:phase-contraction@L322-L337
PROOF_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:phase-contraction@L322-L337
CONTRACT_ID: step:p3:phase-contraction
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: derivative bounds on the real torus; |BL^T|<=C_P; eta<=rho/(4nC_P(1+2C_P sigma_K)); Y={|psi|<=2C_P eta}
SOURCE_QUANTIFIERS: psi,psi' in Y
SOURCE_CONCLUSION: Phi maps Y into Y and is a contraction with constant 1/2
CONSTANT_SCOPE: C_P as in the setting
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p3:phase-derivatives, step:p3:phase-fixed-point, bp:p3:matrix-norms, bp:p1:ext-integral
ROUTES: -
ROUTE_FOR: -
EDGE: step:p3:phase-derivatives | blueprint/parts/p3-uniqueness.tex#step:p3:phase-contraction@L328-L328 | Lipschitz bounds on W and L
EDGE: step:p3:phase-fixed-point | blueprint/parts/p3-uniqueness.tex#step:p3:phase-contraction@L332-L332 | definition of Phi
EDGE: bp:p3:matrix-norms | blueprint/parts/p3-uniqueness.tex#step:p3:phase-contraction@L330-L330 | abs BL^Tabs <=C_P
EDGE: bp:p1:ext-integral | blueprint/parts/p3-uniqueness.tex#step:p3:phase-contraction@L325-L336 | fundamental theorem of calculus along the real segment and norm-of-integral bounds for the segment integral and the averages
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### `step:p3:torsion-holomorphy`

The implicit inference that partial_omega N is holomorphic uses derivative regularity; reducibility supplies holomorphy of N but not of its derivative.

```text
NODE: step:p3:torsion-holomorphy
KIND: step
TITLE: Holomorphy
STATEMENT_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:torsion-holomorphy@L248-L252
PROOF_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:torsion-holomorphy@L248-L252
CONTRACT_ID: step:p3:torsion-holomorphy
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: N holomorphic on T_rho; K_1(T_rho) in B; DX_h holomorphic on B
SOURCE_QUANTIFIERS: on T_rho
SOURCE_CONCLUSION: X_N and T=BL^T X_N are holomorphic, hence continuous on R^n
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p3:reducibility, bp:p2:hamiltonian, bp:p1:holomorphic-regularity
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p3:reducibility | blueprint/parts/p3-uniqueness.tex#step:p3:torsion-holomorphy@L249-L249 | N holomorphic; T=BL^T X_N
EDGE: bp:p2:hamiltonian | blueprint/parts/p3-uniqueness.tex#step:p3:torsion-holomorphy@L251-L251 | (a): DX_h holomorphic on B
EDGE: bp:p1:holomorphic-regularity | blueprint/parts/p3-uniqueness.tex#step:p3:torsion-holomorphy@L249-L251 | derivatives of N and X_h are holomorphic on the relevant open domains
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### `step:p3:diff-regularity`

The construction of the holomorphic remainder R uses holomorphy of X_h and DX_h in addition to holomorphy of the tori and inverse frame.

```text
NODE: step:p3:diff-regularity
KIND: step
TITLE: Regularity and periodicity
STATEMENT_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:diff-regularity@L376-L384
PROOF_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:diff-regularity@L376-L384
CONTRACT_ID: step:p3:diff-regularity
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: K_1,K_2 holomorphic and primary; ball of radius mu around K_1(theta) in B; ||Delta||_rho<mu; P^{-1} formula
SOURCE_QUANTIFIERS: theta in T_rho
SOURCE_CONCLUSION: Delta,xi,q holomorphic; Delta,xi 1-periodic; Delta=P xi
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p3:reducibility, bp:p2:periodicity, bp:p2:hamiltonian, bp:p1:holomorphic-regularity
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p3:reducibility | blueprint/parts/p3-uniqueness.tex#step:p3:diff-regularity@L382-L382 | P^{-1} holomorphic, explicit formula
EDGE: bp:p2:periodicity | blueprint/parts/p3-uniqueness.tex#step:p3:diff-regularity@L384-L384 | L is 1-periodic
EDGE: bp:p2:hamiltonian | blueprint/parts/p3-uniqueness.tex#step:p3:diff-regularity@L378-L380 | S1-S2 supply the Part 2 standing package; X_h is holomorphic on B and the ball inclusion puts the composed arguments there
EDGE: bp:p1:holomorphic-regularity | blueprint/parts/p3-uniqueness.tex#step:p3:diff-regularity@L380-L380 | DX_h is holomorphic because X_h is holomorphic on the open domain, so the remainder R is holomorphic
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### `step:p3:diff-triangular`

The insertion Delta=P xi at L394 directly uses diff-regularity(a); the existing edges provide the differential equation and reducibility but omit this change of coordinates.

```text
NODE: step:p3:diff-triangular
KIND: step
TITLE: Triangular system
STATEMENT_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:diff-triangular@L393-L397
PROOF_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:diff-triangular@L393-L397
CONTRACT_ID: step:p3:diff-triangular
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: d_omega Delta=DX_h(K_1)Delta+R; DX_h(K_1)P-d_omega P=P Lambda
SOURCE_QUANTIFIERS: on T_rho
SOURCE_CONCLUSION: d_omega xi=Lambda xi+q, i.e. part (b)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p3:reducibility, step:p3:diff-linearized, step:p3:diff-regularity
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p3:reducibility | blueprint/parts/p3-uniqueness.tex#step:p3:diff-triangular@L395-L395 | triangular reduction identity
EDGE: step:p3:diff-linearized | blueprint/parts/p3-uniqueness.tex#step:p3:diff-triangular@L394-L394 | linearized equation for Delta
EDGE: step:p3:diff-regularity | blueprint/parts/p3-uniqueness.tex#step:p3:diff-triangular@L394-L394 | the established identity Delta=P xi permits substitution into the differential equation
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### `step:p3:diff-bounds`

The matrix-norms lemma bounds the displayed stacked matrix, not P^{-1} by name. Identifying it with P^{-1} at L400 uses exact reducibility directly.

```text
NODE: step:p3:diff-bounds
KIND: step
TITLE: Bounds
STATEMENT_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:diff-bounds@L399-L405
PROOF_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:diff-bounds@L399-L405
CONTRACT_ID: step:p3:diff-bounds
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: |P^{-1}|,|P|<=C_P; X_h holomorphic on B with |D^2X_h|<=M; segment K_1(theta)+tDelta in B
SOURCE_QUANTIFIERS: theta in T_rho
SOURCE_CONCLUSION: |xi|<=C_P|Delta|, |Delta|<=C_P|xi|, |R|<=(1/2)M|Delta|^2, |q|<=(1/2)C_P M|Delta|^2
CONSTANT_SCOPE: C_P as in the setting
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p3:matrix-norms, bp:p1:taylor, bp:p2:hamiltonian, step:p3:diff-regularity, bp:p1:holomorphic-regularity, bp:p3:reducibility
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p3:matrix-norms | blueprint/parts/p3-uniqueness.tex#step:p3:diff-bounds@L401-L401 | abs Pabs ,abs P^{-1}abs <=C_P
EDGE: bp:p1:taylor | blueprint/parts/p3-uniqueness.tex#step:p3:diff-bounds@L401-L401 | second-order Taylor bound on R
EDGE: bp:p2:hamiltonian | blueprint/parts/p3-uniqueness.tex#step:p3:diff-bounds@L402-L402 | (a): X_h holomorphic on B
EDGE: step:p3:diff-regularity | blueprint/parts/p3-uniqueness.tex#step:p3:diff-bounds@L403-L403 | segment lies in B
EDGE: bp:p1:holomorphic-regularity | blueprint/parts/p3-uniqueness.tex#step:p3:diff-bounds@L405-L405 | abs D^2X_habs =abs D(DX_h)abs
EDGE: bp:p3:reducibility | blueprint/parts/p3-uniqueness.tex#step:p3:diff-bounds@L400-L401 | P^{-1}=(BL^T;-L^T Omega_0), so the stacked-matrix bound of matrix-norms applies to P^{-1}
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### `bp:p3:difference-equation`

The named Delta construction at L350-L353 is used in the statement and lacks coverage; extend the statement span to include that construction.

```text
NODE: bp:p3:difference-equation
KIND: lemma
TITLE: The difference in the frame
STATEMENT_SOURCE: blueprint/parts/p3-uniqueness.tex#bp:p3:difference-equation@L350-L373
PROOF_SOURCE: blueprint/parts/p3-uniqueness.tex#bp:p3:difference-equation@L375-L406
CONTRACT_ID: bp:p3:difference-equation
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: (S1)-(S4); psi in R^n; Delta=K_2(.+psi)-K_1 with ||Delta||_rho<mu
SOURCE_QUANTIFIERS: R, xi=P^{-1}Delta, q=P^{-1}R defined on T_rho
SOURCE_CONCLUSION: (a) Delta,xi,q holomorphic; Delta,xi 1-periodic; Delta=P xi; (b) d_omega xi^L=T xi^N+q^L, d_omega xi^N=q^N; (c) |xi|<=C_P|Delta|, |Delta|<=C_P|xi|, |q|<=(1/2)C_P M|Delta|^2
CONSTANT_SCOPE: C_P depends only on n,sigma_K,sigma_B
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p3:standing, bp:p3:standing#constants, step:p3:diff-regularity, step:p3:diff-linearized, step:p3:diff-triangular, step:p3:diff-bounds
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p3:standing | blueprint/parts/p3-uniqueness.tex#bp:p3:difference-equation@L360-L360 | assumes (S1)-(S4)
EDGE: bp:p3:standing#constants | blueprint/parts/p3-uniqueness.tex#bp:p3:difference-equation@L371-L371 | C_P
EDGE: step:p3:diff-regularity | blueprint/parts/p3-uniqueness.tex#bp:p3:difference-equation@L376-L376 | proof step
EDGE: step:p3:diff-linearized | blueprint/parts/p3-uniqueness.tex#bp:p3:difference-equation@L386-L386 | proof step
EDGE: step:p3:diff-triangular | blueprint/parts/p3-uniqueness.tex#bp:p3:difference-equation@L393-L393 | proof step
EDGE: step:p3:diff-bounds | blueprint/parts/p3-uniqueness.tex#bp:p3:difference-equation@L399-L399 | proof step
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### Coverage `p3:setting-notation`

```text
ITEM: p3:setting-notation
KIND: definition
SOURCE: blueprint/parts/p3-uniqueness.tex#p3:setting-notation@L74-L93
DISPOSITION: NODE bp:p3:standing
REASON: Missing inventory item: explicit supply of the Part 2 package and the attached-object notation; included in the corrected standing source span.
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p3
REVIEWER: sol-review-r3
```

### Coverage `eq:p3:Cquad`

```text
ITEM: eq:p3:Cquad
KIND: display
SOURCE: blueprint/parts/p3-uniqueness.tex#eq:p3:Cquad@L105-L112
DISPOSITION: NODE bp:p3:standing#constants
REASON: Missing named display: definitions of C^N, C^L and C_quad belong to the constants construction.
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p3
REVIEWER: sol-review-r3
```

### Coverage `eq:p3:phase-small`

```text
ITEM: eq:p3:phase-small
KIND: display
SOURCE: blueprint/parts/p3-uniqueness.tex#eq:p3:phase-small@L281-L283
DISPOSITION: NODE bp:p3:phase
REASON: Missing named display: smallness hypothesis of phase normalization.
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p3
REVIEWER: sol-review-r3
```

### Coverage `eq:p3:Delta`

```text
ITEM: eq:p3:Delta
KIND: display
SOURCE: blueprint/parts/p3-uniqueness.tex#eq:p3:Delta@L350-L353
DISPOSITION: NODE bp:p3:difference-equation
REASON: Missing named display: construction of Delta used in the difference equation; include it in that node source span.
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p3
REVIEWER: sol-review-r3
```

### Coverage `eq:p3:c`

```text
ITEM: eq:p3:c
KIND: display
SOURCE: blueprint/parts/p3-uniqueness.tex#eq:p3:c@L515-L518
DISPOSITION: NODE step:p3:g2-constant
REASON: Missing named display: threshold construction in the G2 constant step.
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p3
REVIEWER: sol-review-r3
```

## Conditional-premise audit and limits

The S1-S2 to Part 2 standing-data implication is explicitly written at L74-L77; S3 supplies the ball, derivative/Gram bounds and zero error for the frequency and geometry specializations. Lagrangian transport supplies the zero mean and zero directional derivative; the cohomological uniqueness call is at g=0 with arbitrary positive strip loss. The phase construction uses a nonempty closed ball (eta>=0), derivative bounds, the stated smallness condition and E9; real-valuedness must be attached to the construction of Phi as corrected above. The Taylor application supplies the whole segment through S3 and closeness. In the quadratic estimate, the normal derivative has zero mean, the normal mean is fixed by the S3 twist inverse, and the tangential mean is zero by the proposition hypothesis. The final G2 application supplies the standing package in g2-constant, the three smallness conditions in g2-smallness, the normalization in g2-phase and the domain bound in g2-size before iteration.

The G2 threshold quantifiers, gamma independence and real phase conclusion on T_{rho/2} agree with Part 0 and the frozen declaration. There is no frozen-anchor node in this packet. No frozen-statement defect was found. No new pinned-paper erratum is asserted: papers are provenance only under SPEC. No mathematical deviation was introduced. Axioms and implementation status were not examined, as the review brief prohibits running Lean and reading implementations.
