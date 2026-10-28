# I2-2 independent package audit 1

**Verdict: PASS WITH NOTES for I2-2 (`bpI:p2:constants` and its Part 2 scalar inequalities). No material mathematical or statement-fidelity defect found. I-G1 is NOT certified seal-ready by this infrastructure package.**

Audited 2026-10-28. Requested worktree and report destination: `/root/code/KAM-inp-i22`. The explicit user destination overrides the generic brief's main-worktree destination. Read AGENTS.md, PLAN.md, DECISIONS.md, `/root/code/KAM-inp/.drafts/briefs/inp-audit-package.md`, the handoff, design v2 §§2.3/5.2/7 and Appendix A, both PART123 design audits, Track I statement, the relevant frozen I-G1/energy/bordered definitions, and blueprint Part 2 statements and proof steps. The audit is report-only; no production source, frozen file, manifest, generated file, or git state was changed by the auditor.

## Revisions and scope

The handoff revision is `db1d522a48b7642b0fabaf6e3a97f9a3c3b5d3da`. During this audit an external orchestrator merged the I-D0 fix into this same worktree, producing `0ff08507b5fd3a68d4724f0f028ad30f9a034e6c`. Both I2-2 files are byte-identical before and after that merge. Final checks below apply to the revised checkout. The fix removes `isoLimit` and `isoSLimit` from inherited `Apost/Defs`; it does not change any constant or I2-2 theorem. The final definition file hash agrees with I-D0 audit 2.

I ran the requested `git diff inp...HEAD`. Initially it selected merge base `06c424f049b3d6636d5e671a347d85fc5194c0d9` and showed the two package files plus four inherited I-D0 definition/interface files (1945 inserted lines). Git warned of multiple merge bases. The shared `inp` ref and worktree HEAD advanced during the run; later triple-dot calls selected `b28888500dcec3fe4e7f3efab6ed3660d474e06d` and included unrelated merged history, including generated `KAM.lean`. Thus that later range is not a package ownership diff. I also inspected the handoff's `git diff inp-id0...HEAD`, which initially included 92 files of unrelated history. For reproducibility, the original selected base is pinned explicitly in the final direct comparison:

```sh
git diff 06c424f049b3d6636d5e671a347d85fc5194c0d9 HEAD
git diff 06c424f049b3d6636d5e671a347d85fc5194c0d9 HEAD -- KAM/Frozen manifest KAM.lean README.md
```

The latter is **empty**. The former contains the six Lean files plus the inherited I-D0 audit/handoff documents. Package-specific review covers all **79 public theorems** in Constants (33) and ConstantsArith (46); the inherited three bridge theorems and inherited definitions are distinguished below. The two package modules introduce **no definition, abbreviation, structure, instance, provider, or frozen theorem**.

| Anchor/node | Verdict | Meaning |
|---|---|---|
| `bpI:p2:constants` / `iso_constants_spec` | PASS | Exact design signature; displayed blueprint constants and parameter dependence agree. |
| Part 2 arithmetic in design §5.2 | PASS WITH NOTES | All scalar inequalities supplied; actual analytic estimates and sequence identities belong to their downstream packages. |
| I-G1 / `KAM.Iso.isoenergetic_kam` | Not a seal candidate in I2-2 | No provider export is implemented here; exact provider-type and seal-body probes are inapplicable. No analytic I-G1 proof is inferred from this audit. |

## Critical refutation checks

