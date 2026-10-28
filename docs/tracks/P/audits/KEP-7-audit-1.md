# KEP-7 independent audit 1

Audit date: 2026-10-28. Worktree: `/root/code/KAM-inp-kep7`.
Audited HEAD: `615c2fa52919ba10b4fe1641922381fecb705a8d`.
Comparison: `git diff inp...HEAD`; current `inp` was `06c424f049b3d6636d5e671a347d85fc5194c0d9`.
The entire committed delta is the new 319-line `KAM/Kepler/DelaunayChart.lean`.
The pre-existing untracked `KEP-7-handoff.md` was read and preserved.

## Scope and verdict

**Overall verdict: PASS WITH NOTES — KEP-7 is ready for integration.** All four public declarations pass statement fidelity, proof inspection, axiom checks and kernel replay. There is no material finding. The notes are the brief-permitted stale generated root and two inherited unused-variable build warnings. Per frozen anchor: **not applicable (none owned or proved by KEP-7)**.

KEP-7 implements `bpI:p7:chart`, shared with track P, as specified in the handoff and `KEPLER-LEAN-DESIGN.md` §§2.2, 7, 7.1 and the signatures at lines 1216–1227. It introduces no provider and proves no frozen anchor. Consequently provider/frozen ABI equality and frozen seal-body checks are **not applicable**; this audit does not seal I-KEPLER, I-R3BP or any N/P headline.

The four signatures were copied from the design into a disposable probe and applied directly to the actual exports with the listed explicit arguments. The handoff mentions `KeplerSignatures.lean`; no such tracked file is present in this worktree, but the authoritative design embeds these signatures verbatim. No weakened carrier, extra hypothesis, changed quantifier, or constant dependence was found.

## Declaration-by-declaration review

All names below are in `KAM.Kepler`; private names denote their source names rather than generated private identifiers.

| Node / step | Declaration (file line) | Statement/proof review | Reason |
|---|---|---|---|
| `bpI:p7:chart`, periodicity | `delaunay_periodic` (52) | PASS | Arbitrary integer shifts in both angles; `deDom` gives positive L and `0 < e < 1`; applies existing orbit periodicity. Exactly the design signature. |
| Planar algebra helper | private `pSq` (65) | PASS | Expands the actual frozen sum of coordinate squares; no substituted norm. |
| `stepI:p7:ch-inj`, rotation | private `rot_eq_self_iff` (69) | PASS | Assumes a nonzero vector and an actual fixed-vector equality; takes the scalar product to force cosine 1, then extracts an integer multiple of 2π. The name says iff but its documented one-way implication is all that is used. |
| `stepI:p7:ch-inj`, anomalies | private `orbitMapR_eq_imp` (88) | PASS | Radius and dot product recover cosine/sine using positive L and **strictly positive e**. Cosine of the anomaly difference is 1; Kepler's equation recovers the mean anomaly lattice shift. The positive frame radius justifies rotation uniqueness. |
| `stepI:p7:ch-inj`, elements | private `delaunay_snd_eq` (145) | PASS | Uses the already proved recovery of L and G from the common image, with both domain memberships. |
| `bpI:p7:chart`, injectivity | `delaunay_eq_iff` (154) | PASS | Equality iff precisely the two integer angle shifts and equality of actions. The reverse implication follows from periodicity. Exactly the design signature. |
| `stepI:p7:ch-surj2`, scalar algebra | private `anomaly_sq` (182) | PASS | Proves the unit-circle identity from the eccentricity and radial-momentum identities; L and e are explicitly positive before division. These identities are derived at the caller, not assumed by the public theorem. |
| `stepI:p7:ch-surj2`, angle existence | private `exists_cos_sin` (199) | PASS | Rotates `(1,0)` to the unit vector `(c,s)` using equal physical lengths; recovers both coordinates. No branch-cut assumptions. |
| `stepI:p7:ch-surj2`, anomaly uniqueness | private `eccAnom_of_eq` (210) | PASS | Uses the established uniqueness of the real Kepler solution for absolute eccentricity below 1. |
| `bpI:p7:chart`, `ch-surj1..3` | `keplerRegion_subset_image` (215) | PASS | Constructs L, G, e, u, mean anomaly and g from an arbitrary region point. Lagrange's identity gives `d² = -r²/L² + 2r - G²`; the unit-circle lemma supplies u. Position matches by rotation; dot/cross determine momentum because radius is positive. Exactly the design signature. |
| `bpI:p7:chart`, `ch-reg`, `ch-diffeo` | `delaunay_localDiffeo` (293) | PASS | Uses analytic forward map and Jacobian equivalence at the input, then restricts the inverse-function chart source to open `deDom`. At every target point its inverse lands in `deDom`, allowing the same equivalence and analyticity to prove the inverse analytic there. Exactly the design signature. |

The surjectivity statement combines with existing `delaunay_mem_region` to yield `delaunay '' deDom = keplerRegion`; the probe also checks that assembly. Forward analyticity, symplecticity, and energy/angular-momentum identities belong to already imported KEP-5/6, not new missing KEP-7 proofs. The design explicitly adopts periodicity + lattice injectivity + image coverage + analytic local charts in place of a quotient-manifold carrier (§B6, lines 281–286). The Lean statements follow that approved formulation; this package does not independently construct a quotient manifold.

## Definitions and hypotheses

There are **no new `def`, `abbrev`, `structure`, or instance declarations**, public or private. Local `let` charts are genuine Mathlib inverse-function charts and their open restrictions, not replacement orbit maps. The local scalar `set` bindings in surjectivity are the explicit element/anomaly formulae of the blueprint.

