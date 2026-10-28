# W4-4 independent package audit 1

**Verdict: PASS WITH NOTES.** Both W4-4 public theorems implement `bpN:p4:sup-weighted` and the binding B.4 signatures, with standard axiom closure. No mathematical blocker or frozen-statement defect was found. The notes concern inherited comparison scope, generated-root staleness, and a minor inaccurate handoff sentence. This certifies this helper package; no frozen anchor is sealed by W4-4.

Date: 2026-10-28. Worktree: `/root/code/KAM-inp-w44`. Method: focused tier-2, source reconstruction, line-by-line review of the 95-line implementation, separate adversarial pass, exact-type probes, targeted build, axiom checks, kernel replay and hygiene. No delegation, source repair, git mutation, or network lookup. Authority: the user’s exact report destination overrides the brief’s main-worktree destination sentence. Only this report is a persistent authored artifact; transient probes were restricted to `.lake/abi-scratch/`.

## Frozen input snapshot v1 and comparison scope

HEAD: `3f4e6808e336d106f71146fa159ec8c332024410`.
Initially observed `inp`: `22304c61abd6dbd763fb2b53a7922afa968da9f8`, also the merge base with HEAD.
Observed `inp-w43`: `bd6ed0ba96e511dbb466655327c68c7e234f3e33`, also its merge base with HEAD.
Read AGENTS.md, PLAN, DECISIONS, the audit brief, handoff, Track N statement, design B.4/module/proof-plan rows, both design audits, Part 4 domains/norm/coefficient/B.1 source, and the actual reused definitions/theorem types. W4-4 has no provider and names no frozen theorem anchor; frozen-provider type equality/seal-body checks are N/A. The frozen `complexStrip` and `actionNbhd` bodies used by the domain infrastructure were inspected. Unrelated I/N/P headline anchors are not closure targets of this audit.

| Input | SHA256 |
|---|---|
| `KAM/Weighted/SupWeighted.lean` | `93d7e76637bf2f51ac8b423c058cf904c96b21b3c28245923f10bb847d2fd087` |
| `KAM/Weighted/Norm.lean` | `932fa812f3c8e4233a2db323f1e1d275c43214aa0f20cf5c053663636e0e6b42` |
| `KAM/Weighted/Coefficients.lean` | `741c4e611db4146ea8bba6e05451138905272f70104fabe031c8745078dc3632` |
| `KAM/Strip/FourierSeriesVector.lean` | `2e8e78de534f30654a5381f6d39b2dd26e249bbcebcd58531f03d1bcf8afdc4c` |
| `blueprint-N/parts/p4-weighted-norms.tex` | `0beb275bedea69c1ba6f8bdf9b082f20e3d21b7975c227321426b63024792a79` |
| `docs/tracks/N/design/PART145-LEAN-DESIGN.md` | `88954f34dc99efba820691abc209fd8bd334d93cdae90272732090e001abc8ac` |
| `/root/code/KAM-inp/.drafts/design/NPart145Signatures.lean` | `1db3ad2b05ea000a814403bb7c3f60a8aa300db91e612d94184ef3245991ee53` |
| `docs/tracks/N/audits/W4-4-handoff.md` (initially untracked) | `70fefe54f00ce065616a69d941411773953ade5db3c96710dd552dd6b4a7b3e8` |
| `/root/code/KAM-inp/.drafts/briefs/inp-audit-package.md` | `86f84e2f560f9cd5b590845aa11d79fae1b0ef674585d0347de95761323d2748` |

`git diff inp...HEAD` contains four added files: Coefficients.lean (438 lines), SupWeighted.lean (95), the W4-3 audit (164), and W4-3 handoff (4). The inherited W4-3 implementation is an actual dependency; its representation export and relevant definitions were inspected and replayed, without claiming to repeat its full separate source audit. `git diff inp...HEAD -- KAM/Frozen manifest KAM.lean README.md` is empty (exit 0).