1. **Constants and dependence.** `Apost/Defs.lean` has exactly the blueprint formulas for ĈS, ĈξN, Ĉg, Ĉξ, ĈΔK, ĈΔ, CP, Ĉ∂, Ĉlin, ĈE1, ĈE2, ĈE, CY, CΔ𝖳, ĉstep, ĉsum, ĉ*. Only ĉ* additionally takes μ,ν. C1 adds widths and γbar; C2 adds widths; neither depends on H,K,e,γ,ωstar or σω. `iso_constants_spec` is identical to the design Appendix A signature, independently copied into a fresh scratch theorem and proved by the actual export. Its μ,ν range is stronger than the positive source range. The separate `one_le_hatCE1`, `one_le_hatCE2`, `one_le_CDTbord` supply useful stronger positivity facts beyond the aggregate conjunction. κ≥3 follows from n≥2 and τ≥n−1; a=2κ+2≥8 is reused from K.
2. **`iso_step_small`, ConstantsArith:777.** Exactly the three scalar conclusions of `stepI:p2:st-small`: Csym ε/(γδ^(κ+1))≤1/2, d≤β/2, and 2m CΔ𝖳 d/δ²≤1. The absorption costs Θ³, Θ², Θ² are covered by ĉstep. The source gives γ≤Θ via its frequency lemma; here it is an explicit scalar premise. Positivity of γ,δ and ε≥0, δ≤1 are source ranges. No β>0 is needed for the algebraic statement; the analytic step supplies it separately. Boundary cases ε=0 and δ=1 are retained.
3. **`iso_iteration_sums`, ConstantsArith:957.** Its five majorants have exactly μ/4, ν/2, μ/4, μ/4, μ/2 as targets, with exponents a,a,a+1,a+1,a+2. The inverse-torsion majorant retains the factor 2m² CΔ𝖳. It does not claim a theorem about an actual infinite sum. Blueprint error-decay provides Σ εj/δj^i≤2e/δ0^i; these majorants then apply. Since a≥8, all needed i satisfy 0≤i≤2a−1. I2-8 must attach that sequence identity/inequality. Likewise `iso_iteration_step_small` proves the initial scalar threshold; decay and the current margin attachment remain downstream. These are distinct arithmetic helper names, not replacements for the full iteration proposition.
4. **`iso_g1_error_small`, ConstantsArith:1047.** Strict frozen smallness implies e<1 and ĉ*e/(γ⁴δ0^(2a))<1, with C1=ρ^(4τ) max(γbar⁴,ĉ*δ0^(−2a)); powers and strictness are preserved. The helper actually does not need e≥0 or positive μ,ν, making its statement stronger than the intended application. `Params` supplies positivity of ĉ*.
5. **`iso_g1_closeness_eq`, ConstantsArith:1055.** Exact equality between 2ĈΔe/(γ²δ0^a) and C2e/(γ²ρ^(2τ)). Positive widths and γ justify cancellation; no norm, exponent, or normalization changes. C3 is chosen equal to C2 downstream. No sign or size condition on e is required for this identity.
6. **Other arithmetic.** Correction bounds retain the extra |ω|S term in gL. The moving-frequency cross term remains in E_total_arith. The energy error uses ĈE2 with nΘ²(2nm+CΩ)cRĈg. The bordered torsion bound includes 8n²m⁴, the changed frequency column d, and the energy row CY. `to_inv_arith` assumes a prior norm upper bound and scalar smallness to deduce Neumann *numerical* thresholds; it does not assume or claim invertibility itself. Norm bounds on actual analytic objects must be proved by the owning analytic packages.

All explicitly bounded scalar inputs (`hx0`, `heω`, `hw`, `ha`, `hb`, `hΔ`, `hsmall`, `hXc`, etc.) are typing/range data, prior-estimate inputs, or source smallness premises of these separately named scalar helpers. None assumes the helper's own conclusion or replaces the analytic node's work. The import-closure scan of the two package modules traversed 68 KAM modules and found zero frozen-theorem/provider imports.

## Declaration inventory

Names in the first table have prefix `KAM.Iso.Apost.`; names in the second have prefix `KAM.Iso.Apost.Arith.`. Line numbers refer to the unchanged package files. PASS here means the scalar statement matches its indicated blueprint use, not that the entire analytic node is discharged.

### Constants.lean

