# Independent audit of I3-5

**Verdict: PASS WITH NOTES for the I3-5 package.** No material mathematical, statement-fidelity, premise-policy, or kernel defect found. The conditional Part 3 results are proved; this is not a seal receipt for I-G1 or I-HEAD.

Audited 2026-10-28 in `/root/code/KAM-inp-i35`, HEAD `bc3f9e993523dbe0f346099538a523f9f4a0e449`. Read AGENTS.md, PLAN.md, DECISIONS.md, the package audit brief, handoff, Part 3 blueprint, track-I statement, design v2 including sections 7/10 and Appendix A, both design audits, actual frozen I-G1/I-HEAD/G3 statements, their relevant definitions, and the Part 5 interface. Only this report is a repository deliverable. Scratch probes and logs were confined to this worktree's `.lake/abi-scratch/` and removed after recording results.

## Scope and anchor verdicts

The requested `git diff inp...HEAD` has five added files (1,545 lines): Apply (237), Points (124), Rays (190), Tori (386), Torus (608), all under `KAM/Iso/Charts/`. I reviewed all five, with detailed focus on Apply/Tori. The sampled `inp` tip was `dd01255d2c72f469a01a875aebaa31cb6dd21b29`.

Git warns `inp...HEAD: multiple merge bases, using a7aaf87c2d46c28c60a878e383b511c807c3b936`; the other merge base is `69bb8bd9a5c926bd20cdd69fe925be91631d6413`. These are the actual semantics of the requested comparison, not a silently substituted base. The handoff's `inp-i34...HEAD` also includes Chart and unrelated inherited changes; it does not isolate just Apply/Tori at the present refs. The audit therefore uses the user-requested comparison and explicitly includes the three prerequisite modules.

| Anchor / interface | Verdict | Scope |
|---|---|---|
| I-G1, `KAM.Iso.isoenergetic_kam` | PASS WITH NOTES | Its complete type is the definitionally identical upstream premise; I3-5 proves its application, not the gate itself. No new provider export or seal body exists in this diff. |
| I-HEAD, `KAM.Iso.all_time_confinement` | PASS WITH NOTES | `part3_tori_of` supplies the unchanged Part 5 ChartCover/ToriExistence interface under the two allowed source premises. This package does not prove global confinement. |
| G3, `KAM.volume_not_diophantine_le` | PASS | Used only through its exact type `G3Statement`; no theorem/provider import in production. |

Frozen-provider type equality and a fresh frozen seal-body probe are **not applicable as new exports**: this package contains no provider and changes no frozen body. Instead I independently checked both frozen-premise definitional equalities and elaborated the exact provider-level `part3_tori` wrapper from the design. That wrapper is a type/integration check only, since its I-G1 anchor remains sorry-backed in this snapshot. All 59 audited production theorems themselves have clean axiom receipts.

## Refutation of the audit-focus risks

**F1 remains closed.** Apply.lean:191–235 states the v2 `apply` verbatim, including positivity and the whole `IG1Body` at the SAME existential `C₁,C₂,C₃`. The gate is instantiated once, at lines 222–229, before introducing `f, ε, E` (line 231). Both the local threshold and output estimates use those witnesses. The whole conditional body still ranges over arbitrary D,H,K,s,γ,e,E₀, not just flat tori. No extra premise is added to the source-node theorem.

**Every IG1Body hypothesis is discharged.** Apply.lean:136–177 derives the data from `hypothesis_d`, `torus`, compact bounds and arithmetic, then applies the upstream body. Its 25 implication arguments are:

