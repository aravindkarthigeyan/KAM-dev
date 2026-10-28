# P-p14a1 topology review

Reviewer: sol-review-P-n. Marker: rev-P-n.

Verdict: **FAIL**. Reviewed all 45 nodes and 55 coverage items: 28 node PASS, 17 node FAIL; all 55 coverage items PASS. This is a source-topology review, not a proof-status verdict.

Read Part 14a L1-156, the cited Part 0 definitions and AMD statement, Part 6 planar/ODE/reconstruction statements, and the imported track-N Part 3 statements at their source locators. Applied SPEC including its current writer rulings. Manifest identity and the frozen AMD declaration type agree with the root statement; no anchor identity changes are proposed.

## Node verdicts

All spans below are in blueprint-P/parts/p14a-amd-expsafe.tex; statement and proof spans are both listed. Prerequisites were reread at their own statement locators.

| Node ID | Verdict | Source spans reread | Finding |
|---|---|---|---|
| bpP:p14:x-planar | PASS | L28-L28 | Accurate source fields and direct uses; no material defect found. |
| bpP:p14:x-top | PASS | L29-L29 | Accurate source fields and direct uses; no material defect found. |
| bpP:p14:x-calc | PASS | L30-L30 | Accurate source fields and direct uses; no material defect found. |
| bpP:p14:x-cx | PASS | L31-L31 | Accurate source fields and direct uses; no material defect found. |
| bpP:p14:x-id | PASS | L32-L32 | Accurate source fields and direct uses; no material defect found. |
| bpP:p14:x-hol | PASS | L33-L33 | Accurate source fields and direct uses; no material defect found. |
| bpP:p14:elements | PASS | L42-L53, L54-L64 | Accurate source fields and direct uses; no material defect found. |
| stepP:p14:el-a | PASS | L55-L55 | Accurate source fields and direct uses; no material defect found. |
| stepP:p14:el-b | PASS | L56-L59 | Accurate source fields and direct uses; no material defect found. |
| stepP:p14:el-c | FAIL | L60-L60 | The dot-product expansion unfolds keplerEccVector directly; its edge is missing. |
| stepP:p14:el-d | PASS | L61-L61 | Accurate source fields and direct uses; no material defect found. |
| stepP:p14:el-e | FAIL | L62-L62 | The implication from E < 0 unfolds keplerEnergy; DEPS is empty. |
| stepP:p14:el-f | PASS | L63-L63 | Accurate source fields and direct uses; no material defect found. |
| bpP:p14:ecc-bound | PASS | L66-L69, L70-L73 | Accurate source fields and direct uses; no material defect found. |
| stepP:p14:eb-sum | PASS | L71-L71 | Accurate source fields and direct uses; no material defect found. |
| stepP:p14:eb-ecc | PASS | L72-L72 | Accurate source fields and direct uses; no material defect found. |
| bpP:p14:geometry | PASS | L75-L84, L85-L91 | Accurate source fields and direct uses; no material defect found. |
| stepP:p14:geo-a | FAIL | L86-L86 | Missing direct section-data edge for r_out supplies the action interval and B supplies A_1 and e_*. |
| stepP:p14:geo-b | FAIL | L87-L87 | Missing direct section-data edge for the fixed box fields l, u, m, e_*, d and R in the radial inequalities. |
| stepP:p14:geo-c | FAIL | L88-L88 | Missing direct section-data edge for the fixed box fields and physical-length convention in the pair-distance inequalities. The upper bound also directly uses the physical triangle inequality, absent from ext-tri. |
| stepP:p14:geo-d | FAIL | L89-L89 | Missing direct section-data edge for the fixed box mass m_i and distance d in the momentum bound. |
| stepP:p14:geo-k | FAIL | L90-L90 | R_out subset K_1 uses (b)-(d) directly, but none is an edge; boundedness in the ambient max norm also needs the physical-length comparison. |
| bpP:p14:closure | PASS | L93-L99, L100-L104 | Accurate source fields and direct uses; no material defect found. |
| stepP:p14:cl-a | FAIL | L101-L101 | Missing direct section-data edge for r_out and the fixed masses in its defining continuous functions. |
| stepP:p14:cl-b | FAIL | L102-L102 | Missing direct section-data edge for the fixed box fields l, u, m, e_* and A_1 in the uniform margins. |
| stepP:p14:cl-c | PASS | L103-L103 | Accurate source fields and direct uses; no material defect found. |
| bpP:p14:moving-ode | FAIL | L108-L112, L113-L116 | The symplecticForm edge is not a direct use at L109. The negative-H clause must use the generic Hamiltonian-solution predicate: IsMovingSolutionOn fixes H_mov. |
| stepP:p14:mo-reg | FAIL | L114-L114 | Missing direct section-data edge for w is the collision-free phase domain and H has G = m_0 = 1. |
| stepP:p14:mo-eq | FAIL | L115-L115 | Missing direct section-data edge for w is the phase preimage of NoColl, with no momentum restriction. The negative-H equivalence needs the generic predicate, since IsMovingSolutionOn fixes H_mov. |
| bpP:p14:ang-mom | PASS | L118-L120, L121-L125 | Accurate source fields and direct uses; no material defect found. |
| stepP:p14:am-eq | FAIL | L122-L122 | Missing direct section-data edge for the moving Hamiltonian is specialized at G = m_0 = 1. |
| stepP:p14:am-der | FAIL | L123-L123 | Expanding J(z(.)) as the sum of crosses directly unfolds totalMomentum; its edge is missing. |
| stepP:p14:am-const | PASS | L124-L124 | Accurate source fields and direct uses; no material defect found. |
| bpP:p14:amd | PASS | L129-L133, L134-L151 | Accurate source fields and direct uses; no material defect found. |
| stepP:p14:amd-max | PASS | L136-L136 | Accurate source fields and direct uses; no material defect found. |
| stepP:p14:amd-fwd | PASS | L137-L138 | Accurate source fields and direct uses; no material defect found. |
| stepP:p14:amd-margin | PASS | L139-L143 | Accurate source fields and direct uses; no material defect found. |
| stepP:p14:amd-close | FAIL | L144-L144 | The extension from the contradiction branch to every forward time reapplies StoppedActionBound on [0,t]; the direct edge is missing. |
| stepP:p14:amd-bwd | FAIL | L145-L145 | Missing direct section-data edge for r_delta is formed with the fixed box margins, and R_out is the exit domain. |
| stepP:p14:amd-cont | FAIL | L146-L146 | SOURCE_CONCLUSION repeats the source sign typo T_- > -T, incompatible with the asserted interval inclusion. Report and explicitly annotate the correction T_- < -T. |
| stepP:p14:amd-a | PASS | L147-L147 | Accurate source fields and direct uses; no material defect found. |
| stepP:p14:amd-b | PASS | L148-L148 | Accurate source fields and direct uses; no material defect found. |
| stepP:p14:amd-c | PASS | L149-L149 | Accurate source fields and direct uses; no material defect found. |
| stepP:p14:amd-d | PASS | L150-L150 | Accurate source fields and direct uses; no material defect found. |
| bpP:p14:conv#data | PASS | L5-L24 | Accurate source fields and direct uses; no material defect found. |