During closeout another worker advanced the shared `inp` ref to `e204467f30eed03911757af914ba5c2f66342225`. Repeating `git diff inp...HEAD` emits `warning: inp...HEAD: multiple merge bases, using 22304c61abd6dbd763fb2b53a7922afa968da9f8` and gives the same four-file delta and empty protected-path diff. The immutable initial baseline above remains the reproducible comparison authority; the package HEAD and audited source hashes did not change.

The focus-requested `git diff inp-w43...HEAD` was also inspected: it is a 259-file integration comparison (71351 insertions, 4431 deletions), including generated files and unrelated packages. It is not the isolated W4-4 delta. `git diff HEAD^ HEAD --stat` is exactly `KAM/Weighted/SupWeighted.lean | 95 insertions`; its protected-path comparison is empty. This refutes attribution of that broad integration diff to W4-4. No unrelated package or generated-file change in that comparison is certified here.

## Declaration and binder ledger

All implementation locators below are at snapshot v1, namespace `KAM.Weighted`.

| Node | Declaration / line | Verdict | Reason |
|---|---|---|---|
| B.1(a) | `sup_le_wbound`, 61 | PASS | Exact B.4 type; arbitrary supplied finite weighted bound implies the pointwise bound on the entire domain, including s≤0 and n=0. |
| B.1(b) | `wbound_of_sup_bound`, 78 | PASS | Exact B.4 type; holomorphy and bound on s+σ give actual summability and bound at s with precisely coth(πσ)^n M. |
| B.1, numeric object | `coth`, Norm.lean:167 (reused) | PASS | Exact signature formula cosh x / sinh x, reused in its binding F5 location rather than redefined. |
| Private helper | `n_zero_width`, 36 | PASS | Transfers class and weighted bound from arbitrary width to width 1 only for n=0. |
| Private helper | `sup_le_wbound_pos`, 50 | PASS | Positive-width representation followed by the triangle and character inequalities. |

B.4 in the external signature file (lines 293–310) and in the design (684–698) is text-identical. Scratch examples copied the two design theorem types, replacing only their names/proof holes, and applied the actual public exports with all explicit arguments in order. Both elaborate. The exposed coth equation elaborates by `rfl`; a generic n=0 application of (a) also elaborates without assuming positive s.

Common binders follow the same outer-to-inner telescope in the signatures and actual `#check @...` output. Bundles were expanded as follows; no unlisted logical premise remains.

| Expanded binder | Bin | Source / meaning |
|---|---|---|
| n | TYPING | Part 4 independent angle dimension, including 0. |
| m | TYPING | Part 4 independent action dimension, including 0. |
| W | TYPING | Scalar/finite-vector/matrix norm target, generalized to finite-dimensional complex W by binding F6. |
| NormedAddCommGroup W | TYPING | Target norm. |
| NormedSpace ℂ W | TYPING | Complex differentiation and Fourier scalar action. |
| NormedSpace ℝ W | TYPING | Real torus integration. |
| IsScalarTower ℝ ℂ W | TYPING | Compatibility of the scalar actions. |
| CompleteSpace W | TYPING | Integrals and convergent sums. |
| FiniteDimensional ℂ W | TYPING | Binding design audit F6, finite target convention. |
| D | TYPING | Arbitrary action set, Part 4:35. |
| r | TYPING | Action width; arbitrary real in the stronger total-domain interface. |
| s | TYPING | Geometric angular width. |
| σ (b only) | TYPING | Geometric strip loss. |
| M | TYPING | Supplied finite uniform bound, fixed before proof premises and all evaluation points. |
| u | TYPING | Total extension of the domain function, binding bound-predicate interface. |
| hs: 0<s (b only) | STANDING | Part 4 domains:35 and B.4 explicit signature. |
| hσ: 0<σ (b only) | SOURCE | B.1(b), Part 4:92. |
| hu.differentiableOn | SOURCE | Membership in O(r,s), or O(r,s+σ) in (b), Part 4:45 and 92. |
| hu.periodic | SOURCE | Unit periodicity in every angular coordinate on that same domain. |
| hb: ∀ I∈V_rD, summability (a only) | SOURCE | Finite weighted norm encoded by WBound/WSummable, Part 4:48–54, B.1(a). |
| hb: ∀ I∈V_rD, weighted sum≤M (a only) | SOURCE | Same supplied uniform weighted bound. |
| hM: ∀ z∈Dom(r,s+σ), ‖u z‖≤M (b only) | SOURCE | B.1(b) larger-strip pointwise bound, Part 4:92. |

