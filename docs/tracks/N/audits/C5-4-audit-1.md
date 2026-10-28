# C5-4 independent package audit 1

**Verdict: PASS for both public declarations and `bpN:p5:vf-bound`.** The package is ready for integration as proved infrastructure. It does not seal any frozen I/N/P theorem anchor.

Date: 2026-10-28. Worktree: `/root/code/KAM-inp-c54`. Independent auditor; no implementation edits or git mutations. Focused tier-2 audit using manuscript-audit and lean-statement-audit: exact signature comparison, expanded-premise inspection, full review of the 95-line implementation, separate adversarial edge-case pass, serial elaboration and kernel replay. The user-specified report location overrides the generic brief's main-worktree output instruction.

## Frozen audit snapshot and scope

- HEAD: `f323ad2e2b30aa1e1a7cfe1eed151fd8d3bcf9a0`.
- Observed `inp`: `948ff8fc5980a9376c844f4870a914b53587deea`.
- Merge base: `ee49a8e953a5e0763fbe7f293ea67601357155cc`.
- `git diff inp...HEAD`: one added file, `KAM/Canonical/VectorField.lean`, 95 insertions. The pre-existing untracked handoff is evidence, not part of this commit diff.
- Package source SHA256: `1106d581a98e495ec214bca5ee81eb0b1441b3fe7ad234079896271b57c7b60b`.
- Design SHA256: `88954f34dc99efba820691abc209fd8bd334d93cdae90272732090e001abc8ac`.
- Blueprint-N Part 5 SHA256: `40560931653c109631d9edbebe453856a49dbb925002536cefc423aa15e01db0`.
- Design audit 1 SHA256: `7492d710f4ad5a7f7ae27975a20f4a2a8cba73bfd9bbd71d76a2646e772404a4`.
- Design audit 2 SHA256: `0ec8c1c2e58ba65217743cf3c491346b0042203449c7698ed2a899e86012c2df`.

Read AGENTS.md, PLAN, DECISIONS, `/root/code/KAM-inp/.drafts/briefs/inp-audit-package.md`, C5-4 handoff/AUDIT FOCUS, track N statement conventions, design row C5-4 (line 276), proof plan (line 319), Appendix A (lines 921–940), both design audits, and blueprint-N Part 5 setting/field bound (lines 19–43). Checked the actual weighted/domain/derivative definitions and the W4-4/W4-6 interfaces used by the proof. No fresh pinned-PDF audit is claimed: the correspondence authority here is the supplied blueprint and approved design interface.

The two theorem headers, from `theorem` through their conclusions, are **text-identical** to Appendix A, checked by Python extraction. There is no provider or frozen theorem being sealed, so provider-vs-frozen `type_of%` and seal-body probes are N/A. Instead, both exact Appendix A statements were copied into a temporary probe and proved by applying the exports to every explicit binder in order. Both elaborated successfully.

## Declaration ledger

All line locators below refer to the pinned HEAD above.

| Node | Lean declaration | Verdict | Reason |
|---|---|---|---|
| `bpN:p5:vf-bound`, holomorphic-field interface | `KAM.Canonical.differentiableOn_hamField` (`VectorField.lean:35`) | PASS | Exact signature; holomorphic Hamiltonian field on the same arbitrary open set. |
| `bpN:p5:vf-bound` | `KAM.Canonical.vf_bound` (`VectorField.lean:53`) | PASS | Exact signature, both derivative estimates and scaled-field bound on precisely `Dom n D (r-ρ) (s-σ)`. |
| Monotonicity proof helper | private `inClass_mono` (`VectorField.lean:47`) | PASS | Restricts holomorphy and periodicity by the actual domain inclusion; no new analytic premise. |

No frozen anchor receives a seal-ready verdict from this infrastructure package. Both public results themselves are proved and axiom-clean.

## Expanded binder audit

