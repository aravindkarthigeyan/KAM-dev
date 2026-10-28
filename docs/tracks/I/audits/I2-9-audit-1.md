# I2-9 independent audit 1

**Verdict: PASS WITH NOTES for I2-9 (`bpI:p2:limit`, `bpI:p2:energy-limit`).** No material implementation or statement-fidelity defect found. The two selectors are co-landed with proved convergence and uniqueness characterizations, closing the I-D0 F1 admission obligation for this package. The note is scope: this is infrastructure, not an I-G1 provider or seal. **I-G1 remains FROZEN_UNPROVED and is not seal-ready from this package.**

## Snapshot and scope

Audited in `/root/code/KAM-inp-i29`, 2026-10-28. HEAD `06c860279ce9914f699090b1152b3b6303cb091c`; current `inp` `8cdeed8eb5146d6966577facd7b55a7af8564aa6`; `inp-i28` `19f29789e37753dd3dcda18cc6fde9683dbf9f7a`. The user-specified report path overrides the generic brief's main-worktree destination.

Read AGENTS.md, PLAN, DECISIONS, the audit brief, handoff, track-I statement, Part-2 blueprint, design §7/B9, both I-D0 audits, frozen I-G1 and its energy/extended-torsion/invariance definitions. Applied lean-statement-audit to semantic admission; no repository source was edited. Temporary probes were confined to `.lake/abi-scratch/` and removed.

`git diff inp...HEAD` reports multiple merge bases and selects `dd01255d2c72f469a01a875aebaa31cb6dd21b29`. Its complete code delta is Step (103 lines), Iteration (554), Limit (514): 1,171 additions. Reviewed all three, with the requested semantic focus on Limit. `git diff inp-i28...HEAD -- KAM/Iso/Apost/Step.lean KAM/Iso/Apost/Iteration.lean` is empty: those two files are inherited. The full `inp-i28...HEAD` also includes unrelated integration/documentation changes, so it is not a cleaner global baseline than the user-mandated `inp...HEAD`.

Frozen identity: manifest `iso.isoenergetic_kam.v1`, `KAM/Frozen/Iso/Theorems/IsoenergeticKam.lean`, export `KAM.Iso.isoenergetic_kam`, D20 approval; source HL19 arXiv:1711.05515v1 Theorem 3.6 / Remark 3.7 pp.18–19. ABI `165645ea4aeb3d278f29d2336981a4bc924803cea8eaee49efbfca9874203b16`. Registered provider `KAM.Provider.Iso.IsoenergeticKam` / `KAM.Provider.Iso.isoenergetic_kam`; state `DRAFT_SORRY`. Frozen guard and all 144 ABI checks pass. Its manifest-allowed draft body is still `by sorry`. No provider is added here, so provider=frozen-type and proposed-seal probes are **N/A for I2-9**, not passing seal evidence. The infrastructure limits themselves are not manifest anchors.

## Declaration inventory

Names below are in `KAM.Iso.Apost`. PASS for helpers means faithful to their named proof step, with any conditional helper distinguished from the completed source node.

