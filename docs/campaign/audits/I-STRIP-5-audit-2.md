# I-STRIP-5 independent delta audit 2

Overall verdict: **PASS WITH NOTES under the explicit han-series BYPASSED ruling.** F2's missing quantitative inequality is now fully proved and exported for the same coefficients. The adjusted parent statements preserve their nodes. No proved Lean parent needs the unproved contour identification. The graph still needs to record the authorized replacement route, including both incoming dependency edges and the contour-specific wording in han-bounds; this report does not certify the unchanged graph as closed.

## Scope and revision

Compared b9ad19f with 87307a5, the repair requested in this turn. During this audit HEAD advanced to 8b2fbd91b108282813bc3d6430ad8aa9b5a4ba50 (an unrelated I-P1B graph/audit update). `git diff 87307a5..HEAD -- KAM/Strip` is empty, so the Lean code checked is exactly the requested repair. The observed graph at that later HEAD still has the original han-series dependencies.

Re-read the governing rules, plan, decisions, common/package/audit briefs and audit 1. Only this report was edited; a probe under .lake/abi-scratch/ was created and deleted. The previous report remains the baseline for unchanged definitions and results.

## Requested checks

**(a) F2: resolved.** At KAM/Strip/AnalyticSeries.lean:319–331, `holomorphic_series` chooses one family c before any upper bound A, then gives all of:

- the coefficient bound for every A bounding F on the closed polydisc;
- absolute summability and expansion to F on the entire open polydisc of radius r;
- `HasSum (fun α => t ^ (∑ j, α j)) ((1-t)⁻¹ ^ m)`, with exactly `t = ‖z-z₀‖ / r`;
- the bound on the tsum of norms by `A * (1-t)⁻¹ ^ m`, for that same c, every interior z, and every such A.

The norm of a complex scalar times c is its absolute value times the norm of c. Thus the exported left side is exactly the blueprint's sum of `|c_α| |(z-z₀)^α|`; no different carrier or norm is substituted. The bound holds in particular for the blueprint's maximum A. Positive r and interior membership give 0 ≤ t < 1. The inverse-power notation is the blueprint's exponent −m.

The proof at :334–357 derives geometric domination from coefficient bounds and the max norm, establishes summability, and applies `hasSum_le`. The new `hasSum_prod_pow` (:64) and `hasSum_pow_sum` (:78) prove the finite-product geometric sum, including dimension zero and t = 0. Their helper's induction hypotheses are discharged by actual induction in the public theorem; they are not added assumptions in holomorphic_series.

This completely supplies the numerical SOURCE_CONCLUSION of han-bounds (blueprint p1-analysis.tex:343–348; DEPGRAPH.md:1730). The old graph's identification of c as a contour integral is a separate F1 issue, handled by the authorized route substitution below. The original contour-defined statement has not been newly proved.

**(b) Adjusted parent statements: preserved.** KAM/Strip/Analytic.lean:101–117 retains the full holomorphic-analytic conclusion: complex and real analyticity, multi-index expansion, absolute convergence and coefficient estimates on every admissible polydisc. It adds the stronger quantitative conclusions from (a); hypotheses and coefficient quantifier order are unchanged. A Lean probe projected this strengthened result to the complete old statement successfully.

The declaration statement of `holomorphic_series_real` (:145–155) is textually identical to audit 1's version, as is `holomorphic_analytic_real` (:128–134). Only the former's proof destructuring changed, to discard the two extra conclusions of holomorphic_series (:160). Real coefficients, their bound, absolute convergence and recovery of F remain intact. The real-part construction and its norm contraction are unchanged. There is no new hypothesis, smaller radius, weaker conclusion or changed ambient norm.

**(c) F1 bypass: mathematically sufficient, graph recording still pending.** The ruling is accepted as explicit authorization for an alternative route, rather than evidence that the omitted contour formula was proved.

There are exactly two direct incoming graph dependencies on han-series:

| Parent in current graph | Existing dependency | Actual proved replacement |
|---|---|---|
| bp:p1:holomorphic-analytic | DEPGRAPH.md:1622,1625 lists han-series as a proof step | Analytic.lean:116–117 uses holomorphic_series, the Taylor-based analyticOnNhd_of_differentiableOn and real-inclusion composition. No contour-coefficient identity is used. |
| step:p1:han-bounds | DEPGRAPH.md:1736–1737 lists han-series, explicitly “coefficient formula” | AnalyticSeries.lean:332 uses exists_powerSeries_coeff, an already proved expansion/bound theorem obtained by induction in variables; :339–357 supplies the quantitative geometric estimate. No contour-coefficient identity is used. |

