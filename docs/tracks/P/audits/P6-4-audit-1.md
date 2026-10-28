# P6-4 independent audit 1

Date: 2026-10-28 UTC. Verdict: **PASS WITH NOTES** for the P6-4 infrastructure package. No material implementation or statement-fidelity defect found.

## Scope and authority

Audited `git diff inp...HEAD` at HEAD `b3519cc659c2950bc738f4ad7e7d820cd391f06a`, against current `inp` `22304c61abd6dbd763fb2b53a7922afa968da9f8` (merge base `a763bfdbf022d6f10caaff4fc865f2a9e5432a97`). The entire diff is the addition of `KAM/Planetary/Newtonian/Tube.lean`, 314 physical lines, SHA-256 `ec6a17e120ae3619984a52cc7bd5143642f1c019cb9545c8a9787b3e938e2feb`. The handoff says 312 lines; this is a harmless count discrepancy.

Read AGENTS.md, PLAN.md, DECISIONS.md, the requested package brief and P6-4 handoff; the design §7/§7.1 and its exact Tube signatures (lines 1944–2032); blueprint-P/parts/p6-newtonian-models.tex:210–245; track P statement conventions and physical clauses; the P-G/P-PLANAR/P-FIXED frozen theorem files and relevant frozen definitions, including circularPoint, circularTube, Phase, bodyVector, planeLength, PairBounds, barycentric reconstruction and IsNewtonSolutionOn. Inspected the existing reconstruction exports used by the new proof.

The explicit user destination overrides the brief's generic MAIN-worktree destination. This report is inside `/root/code/KAM-inp-p64`.

**Frozen anchors:** none is implemented or sealed by P6-4. Provider/frozen type equality and frozen seal-body probes are therefore not applicable. P-G, P-PLANAR and P-FIXED remain outside this package's proof-closure verdict; this is not a seal-ready claim for any of them. Instead, all 11 new public theorem signatures were independently copied from the design into fresh probe declarations, proved by the implementation applied to exactly the explicit binders in order, and compared back with `example : type_of% @KAM.Planetary.<name> := @audit_<name>`.

## Declaration audit

All names below are in `KAM.Planetary`; locators refer to Tube.lean. Each public declaration has its own row.

| Node | Declaration (line) | Verdict | Reason |
|---|---|---|---|
| tube-constants | AxisData (44) | PASS | Four source/typing bounds on axes and gaps, no dynamics or geometric conclusion assumed. |
| tube-constants | axisMax (50) | PASS WITH NOTES | Finite indexed supremum; intended maximum whenever n > 0. Empty-index totalization is unused. |
| tube-constants | axisGap (51) | PASS WITH NOTES | Infimum of union of axes and nonzero-index gaps; finite positive nonempty set on the canonical theorem's domain. |
| tube-constants | axisData_canonical (54) | PASS | Positivity, injectivity, nonempty index set imply all four AxisData fields; attained infimum, not merely lower boundedness. Exact design type. |
| tube-constants | tubeRadius (75) | PASS | Literal min η (γ/6); depends only on η and γ. |
| tube-constants | tubeD (76) | PASS | Literal γ/2, independent of masses, G and coupling. |
| tube-constants | tubeBigD (77) | PASS | Literal 2A+γ with the intended parameter order. |
| tube-constants | tubeRadius_pos (79) | PASS | Exact design type and positivity assumptions. |
| tube-constants | tubeD_lt_tubeBigD (82) | PASS | Nonempty index supplies γ ≤ A; exact design type. |
| tube-geometry (a) | circularTube_mono (129) | PASS | Stronger than specialized positive-radius statement: any ordered radii, no mass signs needed. Applying twice yields Uζ ⊆ Uζ* ⊆ Uη. |
| tube-geometry (b) | circularTube_euclidean (135) | PASS | One common phase witness; extracts a body block from the phase sup norm and retains √2. No extra positivity assumptions. |
| tube-geometry (c) | circularTube_distances (151) | PASS | Correct strict radial and pair bounds, Euclidean planeLength throughout; positive axes are genuine source premises. |
| tube-geometry (d) | circularTube_pair_bounds (190) | PASS | Exact d,D bounds and both NoCollision clauses. General AxisData and ζ ≤ γ/6 are stronger/generalized forms of the canonical blueprint specialization. |
| tube-geometry (e) | circularTube_pairBounds_barycentric (245) | PASS | Ordered Sun/planet pairs, both directions; d,D have no μ dependence. Retained mass/sign hypotheses match the design although unused by this geometric proof. |
| tube-geometry (e) | circularTube_pairBounds_fixed (260) | PASS | Literal fixed Sun at zero, all ordered distinct pairs, no Sun acceleration asserted. |
| newton-in-tube | newton_in_tube (273) | PASS | Exact arbitrary-time-set derivative statement and PairBounds. G is absorbed into the mass argument of IsNewtonSolutionOn exactly as its frozen definition requires. |
| fixed-in-tube | fixed_in_tube (288) | PASS | Explicit NoCollision, both fixed-center derivative equations with unrestricted real ε, and fixed-Sun PairBounds. Exact design type. |

