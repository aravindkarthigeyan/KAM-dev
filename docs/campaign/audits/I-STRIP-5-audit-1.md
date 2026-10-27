# I-STRIP-5 independent audit 1

Overall verdict: **FAIL** against the full graph contracts. The four result nodes are mathematically covered, with the standing positive-width convention made explicit. Two substantive step nodes have incomplete exported conclusions: `han-series` omits identification of coefficients with contour integrals, and `han-bounds` omits the displayed quantitative bound on the sum of norms. Compilation and axiom hygiene pass. These are contract-completeness findings, not refutations of the proved Lean theorems.

Audited branch: `k/strip5`, HEAD `b9ad19fa7bdcb0ed10fbe587419c7a5191696e51`; comparison: `git diff main...HEAD` with observed main `e23278965becb7728946f20f2cb8f02f7b09b445`. Read AGENTS.md, PLAN.md, DECISIONS.md, AUDIT-PACKAGE.md, PROVER-COMMON.md, the package brief, handoff, graph contracts and corresponding blueprint text. No source corrections or git mutations were made.

## Node-by-node comparison

All declaration names below are in namespace `KAM`. File paths are under `KAM/Strip/`.

| Node | Lean declaration and locator | Verdict | Reason |
|---|---|---|---|
| `bp:p1:holomorphic-analytic` | `holomorphic_analytic`, Analytic.lean:100; `holomorphic_analytic_real`, :122 | PASS WITH NOTES | All parts (a),(b), including absolute convergence, radius r, coefficient bound and real-valued restriction. Coefficients are chosen before **every** bound A, stronger than fixing A to the maximum. Complete second-countable codomain includes every finite-dimensional W. |
| `step:p1:han-margin` | `han_margin`, AnalyticTaylor.lean:60 | PASS | Enlarged closed ball and a finite upper bound on F; finite-dimensional arbitrary complex domain is a generalization of the polydisc case. |
| `step:p1:han-cauchy` | `han_cauchy`, AnalyticCauchy.lean:91 | PASS | Correct kernel, normalization `(2πi)^(-m)`, center, radius and torus orientation; integrability proved in `torusIntegrable_cauchy`. Not used by main analyticity proof. |
| `step:p1:han-series` | `exists_powerSeries_coeff`, AnalyticSeries.lean:195 | FAIL | Existence, expansion and bounds are proved, but the coefficient contour-integral equality at p1:339–340 is absent. Finding F1. |
| `step:p1:han-bounds` | `holomorphic_series`, AnalyticSeries.lean:298 | FAIL | Coefficient bound, absolute convergence and expansion are proved. The quantitative sum bound `A(1-t)^(-m)` at p1:346 and graph SOURCE_CONCLUSION is absent; coefficients also lack contour identification. Findings F1–F2. |
| `step:p1:han-real` | `holomorphic_series_real`, Analytic.lean:139; `holomorphic_analytic_real`, :122; `holomorphic_analytic`, :100 | PASS WITH NOTES | General real analyticity plus explicit real-coefficient expansion for real-valued F. Proof takes componentwise real parts of complex coefficients and uses their norm contraction. |
| `bp:p1:real-restriction-consequences` | `real_restriction_consequences`, RealRestriction.lean:146; `exists_realRestriction_of_linear`, :117; `norm_realRestriction_le_of_linear`, :111; `realRestriction_add_int`, :126 | PASS WITH NOTES | Correct linear restriction and primary identity; `0 < ρ` is the Part 0 convention, not an unauthorized new source assumption. |
| `bp:p1:real-restriction` | `real_restriction`, RealRestriction.lean:219 | PASS WITH NOTES | Analyticity, differentiability, equality of embedded derivatives, norm bound, and conditional primarity. Positive width as above. Target carrier is the phase product used in the lemma; p1:1052 discusses a general p in the proof, which this theorem does not claim. |
| `step:p1:rr-analytic` | `analyticOnNhd_realRestriction`, RealRestriction.lean:168 | PASS | Real-part restriction is analytic; reality is unnecessary for this stronger projected statement, and is supplied when identifying it with K. |
| `step:p1:rr-derivative` | `realRestriction_fderiv`, RealRestriction.lean:177 | PASS | Embedding of real derivative equals complex derivative on real increments; reality hypothesis supplied. |
| `step:p1:rr-consequences` | `norm_fderiv_realRestriction_le`, RealRestriction.lean:207; `realRestriction_add_int`, :126 | PASS WITH NOTES | Both norm inequality and primarity, with standing positive width. |
| `bp:p1:hamiltonian-real` | `hamiltonian_real`, RealRestriction.lean:345 | PASS | Local agreement is an eventual equality near z; V open, z in V, holomorphy and reality on V's real points match. Derivative and frozen field conclusions are correct. Matrix clause is stronger. |
| `step:p1:hr-derivative` | `hamiltonian_real_fderiv`, RealRestriction.lean:248 | PASS | Real derivative recovered by uniqueness of derivatives of locally equal maps; no conclusion assumed. |
| `step:p1:hr-components` | `hamiltonianVectorField_eq_of_real`, RealRestriction.lean:280 | PASS | Applies derivative identity to `(0,e_i)` and `(e_i,0)` with correct signs. |
| `step:p1:hr-matrix` | `hamiltonianVectorFieldℂ_eq_neg_omegaZero`, RealRestriction.lean:321; `omegaZero_hamiltonianVectorFieldℂ`, :327; `omegaZero_omegaZero`, :302; `hamiltonianVectorFieldℂ_eq_J`, :316 | PASS | Correct coordinate transpose, signs and order. `Ω₀²=-I` gives inverse action directly. Algebraic identities need no holomorphy. |

