# W4-7 independent package audit 1

**Verdict: PASS WITH NOTES.** The W4-7 scalar projection/truncation implementation is ready for integration. Both source-facing theorems pass statement and proof review. No frozen theorem is sealed by this package; “seal-ready” is inapplicable to an anchor here. No material finding or suspected new source erratum was found.

Date: 2026-10-28. Worktree: `/root/code/KAM-inp-w47`. Audited HEAD: `e3586a960097e90cf93f685d9f7faba5adfb226e`. Observed `inp`: `40237a3a44c50dbe4be9ae039cf809d0d520a175`; merge base: `59aa6ce896afaa3cf07fb4a97bd4f3e4be494c00`. Comparison is the requested `git diff inp...HEAD`, which adds only the 176-line `KAM/Weighted/Projections.lean`.

## Scope, authority and method

Focused tier-2, refute-first audit, independent of the prover. Read AGENTS.md, PLAN, DECISIONS, `/root/code/KAM-inp/.drafts/briefs/inp-audit-package.md`, the local W4-7 handoff and its AUDIT FOCUS, the design's W4-7 row/proof plan/Appendix B.8, both design audits and the binding audit-2 notes, blueprint-N Part 4, and the Track N statement context. Used the manuscript-audit and lean-statement-audit methods. This is a helper package, so no manifest-bound I/N/P provider export or frozen seal exists to compare. The exact signatures below are the binding design surface instead.

Permission envelope: source inspection, serial targeted Lean checks and scratch files, and this report only; no source repair, git mutation, commit, push or delegation. The user's exact local report path overrides the generic brief's main-worktree destination. No new Lean brief was dispatched. All audit Lean/Lake commands use `LEAN_NUM_THREADS=1`, `nice -n 5`, and default resource limits, sequentially. Builds use the prescribed compile gate; no clean/update/cache download or Mathlib rebuild was requested.

Frozen snapshot (SHA256):

| Input | Hash |
|---|---|
| `KAM/Weighted/Projections.lean` | `66b5036efacf4b840f365d5145868a098a577171b885b5fbea3c096c7eb4b385` |
| `blueprint-N/parts/p4-weighted-norms.tex` | `0beb275bedea69c1ba6f8bdf9b082f20e3d21b7975c227321426b63024792a79` |
| `docs/tracks/N/design/PART145-LEAN-DESIGN.md` | `635508031d6e95d9a5b3cf2fb19be41bfd2fd75cab9e5e8354c1513e738fd87e` |
| `docs/tracks/N/design/PART145-design-audit-1.md` | `7492d710f4ad5a7f7ae27975a20f4a2a8cba73bfd9bbd71d76a2646e772404a4` |
| `docs/tracks/N/design/PART145-design-audit-2.md` | `0ec8c1c2e58ba65217743cf3c491346b0042203449c7698ed2a899e86012c2df` |
| `docs/tracks/N/audits/W4-7-handoff.md` (initially untracked) | `ef9f4c5bf3590ace3a5f92bd8e96bdcbb343f83f81539050c3e67bb03bf6714d` |
| `KAM/Weighted/Norm.lean` | `932fa812f3c8e4233a2db323f1e1d275c43214aa0f20cf5c053663636e0e6b42` |
| `KAM/Weighted/Coefficients.lean` | `741c4e611db4146ea8bba6e05451138905272f70104fabe031c8745078dc3632` |
| `KAM/Weighted/Domains.lean` | `daf6012c19a7eff6a6edeedff592da5e984ee2d6aed3b2278613d784956d336b` |

## Declaration ledger

All names below have prefix `KAM.Weighted`. Line references are to audited HEAD.