Private proof lemmas were also inspected: `planeLength_cos_sin`, `planeLength_smul_cos_sin`, `bodyVector_circularPoint_fst`, `norm_bodyVector_sub_le`, `planeLength_sub_sub_le`, `sqrt_two_le`, and `pairBounds_of_succ`. They establish elementary identities/inequalities and the exhaustive Fin zero/successor pair split; they introduce no assumptions standing in for a hard step.

## Definitions and proof reasoning

`AxisData` is a Prop structure of legitimate axis data, not an encoded collision/pair-bounds conclusion. Its canonical constructor discharges the fields from the blueprint's original premises. `axisMax` and `axisGap` exactly match the design bodies. For n=1 the pair subset is empty but the axis subset is a positive singleton; its infimum is the single axis. For n=0 both order constructions have library totalizations, and axisGap on nonpositive/repeated axes need not be positive. No theorem claims otherwise: canonical construction and d<D require n>0, positive axes and injectivity where appropriate. No proof relies on an empty-set or collision fallback. The geometry and dynamics statements with abstract AxisData remain valid even at n=0 (their indexed physical claims are vacuous). The remaining three definitions are total arithmetic formulas on all real inputs; their positive-radius uses are explicitly guarded.

The geometric numerical proof uses √2 ≤ 3/2, so √2 ζ ≤ γ/4 and 2√2 ζ ≤ γ/2. The strict distance estimates still give the required positive lower distance γ/2. This is a valid weaker numerical estimate than the blueprint's decimal calculation, with identical final constants. Pair bounds use exact common-translation cancellation in barycentricPositions, not a small-coupling estimate. All ordered pairs are covered by pairBounds_of_succ and evenness of planeLength.

Dynamics derive NoCollision pointwise from the tube and then apply the existing reconstruction theorems. The orbit derivative is a source premise, exactly as in the corollary being implemented; no existence of an orbit or torus is claimed here. Differentiation is HasDerivAt at each t, not weakened to a derivative within J. The fixed-center conclusion has central force −Gm0 q/|q|³ and mutual coupling εGm_j; it does not substitute the moving-Sun law.

Unused mass/sign hypotheses in the barycentric geometry theorem and hG in fixed_in_tube are harmless restrictions already present in the design and blueprint standing assumptions. Their removal could strengthen the theorem but is not needed for acceptance. There is no widening of constant dependence, changed carrier, or conclusion-shaped hypothesis.

## Hygiene and independently run checks

A project import-closure traversal found 53 KAM modules and **zero** provider or frozen-theorem imports. Direct added frozen imports are definitions only. The added file has copyright/authors, `module`, public imports, module docstring, and `@[expose] public noncomputable section`. All new definitions are exposed. No forbidden proof escape, EuclideanSpace carrier, heartbeat/recursion/synthesis override, or file-size violation was found.

1. Targeted build:

```sh
LEAN_NUM_THREADS=1 /mnt/HC_Volume_106379410/orchestrator-tools/inp_lake_build.sh /root/code/KAM-inp-p64 KAM.Planetary.Newtonian.Tube
```

The gate runs `nice -n 5 lake build`. Exit **0**. Output:

```text
[inp-gate] slot 1 acquired 03:37:08 for KAM.Planetary.Newtonian.Tube
⚠ [9087/9096] Replayed KAM.Kepler.Energy
warning: KAM/Kepler/Energy.lean:106:35: Variable name `hm` is not explicitly referenced.
warning: KAM/Kepler/Energy.lean:106:48: Variable name `hκ` is not explicitly referenced.
Build completed successfully (9099 jobs).
```

