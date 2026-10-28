# I2-7 independent audit 1

Verdict: **PASS WITH NOTES** for I2-7 (`bpI:p2:schedule`, `bpI:p2:error-decay`). No material defect found. The inherited I2-2 constant/arithmetic declarations in the requested diff also pass the checks below. **No frozen anchor is proved or seal-ready as a result of this package.** I-G1 remains a separate assembly/proof obligation; the provider/frozen-type and literal seal-body tests are not applicable because this package adds no provider.

Audited on 2026-10-28 in `/root/code/KAM-inp-i27`, HEAD `d75c0fe2cdd9f07bcbe68ff39c7d77b7e52dd8da`. Report destination follows the user's explicit worktree instruction, overriding the generic brief's main-worktree destination. Only this report is a repository edit.

## Scope and comparison

Read AGENTS.md, PLAN.md, DECISIONS.md, the supplied audit brief and handoff, Track I statement and frozen theorem declarations, the relevant definitions, blueprint Part 2, design v2 and both design audits. Primary comparison: `git diff inp...HEAD`, with inp at `9f8e018c769d276602fb0cb08d809b3cd6bae31c`.

Git warns `inp...HEAD: multiple merge bases, using 44f77f3f65d43cab9088fe4e2b5b7c2772d61778`. Under that requested comparison the entire diff is three new Lean files: Constants (255 lines), ConstantsArith (1062), Schedule (276), totaling 1593 inserted lines. I reviewed all three, rather than silently using a different base. Constants and ConstantsArith are byte-identical to `inp-i22` at `85bde5a9833d68a5d3f07a32eff0fbb3fdf4d32e` (`git diff inp-i22 HEAD --` those paths is empty). The handoff's alternate `inp-i22...HEAD` comparison includes unrelated upstream changes as well as Schedule; it is not the primary audit boundary.

## Refutation results

1. **Exact decay contract:** Schedule:255–269 agrees with design v2:1533–1547 and blueprint-I/parts/p2-iso-iteration.tex:261–265. In scratch I extracted the design's declaration, renamed it, replaced its draft body with `by exact iso_error_decay hP hρinf hρ hγ he hq`, and proved definitional equality of its type and the production theorem with `rfl`. Thus binder order, constants, the four gamma powers, real exponent `2a`, natural exponent `2^s - 1`, weighted range and summability are preserved. Params contains only the standing inequalities and positive bounds (KAM/Apost/Standing.lean:41–48); no iterative estimate is assumed.
2. **Schedule reuse:** KAM/Apost/Schedule.lean:47–49 defines exactly the blueprint's delta and radius sequences; Constants:119 defines `delta0 = min 1 ((ρ-ρinf)/8)`. The theorem `KAM.Apost.schedule` at Schedule:114–129 proves `r₀=ρ`, the radius recurrence, `ρinf ≤ ρ-8δ₀ < r_s`, `δ_s ≤ 1`, and `4δ_s < r_s` under precisely `0<ρinf<ρ`. It is available through the public import chain Schedule → Iso.Constants → Iso.Defs → Apost.Schedule. The two remaining sequences are the actual I-D0 definitions (Iso/Apost/Defs.lean:166–174), using hatCE and hatCDelta. No false identification with K's different error sequence is used.
3. **Decay proof:** the recurrence is rewritten as `Q' 2^(2as) ε_s²`; `quadratic_iteration_linear` supplies the superexponential estimate. Nonnegativity includes `e=0`; at `s=0`, natural subtraction gives exponent zero as required. The proof uses `0≤q≤1`, not a strict threshold. Weighted bounds divide only by positive powers of positive delta; geometric comparison has ratio `2^(-(2a-j))≤1/2`, so the sum constant is exactly 2. The endpoint `j=2a` is only a pointwise bound, while sums stop at `2a-1`.
4. **Helpers:** the weighted and sum helpers allow negative real j, strengthening the blueprint's `j≥0` version. The finite sum helper requires `X≥0` and uses genuine summability and nonnegative summands. `isoDSeq_eq` is an unconditional identity, valid even with Lean's totalized division. Unused `hρinf` in the final packaging theorem matches the design; the substantive bounds hold under the weaker positive-delta assumptions.
5. **Inherited arithmetic:** all constants retain their syntactic parameter dependence; only hatcStar adds μ,ν. The abstract arithmetic helpers have distinct names and explicitly state intermediate bounds, positivity, `γ≤Theta`, `δ≤1` and smallness when used. These are conditional scalar implications for the corresponding correction/Newton/torsion/iteration steps, not substitutes for the missing analytic steps. Checked `a=2κ+2`, `κ≥3`, `a≥8`, the mixed-error absorption from gamma cubed to gamma fourth, the extra moving-frequency torsion term `8n²m⁴d/δ`, and derivative-weighted iteration budgets. No unbordered twist or frozen theorem/provider premise enters the changed files.

