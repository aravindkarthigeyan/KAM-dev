# I-4 independent audit 1

Verdict: **PASS WITH NOTES** for package I-4 / `bpI:p7:near-circular`. All six public declarations satisfy the design and blueprint contracts. No material proof or statement defect found.

This is an infrastructure package about the frozen definition `KAM.Iso.NearCircular`; it contains no provider export and seals no frozen theorem. In particular this verdict does not seal `KAM.Iso.restricted_near_circular` or establish its dynamical conclusion. Provider/frozen-type equality and proposed seal-body probes are therefore not applicable.

## Scope and authority

Audited worktree `/root/code/KAM-inp-i4`, HEAD `e25d97aeaef5fd824dc07ca56692ae26f6203c18`, comparison branch `inp` at `a10191f16d172e8b433f45eb9bed9a3c7270d11b`. `git diff inp...HEAD` adds only `KAM/Iso/NearCircular.lean` (239 lines). Read the package brief, AGENTS, PLAN, DECISIONS, I-4 handoff, track-I statement (especially I-R3BP), design table §7 row I-4 and §7.1, design signatures at lines 1458–1479, and blueprint-I Part 7 lines 263–280. Inspected the frozen NearCircular/RadiusSq definitions, downstream RestrictedNearCircular theorem, and relevant Kepler definitions and chart lemmas.

The user's explicit output path overrides the generic brief's main-worktree destination. Only this report was written outside `.lake/abi-scratch/`; the audit probe was deleted after verification. The pre-existing untracked I-4 handoff was preserved.

## Declaration-by-declaration findings

All names below are in `KAM.Iso`; all implement `bpI:p7:near-circular`.

| Node / declaration | Lean location | Verdict | Reason |
|---|---|---|---|
| Witness predicate: `NearCircularWitness` | `KAM/Iso/NearCircular.lean:52` | PASS | Exactly the frozen existential matrix, retaining every positivity, strict endpoint, energy, and angular-momentum clause. Definitionally identical to the design predicate. |
| Witness uniqueness: `nearCircular_witness_unique` | line 87 | PASS | Matches the designed binders and conclusion, including identification with physical radius, semimajor axis and eccentricity. The witness hypotheses are the intended definition premises. |
| Element description: `nearCircular_eq` | line 105 | PASS | Equality of the original frozen set with the element-bounded subset of the full Kepler region, for arbitrary four real endpoints; no new endpoint restrictions. Both inclusions proved. |
| Chart image: `nearCircular_eq_image` | line 152 | PASS | Exact Delaunay image with `deDom` and the intended axis/eccentricity bounds; surjectivity is supplied by the proved chart theorem, not a new hypothesis. |
| Openness: `isOpen_nearCircular` | line 206 | PASS | Open in the ambient four-dimensional phase space for arbitrary endpoints, using continuity on the open Kepler region. No energy-surface restriction or assumed openness. |
| Nonemptiness: `nearCircular_nonempty_iff` | line 218 | PASS | Exact iff with existential `L,G`, `0 < G < L`, axis and eccentricity inequalities. The reverse implication chooses genuine angle values zero in the existing Delaunay map. |

The five theorem statements were copied from the design into scratch `example` declarations and checked by direct application of the corresponding exports. This checks their complete stated contracts, including implicit/explicit binder roles and endpoint quantification. There is no weakened conclusion, additional hypothesis, widened constant dependence, or carrier substitution. No constants are introduced.

## Definitions and proof inspection

The only new definition/abbreviation/structure is `NearCircularWitness`. Classification: **faithful explicit-witness predicate**, valid on its whole carrier `(four real bounds, Phase 2, three real witnesses)`. It makes no choice, has no fallback branch and does not use a total inverse at a collision as evidence of membership. Its `0 < r`, `0 < a`, and `0 < e < 1` guards are exactly those in the frozen predicate. Scratch probes proved by `rfl` both its equality with a copied design definition and the equivalence between frozen membership and existence of these witnesses.

Private helper `witness_spec` (line 60) forces `r = planeLength q`, negative energy `kE z = -1/(2a)`, and `a = elemA z`, `e = elemEcc z`. Positivity justifies the square-root identifications and nonzero denominators. The reverse inclusion (lines 128–150) recovers positive radicand and eccentricity below one from the strict Kepler-region inequalities. Thus circular and radial degeneracies are excluded for mathematical reasons, not hidden defaults.

Other private helpers are `elemA_eq`, `mem_nearCircular_iff`, and six continuity lemmas at lines 173–204. They prove algebraic/definitional identities and continuity directly; none packages an unpaid hard step as a premise. Openness uses continuous preimages of open intervals within the open Kepler region. The image proof uses `keplerRegion_subset_image`, `delaunay_elements`, and `delaunay_mem_region` with their actual domain assumptions.

The transitive local import closure has 53 modules and contains **zero** `KAM.Provider.*` modules and **zero** frozen theorem modules. This excludes circular reliance on I-R3BP or another frozen theorem. All new theorem axioms were independently inspected as below.

## Independent checks

