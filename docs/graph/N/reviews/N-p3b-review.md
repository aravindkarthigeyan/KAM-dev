# N-p3b: slice topology review

**Verdict: FAIL.** 29 nodes reviewed: 21 FAIL, 8 PASS. All 69 coverage items reviewed; their dispositions PASS. Complete replacement blocks follow for every failed node.

Reviewed under docs/graph/N/REVIEW-BRIEF.md and the full SPEC. Reviewer: **sol-review-N-c**. Marker: **rev-N-c**. This reviews the four-root graph through Part 11, not the subsequently written Part 12. Topology status is separate from mathematical validity and Lean proof status. No Lean or state-changing git command was run.

Read all of Part 3 and both packets, including every coverage reason and EDGE rationale; re-read the external/anchor statements at every cross-slice dependency. Consulted only frozen definition bodies permitted by the brief and manifest identity fields (not manifest state). All packet nodes are PROPOSED, have reviewer -, contract version 1, and no frozen-anchor identity of their own. The five external facts in N-p3a are correctly EXTERNAL; ordinary records are NOT_STARTED without any proof-status inference.

Part 3 SHA256 is `ae9ea3c57b401be389cd9a7e54d9508de50abe33bdc24f5d49a16fffcd43a17d` and still matches the corpus pin. CORPUS has 13/14 matching files: N Part 0 has drifted. Its introduction was shortened by one line relative to a2c0979 before the D28 additions were appended, so existing Part 0 locators need a writer remap. IMPORTS has 3/4 matching files: P Part 0 has an append after the original 394-line pinned prefix (that prefix still hashes exactly to the pin). These global pin/locator issues do not change Part 3's source, but this review is not a global pin PASS. The relevant current Part 0 contracts were read; request that the writer re-pin/remap separately, without treating Part 12 as a new root until SPEC is revised.

A read-only closure walk over DEPS and ROUTES of all current N packets, starting from bpN:p0:head, :zero, :qcthm and :partial, reaches all 80 nodes in these two slices. A literal reference scan of Parts 0-11c confirmed the stated ownership exclusions. Labels in source/provenance lists and the label index were not counted as proof uses.

Source-field corrections below preserve the enclosing source premises. Locally constructed objects remain bound outputs of earlier steps; continuity, compactness, regularity, overlap agreement and bounds proved by those steps are not assumed anew as source hypotheses. Every replacement retains its direct sibling-result edges, so it still shows where those facts are supplied. A contradiction branch, an arbitrary test solution, and a point-membership guard are legitimate local premises; a preceding theorem's conclusion is not a substitute for the original hypotheses.

## Node verdicts

