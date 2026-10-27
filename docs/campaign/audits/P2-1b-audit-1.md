# P2-1b independent package audit 1

**Verdict: PASS WITH NOTES.** All three package nodes pass. The definition bodies match the blueprint and binding design, and the arithmetic helper lemmas prove the advertised numerical consequences without hidden analytic hypotheses. All 74 package theorems have only `propext`, `Classical.choice` and `Quot.sound` as axioms. The notes below concern the boundaries of these arithmetic/interface results, not defects requiring a code change.

Audit date: 2026-10-27. Auditor identifier: `audit-p21b-1`.

## Scope and authority

Read `AGENTS.md`, `docs/PLAN.md`, `docs/DECISIONS.md`, the audit brief `docs/campaign/briefs/AUDIT-PACKAGE.md`, `P2-1b.md`, `P23-COMMON.md`, `PROVER-COMMON.md`, the handoff focus, the binding design (especially §§0–2 and Appendix A), and the prior Part 2 design audit. Used the graph's three package-node records as an index and compared directly with the actual blueprint text. This audit concentrates on bodies and helper proofs as requested; it does not repeat the entire Part 2 signature audit or certify future consumers.

Snapshot: branch `k/p2-1b`, HEAD `809d438b14398a020e69bc364b03f771210090cc`; comparison ref `main` at `15a3a7a7089c8f135dd47f805eeab45e198ff931`. Initial working tree had only the supplied untracked `docs/campaign/audits/P2-1b-handoff.md`. No source changes, state-changing git operations, delegated audits, frozen changes or manifest changes were made. The sole repository artifact written by this auditor is this report; temporary probes under `.lake/abi-scratch/` were removed.

| Audited file | Lines | SHA-256 |
|---|---:|---|
| `KAM/Apost/Standing.lean` | 85 | `a91ec68239396b9dbd81928b941f435c4223093f02c86eaeb17875caee755e15` |
| `KAM/Apost/Constants.lean` | 952 | `9e9190f524c5086d78be3f3cb374ccbf34da3024f9b2d35703c9a8f4a886975d` |
| `KAM/Strip/CohomologicalDefs.lean` | 49 | `545bcf5ebf74716bb2fe7ec0bd81f58a49190549d95e7e0b418ca90c70448ce1` |

## Node verdicts

| Node | Lean declaration | Verdict | Evidence and reason |
|---|---|---|---|
| `bp:p2:standing` | `KAM.Apost.Params`, `KAM.Apost.Standing` | PASS | Standing.lean:43,52; p2:56–69. Exactly the parameter ranges, open translation-invariant domain, holomorphic/periodic/real Hamiltonian, three vector-field bounds, positive γ and Diophantine condition. Omission of the bound on Dh is expressly authorized by p2:67–69. |
| `bp:p2:admissible` | `KAM.Apost.Admissible` | PASS | Standing.lean:70; p2:306–317. Parameter ranges and A1–A6, with open balls, pair max norm, actual derivatives, invertibility and row-sum operator norms. No conclusion of a frame, Newton or convergence theorem is bundled. |
| `bp:p2:constants` | `KAM.Apost.kappa` through `delta0`, `constants_spec` | PASS | Constants.lean:60–119,367–381; p2:78–112. Every formula, numerical factor, power, maximum and dependence matches; positivity/order claims are proved. |
| Interface, design §2.4 | `KAM.cohConst`, `KAM.cohSolution`, `KAM.cohSolution_eq_fourierSum` | PASS | CohomologicalDefs.lean:31–45; p1:900–903,910–927. Exact constant and period-one Fourier solution; the equality proof is literally `rfl`, independently re-elaborated. This row is additional interface coverage, not a claim to prove the cohomological analytic theorem. |

## Definition classification (all 31 new definitions/structures)

The following table exhausts all 28 `def`s and three structures in the package. There are no new abbreviations. All definitions are exposed by `@[expose] public noncomputable section`. The 31 declarations were also mechanically compared to Appendix A after removing whitespace: all matched. Formula comparison to the blueprint was a separate direct reading, not inferred solely from that mechanical match.