## Coverage

No failed coverage items (55/55 PASS); therefore the failed-item table is empty.

all other coverage items PASS

Checked the labelled statements and steps, heading exclusions, the root-source attribution, both section-data prose ranges and the external/citation lead-ins. The L153-155 uses remark is administrative; it is not an additional proof input. The new section-data node covers the consumed conventions at L5-7 and L20-24. No missing statement or substantive proof unit was found.

## Conditional applications and scope

The single-planet calculations use positive mass, positive radius, negative Kepler energy and positive cross supplied by ProgradeElliptic. Geometry uses the admissibility inequalities (B1)-(B4); closure keeps uniform negative energy and positive angular momentum before passing to the limit. Physical planar lengths remain distinct from the ambient max norm; the replacement for geo-k records the comparison used for boundedness.

For the ODE layer, W is open, H is smooth on W and F is C1 there. Initial data lie in W by inner-to-outer inclusion and geometry. The forward first-exit proof applies the stopped bound only to genuine original-H solutions on [0,s] containing zero and staying in the outer region. The backward proof applies that same original-H stopped bound on [-s,0]; time reversal is used for the generic exit theorem, not to assume a stopped bound for -H. Compact continuation uses K_1 compact inside W. Uniqueness uses the open maximal interval and intersections with competitors on open convex intervals containing zero; endpoint derivatives remain two-sided. Reconstruction retains G = m_0 = 1.

A parent node is not failed merely because a child record needs an edge repair. In particular the AMD root retains precisely its stopped-input hypotheses and conclusions (a)-(d); no extra dynamical premise is proposed.

## Suspected blueprint defects

1. **Wrong left-endpoint sign**, blueprint-P/parts/p14a-amd-expsafe.tex L146: `likewise $T_->-T$. Hence $[-T,T]\subset(T_-,T_+)$`. The inclusion requires T_- < -T. Applying compact continuation to the reversed solution gives the latter inequality. The complete replacement explicitly annotates this source correction; the blueprint and frozen files are not edited.

2. **Ambiguous negative-H predicate**, L111 and L115: `The same holds for $-H$ and $-F$` and `The statement for $-H$`. The frozen IsMovingSolutionOn definition hardcodes the positive moving Hamiltonian; it cannot literally become a predicate for -H by substituting an absent H parameter. The intended negative-field assertion is valid for the generic IsHamiltonianSolutionOn(-H,univ,...) together with NoCollision, which the replacements spell out. No negative-H stopped premise is introduced.

## Replacements for slice P-p14a1

Each fenced fragment is a complete replacement node. Unaffected fields, identity metadata and status fields are preserved verbatim. Only the failing dependency/EDGE fields, negative-H conclusions and explicitly annotated endpoint-sign conclusion are changed.

### stepP:p14:el-c

The dot-product expansion unfolds keplerEccVector directly; its edge is missing.

