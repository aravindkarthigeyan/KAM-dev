# W4-8 independent package audit 1

**Verdict: PASS for `bpN:p4:bracket` / `KAM.Weighted.wbound_bracket`.** The implementation matches the specified interface and blueprint, its proof is sound, and kernel replay passes. No blocking finding, excess hypothesis, or suspected source defect was found. The expected generated-root lint exception applies. No frozen anchor is sealed by this package; this verdict approves the infrastructure implementation, not a track headline or frozen theorem closure.

Date: 2026-10-28. Marker: `maud-w48-1`. Auditor did not write the implementation.

## Scope and immutable inputs

Focused tier-2 audit under `/root/code/KAM-inp/.drafts/briefs/inp-audit-package.md`, with the handoff's narrower AUDIT FOCUS. The user's explicit destination overrides the generic brief's main-worktree destination. Only this report is added; temporary probes belong to this worktree's `.lake/abi-scratch/` and are removed. No git mutation, source repair, delegation, network access, cache operation, or broad rebuild was performed.

- Worktree: `/root/code/KAM-inp-w48`.
- Audited HEAD: `11411a19d57e53a081e585e6eb40e78a7c4f725e`.
- Initial `inp`: `53fd5275a5e6b56352932d45d6237d4228c1f9a0`.
- Initial `inp-w45`: `49468e739bfe7a6a2c90e42bb72825c3dd86f990`.
- Initial `git diff inp...HEAD --stat`: Algebra, 237 added lines; Bracket, 205 added lines; 442 insertions total. Per the handoff, Algebra is an input dependency, not a second package under audit.
- `git diff inp-w45...HEAD -- KAM/Weighted/Bracket.lean` adds precisely the audited module.
- The shared `inp` ref advanced during verification (observed subsequently at `d104a1a64251ca525f814912bdcac11c46a4f96f`). A later symbolic three-dot diff warned of multiple merge bases and included unrelated work. All reproducible scope/hygiene judgments below use the initial immutable hashes. HEAD and audited file bytes did not change.
- Initial untracked input: `docs/tracks/N/audits/W4-8-handoff.md`; preserved.

Frozen-v1 SHA-256 inventory:

| Input | SHA-256 |
|---|---|
| `KAM/Weighted/Bracket.lean` | `489ed74c5f41bd87511e01cce4576153f7c30134a1cb6435e76fa350c8d126db` |
| `blueprint-N/parts/p4-weighted-norms.tex` | `0beb275bedea69c1ba6f8bdf9b082f20e3d21b7975c227321426b63024792a79` |
| `docs/tracks/N/design/PART145-LEAN-DESIGN.md` | `635508031d6e95d9a5b3cf2fb19be41bfd2fd75cab9e5e8354c1513e738fd87e` |
| `docs/tracks/N/design/PART145-design-audit-1.md` | `7492d710f4ad5a7f7ae27975a20f4a2a8cba73bfd9bbd71d76a2646e772404a4` |
| `docs/tracks/N/design/PART145-design-audit-2.md` | `0ec8c1c2e58ba65217743cf3c491346b0042203449c7698ed2a899e86012c2df` |
| `docs/tracks/N/audits/W4-8-handoff.md` | `b959d1d978fd597fc9abdb109c51ba386cb3decf1b6c7d10708931fa7c933de3` |
| External package brief | `316d17309e362cccf5ee0c182cfe3142c9fad9cd4b8c295332d751d4a334d37d` |

Authority and evidence: AGENTS.md, PLAN, DECISIONS, track-N statement, blueprint-N Part 4, design B.7 and W4-8 proof plan, both design audit dispositions, and actual imported definitions and theorem types. Applied the manuscript-audit and lean-statement-audit methods. All statements and all five private proof helpers were inspected; no proof sampling. Acceptance criteria were exact statement fidelity, actual production of the bracket bound and class membership, guarded summability, clean axiom closure, kernel replay, and the brief's hygiene checks.

## Declaration inventory

Line numbers refer to the frozen-v1 Bracket file.