| Node | Declaration (line) | Verdict | Reason |
|---|---|---|---|
| `bpN:p4:projections` | `projMode` (32) | PASS | Literal indicator Fourier series, exactly the binding definition. |
| same | `truncate` (37) | PASS | Projection onto the closed cutoff `modeSize k ≤ K`; K is real as specified. |
| same | `modeAverage` (41) | PASS | Zero coefficient, independent of the angle. |
| same, helper | `projMode_eq_fourierSeries` (45) | PASS | Unconditional equality of the same termwise series; no convergence premise needed for termwise equality. |
| same, helper | `modeAverage_eq_projMode` (53) | PASS | Singleton series and `character_zero`; unconditional identity. |
| same | `projections` (62) | PASS | Class, coefficient formula, projection bound and average class/bound all agree with Appendix B.8, design lines 769–774. |
| same | `truncation_tail` (111) | PASS | Identity on the entire original domain and summable weighted bound on width `s-σ`, with exact factor `exp(-(2πKσ))`; agrees with design lines 777–780. |
| same, private proof helper | `coeff_congr` (102) | PASS | Equality on the domain implies equality of coefficient integrands because `s>0` includes every real angle. Not an extra premise of a public result. |

Mechanical extraction compared the complete declaration heads through `:=` against the design: all five prescribed declarations returned `SIGNATURE_BYTES_MATCH`. The three definition bodies were also read and compared literally. A temporary probe copied each main theorem type under a fresh name and applied `projections hs hu hb S` and `truncation_tail hu hb hσ hσs hK`, respectively, with exactly the explicit binders in order. It elaborated successfully.

Blueprint anchors at lines 184–196: “Put P_Su = sum_{k in S} û_k χ_k”, “u - T_Ku = P_{|k|₁>K}u”, and the tail factor `e^{-2πKσ}`. Widths are geometric, not coefficient radii. Design departures D1/D3/D4 (lines 173–176) authorize the bound predicate, explicit positive-strip hypothesis and scalar projections. The blueprint's vector extension and optional sharp branch are not newly implemented or claimed here. The truncated-polynomial property and arbitrary-complement corollary are not separately exported in this signature; this is not a new omission relative to the approved package contract. The arbitrary projection theorem covers the truncation bound by specializing S. Audit-2 R2-02 concerns three-block flow reality and imposes no additional W4-7 obligation; the n=0 blueprint prerequisite is present in this tree.

## Expanded binder check

Citations: `p4:norm` = blueprint lines 47–58; `p4:projections` = lines 184–196; D3/D4 = design lines 175–176. Types carry no hidden result assumptions or nonstandard instances.

| Declaration | Binder / expanded logical input | Bin | Authority |
|---|---|---|---|
| projections | implicit n : ℕ | TYPING | p4 domains and n=0 remark |
| projections | implicit m : ℕ | TYPING | independent action dimension |
| projections | implicit D : Set (Fin m → ℂ) | TYPING | p4:norm domain parameter |
| projections | implicit r : ℝ | TYPING | p4:norm action width |
| projections | implicit s : ℝ | TYPING | p4:norm strip width |
| projections | implicit M : ℝ | TYPING | D1 finite bound parameter |
| projections | implicit u : (Fin n → ℂ) × (Fin m → ℂ) → ℂ | TYPING | total-function representation, D4 |
| projections | hs : 0 < s | STANDING | positive widths, made explicit by D3 |
| projections | hu.differentiableOn | SOURCE | u ∈ O(r,s), expanded p4:norm |
| projections | hu.periodic | SOURCE | u ∈ O(r,s), expanded p4:norm |
| projections | hb: ∀ I ∈ polyNbhd D r, summability | SOURCE | finite weighted norm, D1 |
| projections | hb: ∀ I ∈ polyNbhd D r, weighted sum ≤ M | SOURCE | finite weighted norm bound, D1 |
| projections | S : Set (Fin n → ℤ) | TYPING | arbitrary set of modes, p4:projections |
| truncation_tail | implicit n : ℕ | TYPING | p4 domains and n=0 remark |
| truncation_tail | implicit m : ℕ | TYPING | independent action dimension |
| truncation_tail | implicit D : Set (Fin m → ℂ) | TYPING | p4:norm domain parameter |
| truncation_tail | implicit r : ℝ | TYPING | action width |
| truncation_tail | implicit s : ℝ | TYPING | geometric strip width |
| truncation_tail | implicit σ : ℝ | TYPING | loss parameter |
| truncation_tail | implicit K : ℝ | TYPING | cutoff parameter |
| truncation_tail | implicit M : ℝ | TYPING | D1 finite bound parameter |
| truncation_tail | implicit u : (Fin n → ℂ) × (Fin m → ℂ) → ℂ | TYPING | total-function representation, D4 |
| truncation_tail | hu.differentiableOn | SOURCE | u ∈ O(r,s) |
| truncation_tail | hu.periodic | SOURCE | u ∈ O(r,s) |
| truncation_tail | hb: ∀ I ∈ polyNbhd D r, summability | SOURCE | finite weighted norm, D1 |
| truncation_tail | hb: ∀ I ∈ polyNbhd D r, weighted sum ≤ M | SOURCE | finite weighted norm bound, D1 |
| truncation_tail | hσ : 0 < σ | SOURCE | p4:projections loss range |
| truncation_tail | hσs : σ < s | SOURCE | p4:projections loss range |
| truncation_tail | hK : 0 ≤ K | SOURCE | p4:projections cutoff range |

