# P-p0 topology review

Reviewer: `sol-review-P-c`. Marker: `rev-P-c`. Verdict: **FAIL**.

Reviewed snapshot: `/root/code/KAM-inp`, HEAD `e804d020ada918fe05f9f037a4674360bddccb24` at initial read. Part 0 was read in full (L1-L522), together with all 59 node blocks, all 115 coverage items, all 58 designated frozen declarations, and the cited proving/consumer units. This is a source-topology review, with no conclusion about Lean proof completion. No Lean was run. Manifest use was restricted to identity fields; all 58 file/export/anchor/contract/version/ABI tuples match. P-p0 has no imported-node dependency; the imports packet was checked for ownership context, not independently certified.

Input SHA-256:

| Input | SHA-256 |
|---|---|
| docs/graph/P/SPEC.md | `a64e804f4c71c33ebb3b1423357c6eebba56d274b39a73573ed9095b9a10417b` |
| docs/graph/P/REVIEW-BRIEF.md | `85a08dd77f773f2fb7ca26559b1f01816cf8aa3d721068be0b4eacdd3b68c207` |
| docs/graph/P/packets/P-p0.nodes.md | `453b8aac3ad478b736498fa5e99019f05b1b144b0cf100516f7a5f36de950063` |
| docs/graph/P/packets/P-p0.coverage.md | `5c0e2f8597cb835c054826a9da787d500ef6b4afc9cf34139a276846a5897cab` |
| blueprint-P/parts/p0-conventions.tex | `4d2a13a93f6d2d73ba4f7fef6f7cb5debc5a1c2d88aa9d336dd579cc23389186` |
| manifest/frozen-anchors.json | `96109bf3ff71b0a0ce6e52c842cb291f8a169e699f29f63280fde14f79221234` |

The Part 0 source hash agrees with CORPUS.sha256. The structural slice checker reports **59 nodes, 165 edges, 115 coverage items, 0 structural problems**; it does not detect the semantic failures below.

## Requested topology decisions

**Keep `bpP:p0:totality`.** P5 L325, `stepP:p5:mn-meas`, explicitly consumes its nonpositive/positive `ofReal` case split. P6 L55, `bpP:p6:domain`, uses its domain-guard explanation; L287 repeats the guarding use. The P5 use alone is sufficient for reachability. This is a derived guard summary, never an assumption leaf. Add the missing direct definition links and spell out the consumed truncation fact as below. An edge to the root P-G is unnecessary and would introduce a cycle.

**Keep `bpP:p0:expsafe -> bpP:p0:amd` as the explicitly documented statement-reference edge.** P0 L516 incorporates precisely AMD conclusion clauses (a)-(c), not its hypotheses or clause (d). P14a L306-L310 actually obtains those clauses from `bpP:p14:amd`; the application supplies positivity, margins, initial membership and the stopped bound. Thus there is no conclusion-shaped premise in the root. The statement-reference edge does not replace direct edges to the eleven definition anchors explicitly named in the expanded frozen conclusion. Keep the proof-application edge at its real consumer `stepP:p14:es-amd`; do not add a reverse edge or make AMD an assumed premise.

The three fixed-only definition anchors remain in this review under the explicit SPEC ruling. Do not fail them merely for the anticipated parking question. In the present packet, however, `IsFixedSolution` is already reachable through the retained totality remark; the SPEC assertion that all three are expected unreachable needs that qualification. `fixedHamiltonian` and `FixedKolmogorovSet` still need the writer parking decision before a global all-reachable check.

## Node-by-node verdicts

Every anchor row includes its designated FROZEN_FILE declaration as well as the source span shown. The table passes source fields and direct topology only, not proof validity. Index notation such as the source’s one-based `j <= b` is read as the b component indices, with Fin b in the authoritative frozen declaration.

| Node ID | Verdict | Source spans re-read | Reason |
|---|---|---|---|
| bpP:p0:diophantine#IsDiophantine | PASS | L44-L50 | Source fields, direct definition uses and locators agree. |
| bpP:p0:hamsymp#hamiltonianVectorField | PASS | L52-L63 | Source fields, direct definition uses and locators agree. |
| bpP:p0:hamsymp#symplecticForm | PASS | L52-L63 | Source fields, direct definition uses and locators agree. |
| bpP:p0:phase#Phase | PASS | L67-L70 | Source fields, direct definition uses and locators agree. |
| bpP:p0:plane#planeSq | PASS | L72-L76 | Source fields, direct definition uses and locators agree. |
| bpP:p0:plane#planeLength | PASS | L72-L76 | Source fields, direct definition uses and locators agree. |
| bpP:p0:plane#planeDot | PASS | L72-L76 | Source fields, direct definition uses and locators agree. |
| bpP:p0:body#bodyVector | PASS | L78-L81 | Source fields, direct definition uses and locators agree. |
| bpP:p0:blocks#fast | PASS | L83-L89 | Source fields, direct definition uses and locators agree. |
| bpP:p0:blocks#slow | PASS | L83-L89 | Source fields, direct definition uses and locators agree. |
| bpP:p0:blocks#assemble | PASS | L83-L89 | Source fields, direct definition uses and locators agree. |
| bpP:p0:oscaction#oscillatorAction | PASS | L91-L95 | Source fields, direct definition uses and locators agree. |
| bpP:p0:fastshift#fastShift | PASS | L97-L101 | Source fields, direct definition uses and locators agree. |
| bpP:p0:fastfreq#fastFrequency | PASS | L103-L108 | Source fields, direct definition uses and locators agree. |
| bpP:p0:cylinder#cylinder | PASS | L112-L121 | Source fields, direct definition uses and locators agree. |
| bpP:p0:cylinder#cylinderCell | PASS | L112-L121 | Source fields, direct definition uses and locators agree. |
| bpP:p0:degham#degenerateHamiltonian | PASS | L123-L127 | Source fields, direct definition uses and locators agree. |
| bpP:p0:secavg#secularAverage | PASS | L129-L135 | Source fields, direct definition uses and locators agree. |
| bpP:p0:fastdiffeo#HasFastDiffeomorphism | FAIL | L137-L144 | The fastFrequency edge at L138 does not contain the frequency-map use; it begins at L139. |
| bpP:p0:birkhoff#HasSecularBirkhoffForm | PASS | L146-L162 | Source fields, direct definition uses and locators agree. |
| bpP:p0:cyltorus#IsCylinderTorus | PASS | L164-L179 | Source fields, direct definition uses and locators agree. |
| bpP:p0:cylkol#IsCylinderKolmogorovSet | PASS | L181-L189 | Source fields, direct definition uses and locators agree. |
| bpP:p0:circular#circularPoint | PASS | L195-L203 | Source fields, direct definition uses and locators agree. |
| bpP:p0:circular#circularTube | PASS | L195-L203 | Source fields, direct definition uses and locators agree. |
| bpP:p0:nocoll#NoCollision | PASS | L205-L211 | Source fields, direct definition uses and locators agree. |
| bpP:p0:nocoll#PairBounds | PASS | L205-L211 | Source fields, direct definition uses and locators agree. |
| bpP:p0:barycentric#actualMasses | PASS | L213-L224 | Source fields, direct definition uses and locators agree. |
| bpP:p0:barycentric#barycentricPositions | FAIL | L213-L224 | Positive denominators are use guards, not premises of these total frozen definitions. |
| bpP:p0:barycentric#barycentricVelocities | FAIL | L213-L224 | Positive denominators are use guards, not premises of these total frozen definitions. |
| bpP:p0:newton#IsNewtonSolution | FAIL | L226-L233 | The i != j guard belongs only to collision exclusion; derivative clauses quantify every i, including N = 1. |
| bpP:p0:fixedsol#IsFixedSolution | FAIL | L235-L242 | Wrong typing of n,G,m_0; i != j incorrectly scopes central collision and derivative clauses. |
| bpP:p0:movham#movingHamiltonian | FAIL | L244-L255 | Typing field puts scalar G and m_0 in R^n; they are reals. |
| bpP:p0:fixham#fixedHamiltonian | FAIL | L257-L263 | Typing field puts scalar G and m_0 in R^n; they are reals. |
| bpP:p0:phystorus#IsPhysicalTorus | PASS | L265-L281 | Source fields, direct definition uses and locators agree. |
| bpP:p0:movkol#MovingKolmogorovSet | FAIL | L283-L295 | The predicate is total for arbitrary real parameters; source positivity is application context, not a restricted frozen definition. |
| bpP:p0:fixkol#FixedKolmogorovSet | FAIL | L297-L304 | The predicate is total for arbitrary real parameters; source positivity is application context, not a restricted frozen definition. |
| bpP:p0:totality | FAIL | L306-L329; blueprint-P/parts/p0-conventions.tex#bpP:p0:totality@L306-L329 | Retention is justified, but direct torus/cylinder/field definition uses are omitted and the consumed ofReal fact is only named, not stated. |
| bpP:p0:pg | FAIL | L333-L365; blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:main@L317-L320 | The proof EDGE uses the Part 0 label in another file where that label is absent; use the proving unit label. |
| bpP:p0:planar | FAIL | L367-L377; blueprint-P/parts/p12-planar-assembly.tex#bpP:p12:planar@L159-L163 | The proof EDGE uses the Part 0 label in another file where that label is absent; use the proving unit label. |
| bpP:p0:d25-cross#planeCross | PASS | L404-L408 | Source fields, direct definition uses and locators agree. |
| bpP:p0:d25-kepler#keplerEnergy | PASS | L410-L422 | Source fields, direct definition uses and locators agree. |
| bpP:p0:d25-kepler#keplerAxis | FAIL | L410-L422 | Missing direct Phase edge: the frozen declaration explicitly types z : Phase (n * 2), also P0 L411. |
| bpP:p0:d25-kepler#keplerAction | FAIL | L410-L422 | Missing direct Phase edge: the frozen declaration explicitly types z : Phase (n * 2), also P0 L411. |
| bpP:p0:d25-kepler#keplerEccVector | PASS | L410-L422 | Source fields, direct definition uses and locators agree. |
| bpP:p0:d25-amd#totalMomentum | PASS | L424-L428 | Source fields, direct definition uses and locators agree. |
| bpP:p0:d25-amd#physicalAMD | PASS | L424-L428 | Source fields, direct definition uses and locators agree. |
| bpP:p0:d25-prograde#ProgradeElliptic | PASS | L430-L434 | Source fields, direct definition uses and locators agree. |
| bpP:p0:d25-lowamd#LowAMDRegion | PASS | L436-L441 | Source fields, direct definition uses and locators agree. |
| bpP:p0:d25-box#AMDBox | PASS | L443-L455 | Source fields, direct definition uses and locators agree. |
| bpP:p0:d25-box#Admissible | PASS | L443-L455 | Source fields, direct definition uses and locators agree. |
| bpP:p0:d25-movsol#IsMovingSolutionOn | PASS | L457-L462 | Source fields, direct definition uses and locators agree. |
| bpP:p0:d25-movsol#IsHamiltonianSolutionOn | PASS | L457-L462 | Source fields, direct definition uses and locators agree. |
| bpP:p0:d25-newton#IsNewtonSolutionOn | PASS | L464-L469 | Source fields, direct definition uses and locators agree. |
| bpP:p0:d25-unique#MovingUniqueOn | PASS | L471-L475 | Source fields, direct definition uses and locators agree. |
| bpP:p0:d25-stopped#StoppedActionBound | PASS | L477-L484 | Source fields, direct definition uses and locators agree. |
| bpP:p0:d25-exponents#planetaryTimeExponent | PASS | L486-L490 | Source fields, direct definition uses and locators agree. |
| bpP:p0:d25-exponents#planetaryDriftExponent | PASS | L486-L490 | Source fields, direct definition uses and locators agree. |
| bpP:p0:amd | FAIL | L499-L511; blueprint-P/parts/p14a-amd-expsafe.tex#bpP:p14:amd@L129-L133 | The proof EDGE uses the Part 0 label in another file where that label is absent; use the proving unit label. |
| bpP:p0:expsafe | FAIL | L513-L522; blueprint-P/parts/p14a-amd-expsafe.tex#bpP:p14:expsafe@L295-L299 | The proof EDGE uses the Part 0 label in another file where that label is absent; use the proving unit label. Missing eleven direct definition edges in the expanded frozen conclusion; amd is not a substitute for those edges. |

