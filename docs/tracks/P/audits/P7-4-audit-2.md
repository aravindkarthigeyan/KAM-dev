# P7-4 delta audit 2 — F1 closure

**Overall verdict for P7-4 plus the delta: PASS WITH NOTES. F1 is closed.** The original holomorphic-extension theorem together with the new derivative-restriction and complex symplecticity theorems supplies the full content of `bpP:p7:holomorphic`, including its real-point matrix identity. The remaining hygiene note is the expressly permitted stale generated root. N1 is correctly retracted in the delta handoff. No frozen anchor is sealed by this infrastructure package.

Audited worktree: `/root/code/KAM-inp-p74`. HEAD `72dcb7cb77cc7b648106cf0bd61b2a5a2ee1ed15`; comparison ref `inp` at `d9921a75b2e196520afda935beee22c004461382`. The delta from audited commit `69623b9` adds only `KAM/Planetary/Poincare/HolomorphicSymplectic.lean` (170 lines). `Holomorphic.lean` is unchanged. The full `git diff inp...HEAD` contains just those two modules, 565 inserted lines.

Read the repository rules, PLAN, DECISIONS, package audit brief, audit 1, `.drafts/handoff-P7-4b.md`, the new module, the real symplecticity and coordinate interfaces, and blueprint-P Parts 1 and 7. This is a delta proof audit: audit 1's review of the unchanged original module remains applicable, and this turn also rebuilds its downstream module, rechecks its main theorem's axioms, and replays both package modules. The existing P7-2 proof is an imported prerequisite, not a newly audited implementation. The user's exact report path supersedes the generic brief's main-worktree destination.

## Declaration and obligation verdicts

All declaration names below are in `KAM.Planetary`; line numbers refer to `HolomorphicSymplectic.lean` unless otherwise stated.

| Node / obligation | Declaration | Verdict | Reason |
|---|---|---|---|
| Original complex chart/domain and holomorphic extension | `poincareGammaC`, `poincareVC`, `poincareC`, `poincareNbhd`, `poincare_holomorphic` in `Holomorphic.lean` | PASS | Unchanged from audit 1; no weakened statement or changed definition. |
| Complexification of the frozen form | `symplecticFormC`, line 34 | PASS | Literal complex bilinear extension of `Σ(x₂ᵢy₁ᵢ − x₁ᵢy₂ᵢ)` on the entire carrier, with the frozen sign. |
| Form restriction to real vectors | `symplecticFormC_phaseToC`, line 37 | PASS | Equality with the complex cast of the frozen real form, for every dimension and every pair of real vectors. |
| `bp:p1:real-restriction` specialized to this chart | `poincare_fderiv_real_restriction`, lines 86–102 | PASS | Actual complex derivative at the real point, on every embedded real vector, equals the embedded actual real derivative. Both differentiability claims are proved; no total-derivative fallback is used. |
| `bpP:p7:holomorphic`, final clause of `stepP:p7:ho-hol` | `poincare_holomorphic_symplectic`, lines 108–164 | PASS | Preserves the complex bilinear form for all complex vectors, at every real point of the unchanged neighborhood. Exactly the requested matrix identity in equivalent bilinear form. |
| Combined full node | Original `poincare_holomorphic` plus the two new chart theorems | PASS | Openness, holomorphy, periodicity, reality, real-domain inclusion and real-point complex symplecticity are all supplied. F1 is closed. |

There are three new public theorems and one public definition. No conclusion-shaped hypothesis, new instance, frozen/provider substitution, or additional standing premise occurs.

## Statement fidelity and matrix equivalence

The blueprint at `blueprint-P/parts/p7-kepler-poincare.tex:169` requires “`D\Psi^{\top}M_0D\Psi=M_0` at real points.” Its proof at line 173 invokes real restriction and real-chart symplecticity. The new theorem follows precisely that route.

