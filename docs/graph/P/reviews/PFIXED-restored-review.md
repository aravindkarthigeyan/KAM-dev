# Restored P-FIXED topology review

Reviewer: **sol-review-P-w**. Marker: **rev-P-w**. Date: 2026-10-28.

**Verdict: FAIL.** The new root and the restored physical assembly PASS. Six restored records need narrowly scoped corrections: four hypothesis fields, one missing theorem edge, and one use-site locator. All nine scoped coverage items PASS. No record outside the explicitly assigned restored set is reopened. This is topology review, not certification of the source proofs or Lean implementations.

Followed `docs/graph/P/REVIEW-BRIEF.md` in full and the binding SPEC, especially its **P-FIXED revision (2026-10-28)**. Used the build-proof-dependency-graph source-only review discipline. The scope is determined by the eight named IDs and `EXTRACTOR` containing `writer-pfixed-revision`; it includes the five P-p7 records already carrying `REVIEWED / sol-delta-P-i`, because this task explicitly names them. Existing metadata is preserved in the proposed replacements; this report edits no status in the packets.

## Snapshot and evidence

HEAD at snapshot: `4508821a8446130662b3efc449981289f66e839e`.

| Scoped packet | SHA256 |
|---|---|
| `docs/graph/P/packets/P-p0.nodes.md` | `87776488f162003b9a8d2f5cb77c2c3a6ff0cfe0d00f74daf3eb337b60c0f34c` |
| `docs/graph/P/packets/P-p0.coverage.md` | `935101e5dde7f205b790bc45cb1c4821f78cefb0e09c15f36fd0428cb433c29b` |
| `docs/graph/P/packets/P-p6.nodes.md` | `4e07879f583ae43c3533733a29207db5c24821c21491785a6f9a4ce601c28033` |
| `docs/graph/P/packets/P-p6.coverage.md` | `5455f0748537bed07aaeeec058222dec1d0b1e58317aecff1b43ab5586ca1b3d` |
| `docs/graph/P/packets/P-p7.nodes.md` | `3097da442cc7c5cc05ae0183b3f47698e7647c2df1705e2be193125f843e1545` |
| `docs/graph/P/packets/P-p7.coverage.md` | `062f411a9cf8ba8d2f256b87cfc42e3aa63145e039f4752af1405c36f8f49827` |
| `docs/graph/P/packets/P-p10.nodes.md` | `93ccf0680efdd753732d80450321778f63596b89aef2dfd7bfc775a0245ad6f5` |
| `docs/graph/P/packets/P-p10.coverage.md` | `8c01f9714e12080bddb0562b68ac0ca549b41fc353151612b785a0b52afd8237` |

Read the restored node/coverage blocks and every statement, proof and EDGE consumer span. Read supplier statements at P6 L194-L203 (orbit transfer), L210-L230 (tube constants/geometry), L266-L283 (both assemblies); P7 L188-L204 (product definitions and product-chart theorem), L223-L239 (lattice lemma and all four steps); P1 L46-L50 (chart), L94-L109 (transport), L119-L138 (polar/composition and period conversion), L149-L154 (physical pipeline); P9 L155-L160 (the now-restored dictionary); P10 L173-L181 (R-nondegeneracy), L191-L193 (scaling), L210-L214 (index and amount); P11 L42-L50 and L86-L92 (actual restored consumers); P13 L51-L66 and L153-L161 (fixed-model identification and final case split). For the root source-gap coverage, also read P8 identification, P10 good-point L105-L109 and F-nonzero L155-L158. No K/I/N import is a direct dependency of one of these eight records.

Read only the named frozen statement/definition surface needed for the root and its physical predicate: FixedSunPlanetaryKAM, Phase, FixedKolmogorovSet, and the relevant frozen definition signatures. No implementation/provider file or proof-status ledger was consulted, and no proof body is used as evidence. The frozen theorem file SHA256 is `9eb5abd0507b6feb40ad4af5918a78089efeab3551ab5b7625f125e4dfa65f8b`.

