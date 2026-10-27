# P2-10 independent audit 1

**Overall verdict: PASS WITH NOTES.** `KAM.Apost.perturbation` proves all six blueprint conclusions with the prescribed constants and signature. No blocking or major mathematical finding. Two stale helper names in module documentation form one minor finding. The build, direct source elaboration, exact-signature consumption probe, axiom checks, and repository lint pass.

## Scope, authority, and snapshot

Focused tier-2 package audit, 2026-10-27. Authority: `AGENTS.md`, `docs/PLAN.md`, `docs/DECISIONS.md`, `AUDIT-PACKAGE.md`, `P2-10.md`, its common briefs, the handoff AUDIT FOCUS, and binding design Appendix A. This report is the only repository edit; temporary probes are confined to `.lake/abi-scratch/` and removed. No git mutation, source repair, full-library rebuild, resource override, or network access.

Snapshot **frozen-v1**:

- HEAD: `81e0a79c9cdfaada5eb867899992185df50a0934` (`k/p2-10`).
- Comparison main: `85e92e89b7dd5228bfaeded26a0b4447849d006f`.
- Handoff mentions `0c7d0e8`; the audited object is the current merged HEAD above.
- Initial worktree: only the supplied untracked `docs/campaign/audits/P2-10-handoff.md`.
- Branch diff: two new Lean modules, plus two generated root imports. Frozen files and manifest unchanged.
- Lean: `leanprover/lean4:v4.35.0`.

| Input | SHA-256 |
|---|---|
| `KAM/Apost/Perturbation.lean` | `1e4b4d19b4cb14203217771b39f6b41622d47fbce78465bfaeede5e87e742492` |
| `KAM/Apost/PerturbationTorsion.lean` | `1155f77966a11b74def2d6d3aff58c7504c25f6eaf3cf1a5c0fee19f51defbc2` |
| `KAM/Apost/Constants.lean` | `9e9190f524c5086d78be3f3cb374ccbf34da3024f9b2d35703c9a8f4a886975d` |
| `KAM/Apost/Standing.lean` | `a91ec68239396b9dbd81928b941f435c4223093f02c86eaeb17875caee755e15` |
| `KAM/Torus/Basic.lean` | `9781d3ef7054eb49d26609f49d57c5c725682887efda9cf476c65a76c76a8fa8` |
| `KAM/Torus/Objects.lean` | `b2a48ffc77d6a0696131860c6239a84356e17c7cf651b21ca5df493209d95160` |
| `KAM/Torus/FrozenAgreement.lean` | `90e59c232ee202930738d4e57adc012c6ef46692028be07d52e288e63f1ca82e` |
| `KAM/Apost/Frame.lean` | `9a327f1cbec0424b44490a323d387627a66df6ae2a1ce5c4dd384ce1a6679546` |
| `blueprint/parts/p2-aposteriori.tex` | `c8fe335ca1f87390d803ffec36254804290f3962910284b9d7afd8fec3530f30` |
| `docs/campaign/design/PART23-LEAN-DESIGN.md` | `1b4bd7224e90844d78088822931f1d5e668dcc27cf5cd2351671da108985c125` |
| `docs/graph/K/DEPGRAPH.md` | `585b884c2b9aa009b22fcfe43a61adb009ddcf409505d435b41101745990f13d` |
| `docs/campaign/audits/P2-10-handoff.md` | `ddf565b396167a620ea39cf3cdf8fc66fbbf0647b83b62ec5fcb20aa285bf5c0` |

The statement authority is the local blueprint, not a fresh audit of HL19. All locators below refer to frozen-v1. Method: reconstruct the blueprint assumptions and conclusions; expand the standing bundle; inspect definitions and every new proof; trace actual producer-to-consumer applications; then make a separate adversarial pass over constants, strip domains, transposes, inversion, and integration, followed by mechanical checks. This is an independent audit of another author's package, conducted by one auditor; no second-agent review is claimed.

## Node ledger

In this table `Aux.` means `KAM.Apost.PerturbationAux.`. Proof-step coverage includes intermediate facts inside proofs; the conditional helper signatures themselves are not substituted for the source lemma.

