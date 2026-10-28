# Independent audit of the Parts 1–3 Lean design

Overall verdict: **FAIL for complete graph-contract fidelity; PASS for the exact I-G1 assembly type and the Part 3 premise policy.** Two medium-severity omissions need correction before this design can certify every assigned graph node. Neither is a counterexample to I-G1 or to the weaker Part 5 interface. The 45 analytic draft bodies remain unproved.

Audit date: 2026-10-28. Worktree: `/root/code/KAM-inp-design-i123`, HEAD `814af75c7e07abf053d420fcaa8df7a714faecf0`. The independent elaboration and landed K API inspection used `/root/code/KAM`, HEAD `7428a8ffaa20aa4e964f814fd4e7bc264753d52b`. The live Part 5 interface comparison used `/root/code/KAM-inp`, HEAD `3a5a42751dcd6308d7f3c8eb922e72a47bf00a27`.

## Scope and method

This is a focused, tier-2 design audit under the supplied brief and the manuscript-audit protocol. I read AGENTS.md, PLAN.md, DECISIONS.md, the brief, both requested K audit precedents, the complete draft signatures, the design including its departures, the Parts 1–3 blueprint statements and relevant proofs, and their graph contracts. The audit checks signatures and the proposed proof route, not the missing analytic Lean proofs or the original HL19 PDF. No frozen declaration, graph, blueprint, provider, generated file, or manifest was edited; no state-changing git command was run. Only this report is a deliverable. Temporary probes were confined to the explicitly permitted main-checkout `.lake/abi-scratch/` directory and removed at closeout.

Acceptance criteria: inventory every signature, compare premises/conclusions/constants/carriers against the assigned sources, inspect the claimed K reuse at its real API, test exact frozen-type assembly and premise equality, and give a replacement for each FAIL. Findings below include a separate refutation pass; no tentative issue is used to reject the design.

## Frozen input snapshot v1

Line references to the signatures below refer to the following unchanged 1494-line draft. Its complete text occurs verbatim in the design Appendix A.

| Input | SHA-256 |
|---|---|
| `.drafts/design/IPart123Signatures.lean` | `a81599cdd34ceac46f9268f50ad58fbd9bfa64fcc8c35ee0dd44c75379a8452f` |
| `docs/tracks/I/design/PART123-LEAN-DESIGN.md` | `a9da526a1374558202a8f8a08902df3ce61c966bdbaa9b38ef6d57bd89782c68` |
| `docs/graph/I/DEPGRAPH.md` | `1ef3cc4e6a297b1922212ff1d5ddf6a94e2efb3b2a7350dab784842b5383151e` |
| `blueprint-I/parts/p1-iso-linear.tex` | `96892529ec86381a018c227e239993da5aa6e793144600505668057df0cfc70b` |
| `blueprint-I/parts/p2-iso-iteration.tex` | `f2bcdff3e5bd29a51e0246740f69e0bbd6419b925d8ae037b4e89ccf7a288968` |
| `blueprint-I/parts/p3-iso-local-charts.tex` | `78f529636a4615405c7a5f74cfe143914d62a59be1f582adb5deecf451e83827` |
| `KAM/Frozen/Iso/Theorems/IsoenergeticKam.lean` | `7d04c9e99e9e52113212f3a47ee749e577e8ffbf404085615df14d4707300922` |
| `KAM/Frozen/Theorems/VolumeNotDiophantineLe.lean` | `81ec5d7d7edbc2cd3928a676853a492dbecc2010621108f4f2ca520f5ef13021` |

The K interfaces cited below were read from the stated main revision. All files under `KAM/Frozen/Iso/` in this worktree were compared byte for byte with main and agree. The 13 copied declarations of section U were compared individually with the landed Part 5 `Setting.lean`, stripping comments and whitespace: **13/13 match**. Other declarations between those interfaces in the landed file are not part of the claimed copy.

## Findings and adversarial refutation

### F1 — MEDIUM: `apply` does not implement `bpI:p3:apply#constants`

Anchors: draft lines 1394–1414, design node table row `apply#constants`, and graph node `bpI:p3:apply#constants` (its `SOURCE_CONCLUSION` says “retain the frozen conditional conclusion for that same tuple”). The design identifies this node with “the leading `∃ C₁ C₂ C₃` of `apply`”.

The leading existential retains positivity and uniformity before `f, ε, E`. Its following property, however, applies only to `D = fractD`, `H = totalH h f`, and the selected flat torus. It does **not** retain the full frozen conditional theorem at those same witnesses for arbitrary `D,H,K,s,γ,e,E₀`. That retained body is explicitly the graph node's contract. Local APPLY is a valid downstream specialization; its tuple property is weaker than that contract.

Refutation pass: I checked the alternative interpretation that `hG1 : IG1Statement` or the outer existential supplies the missing property automatically. `hG1` supplies *some* valid tuple; the current `apply` result does not equate its witnesses with that tuple or include its universal property. One can call `hG1` again to prove a separate constants lemma, but that would be an additional interface, not a projection of the current signature. K's GValid precedent explicitly retains the whole universal bodies, as its audit emphasizes. **SURVIVED.** This does not invalidate local APPLY or change the frozen statement.

Correction: retain the full gate body for the chosen tuple as an additional conjunct, or supply a separately named `apply_constants` with that exact contract and make APPLY consume its tuple. A complete type-checked replacement is below.

### F2 — MEDIUM: `tori` forgets the specific slope charts and the fixed rays

Anchors: draft `ToriSide.ray` at lines 1428–1431; `tori` at lines 1438–1448; graph `bpI:p3:tori`, especially `SOURCE_QUANTIFIERS` (“patches, rays, their gamma and C_i fixed … then … every f”) and T7 (“m_{c_j}(I_-) … m_{c_j}(I_+)”). Blueprint `p3-iso-local-charts.tex`, `bpI:p3:uniform` and T7 specify `Φ_j = (h,m_{c_j})`.

The output patches are generic `EnergyPatch` values. The result does not retain `p.m = chartM h p.c`, membership of their centres in `closure B'`, or their origin from `IsPatch`. Thus the available ordering is only for the arbitrary coordinate `p.m`, not the stated gradient-direction coordinate `m_c`. Moreover, `ToriSide.ray` chooses its ray and Diophantine constant *inside* the output for each `f, ε, I₀, E`; the signature does not retain the two rays chosen per patch before those variables. Uniform numerical constants alone do not express that choice order.

