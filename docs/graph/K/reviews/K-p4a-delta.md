# K-p4a delta review

Reviewer: sol-review-r2. Verdict: **FAIL**.

Reviewed every r2-assigned record against the current packet, its first review by sol-review-r4, and the raw source. Each row is a local record verdict; PASS of a faithfully exposed SOURCE_GAP does not close its mathematics. No premise was repaired or added to a source theorem.

Read the governing instructions, current SPEC (including the new reachability rule), REVIEW-BRIEF and DELTA-BRIEF. Re-read Part 4 L1-L1303, covering all assigned statement/proof and EDGE consumer spans. Also checked the relevant Part 0 contracts, Part 1 results, all 25 track-K frozen definitions/theorem statements and manifest identity fields. No implementation or provider module was read.

| Record ID | Kind | Verdict | Raw Part 4 spans re-read (statement; proof, or coverage) | Reason / resolution |
|---|---|---|---|---|
| `step:p4:slab-fubini` | node | PASS | L95-L101; L95-L101 | First failure resolved: measurable-indicator Fubini is exposed as SOURCE_GAP, without a false E8 edge or new external. |
| `step:p4:g3-union` | node | PASS | L114-L120; L114-L120 | Bounding-cube dependency is present at the union inclusion; the construction precedes alpha. |
| `bp:p4:data` | node | FAIL | L138-L163; - | D1: The expanded L138-L163 source/definition is now covered, but the new frozen-realHamiltonian identification at L151-L152 has no edge; the named strip/action-domain definitions at L158 are also absent. Add these direct definition uses. |
| `step:p4:db-vectorfield` | node | FAIL | L210-L222; L210-L222 | D2: Added formula/regularity dependencies resolve the original edge failures, but the source fields still drop the explicit epsilon<=1 condition used for (d) at L219-L220. |
| `bp:p4:freq-map` | node | FAIL | L225-L237; L239-L272 | D3: The derivative-estimate premise was removed correctly. However, the replacement fails to guard (ii) by I in U and does not state that domain in its quantifiers. Preserve the separate domains of (ii)-(v), and the direct use of the fixed data/delta_*. |
| `step:p4:unp-torsion` | node | PASS | L376-L384; L376-L384 | Regularity and E6 now supply continuity, integrability and the constant-term average. |
| `bp:p4:parameters` | node | PASS | L406-L436; - | G1/G2 supply constants as dependencies; tuple side conditions and c_*>0/pre-perturbation scope are retained. |
| `bp:p4:smallness` | node | FAIL | L445-L456; L458-L466 | D4: The SA edge resolves the first finding. SOURCE_CONCLUSION still omits eta_*(s/16) from (s3), the last inequality of (s7), and leaves (s2),(s4)-(s6) as names rather than their inequalities. The complete conclusion is supplied below. |
| `step:p4:small-proof` | node | PASS | L459-L465; L459-L465 | SA dependency is explicit and the minimum-entry proof is faithfully recorded. |
| `bp:p4:apply` | node | PASS | L468-L474; L476-L496 | SA dependency explicit; frozen output strip, margins and closeness are retained. |
| `step:p4:apply-g1` | node | PASS | L477-L495; L477-L495 | H1-H5, error and smallness are discharged by the listed inputs; no added G1 premise. |
| `step:p4:mn-rowsum` | node | PASS | L536-L543; L536-L543 | Operator/matrix norms and E6 dependencies now match the actual proof. |
| `step:p4:tr-inverse` | node | PASS | L564-L568; L564-L568 | Regularity and holomorphic-inverse now supply (a) on the nonsingular open strip. |
| `step:p4:tr-torsion` | node | PASS | L570-L574; L570-L574 | Uses h1-holo rather than the epsilon<=1 H1 wrapper; inverse guard, regularity and frozen products are supplied. |
| `step:p4:tr-periodic` | node | PASS | L576-L580; L576-L580 | Hamiltonian periodicity uses h1-holo without an extra epsilon<=1 premise; inverse guard and derivative regularity are explicit. |
| `step:p4:stab-gram` | node | PASS | L624-L629; L624-L629 | stab-ball now supplies range inclusion before applying torsion-regular. |
| `step:p4:stab-frame` | node | PASS | L631-L636; L631-L636 | stab-small now supplies 12na<=1 for the N bound. |
| `step:p4:stab-torsion` | node | PASS | L649-L652; L649-L652 | The definition of c_T now appears as a direct dependency in the final coefficient comparison. |
| `bp:p4:SA` | node | PASS | L438-L443; - | Local package is explicitly represented with the correct quantifier order; no global assumption is created. |
| `bp:p4:data` | coverage | PASS | L138-L163 | Expanded annotation/definition span and its disposition resolve the first-review finding. |
| `p4:source-L48` | coverage | PASS | L48-L51 | Expanded annotation/definition span and its disposition resolve the first-review finding. |
| `bp:p4:SA` | coverage | PASS | L438-L443 | Expanded annotation/definition span and its disposition resolve the first-review finding. |

