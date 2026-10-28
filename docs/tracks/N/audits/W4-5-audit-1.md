# W4-5 independent package audit 1

**Verdict: PASS WITH NOTES for W4-5 (`bpN:p4:algebra`).** All three public theorem types match the binding B.5 signatures and implement the blueprint's scalar algebra property. No material statement, proof, carrier, hypothesis, or hygiene defect was found. This is acceptance of shared infrastructure; **no frozen theorem anchor is proved or seal-ready through this package alone**.

Audited 2026-10-28 in `/root/code/KAM-inp-w45`, HEAD `ef7272516d5780cf73cfd754c1c4da321998190a`. The requested `git diff inp...HEAD` contains exactly one new file, `KAM/Weighted/Algebra.lean`, 237 insertions. The `inp` ref advanced during this audit (observed first at `70459244a0e2eb0cee43f1efcbc5b2dc6dd81f2b`, later at `948ff8fc5980a9376c844f4870a914b53587deea`); the triple-dot diff stayed the same. Its merge base is `ee49a8e953a5e0763fbe7f293ea67601357155cc`.

Authority: the external `inp-audit-package.md` brief; local AGENTS.md, PLAN.md and DECISIONS.md; `docs/tracks/N/audits/W4-5-handoff.md` and its AUDIT FOCUS; design row W4-5, proof plan and B.5 at `docs/tracks/N/design/PART145-LEAN-DESIGN.md`; both `PART145-design-audit-{1,2}.md` in that design directory; `blueprint-N/parts/p4-weighted-norms.tex:108–122`; Track N statement conventions. The report destination follows the user's explicit worktree-local path, overriding the generic brief's main-worktree destination.

## Declaration and node audit

Lines below refer to `KAM/Weighted/Algebra.lean`. Private declarations are included to account for the entire new declaration surface.

| Blueprint node / role | Lean declaration (line) | Verdict | Reason |
|---|---|---|---|
| `stepN:p4:b2-coeff`, reindexing | private `cauchyEquiv` (39) | PASS | Equivalence `(k,l) ↦ (l,k-l)` with inverse `(a,b) ↦ (a+b,a)` on the full integer-function carrier. |
| Radius conversion | private `summableWeighted_of` (46) | PASS | Definitional conversion from geometric width `s` to coefficient radius `2πs`; no norm change. |
| `stepN:p4:b2-coeff`, Cauchy product | private `fourierSum_mul` (53) | PASS | Norm summability established before product-series/Fubini operations. Reindexing preserves the sum mode and the displayed convolution orientation. |
| Convolution orientation | private `convolution_eq` (95) | PASS | Reindexes by the involution `l ↦ k-l`; no summability claim is inferred from an unguarded `tsum`. |
| Real-slice continuity | private `continuous_real_restrict'` (107) | PASS | Positive strip width and action membership put the real slice in the holomorphic domain. |
| Representation used by `b2-coeff` | private `eq_fourierSum_coeff` (115) | PASS | Fourier uniqueness for a periodic holomorphic difference with zero coefficients. Requires only weighted summability at the chosen action, a stronger local formulation than a global finite-bound premise. |
| `stepN:p4:b2-class` | private `inClass_mul` (145) | PASS | Holomorphy and period-one identities multiply on the original domain. |
| `bpN:p4:algebra`, class/coefficient/norm clauses | `KAM.Weighted.coeff_mul` (151) | PASS | Exact B.5 type, including absolute convolution summability, product coefficient identity, product weighted summability and constant-one pointwise estimate. |
| `bpN:p4:algebra`, global product | `KAM.Weighted.wbound_mul` (191) | PASS | Exact B.5 type. Product bound on every action in the same tube, with no new constant or loss. |
| Class of powers | private `inClass_pow` (201) | PASS | Natural-number induction; constant function at zero, product at successor. |
| Unit bound | private `wbound_one` (208) | PASS | Computes coefficients of literal constant one as `if k = 0 then 1 else 0`; finite support guards the weighted sum. |
| `bpN:p4:algebra`, powers | `KAM.Weighted.wbound_pow` (227) | PASS | Exact B.5 type, including `j = 0`; induction uses the unit bound and product estimate. |