The old expansion helper still has a docstring referring to han-series (:207–213), and holomorphic_series calls it. This does **not** mean the proof invokes the missing formula: its type (:214 onward) contains only proved coefficient existence, bounds and expansion. It must be recorded as the replacement expansion lemma, not as proof of the bypassed full contour contract.

No direct Part 2–4 graph consumer uses han-series. The indirect consumers use analyticity, restrictions and bounds, all of which remain proved. The old graph's han-bounds SOURCE_HYPOTHESES (:1728) still says c denotes the contour integral constructed in the previous step. Merely changing han-series's status to BYPASSED would leave that wording and two active edges inconsistent.

Required recording by the orchestrator: retain the historical contour contract as BYPASSED, record the replacement expansion theorem and Taylor/geometric route, supersede or annotate both incoming edges, and record that han-bounds now concerns the same expansion coefficients instead of requiring their contour identification. Mirror the route record in docs/graph/K/packets/K-p1a.nodes.md. Preserve the original source contract as historical evidence rather than calling the contour formula PROVED.

Accordingly, **no proved Lean parent has an unpaid mathematical dependency** after the authorized substitution. The unchanged literal graph still has an unpaid han-series contract and edges until that substitution is recorded. Graph closure cannot be inferred from a node status change alone.

## Node disposition

All names in the declaration column have prefix KAM.

| Node | Declaration | Delta verdict |
|---|---|---|
| bp:p1:holomorphic-analytic | holomorphic_analytic; holomorphic_analytic_real | PASS; stronger quantitative clause, old contract machine-checked as a projection |
| step:p1:han-margin | han_margin | PASS; unchanged |
| step:p1:han-cauchy | han_cauchy | PASS; unchanged, alternative route does not require it |
| step:p1:han-series | exists_powerSeries_coeff supplies replacement expansion only | BYPASSED by explicit ruling; contour formula remains unproved |
| step:p1:han-bounds | holomorphic_series; hasSum_prod_pow; hasSum_pow_sum | PASS under route substitution; F2 resolved |
| step:p1:han-real | holomorphic_series_real; holomorphic_analytic_real | PASS; original statements preserved |
| bp:p1:real-restriction-consequences | real_restriction_consequences | PASS WITH NOTES; unchanged standing positive-width convention |
| bp:p1:real-restriction | real_restriction | PASS WITH NOTES; unchanged standing positive-width convention |
| step:p1:rr-analytic | analyticOnNhd_realRestriction | PASS; unchanged |
| step:p1:rr-derivative | realRestriction_fderiv | PASS; unchanged |
| step:p1:rr-consequences | norm_fderiv_realRestriction_le; realRestriction_add_int | PASS; unchanged |
| bp:p1:hamiltonian-real | hamiltonian_real | PASS; unchanged |
| step:p1:hr-derivative | hamiltonian_real_fderiv | PASS; unchanged |
| step:p1:hr-components | hamiltonianVectorField_eq_of_real | PASS; unchanged |
| step:p1:hr-matrix | hamiltonianVectorFieldℂ_eq_neg_omegaZero; omegaZero_hamiltonianVectorFieldℂ; omegaZero_omegaZero | PASS; unchanged |

No new top-level def, abbrev or structure was introduced. The eight definitions classified in audit 1 are unchanged. New local objects are geometric sums and majorants; no junk-value fallback, conclusion-shaped premise or assumed hard step was introduced.

## Finding disposition

- **F2 closed:** complete quantitative bound for the same c, plus the geometric sum equality, now exported and checked.
- **F3 closed:** `git ls-files 'scripts/__pycache__/*'` returns no paths. The files were removed from tracking. Locally regenerated untracked bytecode is not a tracked patch defect.
- **F1 superseded by authorized bypass:** no remaining proof-code blocker under that ruling. The missing contour identification must remain labelled bypassed, not proved.
- **Minor recording note:** graph and packet route records still need the updates described in (c). This blocks a claim that the current graph bookkeeping is closed, not acceptance of the proved replacement route.

No new suspected pinned-source erratum. The authorized deviation is the Taylor/induction replacement of the contour-coefficient route; the previous positive-width and stronger-matrix conclusions remain as audited in report 1.

## Checks

Checks were serialized: lint (including its Lean ABI subprocess), targeted build, then probe. Default Lean limits throughout; no clean or full-library build.

`sh scripts/lint_sources.sh` — exit 0:

```text
check_lean_modules: PASS (180 Lean files, 0 comparator configurations)
FROZEN-ANCHOR GUARD OK
ABI HASHES OK (140 frozen declarations)
```

