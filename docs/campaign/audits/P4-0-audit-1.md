# P4-0 independent audit 1

**Verdict: PASS WITH NOTES for the requested definitions-and-adapters package.** The 44 definition/structure commands are verbatim Appendix A; all five analytic signatures are exact, the three constant identities hold, and all 52 declared objects/results have clean axiom closures. No blocking or major package defect was found. This does not certify inverse-frequency characterization, existence or properties of the selected tori, constant positivity, G1/G2, HEAD or HEAD-Q. Those are later packages' obligations, not consequences of landing these definitions.

Audited on 2026-10-27, branch `k/p4-0`, HEAD `b830adee5a8d4e2f43c7a80d48774d8819a0df08`, comparison main `735d9ea79cb80156eba15f37b13e3f3ae8b3e05c`. The handoff's implementation commit is `86a798b`; the inspected checkout includes the subsequent main merge. The initial working tree contained the untracked supplied `P4-0-handoff.md`; it was preserved.

## Authority and scope

Read AGENTS.md, PLAN, DECISIONS, AUDIT-PACKAGE, P4-0, P23-COMMON, PROVER-COMMON, the handoff, the Part 4 design and its independent audit. Compared the actual modules with Appendix A and the graph's actual statement/proof locators in `blueprint/parts/p4-measure.tex`. Used the lean-statement-audit skill for binder, carrier, body and axiom checks. No source PDF was independently reaudited; this package's authority is the binding Appendix A and the pinned local blueprint/frozen interfaces.

Snapshot hashes:

```text
PART4-LEAN-DESIGN.md cb301f9c57ff4ff7d36a88c850459937c8f4ca8b789e88eeb4ca710edf2987d2
p4-measure.tex       6de22b372e66280b06e14c26220e311983c97ce848c868b8843c49230d780642
```

Manifest entries `kam.aposteriori_kam.v1`, `kam.local_uniqueness_flow.v1`, `kam.kam_positive_measure.v1`, `kam.kam_positive_measure_qualitative.v1` are DRAFT_SORRY. Their elaborated ABI hashes are respectively `15dbaab5a036f69e52d0659874d64abe6fdd36e0f235973db368792c615ee293`, `60351404d1e73fe60603199359120cf75ed2012677c70fc7a56d21e117a0f2e7`, `4c734e37b56b161f141cf03c217a4b47c7014dac1370c1f7863676c39c7c1538`, `3cac1e4650a580f08a539ba876442f6608e36106126a0d57948d4e246c090a21`. The lint's manifest/ABI checks passed. They are compared as types only; their proof status remains FROZEN_UNPROVED. Production package modules import neither these anchors nor providers.

## Node and contract inventory

All unqualified declarations below are in `KAM.Head`. Definitions associated with later result nodes are included without promoting those results to PROVED. The package adds adapters to already landed nodes, rather than replacing their graph exports.

