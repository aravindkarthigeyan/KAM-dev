# I-ZMAP independent delta audit 2

Verdict: **PASS WITH NOTES**. **F1 and F3 are resolved. All nine I-ZMAP parent nodes can now be marked PROVED**, with the declarations below. The boundary-radius node is also covered in W's own norm. F2 remains a disclosed Part 2 carrier-transport obligation; it does not weaken the Part 1 transpose theorem and is not a package blocker.

Audited HEAD `473e89fe5d0946f98fb16d03256bf2ed8ab2699c` on branch `k/zmap`, on 2026-10-27. Delta baseline: `a2495c0ba4b169f52731e211a4087f287feab75f`, reviewed in `I-ZMAP-audit-1.md`. Current local main: `724be86209e5c4f7286820d814eed007d6aabef0`. Read the governing instructions and current plan/decisions, rechecked the pinned source, inspected the full delta and updated map, and reran validation. The delta changes only `KAM/Strip/Bridges.lean` and `I-ZMAP-map.md`. The previous eight passing parent-node assessments carry forward because their statements and proofs are unchanged; the earlier step-level bypass qualifications also remain in force.

## Parent-node certification

SB means `KAM/Strip/Bridges.lean`; MB means `KAM/Matrix/Bridges.lean`. Names are fully qualified. PROVED here certifies the individual mathematical node, not the validity of every downstream application or closure of a frozen root.

| Node | Lean declaration(s), current locator | Verdict and reason |
|---|---|---|
| `bp:p1:neumann` | `KAM.neumann` MB:33; `KAM.neumann_pointwise` MB:46 | PROVED. Same invertibility, relative smallness and two factor-2 bounds; finite-index matrices and pointwise uniform form. |
| `bp:p1:holomorphic-regularity` | `KAM.holomorphic_regularity` SB:135; `KAM.holomorphic_regularity_of_finiteDimensional` SB:101 | PROVED. All derivative orders, smoothness, isometric norm identities and symmetry; unchanged from audit 1. |
| `bp:p1:cauchy-open` | `KAM.cauchy_open` SB:160 | PROVED. Same polydisc and constants 1, 4, 32. |
| `bp:p1:cauchy-strip` | `KAM.cauchy_strip` SB:187 | PROVED. Coordinate and full-derivative bounds, including the literal n factor. |
| `bp:p1:cauchy-corollaries` | `KAM.cauchy_corollaries_transpose` SB:215; `KAM.cauchy_corollaries_directional` SB:240; `KAM.cauchy_corollaries_directional_real` SB:257 | PROVED. Transpose estimate for the stated Fin-indexed target, directional estimate for arbitrary complex normed targets. F2 applies only to later carrier transport. |
| `bp:p1:averages-real` | `KAM.torusAverage_coordinate_eq_zero` (`KAM/Strip/Averages.lean:108`); `KAM.torusAverage_direction_eq_zero` (:126); `KAM.torusAverage_fderiv_eq_zero` (:142) | PROVED. Existing C¹ periodic real-torus identities, unchanged. |
| `bp:p1:averages` | `KAM.averages` SB:274 | PROVED. Both derivative-average identities and the original target-norm bound. |
| `bp:p1:averages-matrix` | `KAM.averages_matrix` SB:303; `KAM.torusAverage_matrix_apply` SB:291 | PROVED. Entrywise and Bochner averages agree on continuous data, with the intended operator norm. |
| `bp:p1:decay` | `KAM.decay` SB:382; coefficient `KAM.torusCoeffW` SB:348 | PROVED. Complete complex normed W, all k, 0 ≤ ρ′ < ρ, exact dimension-free estimate in W's own norm. F1 resolved. |
| `bp:p1:decay#boundary-radius` | `KAM.decay_boundary_radius` SB:401 | PROVED. Same W and coefficient, positive ρ, full-radius exponential; no boundary-extension premise. |

