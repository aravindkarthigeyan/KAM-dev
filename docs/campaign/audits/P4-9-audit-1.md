# P4-9 independent package audit 1

Overall verdict: **FAIL** under the package audit's strict node-coverage rule. One **major** finding: `step:p4:rt-small` has a weaker exported conclusion than its blueprint/graph contract. The main `KAM.Head.real_torus` theorem itself **passes**: its signature is byte-identical to Appendix A, its six torus clauses and cover witnesses are proved, and its axioms are clean. This is a contract-coverage failure, not a refutation of that theorem.

Audited branch `k/p4-9`, HEAD `cb1db69556bcc0d4dd7c75c12488d162793f7882`, against `main` at `a7c2b201a5682652da9cf7b05df984d6d021282c`. The handoff's original prover commit is historical; this audit checked the actual merged HEAD. `git diff main...HEAD` changes only `KAM/Head/RealTorus.lean` (357 lines) and the generated import of that module in `KAM.lean`. The pre-existing untracked `P4-9-handoff.md` was left alone.

Inputs read: `AGENTS.md`, `docs/PLAN.md`, `docs/DECISIONS.md`, `AUDIT-PACKAGE.md`, `P4-9.md`, `P23-COMMON.md`, `PROVER-COMMON.md`, `P4-9-handoff.md`, Part 4 design §§0–5 and Appendix A §14, `DESIGN-P4-audit-1.md`, all eight package graph contracts (`DEPGRAPH.md:12110–12354`), the blueprint at `p4-measure.tex:1009–1069`, the complete new Lean module and its relevant predecessor/frozen-definition interfaces. No external source PDF was audited.

## Node inventory

All declarations below are in namespace `KAM.Head`, file `KAM/Head/RealTorus.lean`.

| Node | Lean declaration (line) | Verdict | Reason |
|---|---|---|---|
| `bp:p4:real-torus` | `real_torus` (311) | PASS | Exact Appendix A §14 signature, including all four numbered conclusions and range inclusion in the actual frozen `kamCover`. No extra premise or widened constant dependence. |
| `step:p4:rt-analytic` | `rt_analytic` (67) | PASS | Abstract holomorphic, primary, real torus gives real analyticity on all real points and the exact integer-translation identity. `normalize` supplies all premises at the selected torus (330, 341). |
| `step:p4:rt-small` | `rt_small_complex` (79), `rt_small` (109), `angleReal_add_int` (129); numerical support `rt_eta0_bounds` (292) | **FAIL** | Real angle derivative bound and periodicity are covered, but the required full complex displacement derivative estimate with coefficient `16 n η₀ / s` is absent from the exported conclusions. See F1. |
| `step:p4:rt-immersion` | `rt_immersion` (140) | PASS | The angle derivative bound forces the kernel of the full real derivative to vanish. The root supplies the bound from `rt_small`; differentiability is already established there. |
| `step:p4:rt-embedding` | `rt_embedding` (157) | PASS | All real points and integer shifts; exact implication `k θ′ = k θ + (m,0) → θ′ = θ + m`. Its displacement identity, periodicity, differentiability and derivative bound are all discharged at 342–344. Mathlib's convex mean-value inequality is the declared alternative proof. |
| `step:p4:rt-lagrangian` | `rt_lagrangian` (191), `dotProduct_mulVec_lagrange` (182) | PASS | Correct bilinear transpose, no conjugation. The root proves the full `lagrangian` prerequisites at 333–337 and transfers its zero matrix through the real derivative and frozen symplectic-form identity (346). |
| `step:p4:rt-ode` | `rt_ode` (223) | PASS | For every real initial angle and time, proves the actual `HasDerivAt` equation. Arbitrary open holomorphic Hamiltonian is a valid generalization; the root supplies H1 reality/holomorphy, domain membership, and invariance at 347–349. |
| `step:p4:rt-cover` | `rt_cover` (259), root assembly (331–351) | PASS | Strict action radius, full displacement bound, inverse-action membership and frequency identity, and all witnesses of the frozen cover. The helper takes already-proved torus and inverse identities; the root discharges these rather than assuming the package result. |