| Node / source | Declaration(s) | Verdict | Reason |
|---|---|---|---|
| Standing HEAD data, Part 4:138–147 | `Data`, `Pert`, `Layer` | PASS | Source premises split into literal structures/predicate; witnesses Lh, CB explicit. Omitting nonemptiness/layer where unnecessary strengthens local interfaces. |
| bp:p0:head; bp:p0:headq | `HeadConclusion`, `HeadQConclusion` | PASS, definitions only | Full conclusions match frozen types by rfl, including existential scope, sqrt ε cover and ε^(1/4) bound. |
| bp:p4:derivative-bounds, 183–195 | `Hconst`, `Fconst`, `Mconst`; `derivative_bounds_design` | PASS | Exact four blocks (a)–(d), derivative orders 1–3, closed balls, and conditional ε ≤ 1 block. Constants depend only on listed data. |
| Same, constant dictionary | `Hconst_eq_derivConstH`, `Fconst_eq_derivConstF`, `Mconst_eq_derivConstM` | PASS | Unconditional identities, including zero/negative radii under Lean field conventions. |
| bp:p4:freq-map, 225–238 | `realDomain`, `gradC`, `hessian`, `LambdaG`, `Winf` | PASS, definitions only | Correct domain, derivative coordinates and max formula. Does not prove the frequency-map result. |
| bp:p4:inverse-freq, 290–299 | `invFreq` | PASS as prescribed choice expression | Exact invFunOn; inverse characterization requires later proof and image guard. See note 1. |
| bp:p4:unperturbed | `actionHessian` | PASS, definition only | Action-slot derivative order matches Appendix A, with matrix/operator carrier. |
| bp:p4:parameters, 406–436 | `GConsts`, `GConsts.Pos`, `G1Body`, `G2Body`, `GValid`, `sigmaK/B/T`, `A0`–`A4`, `lamStar`, `cT`, `etaStar`, `cStar` | PASS, definitions only | Exact tuples, all eight minimum entries, and data-only argument dependencies; positivity/existence is not proved here. |
| bp:p4:SA, 440–444 | `SA`, `eta0`, `OmegaGamma` | PASS | Four standing inequalities and exact frequency intersection/size formula. |
| bp:p4:apply, 469–476 | `IsApplyTorus` | PASS as literal selection predicate | All seven APPLY clauses; used to define a selection, never assumed in a package theorem. |
| bp:p4:torsion-regular, 546–561 | `torsion_regular_design` | PASS | Exact Appendix A; determinant unit over ℂ is equivalent to nonzero; column derivative for every complex direction is valid. |
| bp:p4:shift, 686–701 | `shift_design` | PASS | Exact (a)–(e); arbitrary Hamiltonian clause is stronger than blueprint's fixed Hamiltonian. |
| bp:p4:normalized-torus, 720–726 | `applyTorus`, `normTorus`, `normDisp` | PASS as prescribed literal constructions | Epsilon selection, negative phase shift and displacement sign exact; no existence/normalization theorem supplied here. |
| bp:p4:mixed-difference, 800–806 | `mixed_difference_design` | PASS | Exact parallelogram and second derivative bound, no global convexity or Q positivity added. |
| bp:p4:lip-error | `shiftedTorus` | PASS, definition only | Adds (0, Iω′−Iω), with correct sign and real-to-complex inclusion. |
| bp:p4:good-actions, 1102–1111 | `layerSet`, `goodActions`, `disp` | PASS as prescribed constructions | ≤γ layer, ≥2γ good-action guard; indicator extension is explicit. No global Lipschitz claim. |
| bp:p4:main-measure | `Cmeas` | PASS, definition only | Exact 2CB+ and (9/2)^n terms, Lplus^n and max(C3,0). |
| bp:p1:cohomological, Appendix A:708–713 | `coh_unique_zero` | PASS | Exact arbitrary-real-τ statement, no bound, τ≥0, dimension restriction, or strip loss added. |

## Definition classification

Every new def/structure is classified below. No new abbrev is present. Each complete command, including its whole body/fields, was extracted from Standing/Defs and found as an exact substring of Appendix A: **44/44**. This is textual evidence plus the semantic checks below, not a substitute for them.