| Node / step | Declaration | Verdict | Reason |
|---|---|---|---|
| `p2:step` | `step` | PASS | All (a)–(e), including moving-frequency error and energy error; input admissibility is source data. |
| `iteration` | `isoSeq_zero` | PASS | Literal recurrence base. |
| `iteration` | `isoSeq_succ_fst` | PASS | Literal recurrence torus update. |
| `iteration` | `isoSeq_succ_snd` | PASS | Literal recurrence scalar update. |
| `it-sums` | `isoSumD` | PASS | Literal finite sum of d_i. |
| `it-sums` | `isoSumDK` | PASS | Literal finite sum n d_i/δ_i. |
| `it-sums` | `isoSumB` | PASS | Literal finite sum C_B d_i/δ_i. |
| `it-sums` | `isoSumT` | PASS | Literal finite sum 2m² C_ΔT d_i/δ_i². |
| `it-sums` | `isoSumD_zero` | PASS | Finite-sum zero/successor identity, no logical premises. |
| `it-sums` | `isoSumDK_zero` | PASS | Finite-sum zero/successor identity, no logical premises. |
| `it-sums` | `isoSumB_zero` | PASS | Finite-sum zero/successor identity, no logical premises. |
| `it-sums` | `isoSumT_zero` | PASS | Finite-sum zero/successor identity, no logical premises. |
| `it-sums` | `isoSumD_succ` | PASS | Finite-sum zero/successor identity, no logical premises. |
| `it-sums` | `isoSumDK_succ` | PASS | Finite-sum zero/successor identity, no logical premises. |
| `it-sums` | `isoSumB_succ` | PASS | Finite-sum zero/successor identity, no logical premises. |
| `it-sums` | `isoSumT_succ` | PASS | Finite-sum zero/successor identity, no logical premises. |
| `it-sums` | `isoDK_term_eq` | PASS | Exact weighted-term factorization. |
| `it-sums` | `isoB_term_eq` | PASS | Exact weighted-term factorization. |
| `it-sums` | `isoT_term_eq` | PASS | Exact weighted-term factorization. |
| `it-sums` | `iso_sums_le` | PASS | All five partial-sum bounds; frequency bound is explicit arithmetic input, supplied in iteration. |
| `it-stepsmall` | `iso_stepsmall_seq` | PASS | Stage smallness from initial smallness. |
| `ray` | `iso_ray_step` | PASS | Endpoint margin and open-ray membership. |
| `it-step` | `IsoStage` | PASS | Induction predicate; six fields are proved at zero and successor, not assumed by iteration/limit. |
| `it-step` | `iso_stage_zero` | PASS | Base certificate from IterHyp. |
| `it-step` | `iso_stage_succ` | PASS | Conditional induction step; proved schedules supplied by iteration. |
| `p2:iteration` | `iteration` | PASS | All (i)–(vi) for the explicitly defined isoSeq; no iteration result assumed. |
| `limit` | `isoLimit` | PASS | Exact signature selector on the strip; prescribed K off strip. |
| `limit` | `isoSLimit` | PASS | Exact signature selector of real scalar sequence. |
| `limit` | `isoLimit_eq` | PASS | Defining equation on strip. |
| `limit` | `isoLimit_of_not_mem` | PASS | Prescribed off-strip value. |
| `lim-conv` | `isoLimit_eq_of_tendsto` | PASS | Hausdorff uniqueness from any supplied convergence; no IterHyp needed. |
| `lim-conv` | `isoSLimit_eq_of_tendsto` | PASS | Hausdorff uniqueness from any supplied convergence; no IterHyp needed. |
| `error-decay` | `isoDSeq_nonneg` | PASS | Nonnegative d_j from explicit formula. |
| `lim-conv` | `isoDSeq_summable_tsum_le` | PASS | Summability and exact 2 Ĉ_Δ e/(γ² δ₀^a) bound. |
| `lim-conv` | `isoDSeq_div_summable` | PASS | Summability of n d_j/δ_j, with decay exponent a+1. |
| `lim-inv` | `isoEpsSeq_tendsto_zero` | PASS | Errors tend to zero from summability with exponent 0. |
| `lim-conv` | `exists_tendsto_of_dist_ray` | PASS | Real scalar Cauchy convergence using nonzero ω*. |
| `lim-inv` | `lim_invariance_moving` | PASS | Continuity of evaluation at both convergent derivatives and frequencies. |
| `el-unif / el-int` | `tendsto_energyAverage_of_uniform` | PASS | Convex-ball derivative bound plus actual compact-cube integrability. |
| `lim-conv` | `tendsto_isoSLimit` | PASS | Constructs convergence from summable ray increments; no convergence assumed. |
| `p2:limit` | `limit` | PASS | Exact design signature, all blueprint (a)–(e). |
| `lim-conv` | `isoLimit_tendsto` | PASS | Pointwise corollary of proved uniform convergence. |
| `lim-conv` | `isoSLimit_tendsto` | PASS | Actual convergence of s_j to exported selector. |
| `lim-conv` | `isoLimit_eq_iff` | PASS | Complete on-strip limit characterization under iteration data. |
| `lim-conv` | `isoSLimit_eq_iff` | PASS | Complete real limit characterization under iteration data. |
| `p2:energy-limit` | `energy_limit` | PASS | Exact design signature: average equality and convergence to that average. |

