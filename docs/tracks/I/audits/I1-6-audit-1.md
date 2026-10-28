# I1-6 independent audit 1

Verdict: **PASS WITH NOTES** for package I1-6 / `bpI:p1:reduced`.
The implementation proves the accepted specialized design statement, with clean axioms
and successful kernel replay. No frozen anchor is proved or sealed by this package;
I-G1 remains outside this verdict. The whole comparison branch has an inherited
protected-path hygiene discrepancy, recorded below, so this is not blanket approval
of all changes in `inp...HEAD`.

Audited 2026-10-28 in `/root/code/KAM-inp-i16`, HEAD
`f1a3b343e97d46d15bdb78f689fe0d77828a894b`.
Only this report was written as a repository deliverable. The user's exact report
path overrides the generic brief's instruction to write in the main inp worktree.

## Scope and comparison evidence

Read `AGENTS.md`, `docs/PLAN.md`, `docs/DECISIONS.md`,
`/root/code/KAM-inp/.drafts/briefs/inp-audit-package.md`, the supplied handoff,
`docs/tracks/I/statement.md`, design v2 including Appendix A8 and departures D2/D3,
both `PART123-design-audit-{1,2}.md` reports, and blueprint Part 1's standing setting,
reduced lemma and proof (lines 483–530). Inspected the frozen I-G1 theorem
`KAM/Frozen/Iso/Theorems/IsoenergeticKam.lean`, the extended torsion and energy
average definitions, `Linear/Defs.lean`, `Torus/Objects.lean`, and the actual K
identity/product-rule interfaces used by this proof.

The required `git diff inp...HEAD` was inspected. At audit time `inp` was
`44f77f3f65d43cab9088fe4e2b5b7c2772d61778`. Git warns:

```text
warning: inp...HEAD: multiple merge bases, using 3626838deeef8b58e1a2a12dfd62e74467cc4a2d
```

`git merge-base --all inp HEAD` returns both
`3626838deeef8b58e1a2a12dfd62e74467cc4a2d` and
`dccdffcad206acd9d4fd0c239263d0a427e2563f`.
The resulting diff contains 83 files (17601 insertions, 2562 deletions), including
unrelated merged packages and P graph reports. The handoff's alternative
`git diff inp-i11...HEAD` also includes these inherited changes; it is not a clean
one-package comparison. `inp-i11` resolves to `3626838...`.

`git show --stat HEAD` and `git diff --name-only HEAD^ HEAD` establish that the
I1-6 commit itself adds exactly `KAM/Iso/Linear/Reduced.lean` (233 lines).
This report audits every declaration of that file and its necessary interfaces;
it does not independently re-audit the unrelated merged packages.

**Protected paths:** `git diff inp...HEAD -- KAM/Frozen manifest README.md` is
empty. The same check including `KAM.lean` is **not empty**: 12 added root imports,
inherited from the merge parent. `git diff HEAD^ HEAD -- KAM/Frozen manifest
KAM.lean README.md` is empty. Thus the generic brief's whole-branch empty-diff
criterion is not met literally, but I1-6 introduces none of that drift. No
protected file was repaired or regenerated during this audit.

## Declaration-by-declaration verdicts

All names below are in `KAM.Iso.Linear`; locators refer to
`KAM/Iso/Linear/Reduced.lean`.

| Node / proof step | Declaration and line | Verdict | Reason |
|---|---|---|---|
| `stepI:p1:rd-ql`, block algebra | `omegaZeroMatrix_mul_fromRows`, 49 | PASS | Correct rectangular block identity for every finite column carrier, including empty carriers; no analytic premises. |
| `bpI:p1:reduced` (a) | `reducer_mul_tangentMat`, 56 | PASS | Exactly `QL = (I; -Ω_K)` under pointwise Gram invertibility; stronger pointwise scope than the standing-setting statement. |
| `stepI:p1:rd-consequence`, invertibility | `isUnit_det_reducer`, 73 | PASS | Proves the needed direction `det P` unit implies `det Q` unit using the invertible canonical matrix and transpose. No converse is assumed. |
| `stepI:p1:rd-expand`, product rule | `isoResidual_eq`, 92 | PASS | Exact product-rule expansion with correct `+Lω ξω` and `+E` signs. Its differentiability premises are discharged in the main theorem. |
| `bpI:p1:reduced` (b) | `reducer_mulVec_isoResidual`, 102 | PASS WITH NOTES | Exact projected identity; uses the accepted D3 standing specialization. No frame invertibility or unbordered torsion hypothesis. |
| `bpI:p1:reduced` (c), estimate | `norm_isoLinError_le`, 127 | PASS | Pointwise operator/max-norm bound with all three coefficients exactly 1; unconditional algebraic estimate, stronger than the bound conditional on a border solution. |
| `bpI:p1:reduced` (d), inverse helper | `isoResidual_eq_inv_mulVec`, 167 | PASS | True inverse use guarded by `IsUnit (reducer K θ).det`. It does not assert residual cancellation without invertibility. |
| `bpI:p1:reduced`, collected (a)–(d) | `reduced`, 180 | PASS WITH NOTES | Signature byte-identical to design Appendix A8; projected residual unconditional, inverse/equivalence conditional exactly as required. Accepted standing specialization retained. |