| Objects | Classification and entire-carrier behavior |
|---|---|
| `Data` | Literal Prop structure: nine HEAD source fields (dimension, exponent, widths, openness, boundedness, holomorphy, reality, nondegeneracy). No output estimate or existence field. |
| `Pert` | Literal Prop structure: holomorphy, periodicity, reality, size bound only. |
| `Layer` | Literal universal boundary-layer inequality, δ>0, fixed witness CB. |
| `HeadConclusion`, `HeadQConclusion` | Literal result-type aliases, not asserted results or assumptions of any package theorem. |
| `Hconst`, `Fconst`, `Mconst`, `LambdaG`, `Winf`, `sigmaK`, `sigmaB`, `sigmaT`, `A0`, `lamStar`, `A1`, `A2`, `A3`, `A4`, `cT`, `etaStar`, `cStar`, `eta0`, `Cmeas` | Literal scalar formulas. Total real division/rpow has its standard semantics; positivity of widths/denominators and constants is deferred to parameters/smallness. No package proof extracts positivity from a zero denominator. |
| `realDomain`, `OmegaGamma`, `layerSet`, `goodActions` | Literal sets with exact inequalities and membership guards. |
| `gradC`, `hessian`, `actionHessian` | Literal coordinate derivative formulas, total fderiv outside differentiability. Derivative meanings require the source holomorphy guards. Matrix entries use the specified action/coordinate slots. |
| `invFreq` | Literal invFunOn selection expression, not a globally certified inverse; arbitrary outside image and absent injectivity. See note 1. |
| `GConsts` | Plain six-real data, no proof fields. |
| `GConsts.Pos` | Five positivity fields only; deliberately none for C3. |
| `G1Body`, `G2Body` | Literal full gate-body predicates at fixed constants, verified definitionally against actual frozen types. Not claimed proved or used to prove package results. |
| `GValid` | Literal bundle of the permitted source G inputs, with inherited positivity and g1a/g1b/g2/g3. Not a HEAD conclusion or a hidden torus/measure assumption. |
| `SA` | Four source standing inequalities: γ>0, γ≤1, ε≥0, ε≤cStar·γ^4. |
| `IsApplyTorus` | Literal APPLY conclusion/selection predicate. This theorem-shaped predicate is explicitly required by the user-specified design; no package theorem assumes it in place of proving APPLY. |
| `applyTorus` | Literal epsilon choice, with a default when no candidate exists. Neither existence nor unique choice is proved here; the source asks to fix some torus by choice, not a unique raw torus. |
| `normTorus`, `normDisp`, `shiftedTorus` | Literal algebraic constructions from that selection. Their geometric interpretations are not certified without APPLY and phase-shift premises. |
| `disp` | Literal indicator of all angles × good actions, subtracting the real identity. Zero outside that set is a declared total extension (design P17), not a McShane extension. |

For literal formulas/predicates/structures: BODY_MATCH OK; PUBLIC_CARRIER OK as the literal total expression; WELL_DEFINEDNESS N/A_LITERAL; CHARACTERIZATION N/A_LITERAL; CHOICE_INDEPENDENCE N/A; DEFINITION_VERDICT PASS. For `invFreq` and the torus selections, only this literal-construction verdict is given: their inverse/torus characterization and choice independence are **not certified**. The binding package brief expressly requests their verbatim definitions before the later proofs (design P8/P9). No theorem in this package relies on their junk values. A full semantic audit of the characterized inverse/torus would still require the separate guarded theorems and cannot take this package receipt as that evidence.

## Binder audit

The table records every outer binder of every new theorem, in order within each theorem. Grouped binder declarations are expanded into separate rows. No instance binders or hidden bundled assumptions occur in these theorem types. TYPING denotes object/parameter data; STANDING denotes the corresponding expanded HEAD/Pert premises; SOURCE denotes the local lemma's explicit hypothesis or the positive-strip convention encoded in Appendix A. RULED=0 and EXCESS=0 throughout.