## Binder audit

For `limit` and `energy_limit`, the complete signatures were extracted independently from design B9 (`PART123-LEAN-DESIGN.md:1650–1683`) into fresh scratch declarations; their bodies apply the actual exports with `hS hρinf hρ hμ hK he1 hsmall`. Both elaborate. The blueprint's iteration setting is at `p2-iso-iteration.tex:267–285`, limit at 295–313, energy-limit at 316–324. No binder order, dependence, normalization, norm, domain, coefficient, or conclusion was changed.

The following shared table applies to **each** main theorem and to the four convergence/characterization corollaries. Each expanded hypothesis has its own row; notation `bounds.*` splits conjunctions, not just the outer field. There are no instance binders.

| Expanded binder / field | Bin | Source |
|---|---|---|
| `n` (implicit data) | TYPING | Part-2 standing data / iteration setting; design B9. |
| `τ` (implicit data) | TYPING | Part-2 standing data / iteration setting; design B9. |
| `M` (implicit data) | TYPING | Part-2 standing data / iteration setting; design B9. |
| `σK` (implicit data) | TYPING | Part-2 standing data / iteration setting; design B9. |
| `σB` (implicit data) | TYPING | Part-2 standing data / iteration setting; design B9. |
| `σT` (implicit data) | TYPING | Part-2 standing data / iteration setting; design B9. |
| `σω` (implicit data) | TYPING | Part-2 standing data / iteration setting; design B9. |
| `ν` (implicit data) | TYPING | Part-2 standing data / iteration setting; design B9. |
| `γ` (implicit data) | TYPING | Part-2 standing data / iteration setting; design B9. |
| `ωstar` (implicit data) | TYPING | Part-2 standing data / iteration setting; design B9. |
| `D` (implicit data) | TYPING | Part-2 standing data / iteration setting; design B9. |
| `H` (implicit data) | TYPING | Part-2 standing data / iteration setting; design B9. |
| `E₀` (implicit data) | TYPING | Part-2 standing data / iteration setting; design B9. |
| `ρ` (implicit data) | TYPING | Part-2 standing data / iteration setting; design B9. |
| `ρinf` (implicit data) | TYPING | Part-2 standing data / iteration setting; design B9. |
| `μ` (implicit data) | TYPING | Part-2 standing data / iteration setting; design B9. |
| `e` (implicit data) | TYPING | Part-2 standing data / iteration setting; design B9. |
| `s₀` (implicit data) | TYPING | Part-2 standing data / iteration setting; design B9. |
| `K` (implicit data) | TYPING | Part-2 standing data / iteration setting; design B9. |
| `hS.two_le` | STANDING | `bpI:p2:standing`, lines 36–43; `IsoStanding`/`Params` literal fields. |
| `hS.tau_ge` | STANDING | `bpI:p2:standing`, lines 36–43; `IsoStanding`/`Params` literal fields. |
| `hS.M_pos` | STANDING | `bpI:p2:standing`, lines 36–43; `IsoStanding`/`Params` literal fields. |
| `hS.σK_pos` | STANDING | `bpI:p2:standing`, lines 36–43; `IsoStanding`/`Params` literal fields. |
| `hS.σB_pos` | STANDING | `bpI:p2:standing`, lines 36–43; `IsoStanding`/`Params` literal fields. |
| `hS.σT_pos` | STANDING | `bpI:p2:standing`, lines 36–43; `IsoStanding`/`Params` literal fields. |
| `hS.σω_gt` | STANDING | `bpI:p2:standing`, lines 36–43; `IsoStanding`/`Params` literal fields. |
| `hS.ν_pos` | STANDING | `bpI:p2:standing`, lines 36–43; `IsoStanding`/`Params` literal fields. |
| `hS.ωstar_ne` | STANDING | `bpI:p2:standing`, lines 36–43; `IsoStanding`/`Params` literal fields. |
| `hS.isOpen` | STANDING | `bpI:p2:standing`, lines 36–43; `IsoStanding`/`Params` literal fields. |
| `hS.transl_mem` | STANDING | `bpI:p2:standing`, lines 36–43; `IsoStanding`/`Params` literal fields. |
| `hS.holo` | STANDING | `bpI:p2:standing`, lines 36–43; `IsoStanding`/`Params` literal fields. |
| `hS.periodic` | STANDING | `bpI:p2:standing`, lines 36–43; `IsoStanding`/`Params` literal fields. |
| `hS.real` | STANDING | `bpI:p2:standing`, lines 36–43; `IsoStanding`/`Params` literal fields. |
| `hS.bounds.DH` | STANDING | `bpI:p2:standing`, lines 36–43; `IsoStanding`/`Params` literal fields. |
| `hS.bounds.XH` | STANDING | `bpI:p2:standing`, lines 36–43; `IsoStanding`/`Params` literal fields. |
| `hS.bounds.DXH` | STANDING | `bpI:p2:standing`, lines 36–43; `IsoStanding`/`Params` literal fields. |
| `hS.bounds.D2XH` | STANDING | `bpI:p2:standing`, lines 36–43; `IsoStanding`/`Params` literal fields. |
| `hS.bounds.D2H` | STANDING | `bpI:p2:standing`, lines 36–43; `IsoStanding`/`Params` literal fields. |
| `hS.gamma_pos` | STANDING | `bpI:p2:standing`, lines 36–43; `IsoStanding`/`Params` literal fields. |
| `hS.dio` | STANDING | `bpI:p2:standing`, lines 36–43; `IsoStanding`/`Params` literal fields. |
| `hρinf` | SOURCE | Positive widths/margin of iteration; schedule, lines 255–257. |
| `hρ` | SOURCE | Positive widths/margin of iteration; schedule, lines 255–257. |
| `hμ` | SOURCE | Positive widths/margin of iteration; schedule, lines 255–257. |
| `hK.holo` | SOURCE | Iteration premise, lines 267–271; `IterHyp` at Defs:186–200. |
| `hK.primary` | SOURCE | Iteration premise, lines 267–271; `IterHyp` at Defs:186–200. |
| `hK.real` | SOURCE | Iteration premise, lines 267–271; `IterHyp` at Defs:186–200. |
| `hK.ball_sub` | SOURCE | Iteration premise, lines 267–271; `IterHyp` at Defs:186–200. |
| `hK.deriv_le` | SOURCE | Iteration premise, lines 267–271; `IterHyp` at Defs:186–200. |
| `hK.gram.det` | SOURCE | Iteration premise, lines 267–271; `IterHyp` at Defs:186–200. |
| `hK.gram.bound` | SOURCE | Iteration premise, lines 267–271; `IterHyp` at Defs:186–200. |
| `hK.twist.det` | SOURCE | Iteration premise, lines 267–271; `IterHyp` at Defs:186–200. |
| `hK.twist.bound` | SOURCE | Iteration premise, lines 267–271; `IterHyp` at Defs:186–200. |
| `hK.s_gt` | SOURCE | Iteration premise, lines 267–271; `IterHyp` at Defs:186–200. |
| `hK.margin` | SOURCE | Iteration premise, lines 267–271; `IterHyp` at Defs:186–200. |
| `hK.error_le` | SOURCE | Iteration premise, lines 267–271; `IterHyp` at Defs:186–200. |
| `hK.energy_le` | SOURCE | Iteration premise, lines 267–271; `IterHyp` at Defs:186–200. |
| `he1` | SOURCE | e ≤ 1, line 269. |
| `hsmall` | SOURCE | ĉ_* e/(γ⁴ δ₀^(2a)) ≤ 1, line 269. |