| Node/use | Declaration (line) | Verdict | Reason |
|---|---|---|---|
| `bpI:p2:constants` | `three_le_kappa` (37) | PASS | Positivity or literal max/sum ordering; source Params when needed. |
| `bpI:p2:constants` | `one_le_hatCS` (45) | PASS | Positivity or literal max/sum ordering; source Params when needed. |
| `bpI:p2:constants` | `one_le_hatCxiN` (48) | PASS | Positivity or literal max/sum ordering; source Params when needed. |
| `bpI:p2:constants` | `one_le_hatCg` (57) | PASS | Positivity or literal max/sum ordering; source Params when needed. |
| `bpI:p2:constants` | `one_le_hatCxi` (69) | PASS | Positivity or literal max/sum ordering; source Params when needed. |
| `bpI:p2:constants` | `one_le_hatCDK` (72) | PASS | Positivity or literal max/sum ordering; source Params when needed. |
| `bpI:p2:constants` | `one_le_hatCDelta` (77) | PASS | Positivity or literal max/sum ordering; source Params when needed. |
| `bpI:p2:constants` | `one_le_CP` (80) | PASS | Positivity or literal max/sum ordering; source Params when needed. |
| `bpI:p2:constants` | `one_le_hatCpartial` (89) | PASS | Positivity or literal max/sum ordering; source Params when needed. |
| `bpI:p2:constants` | `one_le_hatClin` (99) | PASS | Positivity or literal max/sum ordering; source Params when needed. |
| `bpI:p2:constants` | `one_le_hatCE1` (111) | PASS | Positivity or literal max/sum ordering; source Params when needed. |
| `bpI:p2:constants` | `one_le_hatCE2` (127) | PASS | Positivity or literal max/sum ordering; source Params when needed. |
| `bpI:p2:constants` | `one_le_hatCE` (147) | PASS | Positivity or literal max/sum ordering; source Params when needed. |
| `bpI:p2:constants` | `one_le_CY` (150) | PASS | Positivity or literal max/sum ordering; source Params when needed. |
| `bpI:p2:constants` | `C_DT_le_CDTbord` (161) | PASS | Positivity or literal max/sum ordering; source Params when needed. |
| `bpI:p2:constants` | `one_le_CDTbord` (169) | PASS | Positivity or literal max/sum ordering; source Params when needed. |
| `bpI:p2:constants` | `one_le_mSize_mul_CDTbord` (172) | PASS | Positivity or literal max/sum ordering; source Params when needed. |
| `bpI:p2:constants` | `one_le_hatcStep` (176) | PASS | Positivity or literal max/sum ordering; source Params when needed. |
| `bpI:p2:constants` | `one_le_hatcSum` (184) | PASS | Positivity or literal max/sum ordering; source Params when needed. |
| `bpI:p2:constants` | `one_le_hatcStar` (193) | PASS | Positivity or literal max/sum ordering; source Params when needed. |
| `bpI:p2:constants` | `hatCDK_le_hatCDelta` (202) | PASS | Positivity or literal max/sum ordering; source Params when needed. |
| `bpI:p2:constants` | `Theta_sq_mul_hatCS_le_hatCDelta` (205) | PASS | Positivity or literal max/sum ordering; source Params when needed. |
| `bpI:p2:constants` | `C_xi0_le_hatCS` (209) | PASS | Positivity or literal max/sum ordering; source Params when needed. |
| `bpI:p2:constants` | `mSize_mul_Theta_add_le_hatCS` (211) | PASS | Positivity or literal max/sum ordering; source Params when needed. |
| `bpI:p2:constants` | `cR_mul_hatCg_le_hatCxi` (216) | PASS | Positivity or literal max/sum ordering; source Params when needed. |
| `bpI:p2:constants` | `Theta_mul_hatCxiN_le_hatCxi` (219) | PASS | Positivity or literal max/sum ordering; source Params when needed. |
| `bpI:p2:constants` | `hatCE1_le_hatCE` (222) | PASS | Positivity or literal max/sum ordering; source Params when needed. |
| `bpI:p2:constants` | `hatCE2_le_hatCE` (224) | PASS | Positivity or literal max/sum ordering; source Params when needed. |
| `bpI:p2:constants` | `two_rpow_mul_hatCE_le_hatcStar` (226) | PASS | Positivity or literal max/sum ordering; source Params when needed. |
| `bpI:p2:constants` | `hatcStep_mul_max_le_hatcStar` (230) | PASS | Positivity or literal max/sum ordering; source Params when needed. |
| `bpI:p2:constants` | `two_mul_hatcSum_div_le_hatcStar` (234) | PASS | Positivity or literal max/sum ordering; source Params when needed. |
| `bpI:p2:constants` | `four_Theta_sq_mul_hatCDelta_div_le_hatcStar` (238) | PASS | Positivity or literal max/sum ordering; source Params when needed. |
| `bpI:p2:constants` | `iso_constants_spec` (243) | PASS | Exact Appendix A conjunction; independent signature probe. |