43 node records PASS; 16 FAIL. A failed record needs a fresh reviewer after replacement.

## Coverage verdicts

| Coverage item | Verdict | Evidence / reason |
|---|---|---|
| p0:prose-L42-L42 | FAIL | The exclusion is valid, but its reason quotes a deleted no-I/N sentence; the current source explicitly names the track-I definition. |
| p0:prose-L193-L193 | FAIL | The reason incorrectly says every mapped total definition has positivity premises in SOURCE_HYPOTHESES; distinguish source use guards. |
| p0:sourcegap-L376 | FAIL | Mapping treats the unused R-nondegeneracy route and the noncont administrative remark as closure nodes. The current proof uses P-G and the planar Birkhoff construction. |

all other coverage items PASS

The valid dispositions include the P-FIXED deferral, administrative scope/D25-totality remarks, provenance citations (including N exponent comparison), conventions mapped to their definitions, and both P-G source-gap bridges (`p5:strictness`, `p5:uniform-remainder`). Coverage PASS means the mapping/exclusion is valid; it does not override a FAIL on the mapped node’s fields. No new Part 0 proof bridge, external input or alternative route is warranted by the raw text.

## Replacement node blocks

Only failing fields and their associated dependency/EDGE lists change. Immutable anchor identity, statement/proof source fields and initialized status fields are preserved. All replacements belong to P-p0; the writer applies them and obtains a different delta reviewer.

