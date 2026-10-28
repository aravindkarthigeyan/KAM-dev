# C5-8 independent package audit 1

**Verdict: PASS WITH NOTES for `bpN:p5:composition` and `bpN:p5:composition-integral`.** The six C5-8 modules implement the approved signatures without additional mathematical premises. The notes concern inherited branch changes, dependency landing order and the expected generated-root lint exception. This is approval of these infrastructure nodes, not a seal or proof of a frozen track I/N/P headline.

Audit date: 2026-10-28. Auditor marker: `maud-c58-1`. Focused tier-2, refute-first audit; source fidelity, proof inspection and independent verification, followed by a separate adversarial pass over potential defects. No source repairs, commits, subagents or network access. User authorization permits this report and temporary probes only; the user's explicit worktree output path overrides the generic brief's main-worktree output instruction.

## Frozen audit inputs and scope

`HEAD = bcc9dca772eb9d3fb6b39ca75d2a67025d4484cb`; observed `inp = d9921a75b2e196520afda935beee22c004461382`; `inp-c57 = 31a70a22c6e7669df7ee6e0e3123d4898da34a02`.

Read AGENTS.md, docs/PLAN.md, docs/DECISIONS.md, `/root/code/KAM-inp/.drafts/briefs/inp-audit-package.md`, corrected C5-8 handoff, Track N statement conventions, the Part-145 design and both design audits, the five signatures, and blueprint-N Part 5 composition and integral statements/proofs. Reviewed the meanings of the shared field, domains, class, Fourier bound, bracket, gauge and flow interfaces used here. C5-8 proves no frozen anchor and introduces no provider: provider/frozen-type and seal-body probes are **N/A**, replaced here by fresh-name elaborations of the exact five approved signature types.

The orchestrator explicitly restricted C5-8 to the following six files. FlowInverse, Symplectic, SymplecticForm and VectorField are inherited dependencies audited separately. Their implementation is not re-audited here. `composition_real` requires C5-5's `flow_e`; land C5-5 before or with C5-8.

Snapshot `frozen-v1` (SHA-256; all line locators below refer to this snapshot):

| File | Lines | SHA-256 |
|---|---:|---|
| `KAM/Canonical/Composition.lean` | 173 | `a42393f998a828123e67c8c1e0f308a9a4e99920af36ef278cc742472b2a7d2c` |
| `KAM/Canonical/CompositionCoeff.lean` | 148 | `198050092a6f90a6fb63d257b0ccd200c67278ab2662af8c0cf5717132df6f53` |
| `KAM/Canonical/CompositionDomain.lean` | 157 | `03e694ae99e8587746e96bea31142dfc41adfb1421d6e2b09d0183c5205a3999` |
| `KAM/Canonical/CompositionIntegral.lean` | 176 | `60097254cd1bf3edad6e2a7bfaf813a18cf8b97b1b360236c2163ef102d07aa0` |
| `KAM/Canonical/CompositionIntegralClass.lean` | 183 | `922d77b53c081bccdf49f5c8b968d002dbf6ba101041803a878c1f69fb502f5e` |
| `KAM/Canonical/CompositionSeries.lean` | 236 | `7fc5b44c7681eb56ce6b8f6ab704c7ee0d365b7cffaa77893c8e35609a7b1f49` |

Total: 1073 physical lines, maximum 236; the handoff's older 1067-line total is not the current count.

Additional authorities:

| Input | SHA-256 |
|---|---|
| `/root/code/KAM-inp/.drafts/design/NPart145Signatures.lean` | `1db3ad2b05ea000a814403bb7c3f60a8aa300db91e612d94184ef3245991ee53` |
| `docs/tracks/N/design/PART145-LEAN-DESIGN.md` | `635508031d6e95d9a5b3cf2fb19be41bfd2fd75cab9e5e8354c1513e738fd87e` |
| `blueprint-N/parts/p5-canonical-maps.tex` | `40560931653c109631d9edbebe453856a49dbb925002536cefc423aa15e01db0` |
| `docs/tracks/N/design/PART145-design-audit-1.md` | `7492d710f4ad5a7f7ae27975a20f4a2a8cba73bfd9bbd71d76a2646e772404a4` |
| `docs/tracks/N/design/PART145-design-audit-2.md` | `0ec8c1c2e58ba65217743cf3c491346b0042203449c7698ed2a899e86012c2df` |

