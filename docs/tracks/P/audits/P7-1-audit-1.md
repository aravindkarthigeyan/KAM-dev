# P7-1 independent audit 1

Verdict: **PASS WITH NOTES** for the P7-1 infrastructure package. No frozen anchor is proved or sealed by this package; per-anchor seal readiness and frozen/provider type-and-seal probes are therefore **not applicable**. The six public theorem contracts pass. No blocking correctness finding.

Audited worktree: `/root/code/KAM-inp-p71`. HEAD: `a056574fc707d5b9a783b4def1d65537ed49848a`. Observed `inp`: `8de675fd1a19c7d7753f0e3640edaeb865d792e1`. Comparison: `git diff inp...HEAD` (merge-base comparison as requested). It adds only `KAM/Planetary/Poincare/Chart.lean`, 278 physical lines. The handoff was already untracked on arrival. Only this report was added outside temporary audit scratch.

Read: AGENTS.md, docs/PLAN.md, docs/DECISIONS.md, `/root/code/KAM-inp/.drafts/briefs/inp-audit-package.md`, the P7-1 handoff and its AUDIT FOCUS, the relevant design sections and exact signatures in `docs/tracks/P/design/KEPLER-LEAN-DESIGN.md`, `blueprint-P/parts/p7-kepler-poincare.tex`, and `docs/tracks/P/statement.md`. Also inspected the imported Kepler equation/energy infrastructure and relevant frozen planetary definition bodies. No frozen theorem is a target or dependency here. The user's exact output path overrides the generic brief's main-worktree destination.

## Declaration inventory and fidelity

All declarations below have namespace `KAM.Planetary`; locators refer to `KAM/Planetary/Poincare/Chart.lean`. All 12 public declaration signatures match the design appendix after whitespace removal. All six definition bodies also match after whitespace removal. Six fresh anonymous declarations copied from the design theorem signatures elaborated with direct applications of the corresponding exports, with explicit arguments in the designed order.

| Blueprint node | Declaration (line) | Verdict | Reason / note |
|---|---|---|---|
| poincare-def | poincareGamma (34) | PASS | Exactly `(ξ²+η²)/2`, with positions `(λ,ξ)` and momenta `(Λ,η)`. |
| poincare-def | poincareK (35) | PASS | Exactly `1−Γ/Λ`. |
| poincare-def | poincareV (37) | PASS | Exactly the positive-root eccentricity vector formula. |
| poincare-def | poincareF (40) | PASS | Uses the actual regular Kepler solution at `(λ,v)`. Domain guard follows from facts. |
| poincare-def | poincare (43) | PASS | Both q and p match blueprint lines 122–124, including mass/strength factors, quarter-turn signs, and denominator `Λ J`. |
| poincare-def | poincareDom (53) | PASS | Exactly `Λ>0 ∧ Γ<Λ`, with no exclusion of circular points. |
| poincare-def | isOpen_poincareDom (70) | PASS | Unconditional openness of this domain. |
| o-facts | poincare_facts (96) | PASS WITH NOTES | Positivity, range, radicand, squared length and Jacobian positivity as designed; quantitative Jacobian lower bound is supplied by the imported `keplerJac_ge`, rather than repeated in this conjunction. See below. |
| o-facts | poincare_facts_polar (120) | PASS | Correct polar vector and dot-product identities for every F. Positive radius and coordinate equations are representation data, not assumed chart conclusions. |
| poincare (a) | analyticOnNhd_poincareF (183) | PASS | Joint real analyticity on the whole open domain, including ξ=η=0. |
| poincare (a) | analyticOnNhd_poincare (212) | PASS | Exactly the designed positive-mass/strength statement on the full domain. No Γ>0 restriction. |
| poincare (a) | poincare_periodic (247) | PASS | Arbitrary integer shifts `λ ↦ λ+2πk`; stronger periodicity presentation than the blueprint's single-period equation. |

