# P2-2 independent audit 1

Overall verdict: **PASS**.

Audited branch `k/p2-2`, HEAD `ee2d835`, on 2026-10-27, against `git diff main...HEAD`.
The package implements its single graph node with the exact binding Appendix A signature.
All six identities agree with the frozen definitions on their stated domains. No blocking,
major, or minor defect was found.

## Scope and node verdict

Read `AGENTS.md`, `docs/PLAN.md`, `docs/DECISIONS.md`, the audit/package/common briefs,
the handoff and AUDIT FOCUS, design §§0–2, §4, §5 and the relevant Appendix A,
the graph contract, the blueprint objects/agreement text, and the implementation and its
carrier/derivative/average inputs. No external mathematical source claim is needed here:
this is an identity audit against the actual frozen definitions and binding local design.

The branch diff contains `KAM/Torus/FrozenAgreement.lean` (213 lines) and one generated
root import in `KAM.lean`. The root generator's check passes. The auditor changed only
this report; temporary Lean probes were placed under `.lake/abi-scratch/` and removed.
The pre-existing untracked handoff was left untouched.

| Graph node | Lean declaration | Verdict | Reason |
|---|---|---|---|
| `bp:p2:frozen-agreement` | `KAM.Torus.frozen_agreement` (`KAM/Torus/FrozenAgreement.lean:187`) | PASS | Verbatim signature match to design Appendix A, lines 749–762; all six conjuncts proved. Matches `docs/graph/K/DEPGRAPH.md:5243` and `blueprint/parts/p2-aposteriori.tex:295–304`. |

All declarations below are in namespace `KAM.Torus`, in the same module.

| Item | Declaration and line | Verdict | Direct comparison |
|---|---|---|---|
| 1: Gram | `gramMatrix_eq_tangentMat_transpose_mul:56` | PASS | Frozen `gramMatrix` is the bilinear `dotℂ` of derivative columns, giving ordinary transpose `LᵀL`, without conjugation. Holds for every angle, a stronger domain than the strip. |
| 2: Normal columns | `sumVec_normalFrame:71` | PASS | Frozen column is exactly `∑ k, B k j • omegaZero (DK e_k)`; transported by `sumVec` this is column `j` of `Ω₀ L B`, with the same indices and sign. Holds globally. |
| 3: Error | `sumVec_invarianceError:82` | PASS | Frozen error is `X_h(K θ) - DK θ ω`; `colMat_mulVec` transports the derivative without changing frequency or sign. Holds globally. |
| 4: Torsion | `torsion_eq_mat:142` | PASS | Frozen entry is `N_iᵀ Ω₀ (DX_h(K) N_j - DN_j[ω])`. `sumVec_fderiv_normalFrame:129` identifies the column derivative with the matrix derivative under actual differentiability of `normalMat K`. That premise is discharged on the strip in the assembly, lines 205–207. |
| 5: Inverse | `gramMatrix_mul_inv:164`, `inv_gramMatrix_mul:169` | PASS | Both multiplication orders equal identity under exactly `IsUnit (gramMatrix K θ).det`; no invertibility fallback is used. |
| 6: Average | `torsionAverage_eq_avg:175` | PASS | Both sides use real points and Lebesgue integration on `[0,1]ⁿ`. `torusAverage_matrix_apply` commutes entry evaluation with integration using the required continuity; no normalization factor or extra periodicity premise. |

## Premises, carriers, and the pointwise torsion premise

The assembled theorem quantifies over arbitrary `h`, `K`, real frequency `ω`, and a positive
width `r`, then assumes holomorphy of `K` and unit Gram determinant everywhere on that strip.
Its last conjunct takes continuity of real-slice torsion as an implication premise, exactly
as in Appendix A and the blueprint's explicit totality convention. There are no new
constants, existential witnesses, hidden source premises, instances bundling a conclusion,
or conclusion-shaped hypotheses.

In particular, the pointwise helper's `hN` is not an unpaid hypothesis of the graph result.
Lines 91–102 derive holomorphy of `DK` from `holomorphic_regularity`; lines 105–112 derive
holomorphy of `G = LᵀL`; lines 116–123 use `holomorphic_inverse` and the determinant premise
to derive holomorphy of `N = Ω₀ L G⁻¹`. At each strip point, openness gives a neighborhood
and hence `DifferentiableAt ℂ (normalMat K) θ`. Lines 205–207 supply this to `torsion_eq_mat`.
No holomorphy of `h` is necessary for this identity: both sides use the identical total
`fderiv` of its vector field.

Pairs of `Fin n → ℂ` are the frozen vector carrier; `sumVec` is the established linear
isometry to `Fin n ⊕ Fin n → ℂ`. The matrix norm scope is
`Matrix.Norms.Operator`, and the derivative bridges use that topology. This package has
no numerical norm estimate to weaken. The frozen dot product is bilinear, and
`omegaZero (a,b) = (-b,a)` agrees with the actual block matrix `[[0,-I],[I,0]]`.
No `EuclideanSpace` or Hermitian replacement occurs.

