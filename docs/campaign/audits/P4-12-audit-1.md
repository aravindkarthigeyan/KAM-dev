# P4-12 independent audit 1

Overall verdict: **PASS** (conditional HEAD assembly; not a seal of frozen HEAD).

Audited HEAD: `d6996a2a3c6df70b935de4cc698dcc2c13face90`, branch `k/p4-12`, against `main...HEAD`.
The supplied handoff names historical commit `265c57c`; this audit checks the actual merged HEAD.
The code diff consists of the new 210-line `KAM/Head/Assembly.lean` and its generated root import.
The pre-existing untracked `P4-12-handoff.md` was read and left unchanged.

Authority: `AGENTS.md`, `docs/PLAN.md`, `docs/DECISIONS.md`, package/common briefs,
`AUDIT-PACKAGE.md`, handoff AUDIT FOCUS, binding Part 4 design §§2.2, 6 and Appendix A §18,
and the graph/source locators below. Applied the lean-statement-audit contract checks.
This is a package implementation audit against the approved blueprint/design, not a new audit of
Pöschel's published theorem or a re-certification of every predecessor package.

## Node coverage and statement fidelity

All file locators in this section are relative to the repository root.

| Node | Lean declaration and locator | Verdict | Reason |
|---|---|---|---|
| `bp:p0:head` (conditional proof) | `KAM.Head.head_of_gValid`, `KAM/Head/Assembly.lean:191` | PASS | Exactly Appendix A §18: implicit data and constants, then `Data`, `Layer`, `GValid`, concluding exactly `HeadConclusion`. Not exported as the frozen root. |
| `step:p4:head-empty` | `KAM.Head.head_empty`, Assembly:48 | PASS | Proves the full conclusion with `C = ε₀ = 1`; only `B = ∅` needed, strictly fewer premises than the standing HEAD data. |
| `step:p4:head-constants` | `KAM.Head.headC`, Assembly:56; `one_le_headC`:82, `A0_mul_le_headC`:86, `Cmeas_div_le_headC`:93; assembly:196–199 | PASS | Literal maximum of the three specified terms; `ε₀ = cStar`; positivity proved before introducing `f, ε`. |
| `step:p4:head-negative` | `KAM.Head.nonneg_of_bound_nonempty`, `KAM/Head/HeadQ.lean:82`; consumed Assembly:202 | PASS | Uses the bound at `(0, ιJ)` for `J ∈ B`, with positive widths. No HEAD or HEAD-Q theorem premise. |
| `step:p4:head-positive` | `KAM.Head.head_positive`, Assembly:104 | PASS | Explicit fourth-root ratio, SA construction, cover monotonicity, and `main_measure`; coefficient comparisons are supplied by the constant lemmas at assembly:205–206. |
| `step:p4:head-zero` | `KAM.Head.head_zero`, Assembly:155 | PASS | For every `0 < γ ≤ 1`, same fixed complement has measure ≤ `ofReal (Cmeas * γ)`; finite positive tolerances force measure zero. |

Direct sources: `blueprint/parts/p0-conventions.tex:105–115` and
`blueprint/parts/p4-measure.tex:1202–1232`; graph node records at
`docs/graph/K/DEPGRAPH.md:555` and `:12816–12950`.
The graph's NOT_STARTED entries for this package are pre-landing metadata, not missing declarations.

## Binders, expanded assumptions, and rule 6

The following inventories all logical fields of the root helper's premises, rather than treating
bundles as single unexplained assumptions. TYPING parameters are listed individually.
SOURCE refers to the HEAD statement and Part 4 fixed-data conventions; RULED refers to the
explicit conditional-helper interface authorized by design §2.2 and Appendix A §18.