### ConstantsArith.lean

| Node/use | Declaration (line) | Verdict | Reason |
|---|---|---|---|
| `co-xi / powers` | `rpow_aExp_eq` (54) | PASS | δ^a=δ^(κ+1)δ^(κ+1), positive δ. |
| `co-xi / powers` | `rpow_kappa_add_two` (62) | PASS | Splits κ+2 with no extra source assumption. |
| `ne-est / powers` | `rpow_aExp_sq` (69) | PASS | (δ^a)²=δ^(2a). |
| `co-absorb` | `absorb_kappa_succ` (81) | PASS | γ≤Θ, δ≤1 and exponent ordering. |
| `co-xi0` | `sStar_second` (95) | PASS | Second bordered RHS entry including energy discrepancy. |
| `co-xi0` | `sStar_arith` (141) | PASS | Maximum of both bordered RHS entries. |
| `co-xi` | `xiN_arith` (161) | PASS | Adds ΓHN to an explicitly bounded scalar x0. |
| `co-xi` | `gL_arith` (189) | PASS | Includes moving-frequency term wS, w≤Θ. |
| `co-xi` | `xiL_eq` (243) | PASS | Exact cohomological majorant identity. |
| `co-xi` | `xiL_le_hatCxi` (257) | PASS | Max constant covers cRĈg. |
| `co-xi` | `xiN_le_hatCxi` (266) | PASS | Absorbs normal bound into γ²δ^a. |
| `co-xi` | `hatCDK_arith` (276) | PASS | Exact frame multiplication identity. |
| `co-xi` | `hatCDK_le_dStep` (283) | PASS | ĈΔK≤ĈΔ on nonnegative error. |
| `co-dxi` | `etaN_arith` (289) | PASS | 2nmε covered by Ĉg/(γδ^(κ+2)). |
| `co-omega` | `dOmega_arith` (331) | PASS | Retains Θ²ĈS cost. |
| `co-omega` | `Theta_sq_hatCS_le_dStep` (351) | PASS | Frequency majorant bounded by d. |
| `co-dk` | `dP_arith` (359) | PASS | CP/δ from ε≤1 and δ≤1; stronger ε range. |
| `co-dk` | `dPxi_arith` (380) | PASS | Both product derivative terms included. |
| `ne-est` | `lin_arith` (423) | PASS | Three terms including ΩKωξω; ε can be any real. |
| `ne-total` | `quad_le` (471) | PASS | M≤m and a square; ε can be any real. |
| `ne-est` | `E_total_arith` (487) | PASS | Linear, quadratic and moving-frequency cross terms. |
| `ne-energy` | `energy_total_arith` (542) | PASS | Tangential energy defect plus quadratic remainder. |
| `to-omega` | `to_omega_arith` (620) | PASS | Explicit prior scalar bounds yield 8n²m⁴d/δ. |
| `to-row` | `to_row_arith` (631) | PASS | CY includes both DH and frame increments. |
| `to-avg` | `to_avg_arith` (653) | PASS | Both bordered block rows bounded by CΔ𝖳d/δ². |
| `to-inv` | `to_inv_arith` (686) | PASS | Scalar Neumann thresholds only, no inverse assumed. |
| `to-frame` | `C_DT_small_of_CDTbord` (711) | PASS | Larger bordered constant gives old scalar threshold. |
| `st-small / auxiliary` | `two_pow_mul_le_aux` (727) | PASS | Elementary constant ordering; Θ≥1 and nonnegative factors. |
| `st-small / auxiliary` | `two_Theta_cube_mul_C_sym_le_hatcStep` (735) | PASS | Elementary constant ordering; Θ≥1 and nonnegative factors. |
| `st-small / auxiliary` | `two_Theta_sq_mul_hatCDelta_le_hatcStep` (742) | PASS | Elementary constant ordering; Θ≥1 and nonnegative factors. |
| `st-small / auxiliary` | `Theta_sq_mul_two_mSize_CDTbord_hatCDelta_le_hatcStep` (754) | PASS | Elementary constant ordering; Θ≥1 and nonnegative factors. |
| `st-small` | `iso_step_small` (777) | PASS | All three thresholds, with correct 1/2 factors. |
| `error-decay / it-sums` | `iso_error_decay_hyp` (836) | PASS | 2^(2a)ĈE threshold from ĉ*. |
| `it-sums` | `iso_c_sum_small` (844) | PASS | ĉsum X≤μ/2. |
| `it-stepsmall` | `iso_iteration_step_small` (863) | PASS | ĉstep X≤min(1,μ/2); actual iterate attachment deferred. |
| `it-sums / auxiliary` | `sum_coef_le_gen` (892) | PASS | General scalar majorant; no assertion of a real series. |
| `it-sums / constants` | `four_Theta_sq_mul_hatCDelta_le_hatcSum` (909) | PASS | ĉsum dominates the indicated coefficient with factor 4Θ². |
| `it-sums / constants` | `four_Theta_sq_mul_n_mul_hatCDelta_le_hatcSum` (919) | PASS | ĉsum dominates the indicated coefficient with factor 4Θ². |
| `it-sums / constants` | `four_Theta_sq_mul_C_B_mul_hatCDelta_le_hatcSum` (929) | PASS | ĉsum dominates the indicated coefficient with factor 4Θ². |
| `it-sums / constants` | `four_Theta_sq_mul_mSize_sq_CDTbord_hatCDelta_le_hatcSum` (939) | PASS | ĉsum dominates the indicated coefficient with factor 4Θ². |
| `it-sums` | `iso_iteration_sums` (957) | PASS | Five scalar majorants; sequence sums remain downstream. |
| `lim-close` | `iso_closeness_le` (1012) | PASS | Both μ/4 and ν/2 numeric bounds. |
| `g1-constants` | `isoC1_pos` (1035) | PASS | Positive ρ and γbar suffice; stronger source range. |
| `g1-constants` | `isoC2_pos` (1040) | PASS | Positive widths and Params. |
| `g1-e` | `iso_g1_error_small` (1047) | PASS | Strict thresholds and powers preserved. |
| `g1-o` | `iso_g1_closeness_eq` (1055) | PASS | Exact frozen normalization identity. |

