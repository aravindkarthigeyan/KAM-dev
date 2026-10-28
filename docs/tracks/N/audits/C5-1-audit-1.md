# C5-1 independent package audit 1

**Verdict: PASS WITH NOTES — C5-1 infrastructure is ready for integration.** All six definitions and six public theorem signatures match the binding design; all six theorem proofs have clean axiom closure and successful kernel replay. No material defect found. The sole lint failure is the explicitly permitted stale generated root. There is no frozen theorem or provider in this package, so “seal-ready per anchor” is **N/A**; this report does not seal an I/N/P headline or certify later canonical-flow packages.

## Scope and immutable inputs

Date: 2026-10-28 UTC. Worktree: `/root/code/KAM-inp-c51`. Focused tier-2, refute-first audit, independent of the prover. Authority: user prompt, AGENTS.md, docs/PLAN.md, docs/DECISIONS.md, `/root/code/KAM-inp/.drafts/briefs/inp-audit-package.md`, and `docs/tracks/N/audits/C5-1-handoff.md`. The user's exact report destination overrides the brief's generic main-worktree destination. Only this report is authored in the repository; transient probes/logs are under this worktree's `.lake/abi-scratch/` and removed after recording evidence. No git mutation, source repair, subagents, frozen edits, or dependency-cache operations.

Frozen-v1 implementation revision: `3fa041d02551229fd363de06e682b229b722db13`.
Initial `inp`: `9415aec0ff2ff12402d6556302a5ce5406aeb353`; observed later `inp`: `03e10647aba94633600190126bc551d0f63c9bb4`. This external ref advanced during the audit; implementation HEAD stayed fixed. Both comparisons have merge base `00d6e82d73f0eaef1f8bb566ccd0c2b19597a6ff` and the same single-file diff:

```text
$ git diff --stat inp...HEAD
 KAM/Canonical/Setting.lean | 148 +++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 148 insertions(+)
```

SHA-256 inputs (all locators below refer to this snapshot):

| Input | SHA-256 |
|---|---|
| `KAM/Canonical/Setting.lean` | `49a4a9eb675de5a375ff138568f5bce11617db7dfaaeb55657cfc1fca68ebd10` |
| `blueprint-N/parts/p5-canonical-maps.tex` | `40560931653c109631d9edbebe453856a49dbb925002536cefc423aa15e01db0` |
| `docs/tracks/N/design/PART145-LEAN-DESIGN.md` | `88954f34dc99efba820691abc209fd8bd334d93cdae90272732090e001abc8ac` |
| `docs/tracks/N/design/PART145-design-audit-1.md` | `7492d710f4ad5a7f7ae27975a20f4a2a8cba73bfd9bbd71d76a2646e772404a4` |
| `docs/tracks/N/design/PART145-design-audit-2.md` | `0ec8c1c2e58ba65217743cf3c491346b0042203449c7698ed2a899e86012c2df` |
| `docs/tracks/N/audits/C5-1-handoff.md` (pre-existing, untracked) | `9fc3d04cf580d90a7371b950b5ef33732ab43dc88e54dfc065509a3d6701c957` |

Read the Part-5 setting source, design Appendix A:450–510 and package instructions, both design-audit dispositions (including binding round-2 consumer notes), and relevant I/N/P statement conventions. Reconstructed the formulas before inspecting proof steps. Inspected the frozen complex Hamiltonian field, real symplectic form, omegaZero, realInclusion₂, and the finite-dimensional holomorphic-regularity dependency. No package-owned frozen theorem exists to compare or probe with a provider. Blanket headline/anchor audits are outside this package's scope.

## Declaration ledger

Every public declaration has node `bpN:p5:setting`. Names below are in `KAM.Canonical`; line numbers refer to `KAM/Canonical/Setting.lean` at frozen-v1. A mechanical comparison checked all complete definition bodies and theorem signatures against Appendix A modulo whitespace: **12/12 identical** (only theorem proof bodies replace design placeholders).

