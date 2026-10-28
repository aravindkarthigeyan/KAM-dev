# P1–4 independent package audit

Date: 2026-10-28. **Verdict: PASS WITH NOTES.** The period-conversion infrastructure is accepted for integration. No frozen anchor is proved or sealed by this package; “seal-ready” is therefore inapplicable. In particular this does not close N-HEAD-C or the later `qc_convert_tilde` obligation.

## Scope and authority

Audited worktree `/root/code/KAM-inp-p14`, HEAD `b4cf680d8b7c3dfd67ef5a9fd4d69c97775b4287`, against `inp` at `47df40ff1faae18143899dbf43220f9f0f46e416`, using `git diff inp...HEAD`. The complete delta is the new 382-line `KAM/Nekhoroshev/Interfaces/Period.lean`. The pre-existing untracked `P1-4-handoff.md` is audit input, not an audited source change.

Read AGENTS.md, PLAN, DECISIONS, the package audit brief, the handoff AUDIT FOCUS, the Part-1 period-conversion lemma and proof, Track-N statement/source-conversion notes, the PART145 design and both design audits, and the frozen definitions used in the actual types. Inspected the existing N-HEAD-C, N-QC and N-ZERO anchors for context. The user's explicit report destination overrides the brief's generic main-worktree destination. Only this report was added outside `.lake/abi-scratch/`; no source, frozen file, manifest or git state was changed.

The binding design-audit-2 F5 ruling is respected: P1–4 implements `Period` without `qc_convert_tilde`, with no premature QuasiConvex import. P1–3b owns that later extension. There is no provider export in this delta, so provider/frozen-type equality and proposed seal-body probes have no subject here. Instead all eight public theorem signatures were independently copied from design Appendix A and elaborated as examples using the implemented theorems.

## Declaration inventory

All names below are in `KAM.Nekhoroshev`; line numbers refer to `KAM/Nekhoroshev/Interfaces/Period.lean`. All rows implement `bpN:p1:period-convert`.

| Clause | Declaration (line) | Verdict | Reason |
|---|---|---|---|
| Setup | `periodLift` (53) | PASS | Literal `(2πθ,I)` on the entire real phase space. |
| Setup | `tildeH` (57) | PASS | Literal `2π H(φ/(2π),I)` with unchanged actions. |
| Setup | `tildeh` (61) | PASS | Literal complex scalar multiple `2π h`. |
| Setup | `tildef` (64) | PASS | Literal complex `2π f(φ/(2π),I)`. |
| Setup | `realHamiltonian_tilde` (192) | PASS | Exact equality for arbitrary h,f; real inclusion commutes with scaling. |
| (a) | `isSolutionOn_tilde_iff` (204) | PASS | Arbitrary H,U,J,z; actual frozen solution predicate, same time and action domain, both directions. |
| (b) | `frequencyMap_tildeh` (221) | PASS | Unconditional equality, including Lean's total derivative convention. |
| (b) | `fderiv_fderiv_realPart_tildeh` (231) | PASS | Unconditional real Hessian equality with factor 2π. |
| (b) | `tilde_hypotheses` (245) | PASS | All five conjuncts: QC, coordinate derivatives, complex Hessian, max-norm frequency lower bound, Euclidean frequency size. All factors and carriers agree. |
| (c) | `tildef_domain` (328) | PASS WITH NOTES | Correct anisotropic target: angle width 2πs, action neighbourhood width s, bound 2πε. hR,hs unused; acceptable below. |
| (d) | `tildef_periodic` (344) | PASS WITH NOTES | Exact 2π-integer shifts on the stated strip/action domain; uses actual frozen periodicity premise. hR,hs unused; acceptable below. |
| (e) | `tildef_fourier` (360) | PASS | Original period-one coefficients multiplied by 2π, radian character, actual HasSum conclusion. No analyticity/domain premises beyond the expressly required input convergence. |

A whitespace-normalized comparison of each public binder/type prefix against design Appendix A found **12/12 matches**, preserving binder order, implicitness, premises and conclusion. The design is the available embedded signature authority; the standalone `NPart145Signatures.lean` cited in the handoff is not a tracked file here. This audit does not claim to have independently read that absent file.

## Definition classification and proof review

There are four public definitions and one private definition, no new abbrevs or structures. The four public definitions are the literal intended objects on their whole carriers, not fallback extensions. `periodLiftCLE` (88) is the genuine continuous linear equivalence with inverse `(φ/(2π),I)`. Its two inverse identities use the proved positivity/nonvanishing of 2π. It agrees definitionally with `periodLift`; there is no hidden replacement phase space, norm instance or solution predicate.

Private scalar/cast lemmas, lift projections, derivative transport, differentiability equivalence, vector-field identity and derivative-of-curve equivalence were inspected. They establish the substantive chain-rule steps rather than taking them as premises. In particular differentiability in the frozen `IsSolutionOn` is transported explicitly; nondifferentiable H is not treated as a genuine solution merely because `fderiv` vanishes. The vector field becomes `(2π ∂I H, −∂θ H)`, so time is unchanged and actions really are unchanged. The action-displacement corollary in blueprint clause (a) is immediate by reduction of `periodLift`'s second component.

For `tilde_hypotheses`, QC retains the source max norm and Euclidean orthogonality; positivity, openness and real C² are preserved. The coordinate derivative bound retains orders 1–3 and its C³ guard. The complex Hessian bound is an operator bound on the original action neighbourhood, with complex C² preserved. There are no existential constants with enlarged dependence.

