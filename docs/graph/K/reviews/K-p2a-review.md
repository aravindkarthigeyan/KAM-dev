# K-p2a source topology review

Reviewer: sol-review-r2. Verdict: **FAIL**.

Read the complete assigned slice, all its node and coverage records, SPEC, the governing documents, the 25 track-K frozen declaration files and the manifest identity fields. Corpus hashes match CORPUS.sha256. No implementation or provider modules were read.

External/source targets re-read: Part 0 L32–L63, L91–L101 and G1 L124–L140 against the frozen declaration; Part 1 L114–L195 (matrix norms), L214–L280 (holomorphic regularity), L392–L440 (inverse, increments and Taylor), L505–L625 (strip tools), L634–L687 (averages), L875–L992 (cohomological tools), L1061–L1095 (Hamiltonian fields). Full source slice: Part 2 L1–L602. Conditional applications in the geometry proof are supplied by admissibility: A1 gives holomorphy/primarity, A2 the range, A3–A4 the frame bounds/inverse, A6 the error; L583–L587 supplies periodicity, zero average, bounded derivative and delta<r-delta for the a-priori cohomological call. No G1 edge is added from the introductory statement reference.


One row per existing node follows. Spans refer to blueprint/parts/p2-aposteriori.tex. Statement and proof spans were both re-read; a dash denotes a definition with no separate proof. PASS is a local record verdict, not a theorem/proof-status claim and not a certification of its failed prerequisites.