| Theorem | Binder | Bin | Source/type locator |
|---|---|---|---|
| `Hconst_eq_derivConstH` | `n` | TYPING | Adapters:60–63; scalar identity |
| `Hconst_eq_derivConstH` | `s₀` | TYPING | Adapters:60–63; scalar identity |
| `Hconst_eq_derivConstH` | `r₀` | TYPING | Adapters:60–63; scalar identity |
| `Hconst_eq_derivConstH` | `B` | TYPING | Adapters:60–63; scalar identity |
| `Hconst_eq_derivConstH` | `h` | TYPING | Adapters:60–63; scalar identity |
| `Hconst_eq_derivConstH` | `j` | TYPING | Adapters:60–63; scalar identity |
| `Fconst_eq_derivConstF` | `n` | TYPING | Adapters:66–68; scalar identity |
| `Fconst_eq_derivConstF` | `s₀` | TYPING | Adapters:66–68; scalar identity |
| `Fconst_eq_derivConstF` | `r₀` | TYPING | Adapters:66–68; scalar identity |
| `Fconst_eq_derivConstF` | `j` | TYPING | Adapters:66–68; scalar identity |
| `Mconst_eq_derivConstM` | `n` | TYPING | Adapters:71–75; scalar identity |
| `Mconst_eq_derivConstM` | `s₀` | TYPING | Adapters:71–75; scalar identity |
| `Mconst_eq_derivConstM` | `r₀` | TYPING | Adapters:71–75; scalar identity |
| `Mconst_eq_derivConstM` | `B` | TYPING | Adapters:71–75; scalar identity |
| `Mconst_eq_derivConstM` | `h` | TYPING | Adapters:71–75; scalar identity |
| `derivative_bounds_design` | `n` | TYPING | p4:138–147,183–195; Appendix A:604–627 |
| `derivative_bounds_design` | `s₀` | TYPING | p4:138–147,183–195; Appendix A:604–627 |
| `derivative_bounds_design` | `r₀` | TYPING | p4:138–147,183–195; Appendix A:604–627 |
| `derivative_bounds_design` | `hs₀` | STANDING | p4:138–147,183–195; Appendix A:604–627 |
| `derivative_bounds_design` | `hr₀` | STANDING | p4:138–147,183–195; Appendix A:604–627 |
| `derivative_bounds_design` | `B` | TYPING | p4:138–147,183–195; Appendix A:604–627 |
| `derivative_bounds_design` | `hB` | STANDING | p4:138–147,183–195; Appendix A:604–627 |
| `derivative_bounds_design` | `h` | TYPING | p4:138–147,183–195; Appendix A:604–627 |
| `derivative_bounds_design` | `hh` | STANDING | p4:138–147,183–195; Appendix A:604–627 |
| `derivative_bounds_design` | `f` | TYPING | p4:138–147,183–195; Appendix A:604–627 |
| `derivative_bounds_design` | `ε` | TYPING | p4:138–147,183–195; Appendix A:604–627 |
| `derivative_bounds_design` | `hf` | STANDING | p4:138–147,183–195; Appendix A:604–627 |
| `derivative_bounds_design` | `hfε` | STANDING | p4:138–147,183–195; Appendix A:604–627 |
| `torsion_regular_design` | `n` | TYPING | p4:138–147,546–561; Appendix A:630–662 |
| `torsion_regular_design` | `s₀` | TYPING | p4:138–147,546–561; Appendix A:630–662 |
| `torsion_regular_design` | `r₀` | TYPING | p4:138–147,546–561; Appendix A:630–662 |
| `torsion_regular_design` | `hs₀` | STANDING | p4:138–147,546–561; Appendix A:630–662 |
| `torsion_regular_design` | `hr₀` | STANDING | p4:138–147,546–561; Appendix A:630–662 |
| `torsion_regular_design` | `B` | TYPING | p4:138–147,546–561; Appendix A:630–662 |
| `torsion_regular_design` | `h` | TYPING | p4:138–147,546–561; Appendix A:630–662 |
| `torsion_regular_design` | `hh` | STANDING | p4:138–147,546–561; Appendix A:630–662 |
| `torsion_regular_design` | `f` | TYPING | p4:138–147,546–561; Appendix A:630–662 |
| `torsion_regular_design` | `hf` | STANDING | p4:138–147,546–561; Appendix A:630–662 |
| `torsion_regular_design` | `hfper` | STANDING | p4:138–147,546–561; Appendix A:630–662 |
| `torsion_regular_design` | `ρ` | TYPING | p4:138–147,546–561; Appendix A:630–662 |
| `torsion_regular_design` | `hρ` | SOURCE | p4:138–147,546–561; Appendix A:630–662 |
| `torsion_regular_design` | `K` | TYPING | p4:138–147,546–561; Appendix A:630–662 |
| `torsion_regular_design` | `hK` | SOURCE | p4:138–147,546–561; Appendix A:630–662 |
| `torsion_regular_design` | `hK𝔇` | SOURCE | p4:138–147,546–561; Appendix A:630–662 |
| `torsion_regular_design` | `hG` | SOURCE | p4:138–147,546–561; Appendix A:630–662 |
| `torsion_regular_design` | `ω` | TYPING | p4:138–147,546–561; Appendix A:630–662 |
| `shift_design` | `n` | TYPING | p4:686–701; Appendix A:665–695 |
| `shift_design` | `ρ` | TYPING | p4:686–701; Appendix A:665–695 |
| `shift_design` | `hρ` | SOURCE | p4:686–701; Appendix A:665–695 |
| `shift_design` | `K` | TYPING | p4:686–701; Appendix A:665–695 |
| `shift_design` | `hK` | SOURCE | p4:686–701; Appendix A:665–695 |
| `shift_design` | `hKp` | SOURCE | p4:686–701; Appendix A:665–695 |
| `shift_design` | `hKr` | SOURCE | p4:686–701; Appendix A:665–695 |
| `shift_design` | `a` | TYPING | p4:686–701; Appendix A:665–695 |
| `shift_design` | `ω` | TYPING | p4:686–701; Appendix A:665–695 |
| `mixed_difference_design` | `n` | TYPING | p4:800–806; Appendix A:698–704 |
| `mixed_difference_design` | `U` | TYPING | p4:800–806; Appendix A:698–704 |
| `mixed_difference_design` | `hU` | SOURCE | p4:800–806; Appendix A:698–704 |
| `mixed_difference_design` | `F` | TYPING | p4:800–806; Appendix A:698–704 |
| `mixed_difference_design` | `hF` | SOURCE | p4:800–806; Appendix A:698–704 |
| `mixed_difference_design` | `a` | TYPING | p4:800–806; Appendix A:698–704 |
| `mixed_difference_design` | `v` | TYPING | p4:800–806; Appendix A:698–704 |
| `mixed_difference_design` | `w` | TYPING | p4:800–806; Appendix A:698–704 |
| `mixed_difference_design` | `hP` | SOURCE | p4:800–806; Appendix A:698–704 |
| `mixed_difference_design` | `Q` | TYPING | p4:800–806; Appendix A:698–704 |
| `mixed_difference_design` | `hQ` | SOURCE | p4:800–806; Appendix A:698–704 |
| `coh_unique_zero` | `n` | TYPING | Appendix A:708–713; p1 cohomological uniqueness |
| `coh_unique_zero` | `τ` | TYPING | Appendix A:708–713; p1 cohomological uniqueness |
| `coh_unique_zero` | `γ` | TYPING | Appendix A:708–713; p1 cohomological uniqueness |
| `coh_unique_zero` | `r` | TYPING | Appendix A:708–713; p1 cohomological uniqueness |
| `coh_unique_zero` | `hr` | SOURCE | Appendix A:708–713; p1 cohomological uniqueness |
| `coh_unique_zero` | `hγ` | SOURCE | Appendix A:708–713; p1 cohomological uniqueness |
| `coh_unique_zero` | `ω` | TYPING | Appendix A:708–713; p1 cohomological uniqueness |
| `coh_unique_zero` | `hω` | SOURCE | Appendix A:708–713; p1 cohomological uniqueness |
| `coh_unique_zero` | `w` | TYPING | Appendix A:708–713; p1 cohomological uniqueness |
| `coh_unique_zero` | `hw` | SOURCE | Appendix A:708–713; p1 cohomological uniqueness |
| `coh_unique_zero` | `hwp` | SOURCE | Appendix A:708–713; p1 cohomological uniqueness |
| `coh_unique_zero` | `havg` | SOURCE | Appendix A:708–713; p1 cohomological uniqueness |
| `coh_unique_zero` | `hω0` | SOURCE | Appendix A:708–713; p1 cohomological uniqueness |