| Node ID | Verdict | Source spans re-read | Reason |
|---|---|---|---|
| bpN:p3:gen-exit | FAIL | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-exit@L328-L341; proof blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-exit@L342-L350 | Correct EDGE locators: bpN:p3:gen-symmetry L340-L340 -> L338-L338 |
| stepN:p3:exit-closed | FAIL | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:exit-closed@L343-L343 | HYP currently says `z continuous on J; E∖V closed`; restore the enclosing source premises and discharge the derived facts through DEPS. Missing direct edges: bpN:p3:gen-sol |
| stepN:p3:exit-min | FAIL | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:exit-min@L345-L345 | HYP currently says `A ≠ ∅; A closed (exit-closed); J an interval containing 0; z(0) ∈ V`; restore the enclosing source premises and discharge the derived facts through DEPS. Missing direct edges: bpN:p3:gen-sol |
| stepN:p3:exit-bdry | FAIL | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:exit-bdry@L347-L347 | HYP currently says `t* from exit-min; z continuous; V open`; restore the enclosing source premises and discharge the derived facts through DEPS. Missing direct edges: bpN:p3:gen-sol |
| stepN:p3:exit-sup | FAIL | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:exit-sup@L349-L349 | HYP currently says `t* from exit-min; boundary statement of exit-bdry`; restore the enclosing source premises and discharge the derived facts through DEPS. Missing direct edges: bpN:p3:gen-sol |
| bpN:p3:ham-smooth | FAIL | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:ham-smooth@L377-L381; proof blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:ham-smooth@L382-L386 | Correct EDGE locators: bpN:p0:vf#hamiltonianVectorField L379-L379 -> L378-L378 |
| stepN:p3:hs-deriv | PASS | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:hs-deriv@L383-L383 | Source fields and direct dependencies match the source; locators and route/ownership policy pass. |
| stepN:p3:hs-comp | FAIL | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:hs-comp@L385-L385 | HYP currently says `DH is C^k on W (hs-deriv); X_H(z) = ((DH(z)(0,e_i))_i, (−DH(z)(e_i,0))_i)`; restore the enclosing source premises and discharge the derived facts through DEPS. |
| bpN:p3:ham-energy | PASS | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:ham-energy@L388-L393; proof blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:ham-energy@L394-L400 | Source fields and direct dependencies match the source; locators and route/ownership policy pass. |
| stepN:p3:en-chain | FAIL | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:en-chain@L395-L395 | Missing direct edges: bpN:p0:vf#hamiltonianVectorField |
| stepN:p3:en-cancel | PASS | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:en-cancel@L397-L397 | Source fields and direct dependencies match the source; locators and route/ownership policy pass. |
| stepN:p3:en-const | FAIL | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:en-const@L399-L399 | HYP currently says `H∘z continuous on [s,t] ⊂ J with derivative 0 at every point`; restore the enclosing source premises and discharge the derived facts through DEPS. |
| bpN:p3:ham-periodic | PASS | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:ham-periodic@L402-L407; proof blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:ham-periodic@L408-L412 | Faithful literal source statement, including its overbroad final energy-composition equality; source defect is reported separately, not silently repaired. |
| stepN:p3:per-field | FAIL | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:per-field@L409-L409 | The record omits the invariant-domain condition and the integer-shift quantifier scope of the enclosing source statement. |
| stepN:p3:per-sol | FAIL | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:per-sol@L411-L411 | Field periodicity from per-field is a proof ingredient, not a fresh hypothesis of the translation step. Missing direct edges: bpN:p3:gen-sol |
| bpN:p3:ham-reduction | PASS | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:ham-reduction@L416-L427; proof blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:ham-reduction@L428-L432 | Source fields and direct dependencies match the source; locators and route/ownership policy pass. |
| stepN:p3:red-mem | FAIL | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:red-mem@L429-L429 | The step proves only product membership by definition of W_U; the two predicate dependencies are extraneous (their unfolding belongs to red-diff/the parent). Remove unused edges: bpN:p0:sol#IsSolutionOn, bpN:p3:gen-sol |
| stepN:p3:red-diff | FAIL | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:red-diff@L431-L431 | HYP currently says `z(t) ∈ W_U ⊂ W; H C² on the open W; red-mem`; restore the enclosing source premises and discharge the derived facts through DEPS. Missing direct edges: bpN:p0:vf#hamiltonianVectorField, bpN:p3:gen-sol |
| bpN:p3:s-N#data | FAIL | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:s-N@L472-L477 | Correct EDGE locators: bpN:p0:integrable#IsAnalyticIntegrable L475-L475 -> L473-L473; bpN:p0:pert#IsAnalyticPerturbation L475-L475 -> L474-L474; bpN:p0:rdomain-eq L476-L476 -> L475-L475; bpN:p0:realH#realHamiltonian L476-L476 -> L475-L475 |
| bpN:p3:holo-input | PASS | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:holo-input@L479-L483; proof blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:holo-input@L484-L490 | Source fields and direct dependencies match the source; locators and route/ownership policy pass. |
| stepN:p3:hi-cite | FAIL | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:hi-cite@L485-L485 | The cited Part 1 conclusions are proof ingredients, not hypotheses; the actual hypotheses are the section standing data. Missing direct edges: bpN:p3:s-N#data |
| bpN:p3:local-exist | FAIL | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:local-exist@L502-L507; proof blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:local-exist@L508-L511 | Correct EDGE locators: bpN:p0:sol#IsSolutionOn L503-L503 -> L504-L505 |
| stepN:p3:le-red | FAIL | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:le-red@L509-L509 | H being C2 on W_s is obtained by holo-input, not assumed separately; keep the original analytic setting. Missing direct edges: bpN:p0:sol#IsSolutionOn, bpN:p3:gen-sol |
| stepN:p3:le-apply | FAIL | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:le-apply@L510-L510 | The reduction and its C1 conclusion are supplied by le-red; they are not replacement source hypotheses. Missing direct edges: bpN:p0:sol#IsSolutionOn, bpN:p3:gen-sol, bpN:p3:s-N#data |
| bpN:p3:uniqueness-closed | PASS | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:uniqueness-closed@L535-L539; proof blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:uniqueness-closed@L540-L542 | Source fields and direct dependencies match the source; locators and route/ownership policy pass. |
| stepN:p3:uc-apply | FAIL | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:uc-apply@L541-L541 | The record has only J and t0 assignments and drops nonnegative L, the actual solutions and their initial equality. Missing direct edges: bpN:p0:sol#IsSolutionOn, bpN:p3:s-N#data |
| bpN:p3:confinement-glue | PASS | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:confinement-glue@L544-L552; proof blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:confinement-glue@L553-L557 | Source fields and direct dependencies match the source; locators and route/ownership policy pass. |
| stepN:p3:cg-set | FAIL | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:cg-set@L554-L554 | Compactness of K and periodicity of X_H are derived here/from holo-input and ham-periodic, not extra confinement hypotheses. Missing direct edges: bpN:p3:ext-compact, bpN:p3:gen-uniform, bpN:p3:s-N#data |
| stepN:p3:cg-glue | FAIL | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:cg-glue@L555-L556 | HYP currently says `hypothesis of the theorem; Φ from cg-set`; restore the enclosing source premises and discharge the derived facts through DEPS. Missing direct edges: bpN:p0:sol#IsSolutionOn, bpN:p3:gen-sol, bpN:p3:gen-uniform, bpN:p3:s-N#data |

## Coverage

| Failed coverage item | Reason |
|---|---|
| None | No disposition correction required. |

All other coverage items PASS (in fact, every coverage item in this slice passes). Node-field or EDGE corrections do not change their NODE dispositions.

Confirmed against the actual root proofs, not just a grep of \ref: gen-invariant, gen-barrier and their steps are owned by the importing I/P graphs; newton-reduction/newton-continuation and their steps have no N-root consumer; lipschitz, energy and continuation specializations have no N-root proof use. Part 7 invokes ham-energy and the general continuation layer directly. Part 10’s mentions of continuation occur in an external/interface list, not in its assembly proof. The source instead applies gen-confinement through ham-reduction. hi-reg and hi-per are explicitly “for orientation”; their exclusion is correct. The unlabelled Hamiltonian convention paragraph is mapped to its consuming layer; L472-L477 has the required section-data node; L561-L574 is only the index.

