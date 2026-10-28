# KEP-9 independent audit 1

Date: 2026-10-28 UTC. Marker: `maud-kep9-1`.

**Verdict: PASS WITH NOTES** for KEP-9 infrastructure. All new public declarations pass statement, definition and proof checks. Targeted build, exact-design-type probes, standard-axiom checks and kernel replay pass. The notes are the retained unused L assumptions and the brief-permitted generated-root lint mismatch. No correctness blocker or suspected source erratum was found. Per-frozen-anchor seal readiness is N/A: this package proves no frozen anchor.

## Scope and frozen inputs

Focused tier-2, independent, refute-first audit of `bpI:p7:orbit-maps-e`, as requested by the KEP-9 handoff. The permission envelope is report-only: no implementation, frozen, manifest, generated-file or Git-state edits. Temporary probes are confined to `.lake/abi-scratch/` and removed at closeout. No delegation. The user's exact output destination in this worktree overrides the generic brief's main-worktree destination.

HEAD: `5152a6010a26ec9d5f028c3d9acde844d3642da4`. Initial `inp`: `7fc4c2703b956df6a025f09d1f03ff1a954529fb`; merge base: `7e3da0797677b012a9cc4c8312ad70b85716ba0b`. `git diff inp...HEAD` contains exactly one added file, `KAM/Kepler/OrbitComplex.lean`, 218 lines. The shared `inp` ref advanced during the audit (observed `47df40ff1faae18143899dbf43220f9f0f46e416`); the merge base and package diff remained identical. Reproduce the package snapshot with `git diff 7e3da0797677b012a9cc4c8312ad70b85716ba0b 5152a6010a26ec9d5f028c3d9acde844d3642da4`.

| Input | SHA-256 |
|---|---|
| `KAM/Kepler/OrbitComplex.lean` | `e74d41cee4e71aaa56dd0004fd8cf765822a5f20d9e81e0b43de49345bcada2e` |
| `docs/tracks/P/design/KEPLER-LEAN-DESIGN.md` | `b8d68de31ed819590a9f6ab1ad23ddc4671f1f1e62b9188a742388733fd8f719` |
| `blueprint-I/parts/p7-delaunay.tex` | `a3f650f5c2982ea6e5545efd4294c086103439908cfd2683ec3a836923a6521d` |
| `docs/tracks/P/audits/KEP-9-handoff.md` | `f16577e39e873f3fd852ffb5934b7d20f665d8f801c850050b7415a70a549729` |
| `KAM/Kepler/KeplerTube.lean` | `e642052ba674d39cfb9491c5e3baf1419c4ad75d591227d7834a95b341823202` |
| `KAM/Kepler/Orbit.lean` | `90fe1d7bf47471cf8b550d5b5ab2d53b54280cd1a69183dae21ab4f01f7db839` |
| `KAM/Kepler/Basic.lean` | `397d783d5ed1f99e1b4aba8d282a9789b3218c20672d6bb9a664d95efb0baa7e` |
| `KAM/Kepler/EquationComplex.lean` | `8a8079d7d7ddbd847ce24125ce2b7f88866f2c625d42278c00dd96b0cdf34542` |

Read the repository rules, PLAN, DECISIONS, package brief and handoff, design §2.2, §7 KEP-9, §7.1 and Appendix A:1228–1261, blueprint-I Part 7:158–184, track statements, frozen `Phase` body, and the relevant imported orbit, rotation, complexification, tube and anomaly definitions/proofs. The node is marked “ours” in the blueprint; no external PDF theorem is being certified. No frozen theorem is a target of this package. Frozen/provider equality and seal-body probes, and per-anchor seal readiness, are **N/A**. This audit does not close any track I/N/P headline.

## Declaration ledger

All names below are under `KAM.Kepler`; all lines refer to the pinned HEAD.