```text
NODE: stepP:p14:el-c
KIND: step
TITLE: (c)
STATEMENT_SOURCE: blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:el-c@L60-L60
PROOF_SOURCE: blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:el-c@L60-L60
CONTRACT_ID: stepP:p14:el-c
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: items (a), (b); the data of the lemma
SOURCE_QUANTIFIERS: fixed (m,q,p)
SOURCE_CONCLUSION: q.e-vector = (s - 1/r) r^2 - (q.p)^2/m^2 = C^2/m^2 - r = a(1-e^2) - r
CONSTANT_SCOPE: none (constants as fixed in the enclosing proof)
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p14:el-a, stepP:p14:el-b, bpP:p14:x-planar, bpP:p0:d25-kepler#keplerEccVector
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p14:el-a | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:el-c@L60-L60 | C^2 = Lambda^2(1-e^2) = m^2 a(1-e^2) uses Lambda^2 = m^2 a
EDGE: stepP:p14:el-b | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:el-c@L60-L60 | C^2 = Lambda^2(1-e^2) is item (b)
EDGE: bpP:p14:x-planar | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:el-c@L60-L60 | Lagrange identity for (q.p)^2
EDGE: bpP:p0:d25-kepler#keplerEccVector | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:el-c@L60-L60 | expand q.e-vector using the defining eccentricity-vector formula
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p14a1
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p14:el-e

The implication from E < 0 unfolds keplerEnergy; DEPS is empty.

```text
NODE: stepP:p14:el-e
KIND: step
TITLE: (e)
STATEMENT_SOURCE: blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:el-e@L62-L62
PROOF_SOURCE: blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:el-e@L62-L62
CONTRACT_ID: stepP:p14:el-e
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: E < 0, m > 0
SOURCE_QUANTIFIERS: fixed (m,q,p)
SOURCE_CONCLUSION: ¦p¦^2/(2m) < m/r, i.e. ¦p¦^2 < 2m^2/r
CONSTANT_SCOPE: none (constants as fixed in the enclosing proof)
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p0:d25-kepler#keplerEnergy
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p0:d25-kepler#keplerEnergy | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:el-e@L62-L62 | E = physical kinetic energy minus m/r, so E < 0 gives the displayed inequality
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p14a1
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p14:geo-a

Missing direct section-data edge for r_out supplies the action interval and B supplies A_1 and e_*.

```text
NODE: stepP:p14:geo-a
KIND: step
TITLE: (a)
STATEMENT_SOURCE: blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:geo-a@L86-L86
PROOF_SOURCE: blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:geo-a@L86-L86
CONTRACT_ID: stepP:p14:geo-a
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: z in R_out; admissibility (B2)
SOURCE_QUANTIFIERS: fixed B, z; any i
SOURCE_CONCLUSION: l_i^2/m_i^2 < a_i < u_i^2/m_i^2 and e_i < e_*
CONSTANT_SCOPE: none (constants as fixed in the enclosing proof)
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p14:ecc-bound, bpP:p0:d25-box#Admissible, bpP:p0:d25-kepler#keplerAction, bpP:p0:d25-lowamd#LowAMDRegion, bpP:p14:conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p14:ecc-bound | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:geo-a@L86-L86 | e_i < e_* is Lemma ecc-bound with A = A_1 (hypothesis (B2))
EDGE: bpP:p0:d25-box#Admissible | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:geo-a@L86-L86 | (B2): 0 < e_* < 1 and A_1 <= l_i(1 - sqrt(1-e_*^2))
EDGE: bpP:p0:d25-kepler#keplerAction | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:geo-a@L86-L86 | Lambda_i = m_i sqrt(a_i) in (l_i,u_i) gives the axis bounds
EDGE: bpP:p0:d25-lowamd#LowAMDRegion | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:geo-a@L86-L86 | z in R_out gives l_i < Lambda_i < u_i and A(z) < A_1
EDGE: bpP:p14:conv#data | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:geo-a@L86-L86 | R_out supplies the action interval and B supplies A_1 and e_*
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p14a1
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p14:geo-b

Missing direct section-data edge for the fixed box fields l, u, m, e_*, d and R in the radial inequalities.

```text
NODE: stepP:p14:geo-b
KIND: step
TITLE: (b)
STATEMENT_SOURCE: blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:geo-b@L87-L87
PROOF_SOURCE: blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:geo-b@L87-L87
CONTRACT_ID: stepP:p14:geo-b
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: item (a); admissibility (B3)
SOURCE_QUANTIFIERS: fixed B, z; any i
SOURCE_CONCLUSION: d <= ¦q_i¦ <= R and a_i(1-e_i) <= ¦q_i¦ <= a_i(1+e_i)
CONSTANT_SCOPE: none (constants as fixed in the enclosing proof)
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p14:elements, stepP:p14:geo-a, bpP:p0:d25-box#Admissible, bpP:p14:conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p14:elements | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:geo-b@L87-L87 | a_i(1-e_i) <= ¦q_i¦ <= a_i(1+e_i) is Lemma elements (d)
EDGE: stepP:p14:geo-a | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:geo-b@L87-L87 | axis and eccentricity bounds of (a)
EDGE: bpP:p0:d25-box#Admissible | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:geo-b@L87-L87 | (B3): d <= (l_i/m_i)^2(1-e_*) and (u_i/m_i)^2(1+e_*) <= R
EDGE: bpP:p14:conv#data | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:geo-b@L87-L87 | the fixed box fields l, u, m, e_*, d and R in the radial inequalities
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p14a1
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p14:geo-c

Missing direct section-data edge for the fixed box fields and physical-length convention in the pair-distance inequalities. The upper bound also directly uses the physical triangle inequality, absent from ext-tri.