## Complete replacement blocks

These blocks are proposed replacements only. The writer should keep TOPOLOGY_STATUS PROPOSED and obtain a different delta reviewer for rewritten records. No packet is edited by this review.

### bpN:p3:gen-exit

```text
NODE: bpN:p3:gen-exit
KIND: lemma
TITLE: First exit
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-exit@L328-L341
PROOF_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-exit@L342-L350
CONTRACT_ID: bpN:p3:gen-exit
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: IsSolIn F W J z with J an interval, 0 ∈ J; V ⊂ E open; z(0) ∈ V; A = {t ∈ J : t ≥ 0, z(t) ∉ V}; only continuity of z on J is used (F and W play no role)
SOURCE_QUANTIFIERS: E; F; W; J; z; V; A
SOURCE_CONCLUSION: exactly one of: (i) A = ∅, i.e. z(t) ∈ V for all t ∈ J, t ≥ 0; (ii) t* = min A exists, t* > 0, t* ∈ J, z(t) ∈ V on [0,t*), z(t*) ∈ ∂V = V̄∖V, and t* = sup{t ∈ J : t ≥ 0, z([0,t]) ⊂ V}; the same backwards in time
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p3:gen-sol, bpN:p3:gen-symmetry, stepN:p3:exit-closed, stepN:p3:exit-min, stepN:p3:exit-bdry, stepN:p3:exit-sup
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p3:gen-sol | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-exit@L329-L329 | hypothesis IsSolIn F W J z
EDGE: bpN:p3:gen-symmetry | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-exit@L338-L338 | the backward-time assertion explicitly invokes reversal here; L340 is only provenance
EDGE: stepN:p3:exit-closed | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-exit@L343-L343 | A closed
EDGE: stepN:p3:exit-min | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-exit@L345-L345 | t* = min A
EDGE: stepN:p3:exit-bdry | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-exit@L347-L347 | boundary point
EDGE: stepN:p3:exit-sup | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-exit@L349-L349 | supremum formula
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p3b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepN:p3:exit-closed

```text
NODE: stepN:p3:exit-closed
KIND: step
TITLE: Closedness
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:exit-closed@L343-L343
PROOF_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:exit-closed@L343-L343
CONTRACT_ID: stepN:p3:exit-closed
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: E finite-dimensional real normed space; IsSolIn F W J z; J an interval containing 0; V subset E open; z(0) in V; A={t in J:t>=0 and z(t) notin V}
SOURCE_QUANTIFIERS: A
SOURCE_CONCLUSION: A is closed in J ∩ [0,∞)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p3:gen-sol#consequences, bpN:p3:gen-sol
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p3:gen-sol#consequences | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:exit-closed@L343-L343 | z continuous on J (consequence (ii))
EDGE: bpN:p3:gen-sol | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:exit-closed@L343-L343 | the source solution supplies continuity and membership; earlier step conclusions are not new premises
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p3b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepN:p3:exit-min

```text
NODE: stepN:p3:exit-min
KIND: step
TITLE: The minimum
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:exit-min@L345-L345
PROOF_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:exit-min@L345-L345
CONTRACT_ID: stepN:p3:exit-min
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: E finite-dimensional real normed space; IsSolIn F W J z; J an interval containing 0; V subset E open; z(0) in V; A={t in J:t>=0 and z(t) notin V}; branch A nonempty
SOURCE_QUANTIFIERS: t* = inf A
SOURCE_CONCLUSION: t* ∈ J, t* ∈ A, so z(t*) ∉ V, and t* > 0
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p3:exit-closed, bpN:p3:gen-sol
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p3:exit-closed | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:exit-min@L345-L345 | by closedness t* ∈ A
EDGE: bpN:p3:gen-sol | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:exit-min@L345-L345 | the source solution supplies continuity and membership; earlier step conclusions are not new premises
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p3b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepN:p3:exit-bdry

```text
NODE: stepN:p3:exit-bdry
KIND: step
TITLE: Boundary point
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:exit-bdry@L347-L347
PROOF_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:exit-bdry@L347-L347
CONTRACT_ID: stepN:p3:exit-bdry
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: E finite-dimensional real normed space; IsSolIn F W J z; J an interval containing 0; V subset E open; z(0) in V; A={t in J:t>=0 and z(t) notin V}; branch A nonempty; tstar=inf A is the local object constructed in exit-min
SOURCE_QUANTIFIERS: t ∈ [0,t*)
SOURCE_CONCLUSION: z(t) ∈ V on [0,t*) and z(t*) ∈ V̄∖V = ∂V
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p3:exit-min, bpN:p3:gen-sol#consequences, bpN:p3:gen-sol
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p3:exit-min | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:exit-bdry@L347-L347 | t* and z(t*) ∉ V
EDGE: bpN:p3:gen-sol#consequences | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:exit-bdry@L347-L347 | continuity of z at t*
EDGE: bpN:p3:gen-sol | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:exit-bdry@L347-L347 | the source solution supplies continuity and membership; earlier step conclusions are not new premises
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p3b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepN:p3:exit-sup