Counts: (a) TYPING=14, SOURCE=4, STANDING=0; (b) TYPING=15, SOURCE=4, STANDING=1. RULED=EXCESS=0 for both. The instances appear in both actual elaborated theorem types. No conclusion-shaped premise, estimate typeclass, or hidden witness field was found. Compared with the positive-width blueprint, (a) validly extends to all real r,s; (b) retains its exact signature hypotheses. No constant is chosen after I, z or k, and no factor depends on D, r, u or W beyond the given M and n,σ.

## Proof, semantic and refutation passes

(a), lines 50–58: `coefficients_repr hs hu hb` supplies HasSum to the actual u(z), not to an auxiliary reconstructed function. `HasSum.norm_le_of_bounded` uses the genuinely summable weighted coefficient series supplied by hb. Each term is bounded using `norm_smul`, `norm_character_le` and nonnegativity of the coefficient norm. The same M is then applied at z.2. No prior sup bound is assumed to prove the sup bound.

(a), lines 63–75: if s≤0 and n>0, membership in the strict coordinate strip would give 0≤|Im θ_j|<s≤0, a contradiction. If n=0, the coordinate-strip condition is vacuous, not empty. The private helper proves equality of the full domains at widths s and 1 and equality of every Fourier weight (modeSize=0); it transfers the actual summability and sum bound unchanged. Periodicity has no coordinates. The positive-width result at width 1 then applies to the same u and action point. No n≥1 premise or assumption about an integral on an empty torus is smuggled in: the zero-dimensional real torus is a singleton with the usual unit product measure.

(b), lines 83–91: at each actual I∈V_rD, the affine slice θ↦(θ,I) gives complex differentiability on the larger strip. Periodicity and bound are supplied on exactly that slice. The W-valued `summableWeighted_torusCoeffW` (FourierSeriesVector.lean:333–342) takes ρ=s+σ and δ=σ. Both required inequalities hold: 0<σ and σ<s+σ. Rewriting s+σ−σ=s gives the exact exported WSummable/wsum pair; coeff, modeWeight and coth agree definitionally. Its decay estimate sums exp(−2πσ|k|₁), giving cosh(πσ)/sinh(πσ) to power n. Thus the proof preserves the period-one normalization and max norm of finite Pi/matrix targets; there is no scalar-only application or dimension loss.

Independent second-pass challenges by this auditor: n=0 with s<0; s=0 with n>0; m=0; empty D; r≤0; negative M; and finite-vector targets. For empty action tube, WBound is deliberately vacuous and the pointwise conclusions are vacuous; no assertion about an unguarded real supremum follows. With an actual action point in (b), the positive larger strip contains the real torus, so hM forces M≥0. In (a) a real summable series of nonnegative terms forces M≥0 at each action point. No negative-bound counterexample survives. No supremum/sum interchange or analytic-domain enlargement is assumed. The current blueprint already contains the n=0 singleton discussion at lines 55–57 and the B.1 proof branches at 98–104, so the old R2-01 snapshot warning is resolved for this checkout.

Definition classification: **no new def/abbrev/structure in W4-4**. Reused coth is a literal formula on the full real carrier, identical to the signature including its total division convention at 0; its use here has πσ>0. BODY_MATCH=OK; PUBLIC_CARRIER=OK; WELL_DEFINEDNESS=N/A_LITERAL; CHARACTERIZATION=N/A_LITERAL; CHOICE_INDEPENDENCE=N/A; DEFINITION_VERDICT=PASS. Reviewed semantic dependencies are literal Dom=complexStrip×polyNbhd, InClass=(holomorphy,periodicity), coeff=actual unit-torus integral, modeWeight=exp(2πs|k|₁), and WBound=(actual summability, actual sum≤M). No new choice-defined object or fallback is introduced, and WBound guards the total tsum definition.

## Notes, source defects and deviations

