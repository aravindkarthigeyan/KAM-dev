# P7-3 independent audit 1

Audit date: 2026-10-28. Worktree: `/root/code/KAM-inp-p73`.
Audited HEAD: `0fec970c5cf8b18b261e046237cafb0becb90bf7`.

**Verdict: PASS WITH NOTES for package P7-3.** The six public declarations
implement the approved design interface, including circular points. No mathematical
blocking finding was identified. The notes concern the inherited comparison history
and the interpretation of a principal-argument inverse, described below.

**Frozen anchors: none in this package.** P7-3 is infrastructure, not a provider
or an anchor seal. A frozen/provider ABI probe and a frozen seal-body probe are
therefore inapplicable. This verdict does not seal a planetary headline theorem.

## Authority and scope

Read `AGENTS.md`, `docs/PLAN.md`, `docs/DECISIONS.md`, the external
`/root/code/KAM-inp/.drafts/briefs/inp-audit-package.md`, and
`docs/tracks/P/audits/P7-3-handoff.md`. The user's exact output path overrides the
brief's generic instruction to write in the main worktree. The handoff's AUDIT
FOCUS restricts implementation review to the P7-3 changes under
`KAM/Planetary/Poincare/`.

Compared against `docs/tracks/P/design/KEPLER-LEAN-DESIGN.md`, especially B6
(lines 281–285), package row P7-3 (444), proof plan (562–563), and the literal
interface (2129–2151); `blueprint-P/parts/p7-kepler-poincare.tex`, definitions and
Theorem `bpP:p7:poincare` (119–163), especially (e) and `stepP:p7:po-bij`;
and `docs/tracks/P/statement.md` (including the physical circular torus and
the distinction between physical Euclidean length and the ambient Pi norm).
Read the chart/domain definitions, the relevant frozen scalar-product, length,
cross-product, orbital-unit, quarter-turn, phase, and symplectic-form definitions,
and the imported Kepler interfaces used by this proof.

The required `git diff inp...HEAD` comparison was inspected. Git warns:

```text
warning: inp...HEAD: multiple merge bases, using 8d0a48c6b47fe0d34344b942b163c195a4a7dd6d
```

At inspection, `inp` was `a5a84d778af8754a3c9450e997ee74955f470552` and
`inp-p72` was `845ad16864fc77e68a98b3486231dcffef4aa615`.
The broad comparison includes inherited changes to `KAM.lean`, `README.md`,
`KAM/Frozen/Iso/Theorems/IsoenergeticKam.lean`, and
`manifest/frozen-anchors.json`; it is **not empty** on the brief's protected paths.
These are not P7-3 edits: `git diff 40294b5..HEAD --name-only`, starting at the
P7-2 integration commit, lists only `KAM/Planetary/Poincare/Bijective.lean`,
and its protected-path diff is empty. In accordance with the explicit AUDIT
FOCUS, unrelated inherited packages and seals receive no verdict here.

```text
$ git diff --numstat inp-p72...HEAD -- KAM/Planetary/Poincare/
439     0       KAM/Planetary/Poincare/Bijective.lean
```

## Declaration and node review

A separate source comparison also confirmed all five theorem signatures and the
inverse definition equal the design text after removing whitespace.

All public names below are in `KAM.Planetary`; all source line numbers refer to
`KAM/Planetary/Poincare/Bijective.lean`. The six public declarations have the
design's exact hypotheses, binder order, carriers, and conclusions. There is no
added noncircularity hypothesis, extra bound, widened constant dependence, or
weakened conclusion. There are no estimate constants in this interface.