```text
NODE: stepP:p14:geo-c
KIND: step
TITLE: (c)
STATEMENT_SOURCE: blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:geo-c@L88-L88
PROOF_SOURCE: blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:geo-c@L88-L88
CONTRACT_ID: stepP:p14:geo-c
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: items (a), (b); admissibility (B4)
SOURCE_QUANTIFIERS: fixed B, z; i<j, then i != j
SOURCE_CONCLUSION: ¦q_j¦ - ¦q_i¦ >= d; ¦q_i - q_j¦ >= d and <= 2R; NoColl(q)
CONSTANT_SCOPE: none (constants as fixed in the enclosing proof)
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p14:geo-a, stepP:p14:geo-b, bpP:p0:d25-box#Admissible, bpP:p6:ext-tri, bpP:p0:nocoll#NoCollision, bpP:p14:conv#data, bpP:p6:plane
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p14:geo-a | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:geo-c@L88-L88 | axis and eccentricity bounds in the chain a_j(1-e_j) - a_i(1+e_i) > ...
EDGE: stepP:p14:geo-b | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:geo-c@L88-L88 | ¦q_j¦ - ¦q_i¦ >= a_j(1-e_j) - a_i(1+e_i) uses the radial bounds of (b); also ¦q_i¦ + ¦q_j¦ <= 2R
EDGE: bpP:p0:d25-box#Admissible | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:geo-c@L88-L88 | (B4): (u_i/m_i)^2(1+e_*) + d <= (l_j/m_j)^2(1-e_*)
EDGE: bpP:p6:ext-tri | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:geo-c@L88-L88 | reverse triangle inequality and the triangle inequality
EDGE: bpP:p0:nocoll#NoCollision | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:geo-c@L88-L88 | conclusion NoColl(q)
EDGE: bpP:p14:conv#data | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:geo-c@L88-L88 | the fixed box fields and physical-length convention in the pair-distance inequalities
EDGE: bpP:p6:plane | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:geo-c@L88-L88 | item (a): physical triangle inequality gives the upper pair-distance bound from (b)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p14a1
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p14:geo-d

Missing direct section-data edge for the fixed box mass m_i and distance d in the momentum bound.

```text
NODE: stepP:p14:geo-d
KIND: step
TITLE: (d)
STATEMENT_SOURCE: blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:geo-d@L89-L89
PROOF_SOURCE: blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:geo-d@L89-L89
CONTRACT_ID: stepP:p14:geo-d
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Lemma elements (e); ¦q_i¦ >= d
SOURCE_QUANTIFIERS: fixed B, z; any i
SOURCE_CONCLUSION: ¦p_i¦ < m_i sqrt(2/d)
CONSTANT_SCOPE: none (constants as fixed in the enclosing proof)
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p14:elements, stepP:p14:geo-b, bpP:p14:conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p14:elements | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:geo-d@L89-L89 | ¦p_i¦^2 < 2m_i^2/¦q_i¦ is Lemma elements (e)
EDGE: stepP:p14:geo-b | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:geo-d@L89-L89 | ¦q_i¦ >= d
EDGE: bpP:p14:conv#data | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:geo-d@L89-L89 | the fixed box mass m_i and distance d in the momentum bound
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p14a1
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p14:geo-k

R_out subset K_1 uses (b)-(d) directly, but none is an edge; boundedness in the ambient max norm also needs the physical-length comparison.

```text
NODE: stepP:p14:geo-k
KIND: step
TITLE: The compact set
STATEMENT_SOURCE: blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:geo-k@L90-L90
PROOF_SOURCE: blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:geo-k@L90-L90
CONTRACT_ID: stepP:p14:geo-k
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: items (b), (c), (d); d, R > 0
SOURCE_QUANTIFIERS: fixed B
SOURCE_CONCLUSION: K_1 is closed and bounded in R^{4n}, hence compact, and K_1 subset W; R_out subset K_1
CONSTANT_SCOPE: none (constants as fixed in the enclosing proof)
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p14:x-top, bpP:p0:nocoll#NoCollision, bpP:p14:conv#data, stepP:p14:geo-b, stepP:p14:geo-c, stepP:p14:geo-d, bpP:p6:plane
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p14:x-top | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:geo-k@L90-L90 | closed and bounded sets of R^N are compact
EDGE: bpP:p0:nocoll#NoCollision | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:geo-k@L90-L90 | K_1 subset W because d > 0 (NoColl)
EDGE: bpP:p14:conv#data | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:geo-k@L90-L90 | the collision-free set W
EDGE: stepP:p14:geo-b | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:geo-k@L90-L90 | radial bounds put R_out inside the q inequalities of K_1
EDGE: stepP:p14:geo-c | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:geo-k@L90-L90 | pair-distance bounds put R_out inside the separation inequalities of K_1
EDGE: stepP:p14:geo-d | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:geo-k@L90-L90 | momentum bounds put R_out inside the p inequalities of K_1
EDGE: bpP:p6:plane | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:geo-k@L90-L90 | item (b): ambient max norm is at most physical length, so the displayed component bounds imply boundedness in R^{4n}
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p14a1
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p14:cl-a

Missing direct section-data edge for r_out and the fixed masses in its defining continuous functions.

```text
NODE: stepP:p14:cl-a
KIND: step
TITLE: (a) Continuity
STATEMENT_SOURCE: blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:cl-a@L101-L101
PROOF_SOURCE: blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:cl-a@L101-L101
CONTRACT_ID: stepP:p14:cl-a
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: B admissible (m_i > 0); definition of LowAMD
SOURCE_QUANTIFIERS: fixed B
SOURCE_CONCLUSION: E_i continuous on {¦q_i¦ > 0}; Lambda_i, A continuous on {¦q_i¦ > 0, E_i < 0}; R_out is open as a finite intersection of preimages of open sets
CONSTANT_SCOPE: none (constants as fixed in the enclosing proof)
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p14:x-top, bpP:p0:d25-kepler#keplerEnergy, bpP:p0:d25-kepler#keplerAxis, bpP:p0:d25-kepler#keplerAction, bpP:p0:d25-cross#planeCross, bpP:p0:d25-amd#physicalAMD, bpP:p0:d25-lowamd#LowAMDRegion, bpP:p14:conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p14:x-top | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:cl-a@L101-L101 | preimages of open sets under continuous maps are open
EDGE: bpP:p0:d25-kepler#keplerEnergy | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:cl-a@L101-L101 | E_i continuous on ¦q_i¦ > 0
EDGE: bpP:p0:d25-kepler#keplerAxis | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:cl-a@L101-L101 | a_i = -m_i/(2E_i) continuous where E_i < 0
EDGE: bpP:p0:d25-kepler#keplerAction | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:cl-a@L101-L101 | Lambda_i = m_i sqrt(a_i)
EDGE: bpP:p0:d25-cross#planeCross | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:cl-a@L101-L101 | C_i is a polynomial
EDGE: bpP:p0:d25-amd#physicalAMD | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:cl-a@L101-L101 | A = sum Lambda_i - sum C_i
EDGE: bpP:p0:d25-lowamd#LowAMDRegion | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:cl-a@L101-L101 | R_out is the finite intersection defining LowAMD(m,l,u,A_1)
EDGE: bpP:p14:conv#data | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:cl-a@L101-L101 | R_out and the fixed masses in its defining continuous functions
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p14a1
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p14:cl-b

