# P3-0 independent audit 1

Overall verdict: **PASS WITH NOTES**.

Audited on 2026-10-27 at `fa1ff33ff632d85da667115b28c04747d8b2f0a7` (branch `k/p3-0`),
against `main = 0ecfbec57421771ee37681198ed641e402bbba12` using `git diff main...HEAD`.
The implementation is `KAM/Uniq/Standing.lean` (624 lines). The only other committed change is the
single generated import `public import KAM.Uniq.Standing` in `KAM.lean`; generator check passes.
The pre-existing untracked handoff was read and left unchanged. The auditor changed only this report;
the transient probe under `.lake/abi-scratch/` was deleted after checking.

Read: `AGENTS.md`, `docs/PLAN.md`, `docs/DECISIONS.md`, the audit/package/common briefs,
`docs/campaign/audits/P3-0-handoff.md`, design sections 0–2, 4–5 and Appendix A §P3.1,
the graph entries and the raw blueprint statements and relevant arithmetic proofs.
Applied the lean-statement-audit workflow to the local package declarations. These are infrastructure,
not a provider or frozen theorem: no frozen theorem is sealed or certified by this audit.

## Node-by-node verdicts

All declaration names in this table have prefix `KAM.Uniq.`.

| Node / source item | Declaration(s) | Verdict | Evidence / scope |
|---|---|---|---|
| `bp:p3:standing` | `Params`, `S1`, `S2`, `S3`, `S4` | PASS | Blueprint `p3-uniqueness.tex:50–79`; implementation lines 63–112. Fixed parameters and each source premise retained, without closeness or any frame/reducibility conclusion. |
| `bp:p3:standing#constants`, `eq:p3:constants` | `C_P`, `C_Gamma`, `C_tor`, `C_coh` | PASS | Blueprint lines 95–104; implementation 117–123. Literal bodies, including `C_coh = KAM.cohConst`; no replacement by `cR`. |
| `bp:p3:standing#constants`, `eq:p3:Cquad` | `C_N`, `C_L`, `C_quad` | PASS | Blueprint 105–110; implementation 125–132. Both factors of one half, the real powers, and the maximum are exact. |
| `eq:p3:c` / construction and positivity in `step:p3:g2-constant` | `threshold`, `threshold_pos` | PASS | Blueprint 513–519; implementation 134–137, 245–254. Same three-term minimum and prefactor; strictly positive under the fixed parameters, with no dependence on gamma. This does not establish the later data/closeness assembly of that graph step. |
| Claim following `bp:p3:standing` | `standing_of` | PASS | Blueprint 74–77; implementation 145–160. Direct constructor for exactly `KAM.Apost.Standing n τ M σK σB σT 𝔅 h ω γ`. Only the extra `Dh` bound is discarded, as Part 2 omits it. |

The constants' role descriptions at blueprint 113–117 are forward references, not additional claims
proved by these definitions. Frame bounds, frequency bounds, torsion bounds, phase selection,
difference equations, the quadratic estimate and G2 itself remain outside P3-0.

## Source fidelity, carriers and definitions

The five structure declarations were mechanically compared against Appendix A §P3.1 after removing
comments and normalizing whitespace: all five match. The eight constant definitions were separately
elaborated in namespace `AuditP30` from the Appendix A commands. Each complete function, including
its argument list and body, satisfies `@KAM.Uniq.<name> = @AuditP30.<name>` by `rfl`.
Raw blueprint formulas were compared independently; agreement with the design alone was not used
as source evidence.

