# I-ZMAP independent audit 1

Overall verdict: **FAIL** for certification of all nine blueprint nodes as PROVED. Eight parent nodes pass; the scalar decay theorem passes, but the full target-space scope of the blueprint's decay argument is not implemented. This is a statement-coverage finding, not a refutation of a Lean theorem. See finding F1. The Part 2 transpose carrier adapter is a separate, disclosed integration obligation (F2).

Audited on 2026-10-27 at HEAD `a2495c0ba4b169f52731e211a4087f287feab75f`, against local main `68287300cfc71264d2b5b4aadc4cc3a1e68ebc8d`. Read AGENTS.md, PLAN, DECISIONS, AUDIT-PACKAGE, PROVER-COMMON, I-ZMAP, the map and the five-question handoff. Compared the declarations and proof bodies directly with the pinned blueprint and graph. The only persistent file written by this audit is this report; temporary probes were confined to `.lake/abi-scratch/` and removed.

## Node verdicts

All declaration names below are fully qualified with `KAM.`. File abbreviations: SB = `KAM/Strip/Bridges.lean`, MB = `KAM/Matrix/Bridges.lean`, C = `KAM/Strip/Cauchy.lean`, R = `KAM/Strip/Regularity.lean`, HC = `KAM/Strip/HigherCauchy.lean`, A = `KAM/Strip/Averages.lean`, F = `KAM/Strip/Fourier.lean`, N = `KAM/Matrix/Neumann.lean`. PASS means exact or stronger under the source conventions. PARTIAL and BYPASSED do not certify the literal step statement as a separate theorem.

| Node | Lean declaration and locator | Verdict | Reason |
|---|---|---|---|
| `bp:p1:neumann` | `KAM.neumann` MB:33; `KAM.neumann_pointwise` MB:46; existing `KAM.matrix_neumann_uniform` N:124 | PASS | Arbitrary finite matrix index, row-sum norm, relative smallness ≤ 1/2, invertibility and both constants exactly 2. Pointwise bounds give the prescribed sup-norm form. |
| `bp:p1:holomorphic-regularity` | `KAM.holomorphic_regularity` SB:127; `KAM.holomorphic_regularity_of_finiteDimensional` SB:93 | PASS | Open domain, holomorphy, finite-dimensional complex target; all derivative orders, smoothness, both norm identities and symmetry. The second adapter also covers a product domain. |
| `bp:p1:cauchy-open` | `KAM.cauchy_open` SB:152; `KAM.norm_coordinate_fderiv_le_of_closedBall` C:87; `KAM.norm_fderiv_le_of_closedBall` C:80; `KAM.norm_iteratedFDeriv_two_le_of_closedBall` HC:45; `KAM.norm_iteratedFDeriv_three_le_of_closedBall` HC:60 | PASS | Closed max-norm ball is precisely the polydisc; constants 1, 4, 32 are explicit and independent of the function and target dimension. |
| `bp:p1:cauchy-strip` | `KAM.cauchy_strip` SB:179; `KAM.norm_coordinate_fderiv_le_of_mem_complexStrip` C:126; `KAM.norm_fderiv_le_of_mem_complexStrip` C:117 | PASS | Coordinate bound δ⁻¹A and literal nδ⁻¹A full bound. Omits the unnecessary δ < ρ assumption; handles n = 0 explicitly. |
| `bp:p1:cauchy-corollaries` | `KAM.cauchy_corollaries_transpose` SB:207; `KAM.cauchy_corollaries_directional` SB:232; `KAM.cauchy_corollaries_directional_real` SB:249 | PASS | Transposed p-by-n Jacobian uses pδ⁻¹A in the row-sum norm; directional bound uses the frequency ℓ¹ norm, also for arbitrary normed targets. F2 records the later product carrier transport. |
| `bp:p1:averages-real` | `KAM.torusAverage_coordinate_eq_zero` A:108; `KAM.torusAverage_direction_eq_zero` A:126; `KAM.torusAverage_fderiv_eq_zero` A:142 | PASS | HasFDerivAt plus continuous derivative expresses C¹; any real Banach target strengthens the scalar statement. Coordinate result needs only that coordinate's periodicity. |
| `bp:p1:averages` | `KAM.averages` SB:266; `KAM.torusAverage_complex_coordinate_eq_zero` A:172; `KAM.torusAverage_complex_direction_eq_zero` A:199; `KAM.norm_torusAverage_le_of_strip_bound` A:220 | PASS | Complex holomorphy supplies real C¹ regularity. Scalar, vector and matrix targets, correct cube and norms. Complex directions strengthen the real-frequency case. |
| `bp:p1:averages-matrix` | `KAM.averages_matrix` SB:294; `KAM.torusAverage_matrix_apply` SB:282 | PASS | Explicitly identifies Bochner and entrywise averages and supplies the C¹ derivative integral identity. Continuity and periodicity imply boundedness on the real torus, so a global bound A represents its supremum. |
| `bp:p1:decay` | `KAM.norm_torusCoeff_le_of_lt` F:229 | PARTIAL / FAIL full scope | Exact scalar period-one estimate, all k and 0 ≤ ρ′ < ρ, with the correct negative exponential and modeSize. No W-valued coefficient theorem despite blueprint p1:790. F1. |