| Node / role | Declaration | Verdict | Reason |
|---|---|---|---|
| Domain restriction | private `inClass_mono` (38) | PASS | Restricts holomorphy and periodicity along `Dom_mono`; no additional analytic assumption. |
| Positivity | private `wsum_nonneg` (43) | PASS | Every real summand is nonnegative. Its use for signs does not substitute for summability. |
| Real-slice continuity | private `continuous_real_slice` (48) | PASS | Positive strip width includes every real angle; holomorphy supplies continuity. |
| Finite-sum triangle inequality | private `wsum_sum_le` (56) | PASS | Coefficient linearity, norm triangle inequality, a summable finite majorant, then an explicitly justified finite-sum/tsum interchange. |
| Bracket expansion | private `poissonBracket_eq_sum` (88) | PASS | Signed sum over `Fin n ⊕ Fin n` expands the actual canonical bracket, with the correct two signs. |
| `bpN:p4:bracket`, B.4 | `KAM.Weighted.wbound_bracket` (101) | PASS | Exact design B.7 signature; both class membership and the full weighted estimate on the doubly reduced domain. |

There is one new public theorem, no provider export, no frozen theorem change, and no seal body. Provider/frozen type equality and sealing probes are therefore N/A. A transient exact-design-signature application checks the public theorem instead.

## Statement fidelity and expanded inputs

Blueprint Part 4, lines 149–152, states: “Let ... finite norms, `0<ρ<r`, `0<σ<s`, `r-ρ<r₀`, `s-σ<s₀`,” followed by the bracket class membership and

`e⁻¹ [((r₀-r+ρ)σ)⁻¹ + ((s₀-s+σ)ρ)⁻¹] |u|_(r₀,s₀) |v|_(r,s)`.

The Lean type before `:=` is **byte-identical** to design lines 745–754, checked mechanically. `Mu` and `Mv` are universally supplied finite upper bounds, as prescribed by the design; no constant is selected after a function or loss. `WBound` expands to pointwise summability and a sum bound for every action in the specified tube. This is the approved finite-bound formulation of the blueprint norm inequality, including its vacuous empty-domain convention.

Each row below is one expanded input; compound source predicates are opened into their fields. Universal coordinates internal to a field range over its displayed source domain and introduce no extra premise.

| Binder / expanded field | Bin | Source / meaning |
|---|---|---|
| `n : ℕ` | TYPING | Part 4 lines 9–10, 35; bracket specializes `m=n`, including zero. |
| `D : Set (Fin n → ℂ)` | TYPING | Arbitrary action set, Part 4 lines 35, 149. |
| `r₀ : ℝ` | TYPING | Outer action width, B.4 / design B.7. |
| `s₀ : ℝ` | TYPING | Outer angle width, B.4 / design B.7. |
| `r : ℝ` | TYPING | Second action width, B.4. |
| `s : ℝ` | TYPING | Second angle width, B.4. |
| `ρ : ℝ` | TYPING | Action loss, B.4. |
| `σ : ℝ` | TYPING | Angle loss, B.4. |
| `Mu : ℝ` | TYPING | Supplied finite majorant, design B.7. |
| `Mv : ℝ` | TYPING | Supplied finite majorant, design B.7. |
| `u` | TYPING | Scalar function on complex phase coordinates, restricted by `hu`. |
| `v` | TYPING | Scalar function on complex phase coordinates, restricted by `hv`. |
| `hu.differentiableOn` | SOURCE | Holomorphic `u ∈ O(r₀,s₀)`, Part 4 lines 48, 149. |
| `hu.periodic` | SOURCE | Period-one angle convention in the same class. |
| `hv.differentiableOn` | SOURCE | Holomorphic `v ∈ O(r,s)`, same source. |
| `hv.periodic` | SOURCE | Period-one angle convention in the same class. |
| `hbu`: `∀ I∈V_(r₀)D, WSummable u s₀ I` | SOURCE | Finite norm, Part 4 lines 50, 149; design B.7. |
| `hbu`: `∀ I∈V_(r₀)D, wsum u s₀ I ≤ Mu` | SOURCE | Supplied upper bound for that finite norm. |
| `hbv`: `∀ I∈V_rD, WSummable v s I` | SOURCE | Finite norm, same source. |
| `hbv`: `∀ I∈V_rD, wsum v s I ≤ Mv` | SOURCE | Supplied upper bound for that finite norm. |
| `hρ : 0 < ρ` | SOURCE | B.4: `0<ρ<r`. |
| `hρr : ρ < r` | SOURCE | B.4: `0<ρ<r`. |
| `hσ : 0 < σ` | SOURCE | B.4: `0<σ<s`. |
| `hσs : σ < s` | SOURCE | B.4: `0<σ<s`. |
| `h1 : r-ρ < r₀` | SOURCE | B.4 outer action-domain inclusion. |
| `h2 : s-σ < s₀` | SOURCE | B.4 outer angle-domain inclusion. |