The two replayed warnings are in unchanged upstream code; routine Lean hint text omitted. No clean, cache fetch or from-scratch rebuild was performed.

2. Design signature probes and every new public theorem's axioms:

```sh
LEAN_NUM_THREADS=1 nice -n 5 lake env lean .lake/abi-scratch/P64Audit.lean > .lake/abi-scratch/P64Audit.log 2>&1
```

Exit **0**, no signature-probe errors or warnings. Exact axiom output:

```text
'KAM.Planetary.axisData_canonical' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Planetary.tubeRadius_pos' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Planetary.tubeD_lt_tubeBigD' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Planetary.circularTube_mono' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Planetary.circularTube_euclidean' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Planetary.circularTube_distances' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Planetary.circularTube_pair_bounds' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Planetary.circularTube_pairBounds_barycentric' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Planetary.circularTube_pairBounds_fixed' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Planetary.newton_in_tube' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Planetary.fixed_in_tube' depends on axioms: [propext, Classical.choice, Quot.sound]
```

3. Kernel replay (one invocation for the sole added lemma module; no provider module exists in this package):

```sh
LEAN_NUM_THREADS=1 nice -n 5 lake env leanchecker --verbose KAM.Planetary.Newtonian.Tube > .lake/abi-scratch/P64Kernel.log 2>&1
```

Exit **0**. Exact output:

```text
replaying KAM.Planetary.Newtonian.Tube
```

4. Source lint:

```sh
LEAN_NUM_THREADS=1 nice -n 5 sh scripts/lint_sources.sh > .lake/abi-scratch/P64Lint.log 2>&1
```

Exit **1**, solely for the explicitly permitted generated-root staleness diagnostic. Exact output:

```text
KAM.lean is out of date; run scripts/gen_root_imports.py
check_lean_modules: PASS (371 Lean files, 0 comparator configurations)
FROZEN-ANCHOR GUARD OK
ABI HASHES OK (144 frozen declarations)
```

Thus source/module checks, frozen source guard and all 144 elaborated ABI hashes pass. The generated KAM.lean was left untouched as required.

Audit execution deviation: an initial `sh scripts/lint_sources.sh` was started during the targeted build, before noticing that its ABI stage itself launches `lake env lean`. That initial invocation lacked an explicit thread/priority prefix and could overlap the build; its Lean child was terminated and its nonzero result was discarded. The successful final build/probe/kernel/lint receipts were obtained with the commands documented here, with subsequent Lean work serialized. This was an audit-harness mistake, not a change to the package or its proofs. The final lint inherits LEAN_NUM_THREADS=1 and nice priority through its subprocesses.

5. Read-only diff checks:

```sh
git diff inp...HEAD -- KAM/Frozen manifest KAM.lean README.md
git diff --check inp...HEAD
git diff --check
```

All exit **0**, no output. The first establishes that the package did not alter protected paths. No state-changing git command was run.

## Blueprint/source defects and limitations

**Documentation note (existing stale plan, not a P6-4 code failure):** `blueprint-P/PLAN.md:168` says `|q^(i)| in [a_i - eta, a_i + eta]` and pair separation `>= |a_j - a_i| - 2 eta`. These miss the √2 conversion from the frozen phase Pi norm to physical Euclidean planeLength. For a circular position on a diagonal, adding (δ,δ) with η/√2 < δ < η keeps the phase sup-distance below η but increases its radius by √2δ > η. Replace these bounds by a_i ± √2η and |a_j-a_i| − 2√2η; the current authoritative Part 6 lines 222–233 and Tube.lean:135–225 already do so. The plan also describes small-μ control via Sun displacement, whereas current Part 6 and this proof use exact cancellation and hold uniformly for every μ ≥ 0. No production edit is proposed within this read-only audit.

No new suspected defect in a pinned external source was found. No frozen statement defect was found. Scope is the P6-4 diff and its actual imported interfaces, not an independent re-audit of every earlier package or a source-completeness certification for the planetary headline. The report is the sole repository edit; scratch probes/logs are removed after recording their results.