## Node decisions

| ID | Verdict | Slice and spans re-read | Reason |
|---|---|---|---|
| bpP:p0:fixed | PASS | P-p0: `blueprint-P/parts/p0-conventions.tex#bpP:p0:fixed@L379-L388`; `blueprint-P/parts/p13-fixed-assembly.tex#bpP:p13:fixed@L153-L161` | Binder-by-binder match with the frozen theorem and Part 0; correct constant order, seven-root identity, Phase/FixedKolmogorovSet statement edges, and the direct Part 13 supplier. |
| bpP:p6:fixkol-assembly | PASS | P-p6: `blueprint-P/parts/p6-newtonian-models.tex#bpP:p6:fixkol-assembly@L281-L283`; `blueprint-P/parts/p6-newtonian-models.tex#bpP:p6:fixkol-assembly@L282-L282` | The fixed variant retains measurable whole-torus saturation, the fixed Hamiltonian and arbitrary real eps; replayed tube/collision/pair arguments and orbit-transfer(b) supply exactly FixKol. Constant scope agrees. |
| bpP:p7:lattice | FAIL | P-p7: `blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:lattice@L223-L233`; `blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:lattice@L234-L239` | SOURCE_HYPOTHESES includes the period-convert lemma as a premise although L223-L226 state only the product/polar-chart data. Keep the defined S_2pi as notation; consume its theorem through the existing dependency. |
| stepP:p7:la-polar | FAIL | P-p7: `blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:la-polar@L235-L235` | The conclusion that Phi_n=Psi^(n) o Theta_n is a 1-chart directly uses symplecticity of Psi^(n), supplied by product-chart(a). product-def defines the map and its domain but does not prove that premise; add the missing direct theorem edge. |
| stepP:p7:la-inv | FAIL | P-p7: `blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:la-inv@L236-L236` | Replace derived periodicity/invariance premises by the original lattice data and the local injectivity implication. product-chart supplies the physical invariance/injectivity conclusion through DEPS. |
| stepP:p7:la-per | FAIL | P-p7: `blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:la-per@L237-L237` | The S_2pi chart theorem and steps (a),(b) are consumed proof results, not source hypotheses. Record the source data and explicit linear map instead. |
| stepP:p7:la-ham | FAIL | P-p7: `blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:la-ham@L238-L238` | The current hypothesis field assumes product-chart(b),(c), the identities this step invokes to establish (d). Restore the original physical-model data and consume the theorem through DEPS. |
| bpP:p10:scaling | FAIL | P-p10: `blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:scaling@L191-L193` | The index-def EDGE points to L193, which is only the end of the remark. The assertion about index and amount occurs at L192. Change only that EDGE locator. |

## Coverage decisions

| ID | Verdict | Slice / span | Disposition check |
|---|---|---|---|
| bpP:p0:fixed | PASS | P-p0: `blueprint-P/parts/p0-conventions.tex#bpP:p0:fixed@L379-L388` | Correct NODE mapping to the restored result/step and its actual P-FIXED consumers. |
| p0:sourcegap-L387 | PASS | P-p0: `blueprint-P/parts/p0-conventions.tex#sourcegap@L386-L386` | Maps the fixed-model secular identification to P13 fixed-hamiltonian-form/P8 identification and the general-n induction obligations to P10 good-point/F-nonzero; no nondegeneracy premise is added. |
| bpP:p6:fixkol-assembly | PASS | P-p6: `blueprint-P/parts/p6-newtonian-models.tex#bpP:p6:fixkol-assembly@L281-L283` | Correct NODE mapping to the restored result/step and its actual P-FIXED consumers. |
| bpP:p7:lattice | PASS | P-p7: `blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:lattice@L223-L233` | Correct NODE mapping to the restored result/step and its actual P-FIXED consumers. |
| stepP:p7:la-polar | PASS | P-p7: `blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:la-polar@L235-L235` | Correct NODE mapping to the restored result/step and its actual P-FIXED consumers. |
| stepP:p7:la-inv | PASS | P-p7: `blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:la-inv@L236-L236` | Correct NODE mapping to the restored result/step and its actual P-FIXED consumers. |
| stepP:p7:la-per | PASS | P-p7: `blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:la-per@L237-L237` | Correct NODE mapping to the restored result/step and its actual P-FIXED consumers. |
| stepP:p7:la-ham | PASS | P-p7: `blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:la-ham@L238-L238` | Correct NODE mapping to the restored result/step and its actual P-FIXED consumers. |
| bpP:p10:scaling | PASS | P-p10: `blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:scaling@L191-L193` | Correct NODE mapping to the restored result/step and its actual P-FIXED consumers. |