Per main theorem: **TYPING 19; STANDING 21; SOURCE 18; RULED 0; EXCESS 0** (counts split conjunctions in Gram/twist and bounds). `isoLimit_tendsto` adds θ:TYPING and hθ:SOURCE; `isoLimit_eq_iff` adds θ,z:TYPING and hθ:SOURCE; `isoSLimit_tendsto` adds none; `isoSLimit_eq_iff` adds l:TYPING. Source hθ is exactly evaluation on the specified open strip. No convergence, limiting holomorphy, invariance, energy identity, or admissibility of the limit is assumed.

Remaining I2-9 helper logical binders are audited individually below. All function/vector/scalar/index binders are TYPING; there are no hidden project assumption bundles beyond the expanded Params. SOURCE here names hypotheses of the explicitly conditional proof-step lemma, not new premises for the source proposition. Each such lemma is consumed inside `limit` or `energy_limit` with its hypotheses actually produced.

| Declaration | Logical binder | Bin | Source / use |
|---|---|---|---|
| `isoLimit_eq` | `hθ` | SOURCE | On-strip defining formula. |
| `isoLimit_of_not_mem` | `hθ` | SOURCE | Off-strip defining formula. |
| `isoLimit_eq_of_tendsto` | `hθ` | SOURCE | Strip convention. |
| `isoLimit_eq_of_tendsto` | `h` | SOURCE | Explicit conditional uniqueness lemma; not the convergence result. |
| `isoSLimit_eq_of_tendsto` | `h` | SOURCE | Explicit conditional uniqueness lemma. |
| `isoDSeq_nonneg` | `hP` | STANDING | Six Params fields expanded above. |
| `isoDSeq_nonneg` | `hρ` | SOURCE | Schedule domain. |
| `isoDSeq_nonneg` | `he` | SOURCE | Decay nonnegativity. |
| `isoDSeq_summable_tsum_le` | `hP` | STANDING | Six Params fields. |
| `isoDSeq_summable_tsum_le` | `hρ` | SOURCE | Schedule domain. |
| `isoDSeq_summable_tsum_le` | `hγ` | SOURCE | Decay domain. |
| `isoDSeq_summable_tsum_le` | `he` | SOURCE | Decay domain. |
| `isoDSeq_summable_tsum_le` | `hq` | SOURCE | Exact error-decay smallness q≤1. |
| `isoDSeq_div_summable` | `hP` | STANDING | Six Params fields. |
| `isoDSeq_div_summable` | `hρ` | SOURCE | Schedule domain. |
| `isoDSeq_div_summable` | `hγ` | SOURCE | Decay domain. |
| `isoDSeq_div_summable` | `he` | SOURCE | Decay domain. |
| `isoDSeq_div_summable` | `hq` | SOURCE | Exact error-decay smallness q≤1. |
| `isoEpsSeq_tendsto_zero` | `hP` | STANDING | Six Params fields. |
| `isoEpsSeq_tendsto_zero` | `hρ` | SOURCE | Schedule domain. |
| `isoEpsSeq_tendsto_zero` | `hγ` | SOURCE | Decay domain. |
| `isoEpsSeq_tendsto_zero` | `he` | SOURCE | Decay domain. |
| `isoEpsSeq_tendsto_zero` | `hq` | SOURCE | Exact error-decay smallness q≤1. |
| `exists_tendsto_of_dist_ray` | `hω` | SOURCE | lim-conv: ω*≠0. |
| `exists_tendsto_of_dist_ray` | `hd` | SOURCE | lim-conv: summable increments, proved before use. |
| `exists_tendsto_of_dist_ray` | `hss` | SOURCE | lim-conv: ray-step estimate from iteration (vi). |
| `lim_invariance_moving` | `hX` | SOURCE | lim-inv: continuity at limiting torus, from holo/domain margin. |
| `lim_invariance_moving` | `hKs` | SOURCE | lim-inv: proved pointwise convergence. |
| `lim_invariance_moving` | `hDKs` | SOURCE | lim-inv: proved derivative convergence. |
| `lim_invariance_moving` | `hss` | SOURCE | lim-inv: proved scalar convergence. |
| `lim_invariance_moving` | `hE` | SOURCE | lim-inv: iteration residual bound. |
| `lim_invariance_moving` | `hε` | SOURCE | lim-inv: proved decay. |
| `tendsto_energyAverage_of_uniform` | `hρinf` | SOURCE | Real cube is in strip. |
| `tendsto_energyAverage_of_uniform` | `hM0` | SOURCE | Derivative-bound sign; standing M>0 supplies it. |
| `tendsto_energyAverage_of_uniform` | `hD` | SOURCE | el-unif: open D. |
| `tendsto_energyAverage_of_uniform` | `hH` | SOURCE | el-unif: H holomorphic. |
| `tendsto_energyAverage_of_uniform` | `hM` | SOURCE | el-unif: DH bound. |
| `tendsto_energyAverage_of_uniform` | `hμ` | SOURCE | el-unif: positive ball. |
| `tendsto_energyAverage_of_uniform` | `hball` | SOURCE | el-unif: initial ball in D. |
| `tendsto_energyAverage_of_uniform` | `hKs` | SOURCE | el-unif: iterate closeness. |
| `tendsto_energyAverage_of_uniform` | `hL` | SOURCE | el-unif: limit closeness. |
| `tendsto_energyAverage_of_uniform` | `hKsd` | SOURCE | el-int: iterate holomorphy supplies continuity/integrability. |
| `tendsto_energyAverage_of_uniform` | `hLd` | SOURCE | el-int: limit holomorphy supplies continuity/integrability. |
| `tendsto_energyAverage_of_uniform` | `hconv` | SOURCE | el-unif: uniform convergence, proved by limit. |
| `tendsto_isoSLimit` | `hω` | SOURCE | lim-conv: nonzero ray direction. |
| `tendsto_isoSLimit` | `hd` | SOURCE | lim-conv: proved summability. |
| `tendsto_isoSLimit` | `hsd` | SOURCE | lim-conv: iteration (vi). |