The comparison of the complete `theorem reduced ...` prefix before `:=` with
the design's prefix returned:

```text
Design Appendix A8 reduced signature byte-identical: True
```

A separate probe copied that complete design signature under the fresh name
`KAM.Iso.Linear.audit_design_reduced` and supplied:

```lean
by
  exact reduced hS hr hK hKD hG hr' hr'r hξ ξω
```

It elaborated at default resource limits. This checks the complete binder order,
carriers, strip conditions and all five conjuncts against the actual proved term.
There is no provider export or frozen seal body for I1-6, so the brief's
provider-versus-frozen-type and seal-copy probes are inapplicable. This design-type
probe is not represented as an I-G1 provider or seal check.

## Mathematical and premise audit

The common frame is on `Fin n ⊕ Fin n`; the underlying angle/action spaces remain
`Fin n → ℂ`, and the real frequency is `Fin n → ℝ`. The sum carrier is the two
blocks of the frame, not a change of ambient norm. Matrix estimates explicitly
use `Matrix.Norms.Operator`; vector norms are max norms. Complexification of ω
has norm at most its real max norm. The canonical matrix preserves the matrix
operator norm in the error estimate, so no missing dimensional factor occurs.

At lines 109–112, `fi_reduced` receives `hS.toStanding`, `hK`, `hKD`, `hG`, and
membership in the original strip, exactly its actual premises at
`KAM/Apost/Identities.lean:415`. `fi_NtOL` receives pointwise Gram invertibility
at line 65. `fi_QP` and `fi_QE` are unconditional algebraic identities
(`Identities.lean:192,200`). No torsion-average inverse is imported as a premise.

In the wrapper, `hsub` transports strip membership using `r' ≤ r`. The frame's
holomorphy follows from `differentiableOn_frameMat hK hG`
(`Identities.lean:328`). Openness of the strips then supplies the pointwise
frame and ξ derivatives for the product rule
(`KAM/Matrix/Calculus.lean:255`). These are proved obligations, not new input
assumptions or bundled conclusions. No periodicity or realness premise is needed
for this pointwise calculation, so omitting them strengthens this part of the
source setting.

The residual has `ΔK=Pξ`, `Δω=-ωξω`. The error includes the essential negative
term `-(0; Ω_Kω)ξω`; `QE=-η` accounts for the forcing sign. The border equation
reduces `Q Res` to `E_lin`. Only the final conjunct assumes invertibility of P,
derives invertibility of Q, and uses its true inverse to recover Res or the
zero-residual equivalence. This respects review I1-02; Gram invertibility is
never promoted to frame invertibility. The sufficient Neumann criterion is
not proved by this package and is not assumed without its own later proof.

The estimate introduces no existential constants, hidden dependence, or extra
smallness condition. It does not claim that the defects are quadratic merely
from these hypotheses; that quantitative claim belongs to the later geometry
and correction estimates on smaller strips.

## Definition classification

**New definitions/abbreviations/structures in I1-6: none.** The eight additions
are all public theorems. Relevant existing definitions in `Linear/Defs.lean`:

| Existing definition | Classification and use |
|---|---|
| `isoLinError`, line 101 | Literal three-term error expression; no conditional branch or fallback. Its unconditional norm estimate is algebraic even at totalized derivative values. Analytic uses in `reduced` have the needed regularity. |
| `isoResidual`, line 109 | Literal linearized residual, with `+Lωξω+E` and product derivative. The main theorem proves the derivative is genuine. |
| `bordOp`, line 117 | Literal triangular differential operator plus frequency column; no forcing or residual is hidden in its definition. |
| `Setting`, line 45 | Existing source/standing data, not a conclusion-shaped package; its K projection supplies exactly the K identity premises. |

