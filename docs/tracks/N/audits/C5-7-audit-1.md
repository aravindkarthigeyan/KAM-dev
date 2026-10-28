# C5-7 independent package audit 1

**Verdict: PASS WITH NOTES — C5-7 is ready for integration.** No mathematical, statement-fidelity, definition, or import-quarantine defect was found. This package proves infrastructure node `bpN:p5:adjoint`; it has no provider export or frozen theorem anchor to seal. Accordingly no I/N/P headline or frozen anchor is declared closed by this audit. Notes concern the expected generated-root lint failure and an auditor process-control deviation recorded below.

Date: 2026-10-28. Audited worktree: `/root/code/KAM-inp-c57`. HEAD: `bb74a5bf759bbb43d18370d03e2c6eac66b03051`. Observed comparison refs: `inp=dede91dd29b564d9f3595fd42f8ae09f5b62c5e7`, `inp-w48=d39016353e1a2d78546ffba22e8d4d3f4b6a6810`.

## Scope and authorities

Read AGENTS.md, PLAN.md, DECISIONS.md, `/root/code/KAM-inp/.drafts/briefs/inp-audit-package.md`, the C5-7 handoff and its AUDIT FOCUS, the C5-7 design row/proof plan/Appendix A, both PART145 design audits and the binding audit-2 notes, blueprint-N Part 5's setting and adjoint statement/proof, the relevant track-N statement context, and the actual weighted/canonical definitions and bracket interface.

`git diff inp...HEAD` contains three additions: `Canonical/Adjoint.lean`, `Weighted/Algebra.lean`, and `Weighted/Bracket.lean`. Git warns that there are multiple merge bases and uses `53fd5275a5e6b56352932d45d6237d4228c1f9a0`. As expressly required by the handoff, the audit scope is `git diff inp-w48...HEAD -- KAM/Canonical/`: exactly **KAM/Canonical/Adjoint.lean**, 274 lines. W4-8 is an inherited prerequisite, not re-audited here. Its exported bracket type and its use in the induction were inspected.

The user-specified report destination in this worktree overrides the generic brief's main-worktree destination. No repository file except this report was edited; temporary probes/rendering were confined to `.lake/abi-scratch/` and removed. No state-changing git command was used.

## Declaration inventory

All names below are in `KAM.Canonical`. Line locators refer to `KAM/Canonical/Adjoint.lean`.

| Node / proof obligation | Declaration | Verdict | Reason |
|---|---|---|---|
| Scalar Fourier linearity | `coeff_const_mul` (41) | PASS | Literal coefficient of `c*u`; holds for every total scalar function through constant linearity of the integral. No integrability premise is smuggled in. |
| Scalar class closure | `inClass_const_mul` (53) | PASS | Holomorphy and period-one shifts on the same domain. |
| Scalar bound closure | `wbound_const_mul` (58) | PASS | Propagates summability and multiplies the bound by `‖c‖`; no sign restriction on M is needed. |
| `stepN:p5:ad-step`, sign | `adPow_succ_eq_neg` (76) | PASS | Correct recursion `{ad^i u,φ}=-{φ,ad^i u}`; same angle-first bracket convention as Setting. |
| `stepN:p5:ad-step`, arithmetic | `step_const_le` (83) | PASS | The two positive denominator bounds give `2h²/(eρσ(h+1+i))`; no restriction on i beyond its natural type is needed. |
| Step-factor definition | `stepConst` (119) | PASS | Literal total arithmetic expression, classified below. |
| Step-factor sign | `stepConst_nonneg` (122) | PASS | Only the numerical sign premises needed to multiply inequalities. |
| `stepN:p5:ad-setup`, induction | `adjoint_induction` (128) | PASS | Gives class and bound for every i≤h at radii r−iρ/h, s−iσ/h. Extra Φ,U≥0 are local numerical helper premises, derived before use in the public target. |
| `stepN:p5:ad-product` | `prod_stepConst` (168) | PASS | Product of q_k equals `(2h²/(eρσ))^h h!/(2h)! Φ^h`; valid also at h=0 and arbitrary real arithmetic inputs. |
| Factorial lower bound | `factorial_ge` (194) | PASS | `(N/e)^N≤N!` directly from the exponential-series term bound, including N=0. |
| `stepN:p5:ad-product`, normalized bound | `final_estimate` (205) | PASS | Cancels h! and applies the lower bound for (2h)!; yields precisely `(e(2Φ/(ρσ))/4)^h U`. |
| `bpN:p5:adjoint` | `adjoint_bound` (235) | PASS | Exact design signature; both required estimates and class conclusion, same premises and losses, no added sign/nonempty/dimension premise. |