```text
NODE: stepN:p3:exit-sup
KIND: step
TITLE: The supremum formula
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:exit-sup@L349-L349
PROOF_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:exit-sup@L349-L349
CONTRACT_ID: stepN:p3:exit-sup
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: E finite-dimensional real normed space; IsSolIn F W J z; J an interval containing 0; V subset E open; z(0) in V; A={t in J:t>=0 and z(t) notin V}; branch A nonempty; tstar=inf A is the local object constructed in exit-min
SOURCE_QUANTIFIERS: t ∈ J, t ≥ 0
SOURCE_CONCLUSION: z([0,t]) ⊂ V iff t < t*, so the supremum equals t*
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p3:exit-min, stepN:p3:exit-bdry, bpN:p3:gen-sol
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p3:exit-min | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:exit-sup@L349-L349 | t* = min A
EDGE: stepN:p3:exit-bdry | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:exit-sup@L349-L349 | z(t) ∈ V on [0,t*)
EDGE: bpN:p3:gen-sol | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:exit-sup@L349-L349 | the source solution supplies continuity and membership; earlier step conclusions are not new premises
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p3b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### bpN:p3:ham-smooth

```text
NODE: bpN:p3:ham-smooth
KIND: lemma
TITLE: Regularity of $X_H$
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:ham-smooth@L377-L381
PROOF_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:ham-smooth@L382-L386
CONTRACT_ID: bpN:p3:ham-smooth
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: P = ℝⁿ × ℝⁿ (max norm); W ⊂ P open; H : P → ℝ is C^{k+1} on W, k ≥ 0; X_H the frozen hamiltonianVectorField
SOURCE_QUANTIFIERS: n; W; H; k
SOURCE_CONCLUSION: X_H is C^k on W; for k ≥ 1 it is C¹ (hence locally Lipschitz) on W, and H is differentiable at every point of W
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p0:vf#hamiltonianVectorField, stepN:p3:hs-deriv, stepN:p3:hs-comp
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p0:vf#hamiltonianVectorField | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:ham-smooth@L378-L378 | the Ck conclusion is about the frozen X_H
EDGE: stepN:p3:hs-deriv | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:ham-smooth@L383-L383 | DH is C^k
EDGE: stepN:p3:hs-comp | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:ham-smooth@L385-L385 | components of X_H
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p3b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: prose-L372-L375 (phase space P, X_H, partials) is recorded here and in ham-energy, ham-periodic, ham-reduction
```

### stepN:p3:hs-comp

```text
NODE: stepN:p3:hs-comp
KIND: step
TITLE: Components
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:hs-comp@L385-L385
PROOF_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:hs-comp@L385-L385
CONTRACT_ID: stepN:p3:hs-comp
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: P=R^n x R^n with max norm; W subset P open; H:P->R is C^{k+1} on W, k>=0; X_H is the frozen Hamiltonian vector field
SOURCE_QUANTIFIERS: n,W,H,k fixed as in ham-smooth; each component i; DH is the derivative, with its Ck regularity proved by hs-deriv
SOURCE_CONCLUSION: each coordinate of X_H is ± DH composed with a continuous linear evaluation, hence C^k, and X_H is C^k
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p3:hs-deriv, bpN:p0:vf#hamiltonianVectorField
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p3:hs-deriv | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:hs-comp@L385-L385 | DH is C^k
EDGE: bpN:p0:vf#hamiltonianVectorField | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:hs-comp@L385-L385 | coordinates of X_H in terms of DH
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p3b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepN:p3:en-chain

```text
NODE: stepN:p3:en-chain
KIND: step
TITLE: Chain rule
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:en-chain@L395-L395
PROOF_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:en-chain@L395-L395
CONTRACT_ID: stepN:p3:en-chain
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: H differentiable at z(t), z' = X_H(z(t))
SOURCE_QUANTIFIERS: t ∈ J
SOURCE_CONCLUSION: d/dt H(z(t)) = DH(z(t))[X_H(z(t))]
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p3:ext-calc, bpN:p0:vf#hamiltonianVectorField
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p3:ext-calc | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:en-chain@L395-L395 | chain rule HasFDerivAt.comp_hasDerivAt
EDGE: bpN:p0:vf#hamiltonianVectorField | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:en-chain@L395-L395 | the chain-rule expression uses the frozen X_H at the visited point
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p3b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepN:p3:en-const

```text
NODE: stepN:p3:en-const
KIND: step
TITLE: Constancy
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:en-const@L399-L399
PROOF_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:en-const@L399-L399
CONTRACT_ID: stepN:p3:en-const
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: P=R^n x R^n; H:P->R; J an interval; z:R->P; for every t in J, H differentiable at z(t) and z has two-sided derivative X_H(z(t)) at t; take s<t in J
SOURCE_QUANTIFIERS: s < t in J
SOURCE_CONCLUSION: H(z(t)) = H(z(s))
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p3:en-chain, stepN:p3:en-cancel, bpN:p3:ext-calc
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p3:en-chain | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:en-const@L399-L399 | H∘z differentiable with derivative DH(z)[X_H(z)]
EDGE: stepN:p3:en-cancel | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:en-const@L399-L399 | that derivative is 0
EDGE: bpN:p3:ext-calc | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:en-const@L399-L399 | continuous with right derivative 0 implies constant
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p3b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepN:p3:per-field