## Declaration inventory

One row per new public declaration in the requested diff, plus the reused schedule node. Prefix A means `KAM.Iso.Apost`; R means `KAM.Iso.Apost.Arith`. Line numbers are in the named module. Scalar arithmetic helper rows certify their displayed conditional implication and correspondence to the indicated step, not completion of that analytic node.

| Node / module:line | Declaration | Verdict | Reason |
|---|---|---|---|
| p2:schedule / KAM/Apost/Schedule:114 | `KAM.Apost.schedule` (reused) | PASS | All geometric schedule conclusions; unchanged carrier and widths. |
| constants / Constants:37 | `A.three_le_kappa` | PASS | Standing-data positivity/order of the explicit constants. |
| constants / Constants:45 | `A.one_le_hatCS` | PASS | Standing-data positivity/order of the explicit constants. |
| constants / Constants:48 | `A.one_le_hatCxiN` | PASS | Standing-data positivity/order of the explicit constants. |
| constants / Constants:57 | `A.one_le_hatCg` | PASS | Standing-data positivity/order of the explicit constants. |
| constants / Constants:69 | `A.one_le_hatCxi` | PASS | Standing-data positivity/order of the explicit constants. |
| constants / Constants:72 | `A.one_le_hatCDK` | PASS | Standing-data positivity/order of the explicit constants. |
| constants / Constants:77 | `A.one_le_hatCDelta` | PASS | Standing-data positivity/order of the explicit constants. |
| constants / Constants:80 | `A.one_le_CP` | PASS | Standing-data positivity/order of the explicit constants. |
| constants / Constants:89 | `A.one_le_hatCpartial` | PASS | Standing-data positivity/order of the explicit constants. |
| constants / Constants:99 | `A.one_le_hatClin` | PASS | Standing-data positivity/order of the explicit constants. |
| constants / Constants:111 | `A.one_le_hatCE1` | PASS | Standing-data positivity/order of the explicit constants. |
| constants / Constants:127 | `A.one_le_hatCE2` | PASS | Standing-data positivity/order of the explicit constants. |
| constants / Constants:147 | `A.one_le_hatCE` | PASS | Standing-data positivity/order of the explicit constants. |
| constants / Constants:150 | `A.one_le_CY` | PASS | Standing-data positivity/order of the explicit constants. |
| constants / Constants:161 | `A.C_DT_le_CDTbord` | PASS | Direct constant dominance; no additional dependence. |
| constants / Constants:169 | `A.one_le_CDTbord` | PASS | Standing-data positivity/order of the explicit constants. |
| constants / Constants:172 | `A.one_le_mSize_mul_CDTbord` | PASS | Standing-data positivity/order of the explicit constants. |
| constants / Constants:176 | `A.one_le_hatcStep` | PASS | Standing-data positivity/order of the explicit constants. |
| constants / Constants:184 | `A.one_le_hatcSum` | PASS | Standing-data positivity/order of the explicit constants. |
| constants / Constants:193 | `A.one_le_hatcStar` | PASS | Standing-data positivity/order of the explicit constants. |
| constants / Constants:202 | `A.hatCDK_le_hatCDelta` | PASS | Direct constant dominance; no additional dependence. |
| constants / Constants:205 | `A.Theta_sq_mul_hatCS_le_hatCDelta` | PASS | Direct constant dominance; no additional dependence. |
| constants / Constants:209 | `A.C_xi0_le_hatCS` | PASS | Direct constant dominance; no additional dependence. |
| constants / Constants:211 | `A.mSize_mul_Theta_add_le_hatCS` | PASS | Direct constant dominance; no additional dependence. |
| constants / Constants:216 | `A.cR_mul_hatCg_le_hatCxi` | PASS | Direct constant dominance; no additional dependence. |
| constants / Constants:219 | `A.Theta_mul_hatCxiN_le_hatCxi` | PASS | Direct constant dominance; no additional dependence. |
| constants / Constants:222 | `A.hatCE1_le_hatCE` | PASS | Direct constant dominance; no additional dependence. |
| constants / Constants:224 | `A.hatCE2_le_hatCE` | PASS | Direct constant dominance; no additional dependence. |
| constants / Constants:226 | `A.two_rpow_mul_hatCE_le_hatcStar` | PASS | Direct constant dominance; no additional dependence. |
| constants / Constants:230 | `A.hatcStep_mul_max_le_hatcStar` | PASS | Direct constant dominance; no additional dependence. |
| constants / Constants:234 | `A.two_mul_hatcSum_div_le_hatcStar` | PASS | Direct constant dominance; no additional dependence. |
| constants / Constants:238 | `A.four_Theta_sq_mul_hatCDelta_div_le_hatcStar` | PASS | Direct constant dominance; no additional dependence. |
| constants / Constants:243 | `A.iso_constants_spec` | PASS | Full blueprint constant claims assembled, including κ≥3 and a≥8. |
| power identities / ConstantsArith:54 | `R.rpow_aExp_eq` | PASS | Positive-base real power identity; no estimate assumed. |
| power identities / ConstantsArith:62 | `R.rpow_kappa_add_two` | PASS | Positive-base real power identity; no estimate assumed. |
| power identities / ConstantsArith:69 | `R.rpow_aExp_sq` | PASS | Positive-base real power identity; no estimate assumed. |
| correction scalar helper / ConstantsArith:81 | `R.absorb_kappa_succ` | PASS | Explicit scalar absorption of the correction bounds. |
| correction scalar helper / ConstantsArith:95 | `R.sStar_second` | PASS | Explicit scalar absorption of the correction bounds. |
| correction scalar helper / ConstantsArith:141 | `R.sStar_arith` | PASS | Explicit scalar absorption of the correction bounds. |
| correction scalar helper / ConstantsArith:161 | `R.xiN_arith` | PASS | Explicit scalar absorption of the correction bounds. |
| correction scalar helper / ConstantsArith:189 | `R.gL_arith` | PASS | Explicit scalar absorption of the correction bounds. |
| correction scalar helper / ConstantsArith:243 | `R.xiL_eq` | PASS | Explicit scalar absorption of the correction bounds. |
| correction scalar helper / ConstantsArith:257 | `R.xiL_le_hatCxi` | PASS | Explicit scalar absorption of the correction bounds. |
| correction scalar helper / ConstantsArith:266 | `R.xiN_le_hatCxi` | PASS | Explicit scalar absorption of the correction bounds. |
| correction scalar helper / ConstantsArith:276 | `R.hatCDK_arith` | PASS | Explicit scalar absorption of the correction bounds. |
| correction scalar helper / ConstantsArith:283 | `R.hatCDK_le_dStep` | PASS | Explicit scalar absorption of the correction bounds. |
| correction scalar helper / ConstantsArith:289 | `R.etaN_arith` | PASS | Explicit scalar absorption of the correction bounds. |
| correction scalar helper / ConstantsArith:331 | `R.dOmega_arith` | PASS | Explicit scalar absorption of the correction bounds. |
| correction scalar helper / ConstantsArith:351 | `R.Theta_sq_hatCS_le_dStep` | PASS | Explicit scalar absorption of the correction bounds. |
| correction scalar helper / ConstantsArith:359 | `R.dP_arith` | PASS | Explicit scalar absorption of the correction bounds. |
| correction scalar helper / ConstantsArith:380 | `R.dPxi_arith` | PASS | Explicit scalar absorption of the correction bounds. |
| newton-error scalar helper / ConstantsArith:423 | `R.lin_arith` | PASS | Scalar error terms absorbed into the stated quadratic constant. |
| newton-error scalar helper / ConstantsArith:471 | `R.quad_le` | PASS | Scalar error terms absorbed into the stated quadratic constant. |
| newton-error scalar helper / ConstantsArith:487 | `R.E_total_arith` | PASS | Scalar error terms absorbed into the stated quadratic constant. |
| newton-error scalar helper / ConstantsArith:542 | `R.energy_total_arith` | PASS | Scalar error terms absorbed into the stated quadratic constant. |
| torsion scalar helper / ConstantsArith:620 | `R.to_omega_arith` | PASS | Scalar bordered perturbation/Neumann budget; intermediate bounds explicit. |
| torsion scalar helper / ConstantsArith:631 | `R.to_row_arith` | PASS | Scalar bordered perturbation/Neumann budget; intermediate bounds explicit. |
| torsion scalar helper / ConstantsArith:653 | `R.to_avg_arith` | PASS | Scalar bordered perturbation/Neumann budget; intermediate bounds explicit. |
| torsion scalar helper / ConstantsArith:686 | `R.to_inv_arith` | PASS | Scalar bordered perturbation/Neumann budget; intermediate bounds explicit. |
| torsion scalar helper / ConstantsArith:711 | `R.C_DT_small_of_CDTbord` | PASS | Scalar bordered perturbation/Neumann budget; intermediate bounds explicit. |
| step scalar helper / ConstantsArith:727 | `R.two_pow_mul_le_aux` | PASS | Explicit dominance implies the step smallness budgets. |
| step scalar helper / ConstantsArith:735 | `R.two_Theta_cube_mul_C_sym_le_hatcStep` | PASS | Explicit dominance implies the step smallness budgets. |
| step scalar helper / ConstantsArith:742 | `R.two_Theta_sq_mul_hatCDelta_le_hatcStep` | PASS | Explicit dominance implies the step smallness budgets. |
| step scalar helper / ConstantsArith:754 | `R.Theta_sq_mul_two_mSize_CDTbord_hatCDelta_le_hatcStep` | PASS | Explicit dominance implies the step smallness budgets. |
| step scalar helper / ConstantsArith:777 | `R.iso_step_small` | PASS | Explicit dominance implies the step smallness budgets. |
| iteration scalar helper / ConstantsArith:836 | `R.iso_error_decay_hyp` | PASS | Initial smallness implies the stated scalar decay or summed budget. |
| iteration scalar helper / ConstantsArith:844 | `R.iso_c_sum_small` | PASS | Initial smallness implies the stated scalar decay or summed budget. |
| iteration scalar helper / ConstantsArith:863 | `R.iso_iteration_step_small` | PASS | Initial smallness implies the stated scalar decay or summed budget. |
| iteration scalar helper / ConstantsArith:892 | `R.sum_coef_le_gen` | PASS | Initial smallness implies the stated scalar decay or summed budget. |
| iteration scalar helper / ConstantsArith:909 | `R.four_Theta_sq_mul_hatCDelta_le_hatcSum` | PASS | Initial smallness implies the stated scalar decay or summed budget. |
| iteration scalar helper / ConstantsArith:919 | `R.four_Theta_sq_mul_n_mul_hatCDelta_le_hatcSum` | PASS | Initial smallness implies the stated scalar decay or summed budget. |
| iteration scalar helper / ConstantsArith:929 | `R.four_Theta_sq_mul_C_B_mul_hatCDelta_le_hatcSum` | PASS | Initial smallness implies the stated scalar decay or summed budget. |
| iteration scalar helper / ConstantsArith:939 | `R.four_Theta_sq_mul_mSize_sq_CDTbord_hatCDelta_le_hatcSum` | PASS | Initial smallness implies the stated scalar decay or summed budget. |
| iteration scalar helper / ConstantsArith:957 | `R.iso_iteration_sums` | PASS | Initial smallness implies the stated scalar decay or summed budget. |
| iteration scalar helper / ConstantsArith:1012 | `R.iso_closeness_le` | PASS | Initial smallness implies the stated scalar decay or summed budget. |
| g1 scalar helper / ConstantsArith:1035 | `R.isoC1_pos` | PASS | Positive constants or exact smallness/closeness conversion; no G1 proof assumed. |
| g1 scalar helper / ConstantsArith:1040 | `R.isoC2_pos` | PASS | Positive constants or exact smallness/closeness conversion; no G1 proof assumed. |
| g1 scalar helper / ConstantsArith:1047 | `R.iso_g1_error_small` | PASS | Positive constants or exact smallness/closeness conversion; no G1 proof assumed. |
| g1 scalar helper / ConstantsArith:1055 | `R.iso_g1_closeness_eq` | PASS | Positive constants or exact smallness/closeness conversion; no G1 proof assumed. |
| schedule / Schedule:46 | `A.isoEpsSeq_zero` | PASS | Initial error is e; definitional. |
| schedule / Schedule:48 | `A.isoEpsSeq_succ` | PASS | Exact recurrence with hatCE. |
| error-decay / Schedule:53 | `A.isoEpsSeq_nonneg` | PASS | Nonnegative recurrence, including zero error. |
| error-decay / Schedule:64 | `A.isoEpsSeq_succ_eq` | PASS | Positive-delta reciprocal-power rewrite. |
| error-decay / Schedule:75 | `A.isoEpsSeq_le_q_pow` | PASS | Abstract quadratic iteration; no smallness premise needed. |
| error-decay / Schedule:94 | `A.iso_q_nonneg` | PASS | Positive denominator and nonnegative numerator. |
| error-decay / Schedule:103 | `A.iso_error_decay_eps` | PASS | Exact q estimate and q≤1 comparison. |
| error-decay / Schedule:123 | `A.iso_error_decay_weighted` | PASS | Stronger range: all real j≤2a. |
| error-decay / Schedule:154 | `A.iso_error_decay_sum` | PASS | Stronger range: all real j≤2a−1; summability explicit. |
| iteration helper / Schedule:205 | `A.isoEps_div_nonneg` | PASS | Positive weight denominator; no gamma positivity needed. |
| iteration helper / Schedule:212 | `A.isoEps_partial_sum_le` | PASS | Nonnegative finite sums bounded by the true tsum. |
| iteration helper / Schedule:226 | `A.isoEps_div_le` | PASS | Projection of stronger weighted bound. |
| iteration helper / Schedule:234 | `A.isoEps_le` | PASS | Weight zero and a≥8. |
| schedule / Schedule:244 | `A.isoDSeq_eq` | PASS | Unconditional algebraic identity. |
| error-decay / Schedule:255 | `A.iso_error_decay` | PASS | Exact design type; independent rfl check passed. |