No conclusion-shaped hypotheses, hidden proof assumptions in structure fields, wider constant dependencies, changed norms, or circular analytic assumptions were found. Pi and product norms are the intended maximum norms; continuous (multi)linear maps use operator norms. The main analyticity engine uses proved regularity, iterated Cauchy bounds and one-variable Taylor expansion along lines. Multi-index expansion uses induction on the number of variables, holomorphic coefficient functions, geometric domination and `HasSum.prod_fiberwise`. This alternative route does not contradict the blueprint, but cannot by itself certify omitted step conclusions.

## Answers to the five AUDIT QUESTIONS

1. **Positive width.** If read with unrestricted real ρ and n ≥ 2, both standalone assertions are false without positivity: take ρ = 0, K identically zero. The strip is empty, primarity is vacuous, K is holomorphic and real on reals, but `k(x+m)=k(x)+(m,0)` fails for nonzero m. The final probe machine-checks this at n = 2. However, the blueprint is **not actually under-hypothesized in context**: p0-conventions.tex:19 says verbatim “The complex strip of width $\rho>0$ is $T_\rho=…$”. This is the audit brief's allowed standing-convention exception, and the Lean result docstrings explicitly say `ρ > 0`. The handoff's claim of a blueprint defect overlooks this convention. For n = 0 the empty-strip claim would itself be false; that dimension is outside the standing n ≥ 2 setting and is not needed for the counterexample.

   Exhaustive DEPS lookup finds these direct Parts 2–4 consumers: `bp:p4:real-torus`, `step:p4:rt-analytic`, `step:p4:rt-small`, `step:p4:rt-lagrangian`, `step:p4:rt-ode`. There are no direct Part 2 or 3 consumers. All use normalized K on `T_(s/8)` (or W on `T_(s/16)` for the smallness bound): p4-measure.tex:1008–1060. Part 4 fixes `s₀ > 0` at :139 and `s=min(s₀,1)` at :157, so both widths are strictly positive. This verifies the blueprint consumers; it does not claim implementation of their future Lean proofs.

2. **Contour formula.** It is missing. No external Part 2–4 consumer uses the formula: the consumer chain outside this package goes through the root analyticity theorem and real restriction. But the immediate graph consumer **`step:p1:han-bounds` explicitly uses it**: DEPGRAPH.md:1737 labels the edge from `han-series` “coefficient formula”, and its source hypotheses identify c with that contour integral. The root also lists `han-series` as a substantive step. Thus “no downstream application needs it” cannot make the exact step contract PASS. F1 below distinguishes this from the fully proved root theorem.

3. **W hypotheses.** Yes, complete second-countable complex normed W covers every blueprint use: p1-analysis.tex:23–26 fixes finite-dimensional W, including finite products, matrices with the intended operator norm, and spaces of linear/multilinear maps. These spaces are complete and second countable. The probe specializes the theorem to arbitrary finite-dimensional W, installing `ProperSpace W := FiniteDimensional.proper_rclike ℂ W`; both required instances then synthesize. An initial probe tried naked `inferInstance` without this local instance and failed; that is an instance-installation issue, not an extra mathematical restriction.

