# I-p1 independent slice review

Reviewer: `sol-review-I-p1`. Verdict: **FAIL** (graph corrections below; no new substantive mathematical gap established).

Reviewed all 597 lines of `blueprint-I/parts/p1-iso-linear.tex`, all 53 node records, all 81 coverage items, the used K contracts, relevant frozen definitions and manifest identity fields, under REVIEW-BRIEF and SPEC. No Lean execution, implementation/proof-body inspection, or packet edit. Replacement records remain PROPOSED and require a different reviewer.

## Main findings

The standing bridge's SOURCE_GAP is **not real for the reasons asserted**. K `p2-aposteriori.tex` L67–69 explicitly says “Only $\tau\ge0$ and $n\ge1$ are used below”. Its positive sigma parameters in L56–65 are free constants, not assumptions that K has those bounds; the frame/geometry consumers supply the required local bounds. The bridge identifies the common data and frozen objects, using that expressly advertised generality. It cannot claim the literally stronger tau >= n-1 proposition or discharge every later conditional premise automatically. Remove the false gap and proof ingredients from its hypothesis field.

Seventeen steps omit a direct I setting edge. A bridge path does not replace those edges. The ray and trivial-integrable example introduce their own data; the abstract bordered solver introduces its own equation data. Adding the entire H/K package there would incorrectly constrain these statements. At the no-A5 applications, the A2–A4 references identify supplied components, not an assumption of the full admissible package or A5. The imported frame-basic/identity tools explicitly use only these components; no unbordered torsion invertibility is smuggled in.

Many step records list preceding proof results as source hypotheses. Their dependencies already record those results; the replacements keep only genuine local premises, including the strip losses and the conditional energy value. The averaging step has two sufficient routes, and the comparison to ec-unique in bs-unique is illustrative rather than an application of that specialized energy result.

The deleted remarks remain correctly excluded: totality L55–63, sign dictionary L65–89, trivial-use L203–208, O3 pointer L347–353, bordered remarks L455–463, errata L569–589 and doubts L591–597. Their used mathematical content is provided in actual lemmas or direct K inputs. In particular Part 2's `stepI:p2:g1-o3` supplies the limiting premises and applies energy-conservation, so no O3 remark node is needed. Keep ext-real-direction as an external: its complex-valued directional-derivative clause exceeds K hr-derivative's real-valued statement; the recorded non-alias explanation is appropriate.

## Per-node decisions

The spans below are in the I Part 1 source; complete enclosing statements and proofs were read as well as each listed step. PASS means topology/contract agreement, not a Lean proof-status assertion.

| Node | Verdict | Source re-read | Reason |
|---|---|---|---|
| `bpI:p1:setting` | FAIL | L30-L37 | Statement range omits Gamma and the attached conventions at L39–46 although its contract and edge use them. |
| `bpI:p1:setting#k-bridge` | FAIL | L39-L46 | False SOURCE_GAP; K L67–69 expressly supplies the weaker range. K objects/agreement are proof inputs, not additional source premises; blanket discharge of every K hypothesis overclaims the bridge. |
| `bpI:p1:ray` | PASS | L48-L53 | Contract, direct uses and local premises agree. |
| `bpI:p1:ext-chain` | PASS | L94-L95 | Contract, direct uses and local premises agree. |
| `bpI:p1:ext-real-direction` | PASS | L96-L100 | Contract, direct uses and local premises agree. |
| `bpI:p1:extended-basic` | PASS | L106-L122, L124-L149 | Contract, direct uses and local premises agree. |
| `stepI:p1:eb-holo` | FAIL | L125-L128 | Missing directly cited K holomorphic-inverse import. |
| `stepI:p1:eb-period` | PASS | L130-L135 | Contract, direct uses and local premises agree. |
| `stepI:p1:eb-average` | FAIL | L137-L142 | Missing direct standing-package edge bpI:p1:setting (the bridge edge does not replace it). Source hypotheses include proof ingredients; retain them only as dependencies and restore the actual local premises. |
| `stepI:p1:eb-bounds` | PASS | L144-L148 | Contract, direct uses and local premises agree. |
| `bpI:p1:trivial` | PASS | L151-L165, L167-L201 | Contract, direct uses and local premises agree. |
| `stepI:p1:tr-torus` | PASS | L168-L171 | Contract, direct uses and local premises agree. |
| `stepI:p1:tr-frame` | FAIL | L173-L175 | Source hypotheses include proof ingredients; retain them only as dependencies and restore the actual local premises. |
| `stepI:p1:tr-field` | FAIL | L177-L183 | Source hypotheses include proof ingredients; retain them only as dependencies and restore the actual local premises. |
| `stepI:p1:tr-torsion` | FAIL | L185-L187 | Source hypotheses include proof ingredients; retain them only as dependencies and restore the actual local premises. |
| `stepI:p1:tr-border` | FAIL | L189-L191 | Source hypotheses include proof ingredients; retain them only as dependencies and restore the actual local premises. |
| `stepI:p1:tr-compare` | FAIL | L193-L200 | Source hypotheses include proof ingredients; retain them only as dependencies and restore the actual local premises. |
| `bpI:p1:last-row` | PASS | L210-L229, L231-L252 | Contract, direct uses and local premises agree. |
| `stepI:p1:lr-gradient` | PASS | L232-L234 | Contract, direct uses and local premises agree. |
| `stepI:p1:lr-insert` | FAIL | L236-L243 | Missing direct standing-package edge bpI:p1:setting (the bridge edge does not replace it). Source hypotheses include proof ingredients; retain them only as dependencies and restore the actual local premises. |
| `stepI:p1:lr-average` | FAIL | L245-L251 | Missing direct standing-package edge bpI:p1:setting (the bridge edge does not replace it). Source hypotheses include proof ingredients; retain them only as dependencies and restore the actual local premises. |
| `bpI:p1:energy-approx` | PASS | L257-L280, L282-L317 | Contract, direct uses and local premises agree. |
| `stepI:p1:ea-chain` | PASS | L283-L287 | Contract, direct uses and local premises agree. |
| `stepI:p1:ea-omega` | FAIL | L289-L291 | Source hypotheses include proof ingredients; retain them only as dependencies and restore the actual local premises. |
| `stepI:p1:ea-gradient` | FAIL | L293-L296 | Missing direct standing-package edge bpI:p1:setting (the bridge edge does not replace it). Source hypotheses include proof ingredients; retain them only as dependencies and restore the actual local premises. Actual citation is K exactness at L294; replace the merely underlying Hamiltonian edge with that direct source use. |
| `stepI:p1:ea-avg` | FAIL | L298-L301 | Missing direct standing-package edge bpI:p1:setting (the bridge edge does not replace it). Source hypotheses include proof ingredients; retain them only as dependencies and restore the actual local premises. The direct exactness proof and the "Also directly" proof through (c) need separate route nodes; the latter uses ea-gradient. |
| `stepI:p1:ea-size` | FAIL | L303-L308 | Source hypotheses include proof ingredients; retain them only as dependencies and restore the actual local premises. |
| `stepI:p1:ea-defect` | FAIL | L310-L316 | Missing direct standing-package edge bpI:p1:setting (the bridge edge does not replace it). Source hypotheses include proof ingredients; retain them only as dependencies and restore the actual local premises. |
| `bpI:p1:energy-conservation` | PASS | L319-L330, L332-L345 | Contract, direct uses and local premises agree. |
| `stepI:p1:ec-derivative` | FAIL | L333-L335 | Missing direct standing-package edge bpI:p1:setting (the bridge edge does not replace it). |
| `stepI:p1:ec-unique` | FAIL | L337-L341 | Source hypotheses include proof ingredients; retain them only as dependencies and restore the actual local premises. |
| `stepI:p1:ec-pointwise` | FAIL | L343-L344 | Missing direct standing-package edge bpI:p1:setting (the bridge edge does not replace it). Source hypotheses include proof ingredients; retain them only as dependencies and restore the actual local premises. |
| `bpI:p1:border-solve` | FAIL | L364-L405, L407-L453 | Include the attached operator/matrix notation L358–362 consumed by the contract and its existing L361 edge. |
| `stepI:p1:bs-first` | PASS | L408-L410 | Contract, direct uses and local premises agree. |
| `stepI:p1:bs-averages` | FAIL | L412-L416 | Source hypotheses include proof ingredients; retain them only as dependencies and restore the actual local premises. |
| `stepI:p1:bs-bordered` | FAIL | L418-L425 | Source hypotheses include proof ingredients; retain them only as dependencies and restore the actual local premises. |
| `stepI:p1:bs-energy` | FAIL | L427-L430 | Source hypotheses include proof ingredients; retain them only as dependencies and restore the actual local premises. |
| `stepI:p1:bs-second` | FAIL | L432-L439 | Source hypotheses include proof ingredients; retain them only as dependencies and restore the actual local premises. Locate the bs-first use at the explicit closing application L439 rather than the construction of g at L433. |
| `stepI:p1:bs-unique` | FAIL | L441-L447 | Source hypotheses include proof ingredients; retain them only as dependencies and restore the actual local premises. The specialized energy step ec-unique is an analogy ("as in"), not an applicable premise for the arbitrary difference; K cohomological uniqueness is the direct input. |
| `stepI:p1:bs-real` | FAIL | L449-L452 | Source hypotheses include proof ingredients; retain them only as dependencies and restore the actual local premises. |
| `bpI:p1:reduced` | PASS | L465-L485, L487-L504 | Contract, direct uses and local premises agree. |
| `stepI:p1:rd-ql` | FAIL | L488-L490 | Missing direct standing-package edge bpI:p1:setting (the bridge edge does not replace it). |
| `stepI:p1:rd-expand` | FAIL | L492-L496 | Missing direct standing-package edge bpI:p1:setting (the bridge edge does not replace it). Source hypotheses include proof ingredients; retain them only as dependencies and restore the actual local premises. Missing direct product-rule input. |
| `stepI:p1:rd-consequence` | FAIL | L498-L503 | Missing direct standing-package edge bpI:p1:setting (the bridge edge does not replace it). Source hypotheses include proof ingredients; retain them only as dependencies and restore the actual local premises. |
| `bpI:p1:geometry-noA5` | PASS | L517-L526, L527-L536 | Contract, direct uses and local premises agree. |
| `stepI:p1:geo-de` | FAIL | L529-L530 | Missing direct standing-package edge bpI:p1:setting (the bridge edge does not replace it). |
| `stepI:p1:geo-red` | FAIL | L531-L533 | Missing direct standing-package edge bpI:p1:setting (the bridge edge does not replace it). Source hypotheses include proof ingredients; retain them only as dependencies and restore the actual local premises. |
| `stepI:p1:geo-sym` | FAIL | L534-L535 | Missing direct standing-package edge bpI:p1:setting (the bridge edge does not replace it). |
| `bpI:p1:perturbation-noA5` | PASS | L539-L550, L551-L563 | Contract, direct uses and local premises agree. |
| `stepI:p1:pt-small` | FAIL | L552-L554 | Missing direct standing-package edge bpI:p1:setting (the bridge edge does not replace it). |
| `stepI:p1:pt-domain` | PASS | L555-L556 | Contract, direct uses and local premises agree. |
| `stepI:p1:pt-frame` | FAIL | L557-L558 | Missing direct standing-package edge bpI:p1:setting (the bridge edge does not replace it). Source hypotheses include proof ingredients; retain them only as dependencies and restore the actual local premises. Missing direct constants edge. |
| `stepI:p1:pt-torsion` | FAIL | L559-L562 | Missing direct standing-package edge bpI:p1:setting (the bridge edge does not replace it). Source hypotheses include proof ingredients; retain them only as dependencies and restore the actual local premises. pt-small edge at L562 is merely transitive through pt-frame; the displayed bound uses frame/domain results and constants directly. |