Counts after expansion: projections TYPING 8, SOURCE 4, STANDING 1, RULED 0, EXCESS 0; truncation_tail TYPING 9, SOURCE 7, STANDING 0, RULED 0, EXCESS 0. The two public equality helpers have only typing binders (respectively n,m,S,u and n,m,u); no logical hypotheses. No existential constants, dimension restrictions, domain regularity assumptions or conclusion-shaped inputs are introduced.

## Definition classification

All three new definitions are **literal definitions**, not characterized choices, assumption bundles or existence shells. `projMode` is the displayed sum of indicator terms on its entire total-function carrier; `truncate` is its displayed cutoff specialization; `modeAverage` is the displayed zero coefficient. No extra branches or witness choices occur. Lean's total `tsum` convention outside the convergence locus is inherited from the specified literal formula; no theorem exploits its nonsummable value. On every claimed analytic domain, `hb` and `coefficients_series` prove convergence and the actual source properties. This follows the design's explicit total-function interpretation rather than asserting analytic properties outside the source domain.

For each of projMode, truncate and modeAverage:

```text
BODY_MATCH: OK
PUBLIC_CARRIER: OK
WELL_DEFINEDNESS: N/A_LITERAL
CHARACTERIZATION: N/A_LITERAL
CHOICE_INDEPENDENCE: N/A
DEFINITION_VERDICT: PASS
```

No new `abbrev` or `structure` occurs.

## Proof and adversarial checks

Read every line of the new module. `projections` constructs holomorphic indicator coefficients, proves their weighted summability and bound by nonnegative domination, and applies the actual `coefficients_series` theorem. The singleton projection supplies the average. The extra hypotheses of those dependencies are proved locally, not supplied as new API premises.

For the tail, `coefficients_repr` supplies HasSum and hence summability at each point of the original domain. The complementary indicators sum to the full summand; `Summable.tsum_add` therefore justifies the splitting. `coeff_congr` uses equality on real-angle points inside that domain, then `projections` identifies the tail coefficients. On retained modes the exponential inequality is exactly
`exp(2π(s-σ)|k|₁) ≤ exp(-2πKσ) exp(2πs|k|₁)`.
The proof then establishes summability by domination and multiplies the old bound by a positive factor. No cancellation of divergent series or unproved holomorphy occurs.

Refutation pass: checked n=0 (singleton zero mode), m=0, empty D/nonpositive action width, negative bounds on empty action domains, arbitrary nondecidable S, real nonintegral K, K=0 and the cutoff equality boundary. These do not refute the statements. Empty-domain WBound is deliberately vacuous; on a nonempty domain hb enforces a nonnegative numerical bound. The tail identity is domain-restricted, so arbitrary extensions outside the domain cannot invalidate it. `s>0` is supplied or derived from `0<σ<s`, avoiding the nonpositive-strip defect. `hK` is unused, but is a source premise preserved verbatim, not hypothesis smuggling. No reportable mathematical finding survived this pass.