Missing direct section-data edge for the fixed box fields l, u, m, e_* and A_1 in the uniform margins.

```text
NODE: stepP:p14:cl-b
KIND: step
TITLE: (b) Uniform margins along the sequence
STATEMENT_SOURCE: blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:cl-b@L102-L102
PROOF_SOURCE: blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:cl-b@L102-L102
CONTRACT_ID: stepP:p14:cl-b
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: z^(k) in R_delta; delta margins
SOURCE_QUANTIFIERS: fixed B, delta, sequence; each k
SOURCE_CONCLUSION: uniform margins: E_i(z^(k)) <= -m_i^3/(2(u_i-delta)^2) < 0 and C_i(z^(k)) > (l_i + delta) sqrt(1-e_*^2) > 0
CONSTANT_SCOPE: epsilon_i = m_i^3/(2(u_i-delta)^2) and c_i = (l_i+delta) sqrt(1-e_*^2) depend only on B and delta (not on k, mu, the sequence)
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p14:elements, bpP:p14:ecc-bound, bpP:p0:d25-box#Admissible, bpP:p14:conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p14:elements | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:cl-b@L102-L102 | E_i = -m_i^3/(2 Lambda_i^2) is Lemma elements (a)
EDGE: bpP:p14:ecc-bound | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:cl-b@L102-L102 | C_i > Lambda_i sqrt(1-e_*^2) is Lemma ecc-bound with A = A_1
EDGE: bpP:p0:d25-box#Admissible | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:cl-b@L102-L102 | (B2) gives the hypothesis A_1 <= l_i(1 - sqrt(1-e_*^2)) of ecc-bound
EDGE: bpP:p14:conv#data | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:cl-b@L102-L102 | the fixed box fields l, u, m, e_* and A_1 in the uniform margins
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p14a1
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### bpP:p14:moving-ode

The symplecticForm edge is not a direct use at L109. The negative-H clause must use the generic Hamiltonian-solution predicate: IsMovingSolutionOn fixes H_mov.

```text
NODE: bpP:p14:moving-ode
KIND: lemma
TITLE: Moving-Sun solutions are solutions of a $C^1$ field on $W$
STATEMENT_SOURCE: blueprint-P/parts/p14a-amd-expsafe.tex#bpP:p14:moving-ode@L108-L112
PROOF_SOURCE: blueprint-P/parts/p14a-amd-expsafe.tex#bpP:p14:moving-ode@L113-L116
CONTRACT_ID: bpP:p14:moving-ode
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: mu in R; H = H_mov (G = m_0 = 1, weights m); F = X_H (Definition hamsymp); J subset R; z: R -> Ph_{2n}
SOURCE_QUANTIFIERS: mu; J; z; then the equivalence
SOURCE_CONCLUSION: W is open, F is C^1 on W and IsMovSolOn(m,mu,J,z) iff IsSolIn F W J z; in particular the N results gen-uniqueness, gen-maximal, gen-continuation-compact and gen-exit apply to IsMovSolOn; for -H, -F is C^1 on W and (IsHamiltonianSolutionOn(-H,univ,J,z) and forall t in J, NoColl(z(t)_1)) iff IsSolIn (-F) W J z, so the same generic N results apply to that negative-H predicate
CONSTANT_SCOPE: none (mu free)
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p14:mo-reg, stepP:p14:mo-eq, bpP:p0:hamsymp#hamiltonianVectorField, bpP:p0:movham#movingHamiltonian, bpP:p0:d25-movsol#IsMovingSolutionOn, bpP:p0:nocoll#NoCollision, N:bpN:p3:gen-sol, bpP:p14:conv#data, bpP:p0:d25-movsol#IsHamiltonianSolutionOn
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p14:mo-reg | blueprint-P/parts/p14a-amd-expsafe.tex#bpP:p14:moving-ode@L114-L114 | proof step of this result
EDGE: stepP:p14:mo-eq | blueprint-P/parts/p14a-amd-expsafe.tex#bpP:p14:moving-ode@L115-L115 | proof step of this result
EDGE: bpP:p0:hamsymp#hamiltonianVectorField | blueprint-P/parts/p14a-amd-expsafe.tex#bpP:p14:moving-ode@L109-L109 | F = X_H
EDGE: bpP:p0:movham#movingHamiltonian | blueprint-P/parts/p14a-amd-expsafe.tex#bpP:p14:moving-ode@L109-L109 | H = H_mov
EDGE: bpP:p0:d25-movsol#IsMovingSolutionOn | blueprint-P/parts/p14a-amd-expsafe.tex#bpP:p14:moving-ode@L110-L110 | IsMovSolOn is the left side of the equivalence
EDGE: bpP:p0:nocoll#NoCollision | blueprint-P/parts/p14a-amd-expsafe.tex#bpP:p14:moving-ode@L109-L109 | W is the collision-free set
EDGE: N:bpN:p3:gen-sol | blueprint-P/parts/p14a-amd-expsafe.tex#bpP:p14:moving-ode@L110-L110 | IsSolIn F W J z is the right side of the equivalence
EDGE: bpP:p14:conv#data | blueprint-P/parts/p14a-amd-expsafe.tex#bpP:p14:moving-ode@L109-L109 | W, H_mov, G = m_0 = 1
EDGE: bpP:p0:d25-movsol#IsHamiltonianSolutionOn | blueprint-P/parts/p14a-amd-expsafe.tex#bpP:p14:moving-ode@L111-L111 | the negative-H clause uses the generic Hamiltonian-solution predicate with Hamiltonian -H
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p14a1
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p14:mo-reg

