# KEP-3 independent audit 1

Overall verdict: **PASS WITH NOTES** for KEP-3 as shared infrastructure. No blocking mathematical or Lean-contract finding. There is **no frozen anchor or provider in this package**, so no anchor is certified seal-ready by this report. The expected stale generated root import remains for the orchestrator; KEP-4 must still instantiate the quantitative hypotheses on the concrete tubes.

Audited on 2026-10-28 in `/root/code/KAM-inp-kep3`, HEAD `ce0bd6e057b3d78927e8525f7512aabf352184c0`, against `inp` at `819a9a0f46c088bb722babc5a55aed2074cf6f44`, using `git diff inp...HEAD`. The entire committed delta is the new 480-line `KAM/Kepler/EquationComplex.lean` (SHA256 `8a8079d7d7ddbd847ce24125ce2b7f88866f2c625d42278c00dd96b0cdf34542`). The pre-existing untracked handoff was read, not changed. The explicit user path overrides the brief's generic main-worktree destination.

## Scope and authority

Read `AGENTS.md`, `docs/PLAN.md`, `docs/DECISIONS.md`, `/root/code/KAM-inp/.drafts/briefs/inp-audit-package.md`, and `docs/tracks/P/audits/KEP-3-handoff.md`. Compared the implementation with `docs/tracks/P/design/KEPLER-LEAN-DESIGN.md` sections 2, 4, 7 (KEP-3), 7.1 and Appendix A lines 925–977; blueprint-I `parts/p7-delaunay.tex:91–140` (`bpI:p7:kepler-eq` and its proof); blueprint-P `parts/p7-kepler-poincare.tex` (`bpP:p7:regular-kepler`, especially complex part (b)); and the I/N/P track statements. Read the existing I-KEPLER frozen theorem and `KeplerBorder` definition to check the boundary: that determinant gate is separate from this analytic package. This module imports only Mathlib and uses no frozen definitions, frozen theorems, or providers.

Provider/frozen full-type equality and a frozen seal-body probe are **not applicable**: KEP-3 implements no frozen theorem. Instead, six probe examples copied the exact planned theorem signatures from Appendix A, replacing each draft body with an application of the implementation using all explicit binders in order. All elaborated. A whitespace-normalized comparison independently found exact signature agreement for all six; the bodies of `keplerOp`, `KeplerData`, and `keplerSol` also match the appendix after whitespace normalization. No draft `sorry` was imported or copied into an elaborated probe.

## Declaration inventory

Locations below are in `KAM/Kepler/EquationComplex.lean`. All names have prefix `KAM.Kepler.`; `EqC.` denotes the helper namespace. Each public source declaration is listed separately. Structure constructor/projections are generated from the listed, audited fields.