Across this helper table: the four hP occurrences each expand into six STANDING inputs; all remaining logical inputs are SOURCE, RULED=0, EXCESS=0. Conditional convergence inputs are never substituted for the source result: `limit` first proves summability and uniform limits, then supplies them. The inherited `IsoStage` similarly bundles induction conclusions only for the separately named conditional induction step; `iteration` constructs its base and inducts, and does not assume a stage certificate. This avoids conclusion-shaped premises on the source nodes.

## Semantic admission and proof review

**Definition classification:** two new definitions in I2-9, four literal sum definitions and one induction structure inherited in the required comparison.

- `isoLimit`, Limit:58–62: characterization-defined on the source strip, with the blueprint-prescribed K branch elsewhere. Its complete body matches the design signature after whitespace removal. The off-strip branch is explicitly in blueprint line 296, not invented to mask nonconvergence. Positive ρinf puts all real angles in the characterized region, and openness makes all derivatives used by the theorem local to it.
- `isoSLimit`, Limit:65–68: characterization-defined real limit; complete body matches the signature. Its sequence is the actual recursively defined `isoSeq`, not a selected family of tori.
- `isoSumD`, `isoSumDK`, `isoSumB`, `isoSumT`: literal finite sums on all inputs; no choice/fallback or well-definedness obligation beyond the formula.
- `IsoStage`: literal induction predicate, six explicit fields (admissibility, torus and ray displacement, derivative, Gram inverse, extended-torsion inverse). Its existence is proved by induction, not built into a standing assumption.