Refutation pass: I traced all fields of `ChartCover`, `EnergyPatch`, `ToriSide` and `TorusOutput`, and the definition `IsPatch.toEnergyPatch`. The construction knows the missing equalities, but the result type forgets them. There is a direct test of the loss: replace a genuine patch coordinate by `-p.m`, replace `Ψ(E,m)` by `Ψ(E,-m)`, replace `mPlus,mMinus` by `-mMinus,-mPlus`, and swap the two torus outputs. The generic patch fields, ChartCover, and current output clauses are preserved, while the designated plus/minus ordering relative to the original `chartM h p.c` reverses. No field rules out this change. **SURVIVED.** This is a weakened formal contract, not a claim that the proposed construction cannot prove the stronger result.

Correction: keep the generic Part 5 interface as a separately named projection, but retain the chart identity and the two rays outside the perturbation quantifiers in the source-node theorem. The replacement below adds exactly that information to `tori`; no input premise is added. The projection proofs must destruct the added output conjuncts before constructing the unchanged Part 5 interface.

### N1 — LOW: Part 1 is a documented specialization of the source range

`Setting` extends landed K `Standing`, whose Params require `τ ≥ n-1`, whereas `bpI:p1:setting` states only `τ ≥ 0`. Design departure D2 discloses this. All I-G1 consumers have `n ≥ 2, τ ≥ n-1`, so this restriction causes no root gap. The resulting helpers must be recorded as specialized implementations, not evidence that the full `τ ≥ 0` source statements have been formalized. The free extra positive σ parameters can be instantiated; they do not assert a proof step. Departures D3/D4 correctly distinguish using a Diophantine reference standing from proving regularity at the possibly uncertified new frequency.

### N2 — LOW: a compiling design is not a landable or proved module

The draft intentionally imports anchors and contains sorry outside Frozen. It lacks the production `module`/`public section` wrapper. This excluded design scratch is not a library landing. Install the advertised split, wrappers and exposure attributes, respect provider quarantine, and replace every analytic body before sealing. The reported proof-size estimates and “thin wrapper” line estimates were not validated by completed implementations.

## Premise and rule 6 verdict

**PASS.** Independent probes checked the stronger, bidirectional fact of definitional type equality:

```lean
example : (type_of% @KAM.Iso.isoenergetic_kam) = KAM.Iso.Charts.IG1Statement := rfl
example : (type_of% @KAM.volume_not_diophantine_le) = KAM.Iso.Charts.G3Statement := rfl
```

Thus these are literally the complete frozen types, not stronger hypotheses: the full outer binder order, constants before `D,H,K,s,γ,e,E₀`, the five Hamiltonian bounds, Gram/bordered inverse row sums, endpoint margins, gamma upper bound, strict smallness, pointwise energy, and both closeness estimates agree. G3 preserves arbitrary bounded Ω and its existential real C; no positivity of C or measurable-set premise is smuggled in.

The premises represent upstream source results, not Part 3's conclusions. Uses are explicit: `dio_open`, `rays`, `patch_rays` use G3; `apply` uses I-G1; `tori` and `part3_tori_of` propagate both. All other Part 3 geometry/analytic lemmas are independent of these premises. `part3_tori_of` is a distinctly named conditional helper, and provider-level `part3_tori` discharges both premises with the actual anchors. The alternative discharge through `g1_explicit` also elaborates. No local uniqueness or Kolmogorov assumption enters this interface.

This proves derivability *once the upstream results and the conditional analytic lemmas are proved*. The I-G1 anchor is currently sorry-backed in this snapshot; only G3 has a clean axiom receipt. Referring to “sealed anchors” is a future assembly condition for I-G1, not current proof closure.

`Setting`, `IsoStanding`, `AdmissibleNoTwist`, `IsoAdmissible`, and `IterHyp` contain source hypotheses and typing/range data. `IsoAdmissible.twist` is the bordered B5 premise; it is not unbordered A5. `IterHyp` contains the initial I5–I12 data, not any claim about iterates or limits. `IsPatch` packages the local chart definition after its existence is proved by `cover`. `ChartCover`, `ToriExistence` and `ToriSide` package outputs and are not assumed to replace Part 3's work. F1/F2 concern information lost in conclusions, not rule 6 violations.

## Definitions, norms, constants and assembly

**Definitions: PASS on their advertised guarded uses.** The bordered carrier is `Fin n ⊕ Unit`; the ordinary frame carrier is `Fin n ⊕ Fin n`. The row Y is bounded by a sum of entry norms, and square matrices use `Matrix.Norms.Operator`. The checked bridge `extendedTorsion_eq_bordMat` gives the exact frozen block entries, including the zero corner. No unbordered inverse is used in `bordSol`. Its inverse is mathematical under `hinv`; off that domain it is the documented total Lean inverse. `cohR`/`triU` are total Fourier-defined operators; theorem hypotheses supply their holomorphic periodic zero-average data before any analytic use.

The signs agree: `ξN = ξ0 - RηN`, `gL = TξN + ωξω - ηL`, `ξL = ξL0 + RgL`; `ηω = -(energyAverage-E₀)`; the frequency update is `s(1-Re ξω)`, with zero imaginary part proved in `correction`. The reduced residual includes `+Lωξω`, and `isoLinError` includes `-(0;Ω_Kω)ξω`. Newton's error has `+ξω ∂_ωΔK`. The energy average cancellation has the corresponding negative initial defect. These are substantive moving-frequency adaptations; fixed-frequency K NEWTON is not being used to erase them.

`isoNewtonMap` is `K+ΔK` on the open correction strip and K elsewhere; all differentiation occurs inside the open strip. Its real slice is inside whenever the radius is positive. `isoSeq` uses the current `(K_j,s_j)` for both next components and the schedule width `r_j-2δ_j`. `isoLimit` uses limUnder only on the final strip, with K outside; `limit` proves convergence there, rather than assuming it. `isoSLimit` is meaningful after the scalar Cauchy argument using `ωstar ≠ 0`. No estimate needs an unproved property of a fallback value. The sInf/sSup constants are only estimated under compactness/nonemptiness; the complement of bounded B in dimension 2 is nonempty. No convexity of B is presumed.

**Constants: PASS.** The 18 Part 2 constant definitions and `dStep`, `isoC1`, `isoC2` match the displayed formulas. Only `hatcStar` adds μ,ν dependence; `isoC1` adds widths and γbar, and `isoC2` adds widths. None depends on H,K,γ,e or the ray scalar. I checked the absorption powers at the correction, Newton-error, torsion and summed-bound transitions: κ≥3, a=2κ+2≥8, γ≤Θ and δ≤1 supply the stated absorptions. The extra moving-frequency torsion cost is `8n²m⁴ d/δ`, the energy-row cost is `CY d/δ`, and the extra column costs d; all are included in `CDTbord d/δ²`. Smallness gives d<β before using any segment in D. The schedule loses 4δ per iterate while the correction uses 2δ. Energy passes to the limit using uniform closeness inside the original ball in D. These checks validate the design's algebraic route, not absent Lean proofs.

