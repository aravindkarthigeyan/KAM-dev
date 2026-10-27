# Global review of track K dependency graph

Reviewer: `sol-global-K`. Date: 2026-10-27. Overall verdict: **FAIL root closure**.

The five root contracts and all 25 frozen identities match the authoritative declarations. G2 passes this source-graph review; HEAD, HEAD-Q, G1 and G3 have unresolved source obligations in their closures. This is a source/model review, not Lean validation or a claim that a frozen theorem is false. A faithfully recorded `SOURCE_GAP` remains an unpaid obligation, even when its intended repair is elementary.

Only this review file is edited. No implementation Lean, providers, proof status, other-track declarations, or source PDFs were consulted. No Lean, build, source lint, or state-changing git command was run: GLOBAL-BRIEF explicitly prohibits Lean and authorizes only this file. Axioms were not inspected (`#print axioms` would require Lean). No suspected defect in an authoritative frozen statement was found.

## Reviewed snapshot and mechanical checks

The full five-part corpus, graph, coverage manifest, 20 track-K frozen definitions, five frozen theorem declarations and manifest identity records were read. Slice-review verdicts were not used.

- `sha256sum -c docs/graph/K/CORPUS.sha256`: all five entries `OK`.
- Parsed 454 unique nodes, 576 coverage items, 1,399 EDGE records; ten external nodes, exactly E1–E10.
- Directed cycle check, including `ROUTES`: none. Every prerequisite and route target resolves.
- Reachability includes both alternative routes, without treating them as conjunctive dependencies. Root closure sizes: HEAD 444, HEAD-Q 454, G1 230, G2 190, G3 15. Union: all 454 nodes.
- All 25 anchors match manifest file, export, anchor ID, contract ID/version and stored ABI hash; each has author approval. The five roots are theorem anchors, not substitutes. All 429 other nodes have all four `FROZEN_*` fields `-`. Stored ABI identities were compared; no ABI was recomputed by elaboration.

`docs/graph/K/DEPGRAPH.md` SHA-256: `c399a15ec6d6b73c3594b03330c3820beefde260fb0ca2afed6bc8a832e7c902`.

`docs/graph/K/DEPGRAPH_COVERAGE.md` SHA-256: `f30deb4d298a2fbcc47ec1b6d6b47fc6ef5c861fae4d67213f8d8352c23845bd`.

`manifest/frozen-anchors.json` SHA-256: `8be8871b726f78aca2d9ad235157c693662486bef05830c229ee5d5440d06ca8`.

## Root-by-root reconstructed contracts

The fields below were reconstructed from Part 0 and the frozen declarations. Mathematical norms are max norms and their induced operator norms. Measure statements in Lean use `volume` on arbitrary sets; each scalar right side is wrapped in `ENNReal.ofReal` (HEAD-Q uses `ofReal κ * volume F_B`). In particular, no positivity premise on the existential witnesses L, C_B or G3's C is silently added, and no nonnegativity premise on ε or G1's e is added. Where needed, the proofs derive nonnegativity from a point in the domain.

### bp:p0:head — FAIL closure; four-field comparison PASS

Evidence: `blueprint/parts/p0-conventions.tex:105–115`; `KAM/Frozen/Theorems/KamPositiveMeasure.lean:39–60`; graph node at `DEPGRAPH.md:555`.

SOURCE_HYPOTHESES: n≥2; τ>n−1; s₀,r₀>0; B open and bounded; there exists C_B∈ℝ such that for every δ>0, volume {I∈B : infDist(I,Bᶜ)<δ}≤ofReal(C_Bδ); h complex differentiable on actionNbhd B r₀ and real at its real points; there exists L∈ℝ with ‖I−J‖≤L‖frequencyMap h I−frequencyMap h J‖ for I,J∈closure B. The subsequently quantified f is complex differentiable on complexStrip n s₀ × actionNbhd B r₀, periodic under integer angle translations, real at real points, and bounded pointwise by ε; ε≤ε₀.

SOURCE_QUANTIFIERS: fix n,τ,s₀,r₀,B,h with the preceding hypotheses; ∃ C,ε₀∈ℝ, C>0 and ε₀>0; ∀ f,ε∈ℝ, the perturbation hypotheses imply the conclusion.

SOURCE_CONCLUSION: volume(fundamentalDomain B \ kamCover h f B r₀ τ (C√ε))≤ofReal(C ε^(1/4)).