Expanded outer-binder counts: TYPING=49, STANDING=11, SOURCE=19; RULED=0; EXCESS=0. Conclusion-side point, index, direction and bound quantifiers are unchanged byte-for-byte from Appendix A; all nine full-type rfl checks also preserve their order, scope and carriers.

`GValid` is not an assumed input of any of these eight theorems. Its recursive expansion has exactly five positivity propositions, the two complete G1 bodies, the complete G2 body, and the G3 estimate. Within G1/G2, H1 keeps all six domain/Hamiltonian clauses, H2–H4 keep the margin, derivative, determinant and row-sum clauses, and the frequency/error/invariance hypotheses retain their order. G2 retains the asymmetric assumptions on the two tori. No normalization, Lagrangianity, Lipschitz dependence or Part 4 conclusion is inserted. `Data` has nine source fields, `Pert` four, and `SA` four, as enumerated above. Constants of G1/G2 are fixed before the domain, Hamiltonian, torus, frequency and error binders; G3 uses exactly frequencyMap h '' B.

## Proof checks

- `Adapters.lean:102–115`: obtains the landed derivative bounds, reorders j/point binders, regroups six blocks into four and rewrites the three constant dictionaries. It neither assumes nor reproves the difficult derivative estimates.
- `Adapters.lean:151–161`: converts IsUnit det to nonzero over ℂ, applies the landed torsion regularity result and projects its clauses. The all-complex-direction column identity is proved by `sumVec_fderiv_normalFrame` from differentiability already obtained, rather than pretending the landed ω-only clause is universal. Periodicity is converted by `isPeriodicOn`.
- `Adapters.lean:193–198`: applies the landed phase-shift theorem to each Hamiltonian φ and obtains normalization with a=−phaseAverage K. It retains all transfer/phase clauses.
- `Adapters.lean:208`: mixed difference is exactly the landed lemma; Q's implicit binder placement has no analytic effect.
- `CohUnique.lean:43–56`: reduces to all Fourier coefficients vanishing. At k=0 uses torusCoeff_zero and havg. At k≠0 the directional derivative's coefficient is zero because hω0 holds at every real point of the positive strip. `torusCoeff_fderiv` and `sum_mul_eq_flowMultiplier` give flowMultiplier·ŵ=0. `hω.condition.nonresonant hγ` supplies a nonzero multiplier, so cancellation gives ŵ=0. `eq_zero_of_torusCoeff_holomorphic` finishes on the entire original strip. The proof uses no τ estimate: `Diophantine.Basic:62–68` proves nonresonance from positivity of |k|^τ for every real τ. Direct multiplier cancellation replaces the suggested solve_unique call and is a valid simpler route. No boundedness of w or forcing and no nonnegative-τ premise is imported.