Part 3 fixes τ=2, so ρ^(4τ)=ρ^8 and ρ^(2τ)=ρ^4. Its constants are chosen before perturbations. The local ray has norm between m_h/4 and m_h/2, giving s°>2, s°<4M_g/m_h and both endpoint margins with ν=m_h/4. The inverse perturbation threshold εT=1/(4 S_h F₂) gives the required one-half bound. The uniform existence form for CK,ε₁ is an acceptable majorant/minorant reformulation of the finite max/min construction; exact extremal values are unused. The existing scope inconsistency for `e=F₁ ε` is correctly avoided by keeping e inline, not declaring it ε-independent.

**I-G1 provider assembly: PASS for exact type.** The anonymous provider expression at 1471–1474 independently elaborates against `type_of% @KAM.Iso.isoenergetic_kam`. Its witnesses are `isoC1`, `isoC2`, `isoC2`. The formulas cancel the rho powers to give precisely the iteration threshold and both frozen closeness estimates. The frozen endpoint and row-sum premises are preserved, and no new premise enters. This is an assembly-type check against a sorry-backed `g1_explicit`, not a proof of I-G1.

## Landed K reuse assessment

| Claimed reuse | Actual API and point-of-use assessment |
|---|---|
| Tori, frame, reducer and frozen agreement | PASS. The carriers and signs in `Torus/Objects`, `FrozenAgreement` and the identities are shared, with H substituted for h. |
| Standing, Params, constants and arithmetic | PASS with N1's source-range restriction. `IsoStanding.setting` supplies K standing at sω* for s≥1; no twist premise occurs in Standing. |
| Cohomological solve, averages and `triU` | PASS. `Tools.cohR` is the total operator; `Triangular.triU = cohR ω ηN`. The fixed unbordered `triXi0` is deliberately replaced. Product averages require continuity on the real cube, supplied by positive-strip holomorphy. |
| Geometry without A5 | PASS. Landed `Geometry.geo_de`, `geo_domegak`, `geo_ered`, `geo_esym_le` and the cohomological inputs take explicit local premises without A5. Reassemble them; do not invoke the Admissible-taking final theorem. |
| Perturbation without A5 | PASS. `PerturbationAux.frame_items` and the fixed-frequency torsion helpers carry the listed frame/image hypotheses, not the unbordered twist. The final landed `perturbation` does carry hT, so the design correctly excludes it and its inverse conclusion. |
| Bordered Neumann and real inverse | PASS as proposed adapters, not existing index-generic matrix exports. The landed Neumann file has Banach-algebra ring lemmas; its matrix wrappers are `Fin n`-specific. Convert nonsingular inverse to ring inverse and determinant units, or reindex. Real inverse needs the analogous finite-index argument. `norm_le_iff_forall_rowSum` is already index-generic. |
| `sMat` / `sMat_spec` | PASS. The latter needs positive dimension and a half-bound on the symplectic defect; IsoStanding gives n≥2 and Newton smallness supplies the bound. It does not assume unbordered twist. |
| Schedule and abstract limits | PASS. `schedule`, `lim_k`, `lim_dk`, `lim_holo`, `lim_primary`, `lim_close`, `lim_margins` are usable with the new sequences. `KAM.Apost.lim_invariance` fixes ω and must not be applied to the moving-frequency sequence; the blueprint's continuity argument with s_j→s∞ remains new work. The reuse list does not claim that lemma. |
| Part 3 derivative and domain bounds | PASS. `Head.derivative_bounds_design`, `h_bounded` and non-Data domain helpers require only bounded B, positive widths and analytic data; they do not require Kolmogorov nondegeneracy. The D²H estimate needs the same Cauchy argument in DerivativeBounds, since the public adapter's last block lists DH and X_H derivatives but not D²H. |
| Flat frame and action Hessian | PASS. `UnperturbedFrame` and `unperturbed_actionHessian_apply`, `unperturbed_norm_actionHessian_le` supply the relevant identities/bounds. Data-taking final unperturbed results are not reusable as stated. |
| Real/complex frequency bridge | PASS as new generalized helpers. `Head.Frequency` has non-Data real-direction helpers, but `frequencyMap_eq_gradC` and its final Hessian theorem carry Data. `freq_map_local` and `freq_map_contDiff` must reconstruct the argument from holomorphy/reality; the draft does not pretend to have a Kolmogorov witness. |
| Part 5 interfaces | PASS. Individual code comparisons of all 13 copied declarations succeed. The checked projection `part3_tori_of` reaches exactly ChartCover plus ToriExistence. This narrower consumer interface does not by itself certify the stronger graph contract in F2. |

No unavailable Kolmogorov field or unbordered twist is needed by the proposed helper route. The remaining adapters are proposed work, not completed proofs certified by the import-only elaboration.

## Signature inventory

The table includes every named declaration and the four anonymous checks: 50 theorems, 79 definitions/abbreviations, 15 structures, and 4 examples, 148 rows. Names are abbreviated within the section namespaces: U = `KAM.Iso.Confinement`, L = `KAM.Iso.Linear`, A = `KAM.Iso.Apost`, C = `KAM.Iso.Charts`, P = `KAM.Provider.Iso`. Source node abbreviations `p1:`, `p2:`, `p3:` mean `bpI:`. PASS permits the explicitly documented, consumer-valid reformulations described above; it does not mean a sorry body is proved.