```text
NODE: stepN:p3:per-field
KIND: step
TITLE: Field
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:per-field@L409-L409
PROOF_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:per-field@L409-L409
CONTRACT_ID: stepN:p3:per-field
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: P=R^n x R^n; W subset P open, W+(k,0)=W for all integer k; H:P->R integer-periodic in angles on W; fix k in Z^n and put tau_k(x)=x+(k,0)
SOURCE_QUANTIFIERS: n,W,H as in ham-periodic; every k in Z^n; every x in W
SOURCE_CONCLUSION: DH = DH∘τ_k on W (fderiv; both sides 0 where H is not differentiable), so X_H∘τ_k = X_H on W
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p3:ext-calc, bpN:p0:vf#hamiltonianVectorField
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p3:ext-calc | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:per-field@L409-L409 | derivative of a translate (chain rule)
EDGE: bpN:p0:vf#hamiltonianVectorField | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:per-field@L409-L409 | evaluate DH on (0,e_i), (e_i,0) to get X_H
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p3b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepN:p3:per-sol

```text
NODE: stepN:p3:per-sol
KIND: step
TITLE: Solutions
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:per-sol@L411-L411
PROOF_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:per-sol@L411-L411
CONTRACT_ID: stepN:p3:per-sol
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: P=R^n x R^n; W subset P open, W+(k,0)=W for all integer k; H:P->R integer-periodic in angles on W; IsSolIn X_H W J z; fix k in Z^n
SOURCE_QUANTIFIERS: n,W,H fixed as in ham-periodic; every J subset R,z:R->P satisfying the source solution premise; every k in Z^n with v=(k,0)
SOURCE_CONCLUSION: IsSolIn X_H W J (z+(k,0)) (space translation)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p3:gen-symmetry, stepN:p3:per-field, bpN:p3:gen-sol
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p3:gen-symmetry | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:per-sol@L411-L411 | space translation gen-symmetry(c) with v = (k,0), F = X_H
EDGE: stepN:p3:per-field | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:per-sol@L411-L411 | F(x+v) = F(x) on W
EDGE: bpN:p3:gen-sol | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:per-sol@L411-L411 | the translated curve is a solution for the same source predicate
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p3b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepN:p3:red-mem

```text
NODE: stepN:p3:red-mem
KIND: step
TITLE: Membership
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:red-mem@L429-L429
PROOF_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:red-mem@L429-L429
CONTRACT_ID: stepN:p3:red-mem
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: W_U = ℝⁿ × U
SOURCE_QUANTIFIERS: t
SOURCE_CONCLUSION: z(t)₂ ∈ U ⇔ z(t) ∈ W_U
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p3b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepN:p3:red-diff

```text
NODE: stepN:p3:red-diff
KIND: step
TITLE: Differentiability is free
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:red-diff@L431-L431
PROOF_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:red-diff@L431-L431
CONTRACT_ID: stepN:p3:red-diff
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: P=R^n x R^n; U subset R^n open; W subset P open with R^n x U subset W; H:P->R is C2 on W; W_U=R^n x U; for the pointwise differentiability clause consider t with z(t) in W_U; red-mem supplies the membership equivalence, not an additional premise
SOURCE_QUANTIFIERS: n,H,U,W fixed as in ham-reduction; every J subset R and z:R->P; at each t in J with z(t) in W_U the differentiability guard follows
SOURCE_CONCLUSION: DifferentiableAt ℝ H (z t) holds automatically, so IsSolutionOn and IsHamiltonianSolutionOn coincide with IsSolIn X_H W_U; X_H is C¹ on W_U
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p3:ham-smooth, stepN:p3:red-mem, bpN:p0:sol#IsSolutionOn, I:bpI:p0:hamsol#IsHamiltonianSolutionOn, bpN:p3:gen-sol, bpN:p0:vf#hamiltonianVectorField
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p3:ham-smooth | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:red-diff@L431-L431 | C² gives H differentiable and X_H C¹ (k = 1)
EDGE: stepN:p3:red-mem | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:red-diff@L431-L431 | membership clause
EDGE: bpN:p0:sol#IsSolutionOn | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:red-diff@L431-L431 | differentiability clause of the frozen predicate
EDGE: I:bpI:p0:hamsol#IsHamiltonianSolutionOn | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:red-diff@L431-L431 | same formula in track I's predicate
EDGE: bpN:p3:gen-sol | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:red-diff@L431-L431 | the predicate equivalence explicitly includes IsSolIn
EDGE: bpN:p0:vf#hamiltonianVectorField | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:red-diff@L431-L431 | the regularity conclusion concerns X_H
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p3b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### bpN:p3:s-N#data

```text
NODE: bpN:p3:s-N#data
KIND: definition
TITLE: Standing data of the section on the track-N statements
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:s-N@L472-L477
PROOF_SOURCE: -
CONTRACT_ID: bpN:p3:s-N#data
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: R, s > 0; h : ℂⁿ → ℂ with IsAnalyticIntegrable R s h; ε ≥ 0; f : ℂⁿ×ℂⁿ → ℂ with IsAnalyticPerturbation R s ε f; H = H_{h,f}; U ⊂ B(0,R+s) open (in N-HEAD-C, U = B(0,R))
SOURCE_QUANTIFIERS: R, s; h; ε; f; U
SOURCE_CONCLUSION: defines the standing data of §s-N: H = H_{h,f}; W_s = ℝⁿ × B(0,R+s) ⊂ P (open), with B(0,R+s) = 𝓑_s(R) by Remark rdomain-eq; U an open subset of B(0,R+s)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p0:integrable#IsAnalyticIntegrable, bpN:p0:pert#IsAnalyticPerturbation, bpN:p0:realH#realHamiltonian, bpN:p0:rdomain-eq
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p0:integrable#IsAnalyticIntegrable | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:s-N#data@L473-L473 | h satisfies the analytic integrable predicate
EDGE: bpN:p0:pert#IsAnalyticPerturbation | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:s-N#data@L474-L474 | f satisfies the size-eps perturbation predicate
EDGE: bpN:p0:realH#realHamiltonian | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:s-N#data@L475-L475 | H is defined to be H_{h,f}
EDGE: bpN:p0:rdomain-eq | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:s-N#data@L475-L475 | the real action domain equals B(0,R+s)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p3b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: section data for coverage item p3:prose-L472-L477; consumers: holo-input, local-exist, uniqueness-closed, confinement-glue
```