CONSTANT_SCOPE: C,ε₀ are chosen before f and ε; their construction may use witnesses L,C_B selected from the fixed hypotheses. They are independent of f, ε, and the γ subsequently chosen in the proof.

Comparison: all four graph fields preserve this contract, including the rate and cover radius. Closure fails at the six already marked source-gap nodes listed in F1, with additional graph corrections F2–F3.

### bp:p0:headq — FAIL closure; four-field comparison PASS

Evidence: `blueprint/parts/p0-conventions.tex:117–122`; `KAM/Frozen/Theorems/KamPositiveMeasureQualitative.lean:36–54`; graph node at `DEPGRAPH.md:591`.

SOURCE_HYPOTHESES: the HEAD hypotheses on n,τ,s₀,r₀,B,h and the inverse frequency bound, with no boundary-layer condition. For each subsequently quantified f,ε, the same four perturbation conditions and ε≤ε₀ apply on the original domain B.

SOURCE_QUANTIFIERS: fix the preceding data; ∀ κ∈ℝ, κ>0 → ∃ ε₀∈ℝ, ε₀>0; ∀ f,ε, the perturbation hypotheses imply the conclusion.

SOURCE_CONCLUSION: volume(fundamentalDomain B \ kamCover h f B r₀ τ κ)≤ofReal(κ) * volume(fundamentalDomain B).

CONSTANT_SCOPE: ε₀ may depend on κ and the fixed data (including a selected L); it is chosen before f,ε. There is no rate assertion or boundary regularity premise.

Comparison: all four graph fields agree. The entire HEAD closure is inherited through the inner approximation, with three further marked gaps and the additional unmarked product-volume use in F4.

### bp:p0:g1 — FAIL closure; four-field comparison PASS

Evidence: `blueprint/parts/p0-conventions.tex:124–140`; `KAM/Frozen/Theorems/AposterioriKam.lean:40–78`; graph node at `DEPGRAPH.md:628`.

SOURCE_HYPOTHESES: n≥2, τ≥n−1, 0<ρinf<ρ, and M,σK,σB,σT,μ,γbar>0. For the later data: 𝔅 open and integer-angle-translation invariant; h holomorphic there, periodic, real at real points, and ‖Dh‖,‖X_h‖,‖DX_h‖,‖D²X_h‖≤M (the last a bilinear operator norm). K holomorphic on Tρ, primary and real on reals, with ball(Kθ,μ)⊆𝔅, ‖DK‖≤σK−μ. The bilinear Gram matrix has unit determinant with inverse row sums≤σB−μ. torsionAverage has unit determinant with inverse row sums≤σT−μ. 0<γ≤γbar and IsDiophantine γ τ ω. Pointwise ‖E‖≤e on Tρ and C₁e/(γ⁴ρ^(4τ))<1.

SOURCE_QUANTIFIERS: fix n,τ,ρinf,ρ,M,σK,σB,σT,μ,γbar first; ∃ C₁,C₂∈ℝ, both positive; ∀ 𝔅,h,K,ω,γ,e satisfying the hypotheses.

SOURCE_CONCLUSION: ∃ Kinf holomorphic on Tρinf, primary and real on reals, with E_inf=0, ball(Kinf θ,μ/2)⊆𝔅, ‖DKinf‖≤σK−μ/2 and ‖Kinf−K‖≤C₂e/(γ²ρ^(2τ)) pointwise on that strip.

CONSTANT_SCOPE: C₁,C₂ depend only on the fixed tuple, uniformly over all later data, particularly γ≤γbar. No bound on ω is an extra premise.

Comparison: all four graph fields agree. The explicit C₁ in Part 2:1109–1124 uses γbar only to force e≤1; the derived frequency bound controls other γ factors. The unresolved graph obligation is `bp:p2:perturbation#average-applicability` (F1), not a missing γ-uniformity assumption.

### bp:p0:g2 — PASS

Evidence: `blueprint/parts/p0-conventions.tex:142–155`; `KAM/Frozen/Theorems/LocalUniquenessFlow.lean:40–72`; graph node at `DEPGRAPH.md:663`.