## Coverage decisions

| Item | Verdict | Source re-read | Reason |
|---|---|---|---|
| `stepI:p1:ea-avg` | FAIL | L298–301 | Cover both separately sufficient proof routes explicitly. |

**All other coverage items PASS**, including every prose disposition and excluded remark. The setting's labelled-unit item correctly covers L30–37; the attached prose item separately covers the convention extension through L46. Border-solver notation L358–362 is already mapped to the consuming solver.

## Imported-source locator drift (writer / I-imports follow-up)

`IMPORTS.sha256` expects K Part 1 hash `6f8eeb3339b3ec109a426e416b1cbc4c52e3bbcf5bc3a8e23c70b93dc6b2431e`; the current file hashes to `2afd058105b3de64042c142ec1c4eeba063b3c973e26ab980e7b668bc0232407`. Commit `aec5b8b7c7406d0e1048c7716362c68ff8d9b7b1` inserts two net lines at L37 spelling out positive strip widths and n >= 1. K's graph remapped them, but I's import pin and downstream K Part 1 locators have not followed. For the K Part 1 contracts used here, add 2 to both endpoints of the imported STATEMENT_SOURCE ranges and re-pin via the writer's procedure. This is a separate writer-owned import correction, not a change to the imported conclusions. In particular holomorphic-inverse is now L404–407. K Part 2's file still matches its pin. No I source hash change was observed.

All used K IDs, including the newly linked holomorphic-inverse, were checked against the owning K graph. Each applying node retains the K-data bridge where needed. Read the actual conditional contracts rather than interpreting A2–A4 package references as full A1–A6 assumptions.

## Suspected blueprint defects

No new substantive defect established. The phrase “exactly Assumption” at I L39 is literally imprecise about tau and unused sigma parameters, but K's explicit weaker-range convention resolves the alleged proof gap. The graph should describe common data and local discharge rather than preserve a false SOURCE_GAP. This is a graph-contract clarification, not a proposed source repair or paper erratum.

## Replacement fragments

Full blocks are provided because the available `scripts/depgraph_apply_review.py` parses NODE/ITEM blocks, not isolated EDGE lines. Existing metadata is preserved; new route records are proposed. These fragments modify only this slice when applied. Import re-pinning/remapping remains writer-owned.

```text
NODE: bpI:p1:setting
KIND: definition
TITLE: Standing setting of Part~\ref{bpI:p1}
STATEMENT_SOURCE: blueprint-I/parts/p1-iso-linear.tex#bpI:p1:setting@L30-L46
PROOF_SOURCE: -
CONTRACT_ID: bpI:p1:setting
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: none (typing data and standing hypotheses of Part 1)
SOURCE_QUANTIFIERS: n, tau, M, D, H, gamma, omega, r, K fixed by the setting (outermost)
SOURCE_CONCLUSION: defines the standing setting of Part 1: n>=2, tau>=0, M>0; D open and Z^n-invariant; H holomorphic on D, 1-periodic in theta, real at real phase points, with bounds M on DH, X_H, DX_H, D^2 X_H (I1-I4); gamma>0, omega in R^n cap Dio_{gamma,tau}; r>0, K holomorphic, primary and real on reals on T_r with K(T_r) subset D (I5, I6); det G_K != 0 on T_r where the frame is used; also fixes Gamma_delta := c_R gamma^{-1} delta^{-kappa}, kappa = tau+n, as in K
CONSTANT_SCOPE: all constants (M, gamma, r, tau, n) are fixed by the setting; Gamma_delta uses c_R, kappa of K:bp:p2:constants (c_R depends on n, tau only)
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p0:diophantine#IsDiophantine, bpI:p0:domains#complexStrip, bpI:p0:stripdata#IsPrimaryOnStrip, bpI:p0:stripdata#IsRealOnReals, bpI:p0:hamiltonian#hamiltonianVectorFieldC, bpI:p0:stripdata#gramMatrix, K:bp:p2:constants
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p0:diophantine#IsDiophantine | blueprint-I/parts/p1-iso-linear.tex#bpI:p1:setting@L35-L35 | omega in Dio_{gamma,tau}
EDGE: bpI:p0:domains#complexStrip | blueprint-I/parts/p1-iso-linear.tex#bpI:p1:setting@L35-L35 | strip T_r
EDGE: bpI:p0:stripdata#IsPrimaryOnStrip | blueprint-I/parts/p1-iso-linear.tex#bpI:p1:setting@L35-L35 | K primary on T_r
EDGE: bpI:p0:stripdata#IsRealOnReals | blueprint-I/parts/p1-iso-linear.tex#bpI:p1:setting@L35-L35 | K real on reals
EDGE: bpI:p0:hamiltonian#hamiltonianVectorFieldC | blueprint-I/parts/p1-iso-linear.tex#bpI:p1:setting@L34-L34 | bounds on X_H, DX_H, D^2 X_H
EDGE: bpI:p0:stripdata#gramMatrix | blueprint-I/parts/p1-iso-linear.tex#bpI:p1:setting@L36-L36 | det G_K != 0 where the frame is used
EDGE: K:bp:p2:constants | blueprint-I/parts/p1-iso-linear.tex#bpI:p1:setting@L45-L45 | Gamma_delta, kappa, c_R as in K constants
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p1
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: bpI:p1:setting#k-bridge
KIND: step
TITLE: Bridge: common K standing data and frozen objects with h := H, B(frak) := D
STATEMENT_SOURCE: blueprint-I/parts/p1-iso-linear.tex#bpI:p1:setting#k-bridge@L39-L46
PROOF_SOURCE: blueprint-I/parts/p1-iso-linear.tex#bpI:p1:setting#k-bridge@L39-L46
CONTRACT_ID: bpI:p1:setting#k-bridge
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Assumption bpI:p1:setting; det G_K != 0 wherever frame objects are used
SOURCE_QUANTIFIERS: as in the setting; K data h := H, B(frak) := D
SOURCE_CONCLUSION: identifies the common K standing data with h := H and B(frak) := D, with the additional bound on DH; uses the explicitly stated range tau >= 0, n >= 1 of K Part 2; identifies L,G,B,N,P,X_N,T,E,A,Omega_K,E_sym,Q,eta and averages with K objects and the frozen definitions; additional bounds required by particular K lemmas are supplied locally, not asserted by this bridge
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p1:setting, K:bp:p2:standing, K:bp:p2:objects, K:bp:p2:frozen-agreement, bpI:p0:stripdata#gramMatrix, bpI:p0:stripdata#normalFrame, bpI:p0:stripdata#torsion, bpI:p0:stripdata#invarianceError
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p1:setting | blueprint-I/parts/p1-iso-linear.tex#bpI:p1:setting#k-bridge@L39-L39 | the package of Part 1
EDGE: K:bp:p2:standing | blueprint-I/parts/p1-iso-linear.tex#bpI:p1:setting#k-bridge@L39-L39 | K standing data with h := H, B(frak) := D
EDGE: K:bp:p2:objects | blueprint-I/parts/p1-iso-linear.tex#bpI:p1:setting#k-bridge@L41-L41 | objects with h := H
EDGE: K:bp:p2:frozen-agreement | blueprint-I/parts/p1-iso-linear.tex#bpI:p1:setting#k-bridge@L42-L42 | agreement with the frozen definitions
EDGE: bpI:p0:stripdata#gramMatrix | blueprint-I/parts/p1-iso-linear.tex#bpI:p1:setting#k-bridge@L43-L43 | frozen gramMatrix
EDGE: bpI:p0:stripdata#normalFrame | blueprint-I/parts/p1-iso-linear.tex#bpI:p1:setting#k-bridge@L43-L43 | frozen normalFrame
EDGE: bpI:p0:stripdata#torsion | blueprint-I/parts/p1-iso-linear.tex#bpI:p1:setting#k-bridge@L43-L43 | frozen torsion
EDGE: bpI:p0:stripdata#invarianceError | blueprint-I/parts/p1-iso-linear.tex#bpI:p1:setting#k-bridge@L43-L43 | frozen invarianceError
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p1
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: K:bp:p2:standing prose at blueprint/parts/p2-aposteriori.tex L67-L69 explicitly states that only tau >= 0 and n >= 1 are used below. The positive sigma parameters are free constants, not admissibility bounds in the standing package; each bound used by a consumer is supplied locally. No SOURCE_GAP is established by the different parameter lists. This bridge identifies common data, not the stronger tau >= n-1 proposition literally.
```