No scoped coverage item fails; **all other coverage items PASS** means the other scoped coverage items, not a review of the surrounding slices. The source-gap ID `p0:sourcegap-L387` is stable although its recorded occurrence now starts at L386; this is not an ID defect. The obsolete deferral reasons are replaced by actual NODE dispositions under the new SPEC revision.

## Root identity and statement comparison — P-p0

The packet's manifest identity is unchanged and matches the manifest entry:

```text
FROZEN_FILE: KAM/Frozen/Planetary/Theorems/FixedSunPlanetaryKAM.lean
FROZEN_DECL: KAM.Planetary.fixedSunPlanetaryKAM
FROZEN_ANCHOR_ID: planetary.fixedSunPlanetaryKAM.v1
CONTRACT_ID: planetary.fixedSunPlanetaryKAM
CONTRACT_VERSION: 1
FROZEN_ABI_SHA256: a710d06469f0efa43a0eede7aa23e7e13216737ac0895ff11757e256903b2eec
```

Compared each binder: implicit n with 2<=n; G,m0; m,a of type Fin n→R; positivity of G,m0, every m_i and a_i; strict axis order for i<j; eta>0. The conclusion is `exists eps0,d,D`, with eps0>0 and 0<d<D, then every eps satisfying 0<eps<eps0, then S in Phase(n*2) with positive finite volume and FixedKolmogorovSet. No secular hypothesis, separation magnitude, perturbing-function premise or eps-dependent choice of d,D is introduced. The phase order remains positions/momenta with Fin(n*2) coordinates per block. Both named frozen definitions appearing in the root statement have direct edges.

Part 13's theorem is the correct direct supplier. Its n=2 and n>=3 cases are a case split for the same universally quantified result, not alternative proof routes that would permit omitting one case. No backwards edge from the supplying theorem to the root conclusion is required. This review does not certify the internal Part 13 proofs or reopen their graph slice.

## Recomputed direct uses and limits