## Definition classification

**Package-owned definitions: none.** ConstantsArith adds only theorems about ℝ. No junk value or fallback is introduced or used by I2-2.

The four inherited I-D0 files were read to check meaning and dependence; I-D0's two current audit reports supply its separate admission history. Their classifications are:

| Inherited objects | Classification and audit conclusion |
|---|---|
| `Setting`, `IsoStanding`, `AdmissibleNoTwist`, `IsoAdmissible`, `IterHyp` | Source premises/range records; no iteration or limit conclusion assumed. Part 1 Setting retains the documented K range specialization τ≥n−1. |
| `energyRow`, `bordMat`, `bordAvg`, `bordSol`, `bordXi0`, `bordXiOmega`, `bordXiN`, `bordGL`, `bordXiL`, `isoLinError`, `isoResidual`, `bordOp`; `BordData` | Explicit bordered formulas/data. Inverse/derivative/cohomological operators use Lean's total extensions outside their analytic guards; I2-2 relies only on constant formulas, never those off-guard values. |
| `hatCS`, `hatCxiN`, `hatCg`, `hatCxi`, `hatCDK`, `hatCDelta`, `CP`, `hatCpartial`, `hatClin`, `hatCE1`, `hatCE2`, `hatCE`, `CY`, `CDTbord`, `hatcStep`, `hatcSum`, `hatcStar`, `dStep`, `isoC1`, `isoC2` | Explicit finite scalar formulas, exact blueprint definitions on the source carrier. Real division/powers outside positive parameter ranges make total extensions; every estimate checks its needed positive denominators. |
| `rayMargin`, `isoBordData`, `isoXi`, `isoXiOmega`, `isoCorrection`, `isoNewS`, `isoNewtonMap`, `isoQuadX`, `isoQuadH`, `isoEpsSeq`, `isoDSeq`, `isoSeq` | Explicit formulas, recurrence or documented strip piecewise extension. They do not choose a solution by assuming an analytic theorem. |
| `IG1Body`, `IG1Statement`, `G3Statement` | Proposition definitions of upstream frozen types, not assumed local conclusions. Scratch definitional-equality checks against the frozen exports are recorded below. |
| `rhoIso`, `dB`, `eta1`, `sSet`, `mhConst`, `MgConst`, `ShConst`, `nuConst`, `sigmaOmegaConst`, `sigmaKConst`, `sigmaTConst`, `epsT` | Explicit Part 3 constants/extrema. Analytic estimates of extrema need the compact/nonempty source carrier; none is consumed by this arithmetic package. |
| `perp`, `det2`, `aCoord`, `bCoord`, `slope`, `hessR`, `chartDom`, `chartM`, `chartPhi`, `jac2`, `flatRemainder` | Explicit geometric formulas. Source charts enforce nonzero denominators/analyticity; no use of arbitrary division-at-zero values by I2-2. |
| `IsPatch`, `IsPatch.toEnergyPatch`, `IsRay`, `ToriSide` | Source patch/ray/output predicates and record assembly. Outputs are not imported as proved inputs to I2-2. |
| `isoLimit`, `isoSLimit` | Present in the initial pre-fix inherited snapshot; removed by the external I-D0 merge before final audit. No convergence/limit meaning certified here. They remain deferred to I2-9 with their actual characterization proofs. |

