# I1-7 independent audit 1

**Overall: PASS WITH NOTES.** Both helper nodes pass for the documented specialized Setting. No blocking or major finding. This package has no provider or frozen theorem to seal; this verdict approves the two helper proofs, not I-G1 closure or the independently audited I-D0 package.

## Scope and immutable inputs

Audited worktree `/root/code/KAM-inp-i17`, HEAD `d0c8463cf2dbfacca2b6ef5df299d8309863eca5`; comparison `inp` = `940d52106d99e004a836125dc0b78b231fa5c7fa`. Read AGENTS.md, PLAN.md, DECISIONS.md, `/root/code/KAM-inp/.drafts/briefs/inp-audit-package.md`, and the worktree's I1-7 handoff. The explicit user path overrides the brief's main-worktree output instruction.

`git diff inp...HEAD` contains five added files (782 lines), of which four are inherited I-D0 infrastructure. Per AUDIT FOCUS, proof audit is restricted to the 154-line `KAM/Iso/Linear/NoTwist.lean`; `git diff inp-id0...HEAD` isolates precisely that file (`inp-id0` = `35096654b6322ee1a9f691c2bd94e951dd01a5c8`). Relevant inherited definitions and helper premises were inspected as semantic dependencies, without re-certifying I-D0. No repository edit except this report; the temporary Lean probe was removed.

SHA256:

- NoTwist.lean: `7b0e0ad2f5e9645be222b869495ad8150fb2a550e8d543d891f698af3905e425`
- blueprint-I/parts/p1-iso-linear.tex: `96892529ec86381a018c227e239993da5aa6e793144600505668057df0cfc70b`
- docs/tracks/I/design/PART123-LEAN-DESIGN.md: `34436a69c1f582d7e1a711b8e2ffcb57e6c97ebaef70b2e22b110e417f4ac1dd`

Source authority: blueprint-I Part 1 setting at lines 30–47, geometry at 535–563, perturbation at 566–590; design v2 sections 3.1, 4, 5 and 7, row I1-7; design-audit-1 N1 and design-audit-2 N1. Also read track I statement conventions. No frozen anchor is implemented by this package, so frozen/provider equality and a frozen seal-body probe are inapplicable. The applicable check is equality to the actual design signatures, with all explicit binders supplied.

## Declaration verdicts

| Node | Lean declaration | Verdict | Reason |
|---|---|---|---|
| bpI:p1:geometry-noA5 | KAM.Iso.Linear.geometry_noA5 (NoTwist:52–102) | PASS WITH NOTES | All derivative, Lagrangian, reduced/symplectic defect, frame and eta bounds; exact constants and strip losses; final X_N/T bounds retain their frequency guard. Setting specialization N1 applies. |
| bpI:p1:perturbation-noA5 | KAM.Iso.Linear.perturbation_noA5 (NoTwist:105–150) | PASS WITH NOTES | Exactly items (a)–(e), including transpose bound; no hT, torsion-average inverse or item (f). Setting specialization N1 applies. |

Geometry also explicitly exports the transposed error-derivative bound appearing in the blueprint proof at line 547. This strengthens the displayed source conclusion and introduces no premise.

## Expanded binder audit

Bins: SOURCE = explicit local source premise; STANDING = Part 1 setting (with documented design specialization); TYPING = source carriers and parameters. RULED and EXCESS counts are zero. No typeclass/instance premise or hidden result bundle is introduced. Fields below are expanded through Setting → Standing → Params and AdmissibleNoTwist; conjunctions carrying distinct bounds are separated.

Shared typing inputs (each applies to both exports):

| Binder | Bin | Source |
|---|---|---|
| n : ℕ | TYPING | Part 1 setting, dimension |
| τ : ℝ | TYPING | setting, exponent |
| M : ℝ | TYPING | setting, Hamiltonian bound |
| σK : ℝ | TYPING | geometry/frame constants |
| σB : ℝ | TYPING | geometry/frame constants |
| σT : ℝ | TYPING | geometry constants; scalar majorant only |
| γ : ℝ | TYPING | setting, Diophantine parameter |
| D : Set ((Fin n → ℂ) × (Fin n → ℂ)) | TYPING | setting, complex phase domain |
| H : phase → ℂ | TYPING | setting, Hamiltonian |
| ω : Fin n → ℝ | TYPING | setting, fixed real frequency |

