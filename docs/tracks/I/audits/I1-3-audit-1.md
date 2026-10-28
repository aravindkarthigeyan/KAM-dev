# I1-3 independent package audit 1

**Overall verdict: FAIL for complete blueprint fidelity of `bpI:p1:energy-approx` (f).** The three implemented theorem types match the v2 design, and their proofs pass build, axiom inspection and kernel replay. However, `energy_defect` requires whole-real bounds where the blueprint requires only compact-cube bounds. `energy_approx` (a)–(e) and `energy_conservation` pass within the documented Part 1 specialization. No frozen anchor is sealed by this package.

Audit date: 2026-10-28. Audited worktree: `/root/code/KAM-inp-i13`; HEAD `c3b4da5a409f140a05b1df27e345909436c1fbd1`; initial and final `inp` ref `dccdffcad206acd9d4fd0c239263d0a427e2563f`; `inp-id0` `b28888500dcec3fe4e7f3efab6ed3660d474e06d`.

## Scope and authority

Read AGENTS.md, PLAN.md, DECISIONS.md, `/root/code/KAM-inp/.drafts/briefs/inp-audit-package.md`, the supplied handoff, track I statement, the two PART123 design audits, v2 design and signatures, blueprint Part 1 standing setting and energy statements/proofs, relevant frozen Iso anchors/definitions and actual K APIs. The explicit user output path overrides the generic brief's main-worktree destination.

Ran `git diff inp...HEAD`, including the full six-file inventory, and the handoff's focused `git diff inp-id0...HEAD -- KAM/Iso/Linear/Energy.lean KAM/Iso/Linear/EnergyDefect.lean`. This report certifies the two Energy modules (I1-3), not inherited I-D0. The four other files in `inp...HEAD` are `Linear/Defs`, `Apost/Defs`, `Charts/Defs`, `Charts/Inputs`. The handoff explicitly identifies these as inherited, pre-fix I-D0; notably `Apost/Defs.lean:204–212` still contains `isoLimit`/`isoSLimit`. Those unused inherited constructions receive no definition approval here. Neither Energy module imports them.

There are **two merge bases** between pinned `inp` and HEAD: `06c424f049b3d6636d5e671a347d85fc5194c0d9` and `f2f0b0b56f485a2a6ae71b0c16c2d01819ba4c75`. Git's requested triple-dot comparison chooses the former and warns accordingly. The pinned command `git diff dccdffcad206acd9d4fd0c239263d0a427e2563f...c3b4da5a409f140a05b1df27e345909436c1fbd1` reproduces the six-file, 1102-added-line inventory.

| Input | SHA-256 |
|---|---|
| `KAM/Iso/Linear/Energy.lean` | `771783eaf30d3a4ccdcd0e8aa6f6e9eccfb9136b9adf568e493514176bb03906` |
| `KAM/Iso/Linear/EnergyDefect.lean` | `25d3f484e7b94778cf367be50d91ccc11c9a2539c01d27541fb4d89cc01de546` |
| `blueprint-I/parts/p1-iso-linear.tex` | `96892529ec86381a018c227e239993da5aa6e793144600505668057df0cfc70b` |

Provider/frozen-type and seal-body probes: **N/A**. I1-3 adds no provider or frozen theorem. `KAM.Iso.isoenergetic_kam` remains FROZEN_UNPROVED; these helpers do not prove its full type. The frozen `energyAverage` is a definition, not a theorem to seal. A transient probe instead copied all three complete theorem signatures from the design under `example` and applied each implementation to every explicit binder, in order. All three elaborated successfully. This checks design equality, not source fidelity.

## Findings

### F1 — material contract weakening: cube bounds became whole-real bounds

Locations: `EnergyDefect.lean:166–168`; design `PART123-LEAN-DESIGN.md:974–977`; blueprint `p1-iso-linear.tex:292–294`, and the compact-cube correction recorded in `blueprint-I/reviews/p1-review-1.md` I1-03 and `round2-closure.md` I1-03. Design departure D6 at line 249 says “suprema over `[0,1]ⁿ` as pointwise bounds”.

The source says:

> all suprema finite by continuity on the compact cube.

Its estimate uses `sup_[0,1]^n ‖D(H ∘ K)‖` and `sup_[0,1]^n ‖ξL‖`. The Lean signature instead has:

```lean
∀ A X : ℝ,
  (∀ x : Fin n → ℝ, ‖fderiv ℂ (fun y => H (K y)) (fun i => (x i : ℂ))‖ ≤ A) →
  (∀ x : Fin n → ℝ, ‖ξL (fun i => (x i : ℂ))‖ ≤ X) →
  ‖avg (fun θ => fderiv ℂ (fun y => H (K y)) θ (ξL θ))‖ ≤ A * X
```

This is a valid conditional estimate, but a weaker conclusion than the blueprint: neither holomorphy of ξ nor the source assumptions require ξ to be periodic or globally bounded. For example, fix an index j and let `ξL(z) = z j • Pi.single j 1`. This is entire, has norm at most one on the real unit cube, and has no finite norm bound on all real angles. It satisfies the source correction-regularity requirement, while the Lean estimate supplies no bound at any X for it. This is a refutation of equivalence, not a counterexample to the proved conditional inequality.

Refutation pass: the main theorem imposes no periodicity on ξ; primaryness of K does not imply periodicity of an independent ξ. The earlier design audit accepted the signatures, and all three design equality probes pass, but neither fact supplies the missing cube-local theorem. Actual periodic corrections in a future consumer could satisfy the stronger antecedent; that does not recover this source node for arbitrary holomorphic corrections. **Finding survives.**

Required repair: restrict both bounding quantifiers to `Set.pi Set.univ (fun _ : Fin n => Set.Icc (0 : ℝ) 1)`. The existing proof already calls `norm_torusAverage_le` with the cube-membership argument discarded. Retain that argument and pass it to both bounds. A complete replacement for the final conclusion clause is:

```lean
∀ A X : ℝ,
  (∀ x ∈ Set.pi Set.univ (fun _ : Fin n => Set.Icc (0 : ℝ) 1),
    ‖fderiv ℂ (fun y => H (K y)) (fun i => (x i : ℂ))‖ ≤ A) →
  (∀ x ∈ Set.pi Set.univ (fun _ : Fin n => Set.Icc (0 : ℝ) 1),
    ‖ξL (fun i => (x i : ℂ))‖ ≤ X) →
  ‖avg (fun θ => fderiv ℂ (fun y => H (K y)) θ (ξL θ))‖ ≤ A * X
```

No repository proof or signature was repaired in this audit. The exact average-splitting identity and pointwise derivative bound already provide the remaining source consequences by substitution and integration; they do not require an additional premise or Gram inverse bound.

### N1 — documented Part 1 specialization

`Linear/Defs.lean:44–48` extends K Standing, whose Params require `τ ≥ n-1` and positive σ parameters, whereas blueprint Part 1 allows `τ ≥ 0`. Design D2, its setting-table notice (line 173), and design audit 2 explicitly retain this as a specialization sufficient for I-G1. The positive σ parameters are free instantiation data; they do not assert any difficult step. Verdicts below are for this documented specialized package. Do not label the full `τ ≥ 0` source range formalized. No new deviation was introduced by I1-3 on this point.

## Declaration inventory

Names below are prefixed `KAM.Iso.Linear.`; `Energy.` names are public auxiliary theorems. All 18 were inspected and subjected to `#print axioms`.