| New definition | Classification and full-carrier meaning | Arguments / dependence |
|---|---|---|
| `Params` | Literal standing-premise predicate; eight fields, precisely blueprint line 50. | `n τ ρ M σK σB σT μ` |
| `S1` | Literal source assumption bundle, not a result bundle. Openness, integer-shift domain invariance, holomorphy, periodicity, realness, four derivative/vector-field bounds. | `n M 𝔅 h` |
| `S2` | Literal source frequency predicate: positive gamma and the frozen Diophantine predicate. | `n τ ω γ` |
| `S3` | Literal source reference-torus predicate, including exact invariance as an explicit source assumption. | `n ρ σK σB σT μ 𝔅 h ω K₁` |
| `S4` | Literal source second-torus predicate, including exact invariance as an explicit source assumption. | `n ρ 𝔅 h ω K₂` |
| `C_P` | Literal scalar formula `2 n σK (1 + σB)`. | `n σK σB` |
| `C_Gamma` | Literal scalar formula `C_P M`. | `n M σK σB` |
| `C_tor` | Literal scalar formula `C_P² M (1 + 4 n C_P / ρ)`. | `n ρ M σK σB` |
| `C_coh` | Literal alias of the exact source constant `KAM.cohConst n τ`. | `n τ` |
| `C_N` | Literal formula of `eq:p3:Cquad`, first expression. | `n τ ρ M σK σB σT` |
| `C_L` | Literal formula of `eq:p3:Cquad`, second expression. | `n τ ρ M σK σB σT` |
| `C_quad` | Literal formula of `eq:p3:Cquad`, maximum of the two coordinate coefficients. | `n τ ρ M σK σB σT` |
| `threshold` | Literal formula of `eq:p3:c`; nested binary minimum represents the three-term minimum. | `n τ ρ M σK σB σT μ` |

For all thirteen declarations:

```text
BODY_MATCH: OK
PUBLIC_CARRIER: OK
WELL_DEFINEDNESS: N/A_LITERAL
CHARACTERIZATION: N/A_LITERAL
CHOICE_INDEPENDENCE: N/A
DEFINITION_VERDICT: PASS
```

There are no new abbrevs, selections of witnesses, fallback branches or deferred characterizations.
Scalar division and real powers have Lean's usual total semantics, but these are the literal formulas;
all positivity and smallness claims use the source domain `Params`. No off-domain behavior is used
as a mathematical substitute.

Vectors are `Fin n → ℂ` or a product of two such spaces, with the max norm; real frequencies are
`Fin n → ℝ`; integer shifts and Diophantine indices are `Fin n → ℤ`. The module opens
`Matrix.Norms.Operator` at line 58, so the inverse bounds in S3 are row-sum operator norms.
The frozen G2 expresses those bounds row by row; `KAM.norm_le_iff_forall_rowSum`,
`KAM.rowSum_le_norm` and the nonempty row type (`n ≥ 2`) give the equivalence, as required by
design §1.5. This is the design's explicit norm encoding, with no change of bound or margin.
The blueprint itself already uses operator norms in S3.

Inspected the imported meanings of `complexStrip`, `IsPrimaryOnStrip`, `IsRealOnReals`,
`IsDiophantine`, `hamiltonianVectorFieldℂ`, `invarianceError`, `gramMatrix`, `normalFrame`,
`torsion`, `torsionAverage`, and `dotℂ`. They retain the open strip, period one, bilinear transpose,
`X_h - DK ω` sign, and the entrywise integral over `[0,1]^n`. In particular the four S1 bounds
are on the actual frozen vector field and derivatives, not replacements. `cohConst` in
`KAM/Strip/CohomologicalDefs.lean:31–32` is
`(2π)⁻¹ (τ/(exp(1) π))^τ (8n/π)^n`, as fixed in design §2.3 and the Part 1 cohomological proof.
No theorem about a cohomological solution is used to define or prove positivity of this number.
The full repository frozen guard and ABI checks passed; no external-source re-audit of those
unchanged approved definitions is claimed here.

## Expanded binder audit

For `standing_of`, the implicit typing binders, in order, are
`{n} {τ} {ρ} {M} {σK} {σB} {σT} {μ} {𝔅} {h} {ω} {γ}`.
They precede `(hP : Params …) (h1 : S1 …) (h2 : S2 …)`; the output is the Part 2 standing
package at exactly the same parameters. No K₁ or K₂ binder is captured by the declaration.