## Findings and refutation decisions

No material C5-8 mathematical or statement defect survived refutation.

1. **Inherited protected-file differences (scope note).** `git diff inp...HEAD` warns “multiple merge bases” and chooses `d64ad0e54666c7c553ca3759ec3a7e85760767ec`. Its protected-path diff is **not empty**: generated KAM.lean imports, the pre-existing AllTimeConfinement seal, and its manifest state change occur in the branch history. Thus the generic whole-branch no-protected-diff check cannot be reported as passing literally. Refutation of attribution to C5-8: `git log inp-c57..HEAD` shows the intervening dependency merges, and `git diff 541c97e..HEAD -- KAM/Frozen manifest KAM.lean README.md` is empty. The user/orchestrator explicitly excludes these inherited packages. No C5-8 edit to a frozen declaration or manifest was found.
2. **Time-t conclusion coverage (accepted interface note).** Blueprint p5 L163 says “The same holds for X^t”. `composition_t` exports the class and coarse `(1-|t|η)⁻¹ U` bound, not a separate time-t series theorem. This is the exact approved signature, explicitly acknowledged by design-audit-1 L406. Refutation of a missing proof ingredient: `ComposeData.smul` and `flow_smul` are proved, and applying `composition_series` to `tφ` supplies the series statements. No new premise or signature weakening was introduced.
3. **Empty domains, negative bounds, zero dimension (discharged).** ComposeData's `Φ_nonneg` is design B3/D5, not a hidden estimate. `wbound_of_neg` proves that a negative upper bound excludes every action in the smaller tube, so all uses are vacuous on genuinely empty domains. The argument does not infer a bound from Lean's default value of a nonsummable series. No n≥1 premise is added; unit-cube integration and finite Fourier sums also cover n=0.
4. **Total flow and clamped time (discharged).** The imported flow has an off-domain fallback, but C5-8 proves SmallField and gauge-interior membership before every substantive flow use; `flow_a` supplies an actual solution and uniqueness. New `clampT` is an everywhere-defined projection onto [0,1], with `clampT_of_mem` proving equality throughout the integration interval. Neither fallback nor clamping changes a source-facing value on the asserted domain.

No suspected new pinned-source erratum. Blueprint p5 L167 already records the source's unproved Lie-series identification; C5-8 supplies that step under the explicitly adopted η≤1/2 restriction. This audit checks that repair against the local blueprint; it does not independently re-audit the external Pos93 PDF or any frozen headline.

## Statement and binder fidelity

The five production theorem headers are whitespace-normalized identical to both local design Appendix A and `/root/code/KAM-inp/.drafts/design/NPart145Signatures.lean`. Fresh-name examples copied from Appendix A elaborate by exact application to all explicit hypotheses in source order:

| Node / part | Declaration | Verdict | Evidence |
|---|---|---|---|
| composition (i) | `composition_domain` | PASS | Field ≤η/2; SmallField proved; half-interior and full trajectory inclusion. |
| composition (ii) | `composition_series` | PASS | Weighted tail convergence, class, sharp geometric bound, pointwise identity, composed class and coarse bound. |
| composition (iii) | `composition_t` | PASS | Exact signature; all t∈[-1,1], ratio |t|η. See interface note above. |
| composition (iv) | `composition_real` | PASS | Both source real-slice premises; actual Hamiltonian reality and flow preservation. No bound or analyticity premise on u added. |
| composition-integral | `composition_integral` | PASS | Uniform slice bound, joint continuity of v and Dv, original integral, exact losses and `(1-η)⁻¹ V`. |

Expanded logical binders (each row is one field/hypothesis; SOURCE refers to blueprint p5 L157–166 or L203–204; RULED refers to design D5/B3). Ambient n,D, real radii/bounds, φ,u,v and t are TYPING data, not logical proof assumptions. No project class instance hides an estimate.