The 16 private theorems were also inspected: finite-coordinate identities, vector components, radicand positivity, squared-length identity, unit length of the polar direction, coordinate analyticity, analytic closure under square root/quarter-turn/trigonometric composition, and integer trigonometric periodicity. They introduce no extra data definitions, hidden assumptions, or proof escapes.

## Definitions and whole-carrier behavior

| New definition | Classification on its whole Lean carrier |
|---|---|
| poincareGamma | Polynomial scalar on every phase point; intended globally. Nonnegative without any domain premise. |
| poincareK | Literal rational formula everywhere. Lean's total division extends it at Λ=0; physical interpretation is restricted to the domain. |
| poincareV | Literal square-root/rational formula everywhere. Real.sqrt totalizes nonpositive radicands; its chart radicand is proved strictly positive, not merely nonnegative. |
| poincareF | Composition with existing `keplerLong`. That dependency explicitly returns 0 when `planeLength v ≥ 1` (`KAM/Kepler/Equation.lean`). Its genuine unique-solution branch is guaranteed on poincareDom by poincare_facts. |
| poincare | Literal algebraic q,p formula, totalized at zero denominators. Every variable denominator required for analyticity is proved nonzero on the domain. The fixed q-prefactor denominator is a real constant; it is nonzero under the advertised mass/strength assumptions. |
| poincareDom | Exact geometric domain predicate on all of Phase 2; not a bundled field carrying any analytic or dynamical conclusion. |

No junk value is used to establish a chart conclusion. Analyticity is local at valid domain points, not a claim that the total extension is globally analytic. The periodicity proof proves length(v)<1 before invoking Kepler uniqueness, and it tracks Γ,k,v and J under the shift. Circular points have Λ>0, Γ=0, radicand=1/Λ>0, k=1 and v=0; they use the genuine solution branch F=λ. This agrees with the frozen secular formulas at κ=1. The formal product-chart/D25 identification belongs to subsequent packages and is not asserted here.

## Audit-focus notes

1. **Full o-facts versus API packaging.** Blueprint line 132 says `J≥1−|v|>0`, `|v|=sqrt(1−k²)`, and `Γ=Λ−C` with `C=Λk`. The first bound is already the unrestricted imported theorem `KAM.Kepler.keplerJac_ge`; strict positivity of `1−|v|` follows from the new length bound. The length identity follows by unfolding planeLength and rewriting the new planeSq identity. The Γ identity follows from the definition of k and Λ≠0. All three combinations were independently elaborated in the scratch probe. Thus this is a packaging note, not an unpaid analytic estimate or a weakened result being substituted for the blueprint. The polar theorem supplies the dot identity for any supplied polar representation. It does not construct a global perihelion-angle branch, and none is needed for this package. Recovering ρ=sqrt(2Γ) from its Γ=ρ²/2 and ρ>0 is elementary; no extra geometric premise is introduced.
2. **Unused hm/hκ.** The warnings at lines 212 and 247 are real. Analyticity of a fixed constant multiple is valid even when that constant is totalized to zero. Periodicity also does not need nonzero m or κ. Keeping the designed positive hypotheses preserves the intended physical contract; no changed statement or altered coefficient is hidden here. Neither theorem asserts symplecticity, invertibility, physical elements, or a physical orbit at zero parameters.
3. **Scope.** Only part (a) of poincare is delivered. Symplecticity, bijectivity, elements, means, complex extension and product/D25 bridges remain outside P7-1, as the design's package split specifies. Passing this audit does not close those nodes or any frozen planetary headline.

## Reproduced checks

Commands were run in `/root/code/KAM-inp-p71`. Lean-bearing checks were serialized, with `LEAN_NUM_THREADS=1` and niceness 5. The initial lint run was paused before its ABI Lean stage and terminated; the completed lint below was rerun after the targeted build, with the specified environment and niceness. No concurrent audit-owned Lean check was launched. No heartbeat, recursion-depth or synthesis override was used. No dependency source or package cache was edited.