| Node / role | Declaration (line) | Verdict | Reason |
|---|---|---|---|
| `po-bij`, polar coordinates | private `bj_polar` (41) | PASS | Arbitrary planar vector has a polar representation, including zero. |
| `po-bij`, angle lattice | private `bj_exists_int` (51) | PASS | Equal cosine and sine recover the exact integer period. |
| Periodicity algebra | private `bj_cos` (59) | PASS | Integer `2π` cosine period. |
| Periodicity algebra | private `bj_sin` (63) | PASS | Integer `2π` sine period. |
| Circular locus | private `bj_circ_eq` (67) | PASS | Sum of two real squares zero forces both slow coordinates zero. |
| `po-bij`, Delaunay reduction | private `bj_noncirc` (80) | PASS | Positive Γ used only in this distinct noncircular helper. |
| `poincare` (e), injectivity | `poincare_eq_iff` (102) | PASS | Exactly injectivity modulo `2πℤ` in λ; all remaining coordinates agree. |
| Symplectic algebra | private `bj_sf_eq` (174) | PASS | Frozen form expanded with the correct momentum-position sign. |
| Symplectic nondegeneracy | private `bj_eq_zero_of_sf` (179) | PASS | Four basis tests force all four coordinates zero; no assumed invertibility. |
| `po-bij`, inverse derivative | private `bj_fderiv_equiv` (188) | PASS | Symplectic derivative is injective, hence bijective in the same finite dimension. |
| `poincare` (e), regularity | `poincare_localDiffeo` (210) | PASS | Open partial homeomorphism with analytic inverse throughout its target. |
| Length algebra | private `bj_planeSq` (239) | PASS | Physical squared length is the two-coordinate sum of squares. |
| `po-bij`, noncircular onto | private `bj_surj_lt` (243) | PASS | Delaunay image transported with Γ = Λ − C and λ = ℓ + g. |
| `po-bij`, circular onto | private `bj_surj_eq` (271) | PASS | Equality case gives q·p = 0 and radius = axis; reconstructs the prograde circular momentum. |
| `po-bij`, full onto | private `bj_surj` (318) | PASS | Exhaustive C ≤ Λ split with both cases proved. |
| `poincare` (e), image | `poincare_image` (324) | PASS | Exact image equals the full prograde bound region, including circular points. |
| `poincare` (e), inverse formula | `poincareInv` (340) | PASS | Literal design formula; definitional equality to the copied formula checked by `rfl`. |
| Inverse longitude periodicity | private `bj_phi_int` (352) | PASS | Φ changes by the same integer multiple of `2π`. |
| Inverse matrix algebra | private `bj_c_eq` (358) | PASS | Proves the rank-one inverse identity from K > 0 and physical squared length = 1 − K². |
| `poincare` (e), inverse after chart | `poincareInv_poincare` (373) | PASS | Explicit representative differs only by an integer λ-period. |
| `poincare` (e), chart after inverse | `poincare_poincareInv` (422) | PASS | Inverse belongs to the chart domain and maps back exactly. |

The design's B6 explicitly replaces a quotient-manifold diffeomorphism by image,
lattice injectivity, and a local analytic inverse. This module supplies precisely
those three interfaces. It does not need a quotient carrier.

## Definition classification and circular-point checks

There is one new named definition, `poincareInv`; no new abbreviations or
structures. It is an exposed noncomputable explicit formula on all
`ℝ × ℝ × Phase 2`, with meaningful inverse guarantees on positive m, positive κ,
and `regionMK m κ`. Total real division, square root, and `Complex.arg` also give
values outside those hypotheses. There is no conditional fallback or selected
witness in its body, and no theorem relies on those off-domain values.

On the intended region, surjectivity and `poincare_elements` recover a chart
preimage: Λ > 0, 0 ≤ Γ < Λ, K > 0, s > 0, and 1 + K > 0. The reconstructed c is
the unit vector `orbitalUnit F`, so the argument is applied to a nonzero complex
number. In `bj_c_eq`, the identity
`|v|² = 1 − K²` makes `K⁻¹(Id − vvᵀ/(1+K))` the desired matrix inverse.
The proof works at v = 0 and K = 1 without dividing by |v| or Γ.

Injectivity at Γ = 0 (lines 116–147) first proves both slow coordinates zero,
then uses the circular position and its positive scale to recover λ modulo
`2π`; it does not invoke Delaunay injectivity there. Circular surjectivity
(271–316) reconstructs q and p from radius, dot product, and positive cross
product, including the momentum orientation. The local inverse construction
(210–233) restricts its source to the open chart domain and proves analyticity
at every inverse point through symplectic nondegeneracy, including Γ = 0.

**Interpretation note:** the principal-argument representative `poincareInv`
is not asserted to be a globally continuous real-valued lift of λ. Its branch
cut is compatible with the inverse identities modulo the lattice. Analytic
regularity belongs to the local inverse branches supplied by
`poincare_localDiffeo`, as specified by the design and blueprint.

## Hypotheses, imports, and hygiene

No conclusion-shaped hypotheses or bundled proof assumptions were found.
The premises of the private conditional helpers are proved at their call sites;
in particular, no surjectivity, inverse identity, or derivative equivalence is
assumed in a public theorem.