| Declaration(s), namespace `KAM.Apost` unless marked otherwise | Arguments, in order | Classification and whole-carrier assessment |
|---|---|---|
| `Params` | n, τ, M, σK, σB, σT | Source-premise Prop-structure; no witness or theorem is smuggled into a field. |
| `Standing` | n, τ, M, σK, σB, σT, 𝔅, h, ω, γ | Source-premise Prop-structure extending Params. No upper frequency bound or cohomological solvability assumed. |
| `Admissible` | implicit n; σK, σB, σT, 𝔅, h, ω, r, β, ε, K | Source-defined predicate with parameter ranges; inverse bounds include unit determinants. No fallback chosen by this structure. |
| `kappa`, `aExp`, `cR` | n, τ | Explicit scalar expressions: τ+n; 2κ+2; max(1,cohConst). |
| `mSize` | M, σK, σB, σT | Explicit maximum of 1 and the four bounds. |
| `Theta`, `C_X`, `C_T`, `C_red`, `C_G`, `C_B`, `C_DN`, `C_DX`, `C_DT` | n, M, σK, σB, σT | Explicit polynomial expressions in the named predecessors; respectively 4n𝔪³, 5n²𝔪⁵, 2n𝔪²C_X, 2n(n+1)𝔪², 6n²𝔪, 2𝔪²C_G, 2n𝔪+𝔪C_B, 2𝔪³+(𝔪+nΘ)C_DN, 4n𝔪²C_DX+2nC_DNC_X. |
| `C_Omega`, `C_sym` | n, τ, M, σK, σB, σT | Exactly 2n(n+1)c_R𝔪 and 𝔪²C_Omega. |
| `C_xi0`, `C_xiN`, `C_g`, `C_xi`, `C_DK`, `C_lin`, `C_E` | n, τ, M, σK, σB, σT | Explicit expressions in p2:88–93, term for term; in particular C_E=4𝔪²Θ²C_lin+𝔪C_DK², with no lost square or factor. |
| `c_step`, `c_sum` | n, τ, M, σK, σB, σT | Exactly 2Θ⁴ max(C_sym,2𝔪C_DTC_DK) and 4Θ²C_DK max(n,C_B,𝔪²C_DT). Nested binary maxima implement the three-way maximum. |
| `c_star` | n, τ, M, σK, σB, σT, μ | Exactly max(2^(2a)C_E,c_step max(1,2/μ),2c_sum/μ). Total division at μ=0 is a Lean extension; applications interpreting the margin require μ>0. `one_le_c_star` validly proves a stronger fact for every μ by the first maximum entry. |
| `delta0` | ρ, ρinf | Exactly min(1,(ρ−ρinf)/8). It may be nonpositive outside the intended ordered-width domain; no theorem claims otherwise. |
| `KAM.cohConst` | n, τ | Exactly (2π)⁻¹(τ/(exp(1)π))^τ(8n/π)^n. The τ power is Real.rpow; the dimension power is a natural power. It has a total real extension outside the standing range; no analytic claim is made there. |
| `KAM.cohSolution` | implicit n; ω, g; evaluation θ | Actual tsum of solved torus coefficients times the period-one characters. No choice of an arbitrary solution or assumed solution property. Totalization qualifications below. |

The elaborated `#check @...` output independently confirms the arities of all 28 definitions. None of the Part 2 constants depends on h, K, 𝔅, ω, γ, e, r, δ or β. Only c_star adds μ, and only delta0 takes the two widths. The reduced dependence lists agree with design §2.3; they are stronger than the blueprint's common upper dependence bound.

For the Fourier definition, inspected the actual imported bodies: `torusCoeff` (Strip/Fourier.lean:44) averages g times χ_(−k); `character` (:40) uses exp(2πi Σk_jθ_j); `Diophantine.solve` (Diophantine/Cohomological.lean:48) returns 0 at k=0 and divides by `flowMultiplier` elsewhere; that multiplier (:36) is 2πi(k·ω). `fourierSum` (Strip/FourierSeries.lean:145) is precisely the same tsum. The sign and normalization agree with p1:910–914. Resonant denominators, nonintegrable input and nonsummable series have Lean's totalized values outside the analytic class. No package theorem uses those values to claim solvability, convergence, bounds, realness or uniqueness.