| Step node | Lean declaration and locator | Verdict | Reason |
|---|---|---|---|
| `step:p1:neu-series` | No separate series declaration; `KAM.isUnit_add_of_inverse_norm_mul_le_half` N:33 uses Mathlib's `isUnit_one_sub_of_norm_lt_one` | BYPASSED | Parent needs no named S or series identity. |
| `step:p1:neu-inverse` | `KAM.isUnit_add_of_inverse_norm_mul_le_half` N:33; `KAM.norm_inverse_add_le` N:51 | PARTIAL | Invertibility and quantitative bound proved; formula S A⁻¹ is not stated. Parent remains faithful. |
| `step:p1:neu-difference` | `KAM.inverse_sub_inverse_add` N:45; `KAM.norm_inverse_add_sub_inverse_le` N:67 | PASS | Opposite-sign resolvent identity with the other multiplication order gives the same norm estimate. Both forms hold in the noncommutative matrix ring; no commutation is assumed. |
| `step:p1:neu-pointwise` | `KAM.matrix_neumann_uniform` N:124; `KAM.neumann_pointwise` MB:46 | PASS | Source invertibility and uniform inverse/perturbation bounds only. |
| `step:p1:hreg-line` | `KAM.norm_fderiv_le_of_closedBall_bound` C:53 | PASS | Bound needed only on the closed ball, arbitrary complex normed domain. |
| `step:p1:hreg-integral` | Inside `KAM.differentiableAt_fderiv_apply_of_bounded` R:47, especially R:98–115 | BYPASSED as export | Cauchy derivative formula is actually proved locally via `deriv_eq_smul_circleIntegral`; not separately exported. |
| `step:p1:hreg-differentiate` | `KAM.differentiableAt_fderiv_apply_of_bounded` R:47 | PARTIAL | Centre-only differentiability with a bound on U; no exported integral formula for the derivative. R:120 supplies local bounds on a smaller ball at every point, closing the parent without extra hypotheses. |
| `step:p1:hreg-full` | `KAM.differentiableOn_fderiv_of_isOpen_pi` R:120; `KAM.differentiableOn_fderiv_of_isOpen` R:178 | PASS | No global boundedness assumption in the parent theorem. |
| `step:p1:hreg-orders` | `KAM.contDiffOn_infty_of_differentiableOn` R:163; `KAM.differentiableOn_iteratedFDeriv_of_differentiableOn` SB:60; `KAM.holomorphic_regularity_of_finiteDimensional` SB:93 | PASS with adapters | Every iterated derivative is holomorphic; canonical derivative norm identities included. |
| `step:p1:hreg-symmetry` | `KAM.fderiv_apply_comm_of_differentiableOn` SB:70; `KAM.holomorphic_regularity` SB:127 | PASS with adapters | Schwarz symmetry from local differentiability, both bilinear and coordinate forms. |
| `step:p1:co-first` | `KAM.norm_fderiv_le_of_closedBall` C:80; `KAM.norm_coordinate_fderiv_le_of_closedBall` C:87 | PASS | Operator and coordinate bounds A/δ. |
| `step:p1:co-second` | `KAM.norm_iteratedFDeriv_two_le_of_closedBall` HC:45 | PASS | Constant 4, bound only on closed ball. |
| `step:p1:co-third` | `KAM.norm_iteratedFDeriv_three_le_of_closedBall` HC:60 | PASS | Constant 32, bound only on closed ball. |
| `step:p1:co-constants` | `KAM.cauchy_open` SB:152 and the preceding declarations | PASS | Literal numerals 1, 4, 32. |
| `step:p1:cs-coordinate` | `KAM.norm_coordinate_fderiv_le_of_mem_complexStrip` C:126 | PASS | Arbitrary complex normed target. |
| `step:p1:cs-full` | `KAM.norm_fderiv_le_of_mem_complexStrip` C:117; `KAM.cauchy_strip` SB:179 | PASS with adapter | Existing bound A/δ is sharper for positive n; adapter supplies the literal n bound also at n = 0. |
| `step:p1:cc-transpose` | `KAM.cauchy_corollaries_transpose` SB:207 | PASS with adapter | Sum over p target entries, not n source entries. |
| `step:p1:cc-omega` | `KAM.cauchy_corollaries_directional` SB:232; real form SB:249 | PASS with adapters | Linear expansion into coordinate directions; no dimension factor beyond the stated ℓ¹ norm. |
| `step:p1:ar-one` | Local `hline` in private `torusAverage_coordinate_succ_eq_zero` A:68 | INLINED | FTC and periodic endpoints exactly as in the blueprint; not actually a different route. |
| `step:p1:ar-fubini` | `KAM.torusAverage_coordinate_eq_zero` A:108; `KAM.torusAverage_direction_eq_zero` A:126 | PASS | Cube product measure and Fubini; continuous derivatives justify integrability. |
| `step:p1:av-derivatives` | `KAM.continuous_fderiv_real_of_holomorphic` A:160; coordinate/directional results A:172,199 | PASS | Derivative continuity proved from holomorphy; boundedness not used. |
| `step:p1:av-bound` | `KAM.norm_torusAverage_le_of_strip_bound` A:220 | PASS | Bound uses volume of unit cube = 1; holomorphy unnecessary. |
| `step:p1:am-bound` | `KAM.norm_torusAverage_le` A:43; `KAM.averages_matrix` SB:294 | PASS with adapter | Entrywise/Bochner identification justifies the operator norm estimate. |
| `step:p1:am-derivative` | `KAM.torusAverage_fderiv_eq_zero` A:142; `KAM.averages_matrix` SB:294 | PASS with adapter | Continuity of the evaluated derivative justifies commuting evaluation and integration. |
| `step:p1:dec-shift` | `KAM.torusAverage_imag_shift` F:114 | BYPASSED, scalar only | Homotopy of all imaginary coordinates at once, using zero average of a periodic derivative. Does not state each I[j−1] = I[j]. |
| `step:p1:dec-bound` | In `KAM.norm_torusCoeff_le_of_lt` F:229, using `KAM.norm_character` F:68 | PASS scalar / PARTIAL W | Integrand bound and volume-one estimate are inlined. Same carrier limitation as F1. |
| `bp:p1:decay#boundary-radius` | `KAM.norm_torusCoeff_le` F:291 | PASS scalar / PARTIAL W | Limit as ρ′ increases to positive ρ; no assumption of extension to a closed strip. |

