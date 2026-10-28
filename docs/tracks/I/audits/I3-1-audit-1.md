# Independent audit of I3-1

**Overall verdict: PASS WITH NOTES for the I3-1 package.** All four assigned nodes are proved at the exact v2 design signatures, with clean axiom receipts and successful kernel replay. No mathematical blocker was found. The literal whole-branch protected-path check is nonempty because of inherited generated-root changes (N1); this is not an unconditional whole-branch hygiene PASS.

No frozen anchor is proved or sealed by this package. Its contribution is infrastructure for **I-HEAD (`KAM.Iso.all_time_confinement`)**. Verdict for that anchor's I3-1 dependency: **PASS WITH NOTES**; seal readiness of the anchor itself is **not established / not applicable to this package**. There is no provider export here, so provider/frozen-type and frozen seal-body probes are inapplicable. They have not been replaced by a claim of root closure.

## Scope and authority

Audited 2026-10-28 in `/root/code/KAM-inp-i31`, HEAD `03120438724f6f5fde381b652e5a92cd6dc88b33`.
Read AGENTS.md, PLAN.md, DECISIONS.md, `/root/code/KAM-inp/.drafts/briefs/inp-audit-package.md`, the local handoff, design §7 and its v2 contracts, both design audits, the Part 3 blueprint and graph contracts, track I statement, frozen I-HEAD, frozen `borderedHessian`/`frequencyMap`, and the supporting Charts/Confinement definitions. The design audits and excluded signatures were read from `/root/code/KAM-inp` where those files reside; all Lean checks and the report are in this worktree. The explicit user destination overrides the generic brief's main-worktree destination.

The required `git diff inp...HEAD` was inspected. At audit time `inp` was `70bba4e3ddd8e44a7c57ec66b8ec5b69bd4db876`; Git warned:

```text
warning: inp...HEAD: multiple merge bases, using 3626838deeef8b58e1a2a12dfd62e74467cc4a2d
```

`git merge-base --all inp HEAD` returned that revision and `dccdffcad206acd9d4fd0c239263d0a427e2563f`. The selected triple-dot diff contains 84 files from inherited work, not just this package. The handoff's `git diff inp-i11...HEAD` also includes that inherited work because `inp-i11` points to `3626838…`. To identify ownership without hiding the required comparison, I additionally inspected `git diff a46d1e3..HEAD`: exactly the two I3-1 files, 431 lines added, in commits `0ebd4f9` and `0312043` after the dependency merge.

| Audited file | Lines | SHA-256 |
|---|---:|---|
| `KAM/Iso/Charts/Constants.lean` | 183 | `18920733299c0c8ad6def420c79c1bc6ebebe221b62fb10dd2e7bd705fb1405a` |
| `KAM/Iso/Charts/Coordinates.lean` | 248 | `ae6b4fabdb49fba92a2d24b445a2068e5596eb5eb4c3097a30169e45a9c6cfa0` |

The signature source `.drafts/design/IPart123Signatures.lean` has SHA-256 `2b7c6e337d0fedcbb186e44e83597989f49502efe55fcde6605f9c29b69d8dbe`, matching design audit 2's v2 snapshot. Four independently extracted signatures were copied under fresh names into a probe, proved by applying the production theorem with its explicit binders in order, and compared by `rfl` equality of `type_of%` against the production exports. All four passed. This checks binder order and definitional type equality, beyond one-way applicability.

## Declaration inventory and fidelity

Names below have prefix `KAM.Iso.Charts.`; locators are in `KAM/Iso/Charts/<file>.lean`.