| Node / step | Declaration | Verdict | Reason |
|---|---|---|---|
| ea-chain, algebra | `Energy.apply_prod_decomp` | PASS | Exact two-block linear expansion; arbitrary linear form. |
| ea-chain, algebra | `Energy.apply_pi_decomp` | PASS | Exact coordinate expansion of a linear form. |
| ea-derivative | `Energy.fderiv_apply_ham_self` | PASS | Algebraic antisymmetry identity, even for totalized derivatives; stronger than source's differentiable case. |
| ea-chain | `Energy.fderiv_comp_apply` | PASS | Chain rule under pointwise differentiability, no domain premise hidden. |
| ea-derivative | `Energy.fderiv_comp_omega` | PASS | Correct minus sign for E = X_H − DK ω. |
| strip bookkeeping | `Energy.strip_subset` | PASS | Monotonicity, including empty strips. |
| ec-unique | `Energy.exists_strip_margin` | PASS | Finite maximum; index inhabitedness supplied by n ≥ 2 in consumer. |
| ea-chain, average | `Energy.torusAverage_sub_const` | PASS | Continuity gives integrability on volume-one cube. |
| ea-size / ec-derivative | `Energy.centered` | PASS WITH NOTES | Holomorphic, periodic, zero-average centered energy; N1 scope. |
| energy-approx (a)–(e) | `energy_approx` | PASS WITH NOTES | Correct constants and strip losses; N1 scope. ηN is literally LᵀΩ₀E in K, so (c) needs no Gram premise here. |
| energy-conservation (a)–(c) | `energy_conservation` | PASS WITH NOTES | Unbounded-solution uniqueness, full strip recovered by margins; pointwise norm equality implies source supremum equality on nonempty T_r; N1 scope. |
| ea-defect | `Energy.lagrangeMat_antisymm` | PASS | Correct bilinear transpose antisymmetry; no conjugate transpose. |
| ea-defect | `Energy.symm_normalMat_mulVec` | PASS | Exact frozen normal-frame column expansion. |
| ea-defect | `Energy.fderiv_frame_apply` | PASS | Exact P = (L N) decomposition and chain rule. |
| ea-defect integrability | `Energy.differentiableOn_energyRow` | PASS WITH NOTES | True Gram inverse guaranteed by determinant-unit premise; N1 scope. |
| ea-defect | `Energy.fderiv_comp_eq_etaN` | PASS WITH NOTES | Correct −ωᵀΩ_K sign, obtained by swapping indices and antisymmetry; N1 scope. |
| ea-defect bound | `Energy.norm_fderiv_comp_le` | PASS WITH NOTES | Max-vector and row-sum norms; factor n correct; N1 scope. |
| energy-approx (f) | `energy_defect` | **FAIL** | Identities and average split pass; final estimate has F1. |

## Expanded premise audit

The following tables enumerate the common expanded logical binders, with each row inherited wherever hS occurs. Categories are relative to the explicitly documented specialized setting: STANDING is an independently defined standing source premise; SOURCE is a local source premise; TYPING is ambient data. N1 records the difference from the broader original setting. No instance carries a result hypothesis. Ordinary normed-space, finite-index and scalar instances are canonical Mathlib typing data.

| Expanded hS input | Bin | Authority |
|---|---|---|
| `two_le : 2 ≤ n` | STANDING | p1 setting |
| `tau_ge : n-1 ≤ τ` | STANDING | Design D2 / N1 specialization; stronger than p1 τ ≥ 0 |
| `M_pos` | STANDING | p1 setting |
| `σK_pos` | STANDING | Design D2, free positive parameter |
| `σB_pos` | STANDING | Design D2, free positive parameter |
| `σT_pos` | STANDING | Design D2, free positive parameter |
| `isOpen D` | STANDING | p1 setting (I1) |
| `transl_mem` | STANDING | p1 setting (I1) |
| `holo H` | STANDING | p1 setting (I2) |
| `periodic H` | STANDING | p1 setting (I2) |
| `real H` | STANDING | p1 setting (I3) |
| `bounds`, X_H bound | STANDING | p1 setting (I4) |
| `bounds`, DX_H bound | STANDING | p1 setting (I4) |
| `bounds`, D²X_H bound | STANDING | p1 setting (I4) |
| `gamma_pos` | STANDING | p1 setting |
| `dio` | STANDING | p1 setting |
| `dH_le` | STANDING | p1 setting (I4) |

There are 17 expanded STANDING inputs, no RULED or hidden proof-result fields.

| Local logical binder | Bin | Applies to / source |
|---|---|---|
| `hr` | SOURCE | centered and all three main results; positive source strip |
| `hK` | SOURCE | centered, main results, energyRow holomorphy, etaN identity and derivative bound; source holomorphy |
| `hKp` | SOURCE | centered and main results; source primaryness |
| `hKr` | SOURCE | main results; source reality; unused in conservation/defect is harmless |
| `hKD` | SOURCE | centered, main results and domain-sensitive auxiliaries; source image in D |
| `hG` | SOURCE | energyRow holomorphy and defect; source frame invertibility |
| `hr'` | SOURCE | defect; source positive auxiliary strip |
| `hr'r` | SOURCE | defect; source nested strip |
| `hξL` | SOURCE | defect; source holomorphy of tangential correction |
| `hξN` | SOURCE | defect; source holomorphy of normal correction |
| `hE` | SOURCE | conservation; source exact invariance |
| energy_approx E bound | SOURCE | source (e), inside universal ε,δ conclusion |
| energy_approx δ positivity | SOURCE | source (e) |
| energy_approx δ < r | SOURCE | source (e) |
| energy_approx δ′ positivity | SOURCE | source (e) |
| energy_approx δ′ < r−δ | SOURCE | source (e) |
| conservation average = E₀ | SOURCE | source (b), inside conclusion |
| defect derivative bound at all real x | EXCESS | F1: source only bounds on cube |
| defect ξL bound at all real x | EXCESS | F1: source only bounds on cube |
| auxiliary `hH : DifferentiableAt H (K θ)` | SOURCE | Chain-rule and frame-application steps, discharged by open D + hS.holo + hKD |
| auxiliary `hK : DifferentiableAt K θ` | SOURCE | Same steps, discharged by open strip + torus holomorphy |
| auxiliary `hθ` strip membership | TYPING | Pointwise source identities |
| strip_subset width comparison | SOURCE | Strip monotonicity |
| margin lemma `hr` | SOURCE | Positive source strip |
| margin lemma `hθ` | TYPING | Membership of input point |
| average_sub_const `hf` | SOURCE | Continuous integrand for integral subtraction |