| Node | Declaration (line) | Verdict | Reason |
|---|---|---|---|
| setting | `poissonBracket` (38) | PASS | Literal coordinate sum, angle-first, correct sign; total Fréchet derivative convention matches design. |
| setting | `adPow` (43) | PASS | Base identity; successor brackets the previous iterate with φ on the right. |
| setting | `scaledNorm` (50) | PASS | `max (‖θ‖/σ) (‖I‖/ρ)`, Pi max norms; plain real-valued formula. |
| setting | `scaleCLE` (53) | PASS | Complex-linear product equivalence with weights σ⁻¹, ρ⁻¹ and source positivity guards. |
| setting | `norm_scaleCLE` (58) | PASS | Exact design equality, no changed scope or constants. |
| setting | `symplFormC` (65) | PASS | Complex bilinear extension of frozen ΣdI∧dθ; no conjugation. |
| setting | `poissonBracket_eq_fderiv_field` (81) | PASS | Basis expansion proves equality to the actual frozen complex field for all total inputs. |
| setting | `poissonBracket_antisymm` (88) | PASS | Pointwise algebraic antisymmetry, all dimensions. |
| setting | `differentiableOn_poissonBracket` (95) | PASS | Common open domain and holomorphy premises exactly as designed. |
| setting | `differentiableOn_adPow` (106) | PASS | Induction on arbitrary j on the same open domain. |
| setting | `poissonBracket_eq_zero_of_snd` (137) | PASS | Only coordinate-independence premises; valid even without differentiability under the declared total convention. |
| setting | `RealOn` (143) | PASS | Literal imaginary-part-zero predicate on all real points whose inclusion lies in U. |

Private proof helpers `clm_apply_prod` (69) and `fderiv_fst_eq_zero_of_snd` (114) are sound: the former expands an arbitrary continuous complex-linear functional on the two coordinate bases; the latter differentiates a constant line when differentiable and uses the specified total derivative otherwise. Neither introduces a public premise or a substitute source result.

## Binder fidelity

Each row is one expanded binder. `N`, `F`, `A`, `B`, `D`, `Z` abbreviate, respectively, the six public theorems in ledger order (`norm_scaleCLE`, field identity, antisymmetry, bracket holomorphy, iterate holomorphy, vanishing). No theorem has instance binders or project-owned premise bundles. SOURCE locators are the blueprint setting at p5:19–26 (S) and the exact design signature at the indicated line (A).

| Theorem | Binder | Bin | Source / reason |
|---|---|---|---|
| N | `{n : ℕ}` | TYPING | S:20, coordinate dimension |
| N | `{ρ : ℝ}` | TYPING | S:23, scale parameter |
| N | `{σ : ℝ}` | TYPING | S:23, scale parameter |
| N | `hρ : 0 < ρ` | SOURCE | S:23; A:479 |
| N | `hσ : 0 < σ` | SOURCE | S:23; A:479 |
| N | `z` | TYPING | S:20, phase point |
| F | `{n : ℕ}` | TYPING | S:20 |
| F | `u` | TYPING | S:20–21; A:487, total function representation |
| F | `v` | TYPING | S:20–21; A:487 |
| F | `z` | TYPING | S:20; A:488 |
| A | `{n : ℕ}` | TYPING | S:20 |
| A | `u` | TYPING | S:21; A:491 |
| A | `v` | TYPING | S:21; A:491 |
| A | `z` | TYPING | S:20; A:492 |
| B | `{n : ℕ}` | TYPING | S:20 |
| B | `{U}` | TYPING | S:20, common domain |
| B | `hU : IsOpen U` | SOURCE | S:20; A:495 |
| B | `{u}` | TYPING | S:20; A:496 |
| B | `{v}` | TYPING | S:20; A:496 |
| B | `hu : DifferentiableOn ℂ u U` | SOURCE | S:26; A:496 |
| B | `hv : DifferentiableOn ℂ v U` | SOURCE | S:26; A:497 |
| D | `{n : ℕ}` | TYPING | S:20 |
| D | `{U}` | TYPING | S:20, common domain |
| D | `hU : IsOpen U` | SOURCE | S:20; A:499 |
| D | `{φ}` | TYPING | S:24; A:500 |
| D | `{u}` | TYPING | S:24; A:500 |
| D | `hφ : DifferentiableOn ℂ φ U` | SOURCE | S:26; A:500 |
| D | `hu : DifferentiableOn ℂ u U` | SOURCE | S:26; A:501 |
| D | `j : ℕ` | TYPING | S:24, iterate index |
| Z | `{n : ℕ}` | TYPING | S:20 |
| Z | `{u}` | TYPING | S:26; A:504 |
| Z | `{v}` | TYPING | S:26; A:504 |
| Z | `hu : ∀ θ θ′ I, u (θ,I) = u (θ′,I)` | SOURCE | S:26, dependence only on I; A:505 |
| Z | `hv : ∀ θ θ′ I, v (θ,I) = v (θ′,I)` | SOURCE | S:26; A:505 |
| Z | `z` | TYPING | S:20; A:506 |