```text
NODE: stepI:p1:eb-holo
KIND: step
TITLE: Holomorphy
STATEMENT_SOURCE: blueprint-I/parts/p1-iso-linear.tex#stepI:p1:eb-holo@L125-L128
PROOF_SOURCE: blueprint-I/parts/p1-iso-linear.tex#stepI:p1:eb-holo@L125-L128
CONTRACT_ID: stepI:p1:eb-holo
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: setting; det G_K != 0 on T_r
SOURCE_QUANTIFIERS: K, H
SOURCE_CONCLUSION: N, T, Y and every entry of T_H are holomorphic on T_r, in particular continuous on R^n
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p1:setting, K:step:p2:fb-holo, bpI:p1:setting#k-bridge, K:bp:p1:holomorphic-regularity, bpI:p1:ext-chain, bpI:p0:extended#extendedTorsion, K:bp:p1:holomorphic-inverse
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p1:setting | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:eb-holo@L126-L126 | K(T_r) subset D, H holomorphic on D
EDGE: K:step:p2:fb-holo | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:eb-holo@L126-L126 | N and T holomorphic (K standing results)
EDGE: bpI:p1:setting#k-bridge | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:eb-holo@L126-L126 | supplies the K standing data of fb-holo
EDGE: K:bp:p1:holomorphic-regularity | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:eb-holo@L127-L127 | DH holomorphic on D
EDGE: bpI:p1:ext-chain | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:eb-holo@L128-L128 | product of holomorphic functions
EDGE: bpI:p0:extended#extendedTorsion | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:eb-holo@L128-L128 | entries of the frozen T_H
EDGE: K:bp:p1:holomorphic-inverse | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:eb-holo@L126-L126 | holomorphic inverse in the construction of N, expressly cited
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p1
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepI:p1:eb-average
KIND: step
TITLE: The average
STATEMENT_SOURCE: blueprint-I/parts/p1-iso-linear.tex#stepI:p1:eb-average@L137-L142
PROOF_SOURCE: blueprint-I/parts/p1-iso-linear.tex#stepI:p1:eb-average@L137-L142
CONTRACT_ID: stepI:p1:eb-average
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: setting; det G_K != 0 on T_r
SOURCE_QUANTIFIERS: K, H
SOURCE_CONCLUSION: each entry of T_H is integrable on [0,1]^n; the frozen avg(T_H) is the entrywise integral, real; the border entries are omega and 0
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepI:p1:eb-holo, stepI:p1:eb-period, K:bp:p1:ext-integral, bpI:p0:extended#extendedTorsionAverage, bpI:p1:setting
ROUTES: -
ROUTE_FOR: -
EDGE: stepI:p1:eb-holo | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:eb-average@L138-L138 | continuity of the entries
EDGE: stepI:p1:eb-period | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:eb-average@L141-L141 | realness of the integrand
EDGE: K:bp:p1:ext-integral | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:eb-average@L139-L139 | continuous functions on a compact box are integrable
EDGE: bpI:p0:extended#extendedTorsionAverage | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:eb-average@L140-L140 | Bochner integral of the frozen average
EDGE: bpI:p1:setting | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:eb-average@L138-L138 | direct use of the local H, K, omega, domain or standing constants
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p1
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepI:p1:tr-frame
KIND: step
TITLE: The normal frame
STATEMENT_SOURCE: blueprint-I/parts/p1-iso-linear.tex#stepI:p1:tr-frame@L173-L175
PROOF_SOURCE: blueprint-I/parts/p1-iso-linear.tex#stepI:p1:tr-frame@L173-L175
CONTRACT_ID: stepI:p1:tr-frame
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: data of bpI:p1:trivial (U, h, D, H, I, K and omega defined there); no Part 1 setting assumed
SOURCE_QUANTIFIERS: j
SOURCE_CONCLUSION: N_{.j} = Omega_0(e_j,0) = (0,e_j), constant in theta, so D_theta N_{.j} = 0
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepI:p1:tr-torus, bpI:p0:stripdata#normalFrame, bpI:p0:stripdata#omegaZero
ROUTES: -
ROUTE_FOR: -
EDGE: stepI:p1:tr-torus | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:tr-frame@L174-L174 | G_K = I_n, B = I_n, DK e_k = (e_k,0)
EDGE: bpI:p0:stripdata#normalFrame | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:tr-frame@L174-L174 | N_{.j} = sum_k (G^{-1})_{kj} Omega_0(DK e_k)
EDGE: bpI:p0:stripdata#omegaZero | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:tr-frame@L174-L174 | Omega_0(e_j,0) = (0,e_j)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p1
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepI:p1:tr-field
KIND: step
TITLE: The vector field
STATEMENT_SOURCE: blueprint-I/parts/p1-iso-linear.tex#stepI:p1:tr-field@L177-L183
PROOF_SOURCE: blueprint-I/parts/p1-iso-linear.tex#stepI:p1:tr-field@L177-L183
CONTRACT_ID: stepI:p1:tr-field
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: data of bpI:p1:trivial (U, h, D, H, I, K and omega defined there); no Part 1 setting assumed
SOURCE_QUANTIFIERS: a
SOURCE_CONCLUSION: X_H(theta,J) = ((d_a h(J))_a, 0); E_{H,K,omega} = (grad^C h(I) - omega, 0) = 0; d_a h(J) real for real J; omega_a = d_a h(I); grad h(J)_a = d_a h(J) for real J in U
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p0:hamiltonian#hamiltonianVectorFieldC, bpI:p0:stripdata#invarianceError, stepI:p1:tr-torus, bpI:p1:ext-real-direction, bpI:p0:realham#frequencyMap
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p0:hamiltonian#hamiltonianVectorFieldC | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:tr-field@L178-L178 | X_H of H(theta,J) = h(J)
EDGE: bpI:p0:stripdata#invarianceError | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:tr-field@L178-L178 | E = X_H(K theta) - DK omega
EDGE: stepI:p1:tr-torus | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:tr-field@L178-L178 | DK omega = (omega,0)
EDGE: bpI:p1:ext-real-direction | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:tr-field@L179-L179 | complex derivative in a real direction for phi = h
EDGE: bpI:p0:realham#frequencyMap | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:tr-field@L182-L182 | definition of the frequency map
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p1
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepI:p1:tr-torsion
KIND: step
TITLE: The torsion
STATEMENT_SOURCE: blueprint-I/parts/p1-iso-linear.tex#stepI:p1:tr-torsion@L185-L187
PROOF_SOURCE: blueprint-I/parts/p1-iso-linear.tex#stepI:p1:tr-torsion@L185-L187
CONTRACT_ID: stepI:p1:tr-torsion
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: data of bpI:p1:trivial (U, h, D, H, I, K and omega defined there); no Part 1 setting assumed
SOURCE_QUANTIFIERS: i, j
SOURCE_CONCLUSION: T(theta)_ij = d_j d_i h(I)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p0:stripdata#torsion, stepI:p1:tr-frame, stepI:p1:tr-field, bpI:p0:hamiltonian#hamiltonianVectorFieldC, bpI:p0:stripdata#omegaZero, bpI:p0:stripdata#dotC
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p0:stripdata#torsion | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:tr-torsion@L187-L187 | torsion formula
EDGE: stepI:p1:tr-frame | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:tr-torsion@L186-L186 | N_{.j} = (0,e_j) constant, D_theta N = 0
EDGE: stepI:p1:tr-field | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:tr-torsion@L186-L186 | X_H = ((d_a h),0)
EDGE: bpI:p0:hamiltonian#hamiltonianVectorFieldC | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:tr-torsion@L186-L186 | DX_H(theta,I)(0,e_j)
EDGE: bpI:p0:stripdata#omegaZero | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:tr-torsion@L186-L186 | Omega_0(w,0) = (0,w)
EDGE: bpI:p0:stripdata#dotC | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:tr-torsion@L187-L187 | N_{.i} . Omega_0(...)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p1
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepI:p1:tr-border
KIND: step
TITLE: The border
STATEMENT_SOURCE: blueprint-I/parts/p1-iso-linear.tex#stepI:p1:tr-border@L189-L191
PROOF_SOURCE: blueprint-I/parts/p1-iso-linear.tex#stepI:p1:tr-border@L189-L191
CONTRACT_ID: stepI:p1:tr-border
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: data of bpI:p1:trivial (U, h, D, H, I, K and omega defined there); no Part 1 setting assumed
SOURCE_QUANTIFIERS: b
SOURCE_CONCLUSION: last column of T_H is omega = grad h(I), last row is DH(K theta) N_{.b} = d_b h(I) = omega_b, corner 0
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p0:extended#extendedTorsion, stepI:p1:tr-field, stepI:p1:tr-frame
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p0:extended#extendedTorsion | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:tr-border@L190-L190 | border of the frozen T_H
EDGE: stepI:p1:tr-field | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:tr-border@L190-L190 | omega_a = d_a h(I)
EDGE: stepI:p1:tr-frame | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:tr-border@L191-L191 | N_{.b} = (0,e_b)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p1
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepI:p1:tr-compare
KIND: step
TITLE: Comparison with the bordered Hessian
STATEMENT_SOURCE: blueprint-I/parts/p1-iso-linear.tex#stepI:p1:tr-compare@L193-L200
PROOF_SOURCE: blueprint-I/parts/p1-iso-linear.tex#stepI:p1:tr-compare@L193-L200
CONTRACT_ID: stepI:p1:tr-compare
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: data of bpI:p1:trivial (U, h, D, H, I, K and omega defined there); no Part 1 setting assumed
SOURCE_QUANTIFIERS: a, b
SOURCE_CONCLUSION: T_H(theta) = B_h(I) for all theta; avg(T_H) = B_h(I); det and inverse statements by cases (det B_h(I) != 0: same determinant and corresponding inverses; det = 0: both total inverses are 0)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p0:bordered#borderedHessian, stepI:p1:tr-field, bpI:p1:ext-real-direction, K:bp:p1:holomorphic-regularity, stepI:p1:tr-torsion, stepI:p1:tr-border, bpI:p0:extended#extendedTorsionAverage, K:bp:p1:real-inverse
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p0:bordered#borderedHessian | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:tr-compare@L194-L194 | entries of the frozen B_h(I)
EDGE: stepI:p1:tr-field | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:tr-compare@L195-L195 | grad h(J)_a = d_a h(J)
EDGE: bpI:p1:ext-real-direction | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:tr-compare@L196-L196 | real derivative equals complex partial
EDGE: K:bp:p1:holomorphic-regularity | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:tr-compare@L197-L197 | symmetry of the Hessian of a holomorphic function
EDGE: stepI:p1:tr-torsion | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:tr-compare@L197-L197 | upper-left blocks T = d_j d_i h
EDGE: stepI:p1:tr-border | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:tr-compare@L197-L197 | border agrees with grad h(I)
EDGE: bpI:p0:extended#extendedTorsionAverage | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:tr-compare@L198-L198 | average of a constant matrix
EDGE: K:bp:p1:real-inverse | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:tr-compare@L199-L199 | real matrix and its cast have corresponding inverses
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p1
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepI:p1:lr-insert
KIND: step
TITLE: Insert the error
STATEMENT_SOURCE: blueprint-I/parts/p1-iso-linear.tex#stepI:p1:lr-insert@L236-L243
PROOF_SOURCE: blueprint-I/parts/p1-iso-linear.tex#stepI:p1:lr-insert@L236-L243
CONTRACT_ID: stepI:p1:lr-insert
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: setting; det G_K != 0 on T_r
SOURCE_QUANTIFIERS: theta in T_r
SOURCE_CONCLUSION: Y = DH(K)N = omega^T - E^T Omega_0 N, entrywise Y_b = omega_b + N_{.b}^T Omega_0 E = omega_b - eta^L_b; ¦Y - omega^T¦ <= n¦eta^L¦
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepI:p1:lr-gradient, bpI:p0:stripdata#invarianceError, K:bp:p2:frame-identities, bpI:p1:setting#k-bridge, K:bp:p2:objects, bpI:p1:setting
ROUTES: -
ROUTE_FOR: -
EDGE: stepI:p1:lr-gradient | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:lr-insert@L239-L239 | DH = -X_H^T Omega_0
EDGE: bpI:p0:stripdata#invarianceError | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:lr-insert@L237-L237 | X_H(K) = L omega + E
EDGE: K:bp:p2:frame-identities | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:lr-insert@L241-L241 | L^T Omega_0 N = -I_n
EDGE: bpI:p1:setting#k-bridge | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:lr-insert@L241-L241 | supplies the K standing data of frame-identities
EDGE: K:bp:p2:objects | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:lr-insert@L242-L242 | eta^L = -N^T Omega_0 E
EDGE: bpI:p1:setting | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:lr-insert@L237-L237 | direct use of the local H, K, omega, domain or standing constants
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p1
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepI:p1:lr-average
KIND: step
TITLE: Invariant torus and average
STATEMENT_SOURCE: blueprint-I/parts/p1-iso-linear.tex#stepI:p1:lr-average@L245-L251
PROOF_SOURCE: blueprint-I/parts/p1-iso-linear.tex#stepI:p1:lr-average@L245-L251
CONTRACT_ID: stepI:p1:lr-average
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: setting; det G_K != 0 on T_r; for the quantitative bound, norms of E, L, B as stated in last-row(c)
SOURCE_QUANTIFIERS: theta
SOURCE_CONCLUSION: (b) Y = omega^T when E = 0, with the stated T_H and avg(T_H); (c) avg(T_H) = T^inv - last-row correction with the bound 2 n^2 sigma_K' sigma_B' e
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p0:extended#extendedTorsion, bpI:p0:extended#extendedTorsionAverage, bpI:p1:extended-basic, stepI:p1:lr-insert, K:bp:p2:averages, K:bp:p2:matrix, bpI:p1:setting
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p0:extended#extendedTorsion | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:lr-average@L246-L246 | definition of T_H
EDGE: bpI:p0:extended#extendedTorsionAverage | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:lr-average@L248-L248 | avg(T_H)
EDGE: bpI:p1:extended-basic | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:lr-average@L247-L247 | block form of avg(T_H) (a)
EDGE: stepI:p1:lr-insert | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:lr-average@L248-L248 | (a) averaged
EDGE: K:bp:p2:averages | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:lr-average@L249-L249 | ¦avg f¦ <= sup ¦f¦, linearity
EDGE: K:bp:p2:matrix | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:lr-average@L250-L250 | norm inequalities for N, Omega_0, transposes
EDGE: bpI:p1:setting | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:lr-average@L246-L246 | direct use of the local H, K, omega, domain or standing constants
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p1
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepI:p1:ea-omega
KIND: step
TITLE: The derivative along $\omega$
STATEMENT_SOURCE: blueprint-I/parts/p1-iso-linear.tex#stepI:p1:ea-omega@L289-L291
PROOF_SOURCE: blueprint-I/parts/p1-iso-linear.tex#stepI:p1:ea-omega@L289-L291
CONTRACT_ID: stepI:p1:ea-omega
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: setting
SOURCE_QUANTIFIERS: theta in T_r
SOURCE_CONCLUSION: D(H o K)omega = DH(K)L omega = -DH(K)E on T_r
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepI:p1:ea-chain, bpI:p0:stripdata#invarianceError, K:bp:p2:hamiltonian, bpI:p1:setting#k-bridge, bpI:p1:setting
ROUTES: -
ROUTE_FOR: -
EDGE: stepI:p1:ea-chain | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:ea-omega@L290-L290 | D(H o K) = DH(K) L
EDGE: bpI:p0:stripdata#invarianceError | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:ea-omega@L290-L290 | L omega = X_H(K) - E
EDGE: K:bp:p2:hamiltonian | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:ea-omega@L290-L290 | DH = (Omega_0 X_H)^T, antisymmetry of Omega_0
EDGE: bpI:p1:setting#k-bridge | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:ea-omega@L290-L290 | supplies the K standing data of the Hamiltonian lemma
EDGE: bpI:p1:setting | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:ea-omega@L290-L290 | H holomorphic on D
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p1
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepI:p1:ea-gradient
KIND: step
TITLE: The gradient identity
STATEMENT_SOURCE: blueprint-I/parts/p1-iso-linear.tex#stepI:p1:ea-gradient@L293-L296
PROOF_SOURCE: blueprint-I/parts/p1-iso-linear.tex#stepI:p1:ea-gradient@L293-L296
CONTRACT_ID: stepI:p1:ea-gradient
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: setting; det G_K != 0 for the eta^N identification
SOURCE_QUANTIFIERS: theta in T_r
SOURCE_CONCLUSION: L^T Omega_0 E = (D(H o K))^T - Omega_K omega; eta^N = L^T Omega_0 E
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepI:p1:ea-chain, bpI:p1:setting#k-bridge, K:bp:p2:objects, bpI:p1:setting, K:bp:p2:exactness
ROUTES: -
ROUTE_FOR: -
EDGE: stepI:p1:ea-chain | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:ea-gradient@L294-L294 | DH(K)L = D(H o K)
EDGE: bpI:p1:setting#k-bridge | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:ea-gradient@L294-L294 | supplies the K standing data of the Hamiltonian lemma
EDGE: K:bp:p2:objects | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:ea-gradient@L295-L295 | definitions of eta^N and Omega_K
EDGE: bpI:p1:setting | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:ea-gradient@L294-L294 | direct use of the local H, K, omega, domain or standing constants
EDGE: K:bp:p2:exactness | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:ea-gradient@L294-L294 | repeats the gradient step of exactness
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p1
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepI:p1:ea-avg
KIND: step
TITLE: Averages
STATEMENT_SOURCE: blueprint-I/parts/p1-iso-linear.tex#stepI:p1:ea-avg@L298-L301
PROOF_SOURCE: blueprint-I/parts/p1-iso-linear.tex#stepI:p1:ea-avg@L298-L301
CONTRACT_ID: stepI:p1:ea-avg
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: setting; det G_K != 0 where eta^N is used
SOURCE_QUANTIFIERS: l
SOURCE_CONCLUSION: avg(D(H o K)) = 0, avg(Omega_K) = 0, avg(eta^N) = 0
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p1:setting
ROUTES: stepI:p1:ea-avg#exactness-route, stepI:p1:ea-avg#gradient-route
ROUTE_FOR: -
EDGE: bpI:p1:setting | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:ea-avg@L299-L299 | direct use of the local H, K, omega, domain or standing constants
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p1
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepI:p1:ea-size
KIND: step
TITLE: The size of the energy fluctuation
STATEMENT_SOURCE: blueprint-I/parts/p1-iso-linear.tex#stepI:p1:ea-size@L303-L308
PROOF_SOURCE: blueprint-I/parts/p1-iso-linear.tex#stepI:p1:ea-size@L303-L308
CONTRACT_ID: stepI:p1:ea-size
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: setting; norm E <= eps on T_r; 0 < delta < r; 0 < delta' < r-delta
SOURCE_QUANTIFIERS: delta, delta'
SOURCE_CONCLUSION: ¦E^en¦ <= M Gamma_delta eps on T_{r-delta}; ¦D(H o K)¦ <= n M Gamma_delta eps/delta' on T_{r-delta-delta'}
CONSTANT_SCOPE: Gamma_delta = c_R gamma^{-1} delta^{-kappa}
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepI:p1:ea-chain, stepI:p1:ea-omega, bpI:p1:setting, K:bp:p2:cohomological, bpI:p1:setting#k-bridge, K:bp:p1:cauchy-strip
ROUTES: -
ROUTE_FOR: -
EDGE: stepI:p1:ea-chain | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:ea-size@L304-L304 | E^en holomorphic and periodic with zero average
EDGE: stepI:p1:ea-omega | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:ea-size@L304-L304 | d_omega E^en = -DH(K)E
EDGE: bpI:p1:setting | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:ea-size@L305-L305 | ¦DH¦ <= M on D and K(T_r) subset D (I4)
EDGE: K:bp:p2:cohomological | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:ea-size@L306-L306 | cohomological equation in operator norms, (b)
EDGE: bpI:p1:setting#k-bridge | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:ea-size@L306-L306 | supplies the K standing data (gamma, tau, omega) of the cohomological lemma
EDGE: K:bp:p1:cauchy-strip | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:ea-size@L307-L307 | Cauchy estimate on strips
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p1
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepI:p1:ea-defect
KIND: step
TITLE: The energy defect
STATEMENT_SOURCE: blueprint-I/parts/p1-iso-linear.tex#stepI:p1:ea-defect@L310-L316
PROOF_SOURCE: blueprint-I/parts/p1-iso-linear.tex#stepI:p1:ea-defect@L310-L316
CONTRACT_ID: stepI:p1:ea-defect
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: setting; det G_K != 0 on T_r; xi holomorphic on T_{r'}, 0 < r' <= r; Delta K = P xi; for the averaged consequence, avg(Y xi^N) = eta^omega
SOURCE_QUANTIFIERS: xi, r'
SOURCE_CONCLUSION: DH(K)Delta K = Y xi^N + D(H o K) xi^L = Y xi^N + (eta^N)^T xi^L - omega^T Omega_K xi^L; avg splits linearly; bound on E^omega_lin by the suprema of D(H o K), eta^N, Omega_K, xi^L over the cube
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: K:bp:p2:objects, bpI:p1:setting#k-bridge, stepI:p1:ea-chain, stepI:p1:ea-gradient, K:bp:p1:ext-integral, K:bp:p2:matrix, bpI:p1:setting
ROUTES: -
ROUTE_FOR: -
EDGE: K:bp:p2:objects | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:ea-defect@L311-L311 | P = (L N), Omega_K = L^T Omega_0 L
EDGE: bpI:p1:setting#k-bridge | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:ea-defect@L311-L311 | K objects with h := H
EDGE: stepI:p1:ea-chain | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:ea-defect@L311-L311 | DH(K)L = D(H o K) (a)
EDGE: stepI:p1:ea-gradient | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:ea-defect@L312-L312 | D(H o K) = (eta^N + Omega_K omega)^T (c)
EDGE: K:bp:p1:ext-integral | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:ea-defect@L313-L313 | continuous on the compact cube, integrable; ¦avg f¦ <= sup ¦f¦
EDGE: K:bp:p2:matrix | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:ea-defect@L316-L316 | transpose of a row has norm <= n times the vector norm
EDGE: bpI:p1:setting | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:ea-defect@L311-L311 | direct use of the local H, K, omega, domain or standing constants
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p1
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepI:p1:ec-derivative
KIND: step
TITLE: The derivative vanishes along $\omega$
STATEMENT_SOURCE: blueprint-I/parts/p1-iso-linear.tex#stepI:p1:ec-derivative@L333-L335
PROOF_SOURCE: blueprint-I/parts/p1-iso-linear.tex#stepI:p1:ec-derivative@L333-L335
CONTRACT_ID: stepI:p1:ec-derivative
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: setting; E = 0 on T_r
SOURCE_QUANTIFIERS: theta in T_r
SOURCE_CONCLUSION: u := H o K - avg(H o K) is holomorphic, 1-periodic on T_r with avg(u) = 0 and Du omega = 0
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p1:energy-approx, bpI:p0:stripdata#invarianceError, bpI:p1:setting
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p1:energy-approx | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:ec-derivative@L334-L334 | (a): u holomorphic, periodic, zero average; (b) (line 335): Du omega = -DH(K)E = 0
EDGE: bpI:p0:stripdata#invarianceError | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:ec-derivative@L335-L335 | E = 0
EDGE: bpI:p1:setting | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:ec-derivative@L334-L334 | direct use of the local H, K, omega, domain or standing constants
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p1
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepI:p1:ec-unique
KIND: step
TITLE: Uniqueness for the cohomological equation
STATEMENT_SOURCE: blueprint-I/parts/p1-iso-linear.tex#stepI:p1:ec-unique@L337-L341
PROOF_SOURCE: blueprint-I/parts/p1-iso-linear.tex#stepI:p1:ec-unique@L337-L341
CONTRACT_ID: stepI:p1:ec-unique
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: setting; E = 0 on T_r
SOURCE_QUANTIFIERS: delta in (0,r)
SOURCE_CONCLUSION: u = 0 on T_{r-delta} for every delta, hence u = 0 on T_r, which is (a)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepI:p1:ec-derivative, K:bp:p1:cohomological, bpI:p1:setting
ROUTES: -
ROUTE_FOR: -
EDGE: stepI:p1:ec-derivative | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:ec-unique@L338-L338 | u holomorphic periodic with zero average solving Du omega = 0
EDGE: K:bp:p1:cohomological | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:ec-unique@L339-L339 | uniqueness clause of the cohomological equation
EDGE: bpI:p1:setting | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:ec-unique@L339-L339 | omega in Dio_{gamma,tau}, gamma > 0, tau >= 0
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p1
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepI:p1:ec-pointwise
KIND: step
TITLE: Pointwise energy
STATEMENT_SOURCE: blueprint-I/parts/p1-iso-linear.tex#stepI:p1:ec-pointwise@L343-L344
PROOF_SOURCE: blueprint-I/parts/p1-iso-linear.tex#stepI:p1:ec-pointwise@L343-L344
CONTRACT_ID: stepI:p1:ec-pointwise
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: setting; E = 0 on T_r; E_0 in R or C arbitrary, with Ebar_H(K) = E_0 additionally for conclusion (b)
SOURCE_QUANTIFIERS: theta in T_r
SOURCE_CONCLUSION: H o K is identically Ebar_H(K); if Ebar_H(K) = E_0, then H(K(theta)) = E_0 everywhere; for arbitrary E_0, sup_{T_r} norm(H o K - E_0) = norm(Ebar_H(K)-E_0)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepI:p1:ec-unique, bpI:p0:extended#energyAverage, bpI:p1:setting
ROUTES: -
ROUTE_FOR: -
EDGE: stepI:p1:ec-unique | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:ec-pointwise@L344-L344 | (a): H o K = Ebar_H(K)
EDGE: bpI:p0:extended#energyAverage | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:ec-pointwise@L344-L344 | Ebar_H(K)
EDGE: bpI:p1:setting | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:ec-pointwise@L344-L344 | direct use of the local H, K, omega, domain or standing constants
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p1
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: bpI:p1:border-solve
KIND: lemma
TITLE: Bordered triangular equations (HL19 Lemma 6.1)
STATEMENT_SOURCE: blueprint-I/parts/p1-iso-linear.tex#bpI:p1:border-solve@L358-L405
PROOF_SOURCE: blueprint-I/parts/p1-iso-linear.tex#bpI:p1:border-solve@L407-L453
CONTRACT_ID: bpI:p1:border-solve
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: gamma > 0, tau >= 0, omega in R^n cap Dio_{gamma,tau}, r > 0, delta > 0, 2 delta < r; Gamma_delta = c_R gamma^{-1} delta^{-kappa}; eta^L, eta^N : T_r -> C^n holomorphic, 1-periodic, ¦eta^L¦ <= H_L, ¦eta^N¦ <= H_N on T_r, avg(eta^N) = 0; eta^omega in C; T : T_r -> C^{nxn}, Y : T_r -> C^{1xn} holomorphic, 1-periodic with ¦T¦ <= H_T, ¦Y¦ <= H_Y on T_{r-delta}; script-T := [[avg T, omega],[avg Y, 0]] with det script-T != 0 and ¦script-T^{-1}¦ <= sigma (row-sum norm of C^{(n+1)x(n+1)}); xi^L_0 in C^n; R the solution operator of K:bp:p2:cohomological(a)
SOURCE_QUANTIFIERS: gamma, tau, omega, r, delta, Gamma_delta, eta^L, eta^N, H_L, H_N, eta^omega, T, Y, H_T, H_Y, sigma, xi^L_0 (all fixed before the definitions of u^N, xi_0, xi^omega, xi^N, g^L, xi^L); claims (a)-(e)
SOURCE_CONCLUSION: with u^N := R eta^N on T_{r-delta}, (xi_0, xi^omega) := script-T^{-1}(avg eta^L + avg(T u^N), eta^omega + avg(Y u^N)), xi^N := xi_0 - u^N, g^L := T xi^N + omega xi^omega - eta^L on T_{r-delta}, xi^L := xi^L_0 + R g^L on T_{r-2 delta}: (a) u^N, xi^N, g^L holomorphic, 1-periodic on T_{r-delta}, avg g^L = 0, xi^L holomorphic, 1-periodic on T_{r-2delta}, averages exist; (b) on T_{r-2delta}: T xi^N - d_omega xi^L + omega xi^omega = eta^L, -d_omega xi^N = eta^N, avg(Y xi^N) = eta^omega; (c) estimates with S_* := sigma max{H_L + H_T Gamma_delta H_N, ¦eta^omega¦ + H_Y Gamma_delta H_N}: ¦xi_0¦,¦xi^omega¦ <= S_*, sup¦xi^N¦ <= S_* + Gamma_delta H_N, sup¦g^L¦ <= H_T(S_* + Gamma_delta H_N) + ¦omega¦ S_* + H_L, sup¦xi^L - xi^L_0¦ <= Gamma_delta sup¦g^L¦; (d) uniqueness: any holomorphic periodic solution (xi~^L, xi~^N, xi~^omega) of the system of (b) on T_{r-2delta} has xi~^omega = xi^omega, xi~^N = xi^N, xi~^L - xi^L constant; (e) realness if omega real, eta^L, eta^N, T, Y real on reals, eta^omega in R, xi^L_0 in R^n
CONSTANT_SCOPE: Gamma_delta = c_R gamma^{-1} delta^{-kappa} with c_R, kappa of K constants (c_R depends on n, tau); H_L, H_N, H_T, H_Y, sigma free bounds; no other constant
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p0:diophantine#IsDiophantine, K:bp:p2:constants, K:bp:p2:cohomological, bpI:p1:setting#k-bridge, stepI:p1:bs-first, stepI:p1:bs-averages, stepI:p1:bs-bordered, stepI:p1:bs-energy, stepI:p1:bs-second, stepI:p1:bs-unique, stepI:p1:bs-real
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p0:diophantine#IsDiophantine | blueprint-I/parts/p1-iso-linear.tex#bpI:p1:border-solve@L365-L365 | omega in Dio_{gamma,tau}
EDGE: K:bp:p2:constants | blueprint-I/parts/p1-iso-linear.tex#bpI:p1:border-solve@L365-L365 | Gamma_delta, c_R, kappa
EDGE: K:bp:p2:cohomological | blueprint-I/parts/p1-iso-linear.tex#bpI:p1:border-solve@L361-L361 | the solution operator R
EDGE: bpI:p1:setting#k-bridge | blueprint-I/parts/p1-iso-linear.tex#bpI:p1:border-solve@L361-L361 | supplies the K standing data (gamma, tau, omega) of the cohomological lemma
EDGE: stepI:p1:bs-first | blueprint-I/parts/p1-iso-linear.tex#bpI:p1:border-solve@L408-L408 | proof step
EDGE: stepI:p1:bs-averages | blueprint-I/parts/p1-iso-linear.tex#bpI:p1:border-solve@L412-L412 | proof step
EDGE: stepI:p1:bs-bordered | blueprint-I/parts/p1-iso-linear.tex#bpI:p1:border-solve@L418-L418 | proof step
EDGE: stepI:p1:bs-energy | blueprint-I/parts/p1-iso-linear.tex#bpI:p1:border-solve@L427-L427 | proof step
EDGE: stepI:p1:bs-second | blueprint-I/parts/p1-iso-linear.tex#bpI:p1:border-solve@L432-L432 | proof step
EDGE: stepI:p1:bs-unique | blueprint-I/parts/p1-iso-linear.tex#bpI:p1:border-solve@L441-L441 | proof step
EDGE: stepI:p1:bs-real | blueprint-I/parts/p1-iso-linear.tex#bpI:p1:border-solve@L449-L449 | proof step
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p1
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepI:p1:bs-averages
KIND: step
TITLE: Averages of the products
STATEMENT_SOURCE: blueprint-I/parts/p1-iso-linear.tex#stepI:p1:bs-averages@L412-L416
PROOF_SOURCE: blueprint-I/parts/p1-iso-linear.tex#stepI:p1:bs-averages@L412-L416
CONTRACT_ID: stepI:p1:bs-averages
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: data of border-solve
SOURCE_QUANTIFIERS: T u^N, Y u^N
SOURCE_CONCLUSION: averages of T u^N and Y u^N exist, ¦avg(T u^N)¦ <= H_T Gamma_delta H_N, ¦avg(Y u^N)¦ <= H_Y Gamma_delta H_N, ¦avg eta^L¦ <= H_L; w := (avg eta^L + avg(T u^N), eta^omega + avg(Y u^N)) has ¦w¦ <= max{H_L + H_T Gamma_delta H_N, ¦eta^omega¦ + H_Y Gamma_delta H_N}
CONSTANT_SCOPE: Gamma_delta as in border-solve
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepI:p1:bs-first, K:bp:p2:averages
ROUTES: -
ROUTE_FOR: -
EDGE: stepI:p1:bs-first | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:bs-averages@L413-L413 | u^N holomorphic, periodic, bounded by Gamma_delta H_N
EDGE: K:bp:p2:averages | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:bs-averages@L414-L414 | existence of averages of continuous periodic functions and the sup bound
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p1
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepI:p1:bs-bordered
KIND: step
TITLE: The bordered average system
STATEMENT_SOURCE: blueprint-I/parts/p1-iso-linear.tex#stepI:p1:bs-bordered@L418-L425
PROOF_SOURCE: blueprint-I/parts/p1-iso-linear.tex#stepI:p1:bs-bordered@L418-L425
CONTRACT_ID: stepI:p1:bs-bordered
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: data of border-solve, including det script-T != 0
SOURCE_QUANTIFIERS: xi_0, xi^omega
SOURCE_CONCLUSION: (xi_0, xi^omega) = script-T^{-1} w is the unique solution of avg T xi_0 + omega xi^omega = avg eta^L + avg(T u^N), avg Y xi_0 = eta^omega + avg(Y u^N), and ¦(xi_0, xi^omega)¦ <= ¦script-T^{-1}¦¦w¦ <= S_*
CONSTANT_SCOPE: S_* as in border-solve
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepI:p1:bs-averages, K:bp:p2:matrix
ROUTES: -
ROUTE_FOR: -
EDGE: stepI:p1:bs-averages | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:bs-bordered@L419-L419 | the right-hand side w and its bound
EDGE: K:bp:p2:matrix | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:bs-bordered@L423-L423 | ¦Mv¦ <= ¦M¦¦v¦
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p1
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepI:p1:bs-energy
KIND: step
TITLE: The energy equation and $\xi^N$
STATEMENT_SOURCE: blueprint-I/parts/p1-iso-linear.tex#stepI:p1:bs-energy@L427-L430
PROOF_SOURCE: blueprint-I/parts/p1-iso-linear.tex#stepI:p1:bs-energy@L427-L430
CONTRACT_ID: stepI:p1:bs-energy
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: data of border-solve
SOURCE_QUANTIFIERS: xi^N
SOURCE_CONCLUSION: xi^N = xi_0 - u^N is holomorphic, periodic on T_{r-delta}, d_omega xi^N = -eta^N, ¦xi^N¦ <= S_* + Gamma_delta H_N, avg(Y xi^N) = eta^omega
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepI:p1:bs-first, stepI:p1:bs-bordered
ROUTES: -
ROUTE_FOR: -
EDGE: stepI:p1:bs-first | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:bs-energy@L428-L428 | u^N and d_omega u^N = eta^N
EDGE: stepI:p1:bs-bordered | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:bs-energy@L429-L429 | second equation of the bordered average system, bound on xi_0
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p1
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepI:p1:bs-second
KIND: step
TITLE: The second cohomological equation
STATEMENT_SOURCE: blueprint-I/parts/p1-iso-linear.tex#stepI:p1:bs-second@L432-L439
PROOF_SOURCE: blueprint-I/parts/p1-iso-linear.tex#stepI:p1:bs-second@L432-L439
CONTRACT_ID: stepI:p1:bs-second
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: data of border-solve
SOURCE_QUANTIFIERS: g^L, xi^L
SOURCE_CONCLUSION: g^L = T xi^N + omega xi^omega - eta^L holomorphic, periodic on T_{r-delta}, ¦g^L¦ <= H_T(S_* + Gamma_delta H_N) + ¦omega¦ S_* + H_L, avg g^L = 0; R g^L holomorphic periodic on T_{r-2delta} with d_omega R g^L = g^L and ¦R g^L¦ <= Gamma_delta sup¦g^L¦; the first equation of (b) holds; this gives (a), (b), (c)
CONSTANT_SCOPE: Gamma_delta as in border-solve
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepI:p1:bs-bordered, stepI:p1:bs-first, stepI:p1:bs-energy, K:bp:p2:cohomological, bpI:p1:setting#k-bridge
ROUTES: -
ROUTE_FOR: -
EDGE: stepI:p1:bs-bordered | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:bs-second@L435-L435 | first equation of the bordered average system gives avg g^L = 0
EDGE: stepI:p1:bs-first | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:bs-second@L439-L439 | u^N
EDGE: stepI:p1:bs-energy | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:bs-second@L439-L439 | xi^N and its bound
EDGE: K:bp:p2:cohomological | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:bs-second@L437-L437 | (a) on T_{r-delta} with loss delta
EDGE: bpI:p1:setting#k-bridge | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:bs-second@L437-L437 | supplies the K standing data (gamma, tau, omega) of the cohomological lemma
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p1
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepI:p1:bs-unique
KIND: step
TITLE: Uniqueness
STATEMENT_SOURCE: blueprint-I/parts/p1-iso-linear.tex#stepI:p1:bs-unique@L441-L447
PROOF_SOURCE: blueprint-I/parts/p1-iso-linear.tex#stepI:p1:bs-unique@L441-L447
CONTRACT_ID: stepI:p1:bs-unique
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: data of border-solve; tilde solution holomorphic and periodic on T_{r-2delta}, satisfying the same system, as in (d)
SOURCE_QUANTIFIERS: xi~
SOURCE_CONCLUSION: xi~^omega = xi^omega, xi~^N = xi^N, xi~^L - xi^L constant
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepI:p1:bs-first, K:bp:p1:cohomological, K:bp:p2:averages, stepI:p1:bs-bordered
ROUTES: -
ROUTE_FOR: -
EDGE: stepI:p1:bs-first | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:bs-unique@L442-L442 | u^N with d_omega u^N = eta^N
EDGE: K:bp:p1:cohomological | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:bs-unique@L443-L443 | uniqueness clause
EDGE: K:bp:p2:averages | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:bs-unique@L445-L445 | avg(d_omega xi~^L) = 0
EDGE: stepI:p1:bs-bordered | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:bs-unique@L445-L445 | invertibility of script-T and the bordered average system
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p1
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepI:p1:bs-real
KIND: step
TITLE: Realness
STATEMENT_SOURCE: blueprint-I/parts/p1-iso-linear.tex#stepI:p1:bs-real@L449-L452
PROOF_SOURCE: blueprint-I/parts/p1-iso-linear.tex#stepI:p1:bs-real@L449-L452
CONTRACT_ID: stepI:p1:bs-real
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: data of border-solve; eta^L, eta^N, T, Y real on reals; eta^omega real and xi^L_0 real
SOURCE_QUANTIFIERS: xi_0, xi^omega, u^N, xi^N, g^L, xi^L
SOURCE_CONCLUSION: xi_0, xi^omega, xi^N, xi^L, g^L are real on reals
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: K:bp:p2:averages, K:bp:p1:real-inverse, K:bp:p2:cohomological, bpI:p1:setting#k-bridge, stepI:p1:bs-bordered
ROUTES: -
ROUTE_FOR: -
EDGE: K:bp:p2:averages | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:bs-real@L450-L450 | real averages of real continuous periodic functions
EDGE: K:bp:p1:real-inverse | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:bs-real@L451-L451 | script-T real with real inverse
EDGE: K:bp:p2:cohomological | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:bs-real@L451-L451 | R preserves realness
EDGE: bpI:p1:setting#k-bridge | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:bs-real@L451-L451 | supplies the K standing data (gamma, tau, omega) of the cohomological lemma
EDGE: stepI:p1:bs-bordered | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:bs-real@L451-L451 | xi_0, xi^omega = script-T^{-1} w
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p1
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepI:p1:rd-ql
KIND: step
TITLE: The product $QL$
STATEMENT_SOURCE: blueprint-I/parts/p1-iso-linear.tex#stepI:p1:rd-ql@L488-L490
PROOF_SOURCE: blueprint-I/parts/p1-iso-linear.tex#stepI:p1:rd-ql@L488-L490
CONTRACT_ID: stepI:p1:rd-ql
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: setting; det G_K != 0 on T_r
SOURCE_QUANTIFIERS: theta
SOURCE_CONCLUSION: Q L = (I_n; -Omega_K)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: K:bp:p2:objects, K:bp:p2:frame-identities, bpI:p1:setting#k-bridge, K:bp:p2:matrix, bpI:p1:setting
ROUTES: -
ROUTE_FOR: -
EDGE: K:bp:p2:objects | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:rd-ql@L489-L489 | Q = -Omega_0 P^T Omega_0, P = (L N), Omega_K
EDGE: K:bp:p2:frame-identities | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:rd-ql@L489-L489 | (a): L^T Omega_0 N = -I_n, N^T Omega_0 L = I_n
EDGE: bpI:p1:setting#k-bridge | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:rd-ql@L489-L489 | supplies the K standing data of frame-identities
EDGE: K:bp:p2:matrix | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:rd-ql@L490-L490 | Omega_0 (U_1; U_2) = (-U_2; U_1)
EDGE: bpI:p1:setting | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:rd-ql@L489-L489 | direct use of the local H, K, omega, domain or standing constants
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p1
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepI:p1:rd-expand
KIND: step
TITLE: Expanding the linearized operator
STATEMENT_SOURCE: blueprint-I/parts/p1-iso-linear.tex#stepI:p1:rd-expand@L492-L496
PROOF_SOURCE: blueprint-I/parts/p1-iso-linear.tex#stepI:p1:rd-expand@L492-L496
CONTRACT_ID: stepI:p1:rd-expand
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: setting; det G_K != 0 on T_r; xi holomorphic on T_{r'}, 0 < r' <= r; xi^omega scalar; Delta K = P xi and Delta omega = -omega xi^omega
SOURCE_QUANTIFIERS: xi, xi^omega
SOURCE_CONCLUSION: Q(A Delta K - d_omega Delta K - DK Delta omega) + Q E = (Lambda + E_red) xi - d_omega xi + Omega_0 E_sym d_omega xi + (omega;0) xi^omega - (0; Omega_K omega) xi^omega - eta
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: K:bp:p2:frame-identities, bpI:p1:setting#k-bridge, stepI:p1:rd-ql, K:bp:p2:objects, bpI:p1:setting, bpI:p1:ext-chain
ROUTES: -
ROUTE_FOR: -
EDGE: K:bp:p2:frame-identities | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:rd-expand@L494-L494 | (e) Q(AP - d_omega P) = Lambda + E_red; (f) QP = I - Omega_0 E_sym
EDGE: bpI:p1:setting#k-bridge | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:rd-expand@L494-L494 | supplies the K standing data of frame-identities
EDGE: stepI:p1:rd-ql | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:rd-expand@L495-L495 | (a): Q L omega xi^omega
EDGE: K:bp:p2:objects | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:rd-expand@L495-L495 | Q E = -eta
EDGE: bpI:p1:setting | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:rd-expand@L493-L493 | direct use of the local H, K, omega, domain or standing constants
EDGE: bpI:p1:ext-chain | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:rd-expand@L493-L493 | product rule for the directional derivative of P xi
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p1
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepI:p1:rd-consequence
KIND: step
TITLE: Consequence
STATEMENT_SOURCE: blueprint-I/parts/p1-iso-linear.tex#stepI:p1:rd-consequence@L498-L503
PROOF_SOURCE: blueprint-I/parts/p1-iso-linear.tex#stepI:p1:rd-consequence@L498-L503
CONTRACT_ID: stepI:p1:rd-consequence
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: setting; det G_K != 0; xi, xi^omega and strip as in reduced; for (c) the bordered system holds; for (d) det P != 0, sufficient if norm E_sym < 1
SOURCE_QUANTIFIERS: xi, xi^omega
SOURCE_CONCLUSION: Q Res = E_lin when the bordered system holds, with the bound on E_lin; det P != 0 (when ¦E_sym¦ < 1) gives Q invertible, Res = Q^{-1} E_lin and the equivalence in (d)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepI:p1:rd-expand, K:bp:p2:frame-identities, bpI:p1:setting#k-bridge, K:bp:p1:neumann, K:bp:p1:matrix-norms, K:bp:p2:matrix, bpI:p1:setting
ROUTES: -
ROUTE_FOR: -
EDGE: stepI:p1:rd-expand | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:rd-consequence@L499-L499 | (b)
EDGE: K:bp:p2:frame-identities | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:rd-consequence@L500-L500 | (b): P^T Omega_0 P = Omega_0 + E_sym
EDGE: bpI:p1:setting#k-bridge | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:rd-consequence@L500-L500 | supplies the K standing data of frame-identities
EDGE: K:bp:p1:neumann | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:rd-consequence@L501-L501 | Neumann series for I - Omega_0 E_sym
EDGE: K:bp:p1:matrix-norms | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:rd-consequence@L501-L501 | ¦Omega_0 E_sym¦ = ¦E_sym¦
EDGE: K:bp:p2:matrix | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:rd-consequence@L503-L503 | norm bounds for E_lin
EDGE: bpI:p1:setting | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:rd-consequence@L499-L499 | direct use of the local H, K, omega, domain or standing constants
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p1
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepI:p1:geo-de
KIND: step
TITLE: Derivatives of the error
STATEMENT_SOURCE: blueprint-I/parts/p1-iso-linear.tex#stepI:p1:geo-de@L529-L530
PROOF_SOURCE: blueprint-I/parts/p1-iso-linear.tex#stepI:p1:geo-de@L529-L530
CONTRACT_ID: stepI:p1:geo-de
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: hypotheses of geometry-noA5
SOURCE_QUANTIFIERS: delta
SOURCE_CONCLUSION: E holomorphic with ¦E¦ <= eps on T_r; ¦DE¦ <= n eps/delta on T_{r-delta}
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: K:bp:p2:frame-basic, bpI:p1:setting#k-bridge, K:bp:p1:cauchy-strip, bpI:p1:setting
ROUTES: -
ROUTE_FOR: -
EDGE: K:bp:p2:frame-basic | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:geo-de@L530-L530 | (a): E holomorphic with ¦E¦ <= eps
EDGE: bpI:p1:setting#k-bridge | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:geo-de@L530-L530 | supplies the K standing data of frame-basic
EDGE: K:bp:p1:cauchy-strip | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:geo-de@L530-L530 | Cauchy estimate on strips
EDGE: bpI:p1:setting | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:geo-de@L530-L530 | direct use of the local H, K, omega, domain or standing constants
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p1
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepI:p1:geo-red
KIND: step
TITLE: $\partial_\omega\Omega_K$ and $E_{\mathrm{red}}$
STATEMENT_SOURCE: blueprint-I/parts/p1-iso-linear.tex#stepI:p1:geo-red@L531-L533
PROOF_SOURCE: blueprint-I/parts/p1-iso-linear.tex#stepI:p1:geo-red@L531-L533
CONTRACT_ID: stepI:p1:geo-red
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: hypotheses of geometry-noA5
SOURCE_QUANTIFIERS: delta
SOURCE_CONCLUSION: ¦d_omega Omega_K¦ <= (2n m + 2n^2 m) eps/delta and ¦E_red¦ <= C_red eps/delta on T_{r-delta}
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: K:bp:p2:frame-identities, K:bp:p2:matrix, K:bp:p2:frame-basic, bpI:p1:setting#k-bridge, stepI:p1:geo-de, K:step:p2:geo-domegak, K:step:p2:geo-ered, bpI:p1:setting
ROUTES: -
ROUTE_FOR: -
EDGE: K:bp:p2:frame-identities | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:geo-red@L532-L532 | (d), (e)
EDGE: K:bp:p2:matrix | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:geo-red@L532-L532 | norm bounds
EDGE: K:bp:p2:frame-basic | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:geo-red@L532-L532 | (b): bounds on L, N, B
EDGE: bpI:p1:setting#k-bridge | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:geo-red@L532-L532 | supplies the K standing data of frame-identities and frame-basic
EDGE: stepI:p1:geo-de | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:geo-red@L532-L532 | bound on DE
EDGE: K:step:p2:geo-domegak | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:geo-red@L532-L532 | same estimate for d_omega Omega_K
EDGE: K:step:p2:geo-ered | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:geo-red@L532-L532 | same estimate for E_red
EDGE: bpI:p1:setting | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:geo-red@L533-L533 | direct use of the local H, K, omega, domain or standing constants
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p1
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepI:p1:geo-sym
KIND: step
TITLE: Lagrangian defect and symplecticity defect
STATEMENT_SOURCE: blueprint-I/parts/p1-iso-linear.tex#stepI:p1:geo-sym@L534-L535
PROOF_SOURCE: blueprint-I/parts/p1-iso-linear.tex#stepI:p1:geo-sym@L534-L535
CONTRACT_ID: stepI:p1:geo-sym
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: hypotheses of geometry-noA5
SOURCE_QUANTIFIERS: delta
SOURCE_CONCLUSION: Omega_K holomorphic, 1-periodic on T_{r-delta} with avg Omega_K = 0; ¦Omega_K¦ <= C_Omega eps/(gamma delta^{kappa+1}) on T_{r-2delta}; ¦E_sym¦ <= m^2 ¦Omega_K¦
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: K:bp:p2:exactness, K:bp:p2:cohomological, K:bp:p2:frame-identities, bpI:p1:setting#k-bridge, bpI:p1:setting
ROUTES: -
ROUTE_FOR: -
EDGE: K:bp:p2:exactness | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:geo-sym@L535-L535 | avg Omega_K = 0, K primary
EDGE: K:bp:p2:cohomological | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:geo-sym@L535-L535 | (b) on T_{r-delta} with loss delta
EDGE: K:bp:p2:frame-identities | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:geo-sym@L535-L535 | (b): E_sym = diag(Omega_K, B Omega_K B)
EDGE: bpI:p1:setting#k-bridge | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:geo-sym@L535-L535 | supplies the K standing data of exactness, cohomological, frame-identities
EDGE: bpI:p1:setting | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:geo-sym@L535-L535 | direct use of the local H, K, omega, domain or standing constants
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p1
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepI:p1:pt-small
KIND: step
TITLE: Smallness
STATEMENT_SOURCE: blueprint-I/parts/p1-iso-linear.tex#stepI:p1:pt-small@L552-L554
PROOF_SOURCE: blueprint-I/parts/p1-iso-linear.tex#stepI:p1:pt-small@L552-L554
CONTRACT_ID: stepI:p1:pt-small
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: hypotheses of perturbation-noA5
SOURCE_QUANTIFIERS: delta, d
SOURCE_CONCLUSION: C_{DeltaT} >= max{n, C_G, C_{DeltaN}}; n d/delta <= m, m C_G d/delta <= 1/2, C_{DeltaN} d/delta <= m^2, m C_{DeltaT} d/delta^2 <= 1/2
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: K:bp:p2:constants, K:step:p2:pt-small, bpI:p1:setting
ROUTES: -
ROUTE_FOR: -
EDGE: K:bp:p2:constants | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:pt-small@L553-L553 | definitions of the constants
EDGE: K:step:p2:pt-small | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:pt-small@L553-L553 | same arithmetic on constants
EDGE: bpI:p1:setting | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:pt-small@L553-L553 | direct use of the local H, K, omega, domain or standing constants
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p1
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepI:p1:pt-frame
KIND: step
TITLE: Frame
STATEMENT_SOURCE: blueprint-I/parts/p1-iso-linear.tex#stepI:p1:pt-frame@L557-L558
PROOF_SOURCE: blueprint-I/parts/p1-iso-linear.tex#stepI:p1:pt-frame@L557-L558
CONTRACT_ID: stepI:p1:pt-frame
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: hypotheses of perturbation-noA5
SOURCE_QUANTIFIERS: theta
SOURCE_CONCLUSION: ¦L~ - L¦ <= n d/delta, ¦(L~-L)^T¦ <= 2n d/delta on T_{r-delta}; ¦L~¦ <= 2m, ¦L~^T¦ <= 4n m; G~ invertible, ¦B~¦ <= 2m, ¦B~ - B¦ <= C_B d/delta
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: K:bp:p1:cauchy-strip, K:bp:p1:cauchy-corollaries, K:bp:p1:neumann, stepI:p1:pt-small, bpI:p1:setting, K:bp:p2:constants
ROUTES: -
ROUTE_FOR: -
EDGE: K:bp:p1:cauchy-strip | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:pt-frame@L558-L558 | Cauchy estimate for K~ - K
EDGE: K:bp:p1:cauchy-corollaries | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:pt-frame@L558-L558 | transpose bound (p = 2n)
EDGE: K:bp:p1:neumann | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:pt-frame@L558-L558 | Neumann series for G~
EDGE: stepI:p1:pt-small | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:pt-frame@L558-L558 | smallness n d/delta <= m, m C_G d/delta <= 1/2
EDGE: bpI:p1:setting | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:pt-frame@L558-L558 | direct use of the local H, K, omega, domain or standing constants
EDGE: K:bp:p2:constants | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:pt-frame@L558-L558 | definitions of C_G, C_B and m
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p1
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepI:p1:pt-torsion
KIND: step
TITLE: Normal frame and torsion
STATEMENT_SOURCE: blueprint-I/parts/p1-iso-linear.tex#stepI:p1:pt-torsion@L559-L562
PROOF_SOURCE: blueprint-I/parts/p1-iso-linear.tex#stepI:p1:pt-torsion@L559-L562
CONTRACT_ID: stepI:p1:pt-torsion
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: hypotheses of perturbation-noA5
SOURCE_QUANTIFIERS: theta
SOURCE_CONCLUSION: ¦N~ - N¦ <= C_{DeltaN} d/delta, ¦N~¦ <= 2 m^2, ¦N~^T¦ <= 4n m^2 on T_{r-delta}; ¦X~_{N~} - X_N¦ <= C_{DeltaX} d/delta^2 and ¦T~ - T¦ <= C_{DeltaT} d/delta^2 on T_{r-2delta}
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepI:p1:pt-frame, stepI:p1:pt-domain, K:bp:p1:cauchy-corollaries, K:bp:p2:objects, K:bp:p2:frame-basic, K:bp:p2:admissible, bpI:p1:setting#k-bridge, K:bp:p2:constants, bpI:p1:setting
ROUTES: -
ROUTE_FOR: -
EDGE: stepI:p1:pt-frame | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:pt-torsion@L560-L560 | L~, B~ bounds for N~ - N
EDGE: stepI:p1:pt-domain | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:pt-torsion@L561-L561 | ¦A~ - A¦
EDGE: K:bp:p1:cauchy-corollaries | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:pt-torsion@L561-L561 | bound on d_omega(N~ - N)
EDGE: K:bp:p2:objects | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:pt-torsion@L561-L561 | X_N and T definitions
EDGE: K:bp:p2:frame-basic | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:pt-torsion@L562-L562 | (d): ¦X_N¦ <= C_X/delta
EDGE: K:bp:p2:admissible | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:pt-torsion@L562-L562 | frame-basic hypotheses (A2)-(A4) are supplied by the hypotheses of this lemma
EDGE: bpI:p1:setting#k-bridge | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:pt-torsion@L562-L562 | supplies the K standing data of frame-basic
EDGE: K:bp:p2:constants | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:pt-torsion@L561-L561 | constants C_{DeltaX}, C_{DeltaT}
EDGE: bpI:p1:setting | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:pt-torsion@L560-L560 | direct use of the local H, K, omega, domain or standing constants
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p1
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepI:p1:ea-avg#exactness-route
KIND: route
TITLE: Averages via exactness
STATEMENT_SOURCE: blueprint-I/parts/p1-iso-linear.tex#stepI:p1:ea-avg#exactness-route@L299-L301
PROOF_SOURCE: blueprint-I/parts/p1-iso-linear.tex#stepI:p1:ea-avg#exactness-route@L299-L301
CONTRACT_ID: stepI:p1:ea-avg#exactness-route
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: setting; det G_K != 0 where eta^N is used
SOURCE_QUANTIFIERS: l
SOURCE_CONCLUSION: avg(D(H o K)) = 0, avg(Omega_K) = 0, avg(eta^N) = 0
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p1:setting, stepI:p1:ea-chain, K:bp:p2:averages, K:bp:p2:exactness, bpI:p1:setting#k-bridge
ROUTES: -
ROUTE_FOR: stepI:p1:ea-avg
EDGE: bpI:p1:setting | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:ea-avg#exactness-route@L299-L299 | standing H, K and omega
EDGE: stepI:p1:ea-chain | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:ea-avg#exactness-route@L299-L299 | H o K holomorphic and periodic
EDGE: K:bp:p2:averages | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:ea-avg#exactness-route@L300-L300 | zero average of derivatives
EDGE: K:bp:p2:exactness | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:ea-avg#exactness-route@L300-L300 | zero averaged Omega_K and eta^N
EDGE: bpI:p1:setting#k-bridge | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:ea-avg#exactness-route@L300-L300 | K data for exactness
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sol-review-I-p1
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: Alternative source route; requires independent delta review. Exactness supplies both avg Omega_K = 0 and avg eta^N = 0.
```