The last row is the additional boundary-radius node, not a tenth parent in the package's nine-node list. The node references for corollaries and real averages must retain all their constituent declarations. This audit does not promote omitted literal intermediate statements such as the named Neumann-series formula or the rectangle-shift equalities to separately proved theorems.

## F1: statement, coefficient and proof checks

The governing blueprint is unchanged: `blueprint/parts/p1-analysis.tex:26–28` allows finite-dimensional complex normed W, including matrices in the row-sum operator norm; :44–46 defines the coefficient by averaging against the negative-index period-one character; :784–790 states decay and explicitly uses W; :819–820 gives the boundary-radius form.

`KAM.decay` binds arbitrary n and W with normed additive group, complex normed-space, compatible real normed-space/scalar-tower and completeness instances. Completeness is automatic for the source's finite-dimensional W; the real scalar structure is the compatible restriction needed for Bochner integration, not an extra analytic assumption. There is no finite-dimensionality, second-countability, dimension lower bound, pre-assumed coefficient bound or nonnegative-A premise in the theorem. Its ordinary hypotheses are precisely holomorphy on the frozen strip, coordinatewise period one, a pointwise bound A, and 0 ≤ ρ′ < ρ. The last two inequalities imply ρ > 0. Its conclusion is

```lean
‖KAM.torusCoeffW (fun x => u (fun j => (x j : ℂ))) k‖ ≤
  Real.exp (-(2 * Real.pi * ρ' * KAM.Fourier.modeSize k)) * A
```

Here modeSize is the sum of the absolute integer coordinates. The radius is geometric, the normalizer is 2π, the sign is negative, and the coefficient norm is the supplied W norm. There is no number-of-columns, target-dimension or other hidden constant. `KAM.decay_boundary_radius` has the identical hypotheses except that 0 < ρ replaces the inner-radius conditions, and the exponential uses ρ itself. These statements are stronger in target-space generality than the blueprint.

**New definition classification.** The only new def/abbrev/structure is the exposed `KAM.torusCoeffW` (SB:348). Its body is literally

```lean
KAM.torusAverage fun x =>
  KAM.character (-k) (fun j => (x j : ℂ)) • v x
```

Thus it is the W-valued integral on the same closed unit cube, with the same character and no extra normalization. Scalar multiplication is the correct W-valued replacement for multiplication by the complex character. `KAM.torusCoeffW_complex` (SB:352) proves scalar agreement by `rfl`. The matrix coefficient agrees entrywise with the blueprint: an independent elaborated probe applies SB:291 to the continuous character-times-matrix integrand and proves the explicit entrywise integral equality. No product or matrix norm is changed in this identification.

On arbitrary nonintegrable input the definition inherits Mathlib's totalized Bochner integral, as does the pre-existing torus average. The proof does not exploit that fallback: SB:326 proves continuity of the real restriction from holomorphy and positive width, and SB:367–369 establishes integrability of the character-times-function before commuting the integral with a functional. Hence on the entire source carrier the coefficient is the intended integral.

**Duality helper and proof.** `KAM.norm_torusCoeffW_le_of_dual` (SB:358) is a distinctly named conditional helper, not a source theorem with the difficult estimate assumed. It proves the implication from scalar tests to the W-norm bound, using Mathlib's `NormedSpace.norm_le_dual_bound` (`Mathlib/Analysis/Normed/Module/DoubleDual.lean:97`). Its scalar-test premise is discharged in each parent proof by Zohar's existing scalar decay lemma.

More explicitly, for every continuous complex-linear φ : W → ℂ, SB:370–373 proves φ(û[k]) equals the scalar coefficient of φ composed with u. The proof restricts φ to a real continuous linear map only to commute it with the Bochner integral; complex linearity still supplies the character scalar-multiplication identity. The scalar function is holomorphic and periodic, and its bound is ‖φ‖A. The scalar decay lemma yields exp(−2πρ′|k|₁)·‖φ‖A, rearranged into B‖φ‖, and the dual norm theorem yields ‖û[k]‖ ≤ B. SB:336 proves A ≥ 0 from the source bound at the zero point, rather than adding it as a premise. The boundary proof uses the existing scalar full-radius result in the same way. The two private helper results are included transitively in the main results' axiom checks.