No new suspected pinned-source erratum, blueprint contradiction, mathematical deviation or implementation repair. This audit checks the specified blueprint and binding signatures; it does not claim a fresh page-image audit of the pinned Pöschel PDF, a full re-audit of inherited W4-3, or downstream I/N/P proof closure.

Handoff correction (LOW): the sentence “hs : 0 < s is unused” is inaccurate. At SupWeighted.lean:87 the `by linarith` argument proving σ<s+σ uses hs. The binder is required by the imported theorem at this application and is already in the binding signature. This is a receipt-wording error, not a theorem defect. The handoff also estimates ~85 lines; the actual file has 95. No edits were made to the handoff.

The file-wide `set_option linter.unusedSectionVars false` (29) suppresses warnings only; it is not a heartbeat, recursion-depth or synthesis-budget override. Narrower scoping is optional style work. Module/copyright/import/docstring/public-section requirements hold. A static traversal found 29 reachable project modules and no provider or frozen-theorem imports; frozen definition imports are intentional.

## Independently observed verification

All auditor Lean/Lake commands use `LEAN_NUM_THREADS=1` and `nice -n 5` (the build wrapper supplies nice). The targeted incremental build used the existing overlay. No clean, cache, dependency edit, library rebuild request, heartbeat override or state-changing git command was issued.

1. `LEAN_NUM_THREADS=1 /mnt/HC_Volume_106379410/orchestrator-tools/inp_lake_build.sh /root/code/KAM-inp-w44 KAM.Weighted.SupWeighted` — exit 0:

```text
[inp-gate] slot 1 acquired 03:39:29 for KAM.Weighted.SupWeighted
Build completed successfully (3158 jobs).
```

2. `LEAN_NUM_THREADS=1 nice -n 5 lake env lean .lake/abi-scratch/W44Audit.lean` — exit 0. Two exact B.4 theorem examples, generic n=0 example and literal coth equation passed. Actual axiom output:

```text
'KAM.Weighted.sup_le_wbound' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Weighted.wbound_of_sup_bound' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Weighted.coth' depends on axioms: [propext, Classical.choice, Quot.sound]
```

3. `LEAN_NUM_THREADS=1 nice -n 5 sh scripts/lint_sources.sh` — exit 1 solely for the brief-exempt generated-root diagnostic. Full output:

```text
KAM.lean is out of date; run scripts/gen_root_imports.py
check_lean_modules: PASS (378 Lean files, 0 comparator configurations)
FROZEN-ANCHOR GUARD OK
ABI HASHES OK (144 frozen declarations)
```

The first kernel-replay attempt was terminated (exit 143, no diagnostic output) while lint was still in its Python frozen guard, before lint started its Lean ABI invocation. The completed replay below was started only after lint and that invocation exited. This avoided concurrent auditor Lean work; unrelated host workers were observed but not changed.

4. `LEAN_NUM_THREADS=1 nice -n 5 lake env leanchecker --verbose KAM.Weighted.SupWeighted KAM.Weighted.Coefficients KAM.Weighted.Norm` — completed rerun exit 0, one invocation:

```text
replaying KAM.Weighted.Norm
replaying KAM.Weighted.Coefficients
replaying KAM.Weighted.SupWeighted
```

5. Static checks: forbidden proof/resource token scan of SupWeighted.lean returned `[]`; 95 lines; 29 reachable project modules, zero provider/frozen-theorem imports. `git diff --check` exited 0 with no output. Protected-path comparisons against initial inp, live inp and immediate parent are empty. Source/HEAD hashes rechecked unchanged at closeout.

Closeout: both new public theorem types, both private proof helpers and reused coth classified; exact-signature/equation probes, public axiom checks, targeted build and kernel replay passed. Hygiene passes under the brief’s explicit generated-root exception. No open mathematical blocker, uncertainty, source erratum or repair. Decision: retain the exact signatures and existing coth owner; record the handoff wording correction without modifying it. Only this report was written persistently. The scratch probe source was deleted, and report whitespace was checked directly because the report is untracked. No frozen seal, root closure, unrelated package or future consumer is certified.