The abstract helper premises are intermediate predecessor conclusions, not additional source assumptions on `real_torus`. They are checked at their actual call sites. No helper replaces an unproved analytic step with a source-level hypothesis. No extra existence or uniformity claim is being inferred from this conditional `GValid` interface.

## Main statement and proof

The parameter order is the design order: implicit `n, τ, s₀, r₀, Lh, B, h, f, ε, γ, gc`, then `Data`, `Pert`, `GValid`, `SA`, and `ω ∈ OmegaGamma`. `Data` and `Pert` retain the approved standing premises. No boundary-layer premise, nonemptiness premise, new smallness threshold, or positivity of `Lh` is introduced. There are no new existential constants; `eta0` has exactly the inherited dependence on the fixed constants, ε and γ.

The torus predicate used at 339–349 is the frozen six-clause predicate: analyticity, primarity, injectivity modulo integer shifts, immersion, isotropy, and Hamilton's equations along the linear motion. The strict action bound and inverse-frequency identity at 318–324 are preserved. The cover proof at 281–283 supplies `realRestriction K`, `ω`, `γ`, and `I`; the action-neighbourhood witness is this same `I ∈ B` at every angle. All vector carriers use `Fin n → ℝ/ℂ`; vector and product norms are max norms and derivatives have their induced operator norms.

`GValid` is passed as a whole only to `normalize` (330). Its inherited `toPos` projection is also used for `rt_eta0_bounds` and `smallness` (332–333). There is no direct invocation of `g1a`, `g1b`, `g2`, or `g3`. Thus the handoff's “only through normalize” assertion is correct for substantive G-result use, with this explicit positivity qualification. `lagrangian` is called independently, with the required ε ≤ 1, domain, derivative boundedness and Diophantine premises proved. There is no frozen-theorem/provider import or shortcut.

## Definition classification

The sole new definition is `angleReal` (60–61): `(realRestriction K x).1 - x`. **Intended total mathematical object on its whole carrier.** It has no conditional branch, selected witness, junk fallback, or artificial value. The exposed public section permits unfolding its body. No new abbreviation or structure is introduced.

Existing selections are used with guards: `hω.1` supplies image membership before `inverse_freq` is applied (331); `normalize` supplies the properties of the previously selected `normTorus` (330). No inverse outside its image, or torus choice without existence, is used as a valid inverse/torus here.

## Finding F1 — major: incomplete `rt-small` contract

**Source requirement:** `blueprint/parts/p4-measure.tex:1029–1033` states the full estimate “`|DW_ω| ≤ 16 n η₀/s ≤ 1/2` on `T_{s/16}`”, followed by the real angle estimate and periodicity. `docs/graph/K/DEPGRAPH.md:12179–12200` includes that full operator-norm bound in `SOURCE_CONCLUSION`.

**Actual exports:** `rt_small_complex` at 79–84 concludes only

```lean
‖(fderiv ℂ K θ v).1 - v‖ ≤ 1 / 2 * ‖v‖
```

This projects to the angle component and discards the quantitative `n * (ρ/2)⁻¹ * η` bound. `rt_small` at 109–120 exports the real angle derivative bound; `angleReal_add_int` exports periodicity. None exports the full derivative of `K - unperturbedTorus I` on the half strip, or its stated dependence on η. The docstring at 77–78 describes that full bound, but the signature does not provide it.

**Why this is not a mathematical counterexample:** the local fact `hc` at 87, from `cauchy_strip`, already proves the stronger full bound inside the proof. The root uses only the angle consequence and is valid. Nevertheless, the audit brief requires failure for weakened node conclusions, and the handoff maps the entire `rt-small` node to these declarations. A proof-local fact is not the promised declaration contract.