The inherited Gram inverse is used geometrically only under `hG`; the residual's
new use of the Q inverse is explicitly guarded by a determinant-unit premise.
No junk off-domain value is used to prove a source conclusion. The other
border-solution definitions in `Defs.lean` are not used by this package.

## Independent checks and exact receipts

All Lean-related commands were sequential, with `LEAN_NUM_THREADS=1` and
`nice -n 5`. The build went through the mandated compile gate. No heartbeat,
recursion-depth or synthesis overrides were used.

1. Targeted build:

```sh
LEAN_NUM_THREADS=1 /mnt/HC_Volume_106379410/orchestrator-tools/inp_lake_build.sh /root/code/KAM-inp-i16 KAM.Iso.Linear.Reduced
```

Exit 0; output:

```text
[inp-gate] slot 1 acquired 02:10:24 for KAM.Iso.Linear.Reduced
Build completed successfully (3188 jobs).
```

The reported job count is Lake's target dependency accounting, not a claim that
3188 modules were freshly compiled; this was a targeted build using the existing
worktree snapshot, without clean, update or cache-download commands.

2. Design-type probe and all eight axiom prints:

```sh
LEAN_NUM_THREADS=1 nice -n 5 lake env lean .lake/abi-scratch/I16Audit.lean
```

Exit 0; output:

```text
'KAM.Iso.Linear.omegaZeroMatrix_mul_fromRows' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Linear.reducer_mul_tangentMat' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Linear.isUnit_det_reducer' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Linear.isoResidual_eq' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Linear.reducer_mulVec_isoResidual' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Linear.norm_isoLinError_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Linear.isoResidual_eq_inv_mulVec' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Linear.reduced' depends on axioms: [propext, Classical.choice, Quot.sound]
```

3. Kernel replay (one invocation; no provider or other new lemma module in I1-6):

```sh
LEAN_NUM_THREADS=1 nice -n 5 lake env leanchecker --verbose KAM.Iso.Linear.Reduced
```

Exit 0; output:

```text
replaying KAM.Iso.Linear.Reduced
```

4. Full source lint:

```sh
LEAN_NUM_THREADS=1 nice -n 5 sh scripts/lint_sources.sh
```

Exit 1, **solely the explicitly permitted stale generated-root exception**;
complete output:

```text
KAM.lean is out of date; run scripts/gen_root_imports.py
check_lean_modules: PASS (343 Lean files, 0 comparator configurations)
FROZEN-ANCHOR GUARD OK
ABI HASHES OK (144 frozen declarations)
```

No additional lint failure was emitted. The new file has 233 lines, copyright,
`module`, public imports, module docstring, and public section. A direct scan of
that file found no forbidden proof tokens, resource overrides or
`EuclideanSpace`. It imports definitions and K identities, not a provider or a
frozen theorem anchor. Clean axioms also rule out a transitive `sorryAx`
dependency for all eight results.

`git diff HEAD^ HEAD --check` exited 0 without output. The audit probe was deleted
after the checks. No state-changing git command was used.

## Defects, deviations and limits

- **Existing blueprint wording B2 / accepted departure D3:**
  `blueprint-I/parts/p1-iso-linear.tex:484` says `ω∈ℝⁿ (any)` while also assuming
  `bpI:p1:setting`, which requires a Diophantine ω (line 35). Lean takes that
  standing setting, as design row D3 (`PART123-LEAN-DESIGN.md:246`) explicitly
  directs. The algebra is not claimed here as a separately formalized arbitrary-ω
  theorem. Every intended I-G1 use is at the Diophantine iterate frequency.
- **Existing range specialization D2 / design audit N1:** the blueprint setting
  at line 31 says `τ≥0`; the K Standing inherited by Lean requires `τ≥n-1` and
  positive auxiliary σ parameters. Design audit 2, lines 36 and 64, records this
  as an accepted specialized implementation sufficient for I-G1. This report
  does not upgrade it to proof of the full `τ≥0` source range.
- **Inherited branch hygiene:** the whole-branch protected-path criterion fails
  for generated `KAM.lean` only, as described above. The lint exception is
  separately expected because the new Reduced module has not been added to the
  generated root. Regeneration/landing belongs to the orchestrator; the auditor
  made no repair.
- **No newly suspected pinned-source erratum or mathematical defect** was found.
  This is an audit of the Lean proof against the pinned local blueprint/design
  and actual dependency interfaces, not an independent rereading of HL19's PDF.
  Existing blueprint wording issues are not reclassified as source errata.

No material I1-6 proof obligation remains unpaid within the accepted statement.
No provider seal or root theorem closure follows from this package verdict.