`nice -n 5 lake build KAM.Strip.RealRestriction` — exit 0, covers both changed modules and their downstream real-restriction consumer:

```text
Build completed successfully (2852 jobs).
```

`git diff --check b9ad19f..HEAD` and `git diff --check` — empty output, exit 0.
`git diff main...HEAD -- KAM/Frozen manifest` — empty output, exit 0.
`git diff 87307a5..HEAD -- KAM/Strip` — empty output, exit 0.
`git ls-files 'scripts/__pycache__/*'` — empty output, exit 0.

`wc -l KAM/Strip/Analytic*.lean KAM/Strip/RealRestriction.lean`:

```text
  176 KAM/Strip/Analytic.lean
  153 KAM/Strip/AnalyticCauchy.lean
  359 KAM/Strip/AnalyticSeries.lean
  206 KAM/Strip/AnalyticTaylor.lean
  362 KAM/Strip/RealRestriction.lean
 1256 total
```

`rg -n 'set_option|sorry|admit|axiom|unsafe|opaque|EuclideanSpace|KAM.Provider|KAM.Frozen.Theorems' KAM/Strip/Analytic*.lean KAM/Strip/RealRestriction.lean` — empty output, exit 1 (no matches). Module conventions pass lint. Provider exact-type check: not applicable to this infrastructure package.

Statement comparison against `git show b9ad19f:KAM/Strip/Analytic.lean`, extracting each declaration through its pre-proof signature:

```text
holomorphic_series_real: statement text unchanged = True
holomorphic_analytic_real: statement text unchanged = True
```

`nice -n 5 lake env lean .lake/abi-scratch/audit-strip5-2.lean` — exit 0. Probe imports both AnalyticCauchy and RealRestriction, prints all 64 package theorem axiom sets, projects the new root to its complete previous statement, and extracts the quantitative coefficient-norm-times-monomial-norm bound with the same c directly from the new root. Both examples elaborate silently. Exact axiom output:

```text
'KAM.taylorSeriesAt_apply' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.han_margin' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.differentiableOn_iteratedFDeriv_of_isOpen' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.iteratedDeriv_line_eq_iteratedFDeriv' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.norm_iteratedFDeriv_le_of_closedBall' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.hasFPowerSeriesOnBall_taylorSeriesAt' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.analyticOnNhd_of_differentiableOn' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.hasSum_prod_pow_zero' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.hasSum_prod_pow_succ' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.hasSum_prod_pow' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.summable_prod_pow' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.hasSum_pow_sum' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.cons_mem_closedBall_iff' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.cons_mem_ball_iff' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.differentiable_cons' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.cons_add_smul_single' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.differentiableOn_coeff' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.norm_coeff_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.hasSum_first_variable' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.exists_powerSeries_coeff' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.holomorphic_series' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.continuous_torusMap' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.torusMap_mem_closedBall' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.torusMap_ne' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.differentiable_cons_first' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.torusIntegrable_cauchy' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.han_cauchy' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.realInclusion_apply' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.norm_realInclusion' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.realInclusion_mem_ball_iff' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.realPartCLM_apply' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.realPartCLM_realInclusion' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.norm_realPartCLM_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.realPartCLM_ofReal_smul' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.realInclusion_realPartCLM' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.analyticOnNhd_comp_realInclusion' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.holomorphic_analytic' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.holomorphic_analytic_real' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.holomorphic_series_real' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.realInclusion₂_apply' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.norm_realInclusion₂' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.realInclusion_injective' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.realInclusion₂_injective' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.realPartCLM₂_apply' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.realPartCLM₂_realInclusion₂' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.isRealOnReals_iff' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.norm_le_of_isometric_restriction' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.norm_realRestriction_le_of_linear' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.exists_realRestriction_of_linear' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.realRestriction_add_int' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.real_restriction_consequences' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.realInclusion_mem_complexStrip' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.analyticOnNhd_realRestriction' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.realRestriction_fderiv' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.norm_fderiv_realRestriction_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.real_restriction' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.realInclusion_single' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.hamiltonian_real_fderiv' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.hamiltonianVectorField_eq_of_real' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.omegaZero_omegaZero' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.hamiltonianVectorFieldℂ_eq_J' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.hamiltonianVectorFieldℂ_eq_neg_omegaZero' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.omegaZero_hamiltonianVectorFieldℂ' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.hamiltonian_real' depends on axioms: [propext, Classical.choice, Quot.sound]
```

Probe removed after checking. No additional proof uncertainty remains within this delta scope; the graph-recording limitation above remains explicit.