Counts: **SOURCE 10, STANDING 0, TYPING 25, RULED 0, EXCESS 0**. The internally quantified θ, θ′, I in Z are coordinate variables of the literal source dependence predicate, with no hidden logical input. Binder order, implicitness, carriers, and conclusions match the design. F/A/Z strengthen the holomorphic mathematical reading by proving the designed identities on all total functions; this supplies no derivative-existence claim.

## Definition classification and adversarial checks

All six definitions are **literal**, including `RealOn : Prop` (a genuine source predicate, not a packaged theorem). No `abbrev` or `structure` is added; no chosen witness occurs.

| Definition | BODY_MATCH | PUBLIC_CARRIER | WELL_DEFINEDNESS | CHARACTERIZATION | CHOICE_INDEPENDENCE | DEFINITION_VERDICT |
|---|---|---|---|---|---|---|
| poissonBracket | OK | OK | N/A_LITERAL | N/A_LITERAL | N/A | PASS |
| adPow | OK | OK | N/A_LITERAL | N/A_LITERAL | N/A | PASS |
| scaledNorm | OK | OK | N/A_LITERAL | N/A_LITERAL | N/A | PASS |
| scaleCLE | OK | OK | N/A_LITERAL | N/A_LITERAL | N/A | PASS |
| symplFormC | OK | OK | N/A_LITERAL | N/A_LITERAL | N/A | PASS |
| RealOn | OK | OK | N/A_LITERAL | N/A_LITERAL | N/A | PASS |

**Nondifferentiable branch — challenged, no defect retained.** Blueprint p5:20 starts “For u holomorphic on an open set”; design A:457–460 explicitly says “Fréchet derivatives, so total,” and §0.2 makes the function carrier total. At Setting:133, `fderiv_zero_of_not_differentiableAt hd` is precisely that existing convention, not a new conditional definition or a claim of an actual derivative at a singularity. If either function is not complex differentiable at z its entire total derivative is zero, so the literal bracket formula is zero. If differentiable, angular independence makes the derivative along `(a,0)` zero by the constant-line chain rule and uniqueness. Thus both branches establish the same exact designed formula. An independent probe also verifies the nondifferentiable-u case directly. Holomorphic-domain consumers use genuine derivatives because an open-domain holomorphy premise supplies differentiability at each point. No off-domain value is used to discharge a holomorphic estimate.

**Other refutation attempts.** Reversed sign/order is excluded by expanding the frozen field `(∂I v, −∂θ v)` and matching both products. `symplFormC` uses the frozen Ω₀ sign: `Ω₀ w = (−w_I,w_θ)`, yielding `v_I w_θ − v_θ w_I`, whereas the Hamiltonian J is −Ω₀. The gauge puts σ on angles and ρ on actions. Nonpositive widths do not yield a norm assertion: `scaledNorm` is explicitly a plain formula on all real parameters, and the equivalence and its norm theorem require positivity. Empty U is harmless; n=0 has empty coordinate sums and trivial phase directions, with a successful zero-dimensional probe. Arbitrary action functions f,g satisfy the vanishing theorem without a differentiability assumption. `RealOn` only tests the real inclusion in U and is correctly vacuous when there are no such points.

Proof review: basis decomposition and complex linearity account for every term of the field identity; antisymmetry is finite-sum ring algebra; bracket holomorphy uses the proved `KAM.holomorphic_regularity_of_finiteDimensional` (Bridges:101) for each derivative and then evaluation/product/subtraction/sum; iterate holomorphy is induction. All required finite-dimensional instances are available for the finite coordinate product and scalar complex target. No hard step is assumed.

## Verification receipts

Toolchain `leanprover/lean4:v4.35.0`. All audit Lean/Lake/checker invocations were serialized, with `LEAN_NUM_THREADS=1` and `nice -n 5`; the build wrapper supplies `nice -n 5`. No heartbeat, recursion, or synthesis override. No clean/rebuild-from-scratch/cache/package operation. The targeted build reused the existing snapshot.