| Signature (draft line) | Source/interface | Verdict | Reason |
|---|---|---|---|
| `U.toC` (48) | Part 5 shared interface | PASS | Individual code comparison with landed declaration passes; role checked above. |
| `U.realAct` (49) | Part 5 shared interface | PASS | Individual code comparison with landed declaration passes; role checked above. |
| `U.realPart` (50) | Part 5 shared interface | PASS | Individual code comparison with landed declaration passes; role checked above. |
| `U.totalH` (51) | Part 5 shared interface | PASS | Individual code comparison with landed declaration passes; role checked above. |
| `U.rhoInf` (53) | Part 5 shared interface | PASS | Individual code comparison with landed declaration passes; role checked above. |
| `U.fractD` (54) | Part 5 shared interface | PASS | Individual code comparison with landed declaration passes; role checked above. |
| `U.BaseData` (56) | Part 5 shared interface | PASS | Individual code comparison with landed declaration passes; role checked above. |
| `U.HeadData` (62) | Part 5 shared interface | PASS | Individual code comparison with landed declaration passes; role checked above. |
| `U.PerturbData` (73) | Part 5 shared interface | PASS | Individual code comparison with landed declaration passes; role checked above. |
| `U.EnergyPatch` (82) | Part 5 shared interface | PASS | Individual code comparison with landed declaration passes; role checked above. |
| `U.TorusOutput` (113) | Part 5 shared interface | PASS | Individual code comparison with landed declaration passes; role checked above. |
| `U.ChartCover` (126) | Part 5 shared interface | PASS | Individual code comparison with landed declaration passes; role checked above. |
| `U.ToriExistence` (137) | Part 5 shared interface | PASS | Individual code comparison with landed declaration passes; role checked above. |
| `L.Setting` (164) | p1:setting, #k-bridge | PASS | K Standing plus DH bound; specialized tau range disclosed in N1. |
| `L.energyRow` (172) | p1:extended-basic | PASS | Exactly DH(K) on each frozen normal column. |
| `L.bordMat` (177) | p1:border-solve | PASS | Correct Sum-index block matrix and zero corner. |
| `L.extendedTorsion_eq_bordMat` (181) | p0:extended / p1:extended-basic | PASS | Proved ext/rfl bridge to frozen entries. |
| `L.isDiophantine_smul` (188) | p1:ray | PASS | s≥1 legitimately includes endpoint; no constant loss. |
| `L.isUnit_det_one_sub` (192) | p1:ext-neumann | PASS | Radius one, arbitrary finite carrier; invertibility only. |
| `L.neumann_fintype` (196) | K:p1:neumann adapter | PASS | Correct half threshold and both inverse estimates. |
| `L.inv_im_eq_zero` (201) | K:p1:real-inverse adapter | PASS | Total inverse real even in singular case. |
| `L.freq_map_local` (208) | p1:trivial / p3:k-bridge | PASS | Real/complex derivative and symmetric real Hessian; no Kolmogorov. |
| `L.freq_map_contDiff` (220) | p3:coordinates / compact | PASS | C1 regularity and gradient action on real slice. |
| `L.extended_basic` (239) | p1:extended-basic | PASS | Regularity, block average and row-sum bounds retained. |
| `L.extended_regular` (259) | p2:torsion adapter | PASS | Arbitrary new frequency; reference standing only supplies H data. |
| `L.last_row` (272) | p1:last-row | PASS | Correct minus etaL sign and 2n² bound. |
| `L.energy_approx` (294) | p1:energy-approx (a)–(e) | PASS | Chain rule, compatibility, averages and two losses retained. |
| `L.energy_defect` (317) | p1:energy-approx (f) | PASS | Both pointwise identities and linear average split; explicit supremum majorants. |
| `L.energy_conservation` (336) | p1:energy-conservation | PASS | Pointwise constant energy; complex E0 permitted; no Gram premise. |
| `L.trivial_torus` (349) | p1:trivial | PASS | Exact bordered Hessian, determinant, total inverse and norm cast. |
| `L.BordData` (372) | p1:border-solve data | PASS | Only etaL,etaN,T,Y,etaω data; no result fields. |
| `L.bordAvg` (380) | p1:border-solve | PASS | Averages of T,Y and frozen frequency column. |
| `L.bordSol` (384) | p1:border-solve | PASS | Bordered inverse on the specified average RHS; correct plus terms. |
| `L.bordXi0` (388) | p1:border-solve | PASS | Projection to ordinary indices. |
| `L.bordXiOmega` (389) | p1:border-solve | PASS | Projection to single border index. |
| `L.bordXiN` (392) | p1:border-solve | PASS | xi0 minus triU. |
| `L.bordGL` (396) | p1:border-solve | PASS | T xiN plus omega xiω minus etaL. |
| `L.bordXiL` (400) | p1:border-solve | PASS | Free constant plus cohR gL. |
| `L.border_solve` (405) | p1:border-solve | PASS | All system, estimate, uniqueness and reality clauses; stronger second-equation strip. |
| `L.isoLinError` (462) | p1:reduced | PASS | Three defects, including negative lagrange-frequency term. |
| `L.isoResidual` (470) | p1:reduced | PASS | A deltaK minus directional derivative plus L omega xiω plus error. |
| `L.bordOp` (478) | p1:reduced | PASS | Correct triangular operator and frequency correction. |
| `L.reduced` (485) | p1:reduced | PASS | Unconditional identity; inverse consequences correctly require frame unit. |
| `L.AdmissibleNoTwist` (507) | p1:geometry-noA5 | PASS | K admissibility with twist removed and all ranges kept. |
| `L.geometry_noA5` (524) | p1:geometry-noA5 | PASS | Exact two loss levels; optional frequency bound guards final field bounds. |
| `L.perturbation_noA5` (544) | p1:perturbation-noA5 | PASS | Only frame/same-frequency perturbation; no hidden average inverse. |
| `A.IsoStanding` (579) | p2:standing | PASS | Frozen I1–I4 five bounds, ray and positive parameter data. |
| `A.IsoStanding.setting` (598) | p2:standing#k-bridge | PASS | Standing at sωstar for s≥1. |
| `A.rayMargin` (604) | p2:ray | PASS | Minimum endpoint distance times norm of ray. |
| `A.ray` (607) | p2:ray | PASS | Scaling, nonzero coordinate test, distance identity and margin Lipschitzness. |
| `A.IsoAdmissible` (618) | p2:admissible | PASS | B1–B7; twist is bordered; energy defect explicit. |
| `A.IsoAdmissible.freq` (628) | p2:freq | PASS | gamma≤norm(sωstar)≤Theta from primary frame/error data. |
| `A.hatCS` (641) | p2:constants | PASS | Formula and dependence agree; no iterative or Hamiltonian input. |
| `A.hatCxiN` (643) | p2:constants | PASS | Formula and dependence agree; no iterative or Hamiltonian input. |
| `A.hatCg` (644) | p2:constants | PASS | Formula and dependence agree; no iterative or Hamiltonian input. |
| `A.hatCxi` (646) | p2:constants | PASS | Formula and dependence agree; no iterative or Hamiltonian input. |
| `A.hatCDK` (647) | p2:constants | PASS | Formula and dependence agree; no iterative or Hamiltonian input. |
| `A.hatCDelta` (648) | p2:constants | PASS | Formula and dependence agree; no iterative or Hamiltonian input. |
| `A.CP` (650) | p2:constants | PASS | Formula and dependence agree; no iterative or Hamiltonian input. |
| `A.hatCpartial` (651) | p2:constants | PASS | Formula and dependence agree; no iterative or Hamiltonian input. |
| `A.hatClin` (653) | p2:constants | PASS | Formula and dependence agree; no iterative or Hamiltonian input. |
| `A.hatCE1` (656) | p2:constants | PASS | Formula and dependence agree; no iterative or Hamiltonian input. |
| `A.hatCE2` (659) | p2:constants | PASS | Formula and dependence agree; no iterative or Hamiltonian input. |
| `A.hatCE` (662) | p2:constants | PASS | Formula and dependence agree; no iterative or Hamiltonian input. |
| `A.CY` (663) | p2:constants | PASS | Formula and dependence agree; no iterative or Hamiltonian input. |
| `A.CDTbord` (665) | p2:constants | PASS | Formula and dependence agree; no iterative or Hamiltonian input. |
| `A.hatcStep` (666) | p2:constants | PASS | Formula and dependence agree; no iterative or Hamiltonian input. |
| `A.hatcSum` (668) | p2:constants | PASS | Formula and dependence agree; no iterative or Hamiltonian input. |
| `A.hatcStar` (670) | p2:constants | PASS | Formula and dependence agree; adds mu,nu only. |
| `A.dStep` (674) | p2:correction | PASS | Formula and dependence agree; no iterative or Hamiltonian input. |
| `A.iso_constants_spec` (679) | p2:constants | PASS | One-lower-bounds, kappa≥3,a≥8 and CDT dominance. |
| `A.isoBordData` (690) | p2:correction | PASS | Negative average energy defect and frozen geometric data. |
| `A.isoXi` (696) | p2:correction | PASS | Zero free phase constant, packed L/N vector. |
| `A.isoXiOmega` (700) | p2:correction | PASS | Border scalar of explicit solve. |
| `A.isoCorrection` (705) | p2:correction | PASS | P xi transported back through sumVec inverse. |
| `A.isoNewS` (711) | p2:correction | PASS | s(1-Re xiω); realness proved, not assumed. |
| `A.correction` (721) | p2:correction | PASS | All norms, reality, directional derivative and frequency-size bounds. |
| `A.isoNewtonMap` (758) | p2:newton-error | PASS | Open-strip update with original K fallback. |
| `A.isoQuadX` (764) | p2:newton-error | PASS | Exact first-order-subtracted vector field remainder. |
| `A.isoQuadH` (770) | p2:newton-error | PASS | Exact scalar Hamiltonian remainder. |
| `A.newton_error` (775) | p2:newton-error | PASS | Moving-frequency and energy identities plus both quadratic bounds. |
| `A.torsion_step` (804) | p2:torsion | PASS | New frequency explicitly in averaged bordered torsion; correct 2/3/4δ losses. |
| `A.step` (839) | p2:step | PASS | All five blocks with full step-size smallness and updated scalar. |
| `A.isoEpsSeq` (879) | p2:schedule | PASS | Hatted CE quadratic recurrence. |
| `A.isoDSeq` (886) | p2:schedule | PASS | Hatted CDelta size at the same schedule. |
| `A.iso_error_decay` (890) | p2:error-decay | PASS | Correct q exponent, weighted bounds, Summable and tsum bound. |
| `A.isoSeq` (909) | p2:iteration | PASS | Both next components use current torus and scalar. |
| `A.IterHyp` (918) | p2:iteration inputs | PASS | Initial frozen premises only; ray margin rather than future estimates. |
| `A.iteration` (940) | p2:iteration | PASS | All six induction blocks and scalar-frequency increments retained. |
| `A.isoLimit` (991) | p2:limit | PASS | Pointwise limUnder on final strip, original K outside. |
| `A.isoSLimit` (997) | p2:limit | PASS | Scalar limUnder; existence supplied by limit. |
| `A.limit` (1007) | p2:limit | PASS | Uniform maps/derivatives, scalar convergence, margins and invariance. |
| `A.energy_limit` (1034) | p2:energy-limit | PASS | Exact average energy and convergence, no conclusion premise. |
| `A.isoC1` (1047) | p2:g1 | PASS | rho^(4tau) max(gammabar^4,cstar delta0^(-2a)). |
| `A.isoC2` (1052) | p2:g1 | PASS | 2 CDelta rho^(2tau) delta0^(-a), also C3. |
| `A.g1_explicit` (1057) | p2:g1 | PASS | Exact frozen inner body and fixed explicit witnesses; provider probe passes. |
| `C.IG1Statement` (1116) | p0:g1 interface | PASS | Definitional equality to complete frozen type independently checked. |
| `C.G3Statement` (1153) | K:p0:g3 interface | PASS | Definitional equality to complete frozen type independently checked. |
| `C.fractD_eq_domainD` (1159) | p3:setting#k-bridge | PASS | Proved rfl domain bridge. |
| `C.totalH_eq_hbold` (1162) | p3:setting#k-bridge | PASS | Proved rfl Hamiltonian bridge. |
| `C.rhoIso` (1166) | p3:constants | PASS | Exact formula/carrier; fixed before f,epsilon,E,I0; estimates guarded by data. |
| `C.dB` (1169) | p3:constants | PASS | Exact formula/carrier; fixed before f,epsilon,E,I0; estimates guarded by data. |
| `C.eta1` (1172) | p3:constants | PASS | Exact formula/carrier; fixed before f,epsilon,E,I0; estimates guarded by data. |
| `C.sSet` (1174) | p3:constants | PASS | Exact formula/carrier; fixed before f,epsilon,E,I0; estimates guarded by data. |
| `C.mhConst` (1176) | p3:constants | PASS | Exact formula/carrier; fixed before f,epsilon,E,I0; estimates guarded by data. |
| `C.MgConst` (1178) | p3:constants | PASS | Exact formula/carrier; fixed before f,epsilon,E,I0; estimates guarded by data. |
| `C.ShConst` (1181) | p3:constants | PASS | Exact formula/carrier; fixed before f,epsilon,E,I0; estimates guarded by data. |
| `C.nuConst` (1184) | p3:constants | PASS | Exact formula/carrier; fixed before f,epsilon,E,I0; estimates guarded by data. |
| `C.sigmaOmegaConst` (1185) | p3:constants | PASS | Exact formula/carrier; fixed before f,epsilon,E,I0; estimates guarded by data. |
| `C.sigmaKConst` (1188) | p3:constants | PASS | Exact formula/carrier; fixed before f,epsilon,E,I0; estimates guarded by data. |
| `C.sigmaTConst` (1189) | p3:constants | PASS | Exact formula/carrier; fixed before f,epsilon,E,I0; estimates guarded by data. |
| `C.epsT` (1191) | p3:constants | PASS | Exact formula/carrier; fixed before f,epsilon,E,I0; estimates guarded by data. |
| `C.compact` (1197) | p3:compact | PASS | Positive distance, compact S, positive gradient and inverse extrema. |
| `C.perp` (1205) | p3:det-identity | PASS | Correct orientation (-g1,g0). |
| `C.det2` (1206) | p3:det-identity | PASS | Standard ordered two-dimensional determinant. |
| `C.aCoord` (1207) | p3:coordinates | PASS | Dot product divided by g dot g. |
| `C.bCoord` (1208) | p3:coordinates | PASS | Determinant divided by g dot g. |
| `C.slope` (1209) | p3:coordinates | PASS | Determinant divided by g dot w; used where denominator positive. |
| `C.hessR` (1211) | p3:det-identity | PASS | Real derivative of frozen frequencyMap in coordinate directions. |
| `C.chartDom` (1214) | p3:coordinates | PASS | Real action slice and positive longitudinal coordinate. |
| `C.chartM` (1217) | p3:coordinates | PASS | Actual gradient-direction slope. |
| `C.chartPhi` (1218) | p3:coordinates | PASS | Real h and actual direction coordinate. |
| `C.jac2` (1220) | p3:chart | PASS | Ordered row determinant of scalar component derivatives. |
| `C.det_identity` (1225) | p3:det-identity | PASS | Symmetry, negative bordered determinant identity and nonzero gradient. |
| `C.coordinates` (1233) | p3:coordinates | PASS | Generalized from closure Bprime to all real action slice. |
| `C.slope_ray` (1240) | p3:slope-ray | PASS | Positive multiples with coefficient equal to max-norm ratio. |
| `C.chart` (1247) | p3:chart | PASS | Correct signed Jacobian and local C1 inverse in arbitrary neighbourhood. |
| `C.IsPatch` (1256) | p3:patch | PASS | Specific chart inverse, P1–P3 and derivable B containment. |
| `C.IsPatch.toEnergyPatch` (1281) | Part 5 carrier adapter | PASS | Actual field-by-field construction; hides specific chart identity in target type. |
| `C.cover` (1291) | p3:cover | PASS | Finite centres and actual IsPatch witnesses before perturbations. |
| `C.IsRay` (1300) | p3:rays data | PASS | gamma>0, tau2, slope orientation and prescribed annulus. |
| `C.dio_open` (1306) | p3:dio-open | PASS | Exactly nonempty bounded open set; explicit frozen G3 premise. |
| `C.rays` (1310) | p3:rays | PASS | Arbitrary bounded interval via endpoints; correct frequency norm window. |
| `C.patch_rays` (1315) | p3:patch-rays | PASS | Both signs chosen from disjoint slope intervals. |
| `C.points` (1322) | p3:points | PASS | One-ray form plus BijOn; signs, distinctness and continuity follow from patch fields. |
| `C.hypothesis_d` (1339) | p3:hypothesis-d | PASS | Full five-bound block and derivatives of f at all shrunken-domain points. |
| `C.flatRemainder` (1358) | p3:torus | PASS | Action Hessian block, action-gradient bottom row and zero right column. |
| `C.torus` (1364) | p3:torus | PASS | Flat-frame properties, exact error/torsion, inverse threshold and energy estimate. |
| `C.apply` (1394) | p3:apply, apply#constants | FAIL | Local application passes; missing full gate property at selected constants, F1. |
| `C.uniform` (1417) | p3:uniform | PASS | Finite upper/lower bound existence; handles empty finite family too. |
| `C.ToriSide` (1423) | p3:T1–T7 component predicate | PASS | Valid local output package; its existential ray alone does not retain fixed family, F2. |
| `C.tori` (1438) | p3:tori | FAIL | Weaker than actual-chart/fixed-ray contract, F2. |
| `C.part3_tori_of` (1452) | Part 5 conditional interface | PASS | Proved projection, exact consumer type; does not repair F2. |
| Anonymous check (1471) | frozen assembly/premise | PASS | Exact frozen provider type with explicit constants. |
| Anonymous check (1477) | frozen assembly/premise | PASS | IG1Statement inhabited by actual anchor. |
| Anonymous check (1478) | frozen assembly/premise | PASS | G3Statement inhabited by actual anchor. |
| Anonymous check (1480) | frozen assembly/premise | PASS | Explicit I-G1 theorem supplies complete premise. |
| `P.part3_tori` (1488) | Part 5 provider interface | PASS | Premises discharged by actual anchors; exact consumer type. |