Expansion of hS in both exports (`Linear/Defs.lean:45–48`, `Apost/Standing.lean:42–73`):

| Expanded input | Bin | Source / qualification |
|---|---|---|
| two_le : 2 ≤ n | STANDING | p1:setting |
| tau_ge : n−1 ≤ τ | STANDING | design D2/N1 specialization; see note N1 |
| M_pos | STANDING | p1:setting M>0 |
| σK_pos | STANDING | design D2/N1, positive frame parameter |
| σB_pos | STANDING | design D2/N1, positive frame parameter |
| σT_pos | STANDING | design D2/N1, positive scalar parameter |
| isOpen D | STANDING | setting I1 |
| transl_mem | STANDING | setting I1, integer translations |
| holo H | STANDING | setting I2 |
| periodic H | STANDING | setting I3 |
| real H | STANDING | setting I3 |
| bounds: ‖X_H‖ ≤ M | STANDING | setting I4 |
| bounds: ‖DX_H‖ ≤ M | STANDING | setting I4 |
| bounds: ‖D²X_H‖ ≤ M | STANDING | setting I4 |
| gamma_pos | STANDING | p1:setting |
| dio : IsDiophantine γ τ ω | STANDING | p1:setting; includes perturbation despite its local wording, design B2 |
| dH_le | STANDING | setting I4; unused here |

Geometry-only typing and logical inputs:

| Input | Bin | Source |
|---|---|---|
| r | TYPING | geometry strip width |
| β | TYPING | geometry domain margin |
| ε | TYPING | geometry error bound |
| δ | TYPING | geometry strip loss |
| K : complex angle → phase | TYPING | geometry parameterization |
| hK.r_pos | SOURCE | p1:setting r>0 |
| hK.β_pos | SOURCE | geometry β>0 |
| hK.ε_nonneg | SOURCE | geometry 0≤ε |
| hK.ε_le_one | SOURCE | geometry ε≤1 |
| hK.holo | SOURCE | geometry holomorphy |
| hK.primary | SOURCE | geometry primary torus |
| hK.real | SOURCE | geometry real on reals |
| hK.ball_sub | SOURCE | geometry domain-ball inclusion |
| hK.deriv_le | SOURCE | geometry derivative bound |
| hK.gram: determinant unit | SOURCE | geometry det G≠0 over ℂ |
| hK.gram: inverse norm bound | SOURCE | geometry ‖B‖≤σB |
| hK.error_le | SOURCE | geometry error bound |
| hδ | SOURCE | geometry 0<δ |
| hδ1 | SOURCE | geometry δ≤1 |
| h2δ | SOURCE | geometry 2δ<r |

Perturbation-only typing and logical inputs:

| Input | Bin | Source |
|---|---|---|
| r | TYPING | perturbation strip width |
| δ | TYPING | perturbation strip loss |
| β | TYPING | perturbation domain margin |
| d | TYPING | perturbation displacement |
| K | TYPING | perturbation original torus |
| K' | TYPING | perturbation new torus |
| hr | SOURCE | perturbation r>0 |
| hδ | SOURCE | perturbation 0<δ |
| hδ1 | SOURCE | perturbation δ≤1 |
| h2δ | SOURCE | perturbation 2δ<r |
| hω | SOURCE | perturbation ‖ω‖≤Θ |
| hK | SOURCE | perturbation holomorphic K |
| hball | SOURCE | perturbation ball inclusion |
| hDK | SOURCE | perturbation derivative bound |
| hG: determinant unit | SOURCE | perturbation det G≠0 |
| hG: inverse norm bound | SOURCE | perturbation ‖B‖≤σB |
| hK' | SOURCE | perturbation holomorphic K' |
| hd | SOURCE | perturbation displacement bound |
| hdβ | SOURCE | perturbation d<β |
| hsmall | SOURCE | perturbation 2𝔪 C_ΔT d/δ²≤1 |

Counts per export after the stated field/conjunction expansion: geometry TYPING 15, STANDING 17, SOURCE 15, RULED 0, EXCESS 0; perturbation TYPING 16, STANDING 17, SOURCE 14, RULED 0, EXCESS 0. The optional frequency condition in geometry is an implication in the conclusion, not an additional input. Quantifier order and constant dependence match the design verbatim modulo whitespace.