Missing direct section-data edge for w is the collision-free phase domain and H has G = m_0 = 1.

```text
NODE: stepP:p14:mo-reg
KIND: step
TITLE: Regularity
STATEMENT_SOURCE: blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:mo-reg@L114-L114
PROOF_SOURCE: blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:mo-reg@L114-L114
CONTRACT_ID: stepP:p14:mo-reg
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: H_mov; Lemma p6:domain
SOURCE_QUANTIFIERS: fixed mu
SOURCE_CONCLUSION: W is open, H is C^infty on W, F = X_H is C^1 on W
CONSTANT_SCOPE: none (constants as fixed in the enclosing proof)
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p6:domain, N:bpN:p3:ham-smooth, bpP:p0:movham#movingHamiltonian, bpP:p0:hamsymp#hamiltonianVectorField, bpP:p14:conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p6:domain | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:mo-reg@L114-L114 | W open and H C^infty on W
EDGE: N:bpN:p3:ham-smooth | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:mo-reg@L114-L114 | F = X_H is C^1 on W (k = 1)
EDGE: bpP:p0:movham#movingHamiltonian | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:mo-reg@L114-L114 | H = H_mov
EDGE: bpP:p0:hamsymp#hamiltonianVectorField | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:mo-reg@L114-L114 | F = X_H
EDGE: bpP:p14:conv#data | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:mo-reg@L114-L114 | W is the collision-free phase domain and H has G = m_0 = 1
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p14a1
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p14:mo-eq

Missing direct section-data edge for w is the phase preimage of NoColl, with no momentum restriction. The negative-H equivalence needs the generic predicate, since IsMovingSolutionOn fixes H_mov.

```text
NODE: stepP:p14:mo-eq
KIND: step
TITLE: Equivalence
STATEMENT_SOURCE: blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:mo-eq@L115-L115
PROOF_SOURCE: blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:mo-eq@L115-L115
CONTRACT_ID: stepP:p14:mo-eq
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: regularity (W open, H differentiable on W); definitions of IsMovSolOn and IsSolIn
SOURCE_QUANTIFIERS: fixed mu; J; z
SOURCE_CONCLUSION: IsMovSolOn(m,mu,J,z) iff IsSolIn F W J z; for -H, (IsHamiltonianSolutionOn(-H,univ,J,z) and forall t in J, NoColl(z(t)_1)) iff IsSolIn (-F) W J z, using X_{-H} = -X_H
CONSTANT_SCOPE: none (constants as fixed in the enclosing proof)
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p14:mo-reg, N:bpN:p3:gen-sol, bpP:p0:d25-movsol#IsMovingSolutionOn, bpP:p0:nocoll#NoCollision, N:bpN:p3:gen-symmetry, bpP:p14:conv#data, bpP:p0:d25-movsol#IsHamiltonianSolutionOn
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p14:mo-reg | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:mo-eq@L115-L115 | H differentiable at z(t) by the regularity step
EDGE: N:bpN:p3:gen-sol | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:mo-eq@L115-L115 | IsSolIn F W J z
EDGE: bpP:p0:d25-movsol#IsMovingSolutionOn | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:mo-eq@L115-L115 | IsMovSolOn clauses: differentiability, derivative X_H, NoColl, momentum-domain slot
EDGE: bpP:p0:nocoll#NoCollision | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:mo-eq@L115-L115 | NoColl(z(t)_1) is z(t) in W
EDGE: N:bpN:p3:gen-symmetry | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:mo-eq@L115-L115 | the statement for -H is gen-symmetry (b) and X_{-H} = -X_H
EDGE: bpP:p14:conv#data | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:mo-eq@L115-L115 | W is the phase preimage of NoColl, with no momentum restriction
EDGE: bpP:p0:d25-movsol#IsHamiltonianSolutionOn | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:mo-eq@L115-L115 | the generic Hamiltonian-solution predicate allows replacing H by -H; IsMovingSolutionOn itself fixes H_mov
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p14a1
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p14:am-eq