For each selector: **BODY_MATCH OK; PUBLIC_CARRIER OK under the explicit total-definition/source-domain convention of design §2 and I-D0 deferral ruling; WELL_DEFINEDNESS OK; CHARACTERIZATION OK; CHOICE_INDEPENDENCE OK; DEFINITION_VERDICT PASS.** No convergence is claimed for arbitrary invalid iteration parameters. Both source-limit existence and uniqueness are proved for exactly the blueprint's iteration setting, and the off-strip value is prescribed there. This is the explicit source convention, not a waiver for an arbitrary fallback.

`isoLimit_eq_of_tendsto` and `isoSLimit_eq_of_tendsto` establish independence of any convergent witness even without IterHyp. `limit` constructs actual convergence from the original hypotheses, while the `*_eq_iff` theorems identify the exported definitions precisely. A second scratch probe assembles `∃! z, K_j θ → z` and `∃! l, s_j → l` from those exports under the original hypotheses. It passes; uniqueness has not been deferred to future work. The semantic unit is present in the same new module; no frozen selector/characterization anchors are claimed.

The moving-frequency step at Limit:189–220 is essential and correct: ss_j converges in ℝ; its complexified scaled vector converges by continuity; continuous bilinear evaluation takes `(DK_j, ss_j ω*)` to `DK∞(s∞ ω*)`. Subtracting from continuous X_H(K_j) gives the actual limiting invariance error, which is zero by the vanishing error bound. The proof does not freeze the initial frequency. At :408–428 ray displacement gives both strict endpoint inequalities and at least ν/2 margin, while the limiting derivative and ball estimates give (d). No invertibility of ordinary torsion is used.

