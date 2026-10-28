# I-1 independent audit 1

Audit date: 2026-10-28. Worktree: `/root/code/KAM-inp-i1`.
Reviewed HEAD `080ab0dd74a55bcfb90c504bee7b0544723c73c9` against
`inp` at `31142e7612f2f88ae5f398fa250a8de6d9b566bd`, using `git diff inp...HEAD`.
The diff adds only `KAM/Iso/KeplerHamiltonian.lean` (188 lines).

## Verdict and scope

**PASS WITH NOTES for package I-1**. All required applicable validation passed,
with the expressly permitted generated-root lint exception.
The two nodes `bpI:p6:kep-ham` and `bpI:p6:kep-border` faithfully implement their
blueprint and design signatures. No mathematical defect or added hard-step premise
was found. The expected generated-root update is left to the orchestrator.

**Frozen-anchor verdict: not applicable.** I-1 introduces no provider and seals no
anchor. I-KEPLER (`KAM.Iso.kepler_bordered_det`) is the existing I-0 algebraic gate;
this package uses its infrastructure theorem `KAM.Iso.keplerBorder_det`, not the
frozen theorem or its provider. This audit does not recertify I-0's seal and does
not establish I-G1, I-HEAD or I-R3BP. Provider-to-frozen type and seal-copy probes
are consequently inapplicable; design-signature probes were run instead.

Read: `AGENTS.md`, `docs/PLAN.md`, `docs/DECISIONS.md`, the supplied audit brief,
`docs/tracks/I/audits/I-1-handoff.md`, `docs/tracks/I/statement.md`, track-I source
transcriptions, blueprint-I Part 6, the four track-I frozen theorem files, the
three relevant frozen definitions, and design §2.1 / §7 row I-1 / the I-1 proof
sketch. The authoritative signature slice is lines 649–670 of
`/root/code/KAM-inp-design-kep/.drafts/design/KeplerSignatures.lean`;
whole-file SHA-256:
`39f557a4ca7324443508351a3600f0a363e2db726a11af0d6cc58e793d521370`.

## Declaration review

Names below are in namespace `KAM.Iso`; line numbers refer to the added module.

| Node | Declaration (line) | Verdict | Reason / note |
|---|---|---|---|
| kep-ham | `keplerRotH` (36) | PASS | Literal complex rational Hamiltonian, real parameters κ, Ω, no sign assumptions. |
| kep-border | `finThreeEquivSumUnit` (39) | PASS | Intended `Fin 3 ≃ Fin 2 ⊕ Unit`; both definition and signature match the design. |
| kep-border, auxiliary | `finThreeEquivSumUnit_symm_inl_zero` (44) | PASS | Additional proved simp lemma identifying the first index. |
| kep-border, auxiliary | `finThreeEquivSumUnit_symm_inl_one` (47) | PASS | Additional proved simp lemma identifying the second index. |
| kep-border, auxiliary | `finThreeEquivSumUnit_symm_inr` (50) | PASS | Additional proved simp lemma identifying the border index for every `Unit` value. |
| kep-ham | `differentiableOn_keplerRotH` (56) | PASS | Complex differentiability on precisely `{I | I 0 ≠ 0}`; denominator proved nonzero. |
| kep-ham | `keplerRotH_real` (71) | PASS | Exact real-value identity for every real action, stronger than the blueprint's nonzero-action restriction. |
| kb-grad, private helper | `hasDerivAt_kepler_profile` (78) | PASS | Power/quotient rule at nonzero real coordinate; no derivative assumed. |
| kb-real, private helper | `re_keplerRotH_real` (89) | PASS | Global real-part identity, proved from the public real-value theorem. |
| kb-grad, private helper | `hasFDerivAt_keplerRotH_real` (96) | PASS | Genuine Fréchet derivative assembled from coordinate projections. |
| kep-border / kb-grad | `frequencyMap_keplerRotH` (114) | PASS | Frozen frequency map equals `(κ/I₀³, −Ω)` for `0 < I 0`, all real κ, Ω. |
| kb-hess, private helper | `hasFDerivAt_frequencyMap_keplerRotH` (123) | PASS | Derivative of the explicit comparison function, proved by quotient and product-coordinate rules. |
| kep-border / kb-hess | `fderiv_frequencyMap_keplerRotH` (154) | PASS | All matrix entries of the real derivative: only `(0,0)` is `−3κ/I₀⁴`. |
| kep-border / kb-entries | `borderedHessian_keplerRotH` (166) | PASS | Exact frozen bordered Hessian, with the prescribed reindexing and positive-action subtype. |
| kep-border / kb-det | `det_borderedHessian_keplerRotH` (179) | PASS | `3κΩ²/I₀⁴`, determinant invariant under simultaneous row/column reindexing; uses I-0's formula. |

All eight design declarations have identical signatures after whitespace removal;
both definitions also have identical bodies after whitespace removal. The six
public design theorem signatures were copied to a scratch probe and proved by
applying the corresponding export with every explicit binder in order. Both
definition bodies were independently checked by `rfl`. The three extra simp
lemmas are elementary indexing facts, not substituted blueprint conclusions.
There are no hidden section variables, added instances, conclusion-shaped
hypotheses, existential constants or changed constant dependence.

## Definitions, carriers and proof fidelity

There are exactly two new definitions and no new abbreviations or structures.

