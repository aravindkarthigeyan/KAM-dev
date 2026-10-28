# KEP-8 independent package audit 1

Date: 2026-10-28 UTC. Marker: `maud-kep8-1`.

**Overall verdict: PASS WITH NOTES.** All three mean-value results and the circular specializations satisfy the package contracts. The note is a repository lint failure inherited from `Orbit.lean`, in addition to the permitted generated-root mismatch; this report does not claim a clean repository lint. No mathematical defect was found in the package.

There is **no frozen theorem anchor or provider export in KEP-8**. Anchor-by-anchor seal readiness, provider/frozen-type equivalence, and frozen seal-body probes are therefore not applicable. The actual deliverables are infrastructure theorems in `KAM.Kepler`; none seals an I/N/P headline.

## Scope and authority

Worktree: `/root/code/KAM-inp-kep8`. Audited HEAD: `16a77ef5115b6d92855db2a3113b50c5ce31e5b4`. At inspection, `inp` was `370c0bac661297ae63552bb547c97bdf1b18cb0c`; the merge base was `06a8029e61b8d65d7a7b5c332c18bde68cad2ee6`.

The requested `git diff inp...HEAD` contains exactly one file: `KAM/Kepler/Means.lean`, 146 inserted lines. SHA256: `8e387b9d9b1a864982b6bd977bf659a81c0d04ff4747cde97b0705c9121f30c6`. The pre-existing untracked `docs/tracks/P/audits/KEP-8-handoff.md` was read and left unchanged.

Read the package brief at `/root/code/KAM-inp/.drafts/briefs/inp-audit-package.md`, `AGENTS.md`, `docs/PLAN.md`, `docs/DECISIONS.md`, the handoff's AUDIT FOCUS, the I/P statement conventions, and the relevant implementation dependencies. The explicit user instruction places this report in this package worktree and overrides the brief's generic main-worktree destination.

Binding comparisons:

- `docs/tracks/P/design/KEPLER-LEAN-DESIGN.md` §2.2, §7 KEP-8 row, §7.1 lines 514–517, and Appendix A lines 1259–1265.
- `blueprint-I/parts/p7-delaunay.tex:290` (`bpI:p7:means`), lines 298–300 (substitution and integrals), and lines 303–308 (`bpI:p7:circular`).
- `blueprint-P/parts/p7-kepler-poincare.tex:76` and line 88: downstream mass/strength means, with the unit-mass/unit-strength identities delegated to track I.
- Frozen `KAM.Planetary.planeSq` and `planeLength`: physical Euclidean squared length and length, rather than the ambient Pi max norm.

The three public mean theorem headers are **identical after whitespace normalization** to the design's embedded signatures, including implicit binders, explicit hypothesis order, integral carrier, normalizer and conclusion. Fresh-name copies of those exact signatures are also checked by the Lean probe described below.

## Declaration and node verdicts

All declaration names below are in `KAM.Kepler`; lines refer to `KAM/Kepler/Means.lean`.

| Node / obligation | Declaration | Line | Verdict | Reason |
| --- | --- | ---: | --- | --- |
| Elementary domain conversion (private) | `abs_lt_one_of` | 35 | PASS | Derives the inverse's `abs e < 1` guard from the source range `0 ≤ e < 1`. |
| Positive Jacobian (private) | `one_sub_mul_cos_pos'` | 38 | PASS | Derives `1 − e cos u > 0` for every real u from the same range. |
| Inverse continuity (private) | `continuous_eccAnom` | 43 | PASS | Uses the established derivative of the actual eccentric anomaly. |
| Inverse identity (private) | `eccAnom_kepler` | 47 | PASS | Uses `keplerLong_unique` with admissibility proved by `planeLength_eccVec`; no inverse property is assumed. |
| `stepI:p7:mv-cv`; additional public helper | `integral_comp_eccAnom` | 53 | PASS | Continuous test function; correct endpoints, orientation and Jacobian. No conclusion-shaped premise. |
| `bpI:p7:means`, inverse radius | `orbitMapR_mean_inv_radius` | 71 | PASS | Exact `(2π)⁻¹` average over `[0,2π]`, result `1 / L²`. |
| `bpI:p7:means`, squared speed | `orbitMapR_mean_speed_sq` | 92 | PASS | Exact physical `planeSq` of momentum for unit mass; result `1 / L²`. Direct integration of the speed formula is a valid alternative to the blueprint's virial calculation. |
| `bpI:p7:means`, radius | `orbitMapR_mean_radius` | 117 | PASS | Exact physical length average, result `L²(1 + e²/2)`. |
| `bpI:p7:circular`, means portion | The preceding three theorems at `e = 0` | 71, 92, 117 | PASS | Each admits `e = 0`; the probe explicitly derives the two `1 / L²` means and the radius mean `L²`. No limiting argument or noncircular premise is needed. |