**Proposed fix:** export a distinctly named helper (or strengthen `rt_small_complex`) proving, for every `θ ∈ complexStrip n (ρ/2)`,

```lean
‖fderiv ℂ (fun θ => K θ - unperturbedTorus I θ) θ‖ ≤
  (n : ℝ) * (ρ / 2)⁻¹ * η
```

Then include its specialization `ρ = stripWidth s₀ / 8`, `η = eta0 …` and the ≤ 1/2 arithmetic in the node mapping. `cauchy_strip`, already used at 87, supplies the analytic estimate; `rt_eta0_bounds` supplies the final smallness. Retain the real derivative and periodicity conclusions. No frozen signature or source premise needs changing.

No other blocking, major or minor finding was established. The use of Mathlib's mean-value theorem instead of the project's wrapper is a disclosed proof-route deviation, with the same real convex-set estimate. No suspected mathematical defect in the blueprint or pinned literature was found; F1 concerns exported coverage only.

## Checks and exact outputs

All Lean operations were serialized; build and probe used `nice -n 5`. No resource override was set.

`nice -n 5 lake build KAM.Head.RealTorus` — exit 0:

```text
Build completed successfully (3219 jobs).
```

`sh scripts/lint_sources.sh` — exit 0:

```text
check_lean_modules: PASS (276 Lean files, 0 comparator configurations)
FROZEN-ANCHOR GUARD OK
ABI HASHES OK (144 frozen declarations)
```

`git diff --check main...HEAD` — exit 0, no output.

`git diff main...HEAD -- KAM/Frozen manifest` — exit 0, no output. Frozen files and manifest are untouched by the package.

`python3 -I scripts/gen_root_imports.py --check` — exit 0, no output. The root's only package delta is `public import KAM.Head.RealTorus`; generated contents match.

`wc -l KAM/Head/RealTorus.lean` — exit 0:

```text
357 KAM/Head/RealTorus.lean
```

The following exact scan returned exit 1 (no matches):

```sh
rg -n '\b(sorry|admit|axiom|unsafe|opaque|EuclideanSpace)\b|set_option[[:space:]]+(maxHeartbeats|maxRecDepth|synthInstance\.maxHeartbeats)|^(public )?import KAM\.(Frozen\.Theorems|Provider)\.' KAM/Head/RealTorus.lean
```

Manual header inspection and the passing module lint confirm copyright, `module`, interface imports, module docstring, and `@[expose] public noncomputable section`.

A Python comparison extracted the source from `theorem real_torus` through the signature before ` := by`, and Appendix A from `theorem real_torus` through the signature before ` := sorry`. Output:

```text
real_torus signature byte-identical to Appendix A: True
```

**Exact-type probe:** not a provider package, so the frozen-export/provider `type_of%` check is inapplicable. An additional probe in `.lake/abi-scratch/P49Audit1.lean` imported `KAM.Head.RealTorus`, recreated the design's implicit section variables, copied Appendix A §14 as an anonymous `example`, and proved it with `exact real_torus hD hP hgc hSA hω`. It then ran `#print axioms` for every new theorem. `nice -n 5 lake env lean .lake/abi-scratch/P49Audit1.lean` exited 0 with exactly:

```text
'KAM.Head.rt_analytic' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.rt_small_complex' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.rt_small' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.angleReal_add_int' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.rt_immersion' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.rt_embedding' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.dotProduct_mulVec_lagrange' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.rt_lagrangian' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.rt_ode' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.rt_cover' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.rt_eta0_bounds' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.real_torus' depends on axioms: [propext, Classical.choice, Quot.sound]
```

The scratch probe was deleted after checking. Only this report was created by the auditor; no Lean source, generated file, frozen file, manifest, ledger or git state was edited. No claim is made here about unconditional HEAD closure or independent acceptance of predecessor packages. F1 must be addressed before recording complete coverage of all eight nodes.