```text
NODE: bpP:p0:fastdiffeo#HasFastDiffeomorphism
KIND: definition
TITLE: Fast diffeomorphism: KAM.Planetary.HasFastDiffeomorphism
STATEMENT_SOURCE: blueprint-P/parts/p0-conventions.tex#bpP:p0:fastdiffeo@L137-L144
PROOF_SOURCE: -
CONTRACT_ID: planetary.HasFastDiffeomorphism
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: none (typing data): H_0: R^a -> R, W subset R^a
SOURCE_QUANTIFIERS: a implicit; H_0, W
SOURCE_CONCLUSION: defines HasFastDiffeo(H_0,W): (i) H_0 real analytic at every point of W; (ii) omega_{H_0}(W) open; (iii) exists g: R^a -> R^a of class C^1 on omega_{H_0}(W) with g(omega_{H_0}(I)) = I for I in W and g(w) in W, omega_{H_0}(g(w)) = w for w in omega_{H_0}(W)
CONSTANT_SCOPE: g is explicit (not a totalized inverse); no dependence on constants
FROZEN_FILE: KAM/Frozen/Planetary/Defs/HasFastDiffeomorphism.lean
FROZEN_DECL: KAM.Planetary.HasFastDiffeomorphism
FROZEN_ANCHOR_ID: planetary.HasFastDiffeomorphism.v1
FROZEN_ABI_SHA256: 91718a20f82c0046ed31c76db7aeaf5bc53257ab286e32d58ae1b57f548333c0
DEPS: bpP:p0:fastfreq#fastFrequency
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p0:fastfreq#fastFrequency | blueprint-P/parts/p0-conventions.tex#bpP:p0:fastdiffeo@L139-L140 | omega_{H_0} is the fast frequency map in (ii) and (iii)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p0
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: bpP:p0:barycentric#barycentricPositions
KIND: definition
TITLE: Actual masses, barycentric reconstruction: KAM.Planetary.barycentricPositions
STATEMENT_SOURCE: blueprint-P/parts/p0-conventions.tex#bpP:p0:barycentric@L213-L224
PROOF_SOURCE: -
CONTRACT_ID: planetary.barycentricPositions
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: none (typing data): n in N; m_0, mu in R; m in R^n; q in R^{2n}
SOURCE_QUANTIFIERS: n implicit; m_0, m, mu, q
SOURCE_CONCLUSION: defines x_0(q) = -mu/(m_0 + mu sum_i m_i) sum_i m_i q^(i) and x_i(q) = x_0(q) + q^(i) (Sun at index 0, planet i at index i, order of Fin.cons)
CONSTANT_SCOPE: none; the definition is total for arbitrary real data. In the physical applications, m_0 > 0, m_i > 0 and mu > 0 guard divisions as described at P0 L193, L220-L221, L319-L320.
FROZEN_FILE: KAM/Frozen/Planetary/Defs/BarycentricPositions.lean
FROZEN_DECL: KAM.Planetary.barycentricPositions
FROZEN_ANCHOR_ID: planetary.barycentricPositions.v1
FROZEN_ABI_SHA256: 222cb379298aba4da485faf152163725857fac2c6578168946b7d79fc09910d1
DEPS: bpP:p0:body#bodyVector
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p0:body#bodyVector | blueprint-P/parts/p0-conventions.tex#bpP:p0:barycentric@L217-L217 | q^(i) = body(q,i)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p0
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: bpP:p0:barycentric#barycentricVelocities
KIND: definition
TITLE: Actual masses, barycentric reconstruction: KAM.Planetary.barycentricVelocities
STATEMENT_SOURCE: blueprint-P/parts/p0-conventions.tex#bpP:p0:barycentric@L213-L224
PROOF_SOURCE: -
CONTRACT_ID: planetary.barycentricVelocities
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: none (typing data): n in N; m_0, mu in R; m in R^n; p in R^{2n}
SOURCE_QUANTIFIERS: n implicit; m_0, m, mu, p
SOURCE_CONCLUSION: defines v_0(p) = -(mu/m_0) sum_i p^(i) and v_i(p) = p^(i)/m_i (1 <= i <= n; Sun at index 0)
CONSTANT_SCOPE: none; the definition is total for arbitrary real data. In the physical applications, m_0 > 0, m_i > 0 and mu > 0 guard divisions as described at P0 L193, L220-L221, L319-L320.
FROZEN_FILE: KAM/Frozen/Planetary/Defs/BarycentricVelocities.lean
FROZEN_DECL: KAM.Planetary.barycentricVelocities
FROZEN_ANCHOR_ID: planetary.barycentricVelocities.v1
FROZEN_ABI_SHA256: f0bb61447643e18562ffdde5d8ddbd4bc7ed46d52985b4fabaeab4a657a15480
DEPS: bpP:p0:body#bodyVector
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p0:body#bodyVector | blueprint-P/parts/p0-conventions.tex#bpP:p0:barycentric@L218-L218 | p^(i) = body(p,i)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p0
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: bpP:p0:newton#IsNewtonSolution
KIND: definition
TITLE: Newton solutions: KAM.Planetary.IsNewtonSolution
STATEMENT_SOURCE: blueprint-P/parts/p0-conventions.tex#bpP:p0:newton@L226-L233
PROOF_SOURCE: -
CONTRACT_ID: planetary.IsNewtonSolution
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: none (typing data): N in N, G in R, M in R^N, Q, V: R -> (R^2)^N
SOURCE_QUANTIFIERS: N implicit; G, M, Q, V
SOURCE_CONCLUSION: defines IsNewton(G,M,Q,V) as the conjunction: (i) for every t in R and i,j < N with i != j, ¦Q_j(t)-Q_i(t)¦ > 0; (ii) for every t in R and i < N, Q_i has derivative V_i(t) at t; (iii) for every t in R and i < N, V_i has derivative sum_{j != i} G M_j/¦Q_j(t)-Q_i(t)¦^3 (Q_j(t)-Q_i(t)) at t (all-time Newton equations)
CONSTANT_SCOPE: none
FROZEN_FILE: KAM/Frozen/Planetary/Defs/IsNewtonSolution.lean
FROZEN_DECL: KAM.Planetary.IsNewtonSolution
FROZEN_ANCHOR_ID: planetary.IsNewtonSolution.v1
FROZEN_ABI_SHA256: 8402f230d795a683f6ad950f3be88f5af078b355ff661cbdd9c85ed215b5675e
DEPS: bpP:p0:plane#planeLength
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p0:plane#planeLength | blueprint-P/parts/p0-conventions.tex#bpP:p0:newton@L228-L228 | ¦.¦ is the physical length in (i) and (iii)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p0
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: bpP:p0:fixedsol#IsFixedSolution
KIND: definition
TITLE: Fixed-Sun solutions: KAM.Planetary.IsFixedSolution
STATEMENT_SOURCE: blueprint-P/parts/p0-conventions.tex#bpP:p0:fixedsol@L235-L242
PROOF_SOURCE: -
CONTRACT_ID: planetary.IsFixedSolution
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: none (typing data): n in N; G, m_0, eps in R; m in R^n; Q, V: R -> (R^2)^n
SOURCE_QUANTIFIERS: n implicit; G, m_0, m, eps, Q, V
SOURCE_CONCLUSION: defines IsFixedSol(G,m_0,m,eps,Q,V) as the conjunction: for every t and i < n, ¦Q_i(t)¦ > 0; for every t and i,j < n with i != j, ¦Q_j(t)-Q_i(t)¦ > 0; for every t and i < n, Q_i has derivative V_i(t) at t; for every t and i < n, V_i has derivative -G m_0/¦Q_i(t)¦^3 Q_i(t) + eps sum_{j != i} G m_j/¦Q_j(t)-Q_i(t)¦^3 (Q_j(t)-Q_i(t)) at t. The Sun is the constant origin.
CONSTANT_SCOPE: none
FROZEN_FILE: KAM/Frozen/Planetary/Defs/IsFixedSolution.lean
FROZEN_DECL: KAM.Planetary.IsFixedSolution
FROZEN_ANCHOR_ID: planetary.IsFixedSolution.v1
FROZEN_ABI_SHA256: 6af3b94b20194109c8fa7add7b37df97b99d75e798ffbe8c6d5edc188df0ad80
DEPS: bpP:p0:plane#planeLength
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p0:plane#planeLength | blueprint-P/parts/p0-conventions.tex#bpP:p0:fixedsol@L237-L237 | ¦.¦ is the physical length
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p0
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: bpP:p0:movham#movingHamiltonian
KIND: definition
TITLE: Moving-Sun Hamiltonian: KAM.Planetary.movingHamiltonian
STATEMENT_SOURCE: blueprint-P/parts/p0-conventions.tex#bpP:p0:movham@L244-L255
PROOF_SOURCE: -
CONTRACT_ID: planetary.movingHamiltonian
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: none (typing data): n in N; G, m_0, mu in R; m in R^n; z = (q,p) in Ph_{2n}
SOURCE_QUANTIFIERS: n implicit; G, m_0, m, mu, z
SOURCE_CONCLUSION: defines H_mov(z) = sum_i [(1/m_i + mu/m_0) ¦p^(i)¦^2/2 - G m_0 m_i/¦q^(i)¦] + mu sum_{i<j} [p^(i).p^(j)/m_0 - G m_i m_j/¦q^(i) - q^(j)¦] (every term kept: the Sun moves)
CONSTANT_SCOPE: none
FROZEN_FILE: KAM/Frozen/Planetary/Defs/MovingHamiltonian.lean
FROZEN_DECL: KAM.Planetary.movingHamiltonian
FROZEN_ANCHOR_ID: planetary.movingHamiltonian.v1
FROZEN_ABI_SHA256: 8286a501cf934fd5f341976b5390802b17da25398fc9059edc35fd65d3ab79d8
DEPS: bpP:p0:phase#Phase, bpP:p0:plane#planeSq, bpP:p0:plane#planeLength, bpP:p0:plane#planeDot, bpP:p0:body#bodyVector
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p0:phase#Phase | blueprint-P/parts/p0-conventions.tex#bpP:p0:movham@L245-L245 | z in Ph_{2n}
EDGE: bpP:p0:plane#planeSq | blueprint-P/parts/p0-conventions.tex#bpP:p0:movham@L247-L247 | ¦p^(i)¦^2
EDGE: bpP:p0:plane#planeLength | blueprint-P/parts/p0-conventions.tex#bpP:p0:movham@L247-L247 | ¦q^(i)¦
EDGE: bpP:p0:plane#planeDot | blueprint-P/parts/p0-conventions.tex#bpP:p0:movham@L248-L248 | p^(i).p^(j)
EDGE: bpP:p0:body#bodyVector | blueprint-P/parts/p0-conventions.tex#bpP:p0:movham@L247-L247 | q^(i), p^(i)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p0
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: bpP:p0:fixham#fixedHamiltonian
KIND: definition
TITLE: Fixed-Sun Hamiltonian: KAM.Planetary.fixedHamiltonian
STATEMENT_SOURCE: blueprint-P/parts/p0-conventions.tex#bpP:p0:fixham@L257-L263
PROOF_SOURCE: -
CONTRACT_ID: planetary.fixedHamiltonian
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: none (typing data): n in N; G, m_0, eps in R; m in R^n; z = (q,p) in Ph_{2n}
SOURCE_QUANTIFIERS: n implicit; G, m_0, m, eps, z
SOURCE_CONCLUSION: defines H_fix(z) = sum_i [¦p^(i)¦^2/(2 m_i) - G m_0 m_i/¦q^(i)¦] - eps sum_{i<j} G m_i m_j/¦q^(i) - q^(j)¦ (Sun at the origin; only the planet-planet interaction, with coefficient eps)
CONSTANT_SCOPE: none
FROZEN_FILE: KAM/Frozen/Planetary/Defs/FixedHamiltonian.lean
FROZEN_DECL: KAM.Planetary.fixedHamiltonian
FROZEN_ANCHOR_ID: planetary.fixedHamiltonian.v1
FROZEN_ABI_SHA256: 60485f51ed52fdf21458b60ec11010aa47658aa6ddb09a132faf7e83e33d99f3
DEPS: bpP:p0:phase#Phase, bpP:p0:plane#planeSq, bpP:p0:plane#planeLength, bpP:p0:body#bodyVector
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p0:phase#Phase | blueprint-P/parts/p0-conventions.tex#bpP:p0:fixham@L258-L258 | z in Ph_{2n}
EDGE: bpP:p0:plane#planeSq | blueprint-P/parts/p0-conventions.tex#bpP:p0:fixham@L259-L259 | ¦p^(i)¦^2
EDGE: bpP:p0:plane#planeLength | blueprint-P/parts/p0-conventions.tex#bpP:p0:fixham@L259-L259 | ¦q^(i)¦
EDGE: bpP:p0:body#bodyVector | blueprint-P/parts/p0-conventions.tex#bpP:p0:fixham@L259-L259 | q^(i), p^(i)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p0
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: bpP:p0:movkol#MovingKolmogorovSet
KIND: definition
TITLE: Moving-Sun Kolmogorov set: KAM.Planetary.MovingKolmogorovSet
STATEMENT_SOURCE: blueprint-P/parts/p0-conventions.tex#bpP:p0:movkol@L283-L295
PROOF_SOURCE: -
CONTRACT_ID: planetary.MovingKolmogorovSet
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: none (typing data): n in N; G, m_0, mu, eta, d, D in R; m, a in R^n; S subset Ph_{2n}
SOURCE_QUANTIFIERS: n implicit; G, m_0, m, a, mu, eta, d, D, S
SOURCE_CONCLUSION: defines MovKol(G,m_0,m,a,mu,eta,d,D,S): S measurable, S subset U_eta, and every z in S has w, K, theta with K(theta) = z, K(R^{2n}) subset S, IsPhysTorus(H_mov,w,K), and for every phi in R^{2n}: (a) NoColl(K(phi)_1); (b) IsNewton(G,mass_mu, t -> x(K(phi+t w)_1), t -> v(K(phi+t w)_2)); (c) PairBounds(d,D; x(K(phi)_1))
CONSTANT_SCOPE: w, K, theta depend on z; d, D are fixed arguments. The source uses this total predicate under the physical convention G, m_0 > 0 and m_i > 0 (P0 L193); these are not additional arguments or conjuncts of the definition.
FROZEN_FILE: KAM/Frozen/Planetary/Defs/MovingKolmogorovSet.lean
FROZEN_DECL: KAM.Planetary.MovingKolmogorovSet
FROZEN_ANCHOR_ID: planetary.MovingKolmogorovSet.v1
FROZEN_ABI_SHA256: 2f6ca8e426b3436532e15e8e5946808d686bd351b4dddf6c1ef2e89294654dad
DEPS: bpP:p0:phase#Phase, bpP:p0:circular#circularTube, bpP:p0:phystorus#IsPhysicalTorus, bpP:p0:movham#movingHamiltonian, bpP:p0:nocoll#NoCollision, bpP:p0:newton#IsNewtonSolution, bpP:p0:barycentric#actualMasses, bpP:p0:barycentric#barycentricPositions, bpP:p0:barycentric#barycentricVelocities, bpP:p0:nocoll#PairBounds
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p0:phase#Phase | blueprint-P/parts/p0-conventions.tex#bpP:p0:movkol@L284-L284 | S subset Ph_{2n}
EDGE: bpP:p0:circular#circularTube | blueprint-P/parts/p0-conventions.tex#bpP:p0:movkol@L285-L285 | S subset U_eta
EDGE: bpP:p0:phystorus#IsPhysicalTorus | blueprint-P/parts/p0-conventions.tex#bpP:p0:movkol@L286-L286 | IsPhysTorus(H_mov,w,K)
EDGE: bpP:p0:movham#movingHamiltonian | blueprint-P/parts/p0-conventions.tex#bpP:p0:movkol@L286-L286 | H_mov is the Hamiltonian of the torus predicate
EDGE: bpP:p0:nocoll#NoCollision | blueprint-P/parts/p0-conventions.tex#bpP:p0:movkol@L288-L288 | clause (a)
EDGE: bpP:p0:newton#IsNewtonSolution | blueprint-P/parts/p0-conventions.tex#bpP:p0:movkol@L289-L289 | clause (b)
EDGE: bpP:p0:barycentric#actualMasses | blueprint-P/parts/p0-conventions.tex#bpP:p0:movkol@L289-L289 | masses mass_mu in (b)
EDGE: bpP:p0:barycentric#barycentricPositions | blueprint-P/parts/p0-conventions.tex#bpP:p0:movkol@L290-L290 | x in (b) and (c)
EDGE: bpP:p0:barycentric#barycentricVelocities | blueprint-P/parts/p0-conventions.tex#bpP:p0:movkol@L290-L290 | v in (b)
EDGE: bpP:p0:nocoll#PairBounds | blueprint-P/parts/p0-conventions.tex#bpP:p0:movkol@L291-L291 | clause (c)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p0
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: bpP:p0:fixkol#FixedKolmogorovSet
KIND: definition
TITLE: Fixed-Sun Kolmogorov set: KAM.Planetary.FixedKolmogorovSet
STATEMENT_SOURCE: blueprint-P/parts/p0-conventions.tex#bpP:p0:fixkol@L297-L304
PROOF_SOURCE: -
CONTRACT_ID: planetary.FixedKolmogorovSet
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: none (typing data): n in N; G, m_0, eps, eta, d, D in R; m, a in R^n; S subset Ph_{2n}
SOURCE_QUANTIFIERS: n implicit; G, m_0, m, a, eps, eta, d, D, S
SOURCE_CONCLUSION: defines FixKol(G,m_0,m,a,eps,eta,d,D,S): S measurable, S subset U_eta, and every z in S has w, K, theta with K(theta) = z, K(R^{2n}) subset S, IsPhysTorus(H_fix,w,K), and for every phi: NoColl(K(phi)_1); IsFixedSol(G,m_0,m,eps, t -> (K(phi+t w)_1^(i))_i, t -> (K(phi+t w)_2^(i)/m_i)_i); PairBounds(d,D; (0,K(phi)_1^(1),...,K(phi)_1^(n)))
CONSTANT_SCOPE: w, K, theta depend on z; d, D are fixed arguments. The source uses this total predicate under the physical convention G, m_0 > 0 and m_i > 0 (P0 L193); these are not additional arguments or conjuncts of the definition.
FROZEN_FILE: KAM/Frozen/Planetary/Defs/FixedKolmogorovSet.lean
FROZEN_DECL: KAM.Planetary.FixedKolmogorovSet
FROZEN_ANCHOR_ID: planetary.FixedKolmogorovSet.v1
FROZEN_ABI_SHA256: 52da59adfe14308434550d0b0436813de09bfc89b46c325cd3cbb46201acc460
DEPS: bpP:p0:phase#Phase, bpP:p0:circular#circularTube, bpP:p0:phystorus#IsPhysicalTorus, bpP:p0:fixham#fixedHamiltonian, bpP:p0:nocoll#NoCollision, bpP:p0:fixedsol#IsFixedSolution, bpP:p0:body#bodyVector, bpP:p0:nocoll#PairBounds
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p0:phase#Phase | blueprint-P/parts/p0-conventions.tex#bpP:p0:fixkol@L298-L298 | S subset Ph_{2n}
EDGE: bpP:p0:circular#circularTube | blueprint-P/parts/p0-conventions.tex#bpP:p0:fixkol@L298-L298 | S subset U_eta
EDGE: bpP:p0:phystorus#IsPhysicalTorus | blueprint-P/parts/p0-conventions.tex#bpP:p0:fixkol@L299-L299 | IsPhysTorus(H_fix,w,K)
EDGE: bpP:p0:fixham#fixedHamiltonian | blueprint-P/parts/p0-conventions.tex#bpP:p0:fixkol@L299-L299 | H_fix is the Hamiltonian of the torus predicate
EDGE: bpP:p0:nocoll#NoCollision | blueprint-P/parts/p0-conventions.tex#bpP:p0:fixkol@L300-L300 | NoColl clause
EDGE: bpP:p0:fixedsol#IsFixedSolution | blueprint-P/parts/p0-conventions.tex#bpP:p0:fixkol@L300-L300 | IsFixedSol clause
EDGE: bpP:p0:body#bodyVector | blueprint-P/parts/p0-conventions.tex#bpP:p0:fixkol@L300-L300 | K(..)_1^(i) are body vectors
EDGE: bpP:p0:nocoll#PairBounds | blueprint-P/parts/p0-conventions.tex#bpP:p0:fixkol@L301-L301 | PairBounds clause
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p0
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: bpP:p0:totality
KIND: claim
TITLE: Lean totality
STATEMENT_SOURCE: blueprint-P/parts/p0-conventions.tex#bpP:p0:totality@L306-L329
PROOF_SOURCE: blueprint-P/parts/p0-conventions.tex#bpP:p0:totality@L306-L329
CONTRACT_ID: bpP:p0:totality
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the relevant guards of the Part 0 statements, clause by clause (not new standing assumptions): analyticity/differentiability on the stated domains; HasFastDiffeomorphism on W containing closure(V); integrability in HasSecularBirkhoffForm and 0 < delta <= r_0; collision-free clauses; G, m_0, m_i, a_i, mu > 0 where the corresponding divisions are used; 0 < r < r_* < 1; k != 0; V open and bounded and S measurable for the measure clause
SOURCE_QUANTIFIERS: none (a list of guarded facts attached to the definitions of Part 0)
SOURCE_CONCLUSION: guard summary: fderiv is zero at non-differentiability, whereas the torus derivatives are genuine by the differentiability of H and analyticity of K; H_mu is analytic on C(V,r) under the P-G data and r < r_0, mu in [0,mu_0]; the Bochner integral P_av is zero for a non-integrable integrand and HasBirkhoff (i) supplies integrability for every point of (ii); physical lengths have nonnegative square-root radicands and collision and positivity clauses guard the stated reciprocals; log(1/r) > 0 and sqrt r has r > 0; ¦k¦_1 >= 1 for nonzero integer k; ofReal(1-C sqrt r) equals the real lower factor if positive and zero otherwise, so in the latter case the strict lower measure inequality follows from 0 < meas(S cap F); F(V,r) is Borel, S is measurable, and meas F(V,r) < infinity for bounded V
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p0:fastfreq#fastFrequency, bpP:p0:hamsymp#hamiltonianVectorField, bpP:p0:fastdiffeo#HasFastDiffeomorphism, bpP:p0:birkhoff#HasSecularBirkhoffForm, bpP:p0:secavg#secularAverage, bpP:p0:plane#planeLength, bpP:p0:nocoll#NoCollision, bpP:p0:newton#IsNewtonSolution, bpP:p0:fixedsol#IsFixedSolution, bpP:p0:circular#circularPoint, bpP:p0:barycentric#barycentricPositions, bpP:p0:barycentric#barycentricVelocities, bpP:p0:diophantine#IsDiophantine, bpP:p0:cylinder#cylinderCell, bpP:p0:cyltorus#IsCylinderTorus, bpP:p0:phystorus#IsPhysicalTorus, bpP:p0:cylinder#cylinder, bpP:p0:degham#degenerateHamiltonian, bpP:p0:hamsymp#symplecticForm
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p0:fastfreq#fastFrequency | blueprint-P/parts/p0-conventions.tex#bpP:p0:totality@L310-L310 | omega_{H_0} totality (Frechet derivative 0 at non-differentiability)
EDGE: bpP:p0:hamsymp#hamiltonianVectorField | blueprint-P/parts/p0-conventions.tex#bpP:p0:totality@L310-L310 | X_H totality
EDGE: bpP:p0:fastdiffeo#HasFastDiffeomorphism | blueprint-P/parts/p0-conventions.tex#bpP:p0:totality@L311-L311 | omega_{H_0} used only through HasFastDiffeo
EDGE: bpP:p0:birkhoff#HasSecularBirkhoffForm | blueprint-P/parts/p0-conventions.tex#bpP:p0:totality@L315-L315 | (i) asserts integrability, (ii) has delta <= r_0
EDGE: bpP:p0:secavg#secularAverage | blueprint-P/parts/p0-conventions.tex#bpP:p0:totality@L315-L315 | Bochner integral P_av is 0 for non-integrable integrands
EDGE: bpP:p0:plane#planeLength | blueprint-P/parts/p0-conventions.tex#bpP:p0:totality@L317-L317 | sqrt in the physical length has nonnegative radicand
EDGE: bpP:p0:nocoll#NoCollision | blueprint-P/parts/p0-conventions.tex#bpP:p0:totality@L318-L318 | collision-free clause (a)
EDGE: bpP:p0:newton#IsNewtonSolution | blueprint-P/parts/p0-conventions.tex#bpP:p0:totality@L318-L318 | IsNewton (i) guards the divisions
EDGE: bpP:p0:fixedsol#IsFixedSolution | blueprint-P/parts/p0-conventions.tex#bpP:p0:totality@L318-L318 | IsFixedSol first two conjuncts guard the divisions
EDGE: bpP:p0:circular#circularPoint | blueprint-P/parts/p0-conventions.tex#bpP:p0:totality@L319-L319 | sqrt(G m_0/a_i) and 1/a_i are guarded
EDGE: bpP:p0:barycentric#barycentricPositions | blueprint-P/parts/p0-conventions.tex#bpP:p0:totality@L319-L319 | denominator m_0 + mu sum m_i in x_0
EDGE: bpP:p0:barycentric#barycentricVelocities | blueprint-P/parts/p0-conventions.tex#bpP:p0:totality@L319-L319 | denominators m_0 and m_i in v_0, v_i
EDGE: bpP:p0:diophantine#IsDiophantine | blueprint-P/parts/p0-conventions.tex#bpP:p0:totality@L322-L322 | ¦k¦_1^tau with ¦k¦_1 >= 1 for k != 0
EDGE: bpP:p0:cylinder#cylinderCell | blueprint-P/parts/p0-conventions.tex#bpP:p0:totality@L327-L327 | meas F(V,r) < infinity
EDGE: bpP:p0:cyltorus#IsCylinderTorus | blueprint-P/parts/p0-conventions.tex#bpP:p0:totality@L311-L314 | the cylinder torus predicate supplies differentiability of H and analyticity of K
EDGE: bpP:p0:phystorus#IsPhysicalTorus | blueprint-P/parts/p0-conventions.tex#bpP:p0:totality@L311-L314 | the physical torus predicate supplies the corresponding genuine derivative guards
EDGE: bpP:p0:cylinder#cylinder | blueprint-P/parts/p0-conventions.tex#bpP:p0:totality@L312-L313 | the smaller cylinder C(V,r) is the analytic domain being used
EDGE: bpP:p0:degham#degenerateHamiltonian | blueprint-P/parts/p0-conventions.tex#bpP:p0:totality@L313-L313 | H_mu is the family whose analyticity guards the vector field
EDGE: bpP:p0:hamsymp#symplecticForm | blueprint-P/parts/p0-conventions.tex#bpP:p0:totality@L314-L314 | the Lagrangian assertion Omega(DK .,DK .)=0 uses the genuine derivatives
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p0
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: remark kept as a node: Part 5 (stepP:p5:mn-meas) and Part 6 (bpP:p6:domain) cite it for guarded facts they consume (meas F(V,r) < infinity, domain guards). No edge to bpP:p0:pg: the remark explains the guards of that statement, and an edge would close a cycle through bpP:p5:main.
```