| Binder / expanded field | Bin | Authority / meaning |
|---|---|---|
| hd.hρ | SOURCE | 0<ρ |
| hd.hρr | SOURCE | ρ<r |
| hd.hr | SOURCE | r≤r′−ρ |
| hd.hσ | SOURCE | 0<σ |
| hd.hσs | SOURCE | σ<s |
| hd.hs | SOURCE | s≤s′−σ |
| hd.φ_class.differentiableOn | SOURCE | φ holomorphic on larger domain |
| hd.φ_class.periodic | SOURCE | φ periodic there |
| hd.Φ_nonneg | RULED | Nonnegative norm upper bound, B3/D5 |
| hd.φ_bound | SOURCE | For every action, weighted coefficient series summable with sum≤Φ |
| hd.eta_le | SOURCE | 2Φ/(ρσ)≤1/2 |
| hu.differentiableOn | SOURCE | u holomorphic |
| hu.periodic | SOURCE | u periodic |
| hb | SOURCE | Finite weighted coefficient sum≤U for every action |
| ht | SOURCE | −1≤t≤1 |
| hur | SOURCE | u real on real points of Dom(r,s) |
| hφr | SOURCE | φ real on real points of larger domain |
| hv: slice differentiableOn | SOURCE | Every v_t holomorphic, t∈[0,1] |
| hv: slice periodic | SOURCE | Every v_t periodic |
| hv: slice WBound | SOURCE | Summability and uniform upper bound V |
| hc | SOURCE | Joint continuity of v |
| hDc | SOURCE | Joint continuity of Dv |

Distinct logical field/hypothesis rows: SOURCE 21, RULED 1, STANDING 0, EXCESS 0. WBound expands literally to universally quantified action membership followed by Summable and tsum≤bound; these are exactly the finite-norm premises. RealOn expands to the source real-slice condition. TYPING data are the ambient coordinate sets/functions and real/natural parameters listed above; no numerical dimension restriction or additional typeclass hypothesis occurs.

For all remaining public helpers below, the hypotheses are explicit typing/local-domain conditions or intermediate series, continuity and bound assumptions used to prove the helper's own distinct assertion. In particular no helper is substituted for a source result with an unpaid conclusion-shaped input.

## Definitions

| Declaration | Classification | Verdict |
|---|---|---|
| `ComposeData` (CompositionDomain:43) | Literal source-premise record, expanded above; no assumed flow, convergence or final bound | PASS |
| `ComposeData.omega` (:57) | Literal Dom(r′−ρ,s′−σ), independent of proof witness | PASS |
| `ComposeData.gauge` (:61) | Literal scaleCLE ρ σ, with positivity witnesses | PASS |
| `clampT` (CompositionIntegralClass:37) | Literal max 0 (min τ 1); equals τ on [0,1] | PASS |
| `compCube` (CompositionIntegral:41) | Literal real unit cube, all dimensions | PASS |
| private `cube` (CompositionCoeff:45) | Same literal cube used in coefficient integration | PASS |

For these literal definitions: BODY_MATCH OK; PUBLIC_CARRIER OK; WELL_DEFINEDNESS and CHARACTERIZATION N/A_LITERAL; CHOICE_INDEPENDENCE N/A. No new arbitrary choice or junk-value definition.

## Proof inspection and public-declaration inventory

CompositionDomain:67–153 proves domain enlargement from scaled displacement using polydisc containment, derives the field bound from C5-4, and constructs SmallField. The displacement is ≤1/4, giving fixed hatted losses 3ρ/4,3σ/4. CompositionSeries:62–230 uses C5-7 adjoint bounds for each factorial-normalized term, proves holomorphy through uniform limits, proves norm/tail bounds through coefficient integration, and identifies the sum by C5-6 Taylor remainders. The hatted ratio is 16η/9≤8/9, so eη̂/4<1. Factorials cancel in the remainder estimate; the limit is compared to the actual trajectory value.

Composition:73–143 proves flow rescaling by ODE uniqueness, including negative time and t=0; it uses the true derivative scaling of the frozen Hamiltonian field. Composition:147–169 uses Hamiltonian reality plus C5-5 flow_e on the same two-block carrier. Round-2's triple-product reality warning is outside this carrier and remains a consumer obligation.

CompositionCoeff:85–144 proves coefficient/series interchange by dominated convergence on the finite-measure real cube. Weighted sums use finite Fourier subsets, absolute summability and domination before exchanging sums. CompositionIntegralClass:54–179 proves joint continuity and the chain-rule derivative of the clamped integrand, then holomorphy under the integral and periodicity by flow translation. CompositionIntegral:48–173 proves Fubini with integrability on the compact time×angle cube, then integrates finite coefficient sums. The `(1-tη)⁻¹` to `(1-η)⁻¹` comparison uses V≥0, handling negative V separately. No undocumented strip loss or dimension factor appears.