| Node | Verdict | Source spans re-read (statement; proof) | Finding |
|---|---|---|---|
| `bp:p2:standing` | PASS | L56-L65; - | — |
| `bp:p2:constants` | FAIL | L78-L108; - | R6: "all >=1" incorrectly includes delta_0, defined after the L99 assertion; delta_0 may be less than 1. |
| `bp:p2:matrix` | PASS | L122-L139; L141-L156 | — |
| `step:p2:matrix-op` | PASS | L142-L144; L142-L144 | — |
| `step:p2:matrix-transpose` | PASS | L146-L147; L146-L147 | — |
| `step:p2:matrix-blocks` | PASS | L149-L155; L149-L155 | — |
| `bp:p2:averages` | FAIL | L158-L167; L169-L180 | R7: the complexStrip EDGE points at L162, which contains no strip; its use is at L163. |
| `step:p2:avg-bound` | PASS | L170-L173; L170-L173 | — |
| `step:p2:avg-deriv` | FAIL | L175-L179; L175-L179 | R8: explicitly drops the alternative proof rather than modelling it as a route; also assumes C^1 restriction as a premise without exposing holomorphic regularity. |
| `bp:p2:cohomological` | PASS | L186-L198; L200-L212 | — |
| `step:p2:coh-components` | PASS | L201-L205; L201-L205 | — |
| `step:p2:coh-apriori` | FAIL | L207-L211; L207-L211 | R9: missing direct use of holomorphic regularity to establish a derivative is holomorphic; no extra regularity premise may replace this use. |
| `bp:p2:hamiltonian` | PASS | L214-L230; L232-L258 | — |
| `step:p2:ham-regular` | PASS | L233-L236; L233-L236 | — |
| `step:p2:ham-periodic` | PASS | L238-L241; L238-L241 | — |
| `step:p2:ham-real` | PASS | L243-L246; L243-L246 | — |
| `step:p2:ham-symplectic` | PASS | L248-L251; L248-L251 | — |
| `step:p2:ham-mvt` | PASS | L253-L257; L253-L257 | — |
| `bp:p2:objects` | FAIL | L270-L293; - | R7: the omegaZero EDGE points at L275; Omega_K=L^T Omega_0 L occurs at L276. |
| `bp:p2:frozen-agreement` | PASS | L295-L304; L295-L304 | — |
| `bp:p2:admissible` | PASS | L306-L317; - | — |
| `bp:p2:periodicity` | PASS | L324-L333; L335-L355 | — |
| `step:p2:per-dk` | PASS | L336-L340; L336-L340 | — |
| `step:p2:per-compose` | FAIL | L342-L346; L342-L346 | R11: drops the determinant guard for the inverse-dependent second list, and strengthens the conclusion to every algebraic expression. |
| `step:p2:per-real` | FAIL | L348-L354; L348-L354 | R11: real-inverse is conditional on invertibility, but the step hypotheses omit the enclosing det G!=0 guard. |
| `bp:p2:frequency` | PASS | L357-L365; L367-L380 | — |
| `step:p2:freq-solve` | PASS | L368-L370; L368-L370 | — |
| `step:p2:freq-upper` | PASS | L372-L375; L372-L375 | — |
| `step:p2:freq-lower` | PASS | L377-L379; L377-L379 | — |
| `bp:p2:frame-basic` | FAIL | L382-L398; L400-L425 | R10: SOURCE_HYPOTHESES assumes the Part 2 package, but DEPS does not contain its node as SPEC requires. |
| `step:p2:fb-holo` | FAIL | L401-L406; L401-L406 | R9: missing direct use of holomorphic regularity to establish a derivative is holomorphic; no extra regularity premise may replace this use. |
| `step:p2:fb-bounds` | PASS | L408-L412; L408-L412 | — |
| `step:p2:fb-eta` | PASS | L414-L416; L414-L416 | — |
| `step:p2:fb-torsion` | PASS | L418-L424; L418-L424 | — |
| `bp:p2:frame-identities` | PASS | L441-L463; L465-L513 | — |
| `step:p2:fi-products` | PASS | L466-L469; L466-L469 | — |
| `step:p2:fi-sym` | PASS | L471-L475; L471-L475 | — |
| `step:p2:fi-dl` | PASS | L477-L481; L477-L481 | — |
| `step:p2:fi-domegak` | PASS | L483-L487; L483-L487 | — |
| `step:p2:fi-blocks` | PASS | L489-L497; L489-L497 | — |
| `step:p2:fi-22` | PASS | L499-L507; L499-L507 | — |
| `step:p2:fi-q` | PASS | L509-L512; L509-L512 | — |
| `bp:p2:exactness` | FAIL | L515-L523; L525-L547 | R10: SOURCE_HYPOTHESES assumes the Part 2 package, but DEPS does not contain its node as SPEC requires. |
| `step:p2:ex-curl` | PASS | L526-L532; L526-L532 | — |
| `step:p2:ex-avg-omega` | PASS | L534-L536; L534-L536 | — |
| `step:p2:ex-gradient` | PASS | L538-L541; L538-L541 | — |
| `step:p2:ex-avg-eta` | FAIL | L543-L546; L543-L546 | R11: the eta^N conclusion loses the determinant guard retained in L519 and in bp:p2:exactness. |
| `bp:p2:geometry` | PASS | L549-L563; L565-L596 | — |
| `step:p2:geo-de` | PASS | L566-L569; L566-L569 | — |
| `step:p2:geo-domegak` | PASS | L571-L574; L571-L574 | — |
| `step:p2:geo-ered` | PASS | L576-L580; L576-L580 | — |
| `step:p2:geo-omegak` | PASS | L582-L587; L582-L587 | — |
| `step:p2:geo-esym` | PASS | L589-L595; L589-L595 | — |

Missing nodes required by the coverage findings:

| Node | Verdict | Source span re-read | Finding |
|---|---|---|---|
| `step:p2:avg-deriv#real-route` | FAIL (absent) | L176-L178 | Required replacement node below. |
| `step:p2:avg-deriv#bounded-route` | FAIL (absent) | L178-L179 | Required replacement node below. |

Coverage failures:

| Item | Source | Finding |
|---|---|---|
| `step:p2:avg-deriv` | L175–L179 | Disposition points to a node that explicitly discards an alternative; retain both routes. |
| Missing `step:p2:avg-deriv#real-route` | L176–L178 | Main route needs an inventory item. |
| Missing `step:p2:avg-deriv#bounded-route` | L178–L179 | Explicit alternative route needs an inventory item. |