```text
NODE: bpP:p0:pg
KIND: theorem
TITLE: P-G: corrected properly degenerate KAM
STATEMENT_SOURCE: blueprint-P/parts/p0-conventions.tex#bpP:p0:pg@L333-L365
PROOF_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:main@L317-L320
CONTRACT_ID: planetary.properlyDegenerateKAM
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: a, b >= 1; V subset R^a open, connected, bounded; W subset R^a open with closure(V) subset W; boundary collar: there are A, d > 0 with meas{I: exists J in boundary V, ¦I-J¦_inf < t} <= A t for all 0 < t < d; r_0, mu_0, B > 0; H_0: R^a -> R, P: R x Ph_{a+b} -> R, P_0: R x R^a -> R, Omega: R x R^a -> R^b, beta: R x R^a -> R^{bxb}; (H1) (mu,z) -> P(mu,z) real analytic at every point of [0,mu_0] x closure(C(V,r_0)); (H2) P(mu, z + shift(k)) = P(mu,z) for mu in [0,mu_0], z in C(V,r_0), k in Z^a; (H3) HasFastDiffeo(H_0,W); (H4) HasBirkhoff(P,V,r_0,mu_0,P_0,Omega,beta); (H5) ¦det beta(mu,I)¦ >= B for mu in [0,mu_0], I in V; (H6) beta(mu,I) symmetric for mu in [0,mu_0], I in V
SOURCE_QUANTIFIERS: forall a, b (>= 1), V, W, (A,d collar), r_0, mu_0, B, H_0, P, P_0, Omega, beta (all data fixed first), hypotheses (H1)-(H6); exists r_*, C, c; forall r, mu with 0 < r < r_*, 0 < mu < mu_0, mu < r^6/(log(1/r))^c; exists S
SOURCE_CONCLUSION: there exist r_*, C, c with 0 < r_* < r_0, r_* < 1, C > 0, c > 0 such that for all r, mu with 0 < r < r_*, 0 < mu < mu_0, mu < r^6/(log(1/r))^c there is S subset Ph_{a+b} with IsCylKol(H_mu,V,r,mu,C,S) (H_mu = H_0 + mu P(mu,.)) and 0 < meas(S cap F(V,r)), ofReal(1 - C sqrt r) meas F(V,r) < meas(S cap F(V,r)) < meas F(V,r)
CONSTANT_SCOPE: r_*, C, c depend on all the data and hypotheses (a, b, V, W, A, d, r_0, mu_0, B, H_0, P, P_0, Omega, beta) and not on r or mu; C is simultaneously the frequency bound of IsCylKol and the measure constant; S depends on (r, mu)
FROZEN_FILE: KAM/Frozen/Planetary/Theorems/ProperlyDegenerateKAM.lean
FROZEN_DECL: KAM.Planetary.properlyDegenerateKAM
FROZEN_ANCHOR_ID: planetary.properlyDegenerateKAM.v1
FROZEN_ABI_SHA256: d347498b8bc8935acd3895d5fd5316822593add37c2eff43f9d7f66bfa63d001
DEPS: bpP:p0:phase#Phase, bpP:p0:cylinder#cylinder, bpP:p0:fastshift#fastShift, bpP:p0:fastdiffeo#HasFastDiffeomorphism, bpP:p0:birkhoff#HasSecularBirkhoffForm, bpP:p0:degham#degenerateHamiltonian, bpP:p0:cylkol#IsCylinderKolmogorovSet, bpP:p0:cylinder#cylinderCell, bpP:p5:main
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p0:phase#Phase | blueprint-P/parts/p0-conventions.tex#bpP:p0:pg@L337-L337 | P is defined on R x Ph_{a+b}
EDGE: bpP:p0:cylinder#cylinder | blueprint-P/parts/p0-conventions.tex#bpP:p0:pg@L342-L342 | C(V,r_0) in (H1) and (H2)
EDGE: bpP:p0:fastshift#fastShift | blueprint-P/parts/p0-conventions.tex#bpP:p0:pg@L343-L343 | shift(k) in (H2)
EDGE: bpP:p0:fastdiffeo#HasFastDiffeomorphism | blueprint-P/parts/p0-conventions.tex#bpP:p0:pg@L344-L344 | (H3) HasFastDiffeo(H_0,W)
EDGE: bpP:p0:birkhoff#HasSecularBirkhoffForm | blueprint-P/parts/p0-conventions.tex#bpP:p0:pg@L345-L345 | (H4) HasBirkhoff
EDGE: bpP:p0:degham#degenerateHamiltonian | blueprint-P/parts/p0-conventions.tex#bpP:p0:pg@L351-L351 | H_mu = H_0 + mu P(mu,.)
EDGE: bpP:p0:cylkol#IsCylinderKolmogorovSet | blueprint-P/parts/p0-conventions.tex#bpP:p0:pg@L351-L351 | IsCylKol(H_mu,V,r,mu,C,S)
EDGE: bpP:p0:cylinder#cylinderCell | blueprint-P/parts/p0-conventions.tex#bpP:p0:pg@L353-L353 | F(V,r) in the measure conclusions
EDGE: bpP:p5:main | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:main@L317-L317 | this result carries \frozen{KAM.Planetary.properlyDegenerateKAM}: it proves the anchor
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p0
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: root anchor. Proof: Theorem bpP:p5:main (Part 5), which carries the \frozen tag. Source fields follow Part 0 L333-L365 and the frozen file (quantifier order: all data, then r_*,C,c, then r,mu, then S). The reference in HasBirkhoff to this theorem (L159) is a forward pointer, deleted. The sourcegap at L362 is covered by bpP:p5:strictness and bpP:p5:uniform-remainder.
```