4. **realRestriction.** `Re ∘ K ∘ ι` is a legitimate total real-part projection on the whole carrier. It equals the genuine restriction under `IsRealOnReals`, exactly as `isRealOnReals_iff` (RealRestriction.lean:84–95) proves. All uses identifying embedded values/derivatives of k with K have the reality premise. `analyticOnNhd_realRestriction` omits reality because analyticity of the projected map holds even for nonreal K; that stronger claim does not rely on junk values. Only this module currently uses the new `realRestriction` API. Future consumers still need the reality premise for identification, which their blueprint hypotheses provide.

5. **Matrix identity.** Accepted strengthening. Frozen `hamiltonianVectorFieldℂ` and `gradientColumn` are built from the same total `fderiv`, so their coordinate identities hold for every φ. At nondifferentiable points Mathlib's total derivative can be zero, but the identities remain algebraically valid; every use interpreting them as actual derivatives retains holomorphy. `omegaZero_omegaZero` proves `Ω₀²=-I`; linearity gives both inverse identities for `-Ω₀`. No operator-norm result is needed for this algebra. `hamiltonianJ` implements the dual-to-coordinate map stated at p1:1104–1105, rather than introducing a differently normalized symplectic matrix.

## Definition classification

Every new top-level definition is listed; there are no new abbrevs or structures.

| Definition | Classification and whole-carrier behavior |
|---|---|
| `taylorSeriesAt` (AnalyticTaylor.lean:49) | Intended formal multilinear series `(n!)⁻¹ Dⁿf(z)`. Defined for arbitrary f using Mathlib's total iterated derivative. Convergence theorems require holomorphy, so no reliance on derivative fallback. |
| `realInclusion` (Analytic.lean:38) | Genuine continuous real-linear coordinate inclusion, isometric, including dimension zero. |
| `realPartCLM` (Analytic.lean:54) | Genuine componentwise real-part projection; norm contraction on all inputs. |
| `realInclusion₂` (RealRestriction.lean:47) | Product of the two genuine real inclusions, isometric. |
| `realPartCLM₂` (RealRestriction.lean:68) | Product real-part projection. |
| `realRestriction` (RealRestriction.lean:80) | Genuine total projected restriction; actual restriction after the explicit reality guard. |
| `gradientColumn` (RealRestriction.lean:307) | Coordinate column of the total complex derivative, θ block first. Actual partial derivatives where differentiable. |
| `hamiltonianJ` (RealRestriction.lean:312) | Genuine coordinate map on every continuous complex-linear functional: `(ℓ(0,eᵢ),−ℓ(eᵢ,0))`. No fallback. |

Local `set`/`let` objects in the series induction are actual Taylor coefficients, slices, domains, and geometric majorants. No bundled assumptions or choice of arbitrary default objects replaces a hard analytic step. The dimension-zero base case uses the unique empty multi-index, correctly.

## Findings and proposed fixes

**F1 — major, blocking full package acceptance: missing coefficient contour identity.** Blueprint p1-analysis.tex:338–340 and DEPGRAPH.md:1693–1709 require expansion with c identified with the displayed contour integral. AnalyticSeries.lean:188–199 explicitly says the coefficients “are not identified with contour integrals” and exports only an existential expansion/bound. `han_cauchy` represents F(w), not the coefficients c. Fix: prove an additional declaration identifying the same expansion coefficients with `(2πi)^(-m)` times the torus integral of `∏j (ζj−z₀j)^(-αj−1) • F ζ`, and update the handoff for `han-series`. An authorized graph/blueprint revision could instead retire that exact contract; none is present here. Merely changing the proof route is insufficient.

**F2 — major, blocking complete `han-bounds` coverage: missing quantitative absolute-sum inequality.** Blueprint p1-analysis.tex:346 states verbatim “$\sum_\alpha\abs{c_\alpha}\abs{(w-z_0)^\alpha}\le A\sum_\alpha t^{\abs\alpha}=A(1-t)^{-m}$”; DEPGRAPH.md:1728–1730 includes that quantitative conclusion. `holomorphic_series` at AnalyticSeries.lean:298–305 gives coefficient bounds plus `Summable` and `HasSum`, without a bound on the tsum of norms. The proof at :310–326 already supplies coordinatewise geometric domination, so this looks like a short missing corollary, not a mathematical obstruction. Fix: export the inequality for the same c, every upper bound A, and `t=‖w−z₀‖/r`, using the finite-product geometric sum. Complete the coefficient identification from F1 for the graph's contour-defined c.