| Graph node | Lean declarations | Verdict | Evidence / qualification |
|---|---|---|---|
| `bp:p2:perturbation` | `KAM.Apost.perturbation` | PASS | `PerturbationTorsion.lean:325–377`; verbatim design signature and all items (a)–(f), blueprint 798–820. Exact consumption compiled. |
| `step:p2:pt-small` | `KAM.Apost.perturbation_small`; `n_le_C_DT`, `C_G_le_C_DT`, `C_DN_le_C_DT` in `KAM.Apost` | PASS, scope note | Supplied predecessor in `Constants.lean:413–505`; four terminal smallness bounds are exported and consumed. The blueprint's sharper intermediate `1/(2𝔪)` bounds are not exported by `perturbation_small`; no claim of that stronger standalone signature. |
| `step:p2:pt-domain` | `Aux.ball_subset_of_close`, `Aux.norm_linMat_sub_le` | PASS | `Perturbation.lean:106–115`, `PerturbationTorsion.lean:82–92`. Triangle inequality proves (a). `ham_mvt` supplies the `M‖K′−K‖` bound; the helper then bounds this by `Md ≤ 𝔪d`. Segment containment is discharged through the ball hypothesis and `‖K′−K‖ < β` at the mean-value application. |
| `step:p2:pt-dl` | `Aux.norm_fderiv_sub_le`, `Aux.norm_transpose_tangentMat_sub_le`, `Aux.norm_transpose_tangentMat_le_four` | PASS | `Perturbation.lean:128–198`; `nd/δ`, **`2nd/δ`**, and `4n𝔪`, respectively. No extra factor of n. The unexported crude `‖L′‖ ≤ 2𝔪` is unnecessary for the subsequent proof. |
| `step:p2:pt-gram` | `Aux.gramMatrix_sub`, `Aux.norm_gram_sub_le`; `KAM.Apost.gram_coeff_le` | PASS | `Perturbation.lean:80–86,203–232`; coefficient `4n²𝔪 + 2n𝔪 ≤ 6n²𝔪`. |
| `step:p2:pt-binv` | `Aux.gram_inverse_perturb` | PASS | `Perturbation.lean:237–255`; `KAM.neumann_pointwise` yields invertibility and both inverse estimates before downstream use. |
| `step:p2:pt-n` | `Aux.normalMat_sub`, `Aux.norm_normalMat_sub_le`, `Aux.norm_normalMat_le_two`, `Aux.frame_items` | PASS | `Perturbation.lean:89–96,268–350`; `C_DN = 2n𝔪 + 𝔪C_B`, absolute bound `2𝔪²`. |
| `step:p2:pt-xn` | `Aux.normalFieldMat_sub`, `Aux.norm_fderiv_normalDiff_le`, `Aux.norm_normalField_sub_le`, `Aux.norm_normalField_sub_le_strip`; `KAM.Apost.pt_xn_sum_le` | PASS | `PerturbationTorsion.lean:53–139,182–209`; loss δ from `T_(r−δ)` to `T_(r−2δ)`, frequency ℓ¹ bound `nΘ`, constant `C_DX`. |
| `step:p2:pt-torsion` | `Aux.norm_torsion_combo_le`, `Aux.norm_torsion_sub_le` | PASS | `PerturbationTorsion.lean:153–169,214–253`; exact `C_DT = 4n𝔪² C_DX + 2n C_DN C_X`. |
| `step:p2:pt-twist` | `Aux.differentiableOn_torsion_of`, `Aux.norm_torsionAverage_sub_le`, `Aux.twist_neumann`; final assembly | PASS | `PerturbationTorsion.lean:257–263,276–315,366–377`; continuity, integral difference estimate, and Neumann inversion, with no periodicity premise. |

The handoff's pt-domain row omits the useful companion `norm_linMat_sub_le`; it is included above. The package result remains a theorem about arbitrary holomorphic perturbations satisfying the stated closeness and nondegeneracy assumptions, with no invariance-error, primary-map, or real-map premise added.

## Expanded binder audit of the package result

Target: `KAM.Apost.perturbation`, `PerturbationTorsion.lean:325–346`. SOURCE refers to blueprint 799–804, STANDING to blueprint 56–65. TYPING binders fix exactly the displayed source carriers and scalar parameters. No instance binder or hidden additional assumption is introduced. Splitting conjunctions below exposes every logical component of `hG`, `hT`, and `hS.bounds`; `hS.toParams` is expanded rather than counted again.