| Node / role | Locator | Lean declaration | Verdict | Reason |
|---|---|---|---|---|
| p3:setting / U | `Constants:41` | `isOpen_realAct_charts` | PASS | Real inclusion is continuous; openness holds for arbitrary B and radius. |
| p3:setting / B ⊆ U | `Constants:46` | `subset_realAct_charts` | PASS | Uses only the source positive radius; witnesses the original action point. |
| K freq-map / p3:coordinates | `Constants:50` | `contDiffOn_frequencyMap` | PASS | C¹ on the full real slice, from holomorphy and reality in HeadData. |
| p3:cp-inverse | `Constants:55` | `continuousOn_fderiv_frequencyMap` | PASS | Derivative continuity on open U follows from C¹. |
| p3:cp-inverse | `Constants:60` | `continuousOn_borderedHessian` | PASS | Continuity of every genuine Hessian/gradient block entry. |
| external Cramer | `Constants:73` | `continuousOn_inv_of_det_ne_zero` | PASS | General topological parameter space and arbitrary finite square matrix; determinant nonzero exactly where inversion is used. |
| p3:cp-inverse | `Constants:85` | `continuousOn_norm_inv` | PASS | Continuous row-sum inverse norm on U; nonzero determinant supplied by HeadData.iso. |
| p3:det-identity(a), cp-grad | `Constants:92` | `frequencyMap_ne_zero_of_det_ne_zero` | PASS | Stronger algebraic statement: no holomorphy, reality or neighbourhood premise; zero gradient gives a zero row. |
| p3:cp-inverse positivity | `Constants:103` | `inv_ne_zero_of_det_ne_zero` | PASS | The nonempty bordered index type makes the identity nonzero; uses genuine nonsingular inverse. |
| p3:compact | `Constants:111` | `compact` | PASS WITH NOTES | Exact design type; positive dB, compact inclusions, positive finite real constants, and pointwise bounds. Attaining witnesses are internal; see N2. |
| p3:di-expand | `Coordinates:67` | `borderedHessian_det_eq` | PASS | Stronger than the blueprint identity: algebraic expansion is valid without Hessian symmetry or regularity. |
| p3:det-identity / Hessian symmetry | `Coordinates:76` | `hessR_transpose` | PASS | Real/complex derivative comparison and symmetry come from freq_map_local on U. |
| p3:det-identity | `Coordinates:93` | `det_identity` | PASS | Exact design type; correct negative sign, symmetry and nonzero gradient. Its last equality immediately gives the stated nonzero equivalence. |
| p3:coordinates / q positivity | `Coordinates:110` | `dotProduct_self_pos` | PASS | Nonzero vector has strictly positive sum of coordinate squares; dot product does not change the ambient max norm. |
| p3:coordinates / openness | `Coordinates:117` | `continuous_aCoord` | PASS | Global continuity for each fixed g, including g=0 under total division. |
| p3:coordinates / denominator | `Coordinates:123` | `dotProduct_eq_aCoord_mul` | PASS | The nonzero-g guard justifies cancellation of q. |
| p3:coordinates / centre | `Coordinates:130` | `det2_self` | PASS | Unconditional alternating determinant identity. |
| p3:coordinates / decomposition | `Coordinates:135` | `eq_aCoord_smul_add_bCoord_smul` | PASS | Exact decomposition on all w for nonzero g; no hidden normalization assumption. |
| p3:coordinates | `Coordinates:151` | `coordinates` | PASS | Exact design type; c may lie anywhere in U, stronger than closure B′. Open domain, centre membership, C¹ chart and centre value are all exported. |
| p3:slope-ray | `Coordinates:193` | `slope_ray` | PASS | Exact design type; arbitrary nonzero g. Positive coordinate ratio and norm ratio recover the positive-ray formulation; see below. |

Private declarations: `Coordinates:40` `sumFin3` PASS (definition classification below); `Coordinates:54` `det_bordered` PASS (six-term determinant expansion over any commutative ring, simultaneous row/column reindexing preserves determinant).

`HeadData` contains exactly source standing premises: positive widths, holomorphy and reality, open bounded nonempty B, real-slice bordered nondegeneracy, open B′ with compact closure inside B, and positive η. `hne` is the explicit nonempty B′ case in blueprint `p3:setting`, not an extra conclusion-shaped hypothesis. No perturbation, frequency lower bound, convexity, chart invertibility, extrema, regularity, or local-to-global result is assumed in its place. No G1/G3 premise is used in this package.

For the determinant, the generic expansion is `-g₂² H₁₁ + g₁g₂(H₁₂+H₂₁) - g₁² H₂₂`, exactly `-g⊥ · H g⊥`, even without symmetry. `det_identity` separately proves genuine Hessian symmetry from the holomorphic source hypotheses. The stated determinant nonzero equivalence follows by negation from the last equality and requires no missing analytic argument.

For rays, `div_pos hw′ hw` proves positivity of the explicitly selected ratio; positivity of `g·w` proves w nonzero before division by its norm. To recover the blueprint's existential formulation, use that ratio in the forward implication. For the reverse implication, `aCoord g (λ • w) = λ * aCoord g w` follows directly from linearity of dot product; division by positive `aCoord g w` recovers λ. The specialized frequency-ray clause follows by taking w=ω* and w′=frequencyMap h I, and reversing the symmetric slope equality. The final norm is the existing Pi max norm, not Euclidean length.

## Definition classification and guarded carriers