- Fixed physical assembly: from the measurable saturated S in the small tube, the common tube arguments supply containment, collision exclusion and the fixed-Sun pair bounds `(0,q_0,...,q_{n-1})`. Orbit-transfer(b) supplies the fixed equations with velocity p_i/m_i. eps is an arbitrary real coupling in this helper; the moving-Sun mu>=0 requirement is not silently retained. d,D depend on axes alone, before eps, exactly as recorded.
- Polar geometry: Gamma_i=R_i and Lambda_i=I_i put Theta_n(O_0) in O_n. Direct differentiation gives `d eta ∧ d xi = dR ∧ d psi`. To conclude the *composition* Phi_n is a 1-chart also needs the proved product-chart(a) assertion; its definition alone supplies no derivative identity. This is the missing la-polar dependency.
- Lattice and period conversion: equality of polar pairs with R,R'>0 forces equal radii and angle differences in 2 pi Z. S_2pi turns these into integer shifts and changes the conformal factor from 1 to 2 pi. In contrast to an unconverted radian calculation, this lemma explicitly states and proves the period-one version. Physical-pipeline/torus-transport applicability is conditional on their torus and positive Diophantine inputs; this lattice lemma does not itself assert existence of a torus. Its computed data are suitable for those inputs, and the downstream Part 11 polar statement uses the conjugate action scaling as well.
- Source contracts: the invariance theorem, the S_2pi chart theorem and the decoupling theorem are proof inputs. The replacement SOURCE_HYPOTHESES fields retain the actual physical data, explicit maps and local equality branch while consuming those results via the already present DEPS; they do not make them extra allowable assumptions. No new mathematical result is substituted.
- Scaling: positive diagonal frequency rescaling sends a nonzero coefficient vector c to a nonzero coefficient vector and preserves R-nondegeneracy. Normalizing that vector on the coefficient sphere yields the stated squared-factor bounds for the amount and preserves the finite-type index. The action-variable dilation in P11 L50 is handled by its own derivative calculation; P10's remark is not falsely expanded to state that calculation. Its direct index/amount use is at L192, not the end-of-environment marker L193.

An in-memory structural check found all **8** scoped nodes reachable from the current seven roots, with all **37** current scoped dependency targets present, exactly one EDGE per DEPS/ROUTES entry, and exactly two separators per EDGE. No source exclusion outside this scope is reconsidered. Current restoration makes the old six-root/deferred-only narrative in historical SPEC paragraphs superseded by the explicit revision; it is not used to exclude these nodes.

## Suspected blueprint defects

No new source or frozen-statement defect is alleged in this scope. The findings are extraction errors in contract fields, one missing direct prerequisite and one locator. No pinned-paper erratum was reopened. No Lean execution, build, packet/source edit or state-changing git command was performed.

## Replacement blocks

Each heading names the owning slice. Existing frozen identity, locators (except the identified EDGE locator), notes, status and reviewer metadata are preserved. Replacements require a fresh independent reviewer after the writer merges them.

### P-p7 — bpP:p7:lattice

SOURCE_HYPOTHESES includes the period-convert lemma as a premise although L223-L226 state only the product/polar-chart data. Keep the defined S_2pi as notation; consume its theorem through the existing dependency.