| Arguments | Actual justification |
|---|---|
| 1–6: open D, integer translations, H holomorphic, H periodic, H real, five derivative/vector-field bounds | `hypothesis_d hd hf hε1`, including the independent D²H bound; no Kolmogorov Hessian assumption. |
| 7–9: K holomorphic, primary, real | Global affine flat torus and existing unperturbed-torus identities. |
| 10: μ-ball in D | `torus` ball inclusion on `rhoIso`; genuine domain margin. |
| 11–12: DK bound; Gram determinant and inverse row sums | Flat DK has norm 1, Gram = 1; `sigmaKConst = 1 + μ`; explicit `rowSum_one_inv`. |
| 13–14: bordered average invertibility and inverse row sums | `torus` at I ∈ sSet and ε ≤ epsT; operator bound converted by `norm_le_iff_forall_rowSum`; `sigmaTConst - μ = 2 ShConst`. |
| 15–18: 1 < s < σω and both endpoint margins | 2 < s < 4 Mg/mh, σω = 4 Mg/mh + 2, ν = mh/4, and the ray's lower norm bound; both inequalities proved locally. |
| 19–22: γ positive, γ ≤ γbar, Diophantine ω*, e nonnegative | IsRay data, γbar = γ, e = F₁ ε, PerturbData.nonneg and F₁ ≥ 1. |
| 23–25: error ≤ e, energy-average error ≤ e, strict smallness | Flat invariance error X_f on the containing strip; h(I)=E proved in ℂ using realness; energy error ≤ ε ≤ F₁ε; positive-denominator arithmetic from the stated threshold. |

`apply_local` is a distinctly named conditional helper. Its `hbody` is exactly the upstream gate body, not an assumed Part 3 application. `apply` produces that body via `IG1Statement` and calls the helper. The real-power rewrites ρ^(2·2)=ρ⁴ and ρ^(4·2)=ρ⁸ preserve the estimates, including ε=0.

**F2 remains closed.** Tori.lean:269–291 retains centre membership, chart-domain inclusion, `p.m = chartM h p.c`, and both designated rays outside ALL f/ε/I₀/E quantifiers. The output frequencies are explicitly positive multiples of those very outer ray witnesses. The old slope-coordinate negation/swap counterexample is excluded by the chart identity. EnergyPatch inverse identities, signed slope windows and ToriSide.base give T7 in the actual gradient-direction chart, not an arbitrary scalar chart.

`exists_ray_consts` makes the two ray choices and the per-sign gate-constant choices before the perturbation. `tori` takes one uniform majorant/minorant across Bool × P; it proves the energy-window bound, ε ≤ 1, ε ≤ epsT, strict gate thresholds and C_K ε < η₁/2 before applying either local result. `du_dv_bound` derives T4 from Cauchy on the pair K−K⁰ and bounded coordinate projections: exactly 4A/ρ on the half strip. The real-action membership proof uses an actual real witness from IsRealOnReals and the isometry of toC, not a complex point miscast as real.

**Part 5 is unchanged.** Tori.lean:376–384 projects the proved ToriSide results to TorusOutput, retaining each base identity. A fresh copy of the design's exact `part3_tori` declaration elaborates with body `KAM.Iso.Charts.part3_tori_of hd hne @KAM.Iso.isoenergetic_kam @KAM.volume_not_diophantine_le`. No provider/frozen theorem enters the production import closure: a recursive traversal visited 104 KAM modules and found zero forbidden import edges.

## Declaration inventory

All names below are in `KAM.Iso.Charts` unless explicitly qualified. Each row is a separate public declaration; the prerequisite declarations are included because they occur in the requested diff. PASS means the statement and proof satisfy their assigned source/design role, not that an upstream premise has been proved here.