All other coverage items PASS. The corrected NODE dispositions above do not themselves certify the source-statement fields of those nodes.

Replacement fragments follow. Replace each existing NODE block with the block of the same ID; add the new blocks. Replace same-ID coverage items and add missing items. These are proposed database edits only; the packet files have not been edited.

```text
NODE: bp:p2:constants
KIND: definition
TITLE: Exponents and constants
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:constants@L78-L108
PROOF_SOURCE: -
CONTRACT_ID: bp:p2:constants
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: tau>=0, n>=1 (here n>=2, tau>=n-1); c(n,tau) the constant of the cohomological lemma; M,sigma_K,sigma_B,sigma_T>0; mu>0 and 0<rho_inf<rho for c_* and delta_0
SOURCE_QUANTIFIERS: for the data (n,tau,M,sigma_K,sigma_B,sigma_T) in order; then for mu>0 and 0<rho_inf<rho
SOURCE_CONCLUSION: defines kappa=tau+n, a=2kappa+2, c_R, m(frak), Theta=4n m^3, the constants C_X,C_T,C_Omega,C_sym,C_red,C_xi0,C_xiN,C_g,C_xi,C_DeltaK,C_lin,C_E,C_G,C_B,C_DeltaN,C_DeltaX,C_DeltaT,c_step,c_sum, and c_*, delta_0; the constants defined through L97 are >=1 (L99); c_* and delta_0 are defined subsequently, with delta_0=min{1,(rho-rho_inf)/8} in (0,1]
CONSTANT_SCOPE: kappa,a,c_R,m,Theta,C_* and c_step,c_sum depend only on (n,tau,M,sigma_K,sigma_B,sigma_T); c_* = c_*(n,tau,M,sigma_K,sigma_B,sigma_T,mu); delta_0 = delta_0(rho,rho_inf)
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:cohomological, bp:p2:standing
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:cohomological | blueprint/parts/p2-aposteriori.tex#bp:p2:constants@L79-L79 | c(n,tau) is the constant of the cohomological lemma
EDGE: bp:p2:standing | blueprint/parts/p2-aposteriori.tex#bp:p2:constants@L99-L99 | the constants are functions of the standing parameters n,tau,M,sigma_K,sigma_B,sigma_T
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: bp:p2:averages
KIND: corollary
TITLE: Averages
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:averages@L158-L167
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:averages@L169-L180
CONTRACT_ID: bp:p2:averages
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: (a) f: R^n->C^{pxq} continuous and 1-periodic; (b) v holomorphic and 1-periodic on T_r (not necessarily bounded), values in C, C^p or C^{pxq}
SOURCE_QUANTIFIERS: for all p,q, r>0, f resp. v; averages over [0,1]^n
SOURCE_CONCLUSION: (a) f integrable on [0,1]^n, avg f linear in f, real if f is, |avg f|<=sup_{[0,1]^n}|f|; (b) avg(d_{theta_l} v)=0 for every l and avg(d_omega v)=0
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p2:avg-bound, step:p2:avg-deriv, bp:p0:domains#complexStrip
ROUTES: -
ROUTE_FOR: -
EDGE: step:p2:avg-bound | blueprint/parts/p2-aposteriori.tex#bp:p2:averages@L170-L170 | proof step of (a)
EDGE: step:p2:avg-deriv | blueprint/parts/p2-aposteriori.tex#bp:p2:averages@L175-L175 | proof step of (b)
EDGE: bp:p0:domains#complexStrip | blueprint/parts/p2-aposteriori.tex#bp:p2:averages@L163-L163 | T_r in (b)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: bp:p2:objects
KIND: definition
TITLE: Objects attached to a parameterization
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:objects@L270-L293
PROOF_SOURCE: -
CONTRACT_ID: bp:p2:objects
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: r>0; K:C^n->C^n x C^n holomorphic on T_r with K(T_r) subset B(frak) (data of the standing package); for the second group det G != 0 on T_r; for avg T, T continuous on R^n
SOURCE_QUANTIFIERS: for all r>0, K, theta in T_r; the standing data fixed outermost
SOURCE_CONCLUSION: defines L=DK, G=L^T L, E=X_h o K - L omega, A=DX_h o K, Omega_K=L^T Omega_0 L; and where det G != 0: B=G^{-1}, N=Omega_0 L B, P=(L N), X_N=AN-d_omega N, T=N^T Omega_0 X_N, E_sym=P^T Omega_0 P-Omega_0, Q=-Omega_0 P^T Omega_0, eta=Omega_0 P^T Omega_0 E=(eta^L;eta^N)=(-N^T Omega_0 E; L^T Omega_0 E); avg T=int_{[0,1]^n} T
CONSTANT_SCOPE: none (definitions; depend on K, h, omega only)
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:standing, bp:p0:domains#complexStrip, bp:p0:hamiltonian#hamiltonianVectorFieldC, bp:p0:hamiltonian#omegaZero
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:standing | blueprint/parts/p2-aposteriori.tex#bp:p2:objects@L271-L271 | B(frak), h, omega of the package
EDGE: bp:p0:domains#complexStrip | blueprint/parts/p2-aposteriori.tex#bp:p2:objects@L271-L271 | T_r
EDGE: bp:p0:hamiltonian#hamiltonianVectorFieldC | blueprint/parts/p2-aposteriori.tex#bp:p2:objects@L275-L275 | X_h
EDGE: bp:p0:hamiltonian#omegaZero | blueprint/parts/p2-aposteriori.tex#bp:p2:objects@L276-L276 | Omega_0
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: step:p2:avg-deriv
KIND: step
TITLE: Derivatives
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:avg-deriv@L175-L179
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:avg-deriv@L175-L179
CONTRACT_ID: step:p2:avg-deriv
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: v holomorphic and 1-periodic on T_r, r>0; values scalar, vector or matrix (no additional C^1 premise)
SOURCE_QUANTIFIERS: for all such v and l
SOURCE_CONCLUSION: avg(d_{theta_l} v)=0 and avg(d_omega v)=0
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: step:p2:avg-deriv#real-route, step:p2:avg-deriv#bounded-route
ROUTE_FOR: -
EDGE: step:p2:avg-deriv#real-route | blueprint/parts/p2-aposteriori.tex#step:p2:avg-deriv@L176-L178 | direct restriction to the real torus
EDGE: step:p2:avg-deriv#bounded-route | blueprint/parts/p2-aposteriori.tex#step:p2:avg-deriv@L178-L179 | explicit parenthetical alternative on T_{r/2}
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: The two proofs at L176-L179 are alternatives, not a conjunction. The C^1 property in the first route is derived from holomorphy.
```

