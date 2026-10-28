# I-2 independent audit 1

Audited worktree: `/root/code/KAM-inp-i2`. Package HEAD: `76bc8b47e6b205619050fde1e151d0e862ab0df2`; comparison ref `inp`: `c0a9c4d835f7d5ddb6146517e56dff3363bd4a45`; merge base: `441fed0cf02e55611c521d5f1e86f3f04f27c2c2`. Review used `git diff inp...HEAD`: exactly one new file, `KAM/Iso/Conversion.lean` (223 lines). The untracked prover handoff was read and preserved. Report destination follows the user's explicit worktree instruction, overriding the generic brief's main-worktree destination.

## Verdict

**PASS WITH NOTES for I-2 infrastructure.** No material statement, carrier, premise, symplectic-factor, or determinant error found. This package supplies no provider and seals no frozen anchor. Provider/frozen type equality and seal-body probes are therefore not applicable; in particular this is not a new seal of I-KEPLER or a proof of I-HEAD/I-R3BP. The previously sealed I-KEPLER anchor is unchanged.

Notes: a false explanatory parenthesis about zero-action values; an intentional stronger total-division identity than the blueprint's punctured-domain identity; repository lint failures inherited outside the package diff. See below for precise scope and receipts.

## Declaration review

Names below are in `KAM.Iso`; line numbers refer to `KAM/Iso/Conversion.lean`.

| Blueprint node / role | Declaration (line) | Verdict | Reason |
|---|---|---|---|
| conversion-map | `periodOneMap` (47) | PASS | Exactly `(2πθ,I/(2π))`; dimension-general statement includes dimension two. |
| conversion-map | `periodOneMapC` (48) | PASS | Same entire complex-linear map, with real scalars embedded in ℂ. |
| linear presentation | `periodOneCLM` (52) | PASS | Continuous linear presentation of the real map. |
| inverse presentation | `periodOneInvCLM` (57) | PASS | Exactly `(θ/(2π),2πI)` on the whole carrier. |
| presentation helper | `periodOneMap_eq_clm` (61) | PASS | Definitional equality, no premises. |
| inverse helper | `periodOneInvCLM_periodOneMap` (63) | PASS | Left inverse on every phase point; converse independently probed. |
| real/complex compatibility | `periodOneMapC_phaseToC` (73) | PASS | Commutes with the existing entrywise complexification. |
| conversion (a), cv-sympl | `periodOneMap_symplectic` (78) | PASS | Frozen symplectic form preserved with factor **1** on all phase space, all dimensions. Blueprint's opposite sign for the form cancels on both sides, as the design prescribes. |
| conversion (a), cv-sympl | `periodOneMap_hamiltonianVectorField` (88) | PASS | Genuine derivative chain rule with differentiability only at the image point; `periodOneMap` itself is linear, so applying it to the vector field is applying its derivative. No time rescaling. |
| conversion (a), cv-sympl | `periodOneMap_hasDerivAt_iff` (114) | PASS | Both implications, using the inverse linear map for the reverse direction. Pointwise differentiability is sufficient. |
| conversion (b), cv-ham | `keplerRotH_comp_div` (129) | PASS WITH NOTES | Exact parameter conversion; stronger totalized identity at zero is explicitly authorized by design §2.1 and Appendix A. Docstring parenthesis is inaccurate. |
| conversion (c), cv-border | `frequencyMap_comp_div` (141) | PASS | Both explicit frequency vector and factor `(2π)⁻¹`; positivity premise is the blueprint's real positive action domain. |
| conversion (d), cv-border | `keplerBorder_conversion` (164) | PASS | Diagonal congruence with two factors `diag((2π)⁻¹,(2π)⁻¹,1)`. Parameter `L>0`, output action `2πL`, is equivalent to blueprint's `L=I₁/(2π)`. |
| conversion (d), cv-border | `borderedHessian_conversion` (175) | PASS | Frozen bordered Hessian, intended index equivalence, determinant exactly `3κΩ²/I₀⁴`. No positivity restriction on κ or Ω for this identity. |
| nondeg, nd-domain, nd-concl | `nondeg_period_one` (190) | PASS | Holomorphic on the full complex neighborhood, positive real part there, positive determinant at every real point there. Pointwise `2r₀≤J₀` expresses the blueprint's uniform lower bound without an infimum/nonempty-set convention. |

All eight planned theorem signatures match the design Appendix A after whitespace normalization, including binder order and all premises/conclusions. The three additional theorem helpers above have direct structural content and no hidden premises. No new theorem assumes a proof step or a conclusion-shaped hypothesis. There are no constants chosen with enlarged dependence.

`nondeg_period_one` packages the neighborhood conclusion. The other clauses of blueprint-I `p6-kepler.tex:157–158` are supplied by already imported `differentiableOn_keplerRotH`, `keplerRotH_real`, and `det_borderedHessian_keplerRotH`. The audit probe checks the global off-zero holomorphy, realness, and exact specialization `det=3/I₀⁴`. Thus the mathematical node is covered across the module's imported API; the exact formula is not a conjunct of `nondeg_period_one` itself. Its positive-determinant conjunct implies the frozen I-HEAD `hiso` nonzero condition.