Energy at :239–284 uses genuine differentiability on open D and the convex ball around each initial K(θ), so the local DH bound gives a Lipschitz estimate even if D itself is nonconvex. Holomorphy proves continuity on real angles and actual integrability on the compact unit cube, before `integral_sub`; no default integral value is used. Uniform convergence yields convergence of averages. At :502–508 iteration's energy residual ≤ ε_j→0 gives convergence to E₀; uniqueness of the complex limit proves average equality. Pointwise H(K∞)=E₀ is deliberately a later energy-conservation assembly, as the blueprint requires.

No new constants widen dependence. The two main exports preserve γ⁴δ₀^(2a) smallness, γ²δ₀^a closeness, factor 2, open-strip carrier, period-one unit-volume normalization, real s∞ and E₀, max norms, and the extended bordered torsion in IterHyp. Added standalone helpers generalize proof steps to arbitrary sequences/functions; that strength introduces no extra premise on `limit` or `energy_limit`.

## Independent validation receipts

All Lean processes were sequential, `LEAN_NUM_THREADS=1`, `nice -n 5`; builds used the mandated compile gate. No clean/update/cache fetch or budget override was used.

```sh
LEAN_NUM_THREADS=1 /mnt/HC_Volume_106379410/orchestrator-tools/inp_lake_build.sh /root/code/KAM-inp-i29 KAM.Iso.Apost.Limit
```

Exit 0, exact output:

```text
[inp-gate] slot 1 acquired 03:11:59 for KAM.Iso.Apost.Limit
Build completed successfully (3222 jobs).
```

```sh
LEAN_NUM_THREADS=1 nice -n 5 lake env lean .lake/abi-scratch/I29Probe.lean
```

Exit 0. The two fresh exact-design-signature applications pass, with no warnings/errors. The following is the complete `#print axioms` output for every public theorem in all three changed files:

```text
'KAM.Iso.Apost.step' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.isoSeq_zero' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.isoSeq_succ_fst' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.isoSeq_succ_snd' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.isoSumD_zero' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.isoSumDK_zero' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.isoSumB_zero' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.isoSumT_zero' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.isoSumD_succ' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.isoSumDK_succ' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.isoSumB_succ' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.isoSumT_succ' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.isoDK_term_eq' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.isoB_term_eq' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.isoT_term_eq' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.iso_sums_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.iso_stepsmall_seq' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.iso_ray_step' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.iso_stage_zero' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.iso_stage_succ' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.iteration' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.isoLimit_eq' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.isoLimit_of_not_mem' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.isoLimit_eq_of_tendsto' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.isoSLimit_eq_of_tendsto' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.isoDSeq_nonneg' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.isoDSeq_summable_tsum_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.isoDSeq_div_summable' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.isoEpsSeq_tendsto_zero' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.exists_tendsto_of_dist_ray' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.lim_invariance_moving' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.tendsto_energyAverage_of_uniform' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.tendsto_isoSLimit' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.limit' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.isoLimit_tendsto' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.isoSLimit_tendsto' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.isoLimit_eq_iff' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.isoSLimit_eq_iff' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.energy_limit' depends on axioms: [propext, Classical.choice, Quot.sound]
```

```sh
LEAN_NUM_THREADS=1 nice -n 5 lake env lean .lake/abi-scratch/I29Unique.lean
```

Exit 0, no output: both ∃! characterizations elaborate from the actual exports.

```sh
LEAN_NUM_THREADS=1 nice -n 5 lake env leanchecker --verbose KAM.Iso.Apost.Limit KAM.Iso.Apost.Iteration KAM.Iso.Apost.Step
```

Exit 0, exact output:

```text
replaying KAM.Iso.Apost.Step
replaying KAM.Iso.Apost.Iteration
replaying KAM.Iso.Apost.Limit
```

```sh
sh scripts/lint_sources.sh
```

Exit 1 **solely for the expressly permitted stale generated-root exception**, exact output:

```text
KAM.lean is out of date; run scripts/gen_root_imports.py
check_lean_modules: PASS (368 Lean files, 0 comparator configurations)
FROZEN-ANCHOR GUARD OK
ABI HASHES OK (144 frozen declarations)
```

`git diff inp...HEAD -- KAM/Frozen manifest KAM.lean README.md`: exit 0, empty diff, with only the multiple-merge-base warning recorded above. `git diff --check inp...HEAD`: exit 0, no whitespace findings, same merge-base warning. No generated/frozen file was repaired.

Source import traversal from Limit visits 93 project modules and finds zero provider or frozen-theorem imports. All three changed files have copyright, module command, public imports, module documentation and exposed public section; sizes 103, 554, 514 are below 1500. Masked executable scans find no sorry/admit/axiom/unsafe/opaque or heartbeat/recursion/synthesis override. Axiom receipts and kernel replay independently confirm clean proof closure for the infrastructure exports.

Audited source SHA-256:

| File | SHA-256 |
|---|---|
| Step.lean | `52b3617d75a4345afcb46753c0de38e7847c4a6c917acf6ba54fbded38579615` |
| Iteration.lean | `1b674ead5c235396719fa7c4a8b8dbc7dcf009274482189edcdecb882962134c` |
| Limit.lean | `5b9061326b7d4992609371241d6fccbb4b3d612c6cd171ccbceb8b653a13df3b` |

## Defects, uncertainty and closeout

No new suspected pinned-source erratum, blueprint contradiction, or implementation deviation found. This is an audit of implementation against the pinned repository blueprint/design and frozen statement, not a fresh audit of every HL19 proof line. Existing source-typo discussions at the end of Part 2 are unchanged and are not independently promoted by this report.

The multiple merge bases and inherited I2-8 files are provenance notes, not material mathematical failures. The only lint exception is the allowed generated root. Provider type/seal checks remain outside this package because no provider exists in its delta; claiming I-G1 seal readiness from this PASS would be incorrect.

Only this report was added by the auditor; pre-existing untracked handoff was left intact. Scratch probes/logs were removed and the report passed the whitespace check. All 46 declarations in the required diff are inventoried, all 39 public theorem axiom closures were checked, the three modules were replayed in one kernel invocation, and the two source-node types and limit characterizations were independently elaborated. I2-9 is accepted; I-G1 remains unsealed.