SOURCE denotes a premise or quantified source datum; TYPING denotes coordinate/type formation. There are no additional instances or hidden local hypotheses on these exports. `InClass` and `WBound` are expanded below rather than treated as unexplained bundles.

### `differentiableOn_hamField`

Authority: Appendix A lines 928–930; blueprint Part 5 field setting and holomorphic-regularity discussion immediately before `vf-bound`.

| Binder / expanded logical input | Bin | Source meaning |
|---|---|---|
| implicit `n : ℕ` | TYPING | Finite complex phase coordinates, including dimension zero. |
| implicit `U : Set ((Fin n → ℂ) × (Fin n → ℂ))` | SOURCE | Open domain of holomorphy. |
| `hU : IsOpen U` | SOURCE | Open-set hypothesis of the signature. |
| implicit `φ : ((Fin n → ℂ) × (Fin n → ℂ)) → ℂ` | SOURCE | Scalar Hamiltonian. |
| `hφ : DifferentiableOn ℂ φ U` | SOURCE | Holomorphy on that domain. |

Counts: SOURCE 4, TYPING 1, STANDING 0, RULED 0, EXCESS 0.

### `vf_bound`

Authority: blueprint Part 5 lines 29–43: “Let φ ∈ O(r,s) have finite norm, 0 < ρ < r, 0 < σ < s”; signature lines 933–940.

| Binder / expanded logical input | Bin | Source meaning |
|---|---|---|
| implicit `n : ℕ` | TYPING | Same dimension for angles/actions. |
| implicit `D : Set (Fin n → ℂ)` | SOURCE | Arbitrary action base set. |
| implicit `r : ℝ` | SOURCE | Original action radius. |
| implicit `s : ℝ` | SOURCE | Original geometric strip width. |
| implicit `ρ : ℝ` | SOURCE | Action loss. |
| implicit `σ : ℝ` | SOURCE | Angle loss. |
| implicit `Φ : ℝ` | SOURCE | Supplied upper bound for the finite weighted norm. |
| implicit scalar function `φ` | SOURCE | Hamiltonian. |
| `hφ.differentiableOn` | SOURCE | Holomorphy on `Dom n D r s`. |
| `hφ.periodic : ∀ j z, z ∈ Dom n D r s → φ (z.1 + Pi.single j 1,z.2) = φ z` | SOURCE | Period-one angular periodicity. |
| `hb`, summability component: `∀ I ∈ polyNbhd D r, Summable (fun k => ‖coeff φ I k‖ * modeWeight s k)` | SOURCE | Finite Fourier norm at every action point. |
| `hb`, bound component: `∀ I ∈ polyNbhd D r, wsum φ s I ≤ Φ` | SOURCE | Uniform weighted upper bound. |
| `hρ : 0 < ρ` | SOURCE | Positive action loss. |
| `hρr : ρ < r` | SOURCE | Strict action-radius margin. |
| `hσ : 0 < σ` | SOURCE | Positive angle loss. |
| `hσs : σ < s` | SOURCE | Strict strip-width margin. |

Counts after expanding the two bundles: SOURCE 15, TYPING 1, STANDING 0, RULED 0, EXCESS 0. The final `∀ z ∈ Dom ...` belongs to the conclusion and retains exactly the source's pointwise scope. No bound on the vector field or its derivatives is assumed.

## Definition classification and semantic closure

There are **no new `def`, `abbrev`, or `structure` declarations**. The private helper is a theorem. New-definition BODY_MATCH / PUBLIC_CARRIER / WELL_DEFINEDNESS / CHARACTERIZATION / CHOICE_INDEPENDENCE are N/A.

Checked reused meanings:

- `hamiltonianVectorFieldℂ φ z = (∂I φ, -∂θ φ)` uses the frozen coordinate-direction Fréchet derivatives, with angles first (`KAM/Frozen/Defs/HamiltonianVectorFieldC.lean:25`). Manifest identity `kam.hamiltonianVectorFieldℂ.v1`, kind definition, state SEALED, full-file hash `6943acf3f4c92ac007afeb274bd6f82ae422279617ca433d8c84898341d0edf5`.
- `scaledNorm ρ σ (a,b) = max (‖a‖/σ) (‖b‖/ρ)` (`Canonical/Setting.lean:51`); Pi norms are maximum norms, without EuclideanSpace.
- `Dom` is the open complex strip times `polyNbhd D r`; the latter is literally `∃ I' ∈ D, ‖I-I'‖ < r` (`Weighted/Domains.lean:35–39`). No shape or nonemptiness hypothesis on D is smuggled in.
- `dI` and `dtheta` are the corresponding coordinate-direction derivatives (`Weighted/Coefficients.lean:136–140`).
- `InClass` is exactly holomorphy plus period-one shifts. `WBound` includes summability alongside the weighted sum bound (`Weighted/Norm.lean:42–69`), with weight `exp (2π s |k|₁)`. Consequently the total `tsum` has no fallback role in this proof. The geometric-width convention gives the correct angular `1/(eσ)` constant.

The recursively inspected project import closure has 35 KAM modules, no provider and no frozen theorem. Its seven frozen imports are definitions, all SEALED: ActionNbhd, ComplexStrip, HamiltonianVectorField, HamiltonianVectorFieldC, IsPrimaryOnStrip, IsRealOnReals, OmegaZero. Thus no DRAFT_SORRY or provider quarantine is bypassed.

## Proof and adversarial review

1. Lines 38–44 obtain holomorphy of `fderiv ℂ φ` from `holomorphic_regularity_of_finiteDimensional hU hφ`, evaluate the continuous linear map on constant coordinate vectors, negate angular components and assemble the product. The open-set and finite-dimensional hypotheses are available on precisely the declared carrier.
2. Lines 62–72 apply `cauchy_loss` with all six actual source premises. Its global action estimate is `WBound D (r-ρ) s (dI i φ) (Φ/ρ)`; its single-index angular estimate is `WBound D r (s-σ) (dtheta i φ) (Φ/(exp 1*σ))`. Monotonicity restricts each to the common target radii. The restricted `InClass` and positive `s-σ` feed `coefficients_deriv`; `sup_le_wbound` then yields the advertised pointwise bounds. This follows blueprint step `vf-deriv` and design plan C5-4 directly.
3. Lines 64–66 derive `0 ≤ Φ` from the nonnegative weighted sum at `z.2`, which lies in the original action domain by `Dom_mono`. This is proved after introducing an actual target point; it is not an added premise.
4. Lines 75–91 convert coordinate bounds to Pi maximum-norm bounds, account for the minus sign by norm invariance, and use `1 ≤ exp 1` and positive denominators. The final maximum is bounded by `Φ/(ρσ)` with no dimension factor and no widened constant dependence.

Separate refutation pass: tried negative Φ on empty D, dimension zero, missing derivative regularity, swapped angle/action weights, a lost factor of 2π, and an illicit sum of global angular norms. None survives inspection. Empty domains make the pointwise conclusion vacuous; a real target point forces Φ nonnegative. For n=0 the coordinate families are empty and the field has norm zero; the same derived nonnegativity justifies the Pi-norm inequalities. The proof uses single-index global angular estimates, not an interchange of sum and supremum. Both losses are strictly positive and smaller than their starting radii; no boundary assertion is added.

Binding design-audit notes: R2-01's n=0 blueprint branch is present in this snapshot (`bpN:p4:n-zero`); R2-02 concerns triple-product reality transport and is not consumed here; R2-03 concerns constant-package prose. The optional sharp-norm branch is outside this package and remains outside this verdict. No source/blueprint contradiction was found in the C5-4 scope.

## Independent verification receipts

All audit-owned Lean/Lake invocations were sequential, with `LEAN_NUM_THREADS=1` and `nice -n 5`; no heartbeat, recursion-depth or synthesis-budget override was used. The gate waited before admitting the targeted build. Other agents' host processes were observed but neither started nor modified by this audit.