```text
NODE: step:p2:coh-apriori
KIND: step
TITLE: The a-priori bound
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:coh-apriori@L207-L211
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:coh-apriori@L207-L211
CONTRACT_ID: step:p2:coh-apriori
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: u:T_r->C^{pxq} holomorphic 1-periodic, avg u=0, |d_omega u|<=H on T_r
SOURCE_QUANTIFIERS: for all such u; 0<delta<r
SOURCE_CONCLUSION: |u|<=Gamma_delta H on T_{r-delta}
CONSTANT_SCOPE: c(n,tau)<=c_R
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:averages, bp:p1:cohomological-operator, bp:p2:constants, bp:p1:holomorphic-regularity
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:averages | blueprint/parts/p2-aposteriori.tex#step:p2:coh-apriori@L209-L209 | avg d_omega u=0
EDGE: bp:p1:cohomological-operator | blueprint/parts/p2-aposteriori.tex#step:p2:coh-apriori@L210-L210 | a-priori bound for periodic solutions of Du omega=g
EDGE: bp:p2:constants | blueprint/parts/p2-aposteriori.tex#step:p2:coh-apriori@L211-L211 | c(n,tau)<=c_R, Gamma_delta
EDGE: bp:p1:holomorphic-regularity | blueprint/parts/p2-aposteriori.tex#step:p2:coh-apriori@L208-L208 | g=d_omega u is holomorphic since derivatives of holomorphic maps are holomorphic
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: step:p2:fb-holo
KIND: step
TITLE: Holomorphy
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:fb-holo@L401-L406
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:fb-holo@L401-L406
CONTRACT_ID: step:p2:fb-holo
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: K holomorphic on T_r with (A2),(A4)
SOURCE_QUANTIFIERS: theta in T_r
SOURCE_CONCLUSION: all listed objects holomorphic on T_r; B symmetric; T continuous on R^n
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:hamiltonian, bp:p2:admissible, bp:p1:holomorphic-inverse, bp:p2:objects, bp:p1:holomorphic-regularity
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:hamiltonian | blueprint/parts/p2-aposteriori.tex#step:p2:fb-holo@L402-L402 | X_h, DX_h holomorphic on B(frak)
EDGE: bp:p2:admissible | blueprint/parts/p2-aposteriori.tex#step:p2:fb-holo@L403-L403 | (A4): det G != 0
EDGE: bp:p1:holomorphic-inverse | blueprint/parts/p2-aposteriori.tex#step:p2:fb-holo@L404-L404 | inverse of a holomorphic invertible matrix is holomorphic
EDGE: bp:p2:objects | blueprint/parts/p2-aposteriori.tex#step:p2:fb-holo@L404-L404 | definitions of N,P,X_N,T,E_sym,Q,eta
EDGE: bp:p1:holomorphic-regularity | blueprint/parts/p2-aposteriori.tex#step:p2:fb-holo@L402-L405 | DK and d_omega N are holomorphic derivatives; K is holomorphic by hypothesis
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: bp:p2:frame-basic
KIND: lemma
TITLE: Regularity and bounds of the frame
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:frame-basic@L382-L398
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:frame-basic@L400-L425
CONTRACT_ID: bp:p2:frame-basic
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the standing data of Part 2 (bp:p2:standing); K holomorphic on T_r satisfying (A2)-(A4) (primary and real not needed); (c) (A6); (d) |omega|<=Theta, 0<delta<=1, delta<r
SOURCE_QUANTIFIERS: for all r>0, K, epsilon, delta as stated
SOURCE_CONCLUSION: (a) L,G,E,A,Omega_K,B,N,P,X_N,T,E_sym,Q,eta holomorphic on T_r, B symmetric, T continuous on R^n so avg T defined; (b) |L|<=m, |L^T|<=2n m, |B|<=m, |N|<=m^2, |N^T|<=2n m^2, |P|<=2m^2, |A|<=m on T_r; (c) |eta^L|<=2n m^2 epsilon, |eta^N|<=2n m epsilon on T_r; (d) |X_N|<=C_X/delta, |T|<=C_T/delta on T_{r-delta}
CONSTANT_SCOPE: m, C_X, C_T depend only on (n,tau,M,sigma_K,sigma_B,sigma_T)
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p2:fb-holo, step:p2:fb-bounds, step:p2:fb-eta, step:p2:fb-torsion, bp:p2:admissible, bp:p2:objects, bp:p2:constants, bp:p2:standing
ROUTES: -
ROUTE_FOR: -
EDGE: step:p2:fb-holo | blueprint/parts/p2-aposteriori.tex#bp:p2:frame-basic@L401-L401 | proof step (a)
EDGE: step:p2:fb-bounds | blueprint/parts/p2-aposteriori.tex#bp:p2:frame-basic@L408-L408 | proof step (b)
EDGE: step:p2:fb-eta | blueprint/parts/p2-aposteriori.tex#bp:p2:frame-basic@L414-L414 | proof step (c)
EDGE: step:p2:fb-torsion | blueprint/parts/p2-aposteriori.tex#bp:p2:frame-basic@L418-L418 | proof step (d)
EDGE: bp:p2:admissible | blueprint/parts/p2-aposteriori.tex#bp:p2:frame-basic@L383-L383 | (A2)-(A4)
EDGE: bp:p2:objects | blueprint/parts/p2-aposteriori.tex#bp:p2:frame-basic@L386-L386 | the objects
EDGE: bp:p2:constants | blueprint/parts/p2-aposteriori.tex#bp:p2:frame-basic@L388-L388 | m, Theta, C_X, C_T
EDGE: bp:p2:standing | blueprint/parts/p2-aposteriori.tex#bp:p2:frame-basic@L383-L384 | local Part 2 package is assumed by this result; h, omega and the ambient domain retain the enclosing standing data
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: bp:p2:exactness
KIND: lemma
TITLE: Exactness: two vanishing averages
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:exactness@L515-L523
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:exactness@L525-L547
CONTRACT_ID: bp:p2:exactness
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the standing data of Part 2 (bp:p2:standing); K holomorphic and primary on T_r with K(T_r) subset B(frak); for eta^N: det G != 0
SOURCE_QUANTIFIERS: for all r>0, K as stated
SOURCE_CONCLUSION: avg Omega_K=0 and avg(L^T Omega_0 E)=0, i.e. avg eta^N=0 when det G != 0
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p2:ex-curl, step:p2:ex-avg-omega, step:p2:ex-gradient, step:p2:ex-avg-eta, bp:p0:stripdata#IsPrimaryOnStrip, bp:p2:objects, bp:p2:standing
ROUTES: -
ROUTE_FOR: -
EDGE: step:p2:ex-curl | blueprint/parts/p2-aposteriori.tex#bp:p2:exactness@L526-L526 | proof step
EDGE: step:p2:ex-avg-omega | blueprint/parts/p2-aposteriori.tex#bp:p2:exactness@L534-L534 | proof step
EDGE: step:p2:ex-gradient | blueprint/parts/p2-aposteriori.tex#bp:p2:exactness@L538-L538 | proof step
EDGE: step:p2:ex-avg-eta | blueprint/parts/p2-aposteriori.tex#bp:p2:exactness@L543-L543 | proof step
EDGE: bp:p0:stripdata#IsPrimaryOnStrip | blueprint/parts/p2-aposteriori.tex#bp:p2:exactness@L516-L516 | primary K
EDGE: bp:p2:objects | blueprint/parts/p2-aposteriori.tex#bp:p2:exactness@L518-L518 | Omega_K, eta^N
EDGE: bp:p2:standing | blueprint/parts/p2-aposteriori.tex#bp:p2:exactness@L516-L516 | local Part 2 package is assumed by this result; h, omega and the ambient domain retain the enclosing standing data
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: step:p2:per-compose
KIND: step
TITLE: Periodicity of the composed objects
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:per-compose@L342-L346
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:per-compose@L342-L346
CONTRACT_ID: step:p2:per-compose
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the standing data of Part 2; K holomorphic and primary on T_r with K(T_r) subset B(frak); DK and K^I periodic by step:p2:per-dk; det G!=0 on T_r for expressions involving B,N,P,X_N,T,E_sym,eta
SOURCE_QUANTIFIERS: k in Z^n, theta in T_r
SOURCE_CONCLUSION: X_h o K, DX_h o K, h o K and the listed composed objects are periodic; inverse-dependent objects in the second list are asserted periodic only when det G!=0, as in the enclosing lemma
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:hamiltonian, bp:p2:standing, step:p2:per-dk, bp:p2:objects
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:hamiltonian | blueprint/parts/p2-aposteriori.tex#step:p2:per-compose@L343-L343 | periodicity of X_h, DX_h under (k,0)
EDGE: bp:p2:standing | blueprint/parts/p2-aposteriori.tex#step:p2:per-compose@L343-L343 | h periodic
EDGE: step:p2:per-dk | blueprint/parts/p2-aposteriori.tex#step:p2:per-compose@L343-L343 | K(theta+k)=K(theta)+(k,0), periodic L and K^I
EDGE: bp:p2:objects | blueprint/parts/p2-aposteriori.tex#step:p2:per-compose@L344-L344 | the objects are algebraic expressions in L, X_h o K, A, K^I
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: step:p2:per-real
KIND: step
TITLE: Realness
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:per-real@L348-L354
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:per-real@L348-L354
CONTRACT_ID: step:p2:per-real
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the standing data of Part 2; K holomorphic and primary on T_r, K(T_r) subset B(frak), K real on reals; det G!=0 on T_r for the inverse-dependent second group and avg T
SOURCE_QUANTIFIERS: real x
SOURCE_CONCLUSION: all listed objects are real at real points and avg T is real
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:hamiltonian, bp:p1:real-inverse, bp:p2:averages, bp:p0:stripdata#IsRealOnReals, bp:p2:objects
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:hamiltonian | blueprint/parts/p2-aposteriori.tex#step:p2:per-real@L350-L350 | X_h, DX_h real at real points
EDGE: bp:p1:real-inverse | blueprint/parts/p2-aposteriori.tex#step:p2:per-real@L352-L352 | inverse of real invertible matrix is real
EDGE: bp:p2:averages | blueprint/parts/p2-aposteriori.tex#step:p2:per-real@L354-L354 | avg of real function is real
EDGE: bp:p0:stripdata#IsRealOnReals | blueprint/parts/p2-aposteriori.tex#step:p2:per-real@L349-L349 | K real on reals
EDGE: bp:p2:objects | blueprint/parts/p2-aposteriori.tex#step:p2:per-real@L353-L353 | definitions of the objects
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: step:p2:ex-avg-eta
KIND: step
TITLE: Average of $L^\top\Omega_0E$
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:ex-avg-eta@L543-L546
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:ex-avg-eta@L543-L546
CONTRACT_ID: step:p2:ex-avg-eta
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: h o K holomorphic and periodic on T_r; avg Omega_K=0; gradient identity
SOURCE_QUANTIFIERS: theta in T_r
SOURCE_CONCLUSION: avg(L^T Omega_0 E)=0; when det G!=0 on T_r, eta^N is defined by bp:p2:objects and eta^N=L^T Omega_0 E, hence avg eta^N=0
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:periodicity, bp:p2:averages, step:p2:ex-gradient, step:p2:ex-avg-omega, bp:p2:objects
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:periodicity | blueprint/parts/p2-aposteriori.tex#step:p2:ex-avg-eta@L544-L544 | h o K holomorphic and periodic
EDGE: bp:p2:averages | blueprint/parts/p2-aposteriori.tex#step:p2:ex-avg-eta@L545-L545 | partial derivatives have zero average
EDGE: step:p2:ex-gradient | blueprint/parts/p2-aposteriori.tex#step:p2:ex-avg-eta@L546-L546 | gradient identity
EDGE: step:p2:ex-avg-omega | blueprint/parts/p2-aposteriori.tex#step:p2:ex-avg-eta@L545-L545 | avg Omega_K=0
EDGE: bp:p2:objects | blueprint/parts/p2-aposteriori.tex#step:p2:ex-avg-eta@L546-L546 | eta^N=L^T Omega_0 E
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: step:p2:avg-deriv#real-route
KIND: step
TITLE: Derivatives of the restriction to the real torus
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:avg-deriv#real-route@L176-L178
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:avg-deriv#real-route@L176-L178
CONTRACT_ID: step:p2:avg-deriv#real-route
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: v holomorphic and 1-periodic on T_r; r>0
SOURCE_QUANTIFIERS: each component and every ell, omega
SOURCE_CONCLUSION: avg(d_ell v)=0 and avg(d_omega v)=0
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:holomorphic-regularity, bp:p1:averages-real
ROUTES: -
ROUTE_FOR: step:p2:avg-deriv
EDGE: bp:p1:holomorphic-regularity | blueprint/parts/p2-aposteriori.tex#step:p2:avg-deriv#real-route@L176-L177 | the real restriction has continuous first derivatives obtained by real difference quotients
EDGE: bp:p1:averages-real | blueprint/parts/p2-aposteriori.tex#step:p2:avg-deriv#real-route@L178-L178 | apply to the periodic C^1 restriction entrywise
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sol-review-r2
REVIEWER: sol-review-r2
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: step:p2:avg-deriv#bounded-route
KIND: step
TITLE: Alternative through a bounded smaller strip
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:avg-deriv#bounded-route@L178-L179
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:avg-deriv#bounded-route@L178-L179
CONTRACT_ID: step:p2:avg-deriv#bounded-route
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: v holomorphic and 1-periodic on T_r; r>0
SOURCE_QUANTIFIERS: each component and every ell, omega
SOURCE_CONCLUSION: avg(d_ell v)=0 and avg(d_omega v)=0
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:periodic-bounded, bp:p1:averages
ROUTES: -
ROUTE_FOR: step:p2:avg-deriv
EDGE: bp:p1:periodic-bounded | blueprint/parts/p2-aposteriori.tex#step:p2:avg-deriv#bounded-route@L178-L179 | v is bounded on T_{r/2} since 0<r/2<r
EDGE: bp:p1:averages | blueprint/parts/p2-aposteriori.tex#step:p2:avg-deriv#bounded-route@L179-L179 | apply to the holomorphic bounded periodic restriction on T_{r/2}, which contains R^n
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sol-review-r2
REVIEWER: sol-review-r2
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
ITEM: step:p2:avg-deriv
KIND: proof-region
SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:avg-deriv@L175-L179
DISPOSITION: NODE step:p2:avg-deriv
REASON: This proof-region contains two routes; retain both through ROUTES rather than silently dropping L178-L179.
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sol-review-r2
REVIEWER: sol-review-r2
```