```text
NODE: bpP:p0:planar
KIND: theorem
TITLE: P-PLANAR: two planar planets with a moving Sun
STATEMENT_SOURCE: blueprint-P/parts/p0-conventions.tex#bpP:p0:planar@L367-L377
PROOF_SOURCE: blueprint-P/parts/p12-planar-assembly.tex#bpP:p12:planar@L159-L163
CONTRACT_ID: planetary.planarTwoPlanetKAM
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: G, m_0 > 0; m, a: Fin 2 -> R with m_i > 0 and a_i > 0 for i = 0,1 and a_0 < a_1 (strictly ordered axes, no numerical separation); eta > 0
SOURCE_QUANTIFIERS: forall G, m_0, m, a, eta (data fixed first); exists mu_0, d, D; forall mu with 0 < mu < mu_0; exists S
SOURCE_CONCLUSION: there exist mu_0, d, D with 0 < mu_0 and 0 < d < D such that for every mu with 0 < mu < mu_0 there is S subset Ph_{2.2} with 0 < meas S < infinity and MovKol(G,m_0,m,a,mu,eta,d,D,S) (n = 2)
CONSTANT_SCOPE: mu_0, d, D depend on (G, m_0, m, a, eta) and not on mu; S depends on mu
FROZEN_FILE: KAM/Frozen/Planetary/Theorems/PlanarTwoPlanetKAM.lean
FROZEN_DECL: KAM.Planetary.planarTwoPlanetKAM
FROZEN_ANCHOR_ID: planetary.planarTwoPlanetKAM.v1
FROZEN_ABI_SHA256: 53360f66c8f0dfa90319b671830d07e0f10087b394eab73dce5a2bded2651fba
DEPS: bpP:p0:phase#Phase, bpP:p0:movkol#MovingKolmogorovSet, bpP:p12:planar
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p0:phase#Phase | blueprint-P/parts/p0-conventions.tex#bpP:p0:planar@L370-L370 | S subset Ph_{2.2}
EDGE: bpP:p0:movkol#MovingKolmogorovSet | blueprint-P/parts/p0-conventions.tex#bpP:p0:planar@L371-L371 | MovKol(G,m_0,m,a,mu,eta,d,D,S) with n = 2
EDGE: bpP:p12:planar | blueprint-P/parts/p12-planar-assembly.tex#bpP:p12:planar@L159-L159 | this result carries \frozen{KAM.Planetary.planarTwoPlanetKAM}: it proves the anchor
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p0
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: root anchor. Proof: Theorem bpP:p12:planar (Part 12), which carries the \frozen tag; Part 12 applies the frozen P-G (edges owned by P-p12). The stale sourcegap sentence of L376 was fixed in Part 0 (it now names Part 12 as the proof).
```