* `keplerRotH`: the intended formula on all of `Fin 2 → ℂ`, interpreted with
  Lean's total division. At `I 0 = 0` it evaluates to `−Ω * I 1`; this is the
  explicitly documented extension at the classical singularity. No derivative or
  determinant claim relies on that value. The real-value identity remains true
  there, because the real and complex divisions agree under coercion. There is
  no conditional fallback or choice-based Hamiltonian.
* `finThreeEquivSumUnit`: an actual equivalence formed from the standard finite-sum
  equivalence and the unique `Fin 1 ≃ Unit`. Its inverse sends `inl 0`, `inl 1`,
  `inr ()` to `0`, `1`, `2`; the three simp lemmas verify this on the whole carrier.

`frequencyMap` is used literally as the derivative of the real part of the
complex Hamiltonian restricted to real points. Its derivative is computed using
an eventually-equal comparison on the open neighborhood `{J | 0 < J 0}`
(lines 157–163), so no default `fderiv` value at a singularity is being exploited.
The top-left bordered block is the derivative of that same frozen frequency map;
the two borders are the same gradient, with second entry `−Ω`, and the corner is
zero. The matrix is
`[[-3κ/I₀⁴, 0, κ/I₀³], [0,0,-Ω], [κ/I₀³,-Ω,0]]`.
Its determinant has positive sign `3κΩ²/I₀⁴`, consistently with I-0.
The ordinary Hessian may be singular; it is never inverted or assumed invertible.
No period-one conversion factor is introduced here; conversion belongs to I-2.

The actual project import closure has 20 modules and contains no path under
`KAM/Provider/` or `KAM/Frozen/**/Theorems/`. The omitted design import
`KAM.Kepler.Basic` is unused; this reduces dependencies without changing a contract.

## Validation receipts

Every audit Lean invocation was serialized and used `LEAN_NUM_THREADS=1` and
`nice -n 5`; the targeted build went through the required compile gate. Cached
build dependencies were reused; no clean, cache download or library-wide target
was requested.

### Targeted build

```text
LEAN_NUM_THREADS=1 /mnt/HC_Volume_106379410/orchestrator-tools/inp_lake_build.sh /root/code/KAM-inp-i1 KAM.Iso.KeplerHamiltonian
[inp-gate] slot 1 acquired 00:25:56 for KAM.Iso.KeplerHamiltonian
Build completed successfully (9066 jobs).
exit 0
```

### Signature, body and axiom probe

```text
LEAN_NUM_THREADS=1 nice -n 5 lake env lean .lake/abi-scratch/I-1-audit-1.lean
exit 0
```

Besides the six signature-application examples and two `rfl` body examples
specified above, this probe printed every new public theorem's axioms:

```text
'KAM.Iso.differentiableOn_keplerRotH' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.keplerRotH_real' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.frequencyMap_keplerRotH' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.fderiv_frequencyMap_keplerRotH' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.borderedHessian_keplerRotH' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.det_borderedHessian_keplerRotH' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.finThreeEquivSumUnit_symm_inl_zero' depends on axioms: [propext, Quot.sound]
'KAM.Iso.finThreeEquivSumUnit_symm_inl_one' depends on axioms: [propext, Quot.sound]
'KAM.Iso.finThreeEquivSumUnit_symm_inr' depends on axioms: [propext, Quot.sound]
```

### Kernel replay

```text
LEAN_NUM_THREADS=1 nice -n 5 lake env leanchecker --verbose KAM.Iso.KeplerHamiltonian KAM.Iso.Kepler
replaying KAM.Iso.Kepler
replaying KAM.Iso.KeplerHamiltonian
exit 0
```

### Repository lint and static hygiene

```text
LEAN_NUM_THREADS=1 nice -n 5 sh scripts/lint_sources.sh
KAM.lean is out of date; run scripts/gen_root_imports.py
check_lean_modules: PASS (263 Lean files, 0 comparator configurations)
FROZEN-ANCHOR GUARD OK
ABI HASHES OK (144 frozen declarations)
exit 1
```

The nonzero lint exit is solely the expected generated-root exception allowed
by the audit brief. No other lint failure was printed. Root regeneration remains
an orchestrator landing task; it was not performed in this read-only code audit.

`git diff inp...HEAD -- KAM/Frozen manifest KAM.lean README.md`: no output,
exit 0. `git diff inp...HEAD --check`: no output, exit 0.
The new file has copyright/license/authors, `module`, public interface imports,
a module docstring, and `@[expose] public noncomputable section`. Its 188 lines
are below 1500. A comment-masked scan found no `sorry`, `admit`, `axiom`, `unsafe`,
`opaque`, `EuclideanSpace` or `set_option`. No resource override was used.

## Uncertainties, errata and deviations

No suspected mathematical blueprint or source defect was found in the audited
nodes. The arithmetic is checked directly; source attribution was compared with
the repository's pinned-source transcriptions, not a fresh independent PDF audit.
No frozen definition or theorem appears wrong in the uses reviewed here.
The unrestricted real-value identity is a valid strengthening, already present
in the design. The three extra indexing lemmas and omitted unused import are
benign implementation additions/dependency reduction. No other deviation was
introduced. The report is the sole repository artifact written by this audit;
the scratch probe is removed after checks. No git state-changing command was run.