```text
ITEM: step:p2:avg-deriv#real-route
KIND: proof-region
SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:avg-deriv#real-route@L176-L178
DISPOSITION: NODE step:p2:avg-deriv#real-route
REASON: Main proof via real restriction and averages-real.
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sol-review-r2
REVIEWER: sol-review-r2
```

```text
ITEM: step:p2:avg-deriv#bounded-route
KIND: proof-region
SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:avg-deriv#bounded-route@L178-L179
DISPOSITION: NODE step:p2:avg-deriv#bounded-route
REASON: Explicit alternative via boundedness on T_{r/2} and averages.
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sol-review-r2
REVIEWER: sol-review-r2
```

Checks: source-only review; all five corpus hashes matched the pin; report node-row completeness and replacement-field checks below. No Lean, build, #print axioms or lint script was run: REVIEW-BRIEF expressly says “Run no Lean” and “Edit nothing else.” No Lean declarations were changed, so axioms are not applicable. No state-changing git command was run.

Uncertainties/errata: no suspected defect in a pinned paper is asserted by this review; the papers are provenance only under SPEC. Findings concern graph transcription and topology. No mathematical repair or deviation was introduced. The existing cohomological-vector forward pointer was correctly omitted as an edge; no cycle through cohomological-operator is added.

Validation receipt (read-only Python assertions over packets/reports and SHA-256 over the corpus):

```text
K-p2a: 53/53 existing node rows; 13 replacement/addition node blocks; DEPS/ROUTES match EDGE targets; required fields present; PASS
Corpus: 5/5 pinned hashes match; PASS
```

Command: `git diff --check -- docs/graph/K/reviews/K-p1b-review.md docs/graph/K/reviews/K-p2a-review.md`

```text
exit 0; no output
```

The Python check also verified the explicit all-other-coverage PASS statement and absence of trailing spaces. These checks validate report structure, not mathematical closure.