Import provenance: directly `public import KAM.Weighted.Coefficients` plus the Mathlib Positivity/Linarith tactics. Inspected the existing coefficients/domain/norm definitions and the exact used theorem contracts. The project import closure has 29 modules, zero providers, and only these frozen imports: ActionNbhd, ComplexStrip, IsPrimaryOnStrip, IsRealOnReals, OmegaZero; all five are definition anchors in state SEALED. No DRAFT_SORRY theorem enters this closure. Existing dependency proof bodies outside W4-7 were not independently re-audited; the new exports' axiom closure and the requested kernel replay were independently checked.

## Verification receipts

Commands ran from `/root/code/KAM-inp-w47`.

1. `LEAN_NUM_THREADS=1 /mnt/HC_Volume_106379410/orchestrator-tools/inp_lake_build.sh /root/code/KAM-inp-w47 KAM.Weighted.Projections`

Exit 0, no warnings:

```text
[inp-gate] slot 1 acquired 04:32:56 for KAM.Weighted.Projections
Build completed successfully (3158 jobs).
```

This is a targeted Lake job-graph result, not a request to rebuild 3158 modules. A timestamp marker made before the build and `find .lake/packages/mathlib/.lake/build -type f -newer .lake/abi-scratch/w47-mathlib-marker -print` found no modified Mathlib build artifacts.

2. `LEAN_NUM_THREADS=1 nice -n 5 lake env lean .lake/abi-scratch/W47Audit.lean`

Exit 0, no warnings. The probe contains the two fresh-name exact-signature applications described above and `#print axioms` for every public declaration. Exact output:

```text
'KAM.Weighted.projMode' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Weighted.truncate' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Weighted.modeAverage' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Weighted.projMode_eq_fourierSeries' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Weighted.modeAverage_eq_projMode' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Weighted.projections' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Weighted.truncation_tail' depends on axioms: [propext, Classical.choice, Quot.sound]
```

3. `LEAN_NUM_THREADS=1 nice -n 5 lake env leanchecker --verbose KAM.Weighted.Projections`

One invocation, exit 0. Exact output:

```text
replaying KAM.Weighted.Projections
```

4. `LEAN_NUM_THREADS=1 nice -n 5 sh scripts/lint_sources.sh`

Exit 1 solely for the allowed generated-root exception; all remaining checks pass. Exact output:

```text
KAM.lean is out of date; run scripts/gen_root_imports.py
check_lean_modules: PASS (395 Lean files, 0 comparator configurations)
FROZEN-ANCHOR GUARD OK
ABI HASHES OK (144 frozen declarations)
```

5. `git diff inp...HEAD -- KAM/Frozen manifest KAM.lean README.md`: exit 0, empty output. `git diff --check inp...HEAD`: exit 0, empty output. `wc -l KAM/Weighted/Projections.lean`: `176`. Forbidden-token scan (`sorry`, `admit`, `axiom`, `unsafe`, `opaque`, resource overrides, EuclideanSpace): no matches (rg exit 1). Header, module command, public dependency import, module docstring, exposed public section: present. The two ordinary tactic imports are implementation imports, as permitted by the module convention.

## Notes, defects and closeout

- Expected integration note: generated `KAM.lean` is stale, explicitly allowed by the package brief. The auditor did not regenerate it.
- Source-preserving note at Projections lines 112–116: `hK : 0 ≤ K` is unused, silenced by `have _ := hK`. The inequality in fact holds for negative K too, but the binding source signature intentionally keeps K≥0. No change requested.
- Suspected blueprint/source defects: none newly found in the W4-7 surface. Existing design-audit observations about flow reality, sharp-norm attribution and unrelated blueprint wording do not establish a defect in this module. No pinned-PDF re-audit or broader I/N/P theorem closure is claimed.
- Deviations introduced by this auditor: none. No implementation edits or frozen/manifest changes. The sole persistent authored file is this report; temporary probe/log/marker files are removed after their receipts are recorded.

Closeout: every new named declaration classified; no material open finding; signature fidelity, definition meaning, proof review, axioms and kernel replay PASS; targeted build clean; hygiene accepted subject only to the documented generated-root exception. This verdict is scoped to W4-7, not closure of any I/N/P frozen theorem or entire blueprint node's vector/sharp extensions.