All analytic function/vector norms are the max/induced operator conventions. Matrix scope is `Matrix.Norms.Operator`; the frozen gate row sums are preserved. Period is one and the derivative multiplier is 2πi(k·ω). No EuclideanSpace, norm change or hidden finite-dimensional instance premise occurs.

## Independent checks and exact outputs

The checks were serialized, with no concurrent build/Lean process and no resource override.

1. `git diff --stat main...HEAD`:

   ```text
    KAM.lean                |   4 +
    KAM/Head/Adapters.lean  | 212 ++++++++++++++++++++++++++++++
    KAM/Head/CohUnique.lean |  60 +++++++++
    KAM/Head/Defs.lean      | 340 ++++++++++++++++++++++++++++++++++++++++++++++++
    KAM/Head/Standing.lean  |  95 ++++++++++++++
    5 files changed, 711 insertions(+)
   ```

   `git diff main...HEAD -- KAM/Frozen manifest`: empty, exit 0. `git diff --check main...HEAD`: empty, exit 0. Generated root adds exactly the four package imports; the generator's check passes. No landed declaration name is redeclared: the diff only creates the four new modules and adds their imports. The auditor changed no Lean source or generated file.

2. `nice -n 5 lake build KAM.Head.Standing KAM.Head.Defs KAM.Head.Adapters KAM.Head.CohUnique`: exit 0:

   ```text
   Build completed successfully (3196 jobs).
   ```

   This was a targeted incremental build using the worktree snapshot, not a clean/root rebuild. It did not emit package warnings.