The quantifier `∀ w : Phase 2, phaseToC w ∈ poincareNbhd Λo → …` is exactly quantification over `phaseToC ⁻¹' poincareNbhd Λo`. It covers every real point of the original complex neighborhood, including `ξ=η=0`; no smaller domain, positive-eccentricity restriction, or extra distance margin appears. Its hypotheses are exactly `{m κ Λo : ℝ}`, `hm : 0 < m`, `hκ : 0 < κ`, `hΛ : 0 < Λo`, as in `poincare_holomorphic`. There are no new constants or dependence changes.

In the canonical order `(position, momentum)`, blueprint-P Part 1's conventions fix

```text
M₀ = [ 0  −I ]
     [ I   0 ]
symplecticFormC x y = xᵀ M₀ y.
```

With `A = fderiv ℂ (poincareC m κ) (phaseToC w)`, the theorem asserts `(Ax)ᵀM₀(Ay) = xᵀM₀y` for every complex `x,y`. Thus `xᵀ(AᵀM₀A − M₀)y = 0` for every pair; evaluating on standard basis vectors gives every matrix entry zero. Conversely the matrix identity gives the bilinear identity. There is no conjugation: this is a complex bilinear symplectic form, not a Hermitian form. The statement is equivalent to the blueprint's complex matrix assertion, not merely its restriction to real test vectors.

The original theorem and this delta supply the premises of `bpP:p1:hol-chart` at `c=1`. An explicit application of that general lemma as a separately named Lean theorem is not required to establish this node's asserted identity, and is not claimed here.

## Soundness of the derivative restriction

1. `hs_eventually` (lines 57–64) proves local function equality on the real space. The preimage of the complex neighborhood is open because `phaseToC` is continuous, and membership of `w` gives a real neighborhood. The original real-extension conclusion therefore holds eventually at `w`, not just at one point.
2. `hs_hasFDerivAt` (lines 66–81) obtains complex differentiability from `DifferentiableOn` using the open-neighborhood condition. It restricts scalars to ℝ and composes with the real embedding, then with the continuous linear real-part map. Since real part is a left inverse of the embedding, eventual equality identifies this composite with `poincare m κ` near `w`. This proves an actual real Fréchet derivative of the real chart independently of any convention for `fderiv` at nondifferentiable points.
3. `poincare_fderiv_real_restriction` (lines 90–102) compares derivatives of the full complex-valued composites: `poincareC ∘ phaseToC` and `phaseToC ∘ poincare`. It applies uniqueness of `HasFDerivAt` after eventual equality and evaluates the resulting equality of real continuous linear maps on `u`. In particular, the conclusion identifies the entire complex vector, not just its real part. There is no circular assumption that the complex derivative maps real vectors to real vectors.
4. The final theorem derives `w ∈ poincareDom` from the original extension theorem, applies the imported `poincare_symplectic hm hκ` at that point, and transfers it to embedded real vectors using the proved restriction and `symplecticFormC_phaseToC` (lines 137–143). It proves complex bilinearity explicitly, proves that embedded real coordinate basis vectors span the complex space (lines 144–154), and extends equality separately in each argument with `LinearMap.ext_on` (lines 155–164). No identity on complex vectors is assumed.

## Definition classification

- Public `symplecticFormC` (lines 34–35): intended polynomial bilinear form on the full complex phase space, in every finite dimension. No conditional body, selection, junk value, or fallback.
- Private `hsIota` (lines 42–45): the actual coordinatewise real-to-complex continuous linear embedding on the full carrier; `hsIota_apply` is definitional equality with `phaseToC`.
- Private `hsRe` (lines 50–52): the actual coordinatewise real-part continuous linear projection on the full complex carrier; `hsRe_phaseToC` proves its left-inverse property.
- The proof-local `B` and `A'` simply bundle the explicit form and the genuine derivative as complex linear maps. Their algebraic laws and the spanning property are proved, not supplied as assumptions.

## Independent hygiene checks

Every Lean/Lake command in this audit was run sequentially, with `LEAN_NUM_THREADS=1` and `nice -n 5` (the build wrapper applies `nice`). No overlapping audit Lean processes, cache updates, clean builds, heartbeat changes, or package-directory edits were used.

### Targeted build