| Expanded input | Bin | Source / justification |
|---|---|---|
| `n : ℕ` | TYPING | Blueprint 50, 56–57 |
| `τ : ℝ` | TYPING | Blueprint 50 |
| `ρ : ℝ` | TYPING | Blueprint 50 |
| `M : ℝ` | TYPING | Blueprint 50 |
| `σK : ℝ` | TYPING | Blueprint 50 |
| `σB : ℝ` | TYPING | Blueprint 50 |
| `σT : ℝ` | TYPING | Blueprint 50 |
| `μ : ℝ` | TYPING | Blueprint 50 |
| `𝔅 : Set (ℂⁿ × ℂⁿ)` | TYPING | Blueprint 56 |
| `h : ℂⁿ × ℂⁿ → ℂ` | TYPING | Blueprint 56 |
| `ω : ℝⁿ` | TYPING | Blueprint 57 |
| `γ : ℝ` | TYPING | Blueprint 57 |
| `hP.two_le` | STANDING | `n ≥ 2`, blueprint 50 |
| `hP.tau_ge` | STANDING | `τ ≥ n - 1`, blueprint 50 |
| `hP.ρ_pos` | STANDING | `ρ > 0`, blueprint 50 |
| `hP.M_pos` | STANDING | `M > 0`, blueprint 50 |
| `hP.σK_pos` | STANDING | `σK > 0`, blueprint 50 |
| `hP.σB_pos` | STANDING | `σB > 0`, blueprint 50 |
| `hP.σT_pos` | STANDING | `σT > 0`, blueprint 50 |
| `hP.μ_pos` | STANDING | `μ > 0`, blueprint 50 |
| `h1.isOpen` | STANDING | S1, blueprint 59 |
| `h1.transl_mem` | STANDING | S1, blueprint 59–60; every point of 𝔅 and every integer shift |
| `h1.holo` | STANDING | S1, blueprint 60 |
| `h1.periodic` | STANDING | S1, blueprint 60; all domain points and integer shifts |
| `h1.real` | STANDING | S1, blueprint 60–61; every real point lying in 𝔅 |
| `h1.bounds`, `Dh` component | STANDING | S1, blueprint 61–62; every z ∈ 𝔅 |
| `h1.bounds`, `X_h` component | STANDING | S1, blueprint 61–62; every z ∈ 𝔅 |
| `h1.bounds`, `DX_h` component | STANDING | S1, blueprint 61–62; every z ∈ 𝔅 |
| `h1.bounds`, `D²X_h` component | STANDING | S1, blueprint 61–62; every z ∈ 𝔅 |
| `h2.gamma_pos` | STANDING | S2, blueprint 63 |
| `h2.dio` | STANDING | S2, blueprint 63; expanded `∀ k : Fin n → ℤ, k ≠ 0 → γ / (∑ i, |(k i : ℝ)|)^τ ≤ |∑ i, (k i : ℝ) * ω i|` |

Counts: SOURCE 0; STANDING 19; TYPING 12; RULED 0; EXCESS 0. Bound variables inside these
predicates have exactly the indicated source carriers and domain restrictions; there are no instance
binders or hidden assumption classes. `threshold_pos` has the first eight typing binders above
and the same eight expanded Params inputs: SOURCE 0; STANDING 8; TYPING 8; RULED 0; EXCESS 0.

S3 expands to ten atomic source inputs: holomorphy, primary behavior, realness, domain ball,
derivative bound, Gram determinant unit, Gram inverse bound, average-torsion determinant unit,
average-torsion inverse bound, invariance. S4 expands to five: holomorphy, primary behavior,
realness, domain membership, invariance. These correspond respectively to blueprint 64–68 and
69–70. Invariance and twist invertibility are source premises of the local uniqueness problem,
not conclusions smuggled into a structure.

## Helper audit and limits on graph credit