| Node | Declaration, line | Verdict | Reason |
|---|---|---|---|
| orbit-maps | `orbitMapC`, 37 | PASS | Exact designed five-coordinate formula, rotation, signs and denominators. |
| orbit-maps-e | `orbitDomC`, 48 | PASS | Exact tube pullback and nonzero L; g and k unrestricted complex coordinates. |
| orbit-maps-e helper | `OrbitC.denom_ne_zero`, 59 | PASS | Derives nonvanishing from the KEP-4 quantitative bound and θ<1. |
| orbit-maps-e helper | `OrbitC.differentiableOn_u`, 70 | PASS | Restricts actual tube holomorphy through the linear coordinate projection. |
| analytic closure helper | `OrbitC.differentiableOn_div`, 77 | PASS | Generic quotient lemma; derivative and nonzero-denominator premises explicitly supply its inputs. |
| analytic closure helper | `OrbitC.differentiableOn_vec2`, 84 | PASS | Generic coordinatewise differentiation; arbitrary normed complex source. |
| orbit-maps-e | `orbitMapC_differentiableOn`, 99 | PASS | Exact design statement, no eccentricity-zero exclusion or k constraint. |
| orbit-maps-e | `orbitMapC_periodic`, 143 | PASS | Exact design statement: both 2π shifts, using anomaly shift and trigonometric periodicity. |
| real-form helper | private `orbitMapK`, 165 | PASS | Real five-parameter formula with free k. |
| real-form helper | private `orbitMapK_sqrt`, 170 | PASS | Definitional equality with actual orbitMapR. |
| real-form helper | private `orbitMapC_cast`, 174 | PASS | Componentwise cast identity; stronger than physical-domain equality since it needs no nonzero L. |
| orbit-maps-e | `orbitMapC_real`, 186 | PASS | Exact C6 contract, arbitrary real k and nonzero real L. |
| orbit-maps-e | `orbitMapC_ofReal`, 194 | PASS | Exact principal-real-factor agreement with orbitMapR. |
| orbit-maps-e | `orbitDomC_mem_ofReal`, 208 | PASS | Exact real-domain inclusion; proves nonzero complex L from positive real L. |

The two public definition bodies match Appendix A after whitespace normalization. A transient probe copies each of the five design theorem types verbatim and discharges it with the implemented theorem; it also copies both design definitions and checks their equality to the implemented definitions by `rfl`.

## Binder and assumption audit

Source locator S is blueprint-I:170–183, with exact exported signatures D at design:1242–1261. The following table records every binder occurrence for the five node theorems. Numeric parameters and point data are SOURCE inputs rather than logical assumptions; their Pi/Fin carriers match D. No standing bundle, implicit result instance, constant choice, or additional hypothesis is hidden.

| Theorem | Binder | Bin | Authority |
|---|---|---|---|
| `differentiableOn` | `e₁` | SOURCE | S; D |
| `differentiableOn` | `h0` | SOURCE | S; D |
| `differentiableOn` | `h1` | SOURCE | S; D |
| `periodic` | `e₁` | SOURCE | S; D |
| `periodic` | `h0` | SOURCE | S; D |
| `periodic` | `h1` | SOURCE | S; D |
| `periodic` | `x` | SOURCE | S; D |
| `periodic` | `hx` | SOURCE | S; D |
| `real` | `e₁` | SOURCE | S; D |
| `real` | `h0` | SOURCE | S; D |
| `real` | `h1` | SOURCE | S; D |
| `real` | `x` | SOURCE | S; D |
| `real` | `hL` | SOURCE | S; D |
| `real` | `he` | SOURCE | S; D |
| `ofReal` | `e₁` | SOURCE | S; D |
| `ofReal` | `h0` | SOURCE | S; D |
| `ofReal` | `h1` | SOURCE | S; D |
| `ofReal` | `ℓ` | SOURCE | S; D |
| `ofReal` | `g` | SOURCE | S; D |
| `ofReal` | `L` | SOURCE | S; D |
| `ofReal` | `e` | SOURCE | S; D |
| `ofReal` | `hL` | SOURCE | S; D |
| `ofReal` | `he` | SOURCE | S; D |
| `mem_ofReal` | `e₁` | SOURCE | S; D |
| `mem_ofReal` | `h0` | SOURCE | S; D |
| `mem_ofReal` | `h1` | SOURCE | S; D |
| `mem_ofReal` | `ℓ` | SOURCE | S; D |
| `mem_ofReal` | `g` | SOURCE | S; D |
| `mem_ofReal` | `L` | SOURCE | S; D |
| `mem_ofReal` | `e` | SOURCE | S; D |
| `mem_ofReal` | `hL` | SOURCE | S; D |
| `mem_ofReal` | `he` | SOURCE | S; D |