The inherited bridge theorems are `Linear.extendedTorsion_eq_bordMat`, `Charts.fractD_eq_domainD`, `Charts.totalH_eq_hbold`: explicit `ext`/`rfl` identities, not new analytic source results.

## Verification receipts

All paths and commands below are relative to `/root/code/KAM-inp-i22` unless absolute. The initial targeted build and kernel replay both exited 0. After the external I-D0 merge the targeted build and complete axiom/signature probe were rerun against the final checkout; see the final receipts below.

**Procedural deviation by this auditor:** I initially started `sh scripts/lint_sources.sh` as a shell-only check without realizing that its final `abi_hashes.py` stage launches `lake env lean`. That first lint invocation was unprefixed and overlapped kernel replay, so it did not meet the requested serialization/thread/priority discipline. I identified the script's subprocess, let those calls finish, then reran lint serially under `LEAN_NUM_THREADS=1 nice -n 5`, with no concurrent audit-owned Lean call, before the final build/probe/replay. Subsequent audit-owned Lean commands run sequentially at the required priority and thread count. This workflow deviation is not attributed to the prover and is not concealed as a clean first-run receipt.

The serial lint command was:

```sh
LEAN_NUM_THREADS=1 nice -n 5 sh scripts/lint_sources.sh
```

Exit **1**, solely the allowed generated-root exception. Complete output:

```text
KAM.lean is out of date; run scripts/gen_root_imports.py
check_lean_modules: PASS (334 Lean files, 0 comparator configurations)
FROZEN-ANCHOR GUARD OK
ABI HASHES OK (144 frozen declarations)
```

The initial lint wrapper returned the status of `cat`; only the serial rerun's captured exit status above is used as the definitive receipt. No regeneration was performed.

`git diff --check` against the pinned selected base exits 0. Constants has 255 lines, ConstantsArith 1062; all six Lean files are below 1500. Module headers, public section, public interface imports and docstrings pass the module checker. No forbidden proof escape, resource override, EuclideanSpace, frozen edit or provider import was found. `nlinarith` usage is an optional style consideration only; no heartbeat failure or resource-budget override occurred.

## Blueprint/source issues and remaining scope

No new suspected pinned-source defect or material blueprint contradiction was found. The original HL19 PDF was not independently re-audited in this scalar Lean package audit. Blueprint `p2-iso-iteration.tex:369` already records E4 (HL19 (6.51), p.53 versus (3.16), differing γ/ρ exponents) and E5 (invariance error E versus combined error Ec). These inherited source candidates are not fresh confirmations. The actual code keeps the combined scalar ε and frozen γ²ρ^(2τ) closeness normalization.