## Proof refutation checks

1. **No silent A5.** Setting contains no ordinary or bordered twist condition. AdmissibleNoTwist has precisely the eleven fields at `Linear/Defs.lean:127–137`, with the two Gram conjuncts inspected separately. Neither proof constructs K Admissible or applies K's whole geometry/perturbation lemma.
2. **Geometry.** `geo_omegak_inputs` takes holomorphy, primary, image inclusion, derivative/error bounds and δ>0, not A5. Image inclusion is proved using β>0 and ball inclusion (NoTwist:72–73). Exactness gives zero mean; cohomological(b) is applied on r−δ with a further loss δ. Both positivity and δ<r−δ follow from 2δ<r. The arithmetic identity yields the original γ δ^(κ+1) denominator. `geo_de`, `geo_ered`, `geo_esym_le` have the supplied local analytic and Gram premises; multiplying the latter by the Ω_K bound gives C_sym. `frame_basic` takes only Standing, widths, holomorphy, image-ball, derivative and Gram data; its bounds are projected and its X_N/T branch is called with the required guarded frequency estimate. No frame inverse or twist inverse is assumed.
3. **Perturbation.** NoTwist:128–130 derives d≥0 by evaluating hd at zero in the nonempty positive-width strip, then β>0 from d<β. `frame_items` uses Params and the displayed local frame/analytic data and smallness, producing the new Gram invertibility before the normal-field and torsion estimates are used. `norm_normalField_sub_le_strip` and `norm_torsion_sub_le` have exactly the supplied determinant, image, frame and fixed-frequency premises (`PerturbationTorsion.lean:182–254`). Their apparent result-shaped hG', hNN and hXX inputs are discharged inside the proof by actual helper results, never promoted to public premises.
4. **Transpose estimate.** `normalMat K' θ` has rows Fin n ⊕ Fin n. `FrameAux.norm_transpose_le_two_mul` (`Frame.lean:77–83`) proves ‖Aᵀ‖≤2n‖A‖ via cardinality and the row-sum operator norm. Combine with ‖N'‖≤2𝔪²; 2n≥0, giving exactly 4n𝔪² (NoTwist:146–150). No Euclidean/spectral norm substitution.
5. **Unused loss premise.** perturbation retains h2δ and assigns it to `_h2δ`; its helper estimates do not consume it. It is explicitly a source premise and is not an excess assumption. Its retention does not affect validity.

No refuted warning remains an unverified blocker. Constants are the unchanged K definitions (`Apost/Constants.lean:66–107`), including κ=τ+n; no existential constant has acquired a wider dependency.

## Definitions and totality

I1-7 introduces **no def, abbrev or structure**. Hence new-definition BODY_MATCH, PUBLIC_CARRIER, WELL_DEFINEDNESS, CHARACTERIZATION and CHOICE_INDEPENDENCE checks are N/A; definition verdict PASS (empty inventory).

For the consumed inherited packages, Setting is a literal standing-assumption bundle; AdmissibleNoTwist is a literal source-premise bundle, not a conclusion bundle. The scalar σT is used through the majorant 𝔪, not a torsion inverse. All Gram inverses used analytically have determinant-unit hypotheses. Derivatives occur on open strips or at image points in the open holomorphic domain. Frozen invariance error is X_H(K)−DK·ω, primary is period-one with integer lift, and Gram is the complex bilinear tangent Gram matrix. Imported unrelated I-D0 bordered objects are not used in these statements/proofs. No arbitrary-choice/default branch supplies a mathematical result here. Full I-D0 definition certification remains outside this audit.

## Verification evidence

Commands ran sequentially; no overlapping Lean/Lake/checker verification was launched by this auditor. The targeted build used the compile gate. Final verification commands explicitly used LEAN_NUM_THREADS=1 and nice −n 5.

```text
env LEAN_NUM_THREADS=1 /mnt/HC_Volume_106379410/orchestrator-tools/inp_lake_build.sh /root/code/KAM-inp-i17 KAM.Iso.Linear.NoTwist
[inp-gate] slot 1 acquired 01:54:31 for KAM.Iso.Linear.NoTwist
Build completed successfully (3196 jobs).
exit 0
```