```text
NODE: stepI:p1:ea-avg#gradient-route
KIND: route
TITLE: Averages via gradient identity
STATEMENT_SOURCE: blueprint-I/parts/p1-iso-linear.tex#stepI:p1:ea-avg#gradient-route@L299-L301
PROOF_SOURCE: blueprint-I/parts/p1-iso-linear.tex#stepI:p1:ea-avg#gradient-route@L299-L301
CONTRACT_ID: stepI:p1:ea-avg#gradient-route
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: setting; det G_K != 0 where eta^N is used
SOURCE_QUANTIFIERS: l
SOURCE_CONCLUSION: avg(D(H o K)) = 0, avg(Omega_K) = 0, avg(eta^N) = 0
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p1:setting, stepI:p1:ea-chain, K:bp:p2:averages, K:bp:p2:exactness, bpI:p1:setting#k-bridge, stepI:p1:ea-gradient
ROUTES: -
ROUTE_FOR: stepI:p1:ea-avg
EDGE: bpI:p1:setting | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:ea-avg#gradient-route@L299-L299 | standing H, K and omega
EDGE: stepI:p1:ea-chain | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:ea-avg#gradient-route@L299-L299 | H o K holomorphic and periodic
EDGE: K:bp:p2:averages | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:ea-avg#gradient-route@L300-L300 | zero average of derivatives
EDGE: K:bp:p2:exactness | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:ea-avg#gradient-route@L300-L300 | zero averaged Omega_K
EDGE: bpI:p1:setting#k-bridge | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:ea-avg#gradient-route@L300-L300 | K data for exactness
EDGE: stepI:p1:ea-gradient | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:ea-avg#gradient-route@L301-L301 | average the identity (c) to deduce avg eta^N = 0
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sol-review-I-p1
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: Alternative source route; requires independent delta review. Exactness supplies avg Omega_K = 0; (c) supplies avg eta^N = 0.
```