## Answers to the five audit questions

1. **COVERED rows.** Direct comparison confirms all scalar and correctly typed COVERED assertions, except the map's unqualified full coverage of decay and its boundary-radius/dec-bound consequences (F1). No changed normalizer, sign, constant dependence or matrix norm was found. Finite-dimensional W supplies completeness and second countability in the older lemmas. Positive strip width in `averages` is the strip convention at p0:19, not an extra analytic premise. Coordinatewise periodicity is a consequence of the source's integer-shift periodicity. Sup bounds are legitimately pointwise by PROVER-COMMON. No n ≥ 2 premise is needed by these adapters.

2. **Every adapter.** All 14 new public theorems were inspected and axiom-checked. SB:60 derives iterated holomorphy from R:163 and Mathlib's within/global derivative comparison on open sets. SB:70 derives symmetry from `second_derivative_symmetric_of_eventually`. SB:93 and SB:127 package these with Mathlib's isometric derivative norm identities. SB:152 collects existing estimates. SB:179 weakens the sharper bound and proves the zero-dimensional case directly. SB:207 uses I-MAT's `norm_le_iff_forall_rowSum`; SB:232 expands a vector into coordinate directions; SB:249 rewrites real scalar norms. SB:266 packages existing averages. SB:282 commutes a continuous entry-evaluation map with an integrable continuous matrix function; SB:294 uses this equality for both conclusions. MB:33 converts nonsingular inverse to ring inverse; MB:46 applies it pointwise. No definition, hidden structure field, conclusion-shaped hypothesis, frozen-theorem shortcut or new analytic assumption is introduced. Existing Mathlib and infrastructure suffice.