One row per public theorem (namespace prefix `KAM.Canonical.`; file names abbreviated). All rows passed statement/body inspection and the axiom check.

| Declaration | File:line | Node / role | Verdict |
|---|---|---|---|
| `composition_series` | Composition:40 | composition / source export | PASS |
| `ComposeData.smul` | Composition:73 | composition / supporting lemma | PASS |
| `ham_const_mul` | Composition:91 | composition / supporting lemma | PASS |
| `flow_smul` | Composition:98 | composition / supporting lemma | PASS |
| `composition_t` | Composition:129 | composition / source export | PASS |
| `composition_real` | Composition:147 | composition / source export | PASS |
| `coeff_congr` | CompositionCoeff:48 | composition / supporting lemma | PASS |
| `wbound_congr` | CompositionCoeff:56 | composition / supporting lemma | PASS |
| `inClass_congr` | CompositionCoeff:65 | composition / supporting lemma | PASS |
| `wbound_of_finset_le` | CompositionCoeff:76 | composition / supporting lemma | PASS |
| `hasSum_coeff` | CompositionCoeff:85 | composition / supporting lemma | PASS |
| `wbound_tsum` | CompositionCoeff:113 | composition / supporting lemma | PASS |
| `mem_Dom_of_scaledNorm_le` | CompositionDomain:67 | composition / supporting lemma | PASS |
| `ComposeData.scaledNorm_field_le` | CompositionDomain:83 | composition / supporting lemma | PASS |
| `ComposeData.phi_div_le` | CompositionDomain:88 | composition / supporting lemma | PASS |
| `ComposeData.phi_div_nonneg` | CompositionDomain:93 | composition / supporting lemma | PASS |
| `ComposeData.smallField` | CompositionDomain:96 | composition / supporting lemma | PASS |
| `ComposeData.flow_mem_hat` | CompositionDomain:109 | composition / supporting lemma | PASS |
| `ComposeData.gaugeInterior_half` | CompositionDomain:128 | composition / supporting lemma | PASS |
| `composition_domain` | CompositionDomain:140 | composition / source export | PASS |
| `coeff_integral` | CompositionIntegral:48 | composition-integral / supporting lemma | PASS |
| `continuousOn_integrand` | CompositionIntegral:88 | composition-integral / supporting lemma | PASS |
| `composition_integral` | CompositionIntegral:113 | composition-integral / source export | PASS |
| `continuous_clampT` | CompositionIntegralClass:39 | composition-integral / supporting lemma | PASS |
| `clampT_mem` | CompositionIntegralClass:43 | composition-integral / supporting lemma | PASS |
| `clampT_of_mem` | CompositionIntegralClass:46 | composition-integral / supporting lemma | PASS |
| `clampT_mem_Icc` | CompositionIntegralClass:50 | composition-integral / supporting lemma | PASS |
| `paramHyp_integrand` | CompositionIntegralClass:54 | composition-integral / supporting lemma | PASS |
| `add_single_eq` | CompositionIntegralClass:103 | composition-integral / supporting lemma | PASS |
| `add_single_mem_Dom_iff` | CompositionIntegralClass:108 | composition-integral / supporting lemma | PASS |
| `field_periodic` | CompositionIntegralClass:119 | composition-integral / supporting lemma | PASS |
| `integral_inClass` | CompositionIntegralClass:134 | composition-integral / supporting lemma | PASS |
| `q_facts` | CompositionSeries:48 | composition / supporting lemma | PASS |
| `lieTerm_bound` | CompositionSeries:62 | composition / supporting lemma | PASS |
| `ComposeData.eta_nonneg` | CompositionSeries:79 | composition / supporting lemma | PASS |
| `wbound_of_neg` | CompositionSeries:83 | composition / supporting lemma | PASS |
| `lieSeries_summable` | CompositionSeries:99 | composition / supporting lemma | PASS |
| `lieSeries_class` | CompositionSeries:107 | composition / supporting lemma | PASS |
| `lieSeries_bound` | CompositionSeries:123 | composition / supporting lemma | PASS |
| `lieSeries_tail` | CompositionSeries:134 | composition / supporting lemma | PASS |
| `adPow_traj_bound` | CompositionSeries:171 | composition / supporting lemma | PASS |
| `series_eq` | CompositionSeries:195 | composition / supporting lemma | PASS |