SOURCE_HYPOTHESES: n≥2, τ≥n−1, ρ>0 and M,σK,σB,σT,μ>0. The later 𝔅,h satisfy G1's H1 block. γ>0 and IsDiophantine γ τ ω, with no γ upper bound. K₁ is holomorphic, primary, real on reals on Tρ, has μ domain balls, derivative bound σK−μ, Gram-inverse bound σB−μ, averaged-torsion-inverse bound σT−μ, both determinant-unit conditions, and E₁=0. K₂ is holomorphic, primary, real on reals on Tρ, has image in 𝔅 and E₂=0. Pointwise ‖K₁−K₂‖≤cγ²ρ^(2τ) on Tρ.

SOURCE_QUANTIFIERS: fix n,τ,ρ,M,σK,σB,σT,μ; ∃ c∈ℝ, c>0; ∀ 𝔅,h,K₁,K₂,ω,γ satisfying these hypotheses.

SOURCE_CONCLUSION: ∃ φ∈ℝⁿ, ∀ θ∈T(ρ/2), K₂θ=K₁(θ+ιφ).

CONSTANT_SCOPE: c depends only on the fixed tuple, not γ or the later data. The proof derives γ≤Γ from invariance, the frame and Hamiltonian bounds; it does not add a γbar premise.

Comparison: all four graph fields agree. Its whole 190-node closure, including either average-derivative route, has no marked source gap. The local (S1)–(S4) package at Part 3:55–93 supplies Part 2's package through Part 3:74–77; the applications at 154–158, 182–191, 215–234 and 248–268 supply the reference torus premises. Phase normalization, both zero-average cohomological applications, Taylor's segment condition, the quadratic schedule and final real phase are supplied by the corresponding consumer steps. PASS concerns this source graph only.

### bp:p0:g3 — FAIL closure; four-field comparison PASS

Evidence: `blueprint/parts/p0-conventions.tex:157–162`; `KAM/Frozen/Theorems/VolumeNotDiophantineLe.lean:29–32`; graph node at `DEPGRAPH.md:703`.

SOURCE_HYPOTHESES: n any natural number, τ>n−1, Ω⊆(Fin n→ℝ) bounded. No openness, measurability, n≥2 or τ≥0 premise is imposed.

SOURCE_QUANTIFIERS: fix n,τ,Ω and their hypotheses; ∃ C∈ℝ; ∀ α∈ℝ, α>0 → the conclusion.

SOURCE_CONCLUSION: volume {ω∈Ω : ¬IsDiophantine α τ ω}≤ofReal(Cα).

CONSTANT_SCOPE: C is independent of α and may be chosen from n,τ and a bounding cube for Ω. Positivity of C is not required by the frozen statement.

Comparison: all four graph fields agree. Part 4:105–107 handles n=0 separately, so Part 0's general convention n≥2 does not improperly restrict this root. For n≥1 the unpaid input is the measurable-set Fubini use in `step:p4:slab-fubini` (F1).

## Global findings

### F1 — blocking: the expected single-gap closure does not describe this assembled graph

Evidence: `GLOBAL-BRIEF.md`, Global consistency item “the one SOURCE_GAP”; graph NOTE lines 4276, 4556, 8126, 9643, 12586, 12771, 13022, 13049, 13220. Direct source checks confirm that these records concern distinct obligations; they are not nine aliases of the product-measure identification.

| Existing SOURCE_GAP node | Source evidence | Affected roots |
|---|---|---|
| `bp:p1:lip-image-product#product-lebesgue` | Part 1:1106–1109 asserts product Lebesgue = Lebesgue on ℝ²ⁿ without proof | HEAD, HEAD-Q |
| `step:p1:mc-clamp` | Part 1:1178–1180 clamps to [−β,β] without β≥0; empty S does not force it | HEAD, HEAD-Q |
| `bp:p2:perturbation#average-applicability` | Part 2:875–876 invokes averages(a), whose literal statement at 160–162 assumes periodicity; perturbation at 798–805 does not assume primarity | G1, HEAD, HEAD-Q |
| `step:p4:slab-fubini` | Part 4:96–101 uses indicator/measurable-set Fubini; E6 at Part 1:80–84 explicitly gives compact-box continuous-function Fubini | G3, HEAD, HEAD-Q |
| `step:p4:ml-mixed` | Part 4:1134 uses the distance-to-set Lipschitz bound without deriving it | HEAD, HEAD-Q |
| `step:p4:mm-count` | Part 4:1178–1181 uses product-volume formulas beyond the stated continuous-function Fubini boundary | HEAD, HEAD-Q |
| `step:p4:dy-exhaust` | Part 4:1251–1252 invokes continuity of measure from below without its derivation in the closed input list | HEAD-Q |
| `step:p4:dy-open` | Part 4:1256–1257 invokes nullity of cube boundaries without its box-cover derivation | HEAD-Q |
| `step:p4:hq-cover` | Part 4:1298–1301 again uses product volume | HEAD-Q |