3. **Bypasses and partial steps.** The Neumann parent is faithful without constructing S. The regularity parent is faithful without exporting a derivative integral formula; the existing local differentiability proof uses that formula internally, and R:120 supplies local boundedness from continuity/compactness. The real-average one-variable step is inlined, not bypassed mathematically. The alternative imaginary-shift proof faithfully proves the scalar decay parent, but does not enlarge its carrier to W. These distinctions should survive any graph-status update: do not mark the omitted literal statements PROVED by a declaration that does not state them. The shift proof uses Cauchy estimates, regularity and averages rather than the rectangle route; the graph source proof and Lean route should remain distinguishable.

4. **Every direct decay consumer in graph DEPS.** Parsing all node blocks gives exactly the following four consumers (the second column names the dependency, not an inferred extra edge):

   | Consumer | Decay dependency | Is scalar/entrywise sufficient? |
   |---|---|---|
   | `bp:p1:summation` (graph:3302ff; p1:822–829) | `bp:p1:decay` | Yes for scalar summation, and for a componentwise Fourier representation. No for the same displayed weighted coefficient-norm sum in an arbitrary W or matrix operator norm without an additional argument. |
   | `step:p1:sum-converse` (graph:3418ff; p1:859–865) | `bp:p1:decay#boundary-radius` | Yes scalar. Entrywise decay with a common A alone does not prove the literal matrix operator-norm coefficient bound with the same constant. |
   | `step:p1:coh-data` (graph:3513ff; p1:904–906) | `bp:p1:decay#boundary-radius` | Yes: graph SOURCE_HYPOTHESES explicitly says g scalar and p1:902 says “Let first g be scalar.” |
   | `bp:p1:decay#boundary-radius` (graph:3889ff; p1:819–820) | `bp:p1:decay` | Yes scalar; a general W boundary statement inherits F1. |

   Transitive cohomological use is sound at the mathematical scope inspected: p1:959–966 solves vector and matrix equations entrywise; p1:984–996 recovers the matrix operator-norm estimate by testing against vectors and uniqueness, rather than summing entry bounds and dropping a dimension factor. This does not implement W-valued decay or certify the separate I-STRIP-2/3 packages. Scalar sufficiency for this route is distinct from fidelity to the broader decay statement.

5. **Part 2 transpose carriers.** `step:p2:geo-de` at p2:568–570 needs the transpose estimate for E with target `(Fin n → ℂ) × (Fin n → ℂ)`. `step:p2:pt-dl` at p2:840–842 needs it for K̃−K with the same target. The present theorem accepts `Fin p → ℂ` only. A consumer must transport through a complex linear isometry from the product max norm to sum-indexed functions and then to `Fin (2*n) → ℂ`, prove the derivative/Jacobian transpose and operator-norm transport identities, or provide the finite-index row-sum theorem directly with cardinality 2*n. A set-theoretic equivalence alone is insufficient. `Equiv.sumArrowEquivProdArrow` in Matrix/Norms documents the identification, not the required derivative transport theorem. In contrast, the directional uses `step:p2:fb-torsion` (p2:419–421) and `step:p2:pt-xn` (p2:860–863) are already covered for matrix targets by SB:232/249; no flattening is needed there. No fix was made, as requested.