## Definition classification

There are **no new def/abbrev/structure declarations** in the three-file diff. All 94 declarations are theorems. The used inherited `isoEpsSeq` is the total explicit polynomial/rational recurrence on all real parameters; `isoDSeq` and `dStep` are the displayed total rational expressions. Their intended estimates are guarded by positive gamma and delta. K's deltaSeq and rSeq are explicit geometric formulas, with the intended schedule under positive widths. The hat constants are finite explicit arithmetic/max expressions with the advertised dependencies. None of these constructions uses a selector, conditional junk value or fallback that replaces a mathematical obligation. Off the positive-denominator regime, total division is not used to claim an analytic estimate.

## Verification receipts

All Lean commands below ran sequentially with `LEAN_NUM_THREADS=1` and `nice -n 5`; builds used the prescribed compile gate. No resource override, cache fetch, package edit, clean, or state-changing git operation was used. The `jobs` counts below are Lake's full target graph counts, not a count of simultaneous Lean processes.

```
LEAN_NUM_THREADS=1 /mnt/HC_Volume_106379410/orchestrator-tools/inp_lake_build.sh /root/code/KAM-inp-i27 KAM.Iso.Apost.Schedule
[inp-gate] slot 1 acquired 02:16:00 for KAM.Iso.Apost.Schedule
Build completed successfully (3183 jobs).
exit 0

LEAN_NUM_THREADS=1 /mnt/HC_Volume_106379410/orchestrator-tools/inp_lake_build.sh /root/code/KAM-inp-i27 KAM.Iso.Apost.ConstantsArith
[inp-gate] slot 1 acquired 02:16:12 for KAM.Iso.Apost.ConstantsArith
✔ [3197/3197] Built KAM.Iso.Apost.ConstantsArith (8.2s)
Build completed successfully (3197 jobs).
exit 0

LEAN_NUM_THREADS=1 nice -n 5 lake env lean .lake/abi-scratch/I27Audit.lean
exit 0; no warnings or errors
```

