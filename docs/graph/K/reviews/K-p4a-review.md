# K-p4a: independent topology review

Reviewer: `sol-review-r4` (requested marker `graph-review-r4`).

**Verdict: FAIL.**

All 63 packet nodes and every coverage entry were reviewed against the complete assigned raw source, including unlabelled paragraphs. PASS below is local to that record and does not certify prerequisites or mathematical proof completion. Failures in dependencies do not automatically turn every consumer into a second failure.

The review used the binding SPEC, repository rules, PLAN, DECISIONS, review brief, the identity fields of the 25 track-K manifest entries, the frozen definition contracts and theorem statements, Part 0 conventions and gates, and the relevant Part 1 inputs. No implementation or provider module was consulted. No Lean commands, builds or state-changing git commands were run. Only this report and the other assigned slice report were written.

Input SHA-256:

- `docs/graph/K/SPEC.md`: `191fa7f502ff882869b537f43ccfe76ea381dde4a4a83d9678f5078cc8a35f8f`
- `docs/graph/K/packets/K-p4a.nodes.md`: `be86d5bbd5281c8fb2e0ffcbe522c2f93fe1ffad373dc3789bca337e94b01098`
- `docs/graph/K/packets/K-p4a.coverage.md`: `3924cb23a956fc31db6091e748bac0cee627611d4bfdb019aa2d7f82d1ff930e`
- `blueprint/parts/p4-measure.tex`: `403dbf9a7ee4cb0eec4d1af63c324903e4113778a3f9e45e8a046854ef37adce`

Cross-slice source spans re-read: `blueprint/parts/p0-conventions.tex` L11-L164; `blueprint/parts/p1-analysis.tex` L54-L98, L107-L162, L165-L194 (Neumann), L215-L225, L284-L304 (analyticity), L392-L421, L462-L468, L505-L563, L634-L702, L875-L885, L1035-L1078, L1106-L1215. Norms are max/row-sum, Fourier characters have period one, and G1/G2 retain their frozen margins and quantifier order.