The `e` parameterization is the design's intentional extension of the strictly noncircular Delaunay statement: arbitrary `g`, `L > 0`, and `0 ≤ e < 1`. It is stronger at the circular endpoint, as required. This audit covers only the means portion of the circular node; its other identities and the mass/strength dictionary belong to other packages.

## Change of variables and integrability

Set `f(u) = u − e sin u` and `D(u) = 1 − e cos u`. The private positivity lemma proves `D > 0`. The inherited `keplerPhi_strictMono` at `v = ![e,0]` proves that f is strictly increasing; a separate probe checks this specialization. `keplerLong_unique` proves `eccAnom (f u) e = u` in lines 47–49. The endpoint identities `f(0) = 0` and `f(2π) = 2π` are proved in lines 65–66.

At lines 58–64, the proof supplies the derivative of f, continuity of D, and continuity of `φ ∘ eccAnom` to Mathlib's `intervalIntegral.integral_comp_mul_deriv'`. The latter theorem needs continuity on the image interval, which follows from global continuity here; it does not require a separate monotonicity premise. Its integrand becomes `φ(u) D(u)` by the proved inverse identity. The use of symmetry gives precisely the blueprint's substitution formula.

For inverse radius and squared speed, `L > 0` and `D > 0` prove the denominator nonzero before establishing continuity and cancelling D. Thus Lean's total division cannot make a singular integral appear valid. The radius integrand is polynomial in cos u. Each integral-addition step has an explicit interval-integrability justification. Integration of constants, cos u and cos² u yields `2π`, zero and π, respectively; the displayed normalizer then gives the three required values.

## Definition classification and hypotheses

**No new `def`, `abbrev`, `structure`, or instance is introduced.** All eight declarations are theorems, four private and four public.

The inherited objects used by these proofs were checked for interpretation: `orbitMapR` rotates the explicit elliptical position/momentum formula and evaluates it at `eccAnom`; `eccAnom ℓ e` is `keplerLong ℓ ![e,0]`. `keplerLong` chooses the unique inverse when `planeLength v < 1`, with a zero fallback outside that domain. Every use here proves `abs e < 1`, hence `planeLength ![e,0] < 1`; no result depends on that fallback. Frozen `planeSq v = Σ k, v k²` and `planeLength v = sqrt (planeSq v)` have their intended physical meanings on the whole planar carrier.

The mean theorem premises are exactly `L > 0`, `0 ≤ e`, `e < 1`; the substitution helper also takes continuity of its arbitrary test function. No hard step is assumed as a field, instance or extra premise. The transitive project import closure has 49 KAM modules and contains no provider or frozen theorem module.

## Independently run checks

Lean checks were serialized. The targeted build used the prescribed compile gate, whose implementation invokes `nice -n 5 lake build` for the named module. The completed commands below use `LEAN_NUM_THREADS=1`; no heartbeat, recursion-depth or synthesis-budget override was used. No clean, update, cache download, package edit or library-wide target was requested.

1. Targeted build:

   ```text
   LEAN_NUM_THREADS=1 /mnt/HC_Volume_106379410/orchestrator-tools/inp_lake_build.sh /root/code/KAM-inp-kep8 KAM.Kepler.Means
   [inp-gate] slot 1 acquired 00:47:07 for KAM.Kepler.Means
   ⚠ [9093/9095] Replayed KAM.Kepler.Energy
   warning: KAM/Kepler/Energy.lean:106:35: Variable name `hm` is not explicitly referenced.
   warning: KAM/Kepler/Energy.lean:106:48: Variable name `hκ` is not explicitly referenced.
   Build completed successfully (9095 jobs).
   exit 0
   ```

   Only the substantive diagnostics are reproduced; Lean's accompanying unused-variable hints are omitted. Both warnings are inherited from Energy, outside the package diff. The job count includes dependency checks/replays and does not denote a requested full-library rebuild.

2. Exact-signature, circular-endpoint, monotonicity and axiom probe:

   ```text
   LEAN_NUM_THREADS=1 nice -n 5 lake env lean .lake/abi-scratch/KEP8Audit.lean
   'KAM.Kepler.integral_comp_eccAnom' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Kepler.orbitMapR_mean_inv_radius' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Kepler.orbitMapR_mean_speed_sq' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Kepler.orbitMapR_mean_radius' depends on axioms: [propext, Classical.choice, Quot.sound]
   exit 0
   ```

   The probe imports only `KAM.Kepler.Means`, copies the three complete design declarations under fresh names, and supplies bodies `by exact <original name> hL he0 he1`. Three additional examples instantiate `e = 0`, with the radius conclusion simplified to `L²`. Another example proves strict monotonicity of `u ↦ u − e sin u` from `keplerPhi_strictMono`. All four public theorems are covered by the displayed axiom inventory. An initial scratch-only attempt to simplify the monotonicity specialization directly failed with a function type mismatch; replacing it by an explicit pointwise function equality made the complete probe pass. No production change was needed.

3. Kernel replay:

   ```text
   LEAN_NUM_THREADS=1 nice -n 5 lake env leanchecker --verbose KAM.Kepler.Means
   replaying KAM.Kepler.Means
   exit 0
   ```

   One invocation, replaying the single new module, including its private lemmas. Imported packages are prerequisites, rather than additional newly audited modules.

4. Source lint:

   ```text
   LEAN_NUM_THREADS=1 nice -n 5 sh scripts/lint_sources.sh
   Lean lines over 100 characters:
   /root/code/KAM-inp-kep8/KAM/Kepler/Orbit.lean:36:103
   /root/code/KAM-inp-kep8/KAM/Kepler/Orbit.lean:38:107
   /root/code/KAM-inp-kep8/KAM/Kepler/Orbit.lean:57:102
   /root/code/KAM-inp-kep8/KAM/Kepler/Orbit.lean:199:105
   KAM.lean is out of date; run scripts/gen_root_imports.py
   check_lean_modules: PASS (270 Lean files, 0 comparator configurations)
   FROZEN-ANCHOR GUARD OK
   ABI HASHES OK (144 frozen declarations)
   exit 1
   ```

   This independently confirms both the inherited formatting failure and the allowed generated-root mismatch. Module-system, frozen-anchor and elaborated-ABI checks pass. No repository source was edited to make lint pass.

5. Static checks:

   ```text
   git diff --check inp...HEAD
   exit 0; no output
   git diff --exit-code inp...HEAD -- KAM/Frozen manifest KAM.lean README.md
   exit 0; no output
   git diff --check -- docs/tracks/P/audits/KEP-8-audit-1.md
   exit 0; no output
   git diff --no-index --check /dev/null /root/code/KAM-inp-kep8/docs/tracks/P/audits/KEP-8-audit-1.md
   exit 1; no output (new-file difference; no whitespace diagnostics)
   ```

   The no-index check covers this untracked report, which the ordinary path-limited diff does not inspect.

   A Python comparison of each mean theorem's header against the design Appendix A, with whitespace removed, returned `True` for all three names. The declaration inventory found four public and four private theorems and no new definitions. The import traversal returned `49 modules` and `Forbidden provider/theorem imports: []`. Source scanning found no `sorry`, `admit`, `axiom`, `unsafe`, `opaque`, `EuclideanSpace` or `set_option` token in Means. The module has 146 lines and zero lines over 100 characters, and includes copyright, `module`, public imports, a module docstring, and `@[expose] public noncomputable section`.

## Findings, errata, deviations and limits

The inherited lint finding is `KAM/Kepler/Orbit.lean:36,38,57,199`, whose lines have 103, 107, 102 and 105 characters. The quoted diagnostic is `Lean lines over 100 characters:`. This violates the repository's line-length lint and prevents the brief's full lint-pass condition, even after allowing the generated-root mismatch. `Orbit.lean` was byte-identical to `git show inp:KAM/Kepler/Orbit.lean` at the audit comparison; none of these lines is in the KEP-8 diff. Resolution belongs to integration/the file owner. The new Means file introduces no lint finding.

No suspected mathematical blueprint or pinned-source defect was found in the scoped mean-value statements. No mathematical deviation was introduced. The speed-square proof's direct integration is a proof-route choice with the identical statement. This report does not independently re-audit all preceding Kepler packages, prove arbitrary-starting-point averages, implement mass scaling, or certify any frozen headline seal.

Only this report was added by the auditor; scratch probes were confined to `.lake/abi-scratch/` and removed after use. No tracked Lean source, frozen file, manifest, generated root or README was edited; no state-changing git operation was run.