## Arithmetic helpers and attempted refutations

All helpers were read, including proof bodies. Positivity and exponent inequalities are derived from Params or explicit numerical premises. No helper assumes a hard analytic step under another name or imports a provider/frozen theorem. Conditional arithmetic lemmas have distinct names and are not substituted for source analytic results.

| Blueprint use | Helpers (Constants.lean) | Assessment |
|---|---|---|
| Constants ≥1, exponents and widths | `Params.one_le_cast` through `constants_spec` (:125–381) | Each bound follows from n≥2, τ≥n−1, maxima ≥1 and nonnegative products. `eight_le_aExp` is the valid stronger frozen-range bound a≥8. `delta0_pos` needs only ρinf<ρ, a valid strengthening; `eight_mul_delta0_le` holds even without width positivity. |
| `pt-small`, `pt-gram`, `pt-xn` | ordering lemmas, `gram_coeff_le`, `perturbation_small`, `pt_xn_sum_le` (:387–529) | Exact coefficient dominances and four numerical consequences of 2𝔪C_DT d/δ²≤1. Assumptions d≥0 and 0<δ≤1 justify every division and δ²≤δ. No frame or inverse perturbation estimate assumed. The original perturbation consumer can derive d≥0 from its pointwise bound at θ=0 on a positive strip. |
| `cor-absorb`, `st-small`, `ne-total` | `mul_rpow_le`, `div_absorb`, `absorb_mul_le` (:534–574) | Genuine general inequalities. γ≤Θ is explicitly a premise; these do not purport to prove the frequency lemma. Natural subtraction k−i is guarded by i≤k; positive δ permits arbitrary real j,J with j≤J. |
| Constant domination | `two_mul_pow_mul_le_aux` and dominance lemmas (:579–695) | Max inequalities and Θ≥1 yield the required coefficients of c_step, c_sum and c_star. `hXY`, `hc` and `hXc` in general arithmetic helpers are actual coefficient comparisons, proved for each concrete package application. |
| `st-small`, p2:907–915 | `step_small` (:702–751) | Proves all three required conclusions: symplectic defect coefficient ≤1/2; d≤β/2; perturbation coefficient ≤1/2. No assumption that those conclusions already hold. `hsmall` is exactly the proposition's input smallness bound. |
| `it-sums`, p2:994–1007 | `error_decay_hyp`, `c_sum_small`, `sum_coef_le`, `iteration_sums` (:760–873) | Derives decay-input smallness and the four coefficient-majorant bounds μ/4, μ/4, μ/4, μ/2. The doubled twist coefficient is accounted for. These statements bound the output of the future error-decay summation theorem; they do not themselves assert a bound on an unconstructed sequence. With a≥8, a,a+1,a+2≤2a−1, so the source summation range applies. |
| `it-stepsmall`, p2:1009–1015 | `iteration_step_small` (:788–811) | Proves the initial numerical bound c_step e/(γ⁴d0^(2a))≤min(1,μ/2). Stagewise decay and the induction's margin comparison remain with the iteration consumer, as in the source. |
| Limit closeness | `closeness_le` (:878–889) | Same first coefficient bound, rearranged to 2C_DK e/(γ²d0^a)≤μ/4. |
| `g1-e`, p2:1122–1125 | `g1_error_small_aux`, `g1_error_small` (:895–937) | Exact C₁ formula, explicit 0<γ≤γbar, positive widths and actual smallness premise yield e<1 and c_star e/(γ⁴δ0^(2a))<1. The auxiliary lemma also handles negative e correctly; it does not claim e≥0. No analytic error bound is hidden in Params. |
| `g1-check`, p2:1132–1142 | `g1_closeness_eq` (:942–948) | Exact rpow cancellation for positive ρ,d0 and γ. C,e and real exponents are arbitrary. It proves only the advertised equality of numerical bounds, not G1. |