## Corrected signatures for the FAIL rows

These are proposed design replacements, not implemented analytic proofs. They were independently elaborated in a temporary probe at default heartbeats. They live in `KAM.Iso.Charts`, with the same section variables `{B s₀ r₀ h B' η}` as the original and:

```lean
open KAM KAM.Torus KAM.Iso.Confinement
open KAM.Head (unperturbedTorus muParam Fconst Mconst actionHessian)
```

For F1, introduce the following *definition* of the frozen inner body, and replace `apply` by `apply_corrected` below (or use the original name when revising the draft). The graph constants node is its leading witness/body conjunction; the original local application is the final projection. `IG1Body` has no positivity fields of its own: those are the separate leading conjuncts, exactly as in the anchor.

```lean
def IG1Body (n : ℕ) (τ ρ ρinf M σK σB σT μ γbar σω ν : ℝ)
    (ωstar : Fin n → ℝ) (C₁ C₂ C₃ : ℝ) : Prop :=
  ∀ (D : Set ((Fin n → ℂ) × (Fin n → ℂ))) (H : (Fin n → ℂ) × (Fin n → ℂ) → ℂ)
        (K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)) (s γ e E₀ : ℝ),
        IsOpen D → (∀ z ∈ D, ∀ k : Fin n → ℤ, (z.1 + (fun i => (k i : ℂ)), z.2) ∈ D) →
        DifferentiableOn ℂ H D → (∀ z ∈ D, ∀ k : Fin n → ℤ, H (z.1 + (fun i => (k i : ℂ)), z.2) = H z) →
        (∀ θ I : Fin n → ℝ, ((fun i => (θ i : ℂ)), (fun i => (I i : ℂ))) ∈ D →
          (H ((fun i => (θ i : ℂ)), (fun i => (I i : ℂ)))).im = 0) →
        (∀ z ∈ D, ‖fderiv ℂ H z‖ ≤ M ∧ ‖hamiltonianVectorFieldℂ H z‖ ≤ M ∧
          ‖fderiv ℂ (hamiltonianVectorFieldℂ H) z‖ ≤ M ∧
          ‖iteratedFDeriv ℂ 2 (hamiltonianVectorFieldℂ H) z‖ ≤ M ∧ ‖iteratedFDeriv ℂ 2 H z‖ ≤ M) →
        DifferentiableOn ℂ K (complexStrip n ρ) → IsPrimaryOnStrip K ρ → IsRealOnReals K →
        (∀ θ ∈ complexStrip n ρ, Metric.ball (K θ) μ ⊆ D) →
        (∀ θ ∈ complexStrip n ρ, ‖fderiv ℂ K θ‖ ≤ σK - μ) →
        (∀ θ ∈ complexStrip n ρ, IsUnit (gramMatrix K θ).det ∧
          ∀ i, ∑ j, ‖(gramMatrix K θ)⁻¹ i j‖ ≤ σB - μ) →
        IsUnit (KAM.Iso.extendedTorsionAverage H K (s • ωstar)).det →
        (∀ i, ∑ j, ‖(KAM.Iso.extendedTorsionAverage H K (s • ωstar))⁻¹ i j‖ ≤ σT - μ) →
        1 < s → s < σω → ν ≤ (s - 1) * ‖ωstar‖ → ν ≤ (σω - s) * ‖ωstar‖ →
        0 < γ → γ ≤ γbar → IsDiophantine γ τ ωstar → 0 ≤ e →
        (∀ θ ∈ complexStrip n ρ, ‖invarianceError H K (s • ωstar) θ‖ ≤ e) →
        ‖KAM.Iso.energyAverage H K - (E₀ : ℂ)‖ ≤ e →
        C₁ * e / (γ ^ 4 * ρ ^ (4 * τ)) < 1 →
        ∃ (Kinf : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)) (sinf : ℝ),
          1 < sinf ∧ sinf < σω ∧ DifferentiableOn ℂ Kinf (complexStrip n ρinf) ∧
          IsPrimaryOnStrip Kinf ρinf ∧ IsRealOnReals Kinf ∧
          (∀ θ ∈ complexStrip n ρinf, invarianceError H Kinf (sinf • ωstar) θ = 0) ∧
          (∀ θ ∈ complexStrip n ρinf, H (Kinf θ) = (E₀ : ℂ)) ∧
          (∀ θ ∈ complexStrip n ρinf, Metric.ball (Kinf θ) (μ / 2) ⊆ D) ∧
          (∀ θ ∈ complexStrip n ρinf, ‖fderiv ℂ Kinf θ‖ ≤ σK - μ / 2) ∧
          (∀ θ ∈ complexStrip n ρinf, ‖Kinf θ - K θ‖ ≤ C₂ * e / (γ ^ 2 * ρ ^ (2 * τ))) ∧
          ‖sinf • ωstar - s • ωstar‖ ≤ C₃ * e / (γ ^ 2 * ρ ^ (2 * τ))

theorem apply_corrected (hd : HeadData B s₀ r₀ h B' η) (hne : B'.Nonempty) (hG1 : IG1Statement)
    {δE δm ρc : ℝ} {c : Fin 2 → ℝ} {W : Set (Fin 2 → ℝ)} {Ψ : ℝ × ℝ → Fin 2 → ℝ}
    (hp : IsPatch h B r₀ B' (eta1 η B B') c W Ψ δE δm ρc) {γ m : ℝ} {ωs : Fin 2 → ℝ}
    (hray : IsRay h B B' c γ ωs m) (hm : |m| < δm) :
    ∃ C₁ C₂ C₃ : ℝ, 0 < C₁ ∧ 0 < C₂ ∧ 0 < C₃ ∧
      IG1Body 2 2 (rhoIso s₀) (rhoInf s₀) (KAM.Head.Mconst s₀ r₀ B h)
        (sigmaKConst s₀ r₀) (sigmaKConst s₀ r₀) (sigmaTConst h B B' s₀ r₀)
        (KAM.Head.muParam s₀ r₀) γ (sigmaOmegaConst h B B') (nuConst h B B')
        ωs C₁ C₂ C₃ ∧
      ∀ (f : (Fin 2 → ℂ) × (Fin 2 → ℂ) → ℂ) (ε : ℝ), PerturbData B s₀ r₀ f ε → ε ≤ 1 →
        ε ≤ epsT h B B' s₀ r₀ → ε < γ ^ 4 * rhoIso s₀ ^ 8 / (C₁ * Fconst 2 s₀ r₀ 1) →
        ∀ E : ℝ, |E - realPart h c| ≤ δE →
        ∃ (Kinf : (Fin 2 → ℂ) → (Fin 2 → ℂ) × (Fin 2 → ℂ)) (sinf : ℝ),
          1 < sinf ∧ sinf < sigmaOmegaConst h B B' ∧
          DifferentiableOn ℂ Kinf (complexStrip 2 (rhoInf s₀)) ∧
          IsPrimaryOnStrip Kinf (rhoInf s₀) ∧ IsRealOnReals Kinf ∧
          (∀ θ ∈ complexStrip 2 (rhoInf s₀), invarianceError (totalH h f) Kinf (sinf • ωs) θ = 0) ∧
          (∀ θ ∈ complexStrip 2 (rhoInf s₀), totalH h f (Kinf θ) = (E : ℂ)) ∧
          (∀ θ ∈ complexStrip 2 (rhoInf s₀),
            Metric.ball (Kinf θ) (muParam s₀ r₀ / 2) ⊆ fractD B s₀ r₀ ∧
            ‖fderiv ℂ Kinf θ‖ ≤ sigmaKConst s₀ r₀ - muParam s₀ r₀ / 2 ∧
            ‖Kinf θ - unperturbedTorus (Ψ (E, m)) θ‖ ≤
              C₂ * (Fconst 2 s₀ r₀ 1 * ε) / (γ ^ 2 * rhoIso s₀ ^ 4)) ∧
          ‖sinf • ωs - (‖frequencyMap h (Ψ (E, m))‖ / ‖ωs‖) • ωs‖ ≤
            C₃ * (Fconst 2 s₀ r₀ 1 * ε) / (γ ^ 2 * rhoIso s₀ ^ 4) := sorry
```

