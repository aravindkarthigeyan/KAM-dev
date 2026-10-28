# P6-2 independent audit 1

Verdict: **PASS WITH NOTES** for package P6-2 / `bpP:p6:bary-algebra`. All nine public theorems pass statement and proof review. The notes concern the expected generated-root lint exception and one deliberately retained redundant hypothesis. No blocking mathematical finding was found.

**Frozen theorem anchors proved/sealed: none.** This is a helper package, not a provider or an anchor seal. Provider/frozen-type equality and a copied frozen seal-body probe are therefore not applicable. This verdict does not seal P-PLANAR, P-FIXED, or any other headline.

## Scope, authority, and snapshot

Independent focused (tier 2), refute-first audit on 2026-10-28. Reviewed `AGENTS.md`, `docs/PLAN.md`, `docs/DECISIONS.md`, `/root/code/KAM-inp/.drafts/briefs/inp-audit-package.md`, and `docs/tracks/P/audits/P6-2-handoff.md`; followed the handoff's AUDIT FOCUS and design §2.3, §7 row P6-2, D5. The user's explicit report destination overrides the generic brief's main-worktree destination. Authorization: read-only source inspection, targeted build, scratch probes, and this report; no commits, source repairs, or generated-file updates. No subagents were used.

Snapshot `frozen-v1`: HEAD `983a526b0448c71555f8f08bd6c4c15e6ce17a0c`; comparison ref `inp` resolved to `1a23e2345e80c1cc5f2d0f70fba4b5b51d77174f`. `git diff inp...HEAD` contains exactly one added tracked file, `KAM/Planetary/Newtonian/Barycentric.lean` (113 lines). The handoff was already untracked at entry. The shared `inp` ref advanced during the audit to `8de675fd1a19c7d7753f0e3640edaeb865d792e1`; the final `git diff inp...HEAD` was checked again and still contains only the same added 113-line module. HEAD and the audited source hash stayed unchanged.

SHA-256 inputs (paths relative to this worktree except the design draft):

| Input | SHA-256 |
|---|---|
| `KAM/Planetary/Newtonian/Barycentric.lean` | `28bf40ed803647f6301e236aa410fa626e2e0253e8c7ffa760256731649388c8` |
| `blueprint-P/parts/p6-newtonian-models.tex` | `b6885887ba6dfd181e79925cb4584b4b5590d0debc3bc205a2c49aa86b634899` |
| `docs/tracks/P/design/KEPLER-LEAN-DESIGN.md` | `ef91c316d0127ef9884c602810d58b816501524ed75e7d2923c0e92f736dfdf5` |
| `/root/code/KAM-inp-design-kep/.drafts/design/KeplerSignaturesP.lean` | `d9903304231afac0841cf0456d90c3dec04b2eb9e1a9752a9d4f9f9b7164d9c8` |
| `docs/tracks/P/statement.md` | `06d876320d40f7ae0cb5cdbe7e5b08a00b431125630079a2b3d3abcaac2e0b66` |
| `KAM/Frozen/Planetary/Defs/ActualMasses.lean` | `ddf2eaebbcbe5af8923f2df1662c791a2fa6c5b6ea6c6aa4d389582988b960fc` |
| `KAM/Frozen/Planetary/Defs/BarycentricPositions.lean` | `f6e65bcca58b0293604c06397e62b3c9709bce036138dd82a5a89343e52b1833` |
| `KAM/Frozen/Planetary/Defs/BarycentricVelocities.lean` | `34a12290bff2365e791648ab86f074401956aa95c07e54884058e9fce2da1deb` |
| `KAM/Frozen/Planetary/Defs/BodyVector.lean` | `95ba8e91c4aaa15aea50f32aa99cd047a794b1cfcbd4193cf4f4ed217a113c5e` |
| `KAM/Frozen/Planetary/Defs/PlaneLength.lean` | `b276e6a53172b5388f8c292f1b9f98b9cdc37b818c24b06585b4d123a396add6` |
| `KAM/Frozen/Planetary/Defs/PlaneSq.lean` | `d1328ceeca7d91bfaec0c7b3a869c0ca4d6714017f537c76e3c97019149e2082` |

## Declaration ledger

All declarations below have namespace `KAM.Planetary`; line numbers refer to `Barycentric.lean` at frozen-v1. Every signature matches the corresponding design-draft signature (lines 152–172) after whitespace removal, and was independently elaborated as a fresh `example` using the actual theorem. Public declarations added: exactly these nine theorems; no others.