The scalar and numerical lemmas are elementary proof helpers for the named blueprint steps, not substituted versions of a stronger source theorem. There are no conclusion-shaped hypotheses, hidden analytic estimates, new instances, or bundled proof assumptions.

## Statement and proof checks

The declaration signature equals Appendix A at `docs/tracks/N/design/PART145-LEAN-DESIGN.md:1044–1055` after whitespace removal. An independent scratch restatement extracted from that appendix elaborated with the body

```lean
adjoint_bound hφ hu hbφ hbu hρ hρr hσ hσs hr hs hh
```

Both directions of the elaborated type comparison succeeded:

```lean
example : type_of% @auditSignature := @adjoint_bound
example : type_of% @adjoint_bound := @auditSignature
```

These are infrastructure-signature/application checks. The brief's frozen-provider equality and frozen seal-copy probes are inapplicable because C5-7 has neither a frozen anchor nor a provider.

Blueprint correspondence: `blueprint-N/parts/p5-canonical-maps.tex:141–156`. The proof fixes h≥1, κ=ρ/h and λ=σ/h, and inducts with i≤h. At each successor, κ<r−iκ and λ<s−iλ follow from the final positive radii; the larger φ-domain supplies both bracket margins. Antisymmetry changes only the sign, removed by scalar norm one. Products supply h!/(2h)! exactly. The final scalar multiple is the actual complex inverse factorial, with norm the positive real inverse factorial.

For nonempty D, a point of D lies in both positive action neighborhoods; WBound and the nonnegative coefficient sum imply Φ,U≥0. For D=∅ every action neighborhood is empty and all WBound conclusions are vacuous; the class conclusion is still explicitly supplied by the induction using zero bounds. This covers arbitrary real Φ,U without adding hypotheses to the target. Dimension n=0 is allowed throughout; there is no impossible coordinate witness. No exchange of action supremum and Fourier sum is used. The result concerns the ordinary WBound norm, not the separately deferred sharp norm or extended Part-11 theorem.

## Definition classification and imports

The sole new definition is `stepConst Φ ρ σ h k = 2*h²*Φ/(exp(1)*ρ*σ*(h+1+k))`. It is an exposed, noncomputable-section arithmetic definition on its entire real/natural carrier. Lean's total division specifies zero-denominator values; the bound induction only uses ρ,σ>0 and h≥1, so no exceptional value supplies a proof shortcut. `prod_stepConst` is an algebraic identity valid even on those exceptional inputs. No new abbrev, structure, norm, derivative, bracket, or replacement Hamiltonian is introduced.

Inherited objects were checked against their bodies: `polyNbhd` is the actual max-norm tube, `InClass` is holomorphy plus period-one shifts, `coeff` is the real-torus Fourier integral, and WBound includes genuine coefficient summability along with the sum bound. Thus the proof never relies on the junk value of a nonsummable tsum. `adPow` iterates the genuine Fréchet Poisson bracket in the documented order. Relevant frozen definitions inspected: HamiltonianVectorFieldC, ActionNbhd, ComplexStrip.

A recursive source-import traversal found 37 KAM modules, **zero providers and zero frozen theorem modules**. Consequently there is no imported DRAFT_SORRY theorem (nor a SEALED theorem requiring a manifest-state exception). The direct imports are Weighted.Bracket, Canonical.Setting and Mathlib. Audit-2's triple-product flow transport, optional sharp characterization, and general consumer wording do not enter C5-7.

## Validation receipts

Commands ran in `/root/code/KAM-inp-c57`. The explicit build, probe and replay invocations each used `LEAN_NUM_THREADS=1` and `nice -n 5` (the build wrapper supplies nice). No resource-budget override, clean, cache download or package mutation was used.

1. Targeted gated build:

```sh
LEAN_NUM_THREADS=1 /mnt/HC_Volume_106379410/orchestrator-tools/inp_lake_build.sh /root/code/KAM-inp-c57 KAM.Canonical.Adjoint
```