For F2, replace `tori` by this strengthening. It keeps all original outputs and also retains actual direction charts and fixed ray choices outside `f, ε, I₀, E`. The declared functions only need their properties on `patches`, so their total values elsewhere are unused. Each `IsRay` also records the normalized frequency annulus and the Diophantine constant. At the selected patch the two output frequencies use exactly these fixed rays.

```lean
theorem tori_corrected (hd : HeadData B s₀ r₀ h B' η) (hne : B'.Nonempty) (hG1 : IG1Statement)
    (hG3 : G3Statement) :
    ∃ (patches : Set (EnergyPatch (realPart h) B (eta1 η B B'))) (γp γm : EnergyPatch (realPart h) B (eta1 η B B') → ℝ)
      (ωsp ωsm : EnergyPatch (realPart h) B (eta1 η B B') → Fin 2 → ℝ) (ε₁ C_K : ℝ),
      ChartCover B s₀ r₀ h B' η (eta1 η B B') (Fconst 2 s₀ r₀ 1) patches ∧
      (∀ p ∈ patches, p.c ∈ closure B' ∧ p.W ⊆ chartDom h B r₀ p.c ∧
        p.m = chartM h p.c ∧
        IsRay h B B' p.c (γp p) (ωsp p) p.mPlus ∧
        IsRay h B B' p.c (γm p) (ωsm p) p.mMinus) ∧
      0 < ε₁ ∧ ε₁ ≤ 1 ∧ 0 < C_K ∧
      ∀ (f : (Fin 2 → ℂ) × (Fin 2 → ℂ) → ℂ) (ε : ℝ), PerturbData B s₀ r₀ f ε → ε < ε₁ →
        ∀ I₀ ∈ closure B', ∀ E : ℝ, |E - realPart h I₀| ≤ ε →
          ∃ p ∈ patches, ‖I₀ - p.c‖ < p.ρc ∧ |p.m I₀| < p.δm / 4 ∧
            ∃ (Kp Km : (Fin 2 → ℂ) → (Fin 2 → ℂ) × (Fin 2 → ℂ)) (Ip Im ωp ωm : Fin 2 → ℝ),
              (∃ sp sm : ℝ, 1 < sp ∧ sp < sigmaOmegaConst h B B' ∧
                1 < sm ∧ sm < sigmaOmegaConst h B B' ∧
                ωp = sp • ωsp p ∧ ωm = sm • ωsm p) ∧
              ToriSide B s₀ r₀ h B' η (eta1 η B B') f ε C_K E I₀ p.Ψ p.mPlus Kp Ip ωp ∧
              ToriSide B s₀ r₀ h B' η (eta1 η B B') f ε C_K E I₀ p.Ψ p.mMinus Km Im ωm := sorry
```