All assigned coverage records PASS. In particular the source-gap annotations are fully inventoried; their PASS concerns the cited-paper omission addressed in the blueprint, not a blanket certification of every analytic/measure input.

The writer adjudication excluding normalized-unique and its steps agrees with Part 4 L744-L777: L776-L777 explicitly says it is unused, and L913-L945 applies G2 directly instead. Part 4 mixed-difference has its own proof at L809-L817, so the Part 1 mixed-difference comparison at L810 is not a consumer edge. The Part 1 route-kind and Part 2 V-item adjudications are outside r2's delta assignment.

Cross-part targets re-read: Part 0 conventions/definitions and G1-G3/HEAD/HEAD-Q contracts; Part 1 L54-L162 (external inputs and matrix norms), L165-L194 (Neumann), L215-L225 (regularity), L284-L304 (analyticity), L392-L440 (inverse, increments and Taylor), L462-L468 (Cauchy-open), L505-L562 (periodic boundedness, identity, increments, Cauchy-strip), L634-L705 (averages), L875-L885 (cohomological statement), L1023-L1100 (real restrictions/Hamiltonian fields), L1106-L1215 (Lipschitz image, products, McShane and lipeomorphisms). Part 4 prerequisite nodes were checked at their displayed source and hypothesis suppliers, including H1-holo L321-L327, STAB L583-L665, and the nonempty original-domain argument L1270-L1291.