| Node / role | Lean declaration (file:line) | Verdict | Reason |
|---|---|---|---|
| apply/error | `ApplyAux.one_le_Fconst` (Apply:45) | PASS | F₁ ≥ 1 from δ* ≤ 1/4 and positivity. |
| apply/width | `ApplyAux.rhoIso_pos` (Apply:53) | PASS | Positive input strip. |
| apply/width | `ApplyAux.rhoInf_pos` (Apply:59) | PASS | Positive output strip. |
| apply/width | `ApplyAux.rhoInf_lt_rhoIso` (Apply:65) | PASS | Strict nested strips. |
| apply/error | `ApplyAux.strip_rhoIso_subset` (Apply:71) | PASS | Restriction into flat-torus error strip. |
| apply/Gram | `ApplyAux.rowSum_one_inv` (Apply:79) | PASS | Exact inverse row sums of identity. |
| apply/powers | `ApplyAux.rpow_two_two` (Apply:83) | PASS | Exact real-power to fourth-power identity. |
| apply/powers | `ApplyAux.rpow_four_two` (Apply:87) | PASS | Exact real-power to eighth-power identity. |
| apply/ray | `ApplyAux.one_lt_sigmaOmega` (Apply:91) | PASS | Positive compact frequency lower bound. |
| apply/steps ap-d through ap-conclusion | `apply_local` (Apply:106) | PASS | All 25 upstream hypotheses discharged as itemized above. |
| bpI:p3:apply and apply#constants | `apply` (Apply:191) | PASS | Exact v2 statement, including retained full gate body. |
| bpI:p3:uniform | `uniform` (Tori:45) | PASS | Exact v2 existence form; arbitrary finite family, including empty. hCK unused is harmless. |
| application output definition | `ApplyOut` (Tori:71) | PASS | Literal conjunction of the local O1–O6 output. |
| local application definition | `ApplyLocal` (Tori:89) | PASS | Literal universal local application at fixed patch/ray/constants. |
| apply/output packaging | `applyLocal_exists` (Tori:101) | PASS | Projects apply to the definitionally identical local predicate. |
| real carrier | `norm_toC` (Tori:112) | PASS | Max-norm isometry of the real inclusion. |
| stepI:p3:tori-close | `du_dv_bound` (Tori:120) | PASS | Cauchy for K−K⁰, then contractive projections. |
| real carrier | `toC_sub` (Tori:158) | PASS | Coordinatewise additive identity. |
| stepI:p3:tori-base/close/position | `toriSide_of_applyOut` (Tori:163) | PASS | Constructs every ToriSide field; action witness is genuinely real. |
| tori/uniform choices | `exists_ray_consts` (Tori:233) | PASS | Finite indexed source-result choices before f, ε, E. |
| bpI:p3:tori | `tori` (Tori:269) | PASS | Exact v2 F2 statement; T1–T7 encoded in proved structures. |
| Part 3 → Part 5 | `part3_tori_of` (Tori:376) | PASS | Exact v2 generic interface and explicit projection. |
| bpI:p3:points | `bijOn_energySegment` (Points:37) | PASS | Patch inverse identity gives injectivity; rectangle inclusion gives surjectivity. |
| bpI:p3:points | `points` (Points:60) | PASS | Same inverse-chart point, energy/slope/ray/position and energy-segment bijection. |
| bpI:p3:dio-open | `dio_open` (Rays:42) | PASS | Only exact G3 premise; max C 0 handles possibly negative source C. |
| rays/sector | `aCoord_slope_dir` (Rays:81) | PASS | Direct two-coordinate computation with guarded denominators. |
| rays/sector | `isOpen_sector` (Rays:100) | PASS | Slope denominator nonzero on positive longitudinal coordinate. |
| rays/nonzero | `frequencyMap_ne_zero_of_mem_closure` (Rays:125) | PASS | Bordered nondegeneracy on the actual real domain. |
| bpI:p3:rays | `rays` (Rays:130) | PASS | Open bounded sector with explicit nonempty witness, then G3. |
| bpI:p3:patch-rays | `patch_rays` (Rays:179) | PASS | Two correct signed open slope intervals. |
| bpI:p3:hypothesis-d | `hypothesis_d` (Torus:48) | PASS | Source premises only; all five H bounds plus perturbation bounds. |
| torus/support | `TorusAux.toC_mem_half` (Torus:109) | PASS | Real action in the half-radius neighborhood. |
| torus/support | `TorusAux.unperturbed_mem` (Torus:115) | PASS | Product-domain membership. |
| torus/support | `TorusAux.real_mem` (Torus:119) | PASS | Real flat torus lies in the derivative domain. |
| torus/support | `TorusAux.differentiableOn_totalH` (Torus:123) | PASS | Holomorphic sum on the shrunken product. |
| torus/support | `TorusAux.differentiableAt_h` (Torus:130) | PASS | Open-neighborhood derivative, not a fallback fderiv. |
| torus/support | `TorusAux.differentiableAt_f` (Torus:135) | PASS | Open-neighborhood derivative of f. |
| torus/support | `TorusAux.fderiv_totalH` (Torus:142) | PASS | Genuine sum and projection chain rule. |
| torus/support | `TorusAux.actionHessian_totalH` (Torus:153) | PASS | Derivative identity on an open neighborhood. |
| torus/support | `TorusAux.torsion_flat` (Torus:187) | PASS | Constant normal frame gives the actual action Hessian. |
| torus/support | `TorusAux.energyRow_flat` (Torus:205) | PASS | Actual DH(K)N; keeps the perturbation derivative. |
| torus/support | `TorusAux.freq_facts` (Torus:217) | PASS | Real/complex gradient and Hessian bridge with holomorphy. |
| torus/support | `TorusAux.invarianceError_flat` (Torus:228) | PASS | Actual error equals X_f, with frozen sign convention. |
| torus/support | `TorusAux.borderedHessian_map` (Torus:243) | PASS | Exact real-to-complex matrix entries. |
| torus/support | `TorusAux.extendedTorsion_flat` (Torus:262) | PASS | Full frozen border equals B_h + R, not a replaced last row. |
| torus/support | `TorusAux.Fconst_nonneg` (Torus:285) | PASS | Nonnegative Cauchy constants. |
| torus/support | `TorusAux.Fconst_one_le_two` (Torus:291) | PASS | Correct monotonicity at δ* ≤ 1. |
| torus/support | `TorusAux.differentiableAt_fderiv_f` (Torus:300) | PASS | Holomorphy supplies the genuine second derivative. |
| torus/support | `TorusAux.norm_actionHessian_f_le` (Torus:309) | PASS | Action Hessian norm controlled by D²f. |
| torus/support | `TorusAux.norm_row_f_le` (Torus:317) | PASS | Derivative evaluated at unit action directions. |
| torus/support | `TorusAux.norm_flatRemainder_le` (Torus:331) | PASS | Row-sum bound 2F₂ε for all border blocks. |
| torus/support | `TorusAux.norm_map_ofReal` (Torus:367) | PASS | Exact row-sum norm under real inclusion. |
| torus/support | `TorusAux.det_map_ofReal'` (Torus:371) | PASS | Determinant commutes with the real inclusion. |
| torus/support | `TorusAux.inv_map_ofReal` (Torus:377) | PASS | Adjugate formula; exact even for singular total inverses. |
| torus/support | `TorusAux.norm_entrywiseAverage_le` (Torus:392) | PASS | Continuous matrix average; actual integrability on unit cube. |
| torus/support | `TorusAux.integral_const_add` (Torus:418) | PASS | Integrability proved, unit-cube volume exactly one. |
| torus/support | `TorusAux.continuous_flatRemainder` (Torus:429) | PASS | Holomorphy gives continuity of all derivative entries. |
| torus/support | `TorusAux.norm_extendedAverage_sub_le` (Torus:460) | PASS | Actual integral of perturbation, bounded by 2F₂ε. |
| torus/support | `TorusAux.extendedAverage_inv` (Torus:494) | PASS | Determinant guarded; Neumann smallness at ε ≤ epsT. |
| torus/support | `TorusAux.norm_energyAverage_sub_le` (Torus:538) | PASS | Continuous integrable f on the unit cube; norm ≤ ε. |
| bpI:p3:torus | `torus` (Torus:561) | PASS | Flat-torus identities, full extended border, Neumann estimate, energy average. |