Direct imports are `Mathlib`, `KAM.Planetary.Poincare.Symplectic`, and
`KAM.Kepler.DelaunayChart`. A recursive scan of the 56 local KAM modules in
the import closure found frozen **definition** modules only, no frozen theorem
modules and no provider modules. Thus there is no DRAFT_SORRY theorem import
or provider quarantine violation to discharge.

The file has 439 total lines, the prescribed copyright, `module`, public imports,
module docstring, and `@[expose] public noncomputable section`. No forbidden
proof escape, resource override, or `EuclideanSpace` appears in it.

### Independent executable checks

All audit Lean commands were serialized with `LEAN_NUM_THREADS=1` and niceness
5. No heartbeat, recursion-depth, or synthesis-budget override was used.
The gate itself applies `nice -n 5` to the targeted build.

```sh
LEAN_NUM_THREADS=1 /mnt/HC_Volume_106379410/orchestrator-tools/inp_lake_build.sh \
  /root/code/KAM-inp-p73 KAM.Planetary.Poincare.Bijective
```

Exit 0. Output begins `[inp-gate] slot 1 acquired 04:07:07 for
KAM.Planetary.Poincare.Bijective` and ends:

```text
Build completed successfully (9102 jobs).
```

This is the targeted build's cached dependency-job count, not a clean rebuild.
It replayed pre-existing unused-variable warnings from `Energy.lean` (106),
`Chart.lean` (212, 247), and `Mass.lean` (147, 157, 500, 524). There was no
warning from the audited file. This is slightly broader warning output than
the handoff's mention of Mass alone, with no change to the mathematical result.

```sh
LEAN_NUM_THREADS=1 nice -n 5 lake env lean .lake/abi-scratch/P73Audit.lean
```

Exit 0. The scratch probe copied all five theorem signatures directly from the
design and discharged them by applying the corresponding export to exactly
the explicit binders in order. It also copied the inverse formula and checked
`inverseFromDesign = KAM.Planetary.poincareInv` by `rfl`. These checks replace
the inapplicable frozen/provider and seal-body checks for this infrastructure
package. Full axiom output:

```text
'KAM.Planetary.poincare_image' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Planetary.poincare_eq_iff' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Planetary.poincare_localDiffeo' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Planetary.poincareInv_poincare' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Planetary.poincare_poincareInv' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Planetary.poincareInv' depends on axioms: [propext, Classical.choice, Quot.sound]
```

```sh
LEAN_NUM_THREADS=1 nice -n 5 lake env leanchecker --verbose KAM.Planetary.Poincare.Bijective
```

Exit 0. Complete output:

```text
replaying KAM.Planetary.Poincare.Bijective
```

This single invocation replays the only new module; there is no provider or
additional P7-3 lemma module.

```sh
LEAN_NUM_THREADS=1 nice -n 5 sh scripts/lint_sources.sh
```

Exit 1, solely for the expected generated-root exception allowed by the brief.
Complete output:

```text
KAM.lean is out of date; run scripts/gen_root_imports.py
check_lean_modules: PASS (389 Lean files, 0 comparator configurations)
FROZEN-ANCHOR GUARD OK
ABI HASHES OK (144 frozen declarations)
```

The generated root was not edited or regenerated.

```sh
git diff --check inp-p72...HEAD -- KAM/Planetary/Poincare/
git diff 40294b5..HEAD --exit-code -- KAM/Frozen manifest KAM.lean README.md
```

Both exit 0 with no output. The broad protected-path comparison is separately
reported above rather than incorrectly claimed empty.

## Defects, limitations, and handoff

No suspected new blueprint or pinned-source erratum was identified. The
quotient-versus-local-branch distinction is already explicitly resolved by
design B6; it is not a new defect. No source text was modified or independently
claimed to have undergone a fresh pinned-PDF audit in this package review.
No new mathematical deviation was introduced.

The inherited protected-path changes and pre-existing build warnings are notes,
not failures of the explicitly limited P7-3 scope. Imported P7-2/Kepler proof
implementations were not re-audited as separate packages; their used interfaces
and the P7-3 axiom closure were checked here. No unresolved P7-3 proof obligation
was found.

Only this report was added to repository sources by the auditor. Probe files
were confined to `.lake/abi-scratch/` and removed after checking. No production
Lean file, frozen file, manifest, generated file, git index, or branch was changed.