No provider exports, frozen theorem bodies or seal applications occur in the diff. Accordingly the frozen-provider ABI/seal-copy tests are inapplicable. Instead, the scratch probe copied all three B.5 theorem signatures under fresh names, proved them by `exact` applications with all explicit arguments in order, and checked `example : type_of% @audit_<name> := @KAM.Weighted.<name>` for each. All elaborated successfully, confirming the full implicit and explicit binder order as well as conclusion types. There are no added hypotheses or widened constant dependencies.

## Definitions, premises and proof scrutiny

The only new `def` is private `cauchyEquiv`. It is the intended bijection everywhere on its carrier, with checked inverse laws; it has no fallback, dummy branch, quotient convention or restricted interpretation. There are no new abbreviations, structures, instances or public definitions.

The reused definitions were inspected in `Weighted/Domains` and `Weighted/Norm`: `polyNbhd` is the genuine max-norm tube of arbitrary `D ⊆ ℂᵐ`; `Dom` is its product with the frozen strip; `InClass` asserts holomorphy and period-one periodicity; `coeff` is the actual unit-torus integral; `modeWeight = exp(2πs|k|₁)`. Action dimension `m` remains independent of angle dimension `n`. Scalar codomain is exactly the algebra node's scope, consistent with design D4.

`wsum` has Lean's totalized `tsum` behavior without summability, but every substantive use here is guarded: the input `WSummable` premises enter `coeff_mul`, product summability is proved before the product estimate, and `WBound` includes summability at each action. Thus no theorem exploits a junk sum. The unit case establishes finite support explicitly.

The Cauchy product proof obtains summable norms of the character-weighted terms from weighted summability and the strip estimate. It bounds the double product by the product of the two summable nonnegative families, then uses `tsum_mul_tsum_of_summable_norm`, an actual equivalence of mode pairs, and `Summable.tsum_prod`. Character multiplication gives exactly the sum mode. Reconstruction and `torusCoeff_fourierSum` identify the convolution as the coefficient family of the literal pointwise product; the estimate is not merely an abstract coefficient calculation. `2πs ≥ 0` is proved from `s > 0` before using the existing convolution norm bound.

For the global estimate, nonnegativity is derived from the weighted sum at the current action, so the bound `Mu` is nonnegative wherever it matters. No extraneous `Mu ≥ 0` or `Mv ≥ 0` premise is needed. Empty tubes (including `D = ∅` or `r ≤ 0`) make `WBound` vacuous as intended; negative numerical bounds there do not create an assertion on a nonempty domain. The power zero case has bound `M^0 = 1`, including `M = 0`.

The public types quantify over all `n,m : ℕ`. The K lemmas actually used (`eq_zero_of_torusCoeff_holomorphic`, `differentiableOn_fourierSum`, `torusCoeff_fourierSum` and the convolution results) have no positive-dimension premise. Hence `n = 0` is covered directly; no missing singleton case or hidden `NeZero n` instance remains. No result is claimed at nonpositive strip width by these public statements.

The import closure contains 30 KAM modules and exactly five frozen modules, all **definitions in manifest state SEALED**: `ActionNbhd`, `ComplexStrip`, `IsPrimaryOnStrip`, `IsRealOnReals`, `OmegaZero`. Their bodies were inspected. No provider or frozen theorem module occurs in this closure, so no DRAFT_SORRY anchor is imported. No conclusion-shaped premise or bundled hard step was found.

## Independent validation receipts

All auditor-started Lean/Lake/checker invocations were sequential, with `LEAN_NUM_THREADS=1` and `nice -n 5`. No heartbeat, synthesis or recursion budget was changed. No clean/update/cache command or full-library rebuild was run.