These nine graph records already expose the obligations, so no replacement record is proposed for F1. Do not delete them to meet the brief's count, introduce E11, or silently add source hypotheses. The expected one-gap accounting must be reconciled with the writer. Elementary derivations from E6/E8 are possible repair directions, not proofs contained in this review. For McShane, the actual application uses η₀≥0; the defect is in the full auxiliary statement, not evidence against HEAD. Likewise, concrete KAM-step tori are primary, but the full perturbation lemma represented by the graph is more general.

### F2 — minor: pointer-only full-lemma edges import unnecessary conditional premises

Evidence: graph `bp:p4:matrix-norms` at 10772 and `step:p4:mn-rowsum` at 10803 depend on the entire `bp:p4:unperturbed`. That lemma assumes ε≤1 (Part 4:342), with further conditional twist/error clauses. The matrix corollary at Part 4:518–533 has no explicit ε≤1 premise in its record; its use by the torsion-regular lemma at 546–561 therefore imports a conditional lemma unnecessarily. The section-level (SA) convention can supply ε≤1 in the main application, so this is not evidence of a false matrix estimate. It is a direct-use modelling defect: the full lemma is not applied here. The reference at 525–526 only identifies the constant matrices; 539–540 computes their row sums directly. SPEC excludes pointer-only edges.

Remove the unperturbed-lemma edge from both nodes; retain the source's direct row computation, with the constant matrices spelled out as typing data. No new premise is added. Complete replacements:

```text
NODE: bp:p4:matrix-norms
KIND: corollary
TITLE: Matrix norms
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:matrix-norms@L518-L533
PROOF_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:matrix-norms@L535-L544
CONTRACT_ID: bp:p4:matrix-norms
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: A in C^{p x q}; L^0=(Id;0), N^0=(0;Id); for the integral clause A is continuous on [0,1]^n; no epsilon bound is a premise
SOURCE_QUANTIFIERS: A, p, q, x, y
SOURCE_CONCLUSION: (i) row-sum norm is the operator norm, submultiplicative; (ii) |A^T|<=p|A|; (iii) |Omega_0|=|L^0|=|L^0T|=|N^0|=|N^0T|=1; (iv) dotC(x,Omega_0 y)=x^T Omega_0 y, Omega_0^T Omega_0=Id, Omega_0^2=-Id, symplecticForm(x,y)=(iota x)^T Omega_0 (iota y); (v) |int A|<=sup|A|
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p4:mn-rowsum, bp:p0:stripdata#dotC, bp:p0:hamiltonian#symplecticForm, bp:p0:hamiltonian#omegaZero
ROUTES: -
ROUTE_FOR: -
EDGE: step:p4:mn-rowsum | blueprint/parts/p4-measure.tex#bp:p4:matrix-norms@L536-L536 | proof step of this result
EDGE: bp:p0:stripdata#dotC | blueprint/parts/p4-measure.tex#bp:p4:matrix-norms@L528-L528 | bilinear dot product
EDGE: bp:p0:hamiltonian#symplecticForm | blueprint/parts/p4-measure.tex#bp:p4:matrix-norms@L530-L530 | symplecticForm
EDGE: bp:p0:hamiltonian#omegaZero | blueprint/parts/p4-measure.tex#bp:p4:matrix-norms@L525-L525 | Omega_0
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p4a
REVIEWER: sol-review-r4
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: L^0,N^0 are identified by the notation pointer at L525-L526; their norms are computed directly at L539-L540. No application of the conditional unperturbed-torus lemma is made.
```

