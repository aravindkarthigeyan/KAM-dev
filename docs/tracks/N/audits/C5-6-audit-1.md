# C5-6 independent package audit 1

**Overall verdict: PASS WITH NOTES.** Both blueprint nodes and all three principal exports pass mathematical, source, signature, and proof checks. The only integration note is the expected stale generated `KAM.lean`. No frozen anchor is proved or sealed by this package; “seal-ready” applies here only to readiness of this infrastructure for integration.

Date: 2026-10-28. Auditor independent of the prover. Focused tier-2 audit under `manuscript-audit` and `lean-statement-audit`, adapted to public infrastructure rather than a manifest-bound provider. Authority: the user's prompt, package audit brief, repository AGENTS/PLAN/DECISIONS, and C5-6 handoff AUDIT FOCUS. All verification is independently rerun below.

## Scope and immutable inputs

Worktree: `/root/code/KAM-inp-c56`. HEAD: `c4c945f7573a4c9c87ab9a09f38ef633cc7d1486`.
Observed `inp`: `ee49a8e953a5e0763fbe7f293ea67601357155cc`; merge base with HEAD: `22304c61abd6dbd763fb2b53a7922afa968da9f8`.

`git diff inp...HEAD` adds exactly `KAM/Canonical/Lie.lean` (293 lines). The handoff's requested `inp-c53...HEAD` comparison was also inspected: `inp-c53` is `7863317ab894f5e339c75f50da19e72f5c7ef243`; that comparison includes 53 files and substantial intervening integration work. Those unrelated files are not changes attributable to C5-6. The user-mandated `inp...HEAD` delta defines this audit's implementation scope.

Frozen-v1 SHA-256 inventory:

| Input | SHA-256 |
|---|---|
| `KAM/Canonical/Lie.lean` | `eee92bc741a4a845fb1d67d559f1d2b30f99e2c4940db54cc3b21c22223ce577` |
| `KAM/Canonical/Setting.lean` | `49a4a9eb675de5a375ff138568f5bce11617db7dfaaeb55657cfc1fca68ebd10` |
| `KAM/Canonical/Flow.lean` | `14fed1914185ff2796afb4f548353fdf9c0807770d9dcc54f3b493e5483e47f3` |
| `docs/tracks/N/design/PART145-LEAN-DESIGN.md` | `88954f34dc99efba820691abc209fd8bd334d93cdae90272732090e001abc8ac` |
| `blueprint-N/parts/p5-canonical-maps.tex` | `40560931653c109631d9edbebe453856a49dbb925002536cefc423aa15e01db0` |
| User-supplied untracked `docs/tracks/N/audits/C5-6-handoff.md` | `7787035ab59068dcc12cc4a688853711a0bef7c8d2e237b963bdb2d143a08bb2` |
| `sources/incoming-N/poschel1993_gdz.pdf` | `27568ec63af069ab6d6c02e0327aa2d822998be47888f20dea0c6418552dc869` |

Read the two PART145 design audits, the binding round-2 notes and the C5-6 proof plan (design line 315), blueprint Part 5 including its standing flow/setting assumptions, Track N statement conventions, the frozen complex Hamiltonian vector-field definition, and the imported Setting/Flow interfaces and relevant bodies. The pinned scan hash agrees with `docs/sources.json`'s `Pos93scan` record. Printed page 211 (PDF page 26, one-based) was rendered and visually inspected, including the two Taylor integrals and their combined bracket.

Permissions: report only, temporary checks under `.lake/abi-scratch/`, serial narrow Lean checks; no implementation, frozen, manifest, generated file, history, or dependency edits. The user's exact report destination overrides the generic brief's main-worktree parenthesis. No subagents or network requests used. No Lean brief was issued.

## Declaration ledger

All names below have prefix `KAM.Canonical.`. All eight are public and included in axiom checks and module kernel replay.

