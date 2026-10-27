# N3-2 Hamiltonian layer: independent package audit 1

**Verdict: PASS WITH NOTES.** The five public theorems match the binding Appendix A types, use the intended frozen vector field and solution predicates, and pass the axiom and kernel checks. Notes concern the documented correction of blueprint periodicity wording, the stronger reduction statement, and the permitted generated-root lint exception. No blocking package defect was found.

There is no provider or frozen theorem anchor in this package. Provider/type and seal-body checks are not applicable; this is an infrastructure-package acceptance, not an anchor sealing receipt.

## Snapshot and scope

- Worktree: `/root/code/KAM-inp-n3ham`; branch: `inp-n3ham`.
- Audited commit: `31f5837b0c61f1814cbaa670ab3d61b1f480df7a`.
- Binding base, its parent: `97d4489c46ebb0e8ddde3f21679a95d661fa0f72`.
- Package delta: only `KAM/ODE/Hamiltonian.lean`, 172 added lines. Source SHA256: `711a9f1f7faa38c99f4ecfeb288b08214360341e1fc6d9c546d73305137871d2`.
- Binding design: `docs/tracks/N/design/PART3-LEAN-DESIGN.md`, Appendix A section I, L871–920; SHA256 `771846a22aad4b598a41881dafb191fc005de7bdbfd4cf1af5145c52508a8b7c`. The main and package worktrees have identical design-file hashes.
- Blueprint: `blueprint-N/parts/p3-hamiltonian-ode.tex`, L374–431; SHA256 `ae9ea3c57b401be389cd9a7e54d9508de50abe33bdc24f5d49a16fffcd43a17d`.

Read the package audit brief in full, AGENTS.md, PLAN.md, DECISIONS.md, the track-N statement, the relevant design signatures and departures, the package and Basic dependency, and all three imported frozen definitions. Compared the package both with its named parent and using the requested `git diff inp...HEAD`. At audit time `inp` was `ff1685312786aad160d9f7506931f5ab39887810`, and its merge base with HEAD was HEAD itself, so the latter comparison is empty. The parent comparison supplies the actual package delta and was audited in full.

## Declaration verdicts

Lean locators below refer to `/root/code/KAM-inp-n3ham/KAM/ODE/Hamiltonian.lean`.

| Blueprint node / obligation | Lean declaration | Verdict | Assessment |
|---|---|---|---|
| `bpN:p3:ham-smooth`, L377–385 | `KAM.ODE.ham_smooth`, L42–56 | PASS | Exact Appendix A signature. Open W and C^(k+1) regularity imply C^k of the actual field and pointwise differentiability of H. Evaluation on coordinate basis vectors gives the frozen components. General `k : WithTop ℕ∞` agrees with the design and extends finite-order cases. |
| `bpN:p3:ham-smooth`, k=1 | `KAM.ODE.ham_smooth_c1`, L59–62 | PASS | Exact Appendix A specialization; C² on open W gives C¹ of the frozen field. No new regularity premise. |
| `stepN:p3:en-cancel`, L397 | private `clm_fst_eq`, L65–72 | PASS | Proves expansion of a continuous linear functional on `(a,0)` in the finite coordinate basis. |
| `stepN:p3:en-cancel`, L397 | private `clm_snd_eq`, L75–82 | PASS | Proves the corresponding expansion on `(0,b)`. |
| `stepN:p3:en-cancel`, L397 | private `clm_ham_zero`, L85–97 | PASS | Proves symplectic cancellation by those expansions and commutativity of real multiplication; cancellation is not a hypothesis. |
| `bpN:p3:ham-energy`, L388–399 | `KAM.ODE.ham_energy`, L100–119 | PASS | Exact Appendix A signature: only interval/OrdConnected data and the stated pointwise differentiability and two-sided derivative premises. Chain rule and cancellation give derivative zero; segment constancy gives equality for every pair of times in J. No confinement, C² premise, or dynamics outside J is introduced. |
| `bpN:p3:ham-periodic`, L402–411 | `KAM.ODE.ham_periodic`, L122–141 | PASS WITH NOTES | Exact Appendix A signature. Domain invariance and local periodicity imply field periodicity, including total-fderiv behavior without a differentiability premise. Translation of solutions uses Basic's proved symmetry lemma. The Hamiltonian identity is correctly asserted only for t in J, per the binding design correction. |
| `stepN:p3:red-diff`, L431 | private `diff_of_mem`, L145–149 | PASS | Derives the differentiability guard from C² on open W and `univ ×ˢ U ⊆ W`; it does not assume the desired guard. |
| `bpN:p3:ham-reduction`, L416–431 | `KAM.ODE.ham_reduction`, L154–168 | PASS WITH NOTES | Exact Appendix A signature. Both iff directions preserve the frozen action membership and two-sided derivative. C² supplies the differentiability clause and C¹ field restriction. U need not be open: omission of that unused source premise is an explicitly designed stronger statement. J and z remain arbitrary. |