```text
NODE: bpP:p7:lattice
KIND: lemma
TITLE: Lattice compatibility for Part~1
STATEMENT_SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:lattice@L223-L233
PROOF_SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:lattice@L234-L239
CONTRACT_ID: bpP:p7:lattice
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the physical product-chart data of Part 7 (n>=1, G,m0>0, positive m, kappa=G m0); Psi^(n) and O_n of product-def; Theta_n((phi,psi),(I,R))=((phi,sqrt(2R) sin psi),(I,sqrt(2R) cos psi)) on O_0={I_i>0,0<R_i<I_i}, Phi_n:=Psi^(n) o Theta_n; S_2pi denotes the linear position-scaling map used in (c)
SOURCE_QUANTIFIERS: n >= 1; (a)-(d) for z, z prime in O_0, k in Z^2n
SOURCE_CONCLUSION: (a) Theta_n and Phi_n are 1-charts on O_0 and O_0 + iota prime_k = O_0 for iota prime_k = ((2 pi k, 0), 0); (b) Phi_n(z + iota prime_k) = Phi_n(z) and Phi_n(z prime) = Phi_n(z) implies z prime = z + iota prime_k: (Q1) with sigma_k = 0 and (Q2) of bpP:p1:torus-transport in the radian convention; (c) Phi_n^(1) = Phi_n o S_2pi is a 2 pi-chart on S_2pi^{-1}(O_0) with (Q1), (Q2) for iota_k = (k, 0), so Corollary phys-pipeline applies to Phi_n and torus-transport (b) to Phi_n^(1); (d) H^{Phi_n} = H o Psi^(n) o Theta_n = h(I) + mu f^ o Theta_n, the unperturbed part independent of psi, R
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p7:la-polar, stepP:p7:la-inv, stepP:p7:la-per, stepP:p7:la-ham, bpP:p7:product-chart, bpP:p7:product-def, bpP:p1:typical, bpP:p1:torus-transport, bpP:p1:period-convert, bpP:p1:phys-pipeline, bpP:p1:chart
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p7:la-polar | blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:lattice@L235-L235 | proof step (a)
EDGE: stepP:p7:la-inv | blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:lattice@L236-L236 | proof step (b)
EDGE: stepP:p7:la-per | blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:lattice@L237-L237 | proof step (c)
EDGE: stepP:p7:la-ham | blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:lattice@L238-L238 | proof step (d)
EDGE: bpP:p7:product-chart | blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:lattice@L223-L223 | Psi^(n), O_n
EDGE: bpP:p7:product-def | blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:lattice@L223-L223 | the chart Psi^(n) and the set O_n
EDGE: bpP:p1:typical | blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:lattice@L226-L226 | Remark typical (1): the polar chart formula
EDGE: bpP:p1:torus-transport | blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:lattice@L229-L229 | (Q1)-(Q2) and torus transport (b)
EDGE: bpP:p1:period-convert | blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:lattice@L230-L230 | S_2pi and the period-one convention
EDGE: bpP:p1:phys-pipeline | blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:lattice@L230-L230 | Corollary phys-pipeline applies to Phi_n
EDGE: bpP:p1:chart | blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:lattice@L232-L232 | the pulled-back Hamiltonian H^Phi
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: writer-pfixed-revision+sonnet-extract-pfixed
REVIEWER: sol-delta-P-i
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: restored by the P-FIXED revision (was EXCLUDED as P-FIXED-only, writer ruling 2026-10-28); consumer stepP:p11:tc-polar (Part 11 L90); source fields filled by sonnet-extract-pfixed
```

### P-p7 — stepP:p7:la-polar

The conclusion that Phi_n=Psi^(n) o Theta_n is a 1-chart directly uses symplecticity of Psi^(n), supplied by product-chart(a). product-def defines the map and its domain but does not prove that premise; add the missing direct theorem edge.

```text
NODE: stepP:p7:la-polar
KIND: step
TITLE: (a) Polar chart
STATEMENT_SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:la-polar@L235-L235
PROOF_SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:la-polar@L235-L235
CONTRACT_ID: stepP:p7:la-polar
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Theta_n blockwise (psi, R) -> (xi, eta) = sqrt(2R)(sin psi, cos psi); O_n
SOURCE_QUANTIFIERS: R > 0, I_i > 0, 0 < R_i < I_i
SOURCE_CONCLUSION: Theta_n is a 1-chart on O_0 (d eta ^ d xi = dR ^ d psi, real analytic for R > 0, into O_n since Gamma_i = R_i < I_i = Lambda_i, identity on the (phi, I) blocks), and so is Phi_n = Psi^(n) o Theta_n as a composition of 1-charts; Theta_n(O_0) is in O_n
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p1:typical, bpP:p1:chart, bpP:p7:product-def, bpP:p7:product-chart
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p1:typical | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:la-polar@L235-L235 | Remark typical (1),(3): composition of 1-charts and the polar chart
EDGE: bpP:p1:chart | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:la-polar@L235-L235 | definition of a 1-chart
EDGE: bpP:p7:product-def | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:la-polar@L235-L235 | O_n = {Gamma < Lambda}
EDGE: bpP:p7:product-chart | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:la-polar@L235-L235 | Product-chart(a) supplies that Psi^(n) is a 1-chart on O_n, needed in the composition with Theta_n.
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: writer-pfixed-revision+sonnet-extract-pfixed
REVIEWER: sol-delta-P-i
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: restored by the P-FIXED revision (was EXCLUDED as P-FIXED-only, writer ruling 2026-10-28); consumer stepP:p11:tc-polar (Part 11 L90); source fields filled by sonnet-extract-pfixed
```