```text
NODE: step:p4:mn-rowsum
KIND: step
TITLE: Row sums
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:mn-rowsum@L536-L543
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:mn-rowsum@L536-L543
CONTRACT_ID: step:p4:mn-rowsum
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: A in C^{p x q}; L^0=(Id;0), N^0=(0;Id); for the integral clause A is continuous on [0,1]^n; no epsilon bound is a premise
SOURCE_QUANTIFIERS: A, p, q
SOURCE_CONCLUSION: (i)-(v)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p0:hamiltonian#symplecticForm, bp:p0:hamiltonian#omegaZero, bp:p1:operator-norms, bp:p1:matrix-norms, bp:p1:ext-integral
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p0:hamiltonian#symplecticForm | blueprint/parts/p4-measure.tex#step:p4:mn-rowsum@L541-L541 | frozen formula of symplecticForm
EDGE: bp:p0:hamiltonian#omegaZero | blueprint/parts/p4-measure.tex#step:p4:mn-rowsum@L541-L541 | Omega_0
EDGE: bp:p1:operator-norms | blueprint/parts/p4-measure.tex#step:p4:mn-rowsum@L537-L539 | Missing cited identification of row-sum and operator norms
EDGE: bp:p1:matrix-norms | blueprint/parts/p4-measure.tex#step:p4:mn-rowsum@L537-L539 | Missing cited submultiplicativity and transpose bounds
EDGE: bp:p1:ext-integral | blueprint/parts/p4-measure.tex#step:p4:mn-rowsum@L542-L543 | Missing explicitly cited integral norm bound
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p4a+sol-review-r4
REVIEWER: sol-review-r2
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: L^0,N^0 are identified by the notation pointer at L525-L526; their norms are computed directly at L539-L540. No application of the conditional unperturbed-torus lemma is made.
```

### F3 — minor: HEAD's (SA) constructions have inaccurate parameter EDGE locators

Evidence: graph nodes `step:p4:head-positive` (12910) and `step:p4:head-zero` (12940) locate their parameter uses at Part 4:1218 and 1226, both proofstep headings. The consumer actually chooses γ and checks (SA) at 1219–1220 and 1227–1228. Their `SOURCE_CONCLUSION` correctly records the local construction, so the missing fact is not being assumed. Record a direct definition edge to (SA) and replace the parameter locators. Append `bp:p4:SA` to each node's DEPS; the complete new/replacement EDGE records, grouped by consumer, are:

Consumer `step:p4:head-positive`:

```text
EDGE: bp:p4:parameters | blueprint/parts/p4-measure.tex#step:p4:head-positive@L1219-L1220 | use c_*>0 and A_0 in the choice of gamma and in eta_0=A_0 epsilon gamma^-2
EDGE: bp:p4:SA | blueprint/parts/p4-measure.tex#step:p4:head-positive@L1219-L1220 | the chosen gamma lies in (0,1] and epsilon=c_* gamma^4, supplying the local package required by main-measure
```

Consumer `step:p4:head-zero`:

```text
EDGE: bp:p4:parameters | blueprint/parts/p4-measure.tex#step:p4:head-zero@L1227-L1228 | use c_*>0 and eta_0=A_0 epsilon gamma^-2 at epsilon=0
EDGE: bp:p4:SA | blueprint/parts/p4-measure.tex#step:p4:head-zero@L1227-L1228 | epsilon=0 supplies (SA) for every gamma in (0,1], before applying main-measure
```

### F4 — major: one more product-volume use is silently closed

Evidence: `step:p4:hq-trivial`, graph 13078–13103, has `DEPS: -` and `NOTE: -`, yet Part 4:1270–1271 asserts meas F_B=meas([0,1)^n)meas B=meas B. This is the same product-volume obligation already exposed at `step:p4:mm-count` and `step:p4:hq-cover`, now used before choosing the qualitative ε₀. Acyclic reachability through those later nodes does not supply a direct proof of this earlier step. The frozen fundamentalDomain definition identifies the set but does not prove its volume.

Keep the claimed conclusion and expose the missing product-volume justification, without adding an external. Complete replacement:

```text
NODE: step:p4:hq-trivial
KIND: step
TITLE: Trivial cases
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:hq-trivial@L1269-L1272
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:hq-trivial@L1269-L1272
CONTRACT_ID: step:p4:hq-trivial
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: HEAD-Q data (n>=2, tau>n-1, s0,r0>0, B open bounded, h holomorphic and real on B_{r0}, nondegeneracy on closure of B); kappa>0
SOURCE_QUANTIFIERS: B,kappa
SOURCE_CONCLUSION: if B empty, eps_0=1 works; otherwise 0<meas B<infty and meas F_B=meas B
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p0:domains#fundamentalDomain
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p0:domains#fundamentalDomain | blueprint/parts/p4-measure.tex#step:p4:hq-trivial@L1270-L1271 | unfold F_B as the half-open unit angle cube times B; the volume identity remains the explicit source gap
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p4b
REVIEWER: sol-review-r4
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: SOURCE_GAP: L1270-L1271 uses volume([0,1)^n x B)=volume(B). The fundamentalDomain definition supplies the carrier but no product-volume proof. This is another use of the product-volume bridge already exposed in step:p4:mm-count and step:p4:hq-cover; it is not supplied by the stated E6 continuous-function Fubini or by E8 without an additional derivation.
```