Missing direct section-data edge for the moving Hamiltonian is specialized at G = m_0 = 1.

```text
NODE: stepP:p14:am-eq
KIND: step
TITLE: The equations
STATEMENT_SOURCE: blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:am-eq@L122-L122
PROOF_SOURCE: blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:am-eq@L122-L122
CONTRACT_ID: stepP:p14:am-eq
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: IsMovSolOn(m,mu,J_0,z); t in J_0
SOURCE_QUANTIFIERS: fixed t
SOURCE_CONCLUSION: q_i' = p_i/m_i + mu P and p_i' = -m_i q_i/r_i^3 + mu m_i f_i(q) with P = sum p_i and f_i(q) = sum_{j != i} m_j (q_j - q_i)/¦q_j - q_i¦^3
CONSTANT_SCOPE: none (constants as fixed in the enclosing proof)
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p14:moving-ode, bpP:p6:hamilton-eqs, bpP:p14:conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p14:moving-ode | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:am-eq@L122-L122 | IsMovSolOn gives a solution of X_H on W
EDGE: bpP:p6:hamilton-eqs | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:am-eq@L122-L122 | explicit Hamilton equations of H_mov (G = m_0 = 1)
EDGE: bpP:p14:conv#data | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:am-eq@L122-L122 | the moving Hamiltonian is specialized at G = m_0 = 1
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p14a1
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p14:am-der

Expanding J(z(.)) as the sum of crosses directly unfolds totalMomentum; its edge is missing.

```text
NODE: stepP:p14:am-der
KIND: step
TITLE: Derivative
STATEMENT_SOURCE: blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:am-der@L123-L123
PROOF_SOURCE: blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:am-der@L123-L123
CONTRACT_ID: stepP:p14:am-der
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the equations of step am-eq; bilinearity of cr
SOURCE_QUANTIFIERS: fixed t
SOURCE_CONCLUSION: d/dt J(z(t)) = sum_i [cr(q_i',p_i) + cr(q_i,p_i')] = mu sum_{i != j} m_i m_j cr(q_i,q_j)/¦q_j - q_i¦^3 = 0 by antisymmetry
CONSTANT_SCOPE: none (constants as fixed in the enclosing proof)
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p14:am-eq, bpP:p14:x-calc, bpP:p14:x-planar, bpP:p6:ext-sum, bpP:p0:d25-cross#planeCross, bpP:p0:d25-amd#totalMomentum
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p14:am-eq | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:am-der@L123-L123 | q_i' and p_i' substituted into the derivative
EDGE: bpP:p14:x-calc | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:am-der@L123-L123 | derivative of J(z(.)) by the product/chain rule
EDGE: bpP:p14:x-planar | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:am-der@L123-L123 | bilinearity, cr(u,u) = 0 and antisymmetry of cr
EDGE: bpP:p6:ext-sum | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:am-der@L123-L123 | sum over ordered pairs of an antisymmetric summand vanishes
EDGE: bpP:p0:d25-cross#planeCross | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:am-der@L123-L123 | cr
EDGE: bpP:p0:d25-amd#totalMomentum | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:am-der@L123-L123 | J is the sum of the individual plane crosses before differentiating
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p14a1
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p14:amd-close

The extension from the contradiction branch to every forward time reapplies StoppedActionBound on [0,t]; the direct edge is missing.