| Node | Lean declaration / line | Verdict | Reason |
|---|---|---|---|
| bary-algebra (a) | `barycentricPositions_succ_sub_zero`, 37 | PASS | Exact `Qᵢ − Q₀ = qᵢ`, planet indexed by `i.succ`; no sign premise required. |
| bary-algebra (a) | `barycentricPositions_succ_sub_succ`, 41 | PASS | Exact ordered difference `Qⱼ − Qᵢ = qⱼ − qᵢ`; no sign or distinctness premise required. |
| bary-algebra (a) | `barycentricPositions_zero`, 46 | PASS | Negative Sun translation, denominator `m0 + μ * ∑ i, m i`, and weighted numerator agree literally. |
| bary-algebra (b) | `barycentricVelocities_zero`, 49 | PASS | Exact `−μ / m0` times the unweighted momentum sum. |
| bary-algebra (b) | `barycentricVelocities_succ`, 52 | PASS | Exact barycentric planet velocity `(1 / m i) • bodyVector p i`; no extra heliocentric correction. |
| bary-algebra (b) | `barycentricVelocities_succ_sub_zero`, 56 | PASS | Correct positive correction `+(μ / m0) • ∑ j, bodyVector p j`. Retained `hm0 : m0 ≠ 0` is implied by source positivity and is redundant in this proof. |
| bary-algebra (c) | `sum_actualMasses_smul_barycentricPositions`, 62 | PASS | Exact mass array `(m0, μmᵢ)` and zero weighted position sum; source positivity/nonnegativity retained. |
| bary-algebra (c) | `sum_actualMasses_smul_barycentricVelocities`, 79 | PASS | Exact zero total momentum with source mass positivity. Valid for arbitrary real μ, a strengthening of μ ≥ 0. |
| bary-algebra (d) | `planeLength_barycentricPositions_zero_le`, 91 | PASS | Exact bound `μ / m0 * ∑ i, m i * planeLength (bodyVector q i)`; no dimension or norm-conversion factor introduced. |

Blueprint anchor: `blueprint-P/parts/p6-newtonian-models.tex:138–153`, “Algebra of the barycentric maps.” Its standing assumptions at line 19 include “n ≥ 1, G,m₀ > 0, mᵢ > 0 … μ,ε ≥ 0 unless said otherwise.” The length equalities stated as consequences in (a) follow immediately by applying the same `planeLength` to the proved vector equalities; separate named length lemmas are unnecessary. All nine Lean statements allow n = 0 where well typed, a valid strengthening (planet-indexed assertions then have no inhabitants).

## Proof and totality review

The two difference proofs cancel the identical Sun translation. They remain identities for the frozen total functions even when the total mass denominator is zero; neither proof cancels that denominator. The Sun-entry and planet-velocity lemmas are literal projections of `Fin.cons`. In the velocity difference, subtraction of `(-μ / m0) • P` becomes addition of `(μ / m0) • P`; no inverse cancellation is used. Thus D5 genuinely enlarges the algebraic domain and agrees with the original physical formulas everywhere the physical denominators are nonzero. It does not assert physical reconstruction at zero mass.

The weighted-position proof establishes `m0 + μ * ∑ i, m i ≠ 0` at lines 64–65 before `field_simp`. After splitting off the Sun, its scalar coefficient is

`m0 * (-μ / D) + μ * (∑ i, m i) * (-μ / D) + μ = 0`, with `D = m0 + μ * ∑ i, m i`.

This is `D * (-μ / D) + μ = 0` under that nonzero-denominator fact. The `module` tactic only rearranges scalar multiplication and addition. The weighted-velocity proof cancels `m0` using `hm0.ne'` and each `m i` using `(hm i).ne'`; it never cancels μ. Hence μ = 0 causes no exceptional branch and both sum identities remain valid there.

For (d), the frozen physical length is `sqrt(∑ k, v k ^ 2)`, whereas the ambient Pi norm is the max norm. The proof uses the physical-length triangle inequality and `planeLength (c • v) = |c| * planeLength v`, removes absolute values using mass positivity and μ ≥ 0, and uses `0 < m0 ≤ D` to compare `μ / D ≤ μ / m0`. Its multiplier sum is nonnegative. The exact coefficient is preserved.

A second refutation pass checked reversed pair order, actual-versus-weight masses, weighted-versus-unweighted momentum sums, n = 0, μ = 0, zero individual/total denominators in the unconditional identities, and the sign needed in the final bound. No counterexample or missing premise survived. No conclusion-shaped hypotheses, hard-step assumptions, bundled proof obligations, changed carriers, or hidden constant choices occur.

## Definition classification and imports

New `def` / `abbrev` / `structure`: **zero**. No fallback object or selected witness is introduced.

| Existing frozen definition used | Classification / meaning |
|---|---|
| `actualMasses` | Literal Sun mass followed by `μ * m i`; intended on the whole carrier. |
| `bodyVector` | Cartesian block extraction using `finProdFinEquiv`; intended on the whole carrier. |
| `barycentricPositions` | Common totalized Sun translation followed by translation plus each heliocentric position. Physical interpretation requires nonzero total mass; theorems requiring its cancellation prove positivity. |
| `barycentricVelocities` | Totalized Sun and planet division formulas. Physical interpretation requires nonzero masses; totality is used only for algebraic projection/difference identities outside that region. |
| `planeSq`, `planeLength` | Sum of Cartesian squares and its nonnegative square root; physical Euclidean length on the full planar carrier. |