Full replacement blocks for failed records follow. These are review proposals only; no packet or corpus file has been edited. The `¦` characters in EDGE rationales preserve the field separator convention.

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
DEPS: bp:p1:cauchy-open, bp:p0:nearlyintegrable#realHamiltonian, bp:p0:domains#complexStrip, bp:p0:domains#actionNbhd
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:cauchy-open | blueprint/parts/p4-measure.tex#bp:p4:data@L160-L160 | cbar uses the constants c(m,j) of Cauchy-open
EDGE: bp:p0:nearlyintegrable#realHamiltonian | blueprint/parts/p4-measure.tex#bp:p4:data@L151-L152 | the expanded source range explicitly identifies the frozen real Hamiltonian
EDGE: bp:p0:domains#complexStrip | blueprint/parts/p4-measure.tex#bp:p4:data@L157-L158 | the shrunken phase domains use the complex strips
EDGE: bp:p0:domains#actionNbhd | blueprint/parts/p4-measure.tex#bp:p4:data@L158-L158 | B_{r0/2} and B_{3r0/4} are the action neighbourhoods
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4a+sol-review-r4
REVIEWER: sol-review-r2
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
SOURCE_HYPOTHESES: phi holomorphic on the open domain in question; Cauchy bounds from step:p4:db-cauchy; additionally epsilon<=1 only for conclusion (d) with phi=hbold
SOURCE_QUANTIFIERS: the general holomorphic phi; specialize to phi=f for (c), and to phi=hbold with epsilon<=1 for (d)
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
EXTRACTOR: sonnet-extract-K-p4a+sol-review-r4
REVIEWER: sol-review-r2
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
SOURCE_QUANTIFIERS: fixed HEAD data; U={I in R^n : iota I in B_{r0}}, g=frequencyMap h; (ii),(iii) for every I in U; (iv) for every real I with iota I in B_{r0/2}; (v) for every pair I,J in B
SOURCE_CONCLUSION: (i) U open and closure B subset U; (ii) for I in U, all partial_i h(iota I) are real and g(I)=(partial_i h(iota I))_i; (iii) g differentiable on U with Dg(I) the real symmetric Hessian there; (iv) for iota I in B_{r0/2}, |g(I)|<=H_1 and |Hessian h(iota I)|<=H_2; (v) g is Lambda_g-Lipschitz on B, Lambda_g=max(H_2,2H_1/delta_*), and |omega|<=W_inf=H_1 for omega in g(B)
CONSTANT_SCOPE: Lambda_g, W_inf depend only on the data
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p4:fm-domain, step:p4:fm-gradient, step:p4:fm-hessian, step:p4:fm-bounds, step:p4:fm-lipschitz, bp:p0:nearlyintegrable#frequencyMap, bp:p4:data
ROUTES: -
ROUTE_FOR: -
EDGE: step:p4:fm-domain | blueprint/parts/p4-measure.tex#bp:p4:freq-map@L240-L240 | proof step of this result
EDGE: step:p4:fm-gradient | blueprint/parts/p4-measure.tex#bp:p4:freq-map@L244-L244 | proof step of this result
EDGE: step:p4:fm-hessian | blueprint/parts/p4-measure.tex#bp:p4:freq-map@L254-L254 | proof step of this result
EDGE: step:p4:fm-bounds | blueprint/parts/p4-measure.tex#bp:p4:freq-map@L262-L262 | proof step of this result
EDGE: step:p4:fm-lipschitz | blueprint/parts/p4-measure.tex#bp:p4:freq-map@L267-L267 | proof step of this result
EDGE: bp:p0:nearlyintegrable#frequencyMap | blueprint/parts/p4-measure.tex#bp:p4:freq-map@L226-L226 | g is the frozen frequencyMap h
EDGE: bp:p4:data | blueprint/parts/p4-measure.tex#bp:p4:freq-map@L226-L235 | fixed h,B,r0 and the defined delta_* enter the domain and Lipschitz constant
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4a+sol-review-r4
REVIEWER: sol-review-r2
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
SOURCE_CONCLUSION: (s1) epsilon<=1 and L_+ F_2 epsilon<=1/2; (s2) C_1^(1) F_1 epsilon/(gamma^4 (s/4)^(4tau))<=1/2; (s3) eta_0<=eta_*(s/32)<=eta_*(s/16), eta_0<=mu, 16n eta_0/s<=1/2; (s4) C_1^(2) A_1 lambda_* epsilon/(gamma^4 (3s/32)^(4tau))<=1/2; (s5) (2A_0+C_2^(2) A_1 lambda_* (3s/32)^(-2tau)) epsilon gamma^(-2)<=c_G gamma^2 (s/16)^(2tau); (s6) (A_3 Lambda_g+A_4) epsilon gamma^(-4)<=1/4; (s7) eta_0<=gamma^2/2<=min(gamma,1)/2
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
EXTRACTOR: sonnet-extract-K-p4a+sol-review-r4
REVIEWER: sol-review-r2
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

Validation: 19 assigned nodes and 3 assigned coverage items have exactly one row each; 4 failed nodes have complete replacement blocks; replacement DEPS and EDGE target sets match. All five corpus SHA-256 pins match. No Lean, build, source-lint, #print axioms or state-changing git command was run, under DELTA-BRIEF's source-only restrictions. Axioms are not applicable to this graph-only change.

No new pinned-paper erratum is asserted; the retained SOURCE_GAP notes are corpus-input accounting, not independently verified paper errata. No mathematical deviation was introduced.

Input identity snapshot at delta handoff:

```text
1ff6410ee7457ae6b4e9b906f853423a72ee99385e2510cca6a7dc99de15032e  docs/graph/K/SPEC.md
3e7158c69c70cd1a96dbb1ce62297aebfdbc81a12b1a17388a4c055b3a557d31  docs/graph/K/packets/K-p4a.nodes.md
50172b13e62bd7b35649eef6d69e7700881dfd2377a1bb47b427dd9a767f72d7  docs/graph/K/packets/K-p4a.coverage.md
403dbf9a7ee4cb0eec4d1af63c324903e4113778a3f9e45e8a046854ef37adce  blueprint/parts/p4-measure.tex
```

Report-structure receipt:

```text
K-p4a: 22 of 22 assigned-record rows; 4 complete replacements; required fields and DEPS/EDGE checks PASS.
```