| Node or role | Declaration (line) | Verdict | Reason or note |
|---|---|---|---|
| Generic operator | `keplerOp` (35) | PASS | Exact polynomial/trigonometric operator, including the positive b-cosine sign. |
| I ke-trig / P rk-contr | `EqC.re_sin` (43) | PASS | Exact real-part identity. |
| I ke-trig / P rk-contr | `EqC.im_sin` (49) | PASS | Exact imaginary-part identity. |
| I ke-trig / P rk-contr | `EqC.re_cos` (55) | PASS | Exact real-part identity. |
| I ke-trig / P rk-contr | `EqC.im_cos` (61) | PASS | Correct negative sine/sinh sign. |
| I ke-trig | `EqC.abs_re_sin_le` (68) | PASS | Closed-strip cosh bound; no added parameter restrictions. |
| I ke-trig | `EqC.abs_im_sin_le` (81) | PASS | Closed-strip sinh bound. |
| I/P trigonometric helper | `EqC.abs_re_cos_le` (91) | PASS | Cosine counterpart needed for complex b. |
| I/P trigonometric helper | `EqC.abs_im_cos_le` (104) | PASS | Correct absolute imaginary-part bound. |
| I ke-trig / P rk-contr | `EqC.norm_sin_le` (114) | PASS | Complex modulus bounded by cosh y₀, not a coordinate max norm. |
| I ke-trig / P rk-contr | `EqC.norm_cos_le` (128) | PASS | Same sharp strip bound for cosine. |
| Fixed-point map | `EqC.fixMap` (149) | PASS | Exact rearrangement c + a sin G − b cos G. |
| Fixed-point equivalence | `EqC.keplerOp_eq_iff` (151) | PASS | Algebraic equivalence on all complex inputs. |
| Strip carrier | `EqC.strip` (156) | PASS | Entire closed horizontal strip, unbounded real direction. |
| I ke-contr / P rk-contr | `EqC.isClosed_strip` (158) | PASS | Closed carrier, supplies completeness. |
| I ke-contr / P rk-contr | `EqC.convex_strip` (161) | PASS | Real convexity sufficient for mean value inequality. |
| I ke-contr / P rk-contr | `EqC.abs_im_fixMap_le` (169) | PASS | Keeps both real- and imaginary-coefficient contributions; does not repeat the old complex-e error. |
| Derivative helper | `EqC.hasDerivAt_fixMap` (192) | PASS | a cos G + b sin G. |
| Contraction helper | `EqC.norm_dfix_le` (206) | PASS | Derived bound ≤ κ on the strip. |
| I ke-contr / P rk-contr | `EqC.norm_fixMap_sub_le` (218) | PASS | Euclidean complex norm, real mean value inequality on convex strip. |
| Uniqueness | `EqC.eq_of_keplerOp_eq` (226) | PASS | Derives equality from κ < 1 and the coefficient bound. |
| Open-strip margin | `EqC.abs_im_lt_of_keplerOp` (238) | PASS | Strict invariance promotes ≤ y₀ to < y₀. |
| I ke-contr / P rk-contr | `EqC.existsUnique_keplerOp` (247) | PASS | Proves existence and uniqueness, with no assumed solution or fixed point. |
| Standing input | `KeplerData` (281) | PASS | Exact planned coefficient/strip assumptions; field classification below. |
| Selected solution | `keplerSol` (295) | PASS | Planned guarded choice; fallback never used by an unconditional domain claim. |
| Choice specification helper | `EqC.keplerSol_props` (301) | PASS | Explicit conditional helper, not substituted for the contraction theorem. |
| Generic KEP-3 specification | `keplerSol_spec` (318) | PASS | All three planned clauses, derived from contraction. |
| I ke-hol / P rk-hol, generic layer | `keplerSol_analyticOnNhd` (326) | PASS | Joint analyticity on precisely N; analytic IFT plus local agreement. |
| Holomorphy | `keplerSol_differentiableOn` (400) | PASS | Exact planned consequence on N. |
| I ke-b / P rk-hol derivatives, generic layer | `keplerSol_fderiv` (408) | PASS | Exact planned denominator-multiplied directional derivative, all signs correct. |
| I ke-c / P rk-hol real points, generic layer | `keplerSol_real` (441) | PASS WITH NOTES | Exact conditional signature; redundant `hex` is retained as designed. |
| I ke-b / P regular periodicity, generic layer | `keplerSol_shift` (459) | PASS | Shift by real 2π; shifted unique existence is proved, not assumed. |

The trigonometric, convexity, Lipschitz, and pointwise uniqueness helpers are more general than the concrete blueprint instances: arbitrary a,b,c and arbitrary admissible strip width. This is the designed generalization, not an increase in the dependence of any asserted existence constant. No new instance, abbrev, or hidden standing hypothesis was introduced.

## Definition and hypothesis audit