All five public theorem types were independently elaborated against the Appendix A signatures by using each `@KAM.ODE.<name>` directly at the complete expected forall type, including implicit dimension and all binder order. No theorem was adapted by inserting assumptions or weakening its conclusion.

## Frozen identity and reduction fidelity

`KAM/Frozen/Defs/HamiltonianVectorField.lean` L24–26 defines the actual field as

```lean
(fun i => fderiv ℝ H z (0, Pi.single i 1),
 fun i => -fderiv ℝ H z (Pi.single i 1, 0))
```

Coordinates are angles first, actions second, on the prescribed finite-function/product spaces. In Appendix A's `namespace KAM.ODE`, unqualified `hamiltonianVectorField` resolves to this parent-namespace constant. This was confirmed by elaborating:

```lean
namespace KAM.ODE
example : (@hamiltonianVectorField) = (@KAM.hamiltonianVectorField) := rfl
end KAM.ODE
```

No alternate definition or carrier change is present. Basic's `angleShift k` is `(fun i => (k i : ℝ), 0)`, the intended period-one integer angle shift.

The frozen N predicate (`KAM/Frozen/Nekhoroshev/Defs/IsSolutionOn.lean` L31–35) and frozen I predicate (`KAM/Frozen/Iso/Defs/IsHamiltonianSolutionOn.lean` L37–41) both mean

```lean
∀ t ∈ J, (z t).2 ∈ U ∧ DifferentiableAt ℝ H (z t) ∧
  HasDerivAt z (KAM.hamiltonianVectorField H (z t)) t
```

An additional `rfl` probe confirmed equality of those two predicates for arbitrary n,H,U,J,z. `IsSolutionIn` in `KAM/ODE/Basic.lean` instead requires phase membership and the same `HasDerivAt`. In `ham_reduction`, product membership is exactly action membership; the forward directions drop the redundant differentiability conjunct, and the reverse directions derive it using `diff_of_mem`. Two-sided derivatives, including at endpoints, are retained. No interval, nonemptiness, dimension lower bound, off-J restriction, or future confinement premise is added. The C¹ conclusion is a restriction of `ham_smooth_c1` to the product domain.

## Definitions, assumptions and import hygiene

No new `def`, `abbrev`, or `structure` occurs in the package. The four additional declarations are private proved lemmas. There are no junk-value definitions, conditional substitutes, conclusion-shaped hypotheses, or assumed hard proof steps.

The KAM import closure contains 20 modules: this module, `KAM.ODE.Basic`, and 18 frozen-definition modules. A recursive import scan found **zero** provider or frozen-theorem import edges. The direct frozen imports are definitions only. No provider or DRAFT_SORRY theorem supplies a proof premise.

The file has copyright/authors, `module`, public imports, a module docstring, and `@[expose] public noncomputable section`. It has 172 lines, within the 1500-line cap. A scan found no `sorry`, `admit`, `axiom`, `unsafe`, `opaque`, `set_option`, or resource override. Ambient spaces remain `Fin n → ℝ` and their product.

## Checks and exact results