```text
ITEM: stepI:p1:ea-avg
KIND: proof-region
SOURCE: blueprint-I/parts/p1-iso-linear.tex#stepI:p1:ea-avg@L298-L301
DISPOSITION: NODE stepI:p1:ea-avg, stepI:p1:ea-avg#exactness-route, stepI:p1:ea-avg#gradient-route
REASON: labelled averaging step with the direct exactness route and the separately sufficient gradient-identity route at L300-L301
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p1
REVIEWER: -
```

## Validation

- `python3 scripts/depgraph_apply_review.py docs/graph/I/packets I-p1 docs/graph/I/reviews/I-p1-review.md sol-review-I-p1 --dry-run`: `35 replaced, 2 added, 1 coverage items, 0 unresolved FAILs, 18 PASS nodes`. No changes applied.
- Replacement DEPS/EDGE parity, unique edges, source-range bounds, and dependency/route acyclicity: PASS.
- All 55 slice nodes after the proposed replacements (including both new routes) reach at least one of the four roots in the current packet topology. All 27 used K IDs exist in the owning K graph. These are structural checks, not independent certification of other slices.
- I Part 1 source SHA256: `91468c04e5fd62a310052e25471ae69a9fb093e35023c1820f7ab979e57bc98d`.
- Input packet hashes unchanged: nodes `a5e29bf5d725612964a143bdd45da7a1bfe1f37ed93ebdfe6181e7c891e5c144`; coverage `e87b0dfa15bd7a2355e9f621b56d6e46138d6b6640d4b795779ad73eb149ab21`; imports `4ef5fd1a8ecf7f265855e5426949466ca9a97e09ff1c7f69ce96fba54931585d`.
- `git diff --no-index --check /dev/null docs/graph/I/reviews/I-p1-review.md`: PASS, no output. Whole-workspace `git diff --check` reports unrelated trailing whitespace in concurrently modified `I-p5.nodes.md` at L883, L945, L1138; those files were not edited by this review.
- Only this review was written. No Lean or build commands run, as required by the review brief.