| Binder / expanded field | Bin | Source / meaning |
|---|---|---|
| `n : ℕ` | TYPING | Dimension. |
| `τ : ℝ` | TYPING | Diophantine exponent. |
| `M : ℝ` | TYPING | Hamiltonian bound. |
| `σK : ℝ` | TYPING | Tangent bound. |
| `σB : ℝ` | TYPING | Gram-inverse bound. |
| `σT : ℝ` | TYPING | Twist-inverse bound. |
| `𝔅 : Set ((Fin n → ℂ) × (Fin n → ℂ))` | TYPING | Ambient domain. |
| `h : ((Fin n → ℂ) × (Fin n → ℂ)) → ℂ` | TYPING | Hamiltonian. |
| `ω : Fin n → ℝ` | TYPING | Frequency. |
| `γ : ℝ` | TYPING | Diophantine constant. |
| `r : ℝ` | TYPING | Original strip width. |
| `δ : ℝ` | TYPING | Strip loss. |
| `β : ℝ` | TYPING | Ball radius. |
| `d : ℝ` | TYPING | Perturbation size. |
| `K` | TYPING | `ℂⁿ → ℂⁿ × ℂⁿ`. |
| `K′` | TYPING | Same carrier. |
| `hS.two_le` | STANDING | `2 ≤ n`, blueprint 57. |
| `hS.tau_ge` | STANDING | `n−1 ≤ τ`, blueprint 57. |
| `hS.M_pos` | STANDING | `0 < M`, blueprint 57. |
| `hS.σK_pos` | STANDING | `0 < σK`, blueprint 57. |
| `hS.σB_pos` | STANDING | `0 < σB`, blueprint 57. |
| `hS.σT_pos` | STANDING | `0 < σT`, blueprint 57. |
| `hS.isOpen` | STANDING | Open 𝔅, blueprint 58. |
| `hS.transl_mem` | STANDING | For every z in 𝔅 and every integer k, angle translation remains in 𝔅, blueprint 58–59. |
| `hS.holo` | STANDING | h holomorphic on 𝔅, blueprint 59. |
| `hS.periodic` | STANDING | For every z in 𝔅 and integer k, h is unchanged by angle translation, blueprint 59–60. |
| `hS.real` | STANDING | At every real phase point belonging to 𝔅, imaginary part of h is zero, blueprint 60. |
| `hS.bounds`, first component | STANDING | For every z in 𝔅, `‖X_h z‖ ≤ M`, blueprint 62. |
| `hS.bounds`, second component | STANDING | For every z in 𝔅, `‖DX_h z‖ ≤ M`, blueprint 62. |
| `hS.bounds`, third component | STANDING | For every z in 𝔅, `‖D²X_h z‖ ≤ M`, blueprint 62. |
| `hS.gamma_pos` | STANDING | `0 < γ`, blueprint 64. |
| `hS.dio` | STANDING | Expanded frozen `IsDiophantine`: for every `k : Fin n → ℤ`, `k ≠ 0 → γ/(∑ᵢ |kᵢ|)^τ ≤ |∑ᵢ kᵢωᵢ|`, blueprint 64 and Part 0 convention. |
| `hr` | SOURCE | `0 < r`, blueprint 799. |
| `hδ` | SOURCE | `0 < δ`, blueprint 799. |
| `hδ1` | SOURCE | `δ ≤ 1`, blueprint 799. |
| `h2δ` | SOURCE | `2δ < r`, blueprint 799. |
| `hω` | SOURCE | `‖ω‖ ≤ Θ`, blueprint 799. |
| `hK` | SOURCE | Holomorphic K on `T_r`, blueprint 799–800. |
| `hball` | SOURCE | For every θ in `T_r`, `ball(Kθ,β) ⊆ 𝔅`, blueprint 800. |
| `hDK` | SOURCE | For every θ in `T_r`, `‖DK θ‖ ≤ σK`, blueprint 800. |
| `hG`, first component | SOURCE | For every θ in `T_r`, `det G` a unit, blueprint 801. |
| `hG`, second component | SOURCE | For every θ in `T_r`, `‖G⁻¹‖ ≤ σB`, blueprint 801. |
| `hT`, first component | SOURCE | Averaged torsion invertible, blueprint 801. |
| `hT`, second component | SOURCE | Inverse norm at most σT, blueprint 801–802. |
| `hK′` | SOURCE | Holomorphic K′ on `T_r`, blueprint 802. |
| `hd` | SOURCE | For every θ in `T_r`, `‖K′θ−Kθ‖ ≤ d`, blueprint 802. |
| `hdβ` | SOURCE | `d < β`, blueprint 804. |
| `hsmall` | SOURCE | `2𝔪 C_DT d / δ² ≤ 1`, blueprint 804. |