## Definition classification

Exactly four new definitions, no abbrevs, structures or instances:

- `periodOneMap`: intended entire real scaling map, no branch or fallback, valid even in dimension zero.
- `periodOneMapC`: intended entire complexification of that scaling map, no branch or fallback.
- `periodOneCLM`: same real scaling map as a continuous linear map.
- `periodOneInvCLM`: its intended inverse on the entire carrier.

All appear inside `@[expose] public noncomputable section`. The fixed denominator `2π` is nonzero; none introduces singular or junk values. The already-existing `keplerRotH` has the documented total-division extension at zero; the new definitions do not change it.

## Total division and documentary defects

**N1 — inaccurate docstring, nonblocking.** `Conversion.lean:127–128` says “both sides vanish together at `I₀ = 0`”. Only the inverse-square terms vanish under Lean's division convention. Both Hamiltonians instead equal `-(Ω/(2π))*I₁`, generally nonzero. For example κ=Ω=1 and `I=![0,1]` give `-1/(2π)≠0`; independently elaborated in the audit probe. Replace the parenthesis with “the inverse-square terms vanish at `I₀ = 0`, and both sides equal `-(Ω/(2π))*I₁`”. The same inaccurate parenthesis already occurs in the design signature, `KEPLER-LEAN-DESIGN.md:1394`; this is not a pinned-source erratum.

**N2 — intentional extension, nonblocking.** Blueprint-I `p6-kepler.tex:63` says the zero value “is junk and is never used”, and line 126 restricts conversion (b) to `I₁≠0`. The design explicitly strengthens the algebraic conversion to all `I` (`KEPLER-LEAN-DESIGN.md:122,1394–1397`). The proof's `I 0=0` branch verifies only the totalized identity; it does not assert holomorphy or a Hamiltonian derivative at the pole. Uses in `frequencyMap_comp_div` and `borderedHessian_conversion` rewrite functions globally, but their evaluations have `0<I 0`; derivatives come from the valid off-pole results in I-1. `nondeg_period_one` separately proves positive real part before invoking off-pole holomorphy. There is no analytic or physical use of the singular value. This stronger algebraic identity is acceptable; the blueprint's literal “never used” can be clarified to mean never used as a physical/analytic Hamiltonian value.

No suspected pinned-source mathematical defect was found in this algebraic conversion package. No frozen-statement defect was found. No code deviation was introduced by the auditor.

## Validation receipts

The final validation runs were sequential, with `LEAN_NUM_THREADS=1`. Direct Lean/checker runs used `nice -n 5`; the build gate supplies that priority itself. An initial lint invocation lacked the explicit thread/priority prefix, so lint was rerun with the required prefix; the initially queued build was stopped before it acquired a slot. No auditor-owned Lean jobs ran concurrently. Other campaign processes were not controlled or terminated.

### Targeted build

```sh
LEAN_NUM_THREADS=1 /mnt/HC_Volume_106379410/orchestrator-tools/inp_lake_build.sh /root/code/KAM-inp-i2 KAM.Iso.Conversion
```

Exit **0**. Output:

```text
[inp-gate] slot 2 acquired 00:57:30 for KAM.Iso.Conversion
Build completed successfully (9070 jobs).
```

This is the targeted Lake check against the existing build overlay, not a clean rebuild.

### Axioms and independent probes

```sh
LEAN_NUM_THREADS=1 nice -n 5 lake env lean .lake/abi-scratch/I2Audit.lean
```

Final exit **0**, no errors or warnings. Exact axiom output:

```text
'KAM.Iso.periodOneMap_eq_clm' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.periodOneInvCLM_periodOneMap' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.periodOneMapC_phaseToC' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.periodOneMap_symplectic' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.periodOneMap_hamiltonianVectorField' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.periodOneMap_hasDerivAt_iff' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.keplerRotH_comp_div' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.frequencyMap_comp_div' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.keplerBorder_conversion' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.borderedHessian_conversion' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.nondeg_period_one' depends on axioms: [propext, Classical.choice, Quot.sound]
```

No `sorryAx` or additional axiom occurs. Two earlier versions of the scratch probe exited 1 with `No goals to be solved` from redundant tactics following a goal-closing `simp`; the final version below removes them. These were auditor probe errors, not package failures.

Exact successful probe contents (retained here because the scratch file is deleted after checking):