```sh
LEAN_NUM_THREADS=1 /mnt/HC_Volume_106379410/orchestrator-tools/inp_lake_build.sh /root/code/KAM-inp-p74 KAM.Planetary.Poincare.HolomorphicSymplectic
```

Exit 0. Gate output:

```text
[inp-gate] slot 1 acquired 04:46:27 for KAM.Planetary.Poincare.HolomorphicSymplectic
```

Final output:

```text
Build completed successfully (9105 jobs).
```

The incremental build replayed only existing unused-variable warnings in Energy, Chart, Holomorphic and Mass. There were no warnings for the new delta module and no default-heartbeat failure.

### Independent domain/type probes and axioms

```sh
LEAN_NUM_THREADS=1 nice -n 5 lake env lean .lake/abi-scratch/P74DeltaAudit.lean
```

Exit 0. The scratch file independently restates both chart theorems with membership explicitly written as `w ∈ phaseToC ⁻¹' poincareNbhd Λo` and applies the exports with `hm hκ hΛ`, confirming the exact domain and hypothesis interface. It prints axioms for all delta public declarations and the original main theorem:

```text
'KAM.Planetary.symplecticFormC' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Planetary.symplecticFormC_phaseToC' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Planetary.poincare_fderiv_real_restriction' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Planetary.poincare_holomorphic_symplectic' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Planetary.poincare_holomorphic' depends on axioms: [propext, Classical.choice, Quot.sound]
```

All are permitted; no `sorryAx`. Provider/frozen type and seal-body probes are N/A because this package has no provider export or frozen theorem anchor. The scratch probe was deleted after checking.

### Kernel replay

```sh
LEAN_NUM_THREADS=1 nice -n 5 lake env leanchecker --verbose KAM.Planetary.Poincare.HolomorphicSymplectic KAM.Planetary.Poincare.Holomorphic
```

Exit 0. Complete output:

```text
replaying KAM.Planetary.Poincare.Holomorphic
replaying KAM.Planetary.Poincare.HolomorphicSymplectic
```

One invocation replays both package modules, including their private helpers.

### Source lint

```sh
LEAN_NUM_THREADS=1 nice -n 5 sh scripts/lint_sources.sh
```

Exit 1 solely for the allowed stale generated root. Complete output:

```text
KAM.lean is out of date; run scripts/gen_root_imports.py
check_lean_modules: PASS (396 Lean files, 0 comparator configurations)
FROZEN-ANCHOR GUARD OK
ABI HASHES OK (144 frozen declarations)
```

All other lint checks passed. The auditor did not regenerate `KAM.lean`.

### Imports, file hygiene and immutable paths

The new module has 170 lines and the required copyright, `module`, public imports, module docstring, `public section` and exposed definitions. The original module remains 395 lines. Direct forbidden-token scanning of the delta found no `sorry`, `admit`, `axiom`, `unsafe`, `opaque`, forbidden carrier, or resource-limit override. The transitive project import closure has 59 modules, no provider imports and no frozen theorem imports; all 43 reachable frozen definition anchors have manifest state `SEALED`.

```sh
git diff inp...HEAD -- KAM/Frozen manifest KAM.lean README.md
git diff 69623b9...HEAD -- KAM/Planetary/Poincare/Holomorphic.lean
git diff --check inp...HEAD
```

Each exits 0 with empty output. The auditor changes only this report outside the temporary scratch probe. Audit 1 and the handoffs remain untouched.

## Errata, deviations and remaining scope

F1: **closed**, with the separately owned glue module requested by audit 1. Its new dependency on the already proved real symplecticity module is appropriate and introduces no additional theorem hypothesis.

N1: **resolved by explicit retraction** in `.drafts/handoff-P7-4b.md`, section “Retraction (N1)”. The disk hypothesis does imply `|arg Λ|<π/6`; do not record the earlier handoff claim as a source/design erratum.

No new suspected source/blueprint defect or mathematical deviation was found. The bilinear presentation is equivalent to the matrix identity. There is no remaining proof obligation from F1. This verdict covers the P7-4 holomorphic-extension node, not a seal of any planetary headline theorem or a new independent audit of imported P7-2.