Exit 0:

```text
[inp-gate] slot 1 acquired 04:17:55 for KAM.Canonical.Adjoint
Build completed successfully (3166 jobs).
```

2. Scratch checks:

```sh
LEAN_NUM_THREADS=1 nice -n 5 lake env lean .lake/abi-scratch/C57Audit.lean
```

Exit 0; the second probe included the appendix extraction, both type comparisons, the explicit application restatement and all 11 `#print axioms` checks. The mechanical whitespace comparison printed `Signature equals Appendix A modulo whitespace: True`. Exact axiom output:

```text
'KAM.Canonical.coeff_const_mul' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Canonical.inClass_const_mul' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Canonical.wbound_const_mul' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Canonical.adPow_succ_eq_neg' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Canonical.step_const_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Canonical.stepConst_nonneg' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Canonical.adjoint_induction' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Canonical.prod_stepConst' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Canonical.factorial_ge' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Canonical.final_estimate' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Canonical.adjoint_bound' depends on axioms: [propext, Classical.choice, Quot.sound]
```

3. Kernel replay, one invocation for the only scoped module (it is the lemma module, with no separate provider):

```sh
LEAN_NUM_THREADS=1 nice -n 5 lake env leanchecker --verbose KAM.Canonical.Adjoint
```

Exit 0, output:

```text
replaying KAM.Canonical.Adjoint
```

4. Lint:

```sh
LEAN_NUM_THREADS=1 nice -n 5 sh scripts/lint_sources.sh
```

Exit 1, solely for the explicitly permitted generated-root mismatch:

```text
KAM.lean is out of date; run scripts/gen_root_imports.py
check_lean_modules: PASS (390 Lean files, 0 comparator configurations)
FROZEN-ANCHOR GUARD OK
ABI HASHES OK (144 frozen declarations)
```

All other lint checks passed. KAM.lean was left untouched as required.

**Auditor process-control deviation:** an earlier `sh scripts/lint_sources.sh` was started asynchronously without the explicit thread/nice environment. Inspection subsequently showed its ABI helper invokes `lake env lean`; that internal invocation may have overlapped a scratch probe. This fails the intended strict serialization discipline for that first lint run, and its internal Lean thread count was not controlled by the command. It returned the same expected lint diagnostics. The final lint invocation above was rerun alone with one thread and inherited nice priority, after the build, probes and replay had all exited. No source or proof was changed in response, and no mathematical check relies on an interrupted or failed Lean elaboration.

5. Source hygiene and protected paths:

```sh
wc -l KAM/Canonical/Adjoint.lean
rg -n '\b(sorry|admit|axiom|unsafe|opaque)\b|set_option|EuclideanSpace|Provider|Frozen.*Theorems' KAM/Canonical/Adjoint.lean
git diff --check inp-w48...HEAD -- KAM/Canonical/
git diff inp...HEAD -- KAM/Frozen manifest KAM.lean README.md
```

Respectively: `274 KAM/Canonical/Adjoint.lean`; no matches (rg exit 1); no whitespace errors (exit 0); empty protected-path diff (exit 0, only the multiple-merge-base warning noted above). Module header, module declaration, public interface imports, docstring and public/exposed section are present. No heartbeat, recursion-depth or synthesis-budget override appears in the audited module.

## Pinned source, defects, uncertainties and closure boundary

Visually inspected Pöschel 1993 printed p.215, PDF page 30 (one-based), from `sources/incoming-N/poschel1993_gdz.pdf`; SHA-256 verified as `27568ec63af069ab6d6c02e0327aa2d822998be47888f20dea0c6418552dc869`. Its loss subdivision, factor 1/(h+i), and h!/(2h)! product agree with the blueprint and Lean proof. The source then relaxes the normalized estimate to η^h; this proof retains the sharper `(eη/4)^h` obtained at the preceding factorial comparison. That is a valid strengthening, not a changed input or suspected erratum.

No suspected pinned-source or blueprint defect was found in this scope. No prover deviation or default-heartbeat design signal was found. The only auditor deviation is the initial lint scheduling noted above. Frozen theorems, W4-8 proof closure, optional sharp variants, composition/flow consumers, and all headline assemblies remain outside this audit's closure claim.