## Definition classification

The branch introduces **no def, abbrev or structure**: both new Lean files contain only theorems. Existing objects inspected for semantic attachment:

| Object | Classification and whole-carrier behavior |
|---|---|
| `KAM.torusAverage` (A:32) | Intended Bochner integral over the closed unit cube. Totalized integral can be zero on nonintegrable data; derivative and matrix-identification uses establish continuity/integrability. The norm-only estimate A:43 remains valid even with totalization and does not supply a false integral identity. |
| `KAM.character` (F:40) | Literal period-one complex exponential on the whole complex carrier. No fallback. |
| `KAM.torusCoeff` (F:44) | Intended scalar Fourier coefficient, character with index −k. Under decay hypotheses the integrand is continuous on the cube, so totalized integration is not exploited. It has no W-valued version. |
| `KAM.Fourier.modeSize` (`KAM/Fourier/Derivative.lean:37`) | Sum of absolute values of the integer coordinates, as required by the exponential. |
| `KAM.complexStrip` (frozen definition) | Literal coordinatewise strict imaginary-part inequalities. The source uses positive widths; empty/zero-dimensional cases are handled by the Lean statements. |
| Matrix inverse (Mathlib) | Total nonsingular inverse; all nontrivial inverse claims require `IsUnit A` and prove `IsUnit (A + Δ)` before using cancellation. No reliance on a singular inverse fallback. |

The adapter's entrywise average agrees with frozen `KAM.torsionAverage`'s cube and entrywise integration convention. It does not claim continuity of the frozen torsion function for free; a consumer must establish that premise.

## Findings, uncertainties and proposed fixes

**F1 — major, blocking the all-nine-PROVED claim: full decay carrier coverage is missing.** Pinned `blueprint/parts/p1-analysis.tex:790` says “Let u take values in W”; p1:26–28 defines W as a finite-dimensional complex normed space, explicitly including matrices with the operator norm, and p1:44–46 defines coefficients entrywise for vector/matrix values. The lemma p1:785–786 does not restrict u to ℂ. In contrast F:231 and F:293 bind `u : (Fin n → ℂ) → ℂ`, and F:44 defines only scalar coefficients. The map at lines 239–242 claims the lemma/consumers/definition are scalar and concludes COVERED; that reading silently discards the stated W scope. The map's recommendation at lines 267–269 to mark every parent PROVED is therefore too strong.

The missing assertion is the dimension-free bound `‖û[k]‖ ≤ exp (−2πρ′|k|₁) A` in the original W norm, with the matching boundary-radius form. Entrywise scalar estimates against the single bound A give, for a matrix with q columns, only the immediate row-sum bound q times that scalar estimate; dropping q is unjustified. This is not evidence that the W-valued source theorem is false: its own W-valued contour argument is appropriate. Proposed fix: add distinct W-valued coefficient and decay adapters, via a W-valued shift/integral proof or continuous linear functional tests, plus the boundary limit; otherwise obtain an explicit source/graph scope ruling and leave the broader node PARTIAL. Do not silently narrow the source. Existing scalar results remain accepted.

**F2 — minor, downstream integration obligation: transpose theorem has a Fin-only target.** Evidence and exact consumers are in answer 5. Proposed fix belongs to the Part 2 consumer or a later adapter package: a finite-index transpose theorem or norm-preserving product/Fin transport. The current Part 1 transpose statement itself is correct and matches its stated ℂ^p target, so this does not independently fail I-ZMAP.