| Blueprint node / role | Declaration (Lie.lean line) | Verdict | Reason |
|---|---|---|---|
| Taylor weight helper | `hasDerivAt_taylorWeight` (39) | PASS | Correct antiderivative, sign, exponent and factorial; holds for M=0. |
| Integral Taylor helper | `taylor_integral_aux` (53) | PASS | FTC base case and integration-by-parts induction; derivative chain supplies continuity and integrability. |
| One flow derivative | `hasDerivAt_comp_flow` (102) | PASS | Real scalar restriction of complex derivative, composed with actual flow derivative; membership in open Ω₁ supplied. |
| Iterated flow derivative | `hasDerivAt_adPow_flow` (119) | PASS | Holomorphy of every bracket iterate follows from the imported proved lemma; no iteration step assumed. |
| `bpN:p5:lie-derivative` | `lie_derivative` (132) | PASS | Holomorphic iterates, C∞ on [-1,1], all iterated derivatives within that interval. Exact design signature. |
| `bpN:p5:taylor` | `taylor_lie` (178) | PASS | Orders N≥1; exact finite sum, integral remainder and bound B/N!. Exact design signature. |
| Bracket linearity helper | `poissonBracket_const_mul_add` (228) | PASS | Pointwise differentiability justifies derivative addition and constant multiplication. |
| `bpN:p5:taylor`, equation `bpN:p5:eq:poschel` | `taylor_poschel` (237) | PASS | N=2 for h, N=1 for f₀, with both remainder integrals justified. Exact design and pinned displayed formula. |

No provider or theorem anchor occurs in the delta. Provider/frozen type equality and literal seal-body probes are therefore N/A, rather than missing evidence. For the analogous infrastructure contract, each of the three exact design declarations was copied into a scratch `example` and discharged by the implemented export with all explicit arguments in order.

## Expanded inputs and fidelity

Blueprint source at frozen-v1 `p5-canonical-maps.tex:111` says: “let Ω₁ ⊆ Ω be open and u holomorphic on Ω₁, and z ∈ Ω^{1/2} with X^t(z) ∈ Ω₁ for |t| ≤ 1.” Lines 122–125 specify N≥1, the sum through N−1, and the weight `(1-t)^(N-1)/(N-1)!`. Line 129 gives the Pöschel expansion. These are the implemented conditions and normalizations.

The following table enumerates the principal signatures' input binders, expanding `SmallField`. L/T/P denote lie_derivative/taylor_lie/taylor_poschel. A row listing several names applies separately to each named binder. There are no inferred project typeclass inputs hiding analytic obligations.

| Binder / expanded field | Applies | Bin | Source / rationale |
|---|---|---|---|
| `n` | L/T/P | TYPING | Finite dimension; no n>0 restriction. |
| `W` | L/T/P | TYPING | Design's continuous linear equivalence representing the chosen gauge. |
| `Ω` | L/T/P | TYPING | Ambient domain. |
| `Ω₁` | L/T/P | TYPING | Domain of composed functions. |
| `φ` | L/T/P | TYPING | Hamiltonian generating the field. |
| `u` | L/T | TYPING | Scalar holomorphic observable. |
| `h`, `f₀` (each) | P | TYPING | Two observables in the displayed formula. |
| `ε` | L/T/P | TYPING | Standing field-size parameter. |
| `z` | L/T/P | TYPING | Initial point. |
| `hφ` | L/T/P | SOURCE | φ holomorphic on Ω, blueprint symplectic/flow setting. |
| `h.isOpen` / `hs.isOpen` | L/T/P | STANDING | Ω open, blueprint flow lemma. |
| `h.differentiableOn` / `hs.differentiableOn` | L/T/P | STANDING | Field holomorphic on Ω, flow standing hypothesis. |
| `h.eps_nonneg` / `hs.eps_nonneg` | L/T/P | STANDING | 0≤ε. |
| `h.eps_le` / `hs.eps_le` | L/T/P | STANDING | ε≤1/2. |
| `h.bound` / `hs.bound` | L/T/P | STANDING | For every point in Ω, ‖W(Xφ)‖≤ε. |
| `hΩ₁` | L/T/P | SOURCE | Ω₁ open, line 111. |
| `hΩ₁Ω` | L/T/P | SOURCE | Ω₁⊆Ω, line 111. |
| `hu` | L/T | SOURCE | u holomorphic on Ω₁, line 111. |
| `hh`, `hf` (each) | P | SOURCE | h and f₀ holomorphic on Ω₁, line 127. |
| `hz` | L/T/P | SOURCE | z∈Ω^{1/2}, line 111. |
| `htraj` | L/T/P | SOURCE | Trajectory lies in Ω₁ on [-1,1], line 111. |
| `N` | T | TYPING | Integer Taylor order. |
| `hN` | T | SOURCE | 1≤N, line 122. |