The replacement does not add source assumptions. All added outputs are available from `cover`, `patch_rays`, and the I-G1 application before constructing the weaker Part 5 output. From `p.m = chartM h p.c`, the EnergyPatch inverse equations and its signed slope fields give the blueprint T7 ordering; `p.ball_subset` gives the selected I₀'s chart membership. Distinct base points follow because their slope values lie in disjoint intervals. The actual ray equalities put the fixed Diophantine data at the intended quantifier position. Existing `part3_tori_of` must skip these extra conjuncts; its public type and the provider interface stay the same.

## Verification and axiom receipts

Executed with one Lean process at a time, `LEAN_NUM_THREADS=1`, `nice -n 5`, and no heartbeat, synthesis or recursion override:

1. Main-checkout probe `.lake/abi-scratch/I123Audit1.lean`: original draft plus the two `rfl` premise-type equalities and five axiom queries. Command: `LEAN_NUM_THREADS=1 nice -n 5 lake env lean .lake/abi-scratch/I123Audit1.lean` (stdout/stderr captured in `/tmp/i123-audit1-lean.log`). **Exit 0; 45 warnings, all “declaration uses sorry”; zero errors.** The draft's exact provider check, anchor premise checks, alternate discharge and Part 5 projection all elaborate.
2. Worktree `scripts/lint_sources.sh` (log `/tmp/i123-audit1-lint.log`): **exit 0**. Exact output:

   ```text
   check_lean_modules: PASS (262 Lean files, 0 comparator configurations)
   FROZEN-ANCHOR GUARD OK
   ```

   This run does not print an ABI-hash check; no separate ABI-verification success is claimed.