| Node ID | Verdict | Part 4 spans re-read (statement; proof) | Reason for FAIL |
|---|---|---|---|
| `bp:p4:lattice-count` | PASS | L53-L55; L57-L64 | — |
| `step:p4:count-projection` | PASS | L58-L63; L58-L63 | — |
| `bp:p4:lattice-sum` | PASS | L66-L71; L73-L82 | — |
| `step:p4:latsum-shells` | PASS | L74-L76; L74-L76 | — |
| `step:p4:latsum-integral` | PASS | L78-L81; L78-L81 | — |
| `bp:p4:slab` | PASS | L84-L89; L91-L102 | — |
| `step:p4:slab-coordinate` | PASS | L92-L93; L92-L93 | — |
| `step:p4:slab-fubini` | FAIL | L95-L101; L95-L101 | E8 gives box coverings and subadditivity, not the measurable-set Fubini theorem invoked here; Unexposed source input: L96-L101 uses Fubini for the indicator of the slab intersected with a cube. E6 only explicitly provides Fubini for continuous functions on compact boxes; E8 does not provide measurable-set Fubini. The blueprint supplies no extension or slab-cover argument. Keep this as a source obligation, not a new external leaf. |
| `step:p4:g3-n0` | PASS | L105-L107; L105-L107 | — |
| `step:p4:g3-cube` | PASS | L109-L112; L109-L112 | — |
| `step:p4:g3-union` | FAIL | L114-L120; L114-L120 | Bounding cube is consumed in the union inclusion; L110 is the prerequisite construction, outside this step |
| `step:p4:g3-sum` | PASS | L122-L127; L122-L127 | — |
| `bp:p4:data` | FAIL | L154-L163; - | The record omits the definition of the Hamiltonian hbold used later and its locator; include the fixed-data paragraph |
| `bp:p4:h-bounded` | PASS | L168-L170; L172-L181 | — |
| `step:p4:hbdd-compact` | PASS | L173-L176; L173-L176 | — |
| `step:p4:hbdd-continuity` | PASS | L178-L180; L178-L180 | — |
| `bp:p4:derivative-bounds` | PASS | L183-L195; L197-L223 | — |
| `step:p4:db-polydisc` | PASS | L198-L202; L198-L202 | — |
| `step:p4:db-cauchy` | PASS | L204-L208; L204-L208 | — |
| `step:p4:db-vectorfield` | FAIL | L210-L222; L210-L222 | Missing direct use of the vector-field formula cited at L213; Missing direct use establishing holomorphy of derivatives |
| `bp:p4:freq-map` | FAIL | L225-L237; L239-L272 | Derivative bounds are proved inputs, not added source premises |
| `step:p4:fm-domain` | PASS | L240-L242; L240-L242 | — |
| `step:p4:fm-gradient` | PASS | L244-L252; L244-L252 | — |
| `step:p4:fm-hessian` | PASS | L254-L260; L254-L260 | — |
| `step:p4:fm-bounds` | PASS | L262-L265; L262-L265 | — |
| `step:p4:fm-lipschitz` | PASS | L267-L271; L267-L271 | — |
| `bp:p4:hessian-inverse` | PASS | L274-L278; L280-L292 | — |
| `step:p4:hess-quotient` | PASS | L281-L285; L281-L285 | — |
| `step:p4:hess-norm` | PASS | L287-L291; L287-L291 | — |
| `bp:p4:inverse-freq` | PASS | L294-L300; L302-L307 | — |
| `step:p4:invfreq-proof` | PASS | L303-L306; L303-L306 | — |
| `bp:p4:h1` | PASS | L309-L313; L315-L331 | — |
| `step:p4:h1-open` | PASS | L316-L319; L316-L319 | — |
| `step:p4:h1-holo` | PASS | L321-L327; L321-L327 | — |
| `step:p4:h1-bounds` | PASS | L329-L330; L329-L330 | — |
| `bp:p4:unperturbed` | PASS | L341-L361; L363-L404 | — |
| `step:p4:unp-frame` | PASS | L364-L369; L364-L369 | — |
| `step:p4:unp-normal` | PASS | L371-L374; L371-L374 | — |
| `step:p4:unp-torsion` | FAIL | L376-L384; L376-L384 | Holomorphy of second derivatives supplies continuity before the frozen integral is used; Continuous torsion on the real unit cube is integrable; linearity integrates its constant term |
| `step:p4:unp-twist` | PASS | L386-L391; L386-L391 | — |
| `step:p4:unp-error` | PASS | L393-L398; L393-L398 | — |
| `step:p4:unp-ball` | PASS | L400-L403; L400-L403 | — |
| `bp:p4:parameters` | FAIL | L406-L436; - | G1/G2 conclusions supply constants; they are dependencies, not extra hypotheses. The conclusion must preserve c_*>0 and the order of choice before f, epsilon and gamma. |
| `bp:p4:smallness` | FAIL | L445-L456; L458-L466 | Missing direct dependency on the explicit local package (SA), required by SPEC |
| `step:p4:small-proof` | FAIL | L459-L465; L459-L465 | Missing direct dependency on the explicit local package (SA), required by SPEC |
| `bp:p4:apply` | FAIL | L468-L474; L476-L496 | Missing direct dependency on the explicit local package (SA), required by SPEC |
| `step:p4:apply-g1` | FAIL | L477-L495; L477-L495 | Missing direct dependency on the explicit local package (SA), required by SPEC; H1-H5 and the error bound are discharged proof obligations, not additional assumed premises |
| `bp:p4:matrix-norms` | PASS | L518-L533; L535-L544 | — |
| `step:p4:mn-rowsum` | FAIL | L536-L543; L536-L543 | Missing cited identification of row-sum and operator norms; Missing cited submultiplicativity and transpose bounds; Missing explicitly cited integral norm bound; Part 1 norm lemmas are proof inputs, not source hypotheses |
| `bp:p4:torsion-regular` | PASS | L546-L561; L563-L581 | — |
| `step:p4:tr-inverse` | FAIL | L564-L568; L564-L568 | Missing cited holomorphy of DK; Missing explicitly cited inverse holomorphy and differentiation result |
| `step:p4:tr-torsion` | FAIL | L570-L574; L570-L574 | Missing explicitly cited conversion of frozen sums into matrix products; H1 requires epsilon<=1, absent from torsion-regular; only holomorphy is used here; Supply holomorphy directly without the unused epsilon<=1 premise of H1; Holomorphic derivatives of N and X_hbold are needed for holomorphic torsion |
| `step:p4:tr-periodic` | FAIL | L576-L580; L576-L580 | Missing direct use of Hamiltonian periodicity; use the part of H1 that has no epsilon<=1 premise; Periodic Gram inverse on the nonsingular domain is used in the frame; Differentiation of primarity and of periodic derivatives supplies periodic L and DN |
| `bp:p4:stab` | PASS | L583-L601; L603-L665 | — |
| `step:p4:stab-small` | PASS | L604-L608; L604-L608 | — |
| `step:p4:stab-cauchy` | PASS | L610-L617; L610-L617 | — |
| `step:p4:stab-ball` | PASS | L619-L622; L619-L622 | — |
| `step:p4:stab-gram` | FAIL | L624-L629; L624-L629 | The application of torsion-regular needs K(T_{rho-delta}) subset D, supplied by the neighbourhood step |
| `step:p4:stab-frame` | FAIL | L631-L636; L631-L636 | The conclusion &#124;N&#124;<=2 uses &#124;N0&#124;=1 and 12na<=1 |
| `step:p4:stab-xn` | PASS | L638-L647; L638-L647 | — |
| `step:p4:stab-torsion` | FAIL | L649-L652; L649-L652 | The final coefficient comparison uses the definition c_T=304n^3(M+W_inf+1) |
| `step:p4:stab-twist` | PASS | L654-L659; L654-L659 | — |
| `step:p4:stab-h2h4` | PASS | L661-L664; L661-L664 | — |

Coverage findings:

| Coverage item | Verdict | Source span | Reason |
|---|---|---|---|
| `bp:p4:SA (missing)` | FAIL | L438-L443 | Labelled display and local package omitted from inventory and nodes; SPEC expressly requires its node. |
| `bp:p4:data` | FAIL | L138-L163 | Its existing L154-L163 range omits the fixed-data and Hamiltonian definition used by this node. |
| `p4:source-L48` | FAIL | L48-L51 | Citation range includes only the opening line; record the complete provenance annotation. |