```sh
LEAN_NUM_THREADS=1 LAKE_JOBS=1 /mnt/HC_Volume_106379410/orchestrator-tools/inp_lake_build.sh /root/code/KAM-inp-c51 KAM.Canonical.Setting
```

Exit **0**:

```text
[inp-gate] slot 1 acquired 01:24:51 for KAM.Canonical.Setting
Build completed successfully (2881 jobs).
```

The job count is Lake's completed dependency graph; it is not a concurrency count or a fresh-library rebuild.

```sh
LEAN_NUM_THREADS=1 nice -n 5 lake env lean .lake/abi-scratch/C51Audit.lean
```

Final exit **0**; all six design-type applications and all five edge/definition probes pass. The initial scratch generator omitted the explicit arguments to the six imported theorem applications and exited 1 with six “Type mismatch” messages; adding exactly their explicit binder arguments fixed the probe. No implementation change was involved. Final output, verbatim:

```text
'KAM.Canonical.norm_scaleCLE' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Canonical.poissonBracket_eq_fderiv_field' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Canonical.poissonBracket_antisymm' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Canonical.differentiableOn_poissonBracket' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Canonical.differentiableOn_adPow' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Canonical.poissonBracket_eq_zero_of_snd' depends on axioms: [propext, Classical.choice, Quot.sound]
```

Kernel replay (one invocation, only package module; no provider exists):

```sh
LEAN_NUM_THREADS=1 nice -n 5 lake env leanchecker --verbose KAM.Canonical.Setting > .lake/abi-scratch/C51Leanchecker.log 2>&1
```

Exit **0**; complete output:

```text
replaying KAM.Canonical.Setting
```

Lint:

```sh
LEAN_NUM_THREADS=1 nice -n 5 sh scripts/lint_sources.sh
```

Exit **1**, exclusively the permitted root-generation condition; complete output:

```text
KAM.lean is out of date; run scripts/gen_root_imports.py
check_lean_modules: PASS (314 Lean files, 0 comparator configurations)
FROZEN-ANCHOR GUARD OK
ABI HASHES OK (144 frozen declarations)
```

Additional checks:

- `git diff inp...HEAD -- KAM/Frozen manifest KAM.lean README.md`: empty, exit 0.
- `git diff --check inp...HEAD`: empty, exit 0.
- `rg -n 'sorry|admit|axiom|unsafe|opaque|set_option|EuclideanSpace|Provider|Frozen.*Theorems' KAM/Canonical/Setting.lean`: no matches (exit 1).
- Import-closure traversal over project import statements: **19 modules, no provider/frozen-theorem imports**. Frozen definition imports are permitted.
- `Setting.lean` has **148 total lines**, below the cap; the handoff's “150” is an immaterial count discrepancy. Copyright/module/public imports/module docstring/`@[expose] public noncomputable section` are present; all six definitions inherit exposure.
- All twelve complete signatures/bodies compared equal to the design modulo whitespace; no helper premise, constant, or carrier changed.

## Source defects, limitations, and disposition

No new suspected source or blueprint defect; no deviation introduced. The pre-existing source boundary remains explicit at blueprint p5:25: “We did not locate the printed definition of the bracket's sign in pp. 211–215”. The blueprint fixes its sign by the displayed formula and homological equation. This package matches that formula and the frozen field exactly; this audit does not claim to have located an additional Pos93 printed definition.

Blueprint p5:26 also mentions periodicity. The binding C5-1 signature inventory does not assign a public periodicity theorem to this package; its two differentiableOn theorems prove holomorphy, as named. Acceptance here covers the twelve assigned declarations, not an independently exported periodicity API or the later flow/Lie/weighted estimates. Binding design round-2 notes concern downstream coordinate regrouping and coefficient/consumer conventions; C5-1 introduces no incompatible extra carrier or assumption.

Closeout: 12/12 public declarations classified; private helpers reviewed; five-bin excess count zero; six clean axiom checks; targeted build and kernel replay pass; lint has only the authorized generated-root exception. No unresolved mathematical finding. The orchestrator may integrate this infrastructure and regenerate the root in its normal workflow. No source/frozen/manifest repair is requested by this audit.

## Reproducible final scratch probe

The following was the exact successful scratch source; it is preserved here so the temporary source can be deleted.