All commands below ran in `/root/code/KAM-inp-n3ham`. Lean processes were serialized, with `LEAN_NUM_THREADS=2` and priority `nice -n 5`; the targeted build used the required compile gate. No heartbeat override was used.

### Targeted build

```sh
LEAN_NUM_THREADS=2 /mnt/HC_Volume_106379410/orchestrator-tools/inp_lake_build.sh /root/code/KAM-inp-n3ham KAM.ODE.Hamiltonian
```

Exit 0:

```text
[inp-gate] slot 1 acquired 22:09:46 for KAM.ODE.Hamiltonian
Build completed successfully (2754 jobs).
```

### Appendix A, frozen identities and axioms

A temporary probe at `.lake/abi-scratch/N3_2_audit_signature_axioms.lean` imported only `KAM.ODE.Hamiltonian`. It used the five complete Appendix A theorem types as expected types for the corresponding exports, the two identity checks described above, and `#print axioms` for all five public theorems.

```sh
LEAN_NUM_THREADS=2 nice -n 5 lake env lean .lake/abi-scratch/N3_2_audit_signature_axioms.lean
```

Exit 0. Exact axiom output:

```text
'KAM.ODE.ham_smooth' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.ODE.ham_smooth_c1' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.ODE.ham_energy' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.ODE.ham_periodic' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.ODE.ham_reduction' depends on axioms: [propext, Classical.choice, Quot.sound]
```

There were 12 unused-binder-name warnings in the probe's expected forall types; no errors or resource overrides. These warnings concern the copied proposition binder names, not the package proof. The probe was deleted after the check.

### Kernel replay: exactly one invocation

```sh
LEAN_NUM_THREADS=2 nice -n 5 lake env leanchecker --verbose KAM.ODE.Hamiltonian
```

Exit **0**, output:

```text
replaying KAM.ODE.Hamiltonian
```

### Source lint

```sh
LEAN_NUM_THREADS=2 nice -n 5 sh scripts/lint_sources.sh
```

Exit **1**, with only the generated-root exception allowed by the audit brief:

```text
KAM.lean is out of date; run scripts/gen_root_imports.py
check_lean_modules: PASS (240 Lean files, 0 comparator configurations)
FROZEN-ANCHOR GUARD OK
ABI HASHES OK (144 frozen declarations)
```

No forbidden-token, line-length, size, module, frozen-file, or ABI failure was reported. The generated root was not edited.

### Diff and cleanup checks

```sh
git diff HEAD^ HEAD --stat
git diff --check HEAD^ HEAD
git diff HEAD^ HEAD -- KAM/Frozen manifest KAM.lean README.md
git diff inp...HEAD -- KAM/Frozen manifest KAM.lean README.md
git status --porcelain=v1
```

The stat reports `KAM/ODE/Hamiltonian.lean | 172` insertions and no other changed file. The remaining commands exited 0 with empty output: whitespace passed, both protected-path diffs are empty, and the audited package worktree is clean after deleting the probe. HEAD remained the requested commit. No state-changing git operation was performed.

## Blueprint/source note and limits

The existing wording defect remains in `blueprint-N/parts/p3-hamiltonian-ode.tex` L405: “H composed with (z+(k,0)) = H composed with z” lacks “on J.” Periodicity of H is assumed only on W, and the solution is constrained to W only on J. For example, n=1, W=ℝ×(-1,1), H(θ,I)=0 for |I|<1 and H(θ,I)=θ otherwise, J={0}, z(t)=(0,t²): the solution and periodicity premises hold, but the global identity fails at t=2 for shift k=1. This is the already recorded design B2′(1) / design-audit E2 correction; the audited Lean theorem implements the correct restricted identity exactly as the user requires. It is a declared source-prose correction, not an unreported weakening.

The omission of “U open” in ham_reduction is the other declared design departure: it strengthens the source statement and its proof uses only openness of W. No new frozen-definition defect or pinned-paper erratum was identified. No implementation changes are requested. Acceptance is limited to the named package at the pinned commit; it makes no claim about downstream package closure or an anchor seal.

Only this audit report was written in the main worktree. No package, frozen, manifest, generated-root, or README file was changed.