Permitted strengthening: items 1–3 hold at all angles and do not need holomorphy or
invertibility. The auxiliary holomorphy lemmas also work without a positive-width premise;
the graph declaration retains `hr : 0 < r` verbatim and documents its non-use at lines 201–202.
Neither strengthening weakens the required result.

## Definition classification

There are **no new `def`, `abbrev`, or `structure` declarations**, and no new instances,
in the package diff. The imported objects actually used were checked against their bodies:

| Existing object | Classification and totality check |
|---|---|
| `sumVec`, `sumVecIso`, `colMat`, `sqMat` | Exact coordinate/linear-map transport with inverse and max-norm isometry; no junk branch. |
| `tangentMat`, `linMat` | Matrices of the actual total Fréchet derivatives. Potential default zero derivatives outside differentiability are shared by both sides; torsion's column-derivative transport is used only with differentiability proved. |
| `normalMat`, `normalFieldMat` | Literal `Ω₀ L G⁻¹` and `A N - DN[ω]`. The total nonsingular inverse is never treated as an inverse without a unit determinant. |
| Frozen `gramMatrix`, `normalFrame`, `invarianceError`, `torsion`, `dotℂ`, `omegaZero` | Literal frozen formulas, unchanged, with the same columns, bilinear pairing, and symplectic sign. |
| `avg`, `torusAverage`, frozen `torsionAverage` | Real-slice cube averages, whole-matrix versus entrywise. Continuity provides integrability before commuting entries and integral, so no nonintegrability fallback is exploited. |

## Hygiene and verification

The following checks were run serially with no overlapping Lean invocations. All completed
with exit status 0. No heartbeat, recursion-depth, or synthesis budget override was used.

Command: `sh scripts/lint_sources.sh`

```text
check_lean_modules: PASS (219 Lean files, 0 comparator configurations)
FROZEN-ANCHOR GUARD OK
ABI HASHES OK (144 frozen declarations)
```

Command: `nice -n 5 lake build KAM.Torus.FrozenAgreement`

```text
Build completed successfully (2888 jobs).
```

Command: `nice -n 5 lake env lean KAM/Torus/FrozenAgreement.lean`

```text
(no output)
```

Commands: `git diff main...HEAD -- KAM/Frozen manifest` and
`git diff --check main...HEAD`: both produced no output, exit 0.
`wc -l KAM/Torus/FrozenAgreement.lean` returned `213 KAM/Torus/FrozenAgreement.lean`.
The module has both author names, copyright, `module`, public imports, module docstring,
and public section. A direct scan found no prohibited proof escapes or `set_option`.
A recursive scan of the 26 local KAM modules in its import closure found no provider or
frozen theorem import. Dependencies are the prescribed carrier/matrix calculus and
Part 1 holomorphy, inverse, and averaging bridges, rather than a frozen theorem shortcut.

A Python comparison extracted `theorem frozen_agreement` through the text before `:=`
from Appendix A and the implementation and asserted byte equality. It printed:

```text
Appendix A frozen_agreement signature: VERBATIM MATCH
Package theorem count: 14
New def/abbrev/structure declarations: 0
```

Exact-type provider probe: **not applicable**, since P2-2 is not a provider package.
Independently, `.lake/abi-scratch/P22Audit1.lean` imported the package, opened its matrix
scope and namespace, copied the full Appendix A signature as an `example`, and proved it by
`exact frozen_agreement h K ω hr hK hG`. This checked the design-facing type with no extra
premise. The same file contained `#print axioms` for all 14 package theorems.

Command: `nice -n 5 lake env lean .lake/abi-scratch/P22Audit1.lean`

```text
'KAM.Torus.tangentMat_apply' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Torus.gramMatrix_eq_tangentMat_transpose_mul' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Torus.sumVec_omegaZero' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Torus.sumVec_normalFrame' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Torus.sumVec_invarianceError' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Torus.differentiableOn_tangentMat' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Torus.differentiableOn_gramMatrix' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Torus.differentiableOn_normalMat' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Torus.sumVec_fderiv_normalFrame' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Torus.torsion_eq_mat' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Torus.gramMatrix_mul_inv' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Torus.inv_gramMatrix_mul' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Torus.torsionAverage_eq_avg' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Torus.frozen_agreement' depends on axioms: [propext, Classical.choice, Quot.sound]
```

## Findings, errata, and limits

Blocking findings: none. Major findings: none. Minor findings: none. No fix is required.
No suspected pinned-source erratum or blueprint contradiction was found; no deviation was
introduced by the auditor. The unused positive-width hypothesis is binding signature fidelity,
not a mathematical gap. The generated root-import addition agrees with the generator.

This PASS certifies the scoped agreement node and its listed helpers. It does not certify
G1/G2, downstream uses of the total objects, or independent replay of the handoff's separate
`leanchecker` receipt. The auditor independently ran the build, direct source elaboration,
design-type probe, axiom inventory, and lint reported above. No unresolved package uncertainty
remains within that scope.