- `keplerOp`: intended operator on its whole carrier ℂ³.
- `EqC.fixMap`: intended fixed-point map on its whole carrier ℂ⁴.
- `EqC.strip`: literal closed strip for every real width. For negative width it is empty; existence uses y₀ > 0 and supplies the witness 0, so no nonexistent inhabitant is assumed.
- `KeplerData`: Prop-valued standing input. `isOpen` is domain data; `analytic_a/b/c` are coefficient regularity; `y₀_pos` and `κ_lt` are scalar restrictions; `invariant` and `contraction` are explicit inequalities in the given coefficients and constants. None mentions `keplerSol`, existence, uniqueness, an inverse, or any desired derivative. Contraction of the map itself is derived later. κ ≥ 0 is derived at each point from the coefficient bound; it need not be an extra field. Empty N causes no existence claim at an unavailable point.
- `keplerSol`: total guarded classical choice. It selects the unique closed-strip solution when unique existence holds and returns 0 when unique existence fails (which includes both absence and nonuniqueness). That fallback is explicitly in the design. `keplerSol_spec` first proves unique existence from the coefficient inequalities, so no analytic-domain theorem relies on fallback values. The local IFT comparison stays in N, preventing the off-domain definition from affecting `AnalyticOnNhd`. The real and shift lemmas are separately named, explicitly conditional helpers with the exact planned unique-existence premise. This premise is not being used to discharge `existsUnique_keplerOp` or `keplerSol_spec`.

## Analytic IFT and derivative audit

At each x₀ ∈ N, contraction supplies G₀ and strict invariance supplies |Im G₀| < y₀. The joint residual Φ(x,G) = G − a(x)sin G + b(x)cos G − c(x) is analytic at (x₀,G₀). Its G derivative is d = 1 − a(x₀)cos G₀ − b(x₀)sin G₀. If d = 0, the fixed-map derivative equals 1, contradicting its norm bound ≤ κ < 1. The proof constructs the inverse continuous linear map using d⁻¹, checks both inverse identities, and applies `ContDiffAt.implicitFunction` at analytic order ω over ℂ with the required completeness instances.

Checked Mathlib's local contracts in `Mathlib/Analysis/Calculus/ImplicitContDiff.lean:55–96`: the local implicit equation is Φ(x,ψ(x)) = Φ(x₀,G₀), and the proof explicitly establishes Φ(x₀,G₀) = 0. Analyticity gives continuity; the strict strip margin and openness of N provide an actual neighborhood where ψ is in the strip and x ∈ N. Unique existence there proves eventual equality ψ = keplerSol, sufficient for `AnalyticAt.congr`. Thus no unjustified global inverse, boundary IFT, or multivariable uniform-limit theorem is used.

The derivative proof differentiates the equation as a neighborhood identity, justified by openness of N. It obtains

`DG(v) · (1 − a cos G − b sin G) = Da(v) sin G − Db(v) cos G + Dc(v)`.

This is exactly the design statement. Its denominator is nonzero by the same contraction estimate proved in the analytic argument; no division by a possibly zero derivative is used. Reality follows by conjugation and strip uniqueness. Translation uses backward translation to prove unique existence at c + 2π before applying the choice specification.

## Checks and receipts

Every audit-started Lean invocation was sequential, with `LEAN_NUM_THREADS=1` and `nice -n 5`. The build used the required compile gate. No resource override, cache reset, dependency mutation, or state-changing git command was used. Other users' external processes were not modified.

1. `git diff --stat inp...HEAD` returned only `KAM/Kepler/EquationComplex.lean | 480 ...`, one file changed, 480 insertions. `git diff inp...HEAD -- KAM/Frozen manifest KAM.lean README.md` produced no output. `git diff --check inp...HEAD` exited 0 with no output.
2. `LEAN_NUM_THREADS=1 /mnt/HC_Volume_106379410/orchestrator-tools/inp_lake_build.sh /root/code/KAM-inp-kep3 KAM.Kepler.EquationComplex` exited **0**. Output:

   ```text
   [inp-gate] slot 1 acquired 00:34:51 for KAM.Kepler.EquationComplex
   Build completed successfully (9047 jobs).
   ```

   The job count is Lake's dependency-job count, not a claim that 9047 modules were rebuilt. Only the named target was requested; the existing build overlay was used.