Totals for the node theorems: SOURCE 32, STANDING 0, TYPING 0, RULED 0, EXCESS 0. Universally quantified output index `i : Fin 2` in the reality conclusion is conclusion data, not an assumption.

For helpers: `denom_ne_zero` has SOURCE binders e₁,h0,h1,x,hx (5); `differentiableOn_u` has e₁,h0,h1 (3). Each generic closure helper has TYPING binders E, NormedAddCommGroup E, NormedSpace ℂ E (3), and SOURCE binders f,g,s,hf,hg (5); division additionally has SOURCE hg0 (1). The vector helper has no hg0. These are explicitly named generic internal proof tools, not replacements for the source node. Their closure premises are constructed from the coordinate derivatives and denominator proof inside the unconditional node theorem (99–141). None assumes the desired orbit-map conclusion.

The helper binders are also enumerated below; the closure source is the elementary differentiation rule explicitly stated in each helper, not a new assumption on the orbit map.

| Helper | Binder | Bin | Authority |
|---|---|---|---|
| `denom_ne_zero` | `e₁` | SOURCE | S; KEP-4 tube |
| `denom_ne_zero` | `h0` | SOURCE | S; KEP-4 tube |
| `denom_ne_zero` | `h1` | SOURCE | S; KEP-4 tube |
| `denom_ne_zero` | `x` | SOURCE | S; KEP-4 tube |
| `denom_ne_zero` | `hx` | SOURCE | S; KEP-4 tube |
| `differentiableOn_u` | `e₁` | SOURCE | S; KEP-4 tube |
| `differentiableOn_u` | `h0` | SOURCE | S; KEP-4 tube |
| `differentiableOn_u` | `h1` | SOURCE | S; KEP-4 tube |
| `differentiableOn_div` | `E` | TYPING | Complex differentiation carrier |
| `differentiableOn_div` | `NormedAddCommGroup E` | TYPING | Complex differentiation carrier |
| `differentiableOn_div` | `NormedSpace ℂ E` | TYPING | Complex differentiation carrier |
| `differentiableOn_div` | `f` | SOURCE | Explicit generic differentiation rule |
| `differentiableOn_div` | `g` | SOURCE | Explicit generic differentiation rule |
| `differentiableOn_div` | `s` | SOURCE | Explicit generic differentiation rule |
| `differentiableOn_div` | `hf` | SOURCE | Explicit generic differentiation rule |
| `differentiableOn_div` | `hg` | SOURCE | Explicit generic differentiation rule |
| `differentiableOn_div` | `hg0` | SOURCE | Explicit generic differentiation rule |
| `differentiableOn_vec2` | `E` | TYPING | Complex differentiation carrier |
| `differentiableOn_vec2` | `NormedAddCommGroup E` | TYPING | Complex differentiation carrier |
| `differentiableOn_vec2` | `NormedSpace ℂ E` | TYPING | Complex differentiation carrier |
| `differentiableOn_vec2` | `f` | SOURCE | Explicit generic differentiation rule |
| `differentiableOn_vec2` | `g` | SOURCE | Explicit generic differentiation rule |
| `differentiableOn_vec2` | `s` | SOURCE | Explicit generic differentiation rule |
| `differentiableOn_vec2` | `hf` | SOURCE | Explicit generic differentiation rule |
| `differentiableOn_vec2` | `hg` | SOURCE | Explicit generic differentiation rule |