All 39 theorem declarations and their proofs were inspected. Parameter, positivity, frame-coefficient,
and torsion-coefficient lemmas use scalar arithmetic and Params, without asserting a geometric result.
`Params.toApost` is direct projection. The extra Params fields on arithmetic helpers reflect the
fixed Part 3 setting, documented at module lines 19–20; no new mathematical assumptions are added.

| Helpers | Inputs beyond fixed scalar data | Assessment |
|---|---|---|
| `one_le_absorb` | positive gamma and delta, gamma ≤ Gamma, delta ≤ rho | The scalar implication in blueprint 428–433; permits equality delta = rho, a stronger endpoint. It does not prove the frequency bound. |
| `inv_mul_rpow_sq`, `rpow_one_sub_mul_rpow`, `rpow_neg_mul_rpow`, `rpow_div_thirtytwo` | positive base width; arbitrary real exponents (and arbitrary gamma in the first identity) | Literal real-power identities; valid beyond the eventual application. |
| `normal_coeff_le` | `Y2 ≥ 0`, absorption, explicit estimate on scalar X | Arithmetic part of blueprint 463–468 only. X is a scalar, not an assumed cohomological solution. |
| `tangent_coeff_le`, `C_L_mul_eq` | corresponding scalar estimate / arbitrary scalars for the identity | Arithmetic part of blueprint 470–485 only. No average, PDE or holomorphy theorem assumed or claimed. |
| `combine_coeff_le` | nonnegative a and Y2, absorption, explicit bounds on XL and XN | Arithmetic maximum comparison; does not prove `Δ = P ξ`, the frame bound or either coordinate estimate. |
| `one_add_mul_threshold`, `one_add_mul_le_min` | Params; the latter also assumes scalar closeness | Expands the exact threshold, with its positive prefactor. |
| `phase_small`, `delta_small`, `g2_smallness` | positive gamma, gamma ≤ Gamma, scalar closeness | Exactly the three algebraic inequalities of blueprint 526–533, conditional on the separately needed frequency bound. |
| `iteration_small` | scalar closeness | Third inequality holds even without gamma positivity; stronger arithmetic implication. |
| `iteration_Q_small`, `iteration_Q_two_pow_small` | positive gamma and scalar closeness | The displayed scalar estimate at blueprint 560; no recursive sequence or convergence is assumed/proved. |

The estimate premises on these distinctly named arithmetic helpers are legitimate conditional inputs;
they are not premises added to `standing_of`, `threshold_pos`, a frozen-facing statement, or a claim
of the complete analytic graph nodes. In particular `normal_coeff_le` must not alone be recorded as
completion of `step:p3:quad-normal`, nor `combine_coeff_le` as completion of `step:p3:quad-combine`.
Likewise `g2_smallness` still needs a later proof supplying `γ ≤ Γ` from the standing tori. Current
P3-0 node claims and the handoff respect this distinction.

## Independent checks

Commands were run serially for Lean compilation, with no resource overrides and no clean rebuild.

```text
$ nice -n 5 lake build KAM.Uniq.Standing
Build completed successfully (2872 jobs).
exit 0

$ sh scripts/lint_sources.sh
check_lean_modules: PASS (224 Lean files, 0 comparator configurations)
FROZEN-ANCHOR GUARD OK
ABI HASHES OK (144 frozen declarations)
exit 0

$ git diff --check main...HEAD
(no output; exit 0)

$ git diff --exit-code main...HEAD -- KAM/Frozen manifest
(no output; exit 0)

$ wc -l KAM/Uniq/Standing.lean
624 KAM/Uniq/Standing.lean
```

The reported 2872 jobs are Lake's target closure count, not a claim of 2872 freshly compiled files.
Lint checks forbidden proof escapes and budget overrides, the 1500-line cap, module formatting,
generated imports, provider quarantine, frozen hashes and elaborated ABI hashes. The new source
also passes direct inspection: copyright header, `module`, public interface imports, docstring,
`@[expose] public noncomputable section`, no forbidden escapes or overrides.