```text
NODE: stepP:p14:amd-close
KIND: step
TITLE: Closure at $t^*$
STATEMENT_SOURCE: blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:amd-close@L144-L144
PROOF_SOURCE: blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:amd-close@L144-L144
CONTRACT_ID: stepP:p14:amd-close
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: step amd-margin; z(t*) in W; continuity of z
SOURCE_QUANTIFIERS: fixed first exit time t*
SOURCE_CONCLUSION: z(t*) in R_delta subset R_out, contradicting the choice of t*; hence the Claim of step amd-fwd, and z(t) in R_delta for every t in [0,T_+) cap [0,T]
CONSTANT_SCOPE: none (constants as fixed in the enclosing proof)
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p14:amd-margin, stepP:p14:amd-fwd, bpP:p14:closure, bpP:p14:moving-ode, bpP:p14:conv#data, bpP:p0:d25-stopped#StoppedActionBound
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p14:amd-margin | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:amd-close@L144-L144 | z(t) in R_delta for t in [0,t*) and the margins for every t
EDGE: stepP:p14:amd-fwd | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:amd-close@L144-L144 | t* and its choice (first exit)
EDGE: bpP:p14:closure | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:amd-close@L144-L144 | closure (b): the limit z(t*) lies in R_delta
EDGE: bpP:p14:moving-ode | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:amd-close@L144-L144 | continuity of the solution z at t*
EDGE: bpP:p14:conv#data | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:amd-close@L144-L144 | z(t*) in W, R_out
EDGE: bpP:p0:d25-stopped#StoppedActionBound | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:amd-close@L144-L144 | after excluding exit, reapply the stopped bound on [0,t] for every positive t in [0,T_+) cap [0,T]
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p14a1
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p14:amd-bwd

Missing direct section-data edge for r_delta is formed with the fixed box margins, and R_out is the exit domain.

```text
NODE: stepP:p14:amd-bwd
KIND: step
TITLE: Backward
STATEMENT_SOURCE: blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:amd-bwd@L145-L145
PROOF_SOURCE: blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:amd-bwd@L145-L145
CONTRACT_ID: stepP:p14:amd-bwd
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the forward argument; time reversal t -> z(-t); stopped bound on [-s,0]
SOURCE_QUANTIFIERS: fixed maximal solution
SOURCE_CONCLUSION: z(t) in R_delta for all t in (T_-,0] cap [-T,0]
CONSTANT_SCOPE: none (constants as fixed in the enclosing proof)
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p14:amd-fwd, stepP:p14:amd-margin, stepP:p14:amd-close, N:bpN:p3:gen-exit, N:bpN:p3:gen-symmetry, bpP:p14:moving-ode, bpP:p0:d25-stopped#StoppedActionBound, bpP:p14:conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p14:amd-fwd | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:amd-bwd@L145-L145 | the same first-exit argument for t -> z(-t)
EDGE: stepP:p14:amd-margin | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:amd-bwd@L145-L145 | the same margin computation on [-s,0]
EDGE: stepP:p14:amd-close | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:amd-bwd@L145-L145 | the same closure argument at the backward exit time
EDGE: N:bpN:p3:gen-exit | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:amd-bwd@L145-L145 | first exit applied to t -> z(-t)
EDGE: N:bpN:p3:gen-symmetry | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:amd-bwd@L145-L145 | t -> z(-t) solves -F (symmetry (b))
EDGE: bpP:p14:moving-ode | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:amd-bwd@L145-L145 | the statement for -H
EDGE: bpP:p0:d25-stopped#StoppedActionBound | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:amd-bwd@L145-L145 | the stopped bound with (l,r) = (-s,0)
EDGE: bpP:p14:conv#data | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:amd-bwd@L145-L145 | R_delta is formed with the fixed box margins, and R_out is the exit domain
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p14a1
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p14:amd-cont

SOURCE_CONCLUSION repeats the source sign typo T_- > -T, incompatible with the asserted interval inclusion. Report and explicitly annotate the correction T_- < -T.

```text
NODE: stepP:p14:amd-cont
KIND: step
TITLE: The solution reaches $\pm T$ and a bit more
STATEMENT_SOURCE: blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:amd-cont@L146-L146
PROOF_SOURCE: blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:amd-cont@L146-L146
CONTRACT_ID: stepP:p14:amd-cont
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: steps amd-fwd, amd-close, amd-bwd; K_1 subset W compact; Lemma geometry
SOURCE_QUANTIFIERS: fixed maximal solution
SOURCE_CONCLUSION: T_+ > T and T_- < -T, so [-T,T] subset (T_-,T_+), and z(t) in R_delta subset R_out for all t in [-T,T]
CONSTANT_SCOPE: none (constants as fixed in the enclosing proof)
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p14:amd-close, stepP:p14:amd-bwd, stepP:p14:amd-max, bpP:p14:geometry, N:bpN:p3:gen-continuation-compact, bpP:p14:moving-ode, bpP:p14:conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p14:amd-close | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:amd-cont@L146-L146 | z(t) in R_out for t in [0,T_+) cap [0,T]
EDGE: stepP:p14:amd-bwd | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:amd-cont@L146-L146 | the backward statement for T_-
EDGE: stepP:p14:amd-max | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:amd-cont@L146-L146 | the maximal interval (T_-,T_+)
EDGE: bpP:p14:geometry | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:amd-cont@L146-L146 | R_out subset K_1 subset W with K_1 compact
EDGE: N:bpN:p3:gen-continuation-compact | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:amd-cont@L146-L146 | z stays in the compact K_1 subset W up to T_+ hence T_+ = infinity
EDGE: bpP:p14:moving-ode | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:amd-cont@L146-L146 | gen-continuation-compact applies to IsMovSolOn
EDGE: bpP:p14:conv#data | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:amd-cont@L146-L146 | R_out, W
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p14a1
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: SOURCE_TYPO: blueprint-P/parts/p14a-amd-expsafe.tex L146 prints T_- > -T; the left continuation argument and the stated inclusion [-T,T] subset (T_-,T_+) require T_- < -T. The conclusion records that explicitly reported sign correction, not an extra premise.
```

## Validation

- Baseline structural checker: 45 nodes, 225 edges, 55 coverage items, 0 problems.
- All assigned nodes are reachable from the six graph roots through the recorded dependencies. External nodes also serve later Part 14 consumers; this slice introduces no alternative-route conjunction.
- Corpus and import hash pins match. Input packet hashes: nodes `7ac98c6ab7882586a9d1183542957a33dc00f6f787e5684c71e8e83e40b663e4`; coverage `3166c8288c2141d8941090c54c98da3006017986df19a1af59c294979316709e`.
- Review-applier dry run: 17 replaced, 0 added, 0 coverage items, 0 unresolved FAILs, 28 PASS nodes. Independent checks passed for dependency/EDGE agreement, dependency existence, locator bounds, local acyclicity, all 45 verdict rows and preservation of unaffected fields. Packet hashes remain unchanged; report whitespace check passes.
- No Lean command or state-changing git command was run; only this review file is edited.