Helper totals: SOURCE 19, TYPING 6, STANDING 0, RULED 0, EXCESS 0.

## Definition classification and adversarial checks

`orbitMapC` and `orbitDomC` are literal definitions, not characterization-defined witnesses. For each: BODY_MATCH OK; PUBLIC_CARRIER OK; WELL_DEFINEDNESS N/A_LITERAL; CHARACTERIZATION N/A_LITERAL; CHOICE_INDEPENDENCE N/A; DEFINITION_VERDICT PASS. The private `orbitMapK` is also a literal real algebraic formula with the same classifications. There are no new abbrevs, structures, choices, fallback branches, or premise packages.

The global function carrier is the exact approved total algebraic extension. Its physical/holomorphic domain is explicitly `orbitDomC`; Lean's total division outside L≠0 is not used to assert holomorphy there. The upstream `keplerSol` has an explicit zero fallback (EquationComplex:294–296), so this potential defect was checked rather than ignored: `EqC.existsUnique_keplerOp`, instantiated by `Tube.keplerData_tube`, proves unique existence throughout the tube; `keplerSol_spec` (EquationComplex:318–325) and `keplerEq_tube` supply its full equation and uniqueness. The fallback is inaccessible on every claimed source point. KEP-9 introduces no new off-source meaning or reliance on junk values.

Refutation passes:

- **Vanishing denominator:** OrbitComplex:61 quotes the actual bound `1 - keplerTheta e₁ ≤ ‖1 - e cos u‖`, and :62 provides θ<1. A zero denominator contradicts this bound. The outer L factor is separately nonzero by domain membership (:114).
- **Circular or signed eccentricity failure:** no division by e or square root occurs in the complex five-parameter formula; the tube includes e=0. Real casts accept |e|≤e₁, including both endpoints and negative e. The physical principal factor is introduced only in the real specialization.
- **Periodicity outside the domain:** the ℓ-shift remains in the tube by the first conjunct of `eccAnomC_periodic`; g-shift leaves the domain-defining coordinates fixed. Positive and negative iterates remain on the domain. Hence the designed two shift equalities express the actual periodicity on this domain.
- **“Real” only at principal k:** the private cast identity works for all real x₄; the public reality theorem does not assume a square-root relation.
- **Holomorphy only relative to a nonopen set:** the domain is open, being the pullback of `keplerTube` under x↦(x₀,x₃), intersected with x₂≠0. Thus complex DifferentiableOn has its intended holomorphic meaning.
- **Unused L assumptions:** `have _ := hL` at :190 and :198 merely retains the designed binders. Reality and cast equality are algebraically true even at totalized L=0, but no such point is claimed to be in the source domain. Positive L is actually used for domain membership at :214. No correctness finding survives this check.

No suspected blueprint/source defect, material deviation, or unresolved mathematical finding was established. The docstring at :97–98 describes the family of results; the single theorem at :99 asserts only holomorphy, with periodicity/reality separately exported as designed. Mass scaling, Delaunay chart symplecticity, the composed principal complex square root, later consumers, and global source-paper correctness are outside this package's assurance scope.

## Verification evidence

All Lean invocations are serialized and use `LEAN_NUM_THREADS=1`; no resource-budget overrides. Build command:

```sh
env LEAN_NUM_THREADS=1 /mnt/HC_Volume_106379410/orchestrator-tools/inp_lake_build.sh /root/code/KAM-inp-kep9 KAM.Kepler.OrbitComplex
```

Exit 0. Output: `[inp-gate] slot 1 acquired 01:50:33 for KAM.Kepler.OrbitComplex`; `Build completed successfully (9097 jobs).` Only replayed warnings were the inherited unused `hm`, `hκ` at Energy:106. Lake's count is its dependency/replay count, not a requested full rebuild. No library cleaning or package-cache mutation was requested.