**F3 — minor documentation defect.** SB:245–248's real-frequency adapter docstring begins “The real-frequency form” and SB:281's matrix-evaluation helper begins “A matrix-valued Bochner average”, whereas I-ZMAP requests each adapter's docstring begin with its blueprint label. The other adapter declarations identify their node. Proposed fix: prefix these two docstrings with the relevant node/step label (or explicitly classify the evaluation lemma as a non-node helper). This is traceability only.

No suspected mathematical defect in Zohar's existing proofs was found. No pinned-paper erratum is alleged: graph SPEC treats the pinned blueprint as the operative source and papers as provenance. F1 is a blueprint-to-Lean scope deviation already partly disclosed by the prover, with an incorrect coverage conclusion; F2 is disclosed missing consumer attachment. No source or frozen contract was altered by this audit. Uncertainty is limited to whether the orchestrator intended a scalar-only scope ruling for decay: none appears in the read briefs, DECISIONS or source. Such an intention cannot replace the literal W scope in an independent fidelity audit.

## Independent checks and exact outputs

All commands ran from `/root/code/KAM-w-zmap`. No concurrent build or Lean probe was run; lint finished its ABI elaboration before the probe started. No heartbeat, recursion or synthesis limit override was used. No provider is introduced in this package, so the provider/frozen exact-type probe is **not applicable**.

`git diff --stat main...HEAD`:

```text
 KAM.lean                           |   2 +
 KAM/Matrix/Bridges.lean            |  62 ++++++++
 KAM/Strip/Bridges.lean             | 315 +++++++++++++++++++++++++++++++++++++
 docs/campaign/audits/I-ZMAP-map.md | 289 ++++++++++++++++++++++++++++++++++
 4 files changed, 668 insertions(+)
```

`git diff main...HEAD -- KAM/Frozen manifest` and the corresponding name-only diff of the six existing files named in the package brief: no output, exit 0. Thus frozen files/manifest and Zohar's mapped files are untouched. The KAM.lean diff contains only the two new public imports; the root-generation check passes. This audit did not edit KAM.lean or README.md.

`nice -n 5 lake build KAM.Strip.Bridges KAM.Matrix.Bridges` (one targeted build process):

```text
Build completed successfully (2856 jobs).
```

Exit 0. Existing imported infrastructure is checked through these targets; F:229/291 is additionally imported by the axiom probe. No whole-library rebuild was requested.

`sh scripts/lint_sources.sh`:

```text
check_lean_modules: PASS (185 Lean files, 0 comparator configurations)
FROZEN-ANCHOR GUARD OK
ABI HASHES OK (140 frozen declarations)
```

Exit 0. This checks forbidden proof escapes and resource overrides, module shape, line/file limits, generated root and errata freshness, frozen hashes and elaborated ABI hashes. The changed Lean files have 315 and 62 total lines; the six mapped existing files have 157, 185, 94, 229, 308 and 145 lines, respectively.

`git diff --check main...HEAD`: no output, exit 0. `sha256sum -c docs/graph/K/CORPUS.sha256`:

```text
blueprint/parts/p0-conventions.tex: OK
blueprint/parts/p1-analysis.tex: OK
blueprint/parts/p2-aposteriori.tex: OK
blueprint/parts/p3-uniqueness.tex: OK
blueprint/parts/p4-measure.tex: OK
```

Exit 0. These are the pinned source texts used for the audit.

The temporary probe imported `KAM.Strip.Bridges`, `KAM.Matrix.Bridges`, and `KAM.Strip.Fourier`, and issued `#print axioms KAM.<name>` for every public `theorem` in the two adapter files and all six mapped existing files (66 declarations). It also elaborated three ordinary `example`s: regularity with matrix target, the holomorphic average bound with matrix target in the operator norm, and Neumann bounds indexed by `Fin n ⊕ Fin n`.

Command: `nice -n 5 lake env lean .lake/abi-scratch/IZmapAudit.lean > .lake/abi-scratch/IZmapAudit.out 2>&1`. Exit 0, no errors or warnings; 66 axiom receipts, all exactly `[propext, Classical.choice, Quot.sound]`. The complete axiom output follows; the three instantiation examples produced no output.

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
```

Temporary probe and output removed after recording these receipts.