Counts: TYPING 12; SOURCE 14; STANDING 0; RULED 0; EXCESS 0. There are no additional instance binders on the scalar public theorem. Positivity of all relevant widths and both denominators follows from the listed inequalities. No estimate, derivative regularity result, product bound, or desired conclusion is assumed.

## Definition classification and proof audit

**New `def` / `abbrev` / `structure`: none.** Definition-specific body/carrier/choice checks for new objects are N/A. Existing meaning-bearing definitions were inspected:

- `polyNbhd`, `Dom`, `complexStrip`: literal open max-norm action tube and geometric angle strip; arbitrary, disconnected, and empty `D` are permitted.
- `InClass`: complex differentiability plus unit-angle periodicity on that domain.
- `coeff`, `modeWeight`: genuine period-one Fourier integrals and `exp(2π s |k|₁)`. Thus the derivative's `2π` is absorbed by the geometric-width loss; no normalization factor is missing.
- `wsum`, `WSummable`, `WBound`: literal weighted series with an explicit convergence guard in every norm-bound premise and conclusion. The proof produces summability for each product and for the signed sum. It never uses the non-summable totalized tsum value as a norm bound, nor uses an unguarded `wnorm` supremum.
- `dtheta`, `dI`, `Canonical.poissonBracket`: actual Fréchet derivatives and their canonical signed products. Total definitions away from holomorphic domains are not used to assert off-domain derivative identities.

At Bracket lines 109–133 the reduced widths, inclusions, positive denominators, and four Cauchy estimates are derived. `cauchy_theta` is used with the coordinate sum **inside** the actionwise estimate. `cauchy_action` is used on the appropriate action tube, then restricted in angle width by `WBound.mono`.

At lines 134–164 the action point is fixed. Nonnegativity of `Mu,Mv` follows there from the original bounds, not from an extra global premise. `inClass_fderiv_apply` produces derivative holomorphy/periodicity. `coeff_mul` produces each product's class membership, convergence, and actionwise submultiplicativity. `wsum_sum_le` applies only after real-slice continuity and summability have been supplied.

At lines 166–190 the two sums are bounded by

`Mu/(e(s₀-s+σ)) · Mv/ρ + Mu/(r₀-r+ρ) · Mv/(eσ)`.

Positive denominators and nonnegative factors justify each multiplication of inequalities. This equals the specified constant after field algebra. No action supremum is moved inside a sum, and no factor `n` appears. Lines 191–201 separately prove bracket holomorphy and periodicity, so the estimate is not standing in for class membership.

Adversarial pass: checked negative majorants, `D=∅`, zero dimension, narrow outer widths, endpoint denominators, and restriction of derivatives. Empty target tubes make `WBound` vacuous; otherwise the proof derives the required signs from an actual action point. At `n=0` both derivative sums and the bracket vanish, and the generic proof already covers the singleton Fourier lattice. The source-required `hρr` is retained despite being unnecessary for this proof; the scoped unused-variable linter setting changes no logical statement or elaboration budget. No candidate defect survived this separate refutation pass.

Design-audit obligations relevant here are satisfied: the pointwise angular sum is retained; scalar targets have the required finite-dimensional instances; independent derivative-coordinate quantifiers are available in the input API; zero-dimensional blueprint branches are present in this snapshot. Sharp-norm, flow-coordinate-transport, and transform issues are outside this module and are not asserted closed here.

## Import and hygiene receipts

All Lean-related commands below were serial with `LEAN_NUM_THREADS=1` and `nice -n 5` (the build wrapper supplies `nice`). No heartbeat, recursion-depth, or synthesis override was introduced. Lint's internal ABI elaboration was allowed to finish before the next Lean command.