The transient probe was generated by copying the Appendix A §P3.1 block from `def C_P` to the
next variable block into namespace `AuditP30`, with the same scalar variable declarations and
`open KAM`. It included these exact checks for each of the eight names in the definition table:

```lean
example : @KAM.Uniq.C_P = @AuditP30.C_P := rfl
-- Identical complete-function equality checks for C_Gamma, C_tor, C_coh,
-- C_N, C_L, C_quad, threshold.
```

It additionally applied `standing_of` to an explicitly constructed Params value from the eight
raw fixed-parameter premises, S1 and S2, at the exact Part 2 output type, and applied
`threshold_pos` at its independently reconstructed type. Every theorem and scalar definition was
queried using `#print axioms`, generated from the complete `^theorem` and `^def` inventory.

```text
$ nice -n 5 lake env lean .lake/abi-scratch/P30Audit1.lean
'KAM.Uniq.standing_of' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Uniq.Params.one_le_cast' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Uniq.Params.two_le_cast' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Uniq.Params.n_pos' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Uniq.Params.tau_pos' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Uniq.Params.kappa_pos' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Uniq.C_P_pos' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Uniq.C_Gamma_pos' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Uniq.C_tor_pos' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Uniq.C_coh_pos' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Uniq.C_N_pos' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Uniq.C_L_pos' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Uniq.C_quad_pos' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Uniq.one_add_two_mul_C_P_mul_σK_pos' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Uniq.threshold_pos' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Uniq.two_mul_n_mul_σK_le_C_P' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Uniq.σB_mul_two_mul_n_mul_σK_le_C_P' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Uniq.σK_mul_σB_le_C_P' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Uniq.σK_mul_one_add_σB_le_C_P' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Uniq.two_mul_n_mul_σK_mul_σB_mul_M_le_C_Gamma' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Uniq.C_P_mul_torsion_coeff_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Uniq.one_le_absorb' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Uniq.inv_mul_rpow_sq' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Uniq.normal_coeff_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Uniq.tangent_coeff_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Uniq.C_L_mul_eq' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Uniq.combine_coeff_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Uniq.one_add_mul_threshold' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Uniq.one_add_mul_le_min' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Uniq.rpow_one_sub_mul_rpow' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Uniq.rpow_neg_mul_rpow' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Uniq.phase_small' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Uniq.delta_small' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Uniq.iteration_small' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Uniq.rpow_div_thirtytwo' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Uniq.iteration_Q_small' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Uniq.iteration_Q_two_pow_small' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Uniq.g2_smallness' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Uniq.Params.toApost' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Uniq.C_P' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Uniq.C_Gamma' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Uniq.C_tor' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Uniq.C_coh' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Uniq.C_N' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Uniq.C_L' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Uniq.C_quad' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Uniq.threshold' depends on axioms: [propext, Classical.choice, Quot.sound]
exit 0
```

All eight full-function `rfl` checks and both application probes elaborated without diagnostics.
No `sorryAx` or project axiom occurs in any of the 47 axiom outputs.
Provider exact-type probe: **N/A**, because this package contains no provider and does not claim a
frozen theorem. No frozen theorem was imported by the audit probe.

## Findings, errata and handoff

No blocking, major or minor implementation defect found. No suspected pinned-source erratum and
no introduced mathematical deviation found in the audited scope.

Nonblocking scope note (no repair required): retain the arithmetic-only graph-credit boundaries
above when landing the package and updating graph statuses. Future P3-1/P3-4/P3-5 work must still
supply the frame/frequency and cohomological inputs and the final frozen-type assembly.
This note is the reason for PASS WITH NOTES; it does not block P3-0 acceptance.

Files produced: `docs/campaign/audits/P3-0-audit-1.md` only. No Lean, frozen, manifest, generated
root or README edit. Checks establish source fidelity and axiom hygiene of this package; they do
not establish G2 or any package that consumes these constants.