Expanded input counts: L: SOURCE 6, STANDING 5, TYPING 8, RULED 0, EXCESS 0; T: SOURCE 7, STANDING 5, TYPING 9, RULED 0, EXCESS 0; P: SOURCE 7, STANDING 5, TYPING 9, RULED 0, EXCESS 0. `B` and its trajectory bound are quantified inside T's second conclusion, not an added premise for the Taylor identity. This is precisely design decision D17 (line 189): “remainder bound as ‖·‖ ≤ B/N! given ‖ad^N u‖ ≤ B on the trajectory.” It implies the blueprint's maximum bound by continuity on the compact interval.

Helper inputs are appropriately local: the Taylor helper assumes its explicit derivative chain for the arbitrary family G and proves the integral identity; the flow helper supplies that chain at its actual use. `hasDerivAt_comp_flow` takes local differentiability and trajectory membership, not a bracket derivative conclusion. `poissonBracket_const_mul_add` takes only differentiability of the two functions at the point. The antiderivative helper takes only M and t. None substitutes a conditional helper for an unconditional source result.

A whitespace-normalized extraction of each design statement versus implementation returned:

```text
lie_derivative signature_equal_mod_whitespace= True
taylor_lie signature_equal_mod_whitespace= True
taylor_poschel signature_equal_mod_whitespace= True
```

## Definitions and mathematical proof review

There are **no new `def`, `abbrev`, or `structure` declarations**. New-definition classification: N/A. No definition audit or characterization theorem is being waived for a new object.

Relevant inherited bodies were inspected. `poissonBracket` is the coordinate expression Du·Xφ with angles first; `adPow` iterates the bracket in its first slot. `gaugeInterior` is literal closed-gauge-ball inclusion. `SmallField` contains exactly the five standing premises expanded above. `IsSolutionIn` requires ordinary two-sided `HasDerivAt` at every time in the interval, including endpoints. `flow` has an inherited choice/fallback totalization, but this module consumes `flow_a`, whose proof supplies existence and uniqueness on the source interval under h and hz. The fallback is unreachable here; no property outside [-1,1] is used. This audit does not newly certify flow's off-interval choice independence or promote it as a globally characterized flow.

Full line-by-line proof review and a second adversarial pass checked:

1. **Integral Taylor induction (53–95).** The M=0 case is FTC. Each derivative-chain member is continuous, hence interval integrable on [0,1]. For the induction step, v=−(1−t)^(M+1)/(M+1)! satisfies v'=w=(1−t)^M/M!. Integration by parts yields the next boundary term with positive coefficient 1/(M+1)! and the next positive remainder. Both factors' derivatives meet the invoked integration-by-parts integrability premises; the complex casts do not change signs.
2. **Domain and derivatives (102–174).** `flow_a` supplies the two-sided derivative even at ±1. Openness of Ω₁ upgrades holomorphy there to a point derivative at the trajectory point. Complex-to-real scalar restriction and the bracket/field identity have the right direction. All bracket iterates are holomorphic on Ω₁. `UniqueDiffOn ℝ (Icc (-1) 1)` is valid because −1<1; it resolves endpoint derivative-within uniqueness. Induction proves finite-order smoothness for all shifted iterates before passing to C∞, and `derivWithin_congr` is applied with equality at the evaluation point as well as on the interval.
3. **Remainder (178–225).** N=M+1 is justified by hN. `flow_a` supplies X⁰z=z for the initial coefficients. The real weight is nonnegative on [0,1], including M=0, and its integral is 1/(M+1)!. Thus the bound is B/(M+1)!, without a missing factorial or interval length. A negative B cannot satisfy the norm bound on the nonempty trajectory interval; no extra sign premise is needed. Integrability of the actual remainder follows from the same derivative chain and polynomial weight, so total-integral conventions are not hiding a gap.
4. **Pöschel expansion (237–287).** After N=2 and N=1 specialization, continuity gives the two `IntervalIntegrable` witnesses before `integral_add`. For each t, htraj puts Xᵗz in Ω₁ and hΩ₁ supplies a neighborhood. Both the inner bracket and f₀ are differentiable there. The pointwise bracket-linearity lemma is therefore applicable on the entire integration interval. Its first-slot orientation agrees with the pinned formula.

Potential defects considered and refuted: wrong integration-by-parts sign; N=1/0! endpoint case; unwarranted two-sided endpoint differentiation; evaluation outside Ω₁; addition of nonintegrable functions; wrong bracket slot; hidden positivity assumption on B; extra dimension restriction. No surviving mathematical finding.