### F5 — minor coverage: hypothesis labels A1–A6 have no explicit inventory mapping

Evidence: Part 2:310–315 labels `bp:p2:A1` through `bp:p2:A6`. Coverage has only `bp:p2:admissible` for 306–317 and no ITEM records for these labels. Their mathematical content is covered, so this is an inventory omission, not six missing proofs. SPEC requires hypothesis-item labels to map to their enclosing node. Add these coverage records; no new graph node or edge is needed:

```text
ITEM: bp:p2:A1
KIND: hypothesis-item
SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:A1@L310-L310
DISPOSITION: NODE bp:p2:admissible
REASON: hypothesis-item label maps to the enclosing admissibility definition; no independent obligation
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sol-global-K
REVIEWER: sol-global-K
```

```text
ITEM: bp:p2:A2
KIND: hypothesis-item
SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:A2@L311-L311
DISPOSITION: NODE bp:p2:admissible
REASON: hypothesis-item label maps to the enclosing admissibility definition; no independent obligation
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sol-global-K
REVIEWER: sol-global-K
```

```text
ITEM: bp:p2:A3
KIND: hypothesis-item
SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:A3@L312-L312
DISPOSITION: NODE bp:p2:admissible
REASON: hypothesis-item label maps to the enclosing admissibility definition; no independent obligation
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sol-global-K
REVIEWER: sol-global-K
```

```text
ITEM: bp:p2:A4
KIND: hypothesis-item
SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:A4@L313-L313
DISPOSITION: NODE bp:p2:admissible
REASON: hypothesis-item label maps to the enclosing admissibility definition; no independent obligation
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sol-global-K
REVIEWER: sol-global-K
```

```text
ITEM: bp:p2:A5
KIND: hypothesis-item
SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:A5@L314-L314
DISPOSITION: NODE bp:p2:admissible
REASON: hypothesis-item label maps to the enclosing admissibility definition; no independent obligation
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sol-global-K
REVIEWER: sol-global-K
```

```text
ITEM: bp:p2:A6
KIND: hypothesis-item
SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:A6@L315-L315
DISPOSITION: NODE bp:p2:admissible
REASON: hypothesis-item label maps to the enclosing admissibility definition; no independent obligation
COVERAGE_STATUS: REVIEWED
EXTRACTOR: sol-global-K
REVIEWER: sol-global-K
```

## Cross-part and convention audit