Adversarial boundary checks: γ need not be ≤1; the helpers correctly absorb it using γ≤Θ. δ and d0 cannot vanish in denominator comparisons. Negative d and e are excluded where multiplication monotonicity needs nonnegativity; the G1 auxiliary lemma handles e≤0 separately. Empty-strip shortcuts are not used to prove scalar conclusions. Neither a summability assumption nor a cohomological-solution field has been added to Standing or Admissible.

## Findings, notes and limits

No blocking, major or minor implementation defect was found; no repair is proposed.

- **N1 (minor, consumer boundary):** `iteration_sums` and `iteration_step_small` prove numerical majorants, not full graph steps concerning every stage or actual infinite sums. Evidence: their conclusions at Constants.lean:843–849 and :792 contain no sequence or summation. Consumer action: apply the schedule/error-decay theorem and the induction margin bound to these inequalities. The source explicitly separates these steps (p2:996–1015); the current package does not hide them in hypotheses or claim to close them.
- **N2 (minor, interface boundary):** `cohSolution_eq_fourierSum` is definitional equality only. Evidence: CohomologicalDefs.lean:41–45 and its literal `rfl`. Consumer action: I-STRIP-3 must prove the analytic solution properties on this actual definition with `cohConst`, as design §2.4 requires. This audit makes no claim that the analytic theorem has been supplied by P2-1b.
- **N3 (minor, G1 assembly boundary):** `g1_error_small` yields upper error/smallness bounds; nonnegativity of e still follows from the pointwise error bound at θ=0 (p2:1123). The named C₁ and C₂ definitions and final analytic assembly belong to Apost/G1, not this package. Consumer action: retain that source-derived nonnegativity and use these arithmetic helpers.

Suspected pinned-source errata: none identified within the audited scope. No external PDF theorem was invoked to justify a new analytic result here. New deviations introduced by this package or auditor: none found. The previously audited design conventions (Prop bundling, explicit positive widths, operator norm rather than row-sum syntax, total Fourier definition) are retained. Remaining uncertainty is limited to future analytic/iteration consumers and external source claims outside this package; none is promoted to closure by this verdict.

## Verification commands and output

All Lean commands were serialized and used default resource budgets. No full-library rebuild, clean, update or cache download was run. The targeted build imports both other audited modules.

1. `git diff --stat main...HEAD`

```text
 KAM.lean                         |   3 +
 KAM/Apost/Constants.lean         | 952 +++++++++++++++++++++++++++++++++++++++
 KAM/Apost/Standing.lean          |  85 ++++
 KAM/Strip/CohomologicalDefs.lean |  49 ++
 4 files changed, 1089 insertions(+)
```

The KAM.lean change consists only of the three public imports. Generator consistency was checked by lint; the auditor did not edit or regenerate that file.

2. `git diff main...HEAD -- KAM/Frozen manifest` — exit 0, no output. `git diff --check main...HEAD` — exit 0, no output.

3. `wc -l KAM/Apost/Standing.lean KAM/Apost/Constants.lean KAM/Strip/CohomologicalDefs.lean` — exit 0:

```text
   85 KAM/Apost/Standing.lean
  952 KAM/Apost/Constants.lean
   49 KAM/Strip/CohomologicalDefs.lean
 1086 total
```

4. `nice -n 5 lake build KAM.Apost.Constants` — exit 0:

```text
Build completed successfully (2871 jobs).
```

5. `sh scripts/lint_sources.sh` — exit 0:

```text
check_lean_modules: PASS (206 Lean files, 0 comparator configurations)
FROZEN-ANCHOR GUARD OK
ABI HASHES OK (140 frozen declarations)
```

This checks forbidden proof escapes/resource overrides, size limits, module forms, generated imports, errata rendering, frozen invariants and elaborated frozen hashes. A separate scoped `rg -n 'set_option|sorry|admit|\baxiom\b|unsafe|opaque|EuclideanSpace|KAM\.(Provider|Frozen\.Theorems)' KAM/Apost/Standing.lean KAM/Apost/Constants.lean KAM/Strip/CohomologicalDefs.lean` had exit 1 (no matches).