all other coverage items PASS. A correct mapping to a node is a coverage PASS even if the mapped node needs a topology or source-contract correction. Excluding the unused normalized-uniqueness corollary and its two proof steps in K-p4b is valid under the root-reachability policy; its raw proof was nevertheless re-read at L744-L777.

The new SA node belongs to K-p4a. The K-p4b review replacements refer to that node, so these findings must be adjudicated together. SA remains a local package; no global assumption leaf is introduced. The far/close pair split is a case split requiring both cases, not alternative proof routes. The mixed-difference proof is self-contained and needs no edge to its Part 1 template.

Replacement fragments follow. Each existing-node block replaces that whole packet record; new nodes/items are additions. These are review proposals only. They preserve ordinary Lean initialization and do not amend any frozen declaration or manifest identity.

```text
NODE: bp:p4:SA
KIND: display
TITLE: Local smallness package and frequency notation
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:SA@L438-L443
PROOF_SOURCE: -
CONTRACT_ID: bp:p4:SA
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: fixed HEAD data of Part 4 and constants of Definition parameters
SOURCE_QUANTIFIERS: gamma, epsilon real, after the data-dependent constants have been fixed
SOURCE_CONCLUSION: local package (SA) is 0<gamma<=1 and 0<=epsilon<=c_* gamma^4; eta_0=A_0 epsilon gamma^{-2}; Omega_gamma=g(B) intersect Dio_{gamma,tau}
CONSTANT_SCOPE: c_*, A_0 fixed before gamma, epsilon; eta_0 and Omega_gamma depend on gamma (and eta_0 on epsilon)
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p4:parameters, bp:p4:freq-map, bp:p0:diophantine#IsDiophantine
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p4:parameters | blueprint/parts/p4-measure.tex#bp:p4:SA@L438-L443 | c_*, A_0 and their scope
EDGE: bp:p4:freq-map | blueprint/parts/p4-measure.tex#bp:p4:SA@L443-L443 | g(B), with g the frequency map
EDGE: bp:p0:diophantine#IsDiophantine | blueprint/parts/p4-measure.tex#bp:p4:SA@L443-L443 | Diophantine set
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sol-review-r4
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: Local hypothesis package only; STANDING_ASSUMPTIONS remains none.
```

```text
NODE: step:p4:slab-fubini
KIND: step
TITLE: Fubini in the coordinate $\omega_i$
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:slab-fubini@L95-L101
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:slab-fubini@L95-L101
CONTRACT_ID: step:p4:slab-fubini
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: dominant coordinate i with |k|_1<=n|k_i|; R,a>0
SOURCE_QUANTIFIERS: fixed other coordinates omega' in [-R,R]^{n-1}
SOURCE_CONCLUSION: each section in omega_i has length <= 2a/|k_i|, so by Fubini the slab has measure <= (2R)^{n-1} 2a/|k_i| <= 2n(2R)^{n-1}a/|k|_1
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p4:slab-coordinate
ROUTES: -
ROUTE_FOR: -
EDGE: step:p4:slab-coordinate | blueprint/parts/p4-measure.tex#step:p4:slab-fubini@L101-L101 | dominant coordinate bound
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: SOURCE_GAP: L96-L101 uses Fubini for the indicator of the slab intersected with a cube. E6 only explicitly provides Fubini for continuous functions on compact boxes; E8 does not provide measurable-set Fubini. The blueprint supplies no extension or slab-cover argument. Keep this as a source obligation, not a new external leaf.
```