### P-p7 — stepP:p7:la-inv

Replace derived periodicity/invariance premises by the original lattice data and the local injectivity implication. product-chart supplies the physical invariance/injectivity conclusion through DEPS.

```text
NODE: stepP:p7:la-inv
KIND: step
TITLE: (b) Invariance
STATEMENT_SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:la-inv@L236-L236
PROOF_SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:la-inv@L236-L236
CONTRACT_ID: stepP:p7:la-inv
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the original lattice setting: the physical product-chart data, Psi^(n), O_n, Theta_n and O_0 as explicitly defined in L223-L226; take z in O_0 and k=(k_phi,k_psi) in Z^2n; for the injectivity implication take z prime in O_0 with Phi_n(z prime)=Phi_n(z); periodicity and the product-chart invariance/injectivity conclusions are supplied by the computation and DEPS
SOURCE_QUANTIFIERS: z, z prime in O_0, k = (k_phi, k_psi) in Z^2n
SOURCE_CONCLUSION: Theta_n(z + iota prime_k) = Theta_n(z) + ((2 pi k_phi, 0), 0); if Phi_n(z prime) = Phi_n(z) then Theta_n(z prime) = Theta_n(z) + ((2 pi k_phi, 0), 0), so phi prime = phi + 2 pi k_phi, I prime = I and, as R, R prime > 0, R prime = R and psi prime - psi in 2 pi Z^n
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p7:product-chart
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p7:product-chart | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:la-inv@L236-L236 | invariance of Psi^(n) under 2 pi Z^n-shifts of lambda and injectivity modulo them (a)
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: writer-pfixed-revision+sonnet-extract-pfixed
REVIEWER: sol-delta-P-i
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: restored by the P-FIXED revision (was EXCLUDED as P-FIXED-only, writer ruling 2026-10-28); consumer stepP:p11:tc-polar (Part 11 L90); source fields filled by sonnet-extract-pfixed
```

### P-p7 — stepP:p7:la-per

The S_2pi chart theorem and steps (a),(b) are consumed proof results, not source hypotheses. Record the source data and explicit linear map instead.

```text
NODE: stepP:p7:la-per
KIND: step
TITLE: (c) Period one
STATEMENT_SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:la-per@L237-L237
PROOF_SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:la-per@L237-L237
CONTRACT_ID: stepP:p7:la-per
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the original lattice setting: the physical product-chart data, Theta_n, Phi_n and O_0 of L223-L226; define S_2pi(z_1,z_2)=(2 pi z_1,z_2); chart factors and lattice identities from period-convert and steps (a),(b) are supplied through DEPS, not additional premises
SOURCE_QUANTIFIERS: k in Z^2n
SOURCE_CONCLUSION: Phi_n o S_2pi is a 2 pi-chart (composition), S_2pi^{-1}(O_0) + iota_k = S_2pi^{-1}(O_0 + iota prime_k) = S_2pi^{-1}(O_0), and (Q2) for Phi_n o S_2pi is that of (b) read through S_2pi
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p1:period-convert, bpP:p1:typical, stepP:p7:la-polar, stepP:p7:la-inv
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p1:period-convert | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:la-per@L237-L237 | (a) S_2pi is a 2 pi-chart with the lattice shift
EDGE: bpP:p1:typical | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:la-per@L237-L237 | Remark typical (3): composition of charts
EDGE: stepP:p7:la-polar | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:la-per@L237-L237 | Phi_n is a 1-chart (a)
EDGE: stepP:p7:la-inv | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:la-per@L237-L237 | invariance and injectivity modulo shifts (b)
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: writer-pfixed-revision+sonnet-extract-pfixed
REVIEWER: sol-delta-P-i
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: restored by the P-FIXED revision (was EXCLUDED as P-FIXED-only, writer ruling 2026-10-28); consumer stepP:p11:tc-polar (Part 11 L90); source fields filled by sonnet-extract-pfixed
```

