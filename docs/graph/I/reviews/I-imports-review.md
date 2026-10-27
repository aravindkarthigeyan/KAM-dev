# I-imports source review

Reviewer: sol-review-I-imports. Marker: rev-I-imports.

Verdict: **FAIL**. Reviewed all 59 nodes (48 K, 9 N, 2 P) and all 59 coverage items. 11 node records need source-field corrections; two P coverage reasons need to record pending ownership. Locators and import metadata pass throughout. This is a source/dependency review, not a proof or Lean-status certification.

## Scope and ownership

The raw owning statements, not the copied K records, determine the verdicts below. Read the enclosing hypotheses for proof steps and K Part 1 conventions L25-L45, especially L37-L39 after aec5b8b. All 59 statement spans contain the indicated label and lie within the current file. All records have KIND external, LEAN_STATUS EXTERNAL, PROOF_SOURCE -, DEPS -, ROUTES -, ROUTE_FOR - and no proof edges. All 48 K NOTE ownership/kind/contract claims match their owning graph; the K G3 frozen identity agrees with the identity fields in manifest/frozen-anchors.json. No implementation/provider Lean or proof-status fields were consulted.

All 48 K IDs are retained in docs/graph/K/DEPGRAPH.md. All nine N IDs occur in current docs/graph/N/packets/*.nodes.md; N has no assembled DEPGRAPH.md yet. None is one of the N results transferred to I-nown by the latest SPEC ruling. Final N ownership remains conditional on retention at assembly; the current packets support these nine imports. P has no docs/graph/P yet. Its two NOTE fields correctly say IMPORTED (pending P graph), name the literal frozen definitions, and deny I-anchor ownership. I accept their source records provisionally under the explicit assignment of these two P imports, not as a final P owning-node verification. The writer should record P in SPEC and resolve ownership before final assembly.

inp_depgraph_imports.py is unavailable (searched script paths under /root/code and the account directory). I did not claim to run it. A read-only inline equivalent checked all imported IDs against K DEPGRAPH/N packets, and every DEPS/ROUTES reference in I packets: missing referenced imports = []; unreferenced imports = []; K IDs absent from owning graph = []; N IDs absent from owning packets = []. P owning IDs remain pending, not independently verified.

## Node verdicts

| Node ID | Verdict | Source spans re-read | Reason |
|---|---|---|---|
| K:bp:p0:g3 | PASS | blueprint/parts/p0-conventions.tex#bp:p0:g3@L157-L162 | Source hypotheses, quantifier order, conclusion and constant scope match; import metadata and NOTE pass. |
| K:bp:p1:cauchy-corollaries | PASS | blueprint/parts/p1-analysis.tex#bp:p1:cauchy-corollaries@L617-L621 | Source hypotheses, quantifier order, conclusion and constant scope match; import metadata and NOTE pass. |
| K:bp:p1:cauchy-open | PASS | blueprint/parts/p1-analysis.tex#bp:p1:cauchy-open@L474-L479 | Source hypotheses, quantifier order, conclusion and constant scope match; import metadata and NOTE pass. |
| K:bp:p1:cauchy-strip | PASS | blueprint/parts/p1-analysis.tex#bp:p1:cauchy-strip@L568-L574 | Source hypotheses, quantifier order, conclusion and constant scope match; import metadata and NOTE pass. |
| K:bp:p1:cohomological | PASS | blueprint/parts/p1-analysis.tex#bp:p1:cohomological@L887-L897 | Source hypotheses, quantifier order, conclusion and constant scope match; import metadata and NOTE pass. |
| K:bp:p1:ext-banach | PASS | blueprint/parts/p1-analysis.tex#bp:p1:ext-banach@L95-L96 | Source hypotheses, quantifier order, conclusion and constant scope match; import metadata and NOTE pass. |
| K:bp:p1:ext-cramer | PASS | blueprint/parts/p1-analysis.tex#bp:p1:ext-cramer@L97-L99 | Source hypotheses, quantifier order, conclusion and constant scope match; import metadata and NOTE pass. |
| K:bp:p1:ext-integral | PASS | blueprint/parts/p1-analysis.tex#bp:p1:ext-integral@L82-L86 | Source hypotheses, quantifier order, conclusion and constant scope match; import metadata and NOTE pass. |
| K:bp:p1:ext-mvt | PASS | blueprint/parts/p1-analysis.tex#bp:p1:ext-mvt@L75-L78 | Source hypotheses, quantifier order, conclusion and constant scope match; import metadata and NOTE pass. |
| K:bp:p1:hamiltonian-real | PASS | blueprint/parts/p1-analysis.tex#bp:p1:hamiltonian-real@L1073-L1079 | Source hypotheses, quantifier order, conclusion and constant scope match; import metadata and NOTE pass. |
| K:bp:p1:holomorphic-analytic | PASS | blueprint/parts/p1-analysis.tex#bp:p1:holomorphic-analytic@L296-L312 | Source hypotheses, quantifier order, conclusion and constant scope match; import metadata and NOTE pass. |
| K:bp:p1:holomorphic-inverse | PASS | blueprint/parts/p1-analysis.tex#bp:p1:holomorphic-inverse@L404-L407 | Source hypotheses, quantifier order, conclusion and constant scope match; import metadata and NOTE pass. |
| K:bp:p1:holomorphic-regularity | PASS | blueprint/parts/p1-analysis.tex#bp:p1:holomorphic-regularity@L227-L236 | Source hypotheses, quantifier order, conclusion and constant scope match; import metadata and NOTE pass. |
| K:bp:p1:increments-open | PASS | blueprint/parts/p1-analysis.tex#bp:p1:increments-open@L425-L428 | Source hypotheses, quantifier order, conclusion and constant scope match; import metadata and NOTE pass. |
| K:bp:p1:iteration | PASS | blueprint/parts/p1-analysis.tex#bp:p1:iteration@L1009-L1014 | Source hypotheses, quantifier order, conclusion and constant scope match; import metadata and NOTE pass. |
| K:bp:p1:matrix-norms | PASS | blueprint/parts/p1-analysis.tex#bp:p1:matrix-norms@L148-L153 | Source hypotheses, quantifier order, conclusion and constant scope match; import metadata and NOTE pass. |
| K:bp:p1:neumann | PASS | blueprint/parts/p1-analysis.tex#bp:p1:neumann@L177-L181 | Source hypotheses, quantifier order, conclusion and constant scope match; import metadata and NOTE pass. |
| K:bp:p1:real-inverse | PASS | blueprint/parts/p1-analysis.tex#bp:p1:real-inverse@L205-L208 | Source hypotheses, quantifier order, conclusion and constant scope match; import metadata and NOTE pass. |
| K:bp:p1:real-restriction | FAIL | blueprint/parts/p1-analysis.tex#bp:p1:real-restriction@L1047-L1051; conventions blueprint/parts/p1-analysis.tex@L37-L39 | Drops the current positive-width convention; at rho=0 holomorphy on the empty strip cannot imply real analyticity on all real points. |
| K:bp:p1:taylor | PASS | blueprint/parts/p1-analysis.tex#bp:p1:taylor@L436-L439 | Source hypotheses, quantifier order, conclusion and constant scope match; import metadata and NOTE pass. |
| K:bp:p1:uniform-limits | FAIL | blueprint/parts/p1-analysis.tex#bp:p1:uniform-limits@L364-L368; conventions blueprint/parts/p1-analysis.tex@L37-L39 | The strip clauses omit r>0 from the revised conventions. Keep the general open-set clause general and guard only the strip clauses. |
| K:bp:p2:admissible | PASS | blueprint/parts/p2-aposteriori.tex#bp:p2:admissible@L306-L317 | Source hypotheses, quantifier order, conclusion and constant scope match; import metadata and NOTE pass. |
| K:bp:p2:averages | PASS | blueprint/parts/p2-aposteriori.tex#bp:p2:averages@L158-L167 | Source hypotheses, quantifier order, conclusion and constant scope match; import metadata and NOTE pass. |
| K:bp:p2:cohomological | PASS | blueprint/parts/p2-aposteriori.tex#bp:p2:cohomological@L186-L198 | Source hypotheses, quantifier order, conclusion and constant scope match; import metadata and NOTE pass. |
| K:bp:p2:constants | FAIL | blueprint/parts/p2-aposteriori.tex#bp:p2:constants@L78-L108 | Names most defined constants without giving their defining values, including c_*. This is not a complete definition contract. |
| K:bp:p2:exactness | PASS | blueprint/parts/p2-aposteriori.tex#bp:p2:exactness@L515-L523 | Source hypotheses, quantifier order, conclusion and constant scope match; import metadata and NOTE pass. |
| K:bp:p2:frame-basic | PASS | blueprint/parts/p2-aposteriori.tex#bp:p2:frame-basic@L382-L398 | Source hypotheses, quantifier order, conclusion and constant scope match; import metadata and NOTE pass. |
| K:bp:p2:frame-identities | FAIL | blueprint/parts/p2-aposteriori.tex#bp:p2:frame-identities@L441-L463 | The reduced-error matrix is replaced by “as stated”, omitting the defining blocks of conclusion (e). |
| K:bp:p2:frequency | PASS | blueprint/parts/p2-aposteriori.tex#bp:p2:frequency@L357-L365 | Source hypotheses, quantifier order, conclusion and constant scope match; import metadata and NOTE pass. |
| K:bp:p2:frozen-agreement | PASS | blueprint/parts/p2-aposteriori.tex#bp:p2:frozen-agreement@L295-L304 | Source hypotheses, quantifier order, conclusion and constant scope match; import metadata and NOTE pass. |
| K:bp:p2:hamiltonian | PASS | blueprint/parts/p2-aposteriori.tex#bp:p2:hamiltonian@L214-L230 | Source hypotheses, quantifier order, conclusion and constant scope match; import metadata and NOTE pass. |
| K:bp:p2:matrix | FAIL | blueprint/parts/p2-aposteriori.tex#bp:p2:matrix@L122-L139 | Conclusion (c) says only “block bounds”, omitting both the horizontal and two-by-two block inequalities. |
| K:bp:p2:objects | PASS | blueprint/parts/p2-aposteriori.tex#bp:p2:objects@L270-L293 | Source hypotheses, quantifier order, conclusion and constant scope match; import metadata and NOTE pass. |
| K:bp:p2:periodicity | PASS | blueprint/parts/p2-aposteriori.tex#bp:p2:periodicity@L324-L333 | Source hypotheses, quantifier order, conclusion and constant scope match; import metadata and NOTE pass. |
| K:bp:p2:standing | PASS | blueprint/parts/p2-aposteriori.tex#bp:p2:standing@L56-L65 | Source hypotheses, quantifier order, conclusion and constant scope match; import metadata and NOTE pass. |
| K:bp:p4:data | FAIL | blueprint/parts/p4-measure.tex#bp:p4:data@L138-L163 | Leaves C_B^+ undefined and omits the j=1,2,3 range in cbar; the quantifier field also does not place the full fixed data before f,epsilon. |
| K:bp:p4:derivative-bounds | PASS | blueprint/parts/p4-measure.tex#bp:p4:derivative-bounds@L183-L195 | Source hypotheses, quantifier order, conclusion and constant scope match; import metadata and NOTE pass. |
| K:bp:p4:freq-map | PASS | blueprint/parts/p4-measure.tex#bp:p4:freq-map@L225-L237 | Source hypotheses, quantifier order, conclusion and constant scope match; import metadata and NOTE pass. |
| K:bp:p4:h-bounded | PASS | blueprint/parts/p4-measure.tex#bp:p4:h-bounded@L168-L170 | Source hypotheses, quantifier order, conclusion and constant scope match; import metadata and NOTE pass. |
| K:bp:p4:h1 | PASS | blueprint/parts/p4-measure.tex#bp:p4:h1@L309-L313 | Source hypotheses, quantifier order, conclusion and constant scope match; import metadata and NOTE pass. |
| K:step:p2:fb-holo | FAIL | blueprint/parts/p2-aposteriori.tex#step:p2:fb-holo@L401-L406; parent blueprint/parts/p2-aposteriori.tex@L382-L398 | “All listed objects” supplies no actual object list in this record; state the full holomorphy conclusion and inherit the parent positive strip. |
| K:step:p2:geo-domegak | FAIL | blueprint/parts/p2-aposteriori.tex#step:p2:geo-domegak@L571-L574; parent blueprint/parts/p2-aposteriori.tex@L549-L563 | Records previously proved frame identities/bounds as hypotheses. Restore the literal enclosing geometry lemma premises; those identities/bounds are proof ingredients. |
| K:step:p2:geo-ered | FAIL | blueprint/parts/p2-aposteriori.tex#step:p2:geo-ered@L576-L580; parent blueprint/parts/p2-aposteriori.tex@L549-L563 | Records previously proved frame identities/bounds as hypotheses. Restore the literal enclosing geometry lemma premises; those identities/bounds are proof ingredients. |
| K:step:p2:ham-real | PASS | blueprint/parts/p2-aposteriori.tex#step:p2:ham-real@L243-L246 | Source hypotheses, quantifier order, conclusion and constant scope match; import metadata and NOTE pass. |
| K:step:p2:pt-small | PASS | blueprint/parts/p2-aposteriori.tex#step:p2:pt-small@L823-L832 | Source hypotheses, quantifier order, conclusion and constant scope match; import metadata and NOTE pass. |
| K:step:p4:db-cauchy | FAIL | blueprint/parts/p4-measure.tex#step:p4:db-cauchy@L204-L208; parent blueprint/parts/p4-measure.tex@L138-L195 | Promotes proved part (a) and h-bounded to hypotheses; leaves (b),(c) as pointers instead of estimates. Restore HEAD context and retain the actual derived estimates. |
| K:step:p4:h1-holo | PASS | blueprint/parts/p4-measure.tex#step:p4:h1-holo@L321-L327 | Source hypotheses, quantifier order, conclusion and constant scope match; import metadata and NOTE pass. |
| K:step:p4:h1-open | PASS | blueprint/parts/p4-measure.tex#step:p4:h1-open@L316-L319 | Source hypotheses, quantifier order, conclusion and constant scope match; import metadata and NOTE pass. |
| N:bpN:p3:gen-continuation-periodic | PASS | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-continuation-periodic@L297-L299 | Source hypotheses, quantifier order, conclusion and constant scope match; import metadata and NOTE pass. |
| N:bpN:p3:gen-maximal | PASS | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-maximal@L251-L258 | Source hypotheses, quantifier order, conclusion and constant scope match; import metadata and NOTE pass. |
| N:bpN:p3:gen-sol | PASS | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-sol@L88-L93 | Source hypotheses, quantifier order, conclusion and constant scope match; import metadata and NOTE pass. |
| N:bpN:p3:gen-uniqueness | PASS | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-uniqueness@L217-L224 | Source hypotheses, quantifier order, conclusion and constant scope match; import metadata and NOTE pass. |
| N:bpN:p3:ham-energy | PASS | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:ham-energy@L388-L393 | Source hypotheses, quantifier order, conclusion and constant scope match; import metadata and NOTE pass. |
| N:bpN:p3:ham-periodic | PASS | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:ham-periodic@L402-L407 | Faithful to the literal source, including its unqualified final composition equality; source-scope defect reported separately below. |
| N:bpN:p3:ham-reduction | PASS | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:ham-reduction@L416-L427 | Source hypotheses, quantifier order, conclusion and constant scope match; import metadata and NOTE pass. |
| N:bpN:p3:gen-exit | PASS | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-exit@L328-L341 | Source hypotheses, quantifier order, conclusion and constant scope match; import metadata and NOTE pass. |
| N:bpN:p3:gen-symmetry | FAIL | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-symmetry@L101-L110 | Includes the conclusion “-F is C^1 on W if F is” among SOURCE_HYPOTHESES. It belongs only in the conclusion, conditional on F being C^1. |
| P:bpP:p0:fixedsol#IsFixedSolution | PASS | blueprint-P/parts/p0-conventions.tex#bpP:p0:fixedsol@L235-L242 | Literal definition transcription and pending-P NOTE pass; owning graph not yet available (provisional ownership only). Pair-index scope is reported separately below. |
| P:bpP:p0:newton#IsNewtonSolution | PASS | blueprint-P/parts/p0-conventions.tex#bpP:p0:newton@L226-L233 | Literal definition transcription and pending-P NOTE pass; owning graph not yet available (provisional ownership only). Pair-index scope is reported separately below. |

## Coverage verdicts

| Coverage item | Verdict | Reason |
|---|---|---|
| P:bpP:p0:fixedsol#IsFixedSolution | FAIL | Reason claims a proved/external input in a track-P graph that does not yet exist; distinguish the literal frozen-definition import and pending owning node. The disposition and locator are correct. |
| P:bpP:p0:newton#IsNewtonSolution | FAIL | Reason claims a proved/external input in a track-P graph that does not yet exist; distinguish the literal frozen-definition import and pending owning node. The disposition and locator are correct. |

All other coverage items PASS: each maps exactly once to its matching import, uses the same raw statement span, and has the correct imported disposition. Source-field corrections below do not change those dispositions.

## Complete replacement node blocks

These are proposed replacements, not applied packet edits. Retain the original import identity, external status and empty dependency boundary. Corrections to K source fields must also be reconciled with its owning record by the K owner; copying that record is not evidence against the current raw source.

For the two geometry steps the replacement deliberately retains the full parent admissibility package, including (A5). The written source does not state a separately generalized helper without (A5). A consumer seeking such a helper must expose and justify that different contract; importing the proof ingredients as assumptions does not establish the source theorem under different premises.

### K:bp:p1:real-restriction

```text
NODE: K:bp:p1:real-restriction
KIND: external
TITLE: [K] Real restriction
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:real-restriction@L1047-L1051
PROOF_SOURCE: -
CONTRACT_ID: K:bp:p1:real-restriction
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: n>=1; rho>0; K holomorphic on T_rho and real on reals; for the primary claim, K primary on T_rho (p=2n)
SOURCE_QUANTIFIERS: n>=1, rho>0, p and K as stated; then every x in R^n and m in Z^n
SOURCE_CONCLUSION: k=K|_{R^n} real-analytic with real derivative the restriction of the complex derivative; |Dk(x)|<=|DK(x)| for x in R^n; if K primary, k(x+m)=k(x)+(m,0) for m in Z^n
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: proved in the track-K graph, node bp:p1:real-restriction; shared Lean provider. There: KIND lemma, contract bp:p1:real-restriction v1. Cited as \Kref{bp:p1:real-restriction}. Source premises also include conventions blueprint/parts/p1-analysis.tex@L37-L39.
```

### K:bp:p1:uniform-limits

```text
NODE: K:bp:p1:uniform-limits
KIND: external
TITLE: [K] Uniform limits
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:uniform-limits@L364-L368
PROOF_SOURCE: -
CONTRACT_ID: K:bp:p1:uniform-limits
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: K_s holomorphic on an open set V; K_s->K pointwise on V; DK_s->Lambda uniformly on V; for the strip clauses: n>=1, r>0, V=T_r, and every K_s primary on T_r, respectively real on reals
SOURCE_QUANTIFIERS: V,K_s,K,Lambda; sequence index s; for the additional strip clauses, n>=1 and r>0
SOURCE_CONCLUSION: K holomorphic on V and DK=Lambda; if V=T_r and all K_s primary (resp. real on reals) then K is primary (resp. real on reals)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: proved in the track-K graph, node bp:p1:uniform-limits; shared Lean provider. There: KIND lemma, contract bp:p1:uniform-limits v1. Cited as \Kref{bp:p1:uniform-limits}. Source premises also include conventions blueprint/parts/p1-analysis.tex@L37-L39.
```

### K:bp:p2:constants

```text
NODE: K:bp:p2:constants
KIND: external
TITLE: [K] Exponents and constants
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:constants@L78-L108
PROOF_SOURCE: -
CONTRACT_ID: K:bp:p2:constants
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the standing data of Part 2: n>=2, tau>=n-1, M,sigma_K,sigma_B,sigma_T>0; c(n,tau) from bp:p1:cohomological; for the final definitions mu>0 and 0<rho_inf<rho
SOURCE_QUANTIFIERS: for the data (n,tau,M,sigma_K,sigma_B,sigma_T) in order; then for mu>0 and 0<rho_inf<rho
SOURCE_CONCLUSION: defines, in order: kappa=tau+n; a=2kappa+2; c_R=max{1,c(n,tau)}; m=max{1,M,sigma_K,sigma_B,sigma_T}; Theta=4n m^3; C_X=5n^2 m^5; C_T=2n m^2 C_X; C_Omega=2n(n+1)c_R m; C_sym=m^2 C_Omega; C_red=2n(n+1)m^2; C_xi0=2n m^2(m Theta+c_R C_T); C_xiN=C_xi0+2n c_R m; C_g=C_T C_xiN+2n m^2 Theta; C_xi=c_R C_g+Theta C_xiN; C_DeltaK=2m^2 C_xi; C_lin=C_red C_xi+C_sym C_g; C_E=4m^2 Theta^2 C_lin+m C_DeltaK^2; C_G=6n^2 m; C_B=2m^2 C_G; C_DeltaN=2n m+m C_B; C_DeltaX=2m^3+(m+n Theta)C_DeltaN; C_DeltaT=4n m^2 C_DeltaX+2n C_DeltaN C_X; c_step=2Theta^4 max{C_sym,2m C_DeltaT C_DeltaK}; c_sum=4Theta^2 C_DeltaK max{n,C_B,m^2 C_DeltaT}; all preceding constants >=1; c_*=max{2^{2a}C_E,c_step max{1,2/mu},2c_sum/mu}; delta_0=min{1,(rho-rho_inf)/8} in (0,1]
CONSTANT_SCOPE: kappa,a,c_R,m,Theta,C_* and c_step,c_sum depend only on (n,tau,M,sigma_K,sigma_B,sigma_T); c_* = c_*(n,tau,M,sigma_K,sigma_B,sigma_T,mu); delta_0 = delta_0(rho,rho_inf)
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: proved in the track-K graph, node bp:p2:constants; shared Lean provider. There: KIND definition, contract bp:p2:constants v1. Cited as \Kref{bp:p2:constants}.
```

### K:bp:p2:frame-identities

```text
NODE: K:bp:p2:frame-identities
KIND: external
TITLE: [K] Frame identities
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:frame-identities@L441-L463
PROOF_SOURCE: -
CONTRACT_ID: K:bp:p2:frame-identities
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the standing data of Part 2 (bp:p2:standing); K holomorphic on T_r, K(T_r) subset B(frak), det G != 0 on T_r
SOURCE_QUANTIFIERS: for all r>0, K as stated; identities on T_r
SOURCE_CONCLUSION: (a) L^T Omega_0 N=-I_n, N^T Omega_0 L=I_n, N^T Omega_0 N=B Omega_K B; (b) P^T Omega_0 P=Omega_0+E_sym, E_sym=diag(Omega_K, B Omega_K B); (c) d_omega L=AL-DE; (d) d_omega Omega_K=-(DE)^T Omega_0 L-L^T Omega_0 DE; (e) Q(AP-d_omega P)=Lambda+E_red with Lambda=[[0,T],[0,0]], E_red=[[N^T Omega_0 DE,0],[-L^T Omega_0 DE,(DE)^T Omega_0 N]]; (f) QP=I_{2n}-Omega_0 E_sym and QE=-eta
CONSTANT_SCOPE: none (exact identities)
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: proved in the track-K graph, node bp:p2:frame-identities; shared Lean provider. There: KIND lemma, contract bp:p2:frame-identities v1. Cited as \Kref{bp:p2:frame-identities}.
```

### K:bp:p2:matrix

```text
NODE: K:bp:p2:matrix
KIND: external
TITLE: [K] Matrix norms
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:matrix@L122-L139
PROOF_SOURCE: -
CONTRACT_ID: K:bp:p2:matrix
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: standard matrix and vector norms (max norm on vectors, |M|=max_i sum_j |M_ij|, operator norm on bilinear/matrix maps); Omega_0 the canonical 2n x 2n matrix
SOURCE_QUANTIFIERS: for all p,q and all p x q complex matrices M, M_1, M_2, M_ij, vectors v; block matrices conformal; matrices U_1,U_2 with n rows
SOURCE_CONCLUSION: (a) max|M_ij|<=|M|=sup_{|v|<=1}|Mv| and |M^T|<=p|M|; (b) |M_1M_2|<=|M_1||M_2|, |Mv|<=|M||v|; (c) |(M_1 M_2)|<=|M_1|+|M_2|; |[[M_11,M_12],[M_21,M_22]]|<=max{|M_11|+|M_12|,|M_21|+|M_22|}; |diag(M_1,M_2)|=max{|M_1|,|M_2|}; (d) Omega_0^T=-Omega_0=Omega_0^{-1}, Omega_0^2=-I, Omega_0^T Omega_0=I, |Omega_0|=1, Omega_0(U_1;U_2)=(-U_2;U_1)
CONSTANT_SCOPE: none (constants are absolute, no parameters)
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: proved in the track-K graph, node bp:p2:matrix; shared Lean provider. There: KIND corollary, contract bp:p2:matrix v1. Cited as \Kref{bp:p2:matrix}.
```

### K:bp:p4:data

```text
NODE: K:bp:p4:data
KIND: external
TITLE: [K] Shrunken domains and basic constants
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:data@L138-L163
PROOF_SOURCE: -
CONTRACT_ID: K:bp:p4:data
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: n>=2, tau>n-1, s0,r0>0; B open bounded nonempty; h holomorphic on B_{r0} and real at real points; fixed witnesses L_h of the inverse frequency inequality on closure B and C_B of the boundary-layer inequality; f and epsilon as in HEAD
SOURCE_QUANTIFIERS: first fix n>=2, tau>n-1, s0,r0>0, B,h,L_h,C_B as in HEAD; then f,epsilon as in HEAD; define the displayed constants and domains from fixed data, independently of f,epsilon; for each I* in R^n define K^0_{I*}
SOURCE_CONCLUSION: defines L_+=max(L_h,1), C_B^+=max(C_B,0), s=min(s0,1), delta_*=min(s,r0)/4, mu=delta_*/2, D=T_{s/2} x B_{r0/2}, D'=T_{3s/4} x B_{3r0/4}, cbar=max{1,c(n,j),c(2n,j):j=1,2,3}, and the unperturbed torus K^0_{I*}(theta)=(theta,iota I*); hbold(theta,I)=h(I)+f(theta,I) on D(s0,r0), realHamiltonian h f=Re hbold at real points
CONSTANT_SCOPE: all constants depend only on n,tau,s0,r0,B,h,L_h,C_B
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: proved in the track-K graph, node bp:p4:data; shared Lean provider. There: KIND definition, contract bp:p4:data v1. Cited as \Kref{bp:p4:data}.
```

### K:step:p2:fb-holo

```text
NODE: K:step:p2:fb-holo
KIND: external
TITLE: [K] Holomorphy
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:fb-holo@L401-L406
PROOF_SOURCE: -
CONTRACT_ID: K:step:p2:fb-holo
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the standing data of Part 2; r>0, beta>0; K holomorphic on T_r satisfying (A2)-(A4) of bp:p2:admissible, as in bp:p2:frame-basic; primary and real are not required
SOURCE_QUANTIFIERS: standing data fixed first; then r>0,beta>0,K as stated; conclusions on T_r and R^n respectively
SOURCE_CONCLUSION: L,G,E,A,Omega_K,B,N,P,X_N,T,E_sym,Q,eta are holomorphic on T_r (also d_omega N is holomorphic there); B is symmetric; T is continuous on R^n, so avg T is defined
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: proved in the track-K graph, node step:p2:fb-holo; shared Lean provider. There: KIND step, contract step:p2:fb-holo v1. Cited as \Kref{step:p2:fb-holo}. Source premises also include parent blueprint/parts/p2-aposteriori.tex@L382-L398.
```

### K:step:p2:geo-domegak

```text
NODE: K:step:p2:geo-domegak
KIND: external
TITLE: [K] Bound on $\partial_\omega\Omega_K$
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:geo-domegak@L571-L574
PROOF_SOURCE: -
CONTRACT_ID: K:step:p2:geo-domegak
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the standing data and constants of Part 2; K is (r,beta,epsilon)-admissible in the sense of bp:p2:admissible (including A1-A6, 0<=epsilon<=1); 0<delta<=1 and 2delta<r
SOURCE_QUANTIFIERS: standing data and their constants fixed first; then r>0,beta>0,0<=epsilon<=1,K,delta satisfying the parent geometry lemma; for every theta in T_{r-delta}
SOURCE_CONCLUSION: |d_omega Omega_K|<=2n(n+1) m epsilon/delta
CONSTANT_SCOPE: m=max{1,M,sigma_K,sigma_B,sigma_T}; C_red=2n(n+1)m^2; these depend only on (n,tau,M,sigma_K,sigma_B,sigma_T)
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: proved in the track-K graph, node step:p2:geo-domegak; shared Lean provider. There: KIND step, contract step:p2:geo-domegak v1. Cited as \Kref{step:p2:geo-domegak}. Source premises also include parent blueprint/parts/p2-aposteriori.tex@L549-L563.
```

### K:step:p2:geo-ered

```text
NODE: K:step:p2:geo-ered
KIND: external
TITLE: [K] Bound on $E_{\mathrm{red}}$
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:geo-ered@L576-L580
PROOF_SOURCE: -
CONTRACT_ID: K:step:p2:geo-ered
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the standing data and constants of Part 2; K is (r,beta,epsilon)-admissible in the sense of bp:p2:admissible (including A1-A6, 0<=epsilon<=1); 0<delta<=1 and 2delta<r
SOURCE_QUANTIFIERS: standing data and their constants fixed first; then r>0,beta>0,0<=epsilon<=1,K,delta satisfying the parent geometry lemma; for every theta in T_{r-delta}
SOURCE_CONCLUSION: |E_red|<=C_red epsilon/delta
CONSTANT_SCOPE: m=max{1,M,sigma_K,sigma_B,sigma_T}; C_red=2n(n+1)m^2; these depend only on (n,tau,M,sigma_K,sigma_B,sigma_T)
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: proved in the track-K graph, node step:p2:geo-ered; shared Lean provider. There: KIND step, contract step:p2:geo-ered v1. Cited as \Kref{step:p2:geo-ered}. Source premises also include parent blueprint/parts/p2-aposteriori.tex@L549-L563.
```

### K:step:p4:db-cauchy

```text
NODE: K:step:p4:db-cauchy
KIND: external
TITLE: [K] Cauchy estimates
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:db-cauchy@L204-L208
PROOF_SOURCE: -
CONTRACT_ID: K:step:p4:db-cauchy
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the fixed HEAD data and perturbation f,epsilon of bp:p4:data (L138-L163), with h holomorphic on B_{r0} and f holomorphic, periodic, real and |f|<=epsilon on D(s0,r0); shrunken domains, delta_*,cbar from bp:p4:data; M_h defined as sup{|h(I)|:I in B_{3r0/4}}; H_j=cbar M_h delta_*^{-j}, F_j=cbar delta_*^{-j} as in the parent derivative-bounds lemma; neither polydisc containment nor boundedness of h is an additional premise
SOURCE_QUANTIFIERS: HEAD data fixed first; then f,epsilon as in HEAD; j=1,2,3, I in B_{r0/2}, z in D
SOURCE_CONCLUSION: |D^j h(I)|<=H_j; |D^j f(z)|<=F_j epsilon; |D^j hbold(z)|<=cbar(M_h+epsilon)delta_*^{-j}, where hbold(theta,I)=h(I)+f(theta,I); delta_*<=1 gives delta_*^{-j}<=delta_*^{-3}
CONSTANT_SCOPE: delta_*,cbar,M_h,H_j,F_j depend only on the fixed HEAD data (n,tau,s0,r0,B,h,L_h,C_B); no new constant is chosen
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: proved in the track-K graph, node step:p4:db-cauchy; shared Lean provider. There: KIND step, contract step:p4:db-cauchy v1. Cited as \Kref{step:p4:db-cauchy}. Source premises also include parent blueprint/parts/p4-measure.tex@L138-L195.
```

### N:bpN:p3:gen-symmetry

```text
NODE: N:bpN:p3:gen-symmetry
KIND: external
TITLE: [N] Symmetries
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-symmetry@L101-L110
PROOF_SOURCE: -
CONTRACT_ID: N:bpN:p3:gen-symmetry
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: E a finite-dimensional real normed space; F:E->E total, W subset E open, J subset R, z:R->E with IsSolIn F W J z; for (c), v in E with W+v=W and F(x+v)=F(x) for x in W; no C^1 assumption is required for the solution transformations
SOURCE_QUANTIFIERS: F,W,J,z as stated; (a) every c in R; (b) time reversal, with the additional C^1 implication conditional on F being C^1 on W; (c) every v satisfying the translation conditions
SOURCE_CONCLUSION: (a) t -> z(t+c) is a solution on J-c; (b) t -> z(-t) is a solution of -F on -J, and -F is C^1 on W if F is; (c) t -> z(t)+v is a solution of F in W on J
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: proved in the track-N graph, node bpN:p3:gen-symmetry; shared Lean provider. Cited as \Nref{bpN:p3:gen-symmetry}.
```

## Complete replacement coverage blocks

```text
ITEM: P:bpP:p0:fixedsol#IsFixedSolution
KIND: external
SOURCE: blueprint-P/parts/p0-conventions.tex#bpP:p0:fixedsol@L235-L242
DISPOSITION: NODE P:bpP:p0:fixedsol#IsFixedSolution
REASON: imported literal frozen-definition transcription from track P, not extracted or anchored here; pending P graph and retention of the named owning anchor node; this is not a claim that an assembled P graph already proves or retains it
COVERAGE_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
```

```text
ITEM: P:bpP:p0:newton#IsNewtonSolution
KIND: external
SOURCE: blueprint-P/parts/p0-conventions.tex#bpP:p0:newton@L226-L233
DISPOSITION: NODE P:bpP:p0:newton#IsNewtonSolution
REASON: imported literal frozen-definition transcription from track P, not extracted or anchored here; pending P graph and retention of the named owning anchor node; this is not a claim that an assembled P graph already proves or retains it
COVERAGE_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
```

## Suspected blueprint defects and scope ambiguities

1. **N Hamiltonian periodicity, blueprint-N/parts/p3-hamiltonian-ode.tex L402-L407, especially L405.** The literal claim is `H\circ(z+(k,0))=H\circ z`. The hypotheses constrain z only on J, and H is only periodic on W. Thus equality is justified on J, not as total functions on R. For example take n=1, W=R x (-1,1), H(theta,I)=0 for |I|<1 and H(theta,I)=theta for |I|>=1, J={0}, and z(t)=(0,0) near 0 but z(1)=(0,2). This is a solution on J, whereas for k=1 the two energies at t=1 are 1 and 0. An explicit “on J” qualifier resolves the source-scope problem; I have not silently inserted it into the faithful import. No additional differentiability of H is needed for the separate vector-field periodicity claim on W, as the proof L409-L411 explains.

2. **P Newton and fixed-Sun definitions, blueprint-P/parts/p0-conventions.tex L226-L242.** The Newton definition says `for all $t\in\R$ and $i\ne j$` before listing both collision and derivative clauses; fixed-Sun similarly says `if for all $t$ and $i\neq j$`. Read literally, the pair guard covers the differential equations too, making them vacuous with one body/planet. If the intended law requires each derivative for every i while only the pair-collision clause uses i!=j, the source should separate these quantifiers. The imports faithfully retain the written scope; this is an ambiguity in the owning blueprint, not permission to rewrite the frozen declarations or claim an independently checked frozen mismatch.

No pinned-paper defect or introduced mathematical deviation is asserted by this source review. The two source issues above should be routed to their owners and the errata process.

## Checks and limits

- CORPUS.sha256: 9/9 hashes match. IMPORTS.sha256: 7/7 hashes match, including P Part 0 and the revised K Part 1.
- `python3 scripts/depgraph_slice_check.py docs/graph/I/packets I-imports`: `I-imports: 59 nodes, 0 edges, 59 coverage items, 0 problems`. This structural pass does not certify source-field fidelity.
- Inline locator-label/range and metadata checks: 59/59 pass. K NOTE kind/contract comparisons: 48/48 pass. Ownership/reference report described above.
- `python3 scripts/depgraph_apply_review.py docs/graph/I/packets I-imports docs/graph/I/reviews/I-imports-review.md sol-review-I-imports --dry-run`: `I-imports: 11 replaced, 0 added, 2 coverage items, 0 unresolved FAILs, 48 PASS nodes`. No replacements were applied.
- `git diff --check -- docs/graph/I/reviews/I-imports-review.md`: exit 0, no output. Independent report checks confirm exactly one verdict per input node and a complete replacement for every failed node/item.
- Node packet SHA256: `beacf863d39ce325f956842feb76468b583478ae98eba7ccb441bd5015b6d51f`. Coverage packet SHA256: `9810348e7ccae41fa0c76c4877fda6e8386b246dc58fce049f350652e8b2e6b7`.
- No Lean/build, provider inspection, source edit, packet edit, manifest edit or state-changing git operation. Only this review is written.