No replacement block is required for I2-2. The advertised Part 3 inequalities `ap-ray`, `to-neumann`, `to-torsion` remain assigned to Charts; I2-8 must attach the proved scalar bounds to the actual sequences; the analytic correction, step, convergence, energy passage and provider assembly remain separate work. Neither the design acceptance nor these 79 theorem proofs closes I-G1.

## Final checkout receipts

Final checked HEAD: `0ff08507b5fd3a68d4724f0f028ad30f9a034e6c`.

```sh
LEAN_NUM_THREADS=1 /mnt/HC_Volume_106379410/orchestrator-tools/inp_lake_build.sh /root/code/KAM-inp-i22 KAM.Iso.Apost.ConstantsArith
```

Exit **0**. This is one targeted incremental gated build; the gate runs `nice -n 5 lake build`.

```text
[inp-gate] slot 1 acquired 02:09:45 for KAM.Iso.Apost.ConstantsArith
✔ [3180/3183] Built KAM.Iso.Apost.Defs (3.6s)
✔ [3182/3188] Built KAM.Iso.Apost.Constants (3.7s)
✔ [3197/3197] Built KAM.Iso.Apost.ConstantsArith (13s)
Build completed successfully (3197 jobs).
```

```sh
LEAN_NUM_THREADS=1 nice -n 5 lake env lean .lake/abi-scratch/I22Audit.lean
```

Exit **0**, zero errors/warnings. The scratch file imports the actual two package modules and the inherited Charts definitions, queries all 79 public package theorems plus the three inherited bridge theorems, and proves these checks without sorry:

```lean
-- audit_spec has the signature independently extracted from Appendix A:
-- theorem audit_spec ... := iso_constants_spec hP μ ν
example : (type_of% @KAM.Iso.isoenergetic_kam) = KAM.Iso.Charts.IG1Statement := rfl
example : (type_of% @KAM.volume_not_diophantine_le) = KAM.Iso.Charts.G3Statement := rfl
```

The scratch imports of frozen theorems are for type comparisons only; no frozen theorem is used to prove a package theorem. All **82/82** queried theorem axiom sets are exactly `[propext, Classical.choice, Quot.sound]`; no `sorryAx` or additional axiom occurs. Exact complete axiom output follows:

```text
'KAM.Iso.Apost.three_le_kappa' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.one_le_hatCS' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.one_le_hatCxiN' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.one_le_hatCg' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.one_le_hatCxi' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.one_le_hatCDK' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.one_le_hatCDelta' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.one_le_CP' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.one_le_hatCpartial' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.one_le_hatClin' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.one_le_hatCE1' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.one_le_hatCE2' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.one_le_hatCE' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.one_le_CY' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.C_DT_le_CDTbord' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.one_le_CDTbord' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.one_le_mSize_mul_CDTbord' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.one_le_hatcStep' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.one_le_hatcSum' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.one_le_hatcStar' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.hatCDK_le_hatCDelta' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.Theta_sq_mul_hatCS_le_hatCDelta' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.C_xi0_le_hatCS' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.mSize_mul_Theta_add_le_hatCS' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.cR_mul_hatCg_le_hatCxi' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.Theta_mul_hatCxiN_le_hatCxi' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.hatCE1_le_hatCE' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.hatCE2_le_hatCE' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.two_rpow_mul_hatCE_le_hatcStar' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.hatcStep_mul_max_le_hatcStar' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.two_mul_hatcSum_div_le_hatcStar' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.four_Theta_sq_mul_hatCDelta_div_le_hatcStar' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.iso_constants_spec' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.Arith.rpow_aExp_eq' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.Arith.rpow_kappa_add_two' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.Arith.rpow_aExp_sq' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.Arith.absorb_kappa_succ' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.Arith.sStar_second' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.Arith.sStar_arith' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.Arith.xiN_arith' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.Arith.gL_arith' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.Arith.xiL_eq' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.Arith.xiL_le_hatCxi' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.Arith.xiN_le_hatCxi' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.Arith.hatCDK_arith' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.Arith.hatCDK_le_dStep' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.Arith.etaN_arith' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.Arith.dOmega_arith' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.Arith.Theta_sq_hatCS_le_dStep' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.Arith.dP_arith' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.Arith.dPxi_arith' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.Arith.lin_arith' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.Arith.quad_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.Arith.E_total_arith' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.Arith.energy_total_arith' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.Arith.to_omega_arith' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.Arith.to_row_arith' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.Arith.to_avg_arith' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.Arith.to_inv_arith' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.Arith.C_DT_small_of_CDTbord' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.Arith.two_pow_mul_le_aux' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.Arith.two_Theta_cube_mul_C_sym_le_hatcStep' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.Arith.two_Theta_sq_mul_hatCDelta_le_hatcStep' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.Arith.Theta_sq_mul_two_mSize_CDTbord_hatCDelta_le_hatcStep' depends on axioms: [propext,
 Classical.choice,
 Quot.sound]
'KAM.Iso.Apost.Arith.iso_step_small' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.Arith.iso_error_decay_hyp' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.Arith.iso_c_sum_small' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.Arith.iso_iteration_step_small' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.Arith.sum_coef_le_gen' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.Arith.four_Theta_sq_mul_hatCDelta_le_hatcSum' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.Arith.four_Theta_sq_mul_n_mul_hatCDelta_le_hatcSum' depends on axioms: [propext,
 Classical.choice,
 Quot.sound]
'KAM.Iso.Apost.Arith.four_Theta_sq_mul_C_B_mul_hatCDelta_le_hatcSum' depends on axioms: [propext,
 Classical.choice,
 Quot.sound]
'KAM.Iso.Apost.Arith.four_Theta_sq_mul_mSize_sq_CDTbord_hatCDelta_le_hatcSum' depends on axioms: [propext,
 Classical.choice,
 Quot.sound]
'KAM.Iso.Apost.Arith.iso_iteration_sums' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.Arith.iso_closeness_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.Arith.isoC1_pos' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.Arith.isoC2_pos' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.Arith.iso_g1_error_small' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.Arith.iso_g1_closeness_eq' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Linear.extendedTorsion_eq_bordMat' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.fractD_eq_domainD' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.totalH_eq_hbold' depends on axioms: [propext, Classical.choice, Quot.sound]
```

| Inherited node | Declaration | Verdict | Reason |
|---|---|---|---|
| `p1:extended-basic` bridge | `KAM.Iso.Linear.extendedTorsion_eq_bordMat` | PASS | Exact frozen blocks, ext/rfl; clean axioms. |
| Part 3 domain bridge | `KAM.Iso.Charts.fractD_eq_domainD` | PASS | Definitional identity; clean axioms. |
| Part 3 Hamiltonian bridge | `KAM.Iso.Charts.totalH_eq_hbold` | PASS | Definitional identity; clean axioms. |

Final hashes:

```text
5eebbd91538a1718ffa726904f65181dc6391dda334313587fe15d0d07fa4f6b  KAM/Iso/Apost/Constants.lean
53764012f163c90761052d35b52d24781d1d05d7efabb1d73e3072b6c6918227  KAM/Iso/Apost/ConstantsArith.lean
bfe66bba3354dbcd66b5bbaa2dab630018b6fb44259e31cad47a319032bb8163  KAM/Iso/Apost/Defs.lean
```

Final kernel replay command (one invocation, all six reviewed modules):

```sh
LEAN_NUM_THREADS=1 nice -n 5 lake env leanchecker --verbose KAM.Iso.Apost.Constants KAM.Iso.Apost.ConstantsArith KAM.Iso.Apost.Defs KAM.Iso.Linear.Defs KAM.Iso.Charts.Inputs KAM.Iso.Charts.Defs
```

Exit **0**. Complete output:

```text
replaying KAM.Iso.Charts.Defs
replaying KAM.Iso.Charts.Inputs
replaying KAM.Iso.Linear.Defs
replaying KAM.Iso.Apost.Defs
replaying KAM.Iso.Apost.ConstantsArith
replaying KAM.Iso.Apost.Constants
```

Scratch `I22Audit.lean` was deleted after extracting these receipts. Final `git diff --check` exits 0; working-tree status contains only this new report and the pre-existing untracked prover handoff. Audit deliverable: this report only. No source fixes, seal, commit, or push was performed by the auditor.