### Targeted build

```sh
LEAN_NUM_THREADS=1 /mnt/HC_Volume_106379410/orchestrator-tools/inp_lake_build.sh /root/code/KAM-inp-c54 KAM.Canonical.VectorField
```

Exit 0; output:

```text
[inp-gate] slot 2 acquired 03:59:16 for KAM.Canonical.VectorField
Build completed successfully (3164 jobs).
```

This is the targeted cached dependency graph, not a clean rebuild. No clean/update/cache-get command was run.

### Exact signatures and axioms

Python extracted the two theorem headers from Appendix A and from the implementation: `signature text identical: True` for both. Scratch file `.lake/abi-scratch/C54Audit1.lean` imported only `KAM.Canonical.VectorField` and opened `KAM.Weighted KAM.Canonical`. It copied each signature under an `audit_` name, with bodies respectively:

```lean
by exact KAM.Canonical.differentiableOn_hamField hU hφ
by exact KAM.Canonical.vf_bound hφ hb hρ hρr hσ hσs
```

It also printed axioms of both original exports. Command:

```sh
LEAN_NUM_THREADS=1 nice -n 5 lake env lean .lake/abi-scratch/C54Audit1.lean
```

Exit 0, with no warnings; complete output:

```text
'KAM.Canonical.differentiableOn_hamField' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Canonical.vf_bound' depends on axioms: [propext, Classical.choice, Quot.sound]
```

### Kernel replay

```sh
LEAN_NUM_THREADS=1 nice -n 5 lake env leanchecker --verbose KAM.Canonical.VectorField
```

Exit 0; complete output:

```text
replaying KAM.Canonical.VectorField
```

The single package module contains both new public theorems and its private helper; no separate provider module exists.

### Source hygiene

Command:

```sh
LEAN_NUM_THREADS=1 nice -n 5 sh scripts/lint_sources.sh
```

Exit 1, solely the explicitly allowed generated-root complaint; complete output:

```text
KAM.lean is out of date; run scripts/gen_root_imports.py
check_lean_modules: PASS (386 Lean files, 0 comparator configurations)
FROZEN-ANCHOR GUARD OK
ABI HASHES OK (144 frozen declarations)
```

This is PASS under the audit brief's stated root-import exception; the orchestrator must regenerate `KAM.lean` at integration. The auditor did not edit it.

Static inspection: 95 total lines (below 1500); copyright, `module`, public interface imports, module docstring, public section and closing namespace are present. No new definition needs an expose annotation. No forbidden proof escape or resource override appears in the changed file.

`git diff inp...HEAD -- KAM/Frozen manifest KAM.lean README.md`: empty, exit 0. `git diff --check inp...HEAD`: empty, exit 0.

## Findings, errata, deviations and limits

No material finding, suspected pinned-source defect, or blueprint defect was discovered within the package scope. No repair is proposed. The report is the sole persistent authored repository artifact; temporary probes are removed after checks. No implementation, frozen file, manifest, generated root or README was edited.

This audit verifies the C5-4 interfaces and proof assembly against the supplied blueprint and design. It does not independently re-audit every proof in unchanged W4-4/W4-6 or K infrastructure, assert the optional sharp version, or close any headline theorem. Successful kernel replay and axiom closure certify the reviewed Lean module; source correspondence is the separate inspection documented above.


## Closeout

Both public signatures and all expanded premises are classified; no EXCESS input, weakened conclusion or unresolved C5-4 finding remains. Targeted build, exact-statement applications, public axiom checks and kernel replay passed. Source lint passed all checks apart from the permitted generated-root exception. The scratch probe was deleted. The package SHA256, HEAD and observed inp ref were rechecked at closeout; no audited source changed. Final worktree status contains only the pre-existing untracked handoff and this untracked report. No commit was made.