```lean
import KAM.Iso.Conversion
open KAM KAM.Iso KAM.Kepler KAM.Planetary Real Set
#print axioms KAM.Iso.periodOneMap_eq_clm
#print axioms KAM.Iso.periodOneInvCLM_periodOneMap
#print axioms KAM.Iso.periodOneMapC_phaseToC
#print axioms KAM.Iso.periodOneMap_symplectic
#print axioms KAM.Iso.periodOneMap_hamiltonianVectorField
#print axioms KAM.Iso.periodOneMap_hasDerivAt_iff
#print axioms KAM.Iso.keplerRotH_comp_div
#print axioms KAM.Iso.frequencyMap_comp_div
#print axioms KAM.Iso.keplerBorder_conversion
#print axioms KAM.Iso.borderedHessian_conversion
#print axioms KAM.Iso.nondeg_period_one

example {n : ℕ} (z : Phase n) : periodOneMap (periodOneInvCLM n z) = z := by
  have h : (2 * π : ℝ) ≠ 0 := by positivity
  ext i <;> simp [periodOneMap, periodOneInvCLM] <;> field_simp
example (κ Ω : ℝ) (G : ℂ) :
    keplerRotH κ Ω (fun i => (![0, G] : Fin 2 → ℂ) i / ((2 * π : ℝ) : ℂ)) =
      -(Ω / (2 * π) : ℝ) * G := by
  rw [keplerRotH_comp_div]
  simp [keplerRotH]
example : keplerRotH ((2 * π)^2) (1 / (2 * π)) (![0, 1] : Fin 2 → ℂ) ≠ 0 := by
  simp [keplerRotH, Real.pi_ne_zero]
example (I : Fin 2 → ℝ) (hI : 0 < I 0) :
    (borderedHessian (keplerRotH ((2 * π)^2) (1 / (2 * π))) I).det = 3 / I 0 ^ 4 := by
  rw [det_borderedHessian_keplerRotH _ _ hI]
  have h : (2 * π : ℝ) ≠ 0 := by positivity
  field_simp
example : DifferentiableOn ℂ (keplerRotH ((2 * π)^2) (1 / (2 * π))) {I | I 0 ≠ 0} :=
  differentiableOn_keplerRotH _ _
example (I : Fin 2 → ℝ) :
    (keplerRotH ((2 * π)^2) (1 / (2 * π)) (fun i => (I i : ℂ))).im = 0 := by
  rw [keplerRotH_real]
  rfl
```

### Kernel replay

```sh
LEAN_NUM_THREADS=1 nice -n 5 lake env leanchecker --verbose KAM.Iso.Conversion
```

Exit **0**. Exact output:

```text
replaying KAM.Iso.Conversion
```

One invocation, naming the complete new lemma module; no provider module exists in this package.

### Repository lint

```sh
LEAN_NUM_THREADS=1 nice -n 5 sh scripts/lint_sources.sh
```

Exit **1**. Exact diagnostic output:

```text
Lean lines over 100 characters:
/root/code/KAM-inp-i2/KAM/Kepler/Orbit.lean:36:103
/root/code/KAM-inp-i2/KAM/Kepler/Orbit.lean:38:107
/root/code/KAM-inp-i2/KAM/Kepler/Orbit.lean:57:102
/root/code/KAM-inp-i2/KAM/Kepler/Orbit.lean:199:105
KAM.lean is out of date; run scripts/gen_root_imports.py
check_lean_modules: PASS (272 Lean files, 0 comparator configurations)
FROZEN-ANCHOR GUARD OK
ABI HASHES OK (144 frozen declarations)
```

The stale generated root is the brief's expected exception. The four `Orbit.lean` violations are additional failures, not covered by that exception: the file is byte-identical to the triple-dot merge base and absent from the package diff. They must not be described as a clean repository lint pass. Current `inp` has already shortened those lines; this package is based on an earlier snapshot. The new Conversion module itself passes module, length, line-width, forbidden-token and frozen/quarantine checks. No source was edited to conceal inherited failures.

### Source and change hygiene

```sh
git diff inp...HEAD --stat
git diff inp...HEAD -- KAM/Frozen manifest KAM.lean README.md
git diff --check inp...HEAD
rg -n 'sorry|admit|axiom|unsafe|opaque|set_option' KAM/Iso/Conversion.lean
wc -l KAM/Iso/Conversion.lean
```

Stat: one file, 223 insertions. Protected-path diff: empty, exit 0. Diff whitespace check: empty, exit 0. Forbidden-token search: no matches (search exit 1). Line count: `223 KAM/Iso/Conversion.lean`. Copyright, `module`, public imports, module docstring and public exposed section are present. Imports are Mathlib, frozen **definitions**, `KAM.Kepler.Basic`, and `KAM.Iso.KeplerHamiltonian`; the latter reaches `KAM.Iso.Kepler`, which proves algebra directly without importing a frozen theorem/provider. No provider quarantine violation was introduced.

### Limits and handoff

Only this report was added by the auditor outside `.lake/abi-scratch/`; no tracked source, frozen file, manifest or generated root was changed, and no state-changing git command was used. The audit did not reopen the independent proof audits of existing KEP-1/I-1 modules or re-audit Chi05 beyond the blueprint/design conversion scope. This verdict concerns the package's mathematical and Lean infrastructure, not proof closure of the downstream dynamical anchors.