6. Mechanical Appendix A comparison (Python, declaration header plus indented continuation lines, whitespace ignored) — exit 0:

```text
Appendix A comparison: 31 definitions/structures MATCH (whitespace ignored)
Probe generated: 74 theorem axiom checks, 28 definition type checks, independent rfl
```

The first draft of the comparison script overran adjacent declarations in Appendix A and stopped at kappa; correcting its declaration delimiter produced the output above. This was a script parsing issue, with no Lean source change.

7. Generated `.lake/abi-scratch/P21bAudit.lean` with `import KAM.Apost.Constants`, one `#print axioms` for each name matched by `^theorem ([^\s({:]+)` in the three scoped files (qualified by their namespace), and one `#check @...` for each definition. Added this independent equality probe:

```lean
example {n : ℕ} (ω : Fin n → ℝ) (g : (Fin n → ℂ) → ℂ) :
    KAM.cohSolution ω g = KAM.fourierSum
      (KAM.Diophantine.solve ω (KAM.torusCoeff (fun x => g (fun j => (x j : ℂ))))) := rfl
```

`nice -n 5 lake env lean .lake/abi-scratch/P21bAudit.lean > .lake/abi-scratch/P21bAudit.out` — exit 0, no warnings/errors. All 28 definition type checks succeeded with the argument counts in the classification table. Full axiom output for every result follows. The probe and output were deleted after recording this evidence.

Provider exact-type probe: **not applicable**. This package contains no provider or frozen-facing theorem; it imports only frozen definitions. No frozen theorem or provider shortcut appears in the package.

## Complete axiom output

```text
'KAM.Apost.Params.one_le_cast' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.Params.two_le_cast' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.one_le_mSize' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.M_le_mSize' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.σK_le_mSize' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.σB_le_mSize' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.σT_le_mSize' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.one_le_cR' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.cohConst_le_cR' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.one_le_kappa' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.aExp_eq' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.eight_le_aExp' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.four_le_aExp' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.one_le_Theta' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.mSize_le_Theta' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.one_le_C_X' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.one_le_C_T' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.one_le_C_Omega' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.one_le_C_sym' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.one_le_C_red' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.one_le_C_xi0' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.one_le_C_xiN' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.one_le_C_g' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.one_le_C_xi' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.one_le_C_DK' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.one_le_C_lin' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.one_le_C_E' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.one_le_C_G' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.one_le_C_B' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.one_le_C_DN' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.one_le_C_DX' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.one_le_C_DT' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.one_le_c_step' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.one_le_c_sum' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.one_le_c_star' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.delta0_pos' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.delta0_le_one' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.eight_mul_delta0_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.constants_spec' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.two_mul_n_mul_mSize_le_C_DN' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.mSize_mul_C_B_le_C_DN' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.C_G_le_mSize_mul_C_B' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.C_DN_le_C_DT' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.n_le_C_DT' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.C_G_le_C_DT' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.one_le_mSize_mul_C_DT' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.gram_coeff_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.perturbation_small' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.pt_xn_sum_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.mul_rpow_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.div_absorb' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.absorb_mul_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.two_mul_pow_mul_le_aux' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.two_Theta_pow_three_mul_C_sym_le_c_step' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.two_Theta_sq_mul_C_DK_le_c_step' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.four_Theta_sq_mul_le_c_step' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.four_Theta_sq_mul_C_DK_le_c_sum' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.four_Theta_sq_mul_n_mul_C_DK_le_c_sum' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.four_Theta_sq_mul_C_B_mul_C_DK_le_c_sum' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.four_Theta_sq_mul_mSize_sq_mul_le_c_sum' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.two_rpow_mul_C_E_le_c_star' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.c_step_mul_max_le_c_star' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.two_mul_c_sum_div_le_c_star' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.step_small' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.error_decay_hyp' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.c_sum_small' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.iteration_step_small' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.sum_coef_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.iteration_sums' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.closeness_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.g1_error_small_aux' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.g1_error_small' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.g1_closeness_eq' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.cohSolution_eq_fourierSum' depends on axioms: [propext, Classical.choice, Quot.sound]
```