### Targeted build

```sh
LEAN_NUM_THREADS=1 /mnt/HC_Volume_106379410/orchestrator-tools/inp_lake_build.sh /root/code/KAM-inp-p71 KAM.Planetary.Poincare.Chart
```

The gate invokes `nice -n 5 lake build KAM.Planetary.Poincare.Chart`.

```text
[inp-gate] slot 1 acquired 00:31:28 for KAM.Planetary.Poincare.Chart
⚠ [9093/9094] Replayed KAM.Kepler.Energy
⚠ [9094/9094] Replayed KAM.Planetary.Poincare.Chart
Build completed successfully (9094 jobs).
```

Exit 0. The displayed count is Lake's dependency/replay count; this did not request a library-wide rebuild. Replayed warnings: unused hm/hκ in Energy:106 and Chart:212,247. The warning text recommends renaming/removing unused bindings; no warning suppression was added.

### Lint

```sh
LEAN_NUM_THREADS=1 nice -n 5 sh scripts/lint_sources.sh
```

Complete output:

```text
KAM.lean is out of date; run scripts/gen_root_imports.py
check_lean_modules: PASS (264 Lean files, 0 comparator configurations)
FROZEN-ANCHOR GUARD OK
ABI HASHES OK (144 frozen declarations)
```

Exit 1 solely for the permitted stale-root-import exception. No generated file was regenerated or edited.

### Exact signatures, blueprint corollaries and axioms

```sh
LEAN_NUM_THREADS=1 nice -n 5 lake env lean .lake/abi-scratch/P71Audit.lean
```

Exit 0. The probe contained six design-signature anonymous declarations with direct export applications, six `#print axioms` commands, and the three o-facts combinations described above. Exact axiom output:

```text
'KAM.Planetary.isOpen_poincareDom' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Planetary.poincare_facts' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Planetary.poincare_facts_polar' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Planetary.analyticOnNhd_poincareF' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Planetary.analyticOnNhd_poincare' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Planetary.poincare_periodic' depends on axioms: [propext, Classical.choice, Quot.sound]
```

The probe's final arithmetic proof produced only unnecessary-sequencing/unused-tactic linter warnings for `<;> ring`; no elaboration error. No sorryAx or custom axiom occurs in any public theorem's transitive axiom set.

### Kernel replay

```sh
LEAN_NUM_THREADS=1 nice -n 5 lake env leanchecker --verbose KAM.Planetary.Poincare.Chart
```

Exact output:

```text
replaying KAM.Planetary.Poincare.Chart
```

Exit 0. This is the sole new lemma module; there is no provider module to replay. The command was one invocation, with no extra parallel Lean process.

### Static integrity

```sh
git diff inp...HEAD -- KAM/Frozen manifest KAM.lean README.md
git diff --check inp...HEAD
```

Both exited 0 with empty output. The production import closure (48 local KAM modules) contains no provider import and no frozen theorem import. The new file has the copyright, module header, public imports, module docstring and exposed public noncomputable section. It contains no forbidden proof tokens, resource overrides or EuclideanSpace. Six public definitions and six public theorems; 16 private theorems; no new abbrev or structure. Actual file size is 278 lines, safely below 1500 (the handoff's 276 is a harmless count discrepancy).

## Errata, deviations and limits

No new suspected pinned-source defect, frozen-statement defect, blueprint contradiction or introduced mathematical deviation was found. The audit checked local blueprint/design fidelity and frozen definition compatibility, not a fresh historical-PDF transcription of Fej04r, Fej07e or LP17. The existing source-gap discussion in blueprint-P Part 7 remains applicable: this explicit analyticity proof is not an independent verification of every claim in those sources.

The only notes are the API packaging of elementary o-facts consequences, unused fixed-parameter hypotheses, and the expected generated-root lint exception. No proof or statement correction is requested. Temporary audit probe removed after checks. No commit, merge, seal, generated-root change or ledger edit was performed.