1. Targeted build:

   ```sh
   LEAN_NUM_THREADS=1 /mnt/HC_Volume_106379410/orchestrator-tools/inp_lake_build.sh /root/code/KAM-inp-w48 KAM.Weighted.Bracket
   ```

   Exit 0. Output: `[inp-gate] slot 2 acquired 04:04:09 for KAM.Weighted.Bracket`; `Build completed successfully (3165 jobs).` No warning or sorry diagnostic. This was a targeted overlay build, not a clean rebuild.

2. Kernel replay:

   ```sh
   LEAN_NUM_THREADS=1 nice -n 5 lake env leanchecker --verbose KAM.Weighted.Bracket
   ```

   Exit 0. Output: `replaying KAM.Weighted.Bracket`.

3. Exact-signature and axiom probe:

   ```sh
   LEAN_NUM_THREADS=1 nice -n 5 lake env lean .lake/abi-scratch/W48Audit1.lean
   ```

   Probe imports the production module, copies design B.7's exact type under `audit_exact_signature`, and supplies the body

   ```lean
   exact wbound_bracket hu hv hbu hbv hρ hρr hσ hσs h1 h2
   ```

   The probe prints axioms of the public theorem and the exact-signature application. Both are `[propext, Classical.choice, Quot.sound]`; no `sorryAx` or project axiom. Probe exit 0. Temporary probe removed after verification.

4. Source lint:

   ```sh
   LEAN_NUM_THREADS=1 nice -n 5 sh scripts/lint_sources.sh
   ```

   Exit **1**, solely the explicitly allowed generated-root exception. Complete output:

   ```text
   KAM.lean is out of date; run scripts/gen_root_imports.py
   check_lean_modules: PASS (389 Lean files, 0 comparator configurations)
   FROZEN-ANCHOR GUARD OK
   ABI HASHES OK (144 frozen declarations)
   ```

   No forbidden escape, resource override, Euclidean carrier, line-length, or size violation. Bracket has **205 total lines**, maximum line length **100**; copyright, `module`, public interface imports, module docstring, and `@[expose] public noncomputable section` are present. The handoff's “204 lines” is a harmless count discrepancy.

5. Pinned protected-path check:

   ```sh
   git diff 53fd5275a5e6b56352932d45d6237d4228c1f9a0...11411a19d57e53a081e585e6eb40e78a7c4f725e -- KAM/Frozen manifest KAM.lean README.md
   git diff --check 53fd5275a5e6b56352932d45d6237d4228c1f9a0...11411a19d57e53a081e585e6eb40e78a7c4f725e
   ```

   Both exit 0 with empty output. No protected source or generated file was edited by the package.

Direct imports: public Algebra, Cauchy, Canonical.Setting; private FourierDerivative and three Mathlib tactic modules. Recursive local import inspection found 36 project modules and no provider or frozen theorem import. The seven reachable frozen modules are definitions only: ActionNbhd, ComplexStrip, HamiltonianVectorField, HamiltonianVectorFieldC, IsPrimaryOnStrip, IsRealOnReals, OmegaZero. Every one has manifest state `SEALED`; none is `DRAFT_SORRY`. The whole-manifest guard and ABI check above additionally pass.

## Findings, limitations, and closeout

No material mathematical, statement, implementation, blueprint-consistency, or hygiene finding remains. Suspected pinned-source errata: **none identified**. Auditor-introduced mathematical deviations: **none**. No replacement block is needed.

The expected generated-root exception and the moving shared base ref are recorded above, not concealed as clean checks. The original Pos93 PDF, upstream package proofs in their entirety, downstream normal-form consumers, frozen track theorem bodies, and global dependency-graph statuses are outside this focused audit. The blueprint/source attribution was not independently upgraded to a PDF-level audit. Algebra and Cauchy are inspected as actual consumed inputs; their packages are not re-certified wholesale here.

Closeout: all six declarations classified; expanded public inputs contain zero EXCESS; exact signature/application verified; proof inspected throughout; standard axiom closure and kernel replay verified; targeted build and required lint completed; audited bytes unchanged; scratch probe deleted. Report is ready for the orchestrator's W4-8 acceptance decision.