```lean
import KAM.Canonical.Setting

open KAM.Canonical

variable {n : ℕ}

example {ρ σ : ℝ} (hρ : 0 < ρ) (hσ : 0 < σ) (z : (Fin n → ℂ) × (Fin n → ℂ)) :
    ‖scaleCLE ρ σ hρ hσ z‖ = scaledNorm ρ σ z := by
  exact norm_scaleCLE hρ hσ z

#print axioms KAM.Canonical.norm_scaleCLE

example (u v : (Fin n → ℂ) × (Fin n → ℂ) → ℂ)
    (z : (Fin n → ℂ) × (Fin n → ℂ)) :
    poissonBracket u v z = fderiv ℂ u z (KAM.hamiltonianVectorFieldℂ v z) := by
  exact poissonBracket_eq_fderiv_field u v z

#print axioms KAM.Canonical.poissonBracket_eq_fderiv_field

example (u v : (Fin n → ℂ) × (Fin n → ℂ) → ℂ)
    (z : (Fin n → ℂ) × (Fin n → ℂ)) : poissonBracket u v z = - poissonBracket v u z := by
  exact poissonBracket_antisymm u v z

#print axioms KAM.Canonical.poissonBracket_antisymm

example {U : Set ((Fin n → ℂ) × (Fin n → ℂ))} (hU : IsOpen U)
    {u v : (Fin n → ℂ) × (Fin n → ℂ) → ℂ} (hu : DifferentiableOn ℂ u U)
    (hv : DifferentiableOn ℂ v U) : DifferentiableOn ℂ (poissonBracket u v) U := by
  exact differentiableOn_poissonBracket hU hu hv

#print axioms KAM.Canonical.differentiableOn_poissonBracket

example {U : Set ((Fin n → ℂ) × (Fin n → ℂ))} (hU : IsOpen U)
    {φ u : (Fin n → ℂ) × (Fin n → ℂ) → ℂ} (hφ : DifferentiableOn ℂ φ U)
    (hu : DifferentiableOn ℂ u U) (j : ℕ) : DifferentiableOn ℂ (adPow φ j u) U := by
  exact differentiableOn_adPow hU hφ hu j

#print axioms KAM.Canonical.differentiableOn_adPow

example {u v : (Fin n → ℂ) × (Fin n → ℂ) → ℂ}
    (hu : ∀ θ θ' I, u (θ, I) = u (θ', I)) (hv : ∀ θ θ' I, v (θ, I) = v (θ', I))
    (z : (Fin n → ℂ) × (Fin n → ℂ)) : poissonBracket u v z = 0 := by
  exact poissonBracket_eq_zero_of_snd hu hv z

#print axioms KAM.Canonical.poissonBracket_eq_zero_of_snd

example {n : ℕ} (u v : (Fin n → ℂ) × (Fin n → ℂ) → ℂ)
    (z : (Fin n → ℂ) × (Fin n → ℂ)) (h : ¬ DifferentiableAt ℂ u z) :
    poissonBracket u v z = 0 := by
  simp [poissonBracket, fderiv_zero_of_not_differentiableAt h]
example (u v : (Fin 0 → ℂ) × (Fin 0 → ℂ) → ℂ)
    (z : (Fin 0 → ℂ) × (Fin 0 → ℂ)) : poissonBracket u v z = 0 := by
  simp [poissonBracket]
example {n : ℕ} (f g : (Fin n → ℂ) → ℂ)
    (z : (Fin n → ℂ) × (Fin n → ℂ)) :
    poissonBracket (fun w => f w.2) (fun w => g w.2) z = 0 :=
  poissonBracket_eq_zero_of_snd (fun _ _ _ => rfl) (fun _ _ _ => rfl) z
example {n : ℕ} (ρ σ : ℝ) (hρ : 0 < ρ) (hσ : 0 < σ)
    (z : (Fin n → ℂ) × (Fin n → ℂ)) :
    scaleCLE ρ σ hρ hσ z = (((σ : ℂ)⁻¹) • z.1, ((ρ : ℂ)⁻¹) • z.2) := rfl
example {n : ℕ} (φ u : (Fin n → ℂ) × (Fin n → ℂ) → ℂ) (j : ℕ) :
    adPow φ (j+1) u = poissonBracket (adPow φ j u) φ := rfl
```