## Independent verification receipts

All auditor-invoked Lean commands use `LEAN_NUM_THREADS=1` and `nice -n 5` (the build wrapper supplies nice). Builds and probes were sequential. An initial lint invocation unexpectedly launched its own ABI Lean subprocess while leanchecker was running; that ABI step was terminated and the complete lint was subsequently rerun after replay. This brief overlap is an audit-process deviation, not a proof result. No resource override, library cleanup or dependency modification was used.

Build command:

```sh
LEAN_NUM_THREADS=1 /mnt/HC_Volume_106379410/orchestrator-tools/inp_lake_build.sh /root/code/KAM-inp-c58 KAM.Canonical.CompositionIntegral KAM.Canonical.Composition
```

Output: `[inp-gate] slot 1 acquired 04:45:21 ...`; `Build completed successfully (3208 jobs).` Exit 0. This was a targeted incremental build using the worktree's existing snapshot; no clean rebuild.

Exact-type and all-public-theorem axiom probe:

```sh
LEAN_NUM_THREADS=1 nice -n 5 lake env lean .lake/abi-scratch/maud-c58.lean
```

Exit 0. Five independent signature examples accepted. The probe contains one `#print axioms` for each of the 42 theorem inventory rows above. Every output has exactly `[propext, Classical.choice, Quot.sound]`; no sorryAx, project axiom or additional trust input. The main-result output is:

```text
'KAM.Canonical.composition_series' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Canonical.composition_t' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Canonical.composition_real' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Canonical.composition_domain' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Canonical.composition_integral' depends on axioms: [propext, Classical.choice, Quot.sound]
```

Kernel replay (single invocation, all six modules):

```sh
LEAN_NUM_THREADS=1 nice -n 5 lake env leanchecker --verbose KAM.Canonical.CompositionDomain KAM.Canonical.CompositionCoeff KAM.Canonical.CompositionSeries KAM.Canonical.Composition KAM.Canonical.CompositionIntegralClass KAM.Canonical.CompositionIntegral
```

Exit 0. Exact output:

```text
replaying KAM.Canonical.CompositionIntegral
replaying KAM.Canonical.CompositionIntegralClass
replaying KAM.Canonical.Composition
replaying KAM.Canonical.CompositionSeries
replaying KAM.Canonical.CompositionCoeff
replaying KAM.Canonical.CompositionDomain
```

Lint:

```sh
LEAN_NUM_THREADS=1 nice -n 5 sh scripts/lint_sources.sh
```

Exit 1 **only for the brief-authorized generated-root exception**; all other checks pass. Exact output:

```text
KAM.lean is out of date; run scripts/gen_root_imports.py
check_lean_modules: PASS (404 Lean files, 0 comparator configurations)
FROZEN-ANCHOR GUARD OK
ABI HASHES OK (144 frozen declarations)
```

`git diff --check`: exit 0, no output. The final report was also checked directly for trailing whitespace (it is untracked, so git diff alone would not inspect it).

Static checks: all six modules have copyright, module command, interface public imports, module docstring and exposed public noncomputable section. Comment-stripped scanning found no sorry/admit/axiom/unsafe/opaque, EuclideanSpace or set_option; no file exceeds 1500 lines. Recursive project import closure has 56 modules and only seven frozen **definition** modules (ActionNbhd, ComplexStrip, HamiltonianVectorField, HamiltonianVectorFieldC, IsPrimaryOnStrip, IsRealOnReals, OmegaZero); no provider or frozen theorem is reachable. Thus no DRAFT_SORRY theorem is imported.

## Closeout

Final snapshot hashes rechecked unchanged; probe sources and generated scratch artifacts removed. Only this audit report is authored in the repository; the untracked handoff pre-existed this audit. No source corrections or errata-ledger edits were made. No unresolved mathematical finding remains in C5-8. Keep C5-5 landing order and generated-root regeneration with the integration orchestrator. Frozen headline closure, optional sharp composition and N11b coordinate transport are outside this verdict.