1. Targeted build through the required gate:

   ```sh
   LEAN_NUM_THREADS=1 LAKE_JOBS=1 /mnt/HC_Volume_106379410/orchestrator-tools/inp_lake_build.sh /root/code/KAM-inp-w45 KAM.Weighted.Algebra
   ```

   Exit **0**. Output:

   ```text
   [inp-gate] slot 1 acquired 03:56:42 for KAM.Weighted.Algebra
   Build completed successfully (3159 jobs).
   ```

   The gate invokes `nice -n 5 lake build`; the job total is Lake's dependency accounting, not 3159 simultaneous Lean processes.

2. Exact-signature and axiom probe:

   ```sh
   LEAN_NUM_THREADS=1 nice -n 5 lake env lean .lake/abi-scratch/W45Audit.lean
   ```

   Exit **0**, no errors or warnings. Each fresh declaration was extracted from the design B.5 signature and its `sorry` replaced by the relevant `exact` application. The three `type_of%` examples produced no diagnostics. Axiom output:

   ```text
   'KAM.Weighted.coeff_mul' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Weighted.wbound_mul' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Weighted.wbound_pow' depends on axioms: [propext, Classical.choice, Quot.sound]
   ```

   `#check @` also printed the expected types: dimensions, `D,r,s`, scalar functions, positive strip, class inputs, then local action/summability or global bound inputs; the power exponent is last. The probe is removed after validation.

3. Kernel replay, one invocation (the sole new lemma module; no provider module exists):

   ```sh
   LEAN_NUM_THREADS=1 nice -n 5 lake env leanchecker --verbose KAM.Weighted.Algebra
   ```

   Exit **0**. Complete output:

   ```text
   replaying KAM.Weighted.Algebra
   ```

4. Source lint:

   ```sh
   LEAN_NUM_THREADS=1 nice -n 5 sh scripts/lint_sources.sh
   ```

   Exit **1**, solely for the generated-root freshness exception explicitly allowed by the brief. Complete output:

   ```text
   KAM.lean is out of date; run scripts/gen_root_imports.py
   check_lean_modules: PASS (386 Lean files, 0 comparator configurations)
   FROZEN-ANCHOR GUARD OK
   ABI HASHES OK (144 frozen declarations)
   ```

   All other lint checks passed. The generated root was deliberately left untouched as required.

5. `git diff --check inp...HEAD`: exit **0**, no output. `git diff inp...HEAD -- KAM/Frozen manifest KAM.lean README.md`: exit **0**, empty output. `wc -l KAM/Weighted/Algebra.lean`: **237**. Source inspection and lint confirm the copyright/module/import/docstring/public-section form, exposed section, no forbidden proof escapes, no resource override, and no oversized file. The option at line 32 disables only `linter.unusedSectionVars`; it changes no proof resource budget.

## Notes, source/blueprint defects and limits

No suspected mathematical erratum in a pinned source was discovered. This audit establishes the algebra result by inspecting and replaying its Lean proof against the local blueprint and signatures; it does not claim a fresh PDF transcription audit of Pöschel p. 213 or closure of any I/N/P headline.

Two nonblocking documentation observations explain the notes verdict:

* Design `PART145-LEAN-DESIGN.md:207` says “Plans W4-3, W4-4, W4-5, W4-8, P1-6 branch on `n = 0` ... and on `n ≥ 1`.” W4-5 instead uses dimension-generic proved Lean lemmas. This is a valid proof-plan simplification, with unchanged statements and carriers. It does not violate round-2's obligation to preserve the all-dimension target. No new analytic assumption or unproved singleton identity is inserted.
* Blueprint `p4-weighted-norms.tex:112` still calls identification with the product of functions “the remaining bridge.” The new `coeff_mul` proves that bridge. Once the package lands, update that status wording; the mathematical lemma and its proof are consistent with the implementation. No blueprint mathematical correction is required.

No production source, frozen anchor, manifest, generated root or README was edited by the auditor. The existing untracked handoff was preserved. The only persistent auditor artifact is this report at the explicitly requested worktree-local absolute path.