The scratch probe imported Schedule and ConstantsArith; copied the design decay signature, applied the production theorem, checked definitional type equality, and queried `#print axioms` for every one of the 94 new public theorems and the reused schedule theorem. Exact axiom output follows (long-name lines wrap in Lean's output):

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
'KAM.Iso.Apost.isoEpsSeq_zero' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.isoEpsSeq_succ' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.isoEpsSeq_nonneg' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.isoEpsSeq_succ_eq' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.isoEpsSeq_le_q_pow' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.iso_q_nonneg' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.iso_error_decay_eps' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.iso_error_decay_weighted' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.iso_error_decay_sum' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.isoEps_div_nonneg' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.isoEps_partial_sum_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.isoEps_div_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.isoEps_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.isoDSeq_eq' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.iso_error_decay' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.schedule' depends on axioms: [propext, Classical.choice, Quot.sound]
```

```
LEAN_NUM_THREADS=1 nice -n 5 lake env leanchecker --verbose KAM.Iso.Apost.Schedule KAM.Iso.Apost.Constants KAM.Iso.Apost.ConstantsArith
replaying KAM.Iso.Apost.ConstantsArith
replaying KAM.Iso.Apost.Constants
replaying KAM.Iso.Apost.Schedule
exit 0
```

The forbidden-token/import scan of all three files found no sorry, admit, axiom, unsafe, opaque, resource overrides, EuclideanSpace, provider imports or frozen theorem imports. Module headers, public imports, module docstrings and public sections are present. File lengths are 255, 1062 and 276; all are below 1500. No new definition needs an exposure attribute.

`git diff --check inp...HEAD`: exit 0, with only the multiple-merge-base warning quoted above. `git diff inp...HEAD -- KAM/Frozen manifest KAM.lean README.md`: empty diff, exit 0, same warning. Thus frozen files, manifests and generated files are untouched in the primary diff.

```text
LEAN_NUM_THREADS=1 nice -n 5 sh scripts/lint_sources.sh
KAM.lean is out of date; run scripts/gen_root_imports.py
check_lean_modules: PASS (347 Lean files, 0 comparator configurations)
FROZEN-ANCHOR GUARD OK
ABI HASHES OK (144 frozen declarations)
exit 1
```

The only lint failure is the brief's expressly permitted stale generated root. All other checks pass. The orchestrator should regenerate KAM.lean during integration; this auditor did not edit it.

## Notes, errata and closeout

- The implementation certifies the two assigned infrastructure nodes and their helper lemmas, not the isoenergetic KAM anchor. There is no provider export to compare or seal here.
- The inherited constant-arithmetic helpers certify scalar estimates conditional on their displayed intermediate bounds. Producing the analytic inputs remains with their respective packages.
- No suspected blueprint defect, pinned-source erratum or mathematical deviation was found. This is a Lean/blueprint package audit, not a fresh transcription audit of HL19; no new claim about the pinned PDF is made. The stronger negative-weight helper range and unused positive-final-width premise are harmless notes, not changes to the final blueprint statement.
- All required checks completed. Probe `.lake/abi-scratch/I27Audit.lean` was removed after verification. Logs are `/tmp/i27-audit-{probe,kernel,lint}.log`. The sole deliverable is this report at the exact user-specified worktree path. No Lean source was changed.