| Binder / expanded field | Bin | Source or ruling |
|---|---|---|
| `n : ℕ` | TYPING | Part 0 real/complex coordinate dimensions |
| `τ : ℝ` | TYPING | HEAD exponent parameter |
| `s₀ : ℝ` | TYPING | HEAD strip width |
| `r₀ : ℝ` | TYPING | HEAD action radius |
| `B : Set (Fin n → ℝ)` | TYPING | HEAD action domain |
| `h : (Fin n → ℂ) → ℂ` | TYPING | HEAD integrable Hamiltonian |
| `Lh : ℝ` | TYPING | Fixed nondegeneracy witness, p4:1209–1212 |
| `gc : GConsts` | TYPING | Six real constants, design §2.2 |
| `CB : ℝ` | TYPING | Fixed layer witness, p4:1209–1212 |
| `hD.two_le : 2 ≤ n` | SOURCE | p0:106 |
| `hD.tau_gt : n - 1 < τ` | SOURCE | p0:106 |
| `hD.s₀_pos : 0 < s₀` | SOURCE | p0:106 |
| `hD.r₀_pos : 0 < r₀` | SOURCE | p0:106 |
| `hD.isOpen : IsOpen B` | SOURCE | p0:106 |
| `hD.isBounded : IsBounded B` | SOURCE | p0:106 |
| `hD.holo` on `actionNbhd B r₀` | SOURCE | p0:108 |
| `hD.real` on real points of that neighbourhood | SOURCE | p0:108 |
| `hD.nondeg : ∀ I ∈ closure B, ∀ J ∈ closure B, ‖I-J‖ ≤ Lh * ‖frequencyMap h I-frequencyMap h J‖` | SOURCE | p0:108 |
| `hCB : ∀ δ > 0, volume {I ∈ B : infDist I Bᶜ < δ} ≤ ofReal (CB * δ)` | SOURCE | p0:107; inner layer ruling D11 |
| `hgc.C11_pos` | RULED | First G1 tuple, design §2.2 |
| `hgc.C21_pos` | RULED | First G1 tuple, design §2.2 |
| `hgc.C12_pos` | RULED | Second G1 tuple, design §2.2 |
| `hgc.C22_pos` | RULED | Second G1 tuple, design §2.2 |
| `hgc.cG_pos` | RULED | G2 constant, design §2.2 |
| `hgc.g1a` | RULED | Exact G1 implication at `(s/4,s/8)`, design §2.2 |
| `hgc.g1b` | RULED | Exact G1 implication at `(3s/32,s/16)`, design §2.2 |
| `hgc.g2` | RULED | Exact G2 implication at `s/16`, design §2.2 |
| `hgc.g3 : ∀ α > 0, volume {ω ∈ frequencyMap h '' B : ¬ IsDiophantine α τ ω} ≤ ofReal (gc.C3 * α)` | RULED | G3 conclusion for the frequency image, design §2.2 |

Counts: SOURCE 10; STANDING 0 (standing fields expanded into SOURCE); TYPING 9;
RULED 9; EXCESS 0. No instance binder is introduced. `GConsts` has exactly six real data
fields: `C11`, `C21`, `C12`, `C22`, `cG`, `C3`; no hidden proof fields.

The quantified inputs inside `G1Body` and `G2Body` are the source theorem implications, not
additional standing hypotheses: arbitrary phase domain, Hamiltonian, parameterization(s),
frequency, γ and error bound (G1); H1 domain/analyticity/periodicity/reality/derivative bounds;
H2 holomorphy/primary/reality/domain margin/derivative bound; H3 Gram invertibility and inverse
row sums; H4 torsion invertibility and inverse row sums; Diophantine and invariance/error/smallness
conditions; and the full source existential output (G1) or phase-shift output (G2).
No field independently assumes a Part 4 result.

Design §2.2 checklist:

1. After stripping comments and whitespace, `G1Body` and `G2Body` equal the actual frozen bodies
   following their existential constants. Mechanical comparison returned `True` for both.
2. `GValid` in `KAM/Head/Defs.lean` uses exactly the two G1 tuples above, the G2 width `s/16`,
   `Mconst`, `sigmaK`, `sigmaB`, `sigmaT`, `muParam`, and G1 `γbar = 1`.
3. The `g3` field uses exactly `frequencyMap h '' B`, all positive α, and the original Diophantine predicate.
4. The root assumes only the Appendix A inputs. `B.Nonempty`, ε ≥ 0, positivity of `cStar`,
   SA, and the coefficient inequalities are produced inside the proof.

`head_positive` is a distinctly named internal generalization in arbitrary `C`: its `hC1` and
`hC2` are the two elementary comparisons produced from `headC`, not unproved analytic steps.
`head_zero` works for arbitrary real `C` since both occurrences vanish at ε = 0.
`head_empty` needs no sign or analyticity premises. The arithmetic helpers have only their
stated scalar nonnegativity/positivity assumptions. No helper is substituted for a frozen result.

## Constants, positive case, and zero case

`HeadConclusion` in `KAM/Head/Standing.lean` is the literal frozen conclusion: positive real
`C, ε₀` precede `∀ f ε`, followed by holomorphy, period one, reality, the pointwise norm bound,
and `ε ≤ ε₀`, concluding the same ENNReal volume bound for the same `kamCover` with closeness
`C * Real.sqrt ε` and rate `C * ε^(1/4)`. No ε ≥ 0 premise has been added.