Counts: **TYPING 16, STANDING 16, SOURCE 16, RULED 0, EXCESS 0**, counting the expanded logical components as shown. The universally bound variables within fields and the nonzero-index guard in `IsDiophantine` retain their original scopes; they are not new external assumptions. `0 ≤ d` is proved at line 349 from `hd` at zero; `0 < β` is then derived at line 350. Neither is smuggled in as an extra premise.

All six conclusions match blueprint 808–815. Widths are `r`, `r−δ`, `r−2δ` exactly. Positivity of the smaller strips is established from `h2δ`. There is no existential constant selected after K, K′, d, r, or δ: the named constants depend only on `(n,M,σK,σB,σT)`, a subset of the allowed dependencies. The full standing bundle is inherited from the explicit Part 2 standing assumption, not an excess premise specific to this lemma.

## Definition and carrier classification

**New `def` / `abbrev` / `structure`: none** in either new module (29 theorems total). No choice construction, synthetic gate, result bundle, or fallback definition was added.

Relevant existing definitions inspected:

| Definition family | Classification / semantic check |
|---|---|
| `mSize`, `Theta`, `C_X`, `C_G`, `C_B`, `C_DN`, `C_DX`, `C_DT` | Literal maxima and polynomials, `Constants.lean:66–108`; match blueprint 82, 86, 93–95. No dependence on a perturbed object or strip width. |
| `Standing`, `Params` | Literal standing-premise Prop structures; all consumed fields expanded above. |
| `sumVec`, `sumVecIso`, `colMat`, `sqMat` | Literal coordinate identifications and matrix representations. `norm_sumVec`, `norm_colMat`, `norm_sqMat` identify the max and row-sum operator norms without a dimension loss. |
| `tangentMat`, `linMat`, `normalMat`, `normalFieldMat` | Literal `DK`, `DX_h∘K`, `Ω₀ L G⁻¹`, and `A N − DN[ω]`; `Objects.lean:56–78`. |
| Frozen `gramMatrix`, `torsion`, `torsionAverage`; `avg` | The prescribed bilinear Gram matrix, torsion, and entrywise unit-cube average. `torsion_eq_mat` and `torsionAverage_eq_avg` supply actual proved bridges at the point of use. No Hermitian transpose or Fourier normalization was substituted. |

For these literal formulas: BODY_MATCH OK; PUBLIC_CARRIER OK under the existing design's total calculus/matrix conventions; WELL_DEFINEDNESS N/A_LITERAL; CHARACTERIZATION N/A_LITERAL; CHOICE_INDEPENDENCE N/A. The package's use is valid on the entire stated source domain. Standard total `fderiv`, matrix inverse, and integral definitions are not used to bypass hypotheses: holomorphy and invertibility are established before the analytic inverse identities, and continuity supplies integrability before subtracting averages. This is a use audit of the existing definitions, not a new source certification of every frozen definition against HL19.

## Constant and proof audit / adversarial pass

Write m for `mSize`.

| Stage | Checked coefficient / strip |
|---|---|
| Tangent difference | `n d/δ` on `T_(r−δ)`. |
| Transposed tangent difference | `2n d/δ`, using `cauchy_transpose_fintype` with target `Fin n ⊕ Fin n` (cardinality `n+n`), not a transpose of the already aggregated operator bound. |
| Gram difference | `(4n²m + 2nm)d/δ ≤ C_G d/δ`, `C_G=6n²m`. |
| Gram inverse | Neumann threshold `m C_G d/δ ≤ 1/2`; difference constant `2m² C_G = C_B`. |
| Normal difference | `(2nm + m C_B)d/δ = C_DN d/δ`; new normal norm `≤2m²`. |
| Normal-field difference | `2m³d + m C_DN d/δ + nΘ C_DN d/δ² ≤ C_DX d/δ²`; `C_DX = 2m³+(m+nΘ)C_DN`. |
| Torsion difference | `(4nm² C_DX + 2n C_DN C_X)d/δ² = C_DT d/δ²`. |
| Averaged inverse difference | At most `2m² C_DT d/δ²`, with threshold `m C_DT d/δ² ≤ 1/2`. |

Adversarial checks and resolutions:

1. **Possible hidden periodicity in (f): refuted.** `norm_torsionAverage_sub_le` assumes only continuity of the two real restrictions and their difference bound. Lines 282–289 rewrite the frozen averages, use `integral_sub` with continuity-derived integrability, then `norm_torusAverage_le`. No Fourier or periodic-average lemma is invoked.
2. **Possible extra factor n in the transposed estimate: refuted.** Lines 145–171 apply the coordinate Cauchy estimate after the isometry `sumVec`, identify the resulting Jacobian, and replace cardinality by n+n. The bound is exactly `2n d/δ`.
3. **Possible circular inverse/differentiability reasoning: refuted.** `frame_items` obtains the new Gram determinant unit by Neumann first. This supplies `differentiableOn_normalMat`, then the normal-field and torsion estimates. For (f), new torsion holomorphy and real continuity are proved before integration and averaged inversion.
4. **Possible assumed hard estimates in helpers: refuted at final consumption.** Conditional helpers have distinct `PerturbationAux` names. The assembly at 347–377 explicitly constructs `hd0`, `hβ`, the frame bounds, domain membership, normal-field bounds, torsion bounds, both continuity proofs, average bound, and Neumann threshold. None survives as an extra binder of `perturbation`.
5. **Possible empty-strip/negative-size escape: refuted.** The root assumes r>0 and 2δ<r; zero lies in `T_r`, forcing d≥0. The two reduced widths are positive. Some auxiliary lemmas hold without a positive-width premise (a stronger extension); the source result retains the required positivity.

## Findings

**F1 — minor, documentation only; refutation status: survived.**

- `KAM/Apost/Perturbation.lean:29` says “`norm_normalMat_le'`”, while the declaration at line 303 is `norm_normalMat_le_two`.
- `KAM/Apost/PerturbationTorsion.lean:25` says “`twist_perturb`”, while the declaration at line 293 is `twist_neumann`.
- Refutation attempt: inspected the complete new modules and their declaration inventory. Neither advertised name is declared there; the intended estimates are present under the actual names, used by the assembled theorem, and the handoff correctly names them.
- Proposed fix: change only those two names in the module docstrings. No mathematical repair or re-audit of statements is needed for that prose correction. No fix applied during this audit.

No blocking or major finding. No suspected new blueprint or pinned-source erratum, and no mathematical deviation introduced by P2-10. Existing blueprint 818–819 explicitly labels the HL19 skipped computation; the package supplies that computation rather than claiming HL19 contains it.

The supplied `pt-small` result is an input package, not changed on this branch. Its public theorem records the terminal bounds used here, not every intermediate inequality displayed in the blueprint proof. This audit certifies its consumption and the resulting perturbation lemma; it does not relabel that helper as an exact export of the whole prose proof step.

## Verification commands and output

Commands ran serially for all Lean/build activity, always at `nice -n 5`, without heartbeat or recursion overrides.

```text
$ git diff --stat main...HEAD
 KAM.lean                           |   2 +
 KAM/Apost/Perturbation.lean        | 357 ++++++++++++++++++++++++++++++++++
 KAM/Apost/PerturbationTorsion.lean | 381 +++++++++++++++++++++++++++++++++++++
 3 files changed, 740 insertions(+)

$ git diff main...HEAD -- KAM/Frozen manifest
(no output; exit 0)

$ git diff --check main...HEAD
(no output; exit 0)

$ git diff --check
(no output; exit 0)

$ wc -l KAM/Apost/Perturbation*.lean
  357 KAM/Apost/Perturbation.lean
  381 KAM/Apost/PerturbationTorsion.lean
  738 total

$ rg -n '\b(sorry|admit|axiom|unsafe|opaque|EuclideanSpace)\b|set_option' KAM/Apost/Perturbation.lean KAM/Apost/PerturbationTorsion.lean
(no matches; exit 1 as expected)

$ nice -n 5 lake build KAM.Apost.PerturbationTorsion
Build completed successfully (2912 jobs).
(exit 0; dependency build includes Perturbation; this is not a clean rebuild)

$ nice -n 5 lake env lean KAM/Apost/Perturbation.lean
(no output; exit 0)

$ nice -n 5 lake env lean KAM/Apost/PerturbationTorsion.lean
(no output; exit 0)

$ sh scripts/lint_sources.sh
check_lean_modules: PASS (237 Lean files, 0 comparator configurations)
FROZEN-ANCHOR GUARD OK
ABI HASHES OK (144 frozen declarations)
(exit 0)
```