Commands ran from `/root/code/KAM-inp-i4`. All Lean/Lake/checker invocations were serialized with `LEAN_NUM_THREADS=1` and `nice -n 5`; no heartbeat, recursion or synthesis overrides were used. The build used the prescribed gate, whose script invokes `nice -n 5 lake build`.

### Targeted build

```sh
env LEAN_NUM_THREADS=1 /mnt/HC_Volume_106379410/orchestrator-tools/inp_lake_build.sh /root/code/KAM-inp-i4 KAM.Iso.NearCircular
```

Exit **0**. Output:

```text
[inp-gate] slot 1 acquired 03:17:21 for KAM.Iso.NearCircular
⚠ [9087/9099] Replayed KAM.Kepler.Energy
warning: KAM/Kepler/Energy.lean:106:35: Variable name `hm` is not explicitly referenced.
warning: KAM/Kepler/Energy.lean:106:48: Variable name `hκ` is not explicitly referenced.
Build completed successfully (9099 jobs).
```

The two unused-variable warnings belong to an unchanged dependency. No source option was changed to suppress them.

### Design, definition and axiom probes

```sh
env LEAN_NUM_THREADS=1 nice -n 5 lake env lean .lake/abi-scratch/I4Audit.lean
```

Exit **0**. The probe imported `KAM.Iso.NearCircular`, copied the five exact design theorem signatures as examples, and used direct applications of the respective exports with their explicit binders. It also copied the witness definition as `AuditWitness` and checked:

```lean
example (am ap em ep : ℝ) (z : Phase 2) (r a e : ℝ) :
    AuditWitness am ap em ep z r a e = NearCircularWitness am ap em ep z r a e := rfl
example (am ap em ep : ℝ) (z : Phase 2) :
    z ∈ NearCircular am ap em ep ↔
      ∃ r a e, NearCircularWitness am ap em ep z r a e := Iff.rfl
example : KAM.Iso.radiusSq = planeSq := rfl
```

The probe then issued `#print axioms` for every new public theorem. Complete axiom output:

```text
'KAM.Iso.nearCircular_witness_unique' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.nearCircular_eq' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.nearCircular_eq_image' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.isOpen_nearCircular' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.nearCircular_nonempty_iff' depends on axioms: [propext, Classical.choice, Quot.sound]
```

### Kernel replay

```sh
env LEAN_NUM_THREADS=1 nice -n 5 lake env leanchecker --verbose KAM.Iso.NearCircular
```

Exit **0**. Complete output:

```text
replaying KAM.Iso.NearCircular
```

This is the only new lemma module; there is no provider module in this package.

### Source lint and protected paths

```sh
env LEAN_NUM_THREADS=1 nice -n 5 sh scripts/lint_sources.sh
```

Exit **1**, solely the expressly permitted root-import freshness failure. Complete output:

```text
KAM.lean is out of date; run scripts/gen_root_imports.py
check_lean_modules: PASS (368 Lean files, 0 comparator configurations)
FROZEN-ANCHOR GUARD OK
ABI HASHES OK (144 frozen declarations)
```

No other lint diagnostic. The ABI subprocess inherited one thread and the parent niceness. The generated root was left untouched as required.

```sh
git diff inp...HEAD -- KAM/Frozen manifest KAM.lean README.md
git diff --check inp...HEAD
```

Both exit **0**, no output. Direct inspection confirms the new file has copyright/authors, `module`, public imports, module docstring, and exposed public noncomputable section. The whole file has 239 lines, below 1500. An explicit scan of the new file found no `sorry`, `admit`, `axiom`, `unsafe`, `opaque`, `EuclideanSpace`, or `set_option`. It has one new public definition and five new public theorems.

## Notes, defects, deviations and remaining limits

1. **Design bookkeeping only:** `docs/tracks/P/design/KEPLER-LEAN-DESIGN.md:141` lists the prerequisite “`iso_radiusSq_eq`”. That name does not exist; `KAM.Kepler.radiusSq_eq_planeSq` at `KAM/Kepler/Plane.lean:302` is the existing `rfl` identity, and the predicates here interoperate definitionally (also verified in scratch). No mathematical contract changes. Suggested documentation correction: replace that prerequisite name with `radiusSq_eq_planeSq` (or state definitional equality).
2. **Handoff bookkeeping only:** the handoff says “233 lines”; the audited file actually has **239 lines**. The commit identity and module/declaration inventory match. No size-limit issue.
3. **Expected landing task:** the orchestrator must regenerate `KAM.lean`. The audit deliberately did not change generated files.
4. **Pinned-source errata:** none suspected from this package. The near-circular lemma is the blueprint's derived geometric result; no new external theorem transcription is introduced. This is not a fresh audit of every cited Chierchia formula or unchanged upstream package.
5. **Auditor deviations:** none. No Lean source, frozen file, manifest, git state, package dependency or generated root was changed. No default-heartbeat elaboration failure occurred.

The package proves the stated region geometry and the exact nonemptiness criterion. It does not by itself prove the restricted three-body global confinement theorem; that frozen theorem remains outside this package's closure claim.