## Definition classification and remaining qualifications

The only new definitions in the five-file diff are `ApplyOut` (Tori.lean:71) and `ApplyLocal` (Tori.lean:89). Both are Prop-valued logical packaging on their whole displayed carriers, with no choice, fallback, junk values or alternative Hamiltonians. The latter expands to universal application data at the specified I=Ψ(E,m) and s=‖∇h(I)‖/‖ω*‖. They are used within their defining module; exported Part 5 conclusions require no cross-module unfolding of these unexposed helper bodies. No new abbrev or structure is introduced.

Preexisting IsPatch, IsRay, ToriSide, HeadData and PerturbData were checked at the consumer boundary. Inputs are source/standing data, typing data, or the two explicitly authorized upstream theorems. IsPatch packages chart data whose existence is proved by cover. ApplyOut and ToriSide are outputs proved by this package, never substituted as root assumptions. Choice functions off the selected finite centres/patches are unconstrained, but every use is guarded by membership. Compact positivity is established before division or inverse estimates. The prerequisite Torus module proves continuity/integrability for every integral used, and guards matrix inverse estimates by determinant invertibility.

The design expressly approves existential finite majorants/minorants instead of literal max/min formulas (D16 and section 7); uniform implements this approved interface. It may pick C_K ≥ 1 and ε₁ smaller than the blueprint's displayed minimum. This changes no permitted dependence or downstream bound. Its unused hCK premise is disclosed in the handoff and is not a mathematical gap; the proof actually works with weaker assumptions on CK0.