```text
NODE: step:p4:g3-union
KIND: step
TITLE: Union of slabs
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:g3-union@L114-L120
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:g3-union@L114-L120
CONTRACT_ID: step:p4:g3-union
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: n>=1; alpha>0; Omega in [-R,R]^n
SOURCE_QUANTIFIERS: alpha>0
SOURCE_CONCLUSION: {omega in Omega not in Dio_{alpha,tau}} is contained in the union over k!=0 of {omega in [-R,R]^n : |k.omega|<alpha|k|_1^{-tau}}
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p0:diophantine#IsDiophantine, step:p4:g3-cube
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p0:diophantine#IsDiophantine | blueprint/parts/p4-measure.tex#step:p4:g3-union@L115-L115 | negation of the Diophantine condition
EDGE: step:p4:g3-cube | blueprint/parts/p4-measure.tex#step:p4:g3-union@L115-L120 | Bounding cube is consumed in the union inclusion; L110 is the prerequisite construction, outside this step
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: bp:p4:data
KIND: definition
TITLE: Shrunken domains and basic constants
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:data@L138-L163
PROOF_SOURCE: -
CONTRACT_ID: bp:p4:data
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: n>=2, tau>n-1, s0,r0>0; B open bounded nonempty; h holomorphic on B_{r0} and real at real points; fixed witnesses L_h of the inverse frequency inequality on closure B and C_B of the boundary-layer inequality; f and epsilon as in HEAD
SOURCE_QUANTIFIERS: L_h, C_B, s0, r0, B, h fixed; then s, delta_*, mu, D, D' defined; c(m,j) from Cauchy-open
SOURCE_CONCLUSION: defines L_+=max(L_h,1), C_B^+, s=min(s0,1), delta_*=min(s,r0)/4, mu=delta_*/2, D=T_{s/2} x B_{r0/2}, D'=T_{3s/4} x B_{3r0/4}, cbar=max{1,c(n,j),c(2n,j)}, and the unperturbed torus K^0_{I*}(theta)=(theta,iota I*); hbold(theta,I)=h(I)+f(theta,I) on D(s0,r0), realHamiltonian h f=Re hbold at real points
CONSTANT_SCOPE: all constants depend only on n,tau,s0,r0,B,h,L_h,C_B
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:cauchy-open
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:cauchy-open | blueprint/parts/p4-measure.tex#bp:p4:data@L160-L160 | cbar uses the constants c(m,j) of Cauchy-open
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: step:p4:db-vectorfield
KIND: step
TITLE: From $D\pfh$ to $X_\pfh$
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:db-vectorfield@L210-L222
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:db-vectorfield@L210-L222
CONTRACT_ID: step:p4:db-vectorfield
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: holomorphic phi; Cauchy bounds of the previous step
SOURCE_QUANTIFIERS: phi=f and phi=h~
SOURCE_CONCLUSION: X_phi=J D phi with |X_phi|<=|D phi|, |DX_phi|<=|D^2 phi|, |D^2 X_phi|<=|D^3 phi|; completes (c) and gives (d)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p0:hamiltonian#hamiltonianVectorFieldC, step:p4:db-cauchy, bp:p1:hamiltonian-real, bp:p1:holomorphic-regularity
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p0:hamiltonian#hamiltonianVectorFieldC | blueprint/parts/p4-measure.tex#step:p4:db-vectorfield@L211-L211 | frozen complex Hamiltonian vector field is J D phi
EDGE: step:p4:db-cauchy | blueprint/parts/p4-measure.tex#step:p4:db-vectorfield@L219-L219 | Cauchy bounds on D^j f and D^j h~
EDGE: bp:p1:hamiltonian-real | blueprint/parts/p4-measure.tex#step:p4:db-vectorfield@L211-L218 | Missing direct use of the vector-field formula cited at L213
EDGE: bp:p1:holomorphic-regularity | blueprint/parts/p4-measure.tex#step:p4:db-vectorfield@L216-L218 | Missing direct use establishing holomorphy of derivatives
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: bp:p4:freq-map
KIND: lemma
TITLE: The frequency map
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:freq-map@L225-L237
PROOF_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:freq-map@L239-L272
CONTRACT_ID: bp:p4:freq-map
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: fixed HEAD data of Section sec-data; U={I real : iota I in B_{r0}}, g=frequencyMap h; H_1,H_2 are defined constants, not assumed derivative estimates
SOURCE_QUANTIFIERS: U, g=frequencyMap h, I
SOURCE_CONCLUSION: (i) U open, contains closure of B; (ii) g(I)=grad h(iota I) real; (iii) g differentiable on U with Dg=nabla^2 h symmetric real; (iv) |g|<=H_1, |nabla^2 h|<=H_2 on iota I in B_{r0/2}; (v) g is Lambda_g-Lipschitz on B, Lambda_g=max(H_2,2H_1/delta_*), |g(B)|<=W_inf=H_1
CONSTANT_SCOPE: Lambda_g, W_inf depend only on the data
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p4:fm-domain, step:p4:fm-gradient, step:p4:fm-hessian, step:p4:fm-bounds, step:p4:fm-lipschitz, bp:p0:nearlyintegrable#frequencyMap
ROUTES: -
ROUTE_FOR: -
EDGE: step:p4:fm-domain | blueprint/parts/p4-measure.tex#bp:p4:freq-map@L240-L240 | proof step of this result
EDGE: step:p4:fm-gradient | blueprint/parts/p4-measure.tex#bp:p4:freq-map@L244-L244 | proof step of this result
EDGE: step:p4:fm-hessian | blueprint/parts/p4-measure.tex#bp:p4:freq-map@L254-L254 | proof step of this result
EDGE: step:p4:fm-bounds | blueprint/parts/p4-measure.tex#bp:p4:freq-map@L262-L262 | proof step of this result
EDGE: step:p4:fm-lipschitz | blueprint/parts/p4-measure.tex#bp:p4:freq-map@L267-L267 | proof step of this result
EDGE: bp:p0:nearlyintegrable#frequencyMap | blueprint/parts/p4-measure.tex#bp:p4:freq-map@L226-L226 | g is the frozen frequencyMap h
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: step:p4:unp-torsion
KIND: step
TITLE: Torsion
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:unp-torsion@L376-L384
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:unp-torsion@L376-L384
CONTRACT_ID: step:p4:unp-torsion
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: z=(theta,iota I_*) in D; N^0 constant
SOURCE_QUANTIFIERS: theta in T_{s/2}
SOURCE_CONCLUSION: (d): T^0=d_I^2 h~, omega does not enter, T^0 continuous, avg T^0=nabla^2 h+avg of d_I^2 f
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p4:db-vectorfield, step:p4:unp-normal, bp:p0:stripdata#torsion, bp:p0:stripdata#dotC, bp:p0:hamiltonian#omegaZero, bp:p0:stripdata#torsionAverage, bp:p1:holomorphic-regularity, bp:p1:ext-integral
ROUTES: -
ROUTE_FOR: -
EDGE: step:p4:db-vectorfield | blueprint/parts/p4-measure.tex#step:p4:unp-torsion@L377-L377 | DX_h~ via D^2 h~
EDGE: step:p4:unp-normal | blueprint/parts/p4-measure.tex#step:p4:unp-torsion@L381-L381 | derivative term vanishes
EDGE: bp:p0:stripdata#torsion | blueprint/parts/p4-measure.tex#step:p4:unp-torsion@L379-L379 | frozen torsion
EDGE: bp:p0:stripdata#dotC | blueprint/parts/p4-measure.tex#step:p4:unp-torsion@L380-L380 | dot product in torsion
EDGE: bp:p0:hamiltonian#omegaZero | blueprint/parts/p4-measure.tex#step:p4:unp-torsion@L380-L380 | Omega_0
EDGE: bp:p0:stripdata#torsionAverage | blueprint/parts/p4-measure.tex#step:p4:unp-torsion@L383-L383 | frozen torsionAverage
EDGE: bp:p1:holomorphic-regularity | blueprint/parts/p4-measure.tex#step:p4:unp-torsion@L382-L384 | Holomorphy of second derivatives supplies continuity before the frozen integral is used
EDGE: bp:p1:ext-integral | blueprint/parts/p4-measure.tex#step:p4:unp-torsion@L382-L384 | Continuous torsion on the real unit cube is integrable; linearity integrates its constant term
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: bp:p4:smallness
KIND: lemma
TITLE: Smallness consequences
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:smallness@L445-L456
PROOF_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:smallness@L458-L466
CONTRACT_ID: bp:p4:smallness
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: (SA): 0<gamma<=1 and 0<=eps<=c_* gamma^4
SOURCE_QUANTIFIERS: gamma, eps
SOURCE_CONCLUSION: (s1)-(s7): eps<=1, L_+F_2 eps<=1/2; the G1 smallness quantities (s2),(s4); eta_0<=eta_*(s/32), eta_0<=mu, 16n eta_0/s<=1/2; (s5); (s6); eta_0<=gamma^2/2
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p4:small-proof, bp:p4:SA
ROUTES: -
ROUTE_FOR: -
EDGE: step:p4:small-proof | blueprint/parts/p4-measure.tex#bp:p4:smallness@L459-L459 | proof step of this result
EDGE: bp:p4:SA | blueprint/parts/p4-measure.tex#bp:p4:smallness@L445-L456 | Missing direct dependency on the explicit local package (SA), required by SPEC
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: step:p4:small-proof
KIND: step
TITLE: Reduction to $c_*$
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:small-proof@L459-L465
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:small-proof@L459-L465
CONTRACT_ID: step:p4:small-proof
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: (SA); definition of c_* as a minimum
SOURCE_QUANTIFIERS: gamma,eps
SOURCE_CONCLUSION: each of (s1)-(s7) is an entry of the minimum defining c_*
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p4:parameters, bp:p4:SA
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p4:parameters | blueprint/parts/p4-measure.tex#step:p4:small-proof@L460-L460 | entries of c_*, eta_*, c_T
EDGE: bp:p4:SA | blueprint/parts/p4-measure.tex#step:p4:small-proof@L459-L465 | Missing direct dependency on the explicit local package (SA), required by SPEC
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: bp:p4:apply
KIND: theorem
TITLE: APPLY: a torus for every Diophantine frequency
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:apply@L468-L474
PROOF_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:apply@L476-L496
CONTRACT_ID: bp:p4:apply
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the data of HEAD; (SA); omega in Omega_gamma=g(B) cap Dio_{gamma,tau}
SOURCE_QUANTIFIERS: omega
SOURCE_CONCLUSION: exists K^inf_omega holomorphic and primary on T_{s/8}, real on reals, invariant with frequency omega, B_{mu/2}(K)subset D, |DK|<=sigma_K-mu/2, |K-K^0_omega|<=eta_0/2 on T_{s/8}
CONSTANT_SCOPE: K^inf depends on omega,eps,gamma; constants depend only on the data
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p4:apply-g1, bp:p4:parameters, bp:p4:SA
ROUTES: -
ROUTE_FOR: -
EDGE: step:p4:apply-g1 | blueprint/parts/p4-measure.tex#bp:p4:apply@L477-L477 | proof step of this result
EDGE: bp:p4:parameters | blueprint/parts/p4-measure.tex#bp:p4:apply@L469-L469 | SA, Omega_gamma, sigma_K, mu
EDGE: bp:p4:SA | blueprint/parts/p4-measure.tex#bp:p4:apply@L468-L474 | Missing direct dependency on the explicit local package (SA), required by SPEC
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: step:p4:apply-g1
KIND: step
TITLE: Application of G1 at the unperturbed torus
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:apply-g1@L477-L495
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:apply-g1@L477-L495
CONTRACT_ID: step:p4:apply-g1
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: fixed HEAD data; (SA); omega in Omega_gamma; K=K^0_omega and e=F_1 epsilon (H1-H5 and smallness are established by the listed dependencies)
SOURCE_QUANTIFIERS: first G1 tuple, D, h~, K=K^0_omega
SOURCE_CONCLUSION: K^inf_omega with all stated properties on T_{s/8} and |K^inf-K^0|<=eta_0/2
CONSTANT_SCOPE: constants C_1^(1),C_2^(1) from G1
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p0:g1, bp:p4:parameters, bp:p4:h1, bp:p4:unperturbed, bp:p4:smallness, bp:p4:inverse-freq, bp:p0:diophantine#IsDiophantine, bp:p4:SA
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p0:g1 | blueprint/parts/p4-measure.tex#step:p4:apply-g1@L478-L478 | G1 applied
EDGE: bp:p4:parameters | blueprint/parts/p4-measure.tex#step:p4:apply-g1@L478-L478 | tuple and constants
EDGE: bp:p4:h1 | blueprint/parts/p4-measure.tex#step:p4:apply-g1@L483-L483 | H1
EDGE: bp:p4:unperturbed | blueprint/parts/p4-measure.tex#step:p4:apply-g1@L485-L485 | H2,H3,H4 and error from unperturbed
EDGE: bp:p4:smallness | blueprint/parts/p4-measure.tex#step:p4:apply-g1@L483-L483 | (s1),(s2)
EDGE: bp:p4:inverse-freq | blueprint/parts/p4-measure.tex#step:p4:apply-g1@L488-L488 | I_omega in B, g(I_omega)=omega
EDGE: bp:p0:diophantine#IsDiophantine | blueprint/parts/p4-measure.tex#step:p4:apply-g1@L489-L489 | omega in Dio_{gamma,tau} (H5)
EDGE: bp:p4:SA | blueprint/parts/p4-measure.tex#step:p4:apply-g1@L477-L495 | Missing direct dependency on the explicit local package (SA), required by SPEC
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: step:p4:mn-rowsum
KIND: step
TITLE: Row sums
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:mn-rowsum@L536-L543
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:mn-rowsum@L536-L543
CONTRACT_ID: step:p4:mn-rowsum
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: matrices and vectors as in Corollary matrix-norms; for (v), A continuous on the real unit cube
SOURCE_QUANTIFIERS: A, p, q
SOURCE_CONCLUSION: (i)-(v)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p0:hamiltonian#symplecticForm, bp:p0:hamiltonian#omegaZero, bp:p4:unperturbed, bp:p1:operator-norms, bp:p1:matrix-norms, bp:p1:ext-integral
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p0:hamiltonian#symplecticForm | blueprint/parts/p4-measure.tex#step:p4:mn-rowsum@L541-L541 | frozen formula of symplecticForm
EDGE: bp:p0:hamiltonian#omegaZero | blueprint/parts/p4-measure.tex#step:p4:mn-rowsum@L541-L541 | Omega_0
EDGE: bp:p4:unperturbed | blueprint/parts/p4-measure.tex#step:p4:mn-rowsum@L539-L539 | rows of L^0,N^0
EDGE: bp:p1:operator-norms | blueprint/parts/p4-measure.tex#step:p4:mn-rowsum@L537-L539 | Missing cited identification of row-sum and operator norms
EDGE: bp:p1:matrix-norms | blueprint/parts/p4-measure.tex#step:p4:mn-rowsum@L537-L539 | Missing cited submultiplicativity and transpose bounds
EDGE: bp:p1:ext-integral | blueprint/parts/p4-measure.tex#step:p4:mn-rowsum@L542-L543 | Missing explicitly cited integral norm bound
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: step:p4:tr-inverse
KIND: step
TITLE: Inverse
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:tr-inverse@L564-L568
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:tr-inverse@L564-L568
CONTRACT_ID: step:p4:tr-inverse
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: K holomorphic on T_rho, det G!=0
SOURCE_QUANTIFIERS: theta
SOURCE_CONCLUSION: (a)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p0:stripdata#gramMatrix, bp:p1:holomorphic-regularity, bp:p1:holomorphic-inverse
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p0:stripdata#gramMatrix | blueprint/parts/p4-measure.tex#step:p4:tr-inverse@L566-L566 | frozen Gram matrix and Lean inverse
EDGE: bp:p1:holomorphic-regularity | blueprint/parts/p4-measure.tex#step:p4:tr-inverse@L565-L568 | Missing cited holomorphy of DK
EDGE: bp:p1:holomorphic-inverse | blueprint/parts/p4-measure.tex#step:p4:tr-inverse@L567-L568 | Missing explicitly cited inverse holomorphy and differentiation result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: step:p4:tr-torsion
KIND: step
TITLE: Frame and torsion
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:tr-torsion@L570-L574
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:tr-torsion@L570-L574
CONTRACT_ID: step:p4:tr-torsion
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: (a)
SOURCE_QUANTIFIERS: theta
SOURCE_CONCLUSION: (b),(c)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p4:tr-inverse, bp:p0:stripdata#normalFrame, bp:p0:stripdata#torsion, bp:p4:matrix-norms, step:p4:h1-holo, bp:p1:holomorphic-regularity
ROUTES: -
ROUTE_FOR: -
EDGE: step:p4:tr-inverse | blueprint/parts/p4-measure.tex#step:p4:tr-torsion@L571-L571 | N holomorphic by (a)
EDGE: bp:p0:stripdata#normalFrame | blueprint/parts/p4-measure.tex#step:p4:tr-torsion@L571-L571 | frozen normal frame
EDGE: bp:p0:stripdata#torsion | blueprint/parts/p4-measure.tex#step:p4:tr-torsion@L571-L571 | frozen torsion
EDGE: bp:p4:matrix-norms | blueprint/parts/p4-measure.tex#step:p4:tr-torsion@L573-L574 | Missing explicitly cited conversion of frozen sums into matrix products
EDGE: step:p4:h1-holo | blueprint/parts/p4-measure.tex#step:p4:tr-torsion@L572-L574 | Supply holomorphy directly without the unused epsilon<=1 premise of H1
EDGE: bp:p1:holomorphic-regularity | blueprint/parts/p4-measure.tex#step:p4:tr-torsion@L571-L574 | Holomorphic derivatives of N and X_hbold are needed for holomorphic torsion
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: step:p4:tr-periodic
KIND: step
TITLE: Periodicity
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:tr-periodic@L576-L580
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:tr-periodic@L576-L580
CONTRACT_ID: step:p4:tr-periodic
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: K primary on T_rho
SOURCE_QUANTIFIERS: k in Z^n
SOURCE_CONCLUSION: (d)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p0:stripdata#IsPrimaryOnStrip, step:p4:h1-holo, step:p4:tr-inverse, bp:p1:holomorphic-regularity
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p0:stripdata#IsPrimaryOnStrip | blueprint/parts/p4-measure.tex#step:p4:tr-periodic@L577-L577 | K(theta+k)=K(theta)+(k,0)
EDGE: step:p4:h1-holo | blueprint/parts/p4-measure.tex#step:p4:tr-periodic@L579-L580 | Missing direct use of Hamiltonian periodicity; use the part of H1 that has no epsilon<=1 premise
EDGE: step:p4:tr-inverse | blueprint/parts/p4-measure.tex#step:p4:tr-periodic@L579-L580 | Periodic Gram inverse on the nonsingular domain is used in the frame
EDGE: bp:p1:holomorphic-regularity | blueprint/parts/p4-measure.tex#step:p4:tr-periodic@L577-L580 | Differentiation of primarity and of periodic derivatives supplies periodic L and DN
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: step:p4:stab-gram
KIND: step
TITLE: Gram matrix
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:stab-gram@L624-L629
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:stab-gram@L624-L629
CONTRACT_ID: step:p4:stab-gram
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: L=L^0+D Delta, |D Delta|<=a, 12na<=1
SOURCE_QUANTIFIERS: theta in T_{rho-delta}
SOURCE_CONCLUSION: (c): |G_K-Id|<=5na<=1/2, G_K invertible, |G^{-1}|<=2, |G^{-1}-Id|<=10na; torsion-regular applies on T_{rho-delta}
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p4:matrix-norms, bp:p1:neumann, bp:p4:torsion-regular, step:p4:stab-cauchy, bp:p4:unperturbed, step:p4:stab-small, step:p4:stab-ball
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p4:matrix-norms | blueprint/parts/p4-measure.tex#step:p4:stab-gram@L625-L625 | transpose and L^0 norms
EDGE: bp:p1:neumann | blueprint/parts/p4-measure.tex#step:p4:stab-gram@L627-L627 | Neumann series with A=Id
EDGE: bp:p4:torsion-regular | blueprint/parts/p4-measure.tex#step:p4:stab-gram@L629-L629 | applies once det G_K!=0
EDGE: step:p4:stab-cauchy | blueprint/parts/p4-measure.tex#step:p4:stab-gram@L625-L625 | a and  L <=2
EDGE: bp:p4:unperturbed | blueprint/parts/p4-measure.tex#step:p4:stab-gram@L626-L626 | G_{K^0}=Id, L^0
EDGE: step:p4:stab-small | blueprint/parts/p4-measure.tex#step:p4:stab-gram@L626-L626 | 5na<=1/2
EDGE: step:p4:stab-ball | blueprint/parts/p4-measure.tex#step:p4:stab-gram@L629-L629 | The application of torsion-regular needs K(T_{rho-delta}) subset D, supplied by the neighbourhood step
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: step:p4:stab-frame
KIND: step
TITLE: Normal frame
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:stab-frame@L631-L636
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:stab-frame@L631-L636
CONTRACT_ID: step:p4:stab-frame
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: (c); a,b; |L|<=2
SOURCE_QUANTIFIERS: theta
SOURCE_CONCLUSION: |N-N^0|<=12na, |N|<=2, |d_omega G|<=8nb, |d_omega G^{-1}|<=32nb, |d_omega N|<=66nb
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p4:torsion-regular, step:p4:stab-gram, step:p4:stab-cauchy, bp:p4:matrix-norms, bp:p4:unperturbed, step:p4:stab-small
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p4:torsion-regular | blueprint/parts/p4-measure.tex#step:p4:stab-frame@L633-L633 | derivative formula (a) for G^{-1}
EDGE: step:p4:stab-gram | blueprint/parts/p4-measure.tex#step:p4:stab-frame@L632-L632 | bounds on G^{-1}
EDGE: step:p4:stab-cauchy | blueprint/parts/p4-measure.tex#step:p4:stab-frame@L632-L632 |  L-L^0 <=a,  d_omega L <=b
EDGE: bp:p4:matrix-norms | blueprint/parts/p4-measure.tex#step:p4:stab-frame@L632-L632 |  Omega_0 =1, transpose norms
EDGE: bp:p4:unperturbed | blueprint/parts/p4-measure.tex#step:p4:stab-frame@L632-L632 | N^0,L^0
EDGE: step:p4:stab-small | blueprint/parts/p4-measure.tex#step:p4:stab-frame@L632-L636 | The conclusion |N|<=2 uses |N0|=1 and 12na<=1
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: step:p4:stab-torsion
KIND: step
TITLE: Torsion
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:stab-torsion@L649-L652
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:stab-torsion@L649-L652
CONTRACT_ID: step:p4:stab-torsion
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: T=N^T Omega_0 X_N; frame and X_N bounds
SOURCE_QUANTIFIERS: theta
SOURCE_CONCLUSION: (d) first part: |T-T^0|<=c_T eta delta^{-2}
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p4:matrix-norms, step:p4:stab-frame, step:p4:stab-xn, bp:p4:torsion-regular, bp:p4:unperturbed, bp:p4:parameters
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p4:matrix-norms | blueprint/parts/p4-measure.tex#step:p4:stab-torsion@L651-L651 | norm calculus
EDGE: step:p4:stab-frame | blueprint/parts/p4-measure.tex#step:p4:stab-torsion@L650-L650 |  N-N^0 
EDGE: step:p4:stab-xn | blueprint/parts/p4-measure.tex#step:p4:stab-torsion@L650-L650 |  X_N-X_N^0 ,  X_N <=M+1
EDGE: bp:p4:torsion-regular | blueprint/parts/p4-measure.tex#step:p4:stab-torsion@L650-L650 | T=N^T Omega_0 X_N
EDGE: bp:p4:unperturbed | blueprint/parts/p4-measure.tex#step:p4:stab-torsion@L650-L650 | T^0 from N^0, X_N^0
EDGE: bp:p4:parameters | blueprint/parts/p4-measure.tex#step:p4:stab-torsion@L652-L652 | The final coefficient comparison uses the definition c_T=304n^3(M+W_inf+1)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
ITEM: bp:p4:SA
KIND: display
SOURCE: blueprint/parts/p4-measure.tex#bp:p4:SA@L438-L443
DISPOSITION: NODE bp:p4:SA
REASON: explicit local hypothesis package and definitions used throughout the applications
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sol-review-r4
REVIEWER: -
```