```text
NODE: bpP:p0:d25-kepler#keplerAxis
KIND: definition
TITLE: Osculating Kepler quantities: KAM.Planetary.keplerAxis
STATEMENT_SOURCE: blueprint-P/parts/p0-conventions.tex#bpP:p0:d25-kepler@L410-L422
PROOF_SOURCE: -
CONTRACT_ID: planetary.d25.keplerAxis
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: G = m_0 = 1; m in R^n; z in Ph_{2n}; i < n
SOURCE_QUANTIFIERS: n implicit; m, z, i
SOURCE_CONCLUSION: defines a_i(z) = -m_i/(2 E_i(z)) (keplerAxis), total function
CONSTANT_SCOPE: none (total function)
FROZEN_FILE: KAM/Frozen/Planetary/Defs/KeplerAxis.lean
FROZEN_DECL: KAM.Planetary.keplerAxis
FROZEN_ANCHOR_ID: planetary.d25.keplerAxis.v1
FROZEN_ABI_SHA256: 8b55c0149ea62631a5254e243408a8d995b7e8f4808a16a0a580ed961a24913f
DEPS: bpP:p0:d25-kepler#keplerEnergy, bpP:p0:phase#Phase
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p0:d25-kepler#keplerEnergy | blueprint-P/parts/p0-conventions.tex#bpP:p0:d25-kepler@L414-L414 | a_i is defined through E_i
EDGE: bpP:p0:phase#Phase | blueprint-P/parts/p0-conventions.tex#bpP:p0:d25-kepler@L411-L411 | z is a point of Ph_{2n}, explicitly the domain of this definition
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p0
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: bpP:p0:d25-kepler#keplerAction
KIND: definition
TITLE: Osculating Kepler quantities: KAM.Planetary.keplerAction
STATEMENT_SOURCE: blueprint-P/parts/p0-conventions.tex#bpP:p0:d25-kepler@L410-L422
PROOF_SOURCE: -
CONTRACT_ID: planetary.d25.keplerAction
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: G = m_0 = 1; m in R^n; z in Ph_{2n}; i < n
SOURCE_QUANTIFIERS: n implicit; m, z, i
SOURCE_CONCLUSION: defines Lambda_i(z) = m_i sqrt(a_i(z)) (keplerAction), total function (sqrt x = 0 for x < 0)
CONSTANT_SCOPE: none (total function)
FROZEN_FILE: KAM/Frozen/Planetary/Defs/KeplerAction.lean
FROZEN_DECL: KAM.Planetary.keplerAction
FROZEN_ANCHOR_ID: planetary.d25.keplerAction.v1
FROZEN_ABI_SHA256: bb4ff50c2f5da52bcb864343bc951d280ef83bd68edbe387811453a1e42f10da
DEPS: bpP:p0:d25-kepler#keplerAxis, bpP:p0:phase#Phase
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p0:d25-kepler#keplerAxis | blueprint-P/parts/p0-conventions.tex#bpP:p0:d25-kepler@L415-L415 | Lambda_i is defined through a_i
EDGE: bpP:p0:phase#Phase | blueprint-P/parts/p0-conventions.tex#bpP:p0:d25-kepler@L411-L411 | z is a point of Ph_{2n}, explicitly the domain of this definition
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p0
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: bpP:p0:amd
KIND: theorem
TITLE: P-AMD-CONFINEMENT: deterministic stopped-input helper
STATEMENT_SOURCE: blueprint-P/parts/p0-conventions.tex#bpP:p0:amd@L499-L511
PROOF_SOURCE: blueprint-P/parts/p14a-amd-expsafe.tex#bpP:p14:amd@L129-L133
CONTRACT_ID: planetary.d25.amdConfinement
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: n >= 2; B an admissible box; mu, T, delta > 0 with l_i + 2 delta < l^0_i and u^0_i + 2 delta < u_i for all i, and A_0 + 2 n delta < A_1; z_0 in LowAMD(m,l^0,u^0,A_0) with StoppedBound(B,mu,T,delta,z_0); G = m_0 = 1
SOURCE_QUANTIFIERS: forall n >= 2, B (admissible), mu, T, delta (hypotheses above), z_0 (with the stopped bound); exists z: R -> Ph_{2n}
SOURCE_CONCLUSION: there is z: R -> Ph_{2n} with z(0) = z_0 and (a) IsMovSolOn(m,mu,[-T,T],z) and MovUniqueOn(m,mu,[-T,T],z); (b) IsNewtonOn(mass_mu,[-T,T], t -> x(z(t)_1), t -> v(z(t)_2)) with the barycentric reconstructions for G = m_0 = 1; (c) for every t in [-T,T]: z(t) in LowAMD(m,l,u,A_1), J(z(t)) = J(z(0)), for all i: ¦e_i(z(t))¦ < e_*, d <= ¦q_i(t)¦ <= R, and PairBounds(d,2R; x(z(t)_1)); (d) for every t in [-T,T]: A(z(t)) <= A_0 + n delta and ¦Lambda_i(z(t)) - Lambda_i(z_0)¦ <= delta for all i
CONSTANT_SCOPE: order of choice: B, mu, T, delta, then z_0 with the stopped bound; z depends on all of them; no dynamical premise except the stopped bound; no constant is produced
FROZEN_FILE: KAM/Frozen/Planetary/Theorems/AmdConfinement.lean
FROZEN_DECL: KAM.Planetary.amdConfinement
FROZEN_ANCHOR_ID: planetary.d25.amdConfinement.v1
FROZEN_ABI_SHA256: a06de42f8f9b1500dacb7d6458a771df2ac692e555eb951cd1b7f779ec077122
DEPS: bpP:p0:phase#Phase, bpP:p0:d25-box#AMDBox, bpP:p0:d25-box#Admissible, bpP:p0:d25-lowamd#LowAMDRegion, bpP:p0:d25-stopped#StoppedActionBound, bpP:p0:d25-movsol#IsMovingSolutionOn, bpP:p0:d25-unique#MovingUniqueOn, bpP:p0:d25-newton#IsNewtonSolutionOn, bpP:p0:barycentric#actualMasses, bpP:p0:barycentric#barycentricPositions, bpP:p0:barycentric#barycentricVelocities, bpP:p0:d25-amd#totalMomentum, bpP:p0:d25-kepler#keplerEccVector, bpP:p0:plane#planeLength, bpP:p0:body#bodyVector, bpP:p0:nocoll#PairBounds, bpP:p0:d25-amd#physicalAMD, bpP:p0:d25-kepler#keplerAction, bpP:p14:amd
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p0:phase#Phase | blueprint-P/parts/p0-conventions.tex#bpP:p0:amd@L501-L501 | z_0 in Ph_{2n}
EDGE: bpP:p0:d25-box#AMDBox | blueprint-P/parts/p0-conventions.tex#bpP:p0:amd@L500-L500 | B a box with fields l, l^0, u^0, u, A_0, A_1
EDGE: bpP:p0:d25-box#Admissible | blueprint-P/parts/p0-conventions.tex#bpP:p0:amd@L500-L500 | B is admissible
EDGE: bpP:p0:d25-lowamd#LowAMDRegion | blueprint-P/parts/p0-conventions.tex#bpP:p0:amd@L501-L501 | z_0 in LowAMD(m,l^0,u^0,A_0)
EDGE: bpP:p0:d25-stopped#StoppedActionBound | blueprint-P/parts/p0-conventions.tex#bpP:p0:amd@L501-L501 | StoppedBound(B,mu,T,delta,z_0)
EDGE: bpP:p0:d25-movsol#IsMovingSolutionOn | blueprint-P/parts/p0-conventions.tex#bpP:p0:amd@L503-L503 | IsMovSolOn in (a)
EDGE: bpP:p0:d25-unique#MovingUniqueOn | blueprint-P/parts/p0-conventions.tex#bpP:p0:amd@L503-L503 | MovUniqueOn in (a)
EDGE: bpP:p0:d25-newton#IsNewtonSolutionOn | blueprint-P/parts/p0-conventions.tex#bpP:p0:amd@L504-L504 | IsNewtonOn in (b)
EDGE: bpP:p0:barycentric#actualMasses | blueprint-P/parts/p0-conventions.tex#bpP:p0:amd@L504-L504 | mass_mu in (b)
EDGE: bpP:p0:barycentric#barycentricPositions | blueprint-P/parts/p0-conventions.tex#bpP:p0:amd@L504-L504 | x in (b), (c)
EDGE: bpP:p0:barycentric#barycentricVelocities | blueprint-P/parts/p0-conventions.tex#bpP:p0:amd@L504-L504 | v in (b)
EDGE: bpP:p0:d25-amd#totalMomentum | blueprint-P/parts/p0-conventions.tex#bpP:p0:amd@L505-L505 | J(z(t)) = J(z(0)) in (c)
EDGE: bpP:p0:d25-kepler#keplerEccVector | blueprint-P/parts/p0-conventions.tex#bpP:p0:amd@L505-L505 | e_i(z(t)) in (c)
EDGE: bpP:p0:plane#planeLength | blueprint-P/parts/p0-conventions.tex#bpP:p0:amd@L505-L505 | ¦e_i¦ and the distance bounds in (c)
EDGE: bpP:p0:body#bodyVector | blueprint-P/parts/p0-conventions.tex#bpP:p0:amd@L505-L505 | q_i(t) in (c)
EDGE: bpP:p0:nocoll#PairBounds | blueprint-P/parts/p0-conventions.tex#bpP:p0:amd@L505-L505 | PairBounds in (c)
EDGE: bpP:p0:d25-amd#physicalAMD | blueprint-P/parts/p0-conventions.tex#bpP:p0:amd@L506-L506 | A(z(t)) in (d)
EDGE: bpP:p0:d25-kepler#keplerAction | blueprint-P/parts/p0-conventions.tex#bpP:p0:amd@L506-L506 | Lambda_i in (d)
EDGE: bpP:p14:amd | blueprint-P/parts/p14a-amd-expsafe.tex#bpP:p14:amd@L129-L129 | this result carries \frozen{KAM.Planetary.amdConfinement}: it proves the anchor
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p0
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: root anchor. Proof: Theorem bpP:p14:amd (Part 14a), which carries the \frozen tag.
```