### stepN:p3:hi-cite

```text
NODE: stepN:p3:hi-cite
KIND: step
TITLE: Citation
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:hi-cite@L485-L485
PROOF_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:hi-cite@L485-L485
CONTRACT_ID: stepN:p3:hi-cite
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the source standing data bpN:p3:s-N#data (R,s>0; h with IsAnalyticIntegrable R s h; eps>=0; f with IsAnalyticPerturbation R s eps f; H=H_{h,f}; W_s=R^n x B(0,R+s); U open and contained in B(0,R+s))
SOURCE_QUANTIFIERS: n and the source section data R,s,h,eps,f,U first; then all points in W_s and all k in Z^n as in holo-input
SOURCE_CONCLUSION: H_{h,f} is C-infinity, hence C2, on the open W_s; the real frozen field X_H equals the complex Hamiltonian field X_{h+f} at included real points of W_s; H(theta+k,I)=H(theta,I) on W_s for every integer k; these are exactly holo-real(b),(c),(d)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p1:holo-real, bpN:p3:s-N#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p1:holo-real | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:hi-cite@L485-L485 | (b), (c), (d) are exactly the three claims
EDGE: bpN:p3:s-N#data | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:hi-cite@L485-L485 | match the fixed analytic h,f,H and real domain with the Part 1 lemma
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p3b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### bpN:p3:local-exist

```text
NODE: bpN:p3:local-exist
KIND: theorem
TITLE: Local existence and uniqueness for $\texttt{IsSolutionOn}$
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:local-exist@L502-L507
PROOF_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:local-exist@L508-L511
CONTRACT_ID: bpN:p3:local-exist
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: standing data of §s-N (bpN:p3:s-N#data), U ⊂ B(0,R+s) open; t₀ ∈ ℝ; z₀ ∈ ℝⁿ × U; for uniqueness: J an interval, t₀ ∈ J, y₁, y₂ with IsSolutionOn H U J y_i and y₁(t₀) = y₂(t₀)
SOURCE_QUANTIFIERS: R, s; h; f; ε; U; t₀; z₀ (resp. J, y₁, y₂)
SOURCE_CONCLUSION: there are ε' > 0 and y : ℝ → P with y(t₀) = z₀ and IsSolutionOn H U (t₀−ε',t₀+ε') y (both time directions); and y₁ = y₂ on J
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p3:s-N#data, bpN:p0:sol#IsSolutionOn, stepN:p3:le-red, stepN:p3:le-apply
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p3:s-N#data | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:local-exist@L502-L502 | standing data of §s-N (H, U)
EDGE: bpN:p0:sol#IsSolutionOn | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:local-exist@L504-L505 | the source local-existence and uniqueness clauses use IsSolutionOn here
EDGE: stepN:p3:le-red | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:local-exist@L509-L509 | reduction to the general predicate
EDGE: stepN:p3:le-apply | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:local-exist@L510-L510 | existence and uniqueness
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p3b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepN:p3:le-red

```text
NODE: stepN:p3:le-red
KIND: step
TITLE: Reduction
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:le-red@L509-L509
PROOF_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:le-red@L509-L509
CONTRACT_ID: stepN:p3:le-red
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the source standing data bpN:p3:s-N#data (R,s>0; h with IsAnalyticIntegrable R s h; eps>=0; f with IsAnalyticPerturbation R s eps f; H=H_{h,f}; W_s=R^n x B(0,R+s); U open and contained in B(0,R+s)); for existence t0 in R and z0 in R^n x U; for uniqueness J an interval containing t0, IsSolutionOn H U J y_i and y_1(t0)=y_2(t0)
SOURCE_QUANTIFIERS: the source section data first; then every J subset R and z:R->P
SOURCE_CONCLUSION: IsSolutionOn H U J z iff IsSolIn X_H (R^n x U) J z, for all J,z; X_H is C1 on the open R^n x U, by ham-reduction with W=W_s and the C2 input supplied by holo-input
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p3:ham-reduction, bpN:p3:holo-input, bpN:p3:s-N#data, bpN:p0:sol#IsSolutionOn, bpN:p3:gen-sol
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p3:ham-reduction | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:le-red@L509-L509 | Proposition ham-reduction with W = W_s
EDGE: bpN:p3:holo-input | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:le-red@L509-L509 | H is C² on W_s
EDGE: bpN:p3:s-N#data | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:le-red@L509-L509 | W_s and U ⊂ B(0,R+s)
EDGE: bpN:p0:sol#IsSolutionOn | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:le-red@L509-L509 | convert the frozen solution predicate to the general predicate
EDGE: bpN:p3:gen-sol | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:le-red@L509-L509 | the converted predicate is IsSolIn
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p3b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepN:p3:le-apply

```text
NODE: stepN:p3:le-apply
KIND: step
TITLE: Existence, uniqueness
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:le-apply@L510-L510
PROOF_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:le-apply@L510-L510
CONTRACT_ID: stepN:p3:le-apply
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the source standing data bpN:p3:s-N#data (R,s>0; h with IsAnalyticIntegrable R s h; eps>=0; f with IsAnalyticPerturbation R s eps f; H=H_{h,f}; W_s=R^n x B(0,R+s); U open and contained in B(0,R+s)); for existence t0 in R and z0 in R^n x U; for uniqueness J an interval containing t0, IsSolutionOn H U J y_i and y_1(t0)=y_2(t0)
SOURCE_QUANTIFIERS: the source section data first; for existence every t0 in R,z0 in R^n x U, then epslocal>0,y; independently for uniqueness every interval J containing t0 and y_1,y_2 with the stated initial equality and source solution predicates
SOURCE_CONCLUSION: there exist epslocal>0 and y:R->P with y(t0)=z0 and IsSolutionOn H U (t0-epslocal,t0+epslocal) y; any y_1,y_2 satisfying IsSolutionOn H U J y_i and y_1(t0)=y_2(t0) agree on the whole interval J
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p3:gen-local, bpN:p3:gen-uniqueness, stepN:p3:le-red, bpN:p3:s-N#data, bpN:p0:sol#IsSolutionOn, bpN:p3:gen-sol
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p3:gen-local | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:le-apply@L510-L510 | local existence for X_H on ℝⁿ × U
EDGE: bpN:p3:gen-uniqueness | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:le-apply@L510-L510 | uniqueness on every interval
EDGE: stepN:p3:le-red | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:le-apply@L510-L510 | reduction to IsSolIn
EDGE: bpN:p3:s-N#data | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:le-apply@L510-L510 | the local-time and uniqueness application uses the fixed H,U and their analytic setting
EDGE: bpN:p0:sol#IsSolutionOn | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:le-apply@L510-L510 | the local theorem constructs and compares frozen Hamiltonian solutions
EDGE: bpN:p3:gen-sol | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:le-apply@L510-L510 | apply the general existence and uniqueness results after reduction
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p3b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepN:p3:uc-apply

```text
NODE: stepN:p3:uc-apply
KIND: step
TITLE: Apply
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:uc-apply@L541-L541
PROOF_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:uc-apply@L541-L541
CONTRACT_ID: stepN:p3:uc-apply
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the source standing data bpN:p3:s-N#data (R,s>0; h with IsAnalyticIntegrable R s h; eps>=0; f with IsAnalyticPerturbation R s eps f; H=H_{h,f}; W_s=R^n x B(0,R+s); U open and contained in B(0,R+s)); Ltime>=0; y_1(0)=y_2(0); IsSolutionOn H U [-Ltime,Ltime] y_i (i=1,2)
SOURCE_QUANTIFIERS: the section data first; every Ltime>=0 and y_1,y_2 satisfying the source premises; instantiate J=[-Ltime,Ltime], t0=0
SOURCE_CONCLUSION: y_1=y_2 on [-Ltime,Ltime], by the uniqueness clause of local-exist; this also gives agreement with a solution on a larger interval after restriction
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p3:local-exist, bpN:p3:s-N#data, bpN:p0:sol#IsSolutionOn
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p3:local-exist | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:uc-apply@L541-L541 | uniqueness part with J = [−L,L], t₀ = 0
EDGE: bpN:p3:s-N#data | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:uc-apply@L541-L541 | the local-exist theorem uses the standing analytic H,U setting
EDGE: bpN:p0:sol#IsSolutionOn | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:uc-apply@L541-L541 | the compared curves satisfy the frozen Hamiltonian solution predicate
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p3b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepN:p3:cg-set

```text
NODE: stepN:p3:cg-set
KIND: step
TITLE: Compact confinement set
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:cg-set@L554-L554
PROOF_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:cg-set@L554-L554
CONTRACT_ID: stepN:p3:cg-set
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the source standing data bpN:p3:s-N#data (R,s>0; h with IsAnalyticIntegrable R s h; eps>=0; f with IsAnalyticPerturbation R s eps f; H=H_{h,f}; W_s=R^n x B(0,R+s); U open and contained in B(0,R+s)); theta0 in R^n; I0 in U; tau,rho>0; closedBall(I0,rho) subset U; every IsSolutionOn H U J y on an open interval J containing 0 through (theta0,I0) has abs(y(t)_2-I0)<=rho whenever t in J and abs(t)<=tau
SOURCE_QUANTIFIERS: the source section data, theta0,I0,tau,rho and the a priori hypothesis; define K=closedBall(I0,rho) and Phi=R^n x K; then choose uniform delta,M,L
SOURCE_CONCLUSION: K=closedBall(I0,rho) is compact and contained in U; Phi=R^n x K has uniform data (delta,M,L) for some delta in (0,1] and M,L>=0
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p3:gen-uniform-periodic, bpN:p3:ham-periodic, bpN:p3:holo-input, bpN:p3:ham-reduction, bpN:p3:s-N#data, bpN:p3:ext-compact, bpN:p3:gen-uniform
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p3:gen-uniform-periodic | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:cg-set@L554-L554 | uniform data for ℝⁿ × K
EDGE: bpN:p3:ham-periodic | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:cg-set@L554-L554 | X_H periodic in the angles
EDGE: bpN:p3:holo-input | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:cg-set@L554-L554 | H is C² and 1-periodic in θ on W_s, hypotheses of ham-periodic and ham-smooth
EDGE: bpN:p3:ham-reduction | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:cg-set@L554-L554 | X_H is C¹ on ℝⁿ × U, hypothesis of gen-uniform-periodic
EDGE: bpN:p3:s-N#data | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:cg-set@L554-L554 | H,U and W_s are the standing section objects needed for all regularity/periodicity premises
EDGE: bpN:p3:ext-compact | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:cg-set@L554-L554 | the closed finite-dimensional action ball K is compact
EDGE: bpN:p3:gen-uniform | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:cg-set@L554-L554 | the conclusion is uniform data for the cylinder Phi
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p3b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepN:p3:cg-glue

```text
NODE: stepN:p3:cg-glue
KIND: step
TITLE: General glue
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:cg-glue@L555-L556
PROOF_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:cg-glue@L555-L556
CONTRACT_ID: stepN:p3:cg-glue
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the source standing data bpN:p3:s-N#data (R,s>0; h with IsAnalyticIntegrable R s h; eps>=0; f with IsAnalyticPerturbation R s eps f; H=H_{h,f}; W_s=R^n x B(0,R+s); U open and contained in B(0,R+s)); theta0 in R^n; I0 in U; tau,rho>0; closedBall(I0,rho) subset U; every IsSolutionOn H U J y on an open interval J containing 0 through (theta0,I0) has abs(y(t)_2-I0)<=rho whenever t in J and abs(t)<=tau; K and Phi are defined as in cg-set, with uniform data provided by that dependency
SOURCE_QUANTIFIERS: the source section data, theta0,I0,tau,rho and the a priori hypothesis; K,Phi from cg-set; then a constructed solution z; afterwards every Ltime in [0,tau] and comparison solution y
SOURCE_CONCLUSION: the a priori hypothesis is equivalent, by ham-reduction, to confinement of every IsSolIn X_H (R^n x U) J y through (theta0,I0) in Phi for abs(t)<=tau on open J; gen-confinement yields z with z(0)=(theta0,I0), IsSolutionOn H U [-tau,tau] z, action displacement <=rho there, and agreement with every IsSolutionOn H U [-Ltime,Ltime] y through z(0) for all Ltime in [0,tau]
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p3:ham-reduction, bpN:p3:gen-confinement, stepN:p3:cg-set, bpN:p3:s-N#data, bpN:p3:gen-uniform, bpN:p3:gen-sol, bpN:p0:sol#IsSolutionOn
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p3:ham-reduction | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:cg-glue@L555-L555 | IsSolutionOn H U ⇔ IsSolIn X_H (ℝⁿ×U)
EDGE: bpN:p3:gen-confinement | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:cg-glue@L556-L556 | Theorem gen-confinement gives z and uniqueness
EDGE: stepN:p3:cg-set | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:cg-glue@L555-L555 | uniform data of Φ
EDGE: bpN:p3:s-N#data | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:cg-glue@L555-L556 | the reduction and confinement application use the standing H,U and open domain
EDGE: bpN:p3:gen-uniform | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:cg-glue@L555-L556 | uniform data for Phi discharge gen-confinement
EDGE: bpN:p3:gen-sol | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:cg-glue@L555-L556 | the a priori hypothesis is converted for every general solution on an open interval
EDGE: bpN:p0:sol#IsSolutionOn | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:cg-glue@L555-L556 | convert the source hypothesis and the resulting closed-interval conclusion
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p3b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

## Suspected blueprint defects and source limits

**Scope defect in bpN:p3:ham-periodic, Part 3 L402-L407, especially L405.** The source writes `H\circ(z+(k,0))=H\circ z` without “on J”, although the solution is constrained to W only for times in J. For example n=1, W=R x (-1,1), H(theta,I)=0 for abs(I)<1 and H(theta,I)=theta outside, J={0}, and z constant at (0,0) near t=0 but z(1)=(0,2). The solution predicate holds on J, but for k=1 the two energies at t=1 are 1 and 0. The valid conclusion is equality on J. This packet faithfully reproduces the source, so the node’s source-transcription verdict passes; the owner must decide the source correction and re-pin/remap. The field periodicity and translated-solution claims on W/J remain valid. No source theorem is silently weakened by this topology review.

No other blueprint mathematical defect is asserted in this slice. The source guards H-differentiability in energy conservation pointwise and proves C1 of X_H on the open reduction domain; no unnecessary global C2/analytic or confinement premise is imposed on the general energy theorem. The Newtonian predicates are excluded by graph ownership, so their proofs are not being certified here.

## Validation

- `python3 scripts/depgraph_slice_check.py docs/graph/N/packets N-p3b`: `N-p3b: 29 nodes, 80 edges, 69 coverage items, 0 problems` for the input packet. This is structural only, not source correctness.
- Input nodes SHA256: `6de77b046389e853f1d5e9f7b981b6380da0cdbeda9e5d7eed8b8a6db7e949ff`.
- Input coverage SHA256: `f4b21d9ee2c14966bc77a5209521864f2507171c6a50c8ae0e7260a94b9a0c51`.
- `python3 scripts/depgraph_apply_review.py docs/graph/N/packets N-p3b docs/graph/N/reviews/N-p3b-review.md sol-review-N-c --dry-run`: `N-p3b: 21 replaced, 0 added, 0 coverage items, 0 unresolved FAILs, 8 PASS nodes`. Dry run only; no packet changes.
- Independent in-memory validation: one unique verdict per owned node; every FAIL has a complete replacement; all required fields and metadata retained; DEPS/ROUTES match EDGE targets; no duplicate or missing targets; source ranges valid; no cycle involving either reviewed slice after the proposed replacements.
- `git diff --check -- docs/graph/N/reviews/N-p3a-review.md docs/graph/N/reviews/N-p3b-review.md`: exit 0, no output. Final reviewed packet hashes and Part 3 hash were checked again; no replacement was applied.
- No Lean, build, implementation/provider inspection, manifest-state inspection or state-changing git operation. Only this review and the companion slice review are written.