3. `sh scripts/lint_sources.sh`: exit 0:

   ```text
   check_lean_modules: PASS (246 Lean files, 0 comparator configurations)
   FROZEN-ANCHOR GUARD OK
   ABI HASHES OK (144 frozen declarations)
   ```

   Includes forbidden escape/override scans, size/module checks, generated-root check, source guard and ABI check. File lengths by `wc -l KAM/Head/{Standing,Defs,Adapters,CohUnique}.lean`: 95, 340, 212, 60 (707 total), all below 1500. All have copyright, module, public imports, module docstring and exposed public noncomputable section.

4. Verbatim check (Python 3): extract the `lean` block after `## Appendix A.`; for each `^(def|structure)` command in Standing/Defs take all text through the next blank line and assert it occurs in Appendix A. No definition body contains an internal blank line; all 44 complete commands were checked, including structure fields and all G1/G2 clauses. Output:

   ```text
   44/44 complete definition/structure commands match Appendix A byte-for-byte
   derivative_bounds_design EXACT SIGNATURE
   torsion_regular_design EXACT SIGNATURE
   shift_design EXACT SIGNATURE
   mixed_difference_design EXACT SIGNATURE
   coh_unique_zero EXACT SIGNATURE
   ```

   Signature comparison takes the source theorem text up to `:=`, and compares the complete package signature after renaming only the four `_design` names.

5. `nice -n 5 lake env lean .lake/abi-scratch/P40Audit1.lean > .lake/abi-scratch/P40Audit1.out 2>&1`: exit 0. The scratch probe imports the actual package modules and the four frozen theorem modules. It contains nine independently generated equalities proved by `rfl`:

   - five `(type_of% @adapter) = (∀ <exact Appendix A binders>, <exact conclusion>)`;
   - full frozen G1 type equals its actual outer binders followed by `∃ C₁ C₂, 0<C₁ ∧ 0<C₂ ∧ G1Body ...`;
   - full frozen G2 type equals its actual outer binders followed by `∃ c, 0<c ∧ G2Body ...`;
   - full frozen HEAD/HEAD-Q types equal their original binders followed by `HeadConclusion ...` / `HeadQConclusion ...`.

   All nine checks pass. The probe emitted 67 unused-binder warnings from naming assumptions within these type expressions; no errors or sorry warnings. It disabled no linter or resource limit. All 52 `#print axioms` commands (one for every declaration inventoried above) returned exactly `[propext, Classical.choice, Quot.sound]`. In particular:

   ```text
   'KAM.Head.Hconst_eq_derivConstH' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Head.Fconst_eq_derivConstF' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Head.Mconst_eq_derivConstM' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Head.derivative_bounds_design' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Head.torsion_regular_design' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Head.shift_design' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Head.mixed_difference_design' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Head.coh_unique_zero' depends on axioms: [propext, Classical.choice, Quot.sound]
   ```

   Importing the draft theorem modules in this audit-only scratch probe does not put them in production modules or into these package axiom closures.