```text
NODE: bpP:p0:expsafe
KIND: theorem
TITLE: P-EXP-SAFE: planar moving-Sun exponential safety for every low-AMD datum
STATEMENT_SOURCE: blueprint-P/parts/p0-conventions.tex#bpP:p0:expsafe@L513-L522
PROOF_SOURCE: blueprint-P/parts/p14a-amd-expsafe.tex#bpP:p14:expsafe@L295-L299
CONTRACT_ID: planetary.d25.planetaryExponentialSafety
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: n >= 2; B an admissible box; G = m_0 = 1
SOURCE_QUANTIFIERS: forall n >= 2, B (admissible); exists mu_*, c, C > 0; forall mu in (0,mu_*), forall z_0 in LowAMD(m,l^0,u^0,A_0); exists z: R -> Ph_{2n}
SOURCE_CONCLUSION: there are mu_*, c, C > 0 such that for every mu in (0,mu_*) and every z_0 in LowAMD(m,l^0,u^0,A_0) there is z: R -> Ph_{2n} with z(0) = z_0 such that, with T = exp(c mu^{-alpha_n}): (a) the clauses (a), (b), (c) of P-AMD-CONFINEMENT hold on [-T,T] (existence, uniqueness, Newton equations, outer region, conservation of J, eccentricity, radius, pair bounds); (b) ¦a_i(z(t)) - a_i(z_0)¦ <= C mu^{beta_n} for all ¦t¦ <= T and all i
CONSTANT_SCOPE: mu_*, c, C depend on (n, B) only (before mu and z_0); z depends on (mu, z_0); exponents alpha_n, beta_n of the D25 definition
FROZEN_FILE: KAM/Frozen/Planetary/Theorems/PlanetaryExponentialSafety.lean
FROZEN_DECL: KAM.Planetary.planetaryExponentialSafety
FROZEN_ANCHOR_ID: planetary.d25.planetaryExponentialSafety.v1
FROZEN_ABI_SHA256: 2e161e3b644712a64211734b4208c2425542c31bf0a43de3857c3cceb1a2a14a
DEPS: bpP:p0:phase#Phase, bpP:p0:d25-box#AMDBox, bpP:p0:d25-box#Admissible, bpP:p0:d25-lowamd#LowAMDRegion, bpP:p0:d25-exponents#planetaryTimeExponent, bpP:p0:amd, bpP:p0:d25-kepler#keplerAxis, bpP:p0:d25-exponents#planetaryDriftExponent, bpP:p14:expsafe, bpP:p0:d25-movsol#IsMovingSolutionOn, bpP:p0:d25-unique#MovingUniqueOn, bpP:p0:d25-newton#IsNewtonSolutionOn, bpP:p0:barycentric#actualMasses, bpP:p0:barycentric#barycentricPositions, bpP:p0:barycentric#barycentricVelocities, bpP:p0:d25-amd#totalMomentum, bpP:p0:d25-kepler#keplerEccVector, bpP:p0:plane#planeLength, bpP:p0:body#bodyVector, bpP:p0:nocoll#PairBounds
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p0:phase#Phase | blueprint-P/parts/p0-conventions.tex#bpP:p0:expsafe@L514-L514 | z: R -> Ph_{2n}
EDGE: bpP:p0:d25-box#AMDBox | blueprint-P/parts/p0-conventions.tex#bpP:p0:expsafe@L514-L514 | B a box
EDGE: bpP:p0:d25-box#Admissible | blueprint-P/parts/p0-conventions.tex#bpP:p0:expsafe@L514-L514 | B is admissible
EDGE: bpP:p0:d25-lowamd#LowAMDRegion | blueprint-P/parts/p0-conventions.tex#bpP:p0:expsafe@L514-L514 | z_0 in LowAMD(m,l^0,u^0,A_0)
EDGE: bpP:p0:d25-exponents#planetaryTimeExponent | blueprint-P/parts/p0-conventions.tex#bpP:p0:expsafe@L514-L514 | T = exp(c mu^{-alpha_n})
EDGE: bpP:p0:amd | blueprint-P/parts/p0-conventions.tex#bpP:p0:expsafe@L516-L516 | clauses (a), (b), (c) of P-AMD-CONFINEMENT are part of this statement; its proof reaches them through the helper bpP:p14:amd (step es-amd)
EDGE: bpP:p0:d25-kepler#keplerAxis | blueprint-P/parts/p0-conventions.tex#bpP:p0:expsafe@L517-L517 | a_i(z(t)) in (b)
EDGE: bpP:p0:d25-exponents#planetaryDriftExponent | blueprint-P/parts/p0-conventions.tex#bpP:p0:expsafe@L517-L517 | C mu^{beta_n}
EDGE: bpP:p14:expsafe | blueprint-P/parts/p14a-amd-expsafe.tex#bpP:p14:expsafe@L295-L295 | this result carries \frozen{KAM.Planetary.planetaryExponentialSafety}: it proves the anchor
EDGE: bpP:p0:d25-movsol#IsMovingSolutionOn | blueprint-P/parts/p0-conventions.tex#bpP:p0:expsafe@L516-L516 | clause (a) incorporates AMD clauses (a)-(c), which explicitly use IsMovingSolutionOn; the frozen conclusion expands that use
EDGE: bpP:p0:d25-unique#MovingUniqueOn | blueprint-P/parts/p0-conventions.tex#bpP:p0:expsafe@L516-L516 | clause (a) incorporates AMD clauses (a)-(c), which explicitly use MovingUniqueOn; the frozen conclusion expands that use
EDGE: bpP:p0:d25-newton#IsNewtonSolutionOn | blueprint-P/parts/p0-conventions.tex#bpP:p0:expsafe@L516-L516 | clause (a) incorporates AMD clauses (a)-(c), which explicitly use IsNewtonSolutionOn; the frozen conclusion expands that use
EDGE: bpP:p0:barycentric#actualMasses | blueprint-P/parts/p0-conventions.tex#bpP:p0:expsafe@L516-L516 | clause (a) incorporates AMD clauses (a)-(c), which explicitly use actualMasses; the frozen conclusion expands that use
EDGE: bpP:p0:barycentric#barycentricPositions | blueprint-P/parts/p0-conventions.tex#bpP:p0:expsafe@L516-L516 | clause (a) incorporates AMD clauses (a)-(c), which explicitly use barycentricPositions; the frozen conclusion expands that use
EDGE: bpP:p0:barycentric#barycentricVelocities | blueprint-P/parts/p0-conventions.tex#bpP:p0:expsafe@L516-L516 | clause (a) incorporates AMD clauses (a)-(c), which explicitly use barycentricVelocities; the frozen conclusion expands that use
EDGE: bpP:p0:d25-amd#totalMomentum | blueprint-P/parts/p0-conventions.tex#bpP:p0:expsafe@L516-L516 | clause (a) incorporates AMD clauses (a)-(c), which explicitly use totalMomentum; the frozen conclusion expands that use
EDGE: bpP:p0:d25-kepler#keplerEccVector | blueprint-P/parts/p0-conventions.tex#bpP:p0:expsafe@L516-L516 | clause (a) incorporates AMD clauses (a)-(c), which explicitly use keplerEccVector; the frozen conclusion expands that use
EDGE: bpP:p0:plane#planeLength | blueprint-P/parts/p0-conventions.tex#bpP:p0:expsafe@L516-L516 | clause (a) incorporates AMD clauses (a)-(c), which explicitly use planeLength; the frozen conclusion expands that use
EDGE: bpP:p0:body#bodyVector | blueprint-P/parts/p0-conventions.tex#bpP:p0:expsafe@L516-L516 | clause (a) incorporates AMD clauses (a)-(c), which explicitly use bodyVector; the frozen conclusion expands that use
EDGE: bpP:p0:nocoll#PairBounds | blueprint-P/parts/p0-conventions.tex#bpP:p0:expsafe@L516-L516 | clause (a) incorporates AMD clauses (a)-(c), which explicitly use PairBounds; the frozen conclusion expands that use
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p0
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: root anchor. Proof: Theorem bpP:p14:expsafe (Part 14a). The edge to bpP:p0:amd is kept because the statement incorporates clauses (a)-(c) of P-AMD-CONFINEMENT by reference (statement-level use); the proof applies the helper bpP:p14:amd (step es-amd).
```