Round-2 R2-02 concerns transporting `flow_e` to a three-block reality carrier. This module uses neither `flow_e` nor a three-block carrier. R2-01 and R2-03 concern other synchronization/consumer wording; none requires a changed C5-6 signature. The imported Setting/Flow proofs are dependencies, not premises imported from frozen theorem anchors or providers.

## Independently rerun verification

Every Lean/lake/checker invocation ran serially with `LEAN_NUM_THREADS=1`. No resource override, cache download, clean, dependency-source edit or full-library rebuild was requested.

1. Targeted gated build:

```sh
LEAN_NUM_THREADS=1 /mnt/HC_Volume_106379410/orchestrator-tools/inp_lake_build.sh /root/code/KAM-inp-c56 KAM.Canonical.Lie
```

The gate runs `nice -n 5 lake build KAM.Canonical.Lie`. Exit **0**. Output:

```text
[inp-gate] slot 2 acquired 03:48:06 for KAM.Canonical.Lie
Build completed successfully (2927 jobs).
```

This was a warm targeted build using the existing snapshot; the job count is not a claim of a fresh library rebuild.

2. Exact design-type applications and all public axioms:

```sh
LEAN_NUM_THREADS=1 nice -n 5 lake env lean .lake/abi-scratch/C56Audit.lean
```

Exit **0**, no warnings. The scratch file imports `KAM.Canonical.Lie`, opens the design scopes, and uses the three complete design types as `example`s, with bodies:

```lean
exact lie_derivative hφ h hΩ₁ hΩ₁Ω hu hz htraj
exact taylor_lie hφ h hΩ₁ hΩ₁Ω hu hz htraj hN
exact taylor_poschel hφ hs hΩ₁ hΩ₁Ω hh hf hz htraj
```

Output from `#print axioms`:

```text
'KAM.Canonical.hasDerivAt_taylorWeight' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Canonical.taylor_integral_aux' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Canonical.hasDerivAt_comp_flow' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Canonical.hasDerivAt_adPow_flow' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Canonical.lie_derivative' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Canonical.taylor_lie' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Canonical.poissonBracket_const_mul_add' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Canonical.taylor_poschel' depends on axioms: [propext, Classical.choice, Quot.sound]
```

3. Kernel replay, one invocation for the sole new module (which contains all helpers):

```sh
LEAN_NUM_THREADS=1 nice -n 5 lake env leanchecker --verbose KAM.Canonical.Lie
```

Exit **0**. Complete output:

```text
replaying KAM.Canonical.Lie
```

4. Repository lint:

```sh
LEAN_NUM_THREADS=1 sh scripts/lint_sources.sh
```

Exit **1**, solely for the explicitly allowed generated-root discrepancy. Complete output:

```text
KAM.lean is out of date; run scripts/gen_root_imports.py
check_lean_modules: PASS (377 Lean files, 0 comparator configurations)
FROZEN-ANCHOR GUARD OK
ABI HASHES OK (144 frozen declarations)
```

All other lint checks pass. This is the brief's expected lint exception, not a clean exit-0 lint receipt.

5. `git diff inp...HEAD -- KAM/Frozen manifest KAM.lean README.md`: empty output, exit **0**. `git diff --check inp...HEAD`: empty output, exit **0**. Forbidden-token/override/EuclideanSpace scan of the changed Lean module: no matches (rg exit **1**, expected). `wc -l KAM/Canonical/Lie.lean`: **293**, safely below 1500. Copyright, module command, public imports, module docstring, and public section are present. No provider or frozen theorem import is introduced. Only the frozen complex vector-field definition enters transitively via Setting.

## Findings, limitations, and closeout

**No blocking findings, suspected source errata, or mathematical deviations.** The handoff's “289 lines” is a stale size receipt: current snapshot has 293 physical lines. Its reference to a new `.drafts/handoff-C5-6.md` does not describe a tracked delta; only Lie.lean is added. Neither discrepancy changes mathematics or ownership.

Integration note: the orchestrator should regenerate `KAM.lean` under its existing generated-file workflow. This auditor deliberately did not edit it. The `inp-c53...HEAD` scope ambiguity was resolved in favor of the user's explicit `inp...HEAD`; unrelated integrated changes received no package verdict here.

All eight new public declarations classified; three principal signatures matched and elaborated at exact design types; mathematical and refutation passes complete; standard axiom closure and kernel replay verified. No whole-track theorem closure, frozen seal, independent re-audit of unrelated imported modules, or downstream C5-8/C5-9 implementation is claimed. Temporary probe and rendered-page artifacts were removed. The only repository file written by this audit is this report at the user-specified absolute path.