Assembly:198–200 constructs `C = headC …`, `ε₀ = cStar …` before `intro f ε`.
The constants depend only on fixed data, witnesses `Lh, CB`, and `gc`; the provider must choose
`gc` from those same data. There is no dependence on the perturbation, ε, γ, or a selected torus.
For empty B the constants are both one.

In Assembly:111–149, put `a = ε^(1/4) > 0`, `b = cStar^(1/4) > 0`, `γ = a/b`.
The proof establishes `a^4 = ε`, `b^4 = cStar`, `a ≤ b`, and
`γ^4 = ε/cStar`; hence γ ∈ (0,1] and ε = cStar γ^4. The ratio equals the blueprint's
`(ε/cStar)^(1/4)` by positivity. It proves `sqrt ε = a²` and
`eta0 = A0 * b² * a²`, then applies cover inclusion in the correct direction for complements.
The remaining comparison is `Cmeas * γ = (Cmeas/b) * a ≤ C*a`.

In Assembly:164–185, `eta0` simplifies to zero for every admissible γ, so the set whose measure
is bounded does not vary with γ. For every positive finite tolerance δ, choose
`γ = min 1 (δ/(Cmeas+1))`. `Cmeas_nonneg` supplies a positive denominator and the required
monotonicity. The bound is at most δ, and `ENNReal.le_of_forall_pos_le_add` gives ≤ 0.
This does not assume the measure finite, nor invoke continuity of a varying family of sets.

## Definition classification

Only one new definition, and no new abbreviation or structure, occurs in the package diff:
`headC` (Assembly:56–59). It is the literal algebraic maximum prescribed by p4:1206–1214,
on its full real-parameter carrier. It has no condition, default, epsilon-choice, selected
witness, or dependence on `f, ε`. Existing real powers retain their standard total Lean
semantics; applications requiring positivity prove it from the standing data.

BODY_MATCH: OK
PUBLIC_CARRIER: OK
WELL_DEFINEDNESS: N/A_LITERAL
CHARACTERIZATION: N/A_LITERAL
CHOICE_INDEPENDENCE: N/A
DEFINITION_VERDICT: PASS

`Data`, `Pert`, `Layer`, `HeadConclusion`, `GConsts`, `GValid`, `SA`, `eta0`, `A0`, `cStar`,
and `Cmeas` are unchanged predecessor interfaces. The assumption/conclusion bodies directly
used in this assembly were inspected as above; this audit does not newly certify all internal
choice-based torus constructions in predecessor packages.

## Hygiene and executable evidence

All commands ran from `/root/code/KAM-w-p4-12`. Build and Lean processes were serialized.
No override, clean rebuild, source edit, state-changing git command, or root regeneration was used.

`git diff --stat main...HEAD`:

```text
 KAM.lean               |   1 +
 KAM/Head/Assembly.lean | 210 +++++++++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 211 insertions(+)
```

`git diff main...HEAD -- KAM/Frozen manifest`: empty output, exit 0.
`git diff --check`: empty output, exit 0.
`nice -n 5 lake build KAM.Head.Assembly`: exit 0:

```text
Build completed successfully (3248 jobs).
```

`sh scripts/lint_sources.sh`: exit 0:

```text
check_lean_modules: PASS (286 Lean files, 0 comparator configurations)
FROZEN-ANCHOR GUARD OK
ABI HASHES OK (144 frozen declarations)
```

This includes forbidden-token/resource checks, all-file 1500-line limits, module-system checks,
generated root consistency, frozen identity/definition-closure guards, and elaborated ABI hashes.
Assembly is 210 physical lines and has the required copyright, module, imports, module docstring,
and exposed public section. The generated root delta is exactly its Assembly import.

A Python traversal following each local `^(?:public )?import (KAM\.[\w.]+)` from
`KAM.Head.Assembly` reported:

```text
Project import closure: 104 modules; forbidden theorem/provider imports: []
Assembly lines: 210
```

The forbidden prefixes tested were `KAM.Provider.` and `KAM.Frozen.Theorems.`.
The new Assembly → HeadQ edge therefore does not import the frozen HEAD/HEAD-Q or their
providers, directly or transitively. `headq_of_head` is a conditional theorem, and the assembly
uses only HeadQ's independent nonnegativity lemma. No circular proof dependency occurs.

The mechanical G-body comparison extracted each `def G1Body/G2Body` RHS through the next
docstring and compared it with the corresponding frozen theorem substring from
`∀ (𝔅` through the theorem's proof delimiter, removing line comments and whitespace:

```text
G1Body matches frozen post-existential body: True
G2Body matches frozen post-existential body: True
```

### Exact conclusion and axiom probe

This package is not a provider, so the provider-export versus frozen-export `type_of%` probe is
not applicable. Instead the following independent, expanded frozen-conclusion probe applied
`head_of_gValid` directly. Command:
`nice -n 5 lake env lean .lake/abi-scratch/P412Audit.lean` (exit 0).
The complete transient probe is reproduced here for rerunning; it was deleted after checking.

```lean
import KAM.Head.Assembly
open KAM KAM.Head MeasureTheory
example {n : ℕ} {τ s₀ r₀ Lh CB : ℝ} {B : Set (Fin n → ℝ)}
    {h : (Fin n → ℂ) → ℂ} {gc : GConsts}
    (hD : Data τ s₀ r₀ B h Lh) (hCB : Layer B CB)
    (hgc : GValid τ s₀ r₀ B h Lh gc) :
    ∃ C ε₀ : ℝ, 0 < C ∧ 0 < ε₀ ∧
      ∀ (f : (Fin n → ℂ) × (Fin n → ℂ) → ℂ) (ε : ℝ),
        DifferentiableOn ℂ f (complexStrip n s₀ ×ˢ actionNbhd B r₀) →
        (∀ z ∈ complexStrip n s₀ ×ˢ actionNbhd B r₀, ∀ k : Fin n → ℤ,
          f (z.1 + (fun i => (k i : ℂ)), z.2) = f z) →
        (∀ θ I : Fin n → ℝ,
          ((fun i => (θ i : ℂ)), (fun i => (I i : ℂ))) ∈ complexStrip n s₀ ×ˢ actionNbhd B r₀ →
          (f ((fun i => (θ i : ℂ)), (fun i => (I i : ℂ)))).im = 0) →
        (∀ z ∈ complexStrip n s₀ ×ˢ actionNbhd B r₀, ‖f z‖ ≤ ε) → ε ≤ ε₀ →
        volume (fundamentalDomain B \ kamCover h f B r₀ τ (C * Real.sqrt ε)) ≤
          ENNReal.ofReal (C * ε ^ ((1 : ℝ) / 4)) :=
  head_of_gValid hD hCB hgc
#print axioms KAM.Head.head_empty
#print axioms KAM.Head.rpow_half_eq
#print axioms KAM.Head.rpow_neg_quarter_eq
#print axioms KAM.Head.Cmeas_nonneg
#print axioms KAM.Head.one_le_headC
#print axioms KAM.Head.A0_mul_le_headC
#print axioms KAM.Head.Cmeas_div_le_headC
#print axioms KAM.Head.head_positive
#print axioms KAM.Head.head_zero
#print axioms KAM.Head.head_of_gValid
#print axioms KAM.Head.nonneg_of_bound_nonempty
```

The exact-conclusion example emitted no diagnostics. Every one of the eleven `#print axioms`
commands above returned precisely `[propext, Classical.choice, Quot.sound]`; no `sorryAx` or
project axiom appeared. This includes every theorem newly declared in Assembly and the reused
negative-ε result. The named results checked were:

```text
head_empty, rpow_half_eq, rpow_neg_quarter_eq, Cmeas_nonneg,
one_le_headC, A0_mul_le_headC, Cmeas_div_le_headC,
head_positive, head_zero, head_of_gValid, nonneg_of_bound_nonempty
```

## Findings, limitations, errata, and handoff

No blocking, major, or minor implementation defect found. No suspected blueprint/source erratum
or introduced mathematical deviation found. The elementary ratio form for γ is equivalent to
the displayed blueprint root, and the import reuse is harmless.

Scope note: the manifest entry `kam.kam_positive_measure.v1` still has state `DRAFT_SORRY`,
export `KAM.kam_positive_measure`, ABI
`4c734e37b56b161f141cf03c217a4b47c7014dac1370c1f7863676c39c7c1538`, approved by D11.
Its unchanged proof remains `by sorry`. This is expected for P4-12: the accepted result is the
sorry-free conditional helper. P4-S1 must construct `exists_gValid` from the sealed G1/G2/G3,
perform the provider exact-type probe, and arrange the frozen seal. This report does not mark
HEAD PROVED or certify that future provider.

Only deliverable edited: `docs/campaign/audits/P4-12-audit-1.md`. Probe removed; no implementation,
frozen file, manifest, generated file, or predecessor was changed.