**F3 — minor, branch hygiene: tracked Python bytecode changed.** `git diff --name-status main...HEAD` includes `scripts/__pycache__/check_lean_modules.cpython-312.pyc`. It has no mathematical role and should be removed from the patch by the orchestrator, with generated bytecode excluded from tracking under the repository's policy. Auditor did not edit it. Generated KAM.lean adds the five expected module imports and passes the generator check.

No defect in a pinned mathematical source was discovered. The positive-width concern is resolved by the quoted Part 0 convention, so it should not be recorded as an unqualified source erratum. Declared route deviations: Taylor-along-lines analyticity and variable-by-variable Taylor series instead of kernel expansion; direct algebra instead of the operator-norm predecessor in `hr-matrix`; mathematically stronger codomain and matrix hypotheses. Unresolved statement deviations are F1–F2.

## Checks and exact output

All Lean checks used default resource limits. No library-wide rebuild or clean was run. Lint's ABI subprocesses finished before the final targeted build/probe sequence. An initial batch inadvertently overlapped lint (which itself invokes Lean) with a cached targeted-build check; the final build and axiom probe were run sequentially after lint. No concurrent elaborations were deliberately used to validate this package.

`sh scripts/lint_sources.sh` — exit 0:

```text
check_lean_modules: PASS (180 Lean files, 0 comparator configurations)
FROZEN-ANCHOR GUARD OK
ABI HASHES OK (140 frozen declarations)
```

`nice -n 5 lake build KAM.Strip.AnalyticCauchy KAM.Strip.RealRestriction` — exit 0; includes all five package modules through their imports:

```text
Build completed successfully (2854 jobs).
```

`git diff main...HEAD -- KAM/Frozen manifest` — exit 0, empty output. Frozen/manifest untouched in the branch patch.

`git diff --check main...HEAD` — exit 0, empty output.

`wc -l KAM/Strip/Analytic*.lean KAM/Strip/RealRestriction.lean`:

```text
  170 KAM/Strip/Analytic.lean
  153 KAM/Strip/AnalyticCauchy.lean
  328 KAM/Strip/AnalyticSeries.lean
  206 KAM/Strip/AnalyticTaylor.lean
  362 KAM/Strip/RealRestriction.lean
 1219 total
```

`rg -n 'set_option|sorry|admit|axiom|unsafe|opaque|EuclideanSpace|KAM.Provider|KAM.Frozen.Theorems' KAM/Strip/Analytic*.lean KAM/Strip/RealRestriction.lean` — exit 1, empty output (no matches). Module headers, public imports, module docstrings and exposed public sections were inspected in all five files; lint also passes. No frozen theorem or provider import is used. This is an infrastructure package, so provider exact-frozen-type probing is **not applicable**.

`nice -n 5 lake env lean .lake/abi-scratch/audit-strip5-1.lean` — final exit 0. Probe imports `KAM.Strip.AnalyticCauchy` and `KAM.Strip.RealRestriction`, prints axioms for all 62 new theorems, and checks the finite-dimensional specialization and width-zero counterexample. The initial version additionally produced three missing-instance errors and one untyped `differentiable_const` error; installing the proper-space instance and specifying `(differentiable_const _)` corrected the scratch probe only. Final exact output:

```text
'KAM.taylorSeriesAt_apply' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.han_margin' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.differentiableOn_iteratedFDeriv_of_isOpen' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.iteratedDeriv_line_eq_iteratedFDeriv' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.norm_iteratedFDeriv_le_of_closedBall' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.hasFPowerSeriesOnBall_taylorSeriesAt' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.analyticOnNhd_of_differentiableOn' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.summable_prod_pow_zero' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.summable_prod_pow_succ' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.summable_prod_pow' depends on axioms: [propext, Classical.choice, Quot.sound]
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

The extra specialization/counterexample examples produced no output and elaborated successfully. Probe deleted after validation. Axiom results include every handoff declaration and all additional package theorems, not just the four result nodes.

Audit changes: only this report; scratch probe created and removed. Existing untracked audit inputs and AUDIT-PACKAGE.md were left in place. Acceptance remains blocked on F1–F2; no additional uncertainty about the four result statements was found.