No new suspected pinned-paper defect was found or claimed. This audit verifies the blueprint/design implementation, not an independent rereading of HL19. Existing blueprint qualifications remain:

- `blueprint-I/parts/p3-iso-local-charts.tex:76–78` defines “e:=F₁ ε” and then says “All of these depend only on (B,s₀,r₀,h,B′,η) … and not on f, ε or any point.” Taken literally for e this is false: e depends on ε. This is the already noted constant-scope wording issue in design audit 1; the Lean proof correctly keeps F₁ fixed and substitutes e=F₁ε after ε is quantified. It does not use the false independence assertion.
- Part 3 T6 at blueprint line 382 writes the complex action component as an element of the real set S. The design records B8/D19; the Lean output correctly gives a real J∈S with action=toC J. This explicit real-slice representation preserves the intended statement.

No frozen change, additional owner ruling, source repair, or new mathematical deviation is requested. The prose statement's old Phase-0 status is historical documentation; actual frozen types and current owner decisions governed this audit.

## Independent checks

All Lean/Lake invocations started by this audit were sequential and inherited `LEAN_NUM_THREADS=1`; no heartbeat, recursion-depth, synthesis-budget override, clean, cache download, or package mutation was used.

1. Targeted gated build:

```sh
LEAN_NUM_THREADS=1 /mnt/HC_Volume_106379410/orchestrator-tools/inp_lake_build.sh /root/code/KAM-inp-i35 KAM.Iso.Charts.Tori
```

Exit **0**. Gate output `[inp-gate] slot 1 acquired 02:56:50 for KAM.Iso.Charts.Tori`; the script runs `nice -n 5 lake build`. Final output `Build completed successfully (3262 jobs).` Only diagnostic was a replayed preexisting unused-section-variable warning for `KAM.ODE.gen_exit` at KAM/ODE/Exit.lean:36.

2. Fresh probe (now deleted):

```sh
LEAN_NUM_THREADS=1 nice -n 5 lake env lean .lake/abi-scratch/I35Audit.lean
```

Exit **0**, no errors or warnings. Contents: import the proved Tori module and the two anchors only in scratch; `example : IG1Statement = (type_of% @KAM.Iso.isoenergetic_kam) := rfl`; analogous G3 equality; fresh names for the design-v2 signatures of apply/uniform/tori/part3_tori_of proved by their actual exports; fresh provider-level part3_tori with the exact original signature and anchor-discharge body; `#print axioms` for every one of the 59 new public theorems. An independent whitespace-normalized comparison also returned True for all four design signatures against production.

Exact axiom output:

```text
'KAM.Iso.Charts.ApplyAux.one_le_Fconst' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.ApplyAux.rhoIso_pos' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.ApplyAux.rhoInf_pos' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.ApplyAux.rhoInf_lt_rhoIso' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.ApplyAux.strip_rhoIso_subset' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.ApplyAux.rowSum_one_inv' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.ApplyAux.rpow_two_two' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.ApplyAux.rpow_four_two' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.ApplyAux.one_lt_sigmaOmega' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.apply_local' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.apply' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.uniform' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.applyLocal_exists' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.norm_toC' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.du_dv_bound' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.toC_sub' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.toriSide_of_applyOut' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.exists_ray_consts' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.tori' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.part3_tori_of' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.bijOn_energySegment' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.points' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.dio_open' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.aCoord_slope_dir' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.isOpen_sector' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.frequencyMap_ne_zero_of_mem_closure' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.rays' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.patch_rays' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.hypothesis_d' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.TorusAux.toC_mem_half' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.TorusAux.unperturbed_mem' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.TorusAux.real_mem' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.TorusAux.differentiableOn_totalH' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.TorusAux.differentiableAt_h' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.TorusAux.differentiableAt_f' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.TorusAux.fderiv_totalH' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.TorusAux.actionHessian_totalH' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.TorusAux.torsion_flat' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.TorusAux.energyRow_flat' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.TorusAux.freq_facts' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.TorusAux.invarianceError_flat' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.TorusAux.borderedHessian_map' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.TorusAux.extendedTorsion_flat' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.TorusAux.Fconst_nonneg' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.TorusAux.Fconst_one_le_two' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.TorusAux.differentiableAt_fderiv_f' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.TorusAux.norm_actionHessian_f_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.TorusAux.norm_row_f_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.TorusAux.norm_flatRemainder_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.TorusAux.norm_map_ofReal' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.TorusAux.det_map_ofReal'' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.TorusAux.inv_map_ofReal' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.TorusAux.norm_entrywiseAverage_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.TorusAux.integral_const_add' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.TorusAux.continuous_flatRemainder' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.TorusAux.norm_extendedAverage_sub_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.TorusAux.extendedAverage_inv' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.TorusAux.norm_energyAverage_sub_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.torus' depends on axioms: [propext, Classical.choice, Quot.sound]
```

3. One kernel replay invocation covering all five changed modules:

```sh
LEAN_NUM_THREADS=1 nice -n 5 lake env leanchecker --verbose KAM.Iso.Charts.Tori KAM.Iso.Charts.Apply KAM.Iso.Charts.Points KAM.Iso.Charts.Rays KAM.Iso.Charts.Torus
```

Exit **0**. Exact output:

```text
replaying KAM.Iso.Charts.Torus
replaying KAM.Iso.Charts.Rays
replaying KAM.Iso.Charts.Points
replaying KAM.Iso.Charts.Apply
replaying KAM.Iso.Charts.Tori
```

4. Source lint:

```sh
LEAN_NUM_THREADS=1 nice -n 5 sh scripts/lint_sources.sh
```

Exit **1**, solely for the explicitly permitted stale generated root. All other checks pass. Exact output:

```text
KAM.lean is out of date; run scripts/gen_root_imports.py
check_lean_modules: PASS (363 Lean files, 0 comparator configurations)
FROZEN-ANCHOR GUARD OK
ABI HASHES OK (144 frozen declarations)
```

The generated root was deliberately left unchanged, as required. This is acceptance under the brief's stated lint exception, not a claim that the literal lint command returned zero.

5. `git diff --check inp...HEAD`: exit **0**, no whitespace errors (only the multiple-merge-base warning described above). `git diff inp...HEAD -- KAM/Frozen manifest KAM.lean README.md`: exit **0**, empty stdout. Recursive production-import inspection: 104 KAM modules, zero frozen-theorem/provider edges. All five added files satisfy the module wrappers and 1,500-line cap. No forbidden proof escape or resource override occurs in them.

Only `/root/code/KAM-inp-i35/docs/tracks/I/audits/I3-5-audit-1.md` was written outside audit scratch. No state-changing git operation was performed. No production source was changed. Package acceptance is conditional on the explicitly named upstream statements, with no claim that either frozen I-G1 or I-HEAD has been sealed by this package.