The unchanged objects inspected were `Phase 2 = (Fin 2 → ℝ) × (Fin 2 → ℝ)`, frozen `planeSq`, `planeLength`, `planeDot`, `planeCross`, and `symplecticForm`; `eccOf`, `kE`, `deDom`, `keplerRegion` in `Energy.lean`; `eccAnom` and its uniqueness specification in `Equation.lean`; `orbitFrame`, `orbitMapR`, `delaunay` and their radius/dot/elements/analyticity results in `Orbit.lean`; and Jacobian equivalence in `DelaunaySymplectic.lean`. Physical lengths are the square-root-of-sum-of-squares lengths, while the ambient Pi/Prod norm is the usual Mathlib norm. All uses of division/Kepler uniqueness are in the stated positive-L, noncircular domain; no off-domain fallback is used as evidence.

Public assumptions are only domain membership; surjectivity has no additional premise. Private algebraic helpers have explicit intermediate hypotheses which their callers prove. A recursive source-import scan found 51 project modules and **no** `KAM.Provider.*` or `KAM.Frozen.*.Theorems.*` imports anywhere in the closure. There is no reliance on frozen theorem placeholders.

## Independent verification

All Lean commands were launched sequentially with `LEAN_NUM_THREADS=1` and `nice -n 5`; the targeted build used the prescribed compile gate. The lint script itself invokes one `lake env lean` for ABI hashes, so it too is run sequentially under inherited niceness and thread settings.

1. **Targeted build**, exit **0**:

   ```sh
   LEAN_NUM_THREADS=1 /mnt/HC_Volume_106379410/orchestrator-tools/inp_lake_build.sh /root/code/KAM-inp-kep7 KAM.Kepler.DelaunayChart
   ```

   Output:

   ```text
   [inp-gate] slot 1 acquired 01:43:29 for KAM.Kepler.DelaunayChart
   ⚠ [9087/9097] Replayed KAM.Kepler.Energy
   warning: KAM/Kepler/Energy.lean:106:35: Variable name `hm` is not explicitly referenced.
   warning: KAM/Kepler/Energy.lean:106:48: Variable name `hκ` is not explicitly referenced.
   Build completed successfully (9097 jobs).
   ```

   The two existing unused-variable warnings also include Lean's standard suggestions to remove/underscore the binder or disable that linter; no option was changed. The build reports its dependency-graph job count; this was a targeted build, not a library-from-scratch build. No warning was emitted for the added chart module.

2. **Signature applications, image assembly and all public axioms**, exit **0**:

   ```sh
   LEAN_NUM_THREADS=1 nice -n 5 lake env lean .lake/abi-scratch/KEP7Audit.lean
   ```

   Output:

   ```text
   'KAM.Kepler.delaunay_periodic' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Kepler.delaunay_eq_iff' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Kepler.keplerRegion_subset_image' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Kepler.delaunay_localDiffeo' depends on axioms: [propext, Classical.choice, Quot.sound]
   ```

   The probe consisted of the four design signatures renamed to `example`, with bodies respectively `by exact delaunay_periodic hw k k'`, `by exact delaunay_eq_iff hw hw'`, `by exact keplerRegion_subset_image`, and `by exact delaunay_localDiffeo hw`. It also proved exact image equality by set antisymmetry using `delaunay_mem_region` and `keplerRegion_subset_image`. No resource override or added premise was used.

3. **Kernel replay**, exit **0**, one invocation for the sole new lemma module (there is no provider module):

   ```sh
   LEAN_NUM_THREADS=1 nice -n 5 lake env leanchecker --verbose KAM.Kepler.DelaunayChart
   ```

   Output:

   ```text
   replaying KAM.Kepler.DelaunayChart
   ```

4. **Repository lint**, exit **1**, solely the explicitly permitted stale-root exception:

   ```sh
   LEAN_NUM_THREADS=1 nice -n 5 sh scripts/lint_sources.sh
   ```

   Complete output:

   ```text
   KAM.lean is out of date; run scripts/gen_root_imports.py
   check_lean_modules: PASS (325 Lean files, 0 comparator configurations)
   FROZEN-ANCHOR GUARD OK
   ABI HASHES OK (144 frozen declarations)
   ```

   Verdict for the brief's lint criterion: **PASS WITH NOTES**. Root regeneration belongs to the orchestrator; no generated file was edited.

5. **Source checks**: `git diff --check inp...HEAD` and `git diff --check` both exit **0**, no output. `git diff inp...HEAD -- KAM/Frozen manifest KAM.lean README.md` exits **0**, empty output. The new file is **319 lines**, has no line over 100 characters, and includes the copyright header, `module`, public imports, module docstring and exposed public noncomputable section. Direct declaration/forbidden-token inspection found only four public and seven private theorems, no new object declarations, proof escapes, resource overrides or forbidden ambient carrier. The 51-module import-closure check found no theorem anchor/provider import.

## Defects, deviations and limits

No suspected pinned-source defect, blueprint contradiction, frozen-statement defect, or material implementation deviation was found. The chart bijectivity proof is explicitly the project's own proof in `blueprint-I/parts/p7-delaunay.tex:245`; no independent transcription claim about Chi05 is needed for this package. No external PDF re-audit was performed.

The proof chooses angles using `exists_rot_eq` and `cos_eq_one_iff` rather than arccos/arg, and obtains inverse analyticity directly via `OpenPartialHomeomorph.contDiffAt_symm` rather than `ContDiffAt.to_localInverse`. Both are valid implementations of the stated proof plan. Local inverse charts are only asserted on their open source/target, as intended. The strict exclusions of circular and rectilinear orbits are preserved.

Only this report is changed by the auditor; temporary probes are placed in `.lake/abi-scratch/` and removed after verification. Frozen files, manifests, generated files and production Lean sources were not edited. No commit or other state-changing git operation was performed.