Direct imports (lines 8–13): Mathlib, `KAM.Kepler.Plane`, and the four frozen definition modules listed in the handoff. Recursive inspection of all 41 reachable project modules found **no** provider or frozen theorem module. The axiom checks below also exclude transitive reliance on a draft proof.

## Verification evidence

All Lean activity initiated by this audit was sequential, with `LEAN_NUM_THREADS=1` and `nice -n 5`. The targeted build used the prescribed compile gate. No clean, cache fetch, dependency update, heartbeat override, or whole-library rebuild was requested. “9087 jobs” below is Lake's targeted build summary, not a claim of 9087 freshly compiled files.

1. Targeted build:

```text
env LEAN_NUM_THREADS=1 /mnt/HC_Volume_106379410/orchestrator-tools/inp_lake_build.sh /root/code/KAM-inp-p62 KAM.Planetary.Newtonian.Barycentric
[inp-gate] slot 1 acquired 00:30:28 for KAM.Planetary.Newtonian.Barycentric
Build completed successfully (9087 jobs).
exit 0
```

2. Signature and axiom probe:

An untracked `.lake/abi-scratch/P62Audit.lean` imported the helper module, reproduced each design signature as a fresh `example`, and applied its matching theorem with all explicit arguments in order. A Python comparison also verified all nine signatures against the external design draft, ignoring only whitespace. Probe SHA-256: `fa6069f2c309276e371c12d6e640979225e8b3e11226115a6c084be6a2b5e555`.

```text
env LEAN_NUM_THREADS=1 nice -n 5 lake env lean .lake/abi-scratch/P62Audit.lean
'KAM.Planetary.barycentricPositions_succ_sub_zero' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Planetary.barycentricPositions_succ_sub_succ' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Planetary.barycentricPositions_zero' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Planetary.barycentricVelocities_zero' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Planetary.barycentricVelocities_succ' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Planetary.barycentricVelocities_succ_sub_zero' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Planetary.sum_actualMasses_smul_barycentricPositions' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Planetary.sum_actualMasses_smul_barycentricVelocities' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Planetary.planeLength_barycentricPositions_zero_le' depends on axioms: [propext, Classical.choice, Quot.sound]
exit 0
```

3. Kernel replay, one invocation for the only new lemma module:

```text
env LEAN_NUM_THREADS=1 nice -n 5 lake env leanchecker --verbose KAM.Planetary.Newtonian.Barycentric
replaying KAM.Planetary.Newtonian.Barycentric
exit 0
```

4. Source lint:

```text
env LEAN_NUM_THREADS=1 nice -n 5 sh scripts/lint_sources.sh
KAM.lean is out of date; run scripts/gen_root_imports.py
check_lean_modules: PASS (264 Lean files, 0 comparator configurations)
FROZEN-ANCHOR GUARD OK
ABI HASHES OK (144 frozen declarations)
exit 1
```

The sole failure is the expected generated-root notice allowed by the audit brief. All remaining lint checks pass; no generated file was regenerated.

5. Static checks: `git diff --check inp...HEAD` exited 0 with no output. `git diff inp...HEAD -- KAM/Frozen manifest KAM.lean README.md` produced no output. The added module has copyright, `module`, public imports, a module docstring, `public section`, and 113 total lines (below 1500). A token sweep found no `sorry`, `admit`, `axiom`, `unsafe`, `opaque`, `EuclideanSpace`, or `set_option` in the new file. No new definition needs `@[expose]`.

## Findings, deviations, and limits

No blocking findings, suspected pinned-source errata, or suspected defects in the audited blueprint lemma were found. D5's sign-condition drops are the documented deviations and are genuine strengthenings. The additional arbitrary-real-μ momentum identity and n = 0 coverage also strengthen the blueprint.

Nonblocking note: `barycentricVelocities_succ_sub_zero` keeps an unused `hm0 : m0 ≠ 0` (line 56), as required by the fixed design signature. No repair is requested. The generated-root lint exception is left to the orchestrator, as authorized by the brief.

This audit establishes the nine helper statements, their correspondence to bary-algebra, and their checked proofs. It does not audit the downstream reconstruction, ODE, KAM, or measure proofs, does not independently re-audit the source literature or all existing geometry lemmas, and makes no headline closure claim. The stale Phase-0 approval language in the historical track statement is superseded by D20/D25 and was not treated as current authority.

Only this report was added as an audit deliverable. Scratch probe and audit logs were removed after recording the evidence. No production source, frozen declaration, manifest, generated file, or Git state was changed by this audit.