### P-p7 — stepP:p7:la-ham

The current hypothesis field assumes product-chart(b),(c), the identities this step invokes to establish (d). Restore the original physical-model data and consume the theorem through DEPS.

```text
NODE: stepP:p7:la-ham
KIND: step
TITLE: (d)
STATEMENT_SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:la-ham@L238-L238
PROOF_SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:la-ham@L238-L238
CONTRACT_ID: stepP:p7:la-ham
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the original lattice setting: the physical product-chart data, Psi^(n), Theta_n, Phi_n and O_0; H is one of the two physical Hamiltonians of product-chart, with its coupling (written mu in L232); the pull-back uses c=1; the decoupling and perturbation identities are supplied by product-chart, not assumed as additional premises
SOURCE_QUANTIFIERS: z in O_0
SOURCE_CONCLUSION: H^{Phi_n} = H o Psi^(n) o Theta_n = h(I) + mu f^ o Theta_n with I = Lambda; unperturbed part independent of psi, R
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p7:product-chart, bpP:p1:chart
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p7:product-chart | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:la-ham@L238-L238 | (b),(c): H o Psi^(n) = h(Lambda) + mu f^
EDGE: bpP:p1:chart | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:la-ham@L238-L238 | 1-chart (c = 1): the pulled-back Hamiltonian is H o Phi_n
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: writer-pfixed-revision+sonnet-extract-pfixed
REVIEWER: sol-delta-P-i
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: restored by the P-FIXED revision (was EXCLUDED as P-FIXED-only, writer ruling 2026-10-28); consumer stepP:p11:tc-polar (Part 11 L90); source fields filled by sonnet-extract-pfixed
```

### P-p10 — bpP:p10:scaling

The index-def EDGE points to L193, which is only the end of the remark. The assertion about index and amount occurs at L192. Change only that EDGE locator.

```text
NODE: bpP:p10:scaling
KIND: claim
TITLE: Scalings
STATEMENT_SOURCE: blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:scaling@L191-L193
PROOF_SOURCE: blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:scaling@L191-L193
CONTRACT_ID: bpP:p10:scaling
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the frozen fast frequency is w = omega/2 pi for the period-one parametrisation (Part 1); the secular frequency enters through Omega_j = 2 sigma_j with the chart R_j = (p_j^2 + q_j^2)/2 (Remark bpP:p9:dict); all of these differ from varpi tilde by a positive diagonal matrix
SOURCE_QUANTIFIERS: none beyond the setting of Part 10
SOURCE_CONCLUSION: R-nondegeneracy of varpi tilde is unchanged by the positive diagonal rescaling (it maps c to a nonzero c, bpP:p10:rnd (c)); the index is unchanged and the amount changes by a factor between the squares of the smallest and largest diagonal entries
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p9:dict, bpP:p10:rnd, bpP:p1:period-convert, bpP:p10:index-def
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p9:dict | blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:scaling@L192-L192 | Omega_j = 2 sigma_j with R_j = (p_j^2 + q_j^2)/2
EDGE: bpP:p10:rnd | blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:scaling@L192-L192 | invariance of R-nondegeneracy under positive diagonal matrices (c)
EDGE: bpP:p1:period-convert | blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:scaling@L192-L192 | the frozen frequency w = omega/2 pi (Part 1)
EDGE: bpP:p10:index-def | blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:scaling@L192-L192 | index and amount
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: writer-pfixed-revision+sonnet-extract-pfixed
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: restored by the P-FIXED revision (was EXCLUDED as P-FIXED-only); consumer stepP:p11:nd (Part 11 L50: R-nondegeneracy invariant under positive diagonal rescaling and affine change of variable); source fields filled by sonnet-extract-pfixed
```

READY rev-P-w