3. Main checkout `LEAN_NUM_THREADS=1 nice -n 5 lake build KAM.Apost.G1` (log `/tmp/i123-audit1-build.log`): **exit 0**. Output: `Build completed successfully (3196 jobs).` This was one targeted incremental build of the reused import closure, not a root rebuild or a claim to have built the proposed I modules.
4. `.lake/abi-scratch/I123AuditCorrections.lean`: comment/blank-line-reduced draft plus the two proposed replacement signatures and `IG1Body`. **1237 lines; exit 0; 47 sorry warnings; zero errors** after adding the same `open KAM.Head (...)` used in the original Charts section. The initial correction-only scratch attempt lacked that open and failed on unqualified Head names; the corrected final run passes. This checks the proposed types, not proofs of their added outputs.
5. Mechanical checks: 50 theorems, 45 sorry bodies, 79 defs/abbrevs, 15 structures, 4 anonymous examples; all 148 signatures inventoried. Appendix A contains the unchanged draft text. All 13 reused Part 5 declarations match individually. Frozen Iso files agree byte for byte with main.

Axiom output from the independent original-draft probe:

```text
'KAM.Iso.Apost.g1_explicit' depends on axioms: [propext, sorryAx, Classical.choice, Quot.sound]
'KAM.Iso.Charts.part3_tori_of' depends on axioms: [propext, sorryAx, Classical.choice, Quot.sound]
'KAM.Provider.Iso.part3_tori' depends on axioms: [propext, sorryAx, Classical.choice, Quot.sound]
'KAM.Iso.isoenergetic_kam' depends on axioms: [propext, sorryAx, Classical.choice, Quot.sound]
'KAM.volume_not_diophantine_le' depends on axioms: [propext, Classical.choice, Quot.sound]
```

No clean-axiom claim is made for I-G1, Part 3, or confinement. The two probes were deleted after checking. No module authored by this audit requires a build; the targeted K build verifies the environment against which the signatures were tested.

## Errata, deviations and closeout

No new suspected defect in a pinned external source was discovered; the external PDFs were not re-audited. The design's B1–B9 are acknowledged qualifications, not silently repaired blueprint text. In particular B1 quotes “no Diophantine property of ω̄ is used here” while the named source lemma carries a Diophantine standing; `extended_regular` supplies the required any-frequency statement. B2's “ω ∈ ℝⁿ (any)” is read together with the standing hypothesis. B3's “only τ ≥ 0 is used” does not describe the landed K Standing API; N1 records the deliberate specialization. B8's complex action component needs the explicit real-slice witness, as the design does. The existing `e := F₁ ε` constant-scope inconsistency remains a source qualification. No frozen-statement change is requested.

The design departures D1–D19 were checked against consumers. Finite-index carriers, explicit definitions, separate energy lemma, real scalar update, existential finite majorants and provider-level premise discharge are acceptable. F1 and F2 are the remaining losses beyond those justified representations. The proposed additions are corrections for review only; no such change was applied to the source or design.

Closeout: the requested report is complete; every signature is classified, both findings survived the refutation pass, and proposed types elaborate. The full-design fidelity gate remains **FAIL pending F1/F2**. Exact I-G1 assembly and the rule 6 premise gate **PASS**. Analytic proof completion, production module integration, the stated size estimates, and future sealing remain outside this design receipt.