3. `LEAN_NUM_THREADS=1 nice -n 5 lake env lean .lake/abi-scratch/KEP3Audit.lean` exited **0**, with no errors or warnings. The six copied design-signature applications all elaborated. The probe also ran `#print axioms` on every one of the 27 public theorems listed above. Exact output:

   ```text
   'KAM.Kepler.EqC.re_sin' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Kepler.EqC.im_sin' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Kepler.EqC.re_cos' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Kepler.EqC.im_cos' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Kepler.EqC.abs_re_sin_le' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Kepler.EqC.abs_im_sin_le' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Kepler.EqC.abs_re_cos_le' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Kepler.EqC.abs_im_cos_le' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Kepler.EqC.norm_sin_le' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Kepler.EqC.norm_cos_le' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Kepler.EqC.keplerOp_eq_iff' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Kepler.EqC.isClosed_strip' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Kepler.EqC.convex_strip' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Kepler.EqC.abs_im_fixMap_le' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Kepler.EqC.hasDerivAt_fixMap' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Kepler.EqC.norm_dfix_le' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Kepler.EqC.norm_fixMap_sub_le' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Kepler.EqC.eq_of_keplerOp_eq' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Kepler.EqC.abs_im_lt_of_keplerOp' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Kepler.EqC.existsUnique_keplerOp' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Kepler.EqC.keplerSol_props' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Kepler.keplerSol_spec' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Kepler.keplerSol_analyticOnNhd' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Kepler.keplerSol_differentiableOn' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Kepler.keplerSol_fderiv' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Kepler.keplerSol_real' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Kepler.keplerSol_shift' depends on axioms: [propext, Classical.choice, Quot.sound]
   ```
4. `LEAN_NUM_THREADS=1 nice -n 5 lake env leanchecker --verbose KAM.Kepler.EquationComplex` exited **0**. This single invocation covers the entire package, including all helper theorems; there are no separate lemma modules. Exact output:

   ```text
   replaying KAM.Kepler.EquationComplex
   ```
5. `LEAN_NUM_THREADS=1 nice -n 5 sh scripts/lint_sources.sh` exited **1 solely for the allowed stale generated root**. All other checks passed. Exact output:

```text
KAM.lean is out of date; run scripts/gen_root_imports.py
check_lean_modules: PASS (263 Lean files, 0 comparator configurations)
FROZEN-ANCHOR GUARD OK
ABI HASHES OK (144 frozen declarations)
```

`git diff --check --no-index /dev/null docs/tracks/P/audits/KEP-3-audit-1.md` exited 0 at closeout.

Source inspection also confirmed the 480-line count, copyright/authors, `module`, `public import Mathlib`, module docstring, and `@[expose] public noncomputable section`. No forbidden proof escape, EuclideanSpace, or resource override occurs in the new file. Definitions are exposed by the section attribute. No production module imports a provider or frozen theorem through this module.

## Notes, uncertainties, and errata

No suspected defect in a pinned mathematical source was identified. These generic contraction and IFT arguments are explicitly original infrastructure in the blueprint/design; this report does not claim a fresh audit of the Chi05 or LP17 PDFs. No mathematical implementation deviation from the design was introduced. The analytic-IFT route replaces the blueprint's uniform-Picard-limit proof as explicitly authorized in design departure D19 and section 7.1; it preserves the domain and conclusion.

The concrete thin eccentricity tube, the regular tube with κ = 0.39, their numeric denominator bounds, the zero-eccentricity identity, and agreement with the independently constructed real solver are KEP-4/KEP-2 consumer work. KEP-3 does not claim completion of either full blueprint proposition or a physical canonical-coordinate theorem. No concern was found that blocks those planned applications. The redundant `hex` in `keplerSol_real` is a harmless exact-design API note, not a conclusion-shaped assumption hidden in the contraction result.

Only this report was written in tracked source space; temporary audit probes/logs under `.lake/abi-scratch/` are deleted at closeout. No Lean source, frozen file, manifest, generated file, handoff, or git state was changed.