The only newly introduced definition is **private `sumFin3`**, a genuine equivalence on the whole carrier `Fin 2 ⊕ Unit ≃ Fin 3`. It sends the two left indices to 0,1 and the Unit index to 2; its `if` in the inverse is exhaustive index decoding, not a junk fallback. Both inverse laws are proved. It is used only for determinant reindexing. No new public def, abbrev, structure, instance or bundled proof assumption is introduced.

The already landed definitions actually consumed were checked at their bodies:

- `dB` is the real infimum of distances between `closure B′` and `Bᶜ`. Nonempty B′ and bounded B in dimension two make the distance set nonempty. A positive closed thickening inside B supplies a lower bound; nonnegative norms supply the bound for `csInf_le`. No empty-infimum convention is used.
- `sSet` is the closed metric thickening by `dB/2`; for nonempty `closure B′` this is precisely the blueprint distance sublevel set. Compactness and inclusion in B are proved before use of analytic regularity there.
- `mhConst`, `MgConst`, `ShConst` are literal sInf/sSup of the intended gradient/inverse norms. In `Constants:158–169`, extrema exist on the nonempty compact set and the proof identifies each actual value with the named constant by `IsLeast.csInf_eq` / `IsGreatest.csSup_eq`. Consequently these are neither arbitrary majorants nor default sInf/sSup values.
- `ShConst` uses `Matrix.Norms.Operator`, hence the intended maximum absolute row-sum norm. Nonzero determinant guards every mathematical use of the total matrix inverse; its nonzero norm follows from `A * A⁻¹ = 1` on the nonempty index type.
- `perp`, `det2`, `aCoord`, `bCoord`, `slope`, `hessR`, `chartDom`, `chartM`, `chartPhi` have their advertised formulas. Positivity of q and of the longitudinal coordinate guards every denominator used for decomposition, chart differentiability and rays. No regularity is inferred from totalized division at zero. `continuous_aCoord` at g=0 is simply continuity of the resulting zero function.
- `realAct` and `realPart` are respectively the real inclusion preimage and real restriction, with `HeadData.real` identifying the latter with the real value of h. `hessR` is exactly the upper-left block of the frozen bordered Hessian, not an unrelated substitute derivative.

## Independent checks

All Lean/Lake commands were sequential with `LEAN_NUM_THREADS=1` and inherited `nice -n 5`. No resource-budget override, clean, update, cache download, frozen edit, generated-file edit, package edit, or state-changing git command was used. Only this report is a repository deliverable; the temporary probe was confined to `.lake/abi-scratch/` and removed after checking.

### Targeted incremental build — exit 0

```sh
LEAN_NUM_THREADS=1 /mnt/HC_Volume_106379410/orchestrator-tools/inp_lake_build.sh /root/code/KAM-inp-i31 KAM.Iso.Charts.Coordinates
```

The gate invokes `nice -n 5 lake build` and acquired slot 1. The import closure includes Constants. Output:

```text
[inp-gate] slot 1 acquired 02:20:56 for KAM.Iso.Charts.Coordinates
⚠ [2842/2917] Replayed KAM.ODE.Exit
warning: KAM/ODE/Exit.lean:36:0: automatically included section variable(s) unused in theorem `KAM.ODE.gen_exit`:
  [NormedSpace ℝ E]
consider restructuring your `variable` declarations so that the variables are not in scope or explicitly omit them:
  omit [NormedSpace ℝ E] in theorem ...

Note: This linter can be disabled with `set_option linter.unusedSectionVars false`
Build completed successfully (3246 jobs).
```

The warning is in an inherited dependency; no linter option was changed.

### Kernel replay — exit 0

```sh
LEAN_NUM_THREADS=1 nice -n 5 lake env leanchecker --verbose KAM.Iso.Charts.Constants KAM.Iso.Charts.Coordinates
```

Exact output:

```text
replaying KAM.Iso.Charts.Coordinates
replaying KAM.Iso.Charts.Constants
```

### Signature probes and every public theorem's axioms — exit 0

```sh
LEAN_NUM_THREADS=1 nice -n 5 lake env lean .lake/abi-scratch/I31Audit1.lean
```

The probe used only `import KAM.Iso.Charts.Coordinates`, extracted copies of the four design signatures with actual `by exact` proofs, four `rfl` type equalities, and the following twenty `#print axioms` queries. No frozen theorem or provider was imported. Exact axiom output:

```text
'KAM.Iso.Charts.isOpen_realAct_charts' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.subset_realAct_charts' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.contDiffOn_frequencyMap' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.continuousOn_fderiv_frequencyMap' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.continuousOn_borderedHessian' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.continuousOn_inv_of_det_ne_zero' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.continuousOn_norm_inv' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.frequencyMap_ne_zero_of_det_ne_zero' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.inv_ne_zero_of_det_ne_zero' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.compact' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.borderedHessian_det_eq' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.hessR_transpose' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.det_identity' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.dotProduct_self_pos' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.continuous_aCoord' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.dotProduct_eq_aCoord_mul' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.det2_self' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.eq_aCoord_smul_add_bCoord_smul' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.coordinates' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.slope_ray' depends on axioms: [propext, Classical.choice, Quot.sound]
```

No `sorryAx` or additional axiom occurs. The probe produced no errors or warnings.

### Source lint and structural checks

```sh
LEAN_NUM_THREADS=1 nice -n 5 sh scripts/lint_sources.sh
```

Exit **1**, solely for the explicitly permitted stale generated-root diagnostic. Full output:

```text
KAM.lean is out of date; run scripts/gen_root_imports.py
check_lean_modules: PASS (344 Lean files, 0 comparator configurations)
FROZEN-ANCHOR GUARD OK
ABI HASHES OK (144 frozen declarations)
```

All other lint gates passed. The allowed exception does not change the nonzero exit code into an exit-0 claim.

Both new files have copyright, `module`, public imports, module docstring and `public section`, and remain below 1500 lines. Neither file contains an escape or resource override. A recursive inspection of their 90-module local KAM import closure found **zero** imports of providers or frozen theorem modules; frozen definition imports are intentional. Both `git diff --check inp...HEAD` and `git diff --check a46d1e3..HEAD` exited 0 with no whitespace diagnostic (the former additionally printed the multiple-merge-base warning).

## Notes, defects, deviations and limits

**N1 — inherited protected-path / comparison qualification.** The exact requested command `git diff inp...HEAD -- KAM/Frozen manifest KAM.lean README.md` is **not empty**: `KAM.lean` has twelve generated import additions from earlier work. The narrower command excluding KAM.lean, `git diff inp...HEAD -- KAM/Frozen manifest README.md`, is empty. `git diff a46d1e3..HEAD -- KAM/Frozen manifest KAM.lean README.md` is entirely empty. Thus the literal broad protected-path gate fails, but the I3-1 commits do not edit protected files. Commit `dccdffc` is explicitly titled “Regenerate KAM.lean (Iso Linear/Apost/Charts defs, Linear/NoTwist)”. The additional generated imports concern other inherited packages too. I did not regenerate or restore anything. Resolve the integration comparison/root generation in the orchestrator's landing workflow; this report does not certify the unrelated 82-file inherited delta.

**N2 — extrema witnesses are internal.** `Constants:17–19` says the extrema “are attained on 𝒮”, and `compact` really obtains and identifies those witnesses at lines 158–169. Its public conclusion at lines 111–116 exports positivity and pointwise bounds, not existential attaining points. This exactly matches v2 and the blueprint compact-node conclusion. There is no mathematical or contract failure. If a later consumer needs named attainment lemmas, expose those existentials as separate helpers; do not infer they are currently projections of `compact`.

**B1 — minor blueprint external-fact omission; no production defect.** `blueprint-I/parts/p3-iso-local-charts.tex:105`, label `bpI:p3:ext-compact`, says “A continuous function on a compact set attains its extrema”. The statement needs nonemptiness of that set: the empty compact set has no attaining point. Complete replacement for this item:

```tex
\item\label{bpI:p3:ext-compact} \emph{Compactness.} A continuous real-valued function on a nonempty compact set attains its minimum and maximum; a compact subset of $\R^2$ covered by open sets
  is covered by finitely many of them (Heine--Borel).
```

The implementation supplies `hSne` at `Constants:153` to every `exists_isMinOn` / `exists_isMaxOn` call, so this omission does not weaken the package result. The graph's external contract at `docs/graph/I/DEPGRAPH.md:4911` has the same omission and should track the wording repair. This is a blueprint qualification, not a suspected misprint in HL19/Chi05.

No new pinned-source defect was discovered. The package's four nodes are original local geometry and elementary algebra/compactness, rather than literal source theorem transcriptions; the external PDFs were not re-audited. No unreported mathematical deviation was found. The stronger whole-U chart-centre range and regularity-free algebraic determinant helper are valid generalizations. The reported handoff line count 252 for Coordinates is stale; the audited file has 248 lines. No report finding or proposed wording repair was applied to production files, the blueprint, graph or ledger.

These checks establish the four I3-1 infrastructure nodes only. They do not prove the chart inverse/finite cover (I3-2), choose Diophantine rays, construct invariant tori, or seal I-HEAD, I-G1, or any track N/P anchor.