```text
ITEM: bp:p4:data
KIND: definition
SOURCE: blueprint/parts/p4-measure.tex#bp:p4:data@L138-L163
DISPOSITION: NODE bp:p4:data
REASON: fixed HEAD data, Hamiltonian hbold, shrunken domains and basic constants
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sol-review-r4
REVIEWER: -
```

Source observations: at L96 the text says “The slab is open, hence measurable.” The set in the lemma includes the closed cube constraint and need not be open. The intended measurability follows by intersecting the open unrestricted slab with the closed cube, but this is a source wording defect to report, not a graph repair. The substantive Fubini input is separately exposed above. No pinned-paper erratum was newly verified; the source papers are provenance-only under SPEC. No mathematical deviation was introduced.

Validation: `sha256sum -c docs/graph/K/CORPUS.sha256` returned five `OK` lines (Parts 0-4). Report validation checks one table row per assigned packet node, one replacement block per failed node, and source ranges within the assigned corpus. Source lint, builds and `#print axioms` are not applicable to this source-only review and were not run, as required by REVIEW-BRIEF.

Additional replacement fragment for the parameter contract:

```text
NODE: bp:p4:parameters
KIND: definition
TITLE: Parameters of the applications of G1 and G2
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:parameters@L406-L436
PROOF_SOURCE: -
CONTRACT_ID: bp:p4:parameters
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: fixed HEAD data; all tuple side conditions are checked at L415-L416; G1 and G2 are dependencies supplying the constants
SOURCE_QUANTIFIERS: tuples for G1 (two) and G2 (one); constants C_1^(i),C_2^(i),c_G from G1,G2
SOURCE_CONCLUSION: defines sigma_K=sigma_B=2+mu, sigma_T=4L_++mu, gammabar=1, A_0..A_4, lambda_*, c_T, eta_*(delta), c_*=min of eight numbers; all depend only on the data; c_*>0 is fixed before f, epsilon and gamma
CONSTANT_SCOPE: C_1^(i),C_2^(i) are the constants of G1 for the stated tuple, c_G of G2; all derived constants depend only on the data
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p0:g1, bp:p0:g2, bp:p4:data, bp:p4:derivative-bounds, bp:p4:freq-map
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p0:g1 | blueprint/parts/p4-measure.tex#bp:p4:parameters@L411-L411 | G1 tuples and constants C_1,C_2
EDGE: bp:p0:g2 | blueprint/parts/p4-measure.tex#bp:p4:parameters@L414-L414 | G2 tuple and constant c_G
EDGE: bp:p4:data | blueprint/parts/p4-measure.tex#bp:p4:parameters@L409-L409 | mu, s, L_+, delta_*
EDGE: bp:p4:derivative-bounds | blueprint/parts/p4-measure.tex#bp:p4:parameters@L419-L419 | H_3,F_1,F_2,M
EDGE: bp:p4:freq-map | blueprint/parts/p4-measure.tex#bp:p4:parameters@L425-L425 | W_inf, Lambda_g
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

Replacement coverage fragment:

```text
ITEM: p4:source-L48
KIND: citation
SOURCE: blueprint/parts/p4-measure.tex#source@L48-L51
DISPOSITION: EXCLUDED
REASON: provenance note (Pos01); the blueprint proves the two cited estimates in Lemmas lattice-sum and slab
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4a
REVIEWER: -
```

Final report checks: 63 node rows; 45 PASS, 18 FAIL; all failed nodes have exactly one full replacement; DEPS/EDGE sets and source ranges valid.