```sh
sh scripts/lint_sources.sh
```

Exit 1 with complete diagnostic summary:

```text
KAM.lean is out of date; run scripts/gen_root_imports.py
check_lean_modules: PASS (325 Lean files, 0 comparator configurations)
FROZEN-ANCHOR GUARD OK
ABI HASHES OK (144 frozen declarations)
```

This is precisely the brief's permitted generated-root exception; there are no other lint failures. `git diff inp...HEAD -- KAM/Frozen manifest KAM.lean README.md` and `git diff --check inp...HEAD` both exit 0 with empty output. Forbidden-token/resource-override/EuclideanSpace search in OrbitComplex has no matches. The file has 218 total lines, with the required copyright, module header, public imports, module docstring and exposed public section. Direct imports are Mathlib, Basic, Orbit and KeplerTube; inspected project dependencies contain no provider or frozen theorem imports.

Probe reproducibility: extract each design command `theorem <name> ... := sorry` for the five node names, retain its entire binder/conclusion text as an `example`, and use `exact <name> h0 h1` followed by the remaining explicit binders (`hx`, or `hL he`) in original order. Extract both design `def` commands, rename to `audit_orbitMapC` and `audit_orbitDomC`, mark these copied definitions `noncomputable`, and check `example : audit_<name> = <name> := rfl`. The initial probe omitted the noncomputable annotation on the copied orbit-map definition and exited 1 with `lean.dependsOnNoncomputable`; all type examples and axiom queries already succeeded. The corrected probe is the authoritative run below. This was an auditor probe-setup correction, with no production change.

```sh
env LEAN_NUM_THREADS=1 nice -n 5 lake env lean .lake/abi-scratch/KEP9Audit.lean
```

Corrected probe exit 0. Exact type examples and both definitional-equality examples elaborate. The full axiom output was:

```text
'KAM.Kepler.OrbitC.denom_ne_zero' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.OrbitC.differentiableOn_u' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.OrbitC.differentiableOn_div' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.OrbitC.differentiableOn_vec2' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.orbitMapC_differentiableOn' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.orbitMapC_periodic' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.orbitMapC_real' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.orbitMapC_ofReal' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.orbitDomC_mem_ofReal' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.orbitMapC' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.orbitDomC' depends on axioms: [propext, Classical.choice, Quot.sound]
```

A recursive import census found 51 project modules and zero provider/frozen-theorem modules in the closure. No `sorryAx` or additional axiom occurs in any new public theorem.

```sh
env LEAN_NUM_THREADS=1 nice -n 5 lake env leanchecker --verbose KAM.Kepler.OrbitComplex > .lake/abi-scratch/KEP9-kernel.log 2>&1
```

Exit 0. Complete output:

```text
replaying KAM.Kepler.OrbitComplex
```

There is exactly one package module, so one module argument and one invocation satisfy the replay requirement. The inherited dependency modules were inspected at the relevant definitions/specifications and checked through axiom closure; this is not an independent full audit or kernel replay of every inherited proof.

## Closeout

All 14 new declarations are classified; all nine public theorem axioms checked; five exact source-contract theorem probes and two definition-equality probes passed; targeted build and kernel replay passed. Hygiene passes under the explicitly permitted root-import exception. Input hashes and HEAD were unchanged at closeout; final observed `inp` was `940d52106d99e004a836125dc0b78b231fa5c7fa` with the same comparison merge base and one-file diff. No pending mathematical finding or uncertainty remains within this bounded package audit. No owner ruling was inferred or changed. No implementation repair, source deviation, suspected pinned-source erratum, frozen edit, generated-file change, Git mutation, or external communication was performed.

Only this report was created as persistent audit output; the pre-existing untracked handoff was preserved. Temporary probe and kernel-log files were removed. Scope remains the five-parameter orbit-map infrastructure, not downstream analytic charts or track headline proof closure.