6. `nice -n 5 lake env lean .lake/abi-scratch/P40GValidAudit1.lean > .lake/abi-scratch/P40GValidAudit1.out 2>&1`: exit 0, empty output. This separate term-level probe assumes only the explicit numerical side conditions and boundedness needed for the frozen calls, makes the actual G1, G1, G2, G3 calls at the blueprint tuples, then constructs GValid:

   ```lean
   obtain ⟨C11, C21, h11, h21, hb1⟩ :=
     KAM.aposteriori_kam hn hτ.le h8 h84 hM hK hB hT hμ (one_pos : (0 : ℝ) < 1)
   obtain ⟨C12, C22, h12, h22, hb2⟩ :=
     KAM.aposteriori_kam hn hτ.le h16 h1632 hM hK hB hT hμ (one_pos : (0 : ℝ) < 1)
   obtain ⟨cG, hcG, hb3⟩ := KAM.local_uniqueness_flow hn hτ.le h16 hM hK hB hT hμ
   obtain ⟨C3, hC3⟩ := KAM.volume_not_diophantine_le hτ hbdd
   exact ⟨⟨C11, C21, C12, C22, cG, C3⟩,
     ⟨⟨h11, h21, h12, h22, hcG⟩, hb1, hb2, hb3, hC3⟩⟩
   ```

   Here h8/h84 refer to s/8 and s/4; h16/h1632 to s/16 and 3s/32, with s=stripWidth s₀. hM/hK/hB/hT/hμ are positivity at Mconst/sigmaK/sigmaB/sigmaT/muParam, and hbdd is boundedness of frequencyMap h '' B. This verifies all constructor fields against the real frozen theorem bodies. It does not discharge these side conditions from Data and, because G1/G2 are draft anchors, is not a sorry-free existence theorem or provider completion.

Provider exact-type probe: **N/A**. P4-0 has no provider export; the frozen-body and conclusion equalities above are the applicable interface checks. No frozen theorem was sealed or modified.

## Findings, limits, errata and deviations

1. **Minor — characterization remains pending for the prescribed choice definitions.** `Defs.lean:85–87,291–315` exports invFunOn/epsilon constructions on total carriers. Inverse facts require image membership plus injectivity; selected-torus facts require a proved APPLY existence result. Raw tori are selected non-uniquely (the blueprint explicitly says “fixed by choice”), so this report does not assert uniqueness or choice independence. No current package theorem uses these selections, and exact-copy design requirements P8/P9 explicitly place their guarded proofs later. Proposed follow-up: require inverse_freq, APPLY/normalize and their clean-axiom receipts before admitting their inverse/torus semantic interpretations in downstream proofs. Do not mark those nodes proved from this definitions landing.

2. **Minor — the indicator docstring's layer assertion has a standing-assumption guard.** `Defs.lean:326–327` says “0 elsewhere (in particular on ℝⁿ × Z)”. The “in particular” uses γ>0 to separate distance≥2γ from distance≤γ; without SA this need not hold. The body is exactly the design's indicator (P17), and no theorem here uses an unguarded layer assertion. Proposed prose clarification in a later authorized edit: say “in particular on ℝⁿ × Z under SA”. This is a documentation qualification, not a body/type change or a source erratum. Lipschitzness may only be claimed on the union of good actions and the separated layer after proving its guards.

3. **Minor — draft frozen interfaces remain unproved.** `Defs.lean:128–210` stores the gate statements as predicates; the successful exact-type and GValid-construction probes establish faithful interfaces, not clean proofs of those gates. Proposed follow-up: retain the existing provider/seal gates and do not treat this receipt as HEAD closure.

No blocking or major finding, no suspected mathematical defect in the blueprint or frozen statements, and no pinned-PDF erratum alleged. The valid proof-route departure is direct nonzero-multiplier cancellation instead of solve_unique; all mathematical hypotheses and conclusions remain identical. Design departures P8/P9/P17 are explicitly identified above, not silently promoted to whole-carrier inverse/torus/Lipschitz assertions. The generated-root additions conform to the checked generator. External-PDF fidelity and later Part 4 analytic proofs are outside this audit.

Only `docs/campaign/audits/P4-0-audit-1.md` was written as a repository deliverable. The two temporary Lean probes and their output files were removed after recording the checks. No state-changing git command, source edit, frozen edit, manifest edit, ledger edit, root regeneration, README edit, heartbeat override or clean build was performed.