The lint also checks generated root consistency, errata rendering, frozen-anchor ownership/quarantine, line lengths and forbidden escapes. `KAM.lean` differs only by the two expected generated imports and passes the generator's check; the audit does not infer who generated it.

### Exact-signature consumption and axioms

A Python probe generator extracted the text from `theorem perturbation (` through the final type from design Appendix A and compared it with the implementation text before `:= by`. Exact output:

```text
DESIGN_SIGNATURE_BYTE_EQUAL: True
AXIOM_PROBE_DECLARATIONS: 31
```

The temporary `.lake/abi-scratch/p210-audit-probe.lean` imported only `KAM.Apost.PerturbationTorsion`, opened the operator norm scope and project namespaces, declared the ambient variables, and restated the extracted signature as an `example` with body:

```lean
by
  exact KAM.Apost.perturbation hS hr hδ hδ1 h2δ hω hK hball hDK hG hT hK' hd hdβ hsmall
```

`nice -n 5 lake env lean .lake/abi-scratch/p210-audit-probe.lean` exited 0, with no exact-type error or warning. It printed `#print axioms` for all 29 new declarations, plus `KAM.Apost.perturbation_small` and `KAM.Apost.pt_xn_sum_le`. Every line had the form:

```text
'<fully qualified declaration>' depends on axioms: [propext, Classical.choice, Quot.sound]
```

In particular, the main result's exact output was:

```text
'KAM.Apost.perturbation' depends on axioms: [propext, Classical.choice, Quot.sound]
```

Complete checked declaration inventory (all have exactly the axiom list above):

```text
KAM.Apost.PerturbationAux.colMat_sub
KAM.Apost.PerturbationAux.sqMat_sub
KAM.Apost.PerturbationAux.tangentMat_sub
KAM.Apost.PerturbationAux.norm_tangentMat_sub
KAM.Apost.PerturbationAux.gramMatrix_sub
KAM.Apost.PerturbationAux.normalMat_sub
KAM.Apost.PerturbationAux.ball_subset_of_close
KAM.Apost.PerturbationAux.complexStrip_mono
KAM.Apost.PerturbationAux.norm_fderiv_sub_le
KAM.Apost.PerturbationAux.norm_transpose_tangentMat_sub_le
KAM.Apost.PerturbationAux.norm_transpose_tangentMat_le_four
KAM.Apost.PerturbationAux.norm_gram_sub_le
KAM.Apost.PerturbationAux.gram_inverse_perturb
KAM.Apost.PerturbationAux.norm_normalMat_sub_le
KAM.Apost.PerturbationAux.norm_normalMat_le_two
KAM.Apost.PerturbationAux.frame_items
KAM.Apost.PerturbationAux.normalFieldMat_sub
KAM.Apost.PerturbationAux.norm_normalField_combo_le
KAM.Apost.PerturbationAux.norm_linMat_sub_le
KAM.Apost.PerturbationAux.sum_abs_le_of_norm_le
KAM.Apost.PerturbationAux.norm_fderiv_normalDiff_le
KAM.Apost.PerturbationAux.norm_normalField_sub_le
KAM.Apost.PerturbationAux.norm_torsion_combo_le
KAM.Apost.PerturbationAux.norm_normalField_sub_le_strip
KAM.Apost.PerturbationAux.norm_torsion_sub_le
KAM.Apost.PerturbationAux.differentiableOn_torsion_of
KAM.Apost.PerturbationAux.norm_torsionAverage_sub_le
KAM.Apost.PerturbationAux.twist_neumann
KAM.Apost.perturbation
KAM.Apost.perturbation_small
KAM.Apost.pt_xn_sum_le
```

Provider exact-frozen-type probe: **N/A**. P2-10 is an infrastructure lemma package, not a provider, and has no frozen theorem anchor. No provider or frozen theorem import occurs in the new modules. The design-signature example above is the applicable exact-consumption check. No frozen theorem is sealed or promoted by this report.

## Closeout

All ten package/result/proof-step ledger rows classified; all six output clauses and their constants checked; no extra final-result premises; no new definitions; source replay, targeted build, lint and all 31 axiom inspections pass. Temporary probe deleted. Final source hashes rechecked against frozen-v1. Only this report was written by the auditor.

Open item: F1, two documentation-name corrections. No unresolved mathematical uncertainty within the package statement. Limits: no complete re-audit of predecessor packages or HL19, no audit of later G1/G2 assembly, and no root-closure claim. The narrower exported form of the supplied smallness helper is explicitly qualified above.