The duality route is an explicit proof-route deviation from the blueprint's W-valued rectangle argument, using Mathlib's complex Hahn–Banach consequence. It is allowed by the audit's Mathlib/proof-route rules and contradicts no source claim. No new axiom, assumed dual estimate in a parent statement, or frozen-theorem shortcut appears.

This closes the earlier full-W decay gap for both direct estimates and the boundary-radius dependency used by summation. It does not certify the separate implementation of summation or the cohomological-equation packages.

## F3 and remaining note

**F3 resolved.** The docstring for `KAM.cauchy_corollaries_directional_real` now begins with `Blueprint bp:p1:cauchy-corollaries` (SB:254), and the matrix-evaluation docstring begins with `Blueprint bp:p1:averages-matrix` (SB:289). All new decay declarations and helpers likewise begin with their blueprint labels. No statement or proof in the previously approved adapters was changed by these docstring repairs.

**F2 — minor, deferred by the current task to Part 2 design.** The transpose result still accepts `Fin p → ℂ`. Part 2's `step:p2:geo-de` (`blueprint/parts/p2-aposteriori.tex:568–570`) and `step:p2:pt-dl` (:840–842) will need a norm-preserving product/sum/Fin identification with derivative/Jacobian compatibility, or a finite-index transpose adapter, for their phase-space-valued functions. A bare equivalence of types does not discharge that obligation. The directional estimates already accept those normed targets. Keep F2 attached to those consumers; it is not a reason to leave the literal Part 1 corollary node unproved. No fix was made here.

No new blocking or major findings, suspected pinned-source errata, or unreported source-statement deviations were found. The earlier scalar-scope uncertainty is resolved by the explicit W-valued implementation. The updated map now acknowledges the original scalar limitation and points to the W-valued adapters. This audit makes no claim of frozen root closure or completed Part 2 integration.

## Independent verification

Commands ran sequentially with respect to build/Lean execution; lint's ABI work completed before the separate probe. No heartbeat, recursion-depth or synthesis override was used. Provider exact-type comparison is not applicable: I-ZMAP introduces no provider.

`nice -n 5 lake build KAM.Strip.Bridges KAM.Matrix.Bridges` — exit 0:

```text
Build completed successfully (2873 jobs).
```

`sh scripts/lint_sources.sh` — exit 0:

```text
check_lean_modules: PASS (185 Lean files, 0 comparator configurations)
FROZEN-ANCHOR GUARD OK
ABI HASHES OK (140 frozen declarations)
```

The two package Lean files have 420 and 62 total lines, respectively. The lint validates forbidden escapes/overrides, module shape, size limits, generated files and frozen/ABI invariants. `git diff main...HEAD -- KAM/Frozen manifest` is empty, exit 0; the same name-only diff for Zohar's six mapped source files is empty. `git diff --check main...HEAD` has no output, exit 0. No whole-library rebuild, source edit or state-changing git command was run.

`sha256sum -c docs/graph/K/CORPUS.sha256` — exit 0:

```text
blueprint/parts/p0-conventions.tex: OK
blueprint/parts/p1-analysis.tex: OK
blueprint/parts/p2-aposteriori.tex: OK
blueprint/parts/p3-uniqueness.tex: OK
blueprint/parts/p4-measure.tex: OK
```

The scratch probe imports `KAM.Strip.Bridges` and `KAM.Matrix.Bridges`, checks axioms for all 70 public theorem declarations in the two adapter files and the six original mapped files, plus the new coefficient definition, and elaborates four examples: matrix entrywise coefficient equality, both matrix operator-norm decay bounds, and decay for arbitrary finite-dimensional W using only the source's finite-dimensionality to supply completeness. The exact command and result are recorded below.