## Replacement coverage items

```text
ITEM: p0:prose-L42-L42
KIND: proof-region
SOURCE: blueprint-P/parts/p0-conventions.tex#prose@L42-L42
DISPOSITION: EXCLUDED
REASON: pointer introducing the three track-K definitions; the current sentence also says track I IsHamiltonianSolutionOn is transcribed in D25 and compares exponents with N. It introduces no additional mathematical assertion; the named transcriptions are covered by their own definition anchors.
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p0
REVIEWER: -
```

```text
ITEM: p0:prose-L193-L193
KIND: proof-region
SOURCE: blueprint-P/parts/p0-conventions.tex#prose@L193-L193
DISPOSITION: NODE bpP:p0:circular#circularPoint, bpP:p0:circular#circularTube, bpP:p0:nocoll#NoCollision, bpP:p0:barycentric#actualMasses, bpP:p0:barycentric#barycentricPositions, bpP:p0:barycentric#barycentricVelocities, bpP:p0:newton#IsNewtonSolution, bpP:p0:fixedsol#IsFixedSolution, bpP:p0:movham#movingHamiltonian, bpP:p0:fixham#fixedHamiltonian, bpP:p0:movkol#MovingKolmogorovSet, bpP:p0:fixkol#FixedKolmogorovSet
REASON: section convention G, m_0 > 0 and m_i > 0 throughout physdefs: source use guards and physical interpretation for the mapped total definitions, not restrictions on their Lean domains or extra predicate conjuncts. Positivity is supplied by the physical theorem data at applications; notation/context, no separate standing-assumption node.
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p0
REVIEWER: -
```

```text
ITEM: p0:sourcegap-L376
KIND: proof-region
SOURCE: blueprint-P/parts/p0-conventions.tex#sourcegap@L376-L376
DISPOSITION: NODE bpP:p12:planar, bpP:p12:pg-hypotheses, bpP:p11b:birkhoff-form, bpP:p11b:torsion, bpP:p12:forward-tube
REASON: the current sourcegap explicitly names the Part 12 proof through P-G: pg-hypotheses verifies that gate using the planar Birkhoff form and torsion; birkhoff-form supplies the local analytic diagonalization via the simple planar spectrum and Part 9 local-analytic/diagonalize, without continuing eigenvalue branches; forward-tube supplies the circular-tube closeness. The old R-nondegeneracy gate is bypassed, and p10:noncont is commentary, not a prerequisite of this proof.
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p0
REVIEWER: -
```

## Suspected blueprint defects / source maintenance

1. **P0 L227-L230 and L236-L238, quantifier punctuation.** “for all t … and i != j … (ii) Q_i has derivative … (iii) V_i has derivative” and “if for all t and i != j: …” grammatically guard every clause by a distinct pair. That is weaker than the authoritative frozen definitions when N = 1 or n = 1: the differential equations must still hold when there is no distinct j. Exact source repair: state the derivative clauses for every t,i, and put i != j only on the pair-collision clause; for the fixed-Sun predicate, central collision exclusion also quantifies every t,i. The replacement graph fields above already record the frozen meaning. No frozen change is proposed.

2. **P0 L3-L9 and L390-L393, obsolete scope prose.** “the three frozen theorems” / “The three statements are the only frozen theorems of track P” and “D22 additions are under statement audit” conflict with the D25 additions transcribed at L397-L522. Exact prose repair: call the three D20 theorems the original statements, identify AMD/EXP-SAFE as transcribed in the D25 subsection, and identify the two SECULAR-BOX anchors as transcribed in Part 14b. These are administrative exclusions, so this does not require new graph nodes.

3. **P0 L324-L325, misleading characterization of the lower bound.** “the strict inequality … is then nontrivial only when 1-C sqrt r > 0” is misleading: when that factor is nonpositive the required inequality still asserts positive measure. The parenthetical correctly says this follows from the separate positivity conclusion. Exact prose repair: replace “nontrivial only when” with “has a positive lower factor only when”; retain the requirement for all r < r_* and its positivity case split.

The previously stale P-PLANAR sourcegap has already been updated: P0 L376 now names Part 12 and the P-G route. It is not an outstanding blueprint defect. The source claims in these items were checked locally against the frozen declarations/corpus; no pinned-paper erratum is asserted.

## Checks and limits

Read-only structural check: `python3 -I /mnt/HC_Volume_106379410/orchestrator-tools/inp_depgraph_slice_check.py docs/graph/P/packets P-p0 --structural` returned 0 problems. Identity comparison returned 58 matches. Every existing EDGE was reread at its cited consumer line. No implementation/provider Lean, axiom inventory, build, or replay was used to infer topology. The report is the only path written by this reviewer; concurrent unrelated worktree changes are outside this review.

Replacement validation: the writer apply tool with `--dry-run` reports **16 replaced, 0 added, 3 coverage items, 0 unresolved FAILs, 43 PASS nodes**. An independent report check confirms 59 verdict rows, one EDGE per dependency, no raw rationale pipes, unchanged immutable identity/status/source-locator fields in every replacement, and unchanged hashes for all six recorded inputs.

READY rev-P-c