Each occurrence of the above binders has the displayed classification; repeated names in different theorems denote the same indicated condition. Logical input totals for the three main results, counting logical arrows inside their conclusions too: energy_approx has 17 STANDING + 10 SOURCE; conservation has 17 STANDING + 7 SOURCE; defect has 17 STANDING + 10 SOURCE + 2 EXCESS. There are zero RULED inputs. All data binders (`n,τ,M,σK,σB,σT,γ,D,H,ω,r,K,r′,ξL,ξN,ε,δ,δ′,A,X,E₀`, as applicable) are TYPING; their quantifiers retain the design order. F1's EXCESS arrows are in the final conditional conclusion, not top-level assumptions. This is why the proved theorem remains valid but the advertised source conclusion is weaker.

## Definitions and use of K

There is no new `def`, `abbrev` or `structure` in either I1-3 file. Definition classification for the focused delta is therefore empty. The inherited objects actually used are:

- `Setting`: genuine standing-premise bundle, with N1 recorded; not a result certificate.
- `energyRow`: literal `b ↦ DH(K θ)(normalFrame K θ b)`; matches the frozen last row. No new choice or fallback.
- `energyAverage` and `avg`: same period-one volume-one cube integral. Continuity, not totalized-integral behavior, justifies subtraction and addition in the proofs.
- `etaN`, `lagrangeMat`, `frameMat`, `normalMat`: literal K matrix objects. In particular ηN is defined as LᵀΩ₀E without an inverse, while the normal frame uses the frozen Gram inverse. The defect theorem assumes its determinant is a unit before using holomorphy. No theorem relies on a singular-inverse fallback.

For these used formulas: BODY_MATCH OK; PUBLIC_CARRIER OK in the source use domain; WELL_DEFINEDNESS N/A_LITERAL; CHARACTERIZATION N/A_LITERAL; CHOICE_INDEPENDENCE N/A. This is not approval of unused inherited I-D0 constructions.

K applications were checked at their actual signatures. `periodic_h_comp_K` receives hS.toStanding, hKD and hKp. `Exactness.etaN_apply`, `avg_lagrangeMat` and `avg_etaN` receive the required holomorphy, primaryness, positive width and image conditions. The derivative average uses the established periodic holomorphic composite. For (e), the centered energy has zero average, its ω derivative has norm ≤ Mε, and ε ≥ 0 follows from a real point of the positive strip. `cohomological_apriori` uses hS.dio, γ > 0 and the derived τ ≥ 0; `cohConst_div_le_cR` converts to precisely `cR n τ * γ⁻¹ * δ^(-kappa n τ)`. Cauchy with loss δ′ produces exactly `n M Γδ ε / δ′` on `T_(r−δ−δ′)`.

The frame split is exact under the chain rule; antisymmetry changes `(Ω_K ω)ᵀξL` to `−ωᵀΩ_K ξL`. The average identity uses continuous energyRow, ξN and the derivative applied to ξL on real angles, hence integrability on the compact cube. There is no assumed integral identity. Conservation invokes scalar cohomological uniqueness with g = 0; its candidate need not be bounded. Both centered energy and zero equal the unique solution on each smaller strip, and `exists_strip_margin` covers the entire original strip. This requires no final Gram determinant.

## Mechanical checks

All Lean/Lake invocations were sequential, with `LEAN_NUM_THREADS=1` and `nice -n 5` (the compile gate applies nice internally). No library clean/rebuild, dependency edits, heartbeat overrides or state-changing git commands were used.

1. Targeted build:

```text
LEAN_NUM_THREADS=1 /mnt/HC_Volume_106379410/orchestrator-tools/inp_lake_build.sh /root/code/KAM-inp-i13 KAM.Iso.Linear.EnergyDefect
[inp-gate] slot 1 acquired 02:00:35 for KAM.Iso.Linear.EnergyDefect
Build completed successfully (3192 jobs).
exit 0
```

This is the cached targeted build including its Energy dependency, not a clean rebuild.

2. Full design-signature applications and all public theorem axiom checks:

```text
LEAN_NUM_THREADS=1 nice -n 5 lake env lean .lake/abi-scratch/I13Audit.lean
exit 0
```

The probe imports EnergyDefect, copies the three design statements with `example`, and supplies respectively `energy_approx hS hr hK hKp hKr hKD`, `energy_defect hS hr hK hKp hKr hKD hG hr' hr'r hξL hξN`, and `energy_conservation hS hr hK hKp hKr hKD hE`. Its 18 `#print axioms` outputs are listed below. All declare only `[propext, Classical.choice, Quot.sound]`:

```text
'KAM.Iso.Linear.Energy.apply_prod_decomp' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Linear.Energy.apply_pi_decomp' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Linear.Energy.fderiv_apply_ham_self' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Linear.Energy.fderiv_comp_apply' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Linear.Energy.fderiv_comp_omega' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Linear.Energy.strip_subset' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Linear.Energy.exists_strip_margin' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Linear.Energy.torusAverage_sub_const' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Linear.Energy.centered' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Linear.energy_approx' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Linear.energy_conservation' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Linear.Energy.lagrangeMat_antisymm' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Linear.Energy.symm_normalMat_mulVec' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Linear.Energy.fderiv_frame_apply' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Linear.Energy.differentiableOn_energyRow' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Linear.Energy.fderiv_comp_eq_etaN' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Linear.Energy.norm_fderiv_comp_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Linear.energy_defect' depends on axioms: [propext, Classical.choice, Quot.sound]
```

3. One kernel replay invocation:

```text
LEAN_NUM_THREADS=1 nice -n 5 lake env leanchecker --verbose KAM.Iso.Linear.Energy KAM.Iso.Linear.EnergyDefect
replaying KAM.Iso.Linear.EnergyDefect
replaying KAM.Iso.Linear.Energy
exit 0
```

4. Source lint:

```text
LEAN_NUM_THREADS=1 nice -n 5 sh scripts/lint_sources.sh
KAM.lean is out of date; run scripts/gen_root_imports.py
check_lean_modules: PASS (334 Lean files, 0 comparator configurations)
FROZEN-ANCHOR GUARD OK
ABI HASHES OK (144 frozen declarations)
exit 1
```

The sole failure is the explicitly permitted stale generated root. No root regeneration was performed. The two audited files have 256 and 218 physical lines, respectively, and correct copyright, module command, public imports, docstring and exposed public section. The handoff's 217-line count for EnergyDefect is a harmless one-line discrepancy. No forbidden escapes or resource overrides occur in the audited files.

5. `git diff inp...HEAD -- KAM/Frozen manifest KAM.lean README.md`: empty output, exit 0. The pinned-ref version also has empty stdout and only the multiple-merge-base warning on stderr. `git diff --check inp...HEAD`: exit 0, only that same warning. No forbidden frozen theorem/provider imports appear in either module; the clean axiom closures also exclude sorry-bearing theorem dependencies.

## Errata, deviations and closeout

No suspected mathematical error in the pinned HL19 source was found. This was a blueprint/implementation audit, not a fresh PDF audit. F1 is a design transcription defect and implementation/source-contract deviation, not an HL19 erratum. N1 is the previously declared range specialization. Unused hKr in conservation and hKp/hKr in defect are source premises retained faithfully, not conclusion-shaped hypotheses. No deviations were introduced by the auditor.

Acceptance condition: provide the cube-local estimate in the public interface (repair the design signature too), then rerun its targeted build, signature check, axiom check and replay. The presently checked proofs establish their actual types; no proof gap was found in those types. Full energy-approx source-node approval is withheld because of F1. No root or frozen-anchor closure is claimed.

The transient `.lake/abi-scratch/I13Audit.lean` was deleted after its successful run. The only new audit deliverable is this report; the pre-existing untracked handoff was left intact. Final report whitespace validation: `git diff --no-index --check /dev/null /root/code/KAM-inp-i13/docs/tracks/I/audits/I1-3-audit-1.md`, exit 0 with no output.