`nice -n 5 lake env lean .lake/abi-scratch/IZmapAudit2.lean > .lake/abi-scratch/IZmapAudit2.out 2>&1` — final run exit 0, all four examples elaborated, no errors or warnings, 71 axiom receipts with only the permitted axioms. Two initial versions of the auditor's matrix-identity example failed because `simpa` normalized the function-valued scalar product differently on the two sides; replacing that step with `unfold KAM.torusCoeffW` followed by a direct `exact KAM.torusAverage_matrix_apply (hchar.smul hv) i j` resolved the probe. No package code was changed or failure concealed. The complete successful axiom output is:

```text
'KAM.differentiableOn_iteratedFDeriv_of_differentiableOn' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.fderiv_apply_comm_of_differentiableOn' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.holomorphic_regularity_of_finiteDimensional' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.holomorphic_regularity' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.cauchy_open' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.cauchy_strip' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.cauchy_corollaries_transpose' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.cauchy_corollaries_directional' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.cauchy_corollaries_directional_real' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.averages' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.torusAverage_matrix_apply' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.averages_matrix' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.torusCoeffW_complex' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.norm_torusCoeffW_le_of_dual' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.decay' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.decay_boundary_radius' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.neumann' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.neumann_pointwise' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.mapsTo_closedBall_line' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.norm_iteratedDeriv_line_le_of_closedBall' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.norm_fderiv_le_of_closedBall_bound' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.norm_fderiv_le_of_closedBall' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.norm_coordinate_fderiv_le_of_closedBall' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.isOpen_complexStrip' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.closedBall_subset_complexStrip' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.norm_fderiv_le_of_mem_complexStrip' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.norm_coordinate_fderiv_le_of_mem_complexStrip' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.norm_iteratedDeriv_line_le_of_mem_complexStrip' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.norm_iteratedDeriv_coordinate_le_of_mem_complexStrip' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.differentiableAt_fderiv_apply_of_bounded' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.differentiableOn_fderiv_of_isOpen_pi' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.contDiffOn_nat_of_differentiableOn_pi' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.contDiffOn_infty_of_differentiableOn_pi' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.contDiffOn_infty_of_differentiableOn' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.contDiffOn_nat_of_differentiableOn' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.differentiableOn_fderiv_of_isOpen' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.norm_fderiv_le_on_half_closedBall' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.norm_iteratedFDeriv_two_le_of_closedBall' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.norm_iteratedFDeriv_three_le_of_closedBall' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.norm_iteratedFDeriv_two_le_of_mem_complexStrip' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.norm_iteratedFDeriv_three_le_of_mem_complexStrip' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.volume_unitCube' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.norm_torusAverage_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.torusAverage_coordinate_eq_zero' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.integrableOn_unitCube_of_continuous' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.torusAverage_direction_eq_zero' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.torusAverage_fderiv_eq_zero' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.ofReal_mem_complexStrip' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.continuous_fderiv_real_of_holomorphic' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.torusAverage_complex_coordinate_eq_zero' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.torusAverage_complex_direction_eq_zero' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.norm_torusAverage_le_of_strip_bound' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.character_add' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.character_single' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.character_add_single' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.differentiable_character' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.norm_character' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.norm_character_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.torusAverage_imag_shift' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.norm_torusCoeff_le_of_lt' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.norm_torusCoeff_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.isUnit_add_of_inverse_norm_mul_le_half' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.inverse_sub_inverse_add' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.norm_inverse_add_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.norm_inverse_add_sub_inverse_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.matrix_opNorm_le_iff_rows' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.matrix_isUnit_add_of_inv_norm_mul_le_half' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.matrix_norm_inv_add_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.matrix_norm_inv_add_sub_inv_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.matrix_neumann_uniform' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.torusCoeffW' depends on axioms: [propext, Classical.choice, Quot.sound]
```

Scratch probe and output removed after recording the results. Only this report was written persistently by the delta audit; audit 1 and the pre-existing handoff remain untouched.