The existing overlay was used; there was no clean/update/cache fetch or scratch library rebuild. The job count is Lake's total graph receipt, not a claim of 3196 fresh compilations.

A Python extractor read the two actual design declaration heads from `/root/code/KAM-inp/.drafts/design/IPart123Signatures.lean`, stopping at `:=` followed by whitespace and `sorry`. Token comparison against the implementation reported:

```text
geometry_noA5 signature tokens identical: True
perturbation_noA5 signature tokens identical: True
```

It wrote fresh-name theorem copies in `.lake/abi-scratch/I17Audit1.lean`, importing only KAM.Iso.Linear.NoTwist, with bodies:

```lean
by exact geometry_noA5 hS hK hδ hδ1 h2δ
by exact perturbation_noA5 hS hr hδ hδ1 h2δ hω hK hball hDK hG hK' hd hdβ hsmall
```

```text
env LEAN_NUM_THREADS=1 nice -n 5 lake env lean .lake/abi-scratch/I17Audit1.lean
'KAM.Iso.Linear.geometry_noA5' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Linear.perturbation_noA5' depends on axioms: [propext, Classical.choice, Quot.sound]
exit 0

env LEAN_NUM_THREADS=1 nice -n 5 lake env leanchecker --verbose KAM.Iso.Linear.NoTwist
replaying KAM.Iso.Linear.NoTwist
exit 0
```

The first probe-generation attempt incorrectly searched only for same-line `:= sorry`, consuming the next theorem; it failed with a duplicate-declaration error. The extractor was corrected to accept intervening whitespace, the probe regenerated, and the clean run above passed without warnings. This was a scratch harness error, not a package defect.

A recursive project import scan reached 67 KAM modules and found zero provider or frozen-theorem edges. Frozen definitions are permitted and present. Static inventory: 154 lines; copyright, module, public imports, module docstring and exposed public section present; zero forbidden escape/resource-override tokens; zero new definitions.

```text
git diff inp...HEAD -- KAM/Frozen manifest KAM.lean README.md
(no output; exit 0)
git diff --check inp...HEAD
(no output; exit 0)
```

```text
env LEAN_NUM_THREADS=1 nice -n 5 sh scripts/lint_sources.sh
KAM.lean is out of date; run scripts/gen_root_imports.py
check_lean_modules: PASS (333 Lean files, 0 comparator configurations)
FROZEN-ANCHOR GUARD OK
ABI HASHES OK (144 frozen declarations)
exit 1
```

The raw exit code is 1 solely for the brief's explicitly permitted stale generated root file. No other lint failure appeared; no generated file was edited.

The initial `sh scripts/lint_sources.sh` was invoked without explicit LEAN_NUM_THREADS/nice wrappers; its ABI subprocess was allowed to finish before subsequent Lean checks. It reported the same expected stale-root condition and all three guard passes. It was rerun below with the required environment and priority. No concurrent build was active during either lint invocation by this auditor. No resource budget override was used.

## Notes, source qualifications and closeout

**N1 (nonblocking, existing): specialized range.** Blueprint `p1-iso-linear.tex:31` says “τ≥0 … only τ≥0 is used here”; the inherited Setting instead requires τ≥n−1 and positive σ parameters. Design section 3.1 row setting, departure D2, design-audit-1 N1 and design-audit-2 explicitly record this specialization as sufficient for all I-G1 consumers. It is not evidence of full-range source formalization. Both package statements match the audited design exactly.

**N2 (nonblocking, existing wording): frequency standing.** The perturbation source at line 567 says “ω∈ℝⁿ”, while the standing setting still imposes Diophantine ω. Design issue B2 documents this; the theorem consistently retains Setting. No arbitrary-frequency API is claimed.

No new suspected pinned-external-source defect, blueprint mathematical defect, or implementation deviation was found. External HL19 PDFs were not re-audited; this audit checks the pinned local blueprint/design correspondence and implemented proof use. Existing D-I-NOA5 is the intentional proof supplement, satisfied for these specialized helpers, not a new erratum. No frozen statement correction is requested. No anchor was sealed, and no provider/root closure is inferred.

Closeout: both local source nodes checked; assumptions expanded; no hidden A5; exact signature probes and axiom checks pass; kernel replay passes; protected diff empty; expected lint exception only; scratch probe removed. Report is the sole audit deliverable.