- G1/G2 applications in Part 4: APPLY at 477–495 supplies H1, flat-frame H2/H3, twist H4, H5 and error/smallness using the first tuple. LIP at 892–911 supplies H2–H4 through STAB with ρ=s/8, δ=s/32, then G1 at (3s/32,s/16). At 913–927, the reference torus is K_ω′, STAB uses δ=s/16, the second torus is the new G1 output, and (s5) supplies the G2 radius. No stronger Gram/twist conclusion is extracted from G1 itself. Each of these three consumer nodes already has direct (SA), parameter, smallness and relevant reference-action edges. The excluded application at 752–767 also checks its premises but is unused by roots.
- Part 2 standing data and Part 3 (S1)–(S4) are local packages. The graph does not make them global assumptions. Their supplied instances and reference-torus properties were checked at the cross-part consumers. The G2 proof uses Part 2 geometry at E₁=0; it does not depend on Part 2's Newton iteration or G1 root.
- Cohomological calls: positive strip losses, nonresonant/Diophantine frequencies, periodicity, holomorphy, bounded forcing and zero averages are provided at the consumers. In Part 2 the normal forcing's zero average comes from exactness, the second forcing's average from the torsion choice, and geometry uses the a-priori operator-norm form. In Part 3 the normal forcing's average comes from its derivative equation, the normal constant from the averaged torsion, and the tangential average from the single phase normalization. Part 4's isotropy argument uses homogeneous uniqueness followed by strip identity. It does not assume the sought torus is Lagrangian.
- Cauchy calls use holomorphic bounded differences/frames or bounded Hamiltonians, with explicit smaller strips/polydiscs. Part 4's stability proof uses two first-derivative losses, not the excluded second-derivative lemma. Neumann calls supply the old inverse, the perturbation bound and the ≤1/2 smallness before using the new inverse. The exception to literal conditional applicability is already recorded in Part 2's average-applicability source gap; F2 addresses a spurious full-lemma application in Part 4.
- Max vector norms, induced row-sum matrix norms, bilinear transpose (not Hermitian transpose), the canonical sign Ω₀(a,b)=(−b,a), period 1, average over the unit cube, and the factor 2π in Fourier differentiation are consistent. Coefficient radius 2πρ appears only in the Fourier bridge; no geometric strip width is replaced by it downstream. τ≥0 in analytic estimates follows from n≥2, τ≥n−1 for G1/G2; G3 retains its separate n=0 case.
- The positive-ε HEAD step chooses γ=(ε/c_*)^(1/4), yielding η₀=A₀c_*^(1/2)√ε and complement bound C_meas c_*^(−1/4) ε^(1/4). The ε=0 branch takes γ→0 with the same cover radius 0. The empty-B branch avoids infDist/empty-domain issues. HEAD-Q restricts h and f to B′ and uses the same cover witnesses to include the smaller cover in the original one. It derives ε≥0 from the original nonempty B even when B′ is empty.
- All incoming frozen-definition edges were checked against their consumer's mathematical use and against the definition bodies. Definitions of real/complex derivatives, bilinear Gram matrix, normal frame, torsion and its average, the six torus clauses and the existential cover witnesses agree. F4 adds the missing direct carrier edge at the qualitative trivial-case consumer. No provider or implementation relationship was inferred from an import.
- Both routes of `step:p2:avg-deriv` are correct alternatives. The real route derives C¹ from holomorphy, then applies averages-real; the bounded route first restricts to T(r/2), then applies averages. Their ROUTE_FOR fields point back to the same parent. A DEPS-only traversal incorrectly reports these route nodes unreachable; that is not a finding against this graph.

## Unreachable-node and coverage findings

Unreachable nodes: **none**, with route-aware reachability. No directed cycles or unresolved IDs were found.

The only new inventory finding is F5. The grouped Part 0 definition labels are covered by their declaration nodes; no single grouped-label node is required. The unlabelled numerical constants paragraphs and boundary/case/limit obligations have construction/step records. Introductory strategy prose, conventions, provenance, begin/end-proof delimiters and repeated explanatory algebra do not introduce further independent proof obligations.

The three exclusions named in SPEC are valid:

- Part 1 `cauchy-strip-2` (592–603) and its step have no proof consumer; Part 4 STAB at 612–620 explicitly applies first-order Cauchy twice.
- Part 1 `mixed-difference` (442–460) and its steps are not invoked as a lemma by a root proof. Part 4's reference at 810 is an analogy; 811–817 supplies a new segment-by-segment proof with a weaker domain hypothesis, represented by `step:p4:mixed-proof` and its E4/regularity dependencies. Adding a dependency to the excluded Part 1 lemma would import its convex-open-domain premise incorrectly.
- Part 4 `normalized-unique` (744–777) and its G2/phase steps are unused by every root. LIP invokes G2 directly and bounds the phase through normalization. G1, G2 and G3 do not use normalized-unique either.

The existing nine source-gap records plus the unmarked product-volume use in F4 prevent the requested one-gap source closure. Source-coverage inclusion and source-payment are distinct checks.

## Final verification

`git diff --check` returned exit 0 with no output. A direct check of this new report found no trailing whitespace and balanced fenced blocks. The graph, coverage manifest and frozen-manifest SHA-256 values were rechecked after writing and match the reviewed snapshot above. Only `GLOBAL-review.md` was written by this reviewer; other concurrently appearing review files were neither read nor changed.

## Unresolved questions

1. Which source repairs will the writer supply for the nine existing gaps and the additional use F4? These must remain visible until paid from the allowed inputs or explicitly ruled on; the review supplies no new external assumption.
2. Will the global brief's “one SOURCE_GAP” expectation be updated to the assembled snapshot, or will the extra gaps be repaired before global acceptance?

No owner question about a frozen statement, quantifier, γ-uniformity, norm convention or headline rate is opened. No pinned-paper erratum is asserted: papers were outside the extraction corpus and were not read. The source issues above are blueprint/graph findings. No mathematical deviation is introduced by this review.