The domain substitution leaves the action component untouched. Periodicity comes from the periodicity field of `IsAnalyticPerturbation`, not an assumption that the conclusion is already periodic. `tildef_fourier` is stronger than the blueprint's analytic setting: it transports any convergent original series at the specified point. Its `hS` is exactly the input convergence explicitly allowed by blueprint line 186 (“whenever the Fourier series of f(·,I) converges to it”), not a substituted hard Fourier-reconstruction theorem. Reconstruction remains an external input when applying this transport lemma. The character identity cancels exactly one 2π; coefficient normalization remains the period-one unit-cube normalization.

All arguments permit n=0 without an invalid positive-dimensional witness. Empty domains and arbitrary total function arguments introduce no hidden fallback reliance.

## Warnings and documentation notes

1. **Accepted, no change required:** four unused-variable warnings at 328:71, 328:84, 344:73 and 345:5 concern hR,hs in the domain/periodicity theorems. The source/design setting explicitly supplies R,s>0, so retaining these interface binders is legitimate. The proofs happen to work more generally. Keep the agreed signatures; suppressing a linter globally or adding a new premise is unnecessary. If a warning-free build is desired later, locally referencing the existing proofs can silence the warnings without changing the statements. This audit does not require that cosmetic edit.
2. **LOW, pre-existing blueprint typo:** `blueprint-N/parts/p1-interfaces.tex:195`, `stepN:p1:pc-scalar`, says “(c)--(f) are ... the substitution”. The lemma enumerates only (a)–(e). Replace `(c)--(f)` with `(c)--(e)`. This does not affect a Lean statement or proof.

No suspected defect in a pinned mathematical source was discovered. The typo above is in the blueprint, not a claimed Pos93 erratum. No mathematical deviation was introduced by the package or auditor. This is a package proof audit, not a fresh independent PDF/source-transcription audit.

## Verification receipts

All audit Lean activity was sequential, with `LEAN_NUM_THREADS=1` and `nice -n 5`; no heartbeat, recursion-depth or synthesis-budget override was used. The compile-gate wait was allowed to complete. The targeted build replayed the already-built module; this was not a clean rebuild. Kernel replay below independently checks the compiled module.

**Targeted build:**

```sh
env LEAN_NUM_THREADS=1 /mnt/HC_Volume_106379410/orchestrator-tools/inp_lake_build.sh /root/code/KAM-inp-p14 KAM.Nekhoroshev.Interfaces.Period
```

Exit 0. Gate output: `[inp-gate] slot 1 acquired 01:51:29 for KAM.Nekhoroshev.Interfaces.Period`. Build output: `⚠ [2865/2865] Replayed KAM.Nekhoroshev.Interfaces.Period`, the four warnings listed above (`Variable name hR/hs is not explicitly referenced`), then `Build completed successfully (2865 jobs).` The gate executes `nice -n 5 lake build` internally.

**Design-signature elaboration and axioms:**

```sh
env LEAN_NUM_THREADS=1 nice -n 5 lake env lean .lake/abi-scratch/P14Audit.lean
```

Exit 0. Probe imported only `KAM.Nekhoroshev.Interfaces.Period`, opened Set/Metric and the namespace, copied all eight target signatures from design Appendix A as `example`s, and applied the corresponding actual theorem. It also printed every new public theorem's axioms. Scratch-only unused/unreachable tactic warnings occurred on redundant `apply ... <;> assumption` tails; no probe failed. Exact axiom output:

```text
'KAM.Nekhoroshev.realHamiltonian_tilde' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Nekhoroshev.isSolutionOn_tilde_iff' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Nekhoroshev.frequencyMap_tildeh' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Nekhoroshev.fderiv_fderiv_realPart_tildeh' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Nekhoroshev.tilde_hypotheses' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Nekhoroshev.tildef_domain' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Nekhoroshev.tildef_periodic' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Nekhoroshev.tildef_fourier' depends on axioms: [propext, Classical.choice, Quot.sound]
```

**Kernel replay:**

```sh
env LEAN_NUM_THREADS=1 nice -n 5 lake env leanchecker --verbose KAM.Nekhoroshev.Interfaces.Period
```

Exit 0. Exact output: `replaying KAM.Nekhoroshev.Interfaces.Period`. This is the sole new lemma module; no separate provider module exists in P1–4.

**Source lint:**

```sh
env LEAN_NUM_THREADS=1 nice -n 5 sh scripts/lint_sources.sh
```

Exit 1, solely the explicitly permitted generated-root mismatch. Exact output:

```text
KAM.lean is out of date; run scripts/gen_root_imports.py
check_lean_modules: PASS (328 Lean files, 0 comparator configurations)
FROZEN-ANCHOR GUARD OK
ABI HASHES OK (144 frozen declarations)
```

Accepted under audit brief hygiene item 5. The root was not regenerated because it is outside the auditor's edit authority.

**Static checks:** `git diff --check inp...HEAD` exited 0 with no output. `git diff inp...HEAD -- KAM/Frozen manifest KAM.lean README.md` exited 0 with no output. The file has 382 lines, the required copyright/module/public imports/docstring/public section, exposed definitions, and no forbidden proof escape or resource override. A recursive scan of the local KAM import closure found 21 modules and no provider or frozen-theorem import edge. Thus neither direct nor transitive quarantined dependencies enter this module.

All temporary audit probe files were removed after verification. Only the requested report was added by the audit; the handoff remains pre-existing and untouched.
