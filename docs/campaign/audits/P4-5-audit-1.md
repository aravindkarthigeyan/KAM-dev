# P4-5 independent audit 1

Overall verdict: **PASS WITH NOTES**. Both package nodes match the blueprint and the binding Part 4 design, and their proofs elaborate with standard foundations only. This is acceptance of the conditional package interface: `GValid` remains an explicit input. It does not prove G1, discharge `GValid`, seal a frozen theorem, or close HEAD.

## Scope and frozen inputs

Audit date: 2026-10-27. Snapshot v1: HEAD `7f8e092b464a97adc2ac0c092adbeae3efa6ddac`, branch `k/p4-5`. Requested comparison: `git diff k/p4-2...HEAD`, with `k/p4-2` at `b73210a432a5b33debaba7d2002e7ccf6244be22`. The handoff names prover commit `af971ec`; `git diff af971ec HEAD -- KAM/Head/Apply.lean KAM/Head/Normalize.lean` is empty. The merge therefore preserves the actual submitted package bytes.

The requested comparison also contains work merged from main (NewtonError, Difference, Quadratic, Lagrangian and campaign metadata). Those are not P4-5 implementation and are outside this audit. `git diff main...HEAD --stat` additionally identifies the inherited P4-2 modules H1, Unperturbed and UnperturbedFrame. They are inspected at their consumption points, not independently recertified here.

Permission envelope: read-only audit, targeted compilation, disposable probes under `.lake/abi-scratch/`, and this report only. No source repairs, frozen edits, git mutations, or external actions. Method: focused tier-2 statement/proof audit using the manuscript-audit and lean-statement-audit workflows, with a separate adversarial pass over the G1 arguments, choice, strip widths, and constants. No subagents were used. The package brief and handoff determine scope and acceptance criteria.

SHA-256 snapshot manifest (paths relative to repository root):

```text
15c52e23e92b89733584be05f589d43ac138e77b6540a7d55589e7eea8ab2d21  KAM/Head/Apply.lean
86466d20ad0660685552bffe251ed85ecea677cf3914284c65367ea3709b5f37  KAM/Head/Normalize.lean
322e5594794336ddf8dc742648849145f20d3bfbc23c443883b21aa1d9bc6edb  KAM/Head/Defs.lean
6de22b372e66280b06e14c26220e311983c97ce848c868b8843c49230d780642  blueprint/parts/p4-measure.tex
cb301f9c57ff4ff7d36a88c850459937c8f4ca8b789e88eeb4ca710edf2987d2  docs/campaign/design/PART4-LEAN-DESIGN.md
21426231438e2d50aa0e1f9b5d5d4cdc757c3f63311d71bb50348beb3212d07e  docs/graph/K/DEPGRAPH.md
```

## Node correspondence

All line references below are at snapshot v1.

| Node | Lean declaration | Verdict | Evidence |
|---|---|---|---|
| `bp:p4:apply` | `KAM.Head.apply`, Apply.lean:72–102 | PASS | Blueprint p4-measure.tex:468–496; design:1208–1212. Same existence, strip `s/8`, holomorphy, primarity, reality, zero invariance error, ball radius `μ/2`, derivative bound `σK-μ/2`, and closeness `η₀/2`. |
| `bp:p4:normalize` | `KAM.Head.normalize`, Normalize.lean:105–123 | PASS | Blueprint:728–742; design:1252–1270. Same selected normalized torus, all APPLY structural conclusions, normalization, and displacement bound `η₀`. |

The substantive steps are covered by `KAM.Head.apply` itself (`step:p4:apply-g1`) and `KAM.Head.isApplyTorus_phaseShift_structure`, `KAM.Head.isApplyTorus_phaseShift_disp`, `KAM.Head.isApplyTorus_phaseShift` and `normalize` (`step:p4:normalize-proof`). No unimplemented step is being promoted through a declaration name alone.

Both node signatures are **byte-identical** to their Appendix A signatures before `:=`. Independent examples generated from those design signatures also elaborate when proved by the submitted declarations. This checks real argument order and definitional conversion, including the expanded result predicates.

### Binder and constant audit

The following inventory applies separately to both node theorems. SOURCE includes the explicit G interface prescribed by the binding design §2.2 and departure P1; STANDING means the HEAD data/perturbation premises at blueprint:138–147, expanded from the actual structures. No instance binder adds an analytic premise.

| Expanded input | Bin | Source / meaning |
|---|---|---|
| `n : ℕ` | TYPING | Dimension of the blueprint carriers. |
| `τ : ℝ` | TYPING | Diophantine exponent. |
| `s₀ : ℝ` | TYPING | Angle width. |
| `r₀ : ℝ` | TYPING | Action width. |
| `Lh : ℝ` | TYPING | Explicit nondegeneracy witness. |
| `B : Set (Fin n → ℝ)` | TYPING | Action domain. |
| `h : (Fin n → ℂ) → ℂ` | TYPING | Integrable Hamiltonian. |
| `f : (Fin n → ℂ) × (Fin n → ℂ) → ℂ` | TYPING | Perturbation. |
| `ε : ℝ` | TYPING | Perturbation size. |
| `γ : ℝ` | TYPING | Diophantine constant. |
| `gc : GConsts` | TYPING | Constants named in blueprint parameters; design §2.2. |
| `ω : Fin n → ℝ` | TYPING | Frequency, before the torus witness. |
| `hD.two_le` | STANDING | `2 ≤ n`; global convention is documented in the module's standing-data interface. |
| `hD.tau_gt` | STANDING | `n-1 < τ`. |
| `hD.s₀_pos` | STANDING | `0 < s₀`. |
| `hD.r₀_pos` | STANDING | `0 < r₀`. |
| `hD.isOpen` | STANDING | `IsOpen B`. |
| `hD.isBounded` | STANDING | Boundedness of B. |
| `hD.holo` | STANDING | Holomorphy of h on the action neighbourhood. |
| `hD.real` | STANDING | Reality of h at real points of that neighbourhood. |
| `hD.nondeg` | STANDING | For all I,J in closure B, `‖I-J‖ ≤ Lh * ‖g(I)-g(J)‖`. |
| `hP.holo` | STANDING | Holomorphy of f on the original product domain. |
| `hP.periodic` | STANDING | Period-one angle periodicity on that domain. |
| `hP.real` | STANDING | Reality of f at real points in that domain. |
| `hP.bound` | STANDING | Pointwise `‖f‖ ≤ ε` on the original domain. |
| `hgc.C11_pos` | SOURCE | Positive first G1 smallness constant. |
| `hgc.C21_pos` | SOURCE | Positive first G1 closeness constant. |
| `hgc.C12_pos` | SOURCE | Positive second G1 smallness constant. |
| `hgc.C22_pos` | SOURCE | Positive second G1 closeness constant. |
| `hgc.cG_pos` | SOURCE | Positive G2 constant. |
| `hgc.g1a` | SOURCE | Whole G1 body at `(s/4,s/8)` and fixed data constants. |
| `hgc.g1b` | SOURCE | Whole G1 body at `(3s/32,s/16)`. Unused here. |
| `hgc.g2` | SOURCE | Whole G2 body at `s/16`. Unused here. |
| `hgc.g3` | SOURCE | G3 measure bound for every positive α on g(B). Unused here. |
| `hSA.gamma_pos` | SOURCE | `(SA)`: `0 < γ`. |
| `hSA.gamma_le` | SOURCE | `(SA)`: `γ ≤ 1`. |
| `hSA.eps_nonneg` | SOURCE | `(SA)`: `0 ≤ ε`. |
| `hSA.eps_le` | SOURCE | `(SA)`: `ε ≤ cStar * γ^4`. |
| `hω.1` | SOURCE | `ω ∈ frequencyMap h '' B`. |
| `hω.2` | SOURCE | `IsDiophantine γ τ ω`. |

Counts per theorem at this interface-field level: TYPING 12, STANDING 13, SOURCE 15, RULED 0, EXCESS 0. The universally quantified G bodies are the existing, explicit source-result interface; their internal premises are checked at the actual g1a application below. There is no hidden APPLY, normalization, or Lipschitz field in `GValid`.

The bundle includes unused G inputs, exactly as the binding signature requires. The result is a conditional implication, not an assertion that these inputs have been constructed. Constants take only their design-listed arguments; `gc` is supplied before the application frequency and torus witness. No new existential constant is chosen after f, ε or γ. Norms are max norms, continuous-linear-map operator norms, and scoped row-sum matrix operator norms; no Euclidean carrier is introduced. No extra boundary-layer or nonemptiness premise is added (the design explicitly omits them here).

## G1 application: every premise supplied

At Apply.lean:90–100 the sole G invocation is `hgc.g1a`. It is instantiated with `𝔅 = domainD`, Hamiltonian `hbold h f`, `K = unperturbedTorus (invFreq h B ω)`, and error size `Fconst n s₀ r₀ 1 * ε`.

| G1 obligation | Actual supplying term / proof |
|---|---|
| Open domain | `ho` from `h1 hD hP hS.1.1`. |
| Integer-translation invariant domain | `hi` from the same proved H1 tuple. |
| Holomorphic Hamiltonian | `hd` from H1. |
| Periodic Hamiltonian | `hp` from H1. |
| Real Hamiltonian | `hr` from H1. |
| Four pointwise derivative/vector-field bounds by M | `hb` from H1; all four conjuncts retained. |
| Holomorphic torus on `T_{s/4}` | `hKd.differentiableOn`, from unperturbed (a). |
| Primary torus | `hKp _`, from unperturbed (a). |
| Real torus | `hKr`, from unperturbed (a). |
| Ball of radius μ lies in domain | `hball` from unperturbed (g), restricted by `Metric.ball_subset_ball hμδ`. |
| Derivative ≤ σK−μ | Exact norm 1 from `hKL`; `parameters` gives σK−μ=2. |
| Gram determinant unit and inverse row bounds | `hG`; inverse norm 1, σB−μ=2; `rowSum_le_of_norm_le`. |
| Average torsion determinant unit | `hTu` from `hTw hS.1.2`. |
| Average torsion inverse row bounds | `hTn ≤ 2 Lplus`, weakened to `4 Lplus = σT−μ` with the same matrix norm conversion. No dimension factor is lost. |
| Positive γ | `hSA.gamma_pos`. |
| γ≤γbar=1 | `hSA.gamma_le`. |
| Diophantine frequency | `hdio` from `hω`. |
| Invariance error ≤ e | `hE hfreq.symm` from unperturbed (f), with the explicit inclusion `T_{s/4} ⊆ T_{s/2}`. |
| Strict smallness | `smallness` (s2) gives quotient ≤1/2; `hS.2.1.trans_lt (by norm_num)` gives <1. |

`inverse_freq hD` supplies both `invFreq h B ω ∈ B` and `frequencyMap h (invFreq h B ω) = ω`; neither is an assumed torus property. All seven G1 output clauses are retained. `apply_closeness_eq` proves the exact identity of the output bound with `η₀/2` by ring arithmetic. This follows the graph predecessors listed for `step:p4:apply-g1`.

## Normalization and definition classification

There are **no new `def`, `abbrev` or `structure` commands** in either audited module. The only new declarations are eight proved theorems (two nodes and six helpers).

The existing definitions consumed by the package were inspected for their relevant semantics:

| Definition / bundle | Classification and result |
|---|---|
| `Data`, `Pert`, `SA`, `GValid` | Explicit premise structures, expanded above. No Part 4 result smuggled into a field. |
| `IsApplyTorus` (Defs.lean:278–289) | Literal seven-clause APPLY result predicate; no fallback or result weakening. |
| `applyTorus` (Defs.lean:292–295) | Arbitrary witness selector, exactly the binding design's `Classical.epsilon (IsApplyTorus …)` and blueprint's “fixed by choice”. Existence is proved at use. It is not characterized as a unique torus. |
| `normTorus` (Defs.lean:298–302) | Literal phase shift of that selected witness by the negative phase average. |
| `normDisp` (Defs.lean:305–309) | Literal difference from the unperturbed torus at invFreq. |
| `phaseAverage`, `IsNormalized`, `phaseShift` | Coordinatewise real average of angle displacement over the unit cube, zero phase average, and real translation respectively. Holomorphy and reality make this the intended complex-displacement normalization. |
| `OmegaGamma`, `eta0`, `A0`, σK/σB/σT | Literal intersection and arithmetic formulas; the output and smallness computations use the prescribed normalizations. |
| `invFreq` | Existing total inverse selector. `inverse_freq` is applied on g(B), where it proves membership and the inverse identity before any use. |

BODY_MATCH and PUBLIC_CARRIER: OK for these consumed literal formulas at the specified design interfaces. Characterization-defined unique-object machinery is N/A: APPLY intentionally selects an arbitrary torus, and this package asserts no selection independence or uniqueness. Total off-domain selector behavior is an explicit existing design convention (P8/P9), not a new deviation introduced by this package. The present theorems only assert properties under the valid hypotheses; no fallback is used to prove them.

Normalize.lean:122–123 quotes the actual existence proof:

```lean
Classical.epsilon_spec (apply hD hP hgc hSA hω)
```

Its type explicitly asserts `IsApplyTorus … (applyTorus …)`. Consequently the epsilon selector cannot supply an unproved witness here. The helper proves the result for **every** K satisfying that predicate, so no special choice property is needed.

`isApplyTorus_phaseShift_structure` calls `shift_design` at positive width `s/8`, with all three structural assumptions from hK, and transfers invariance, ball containment and derivative bounds. Its negative-phase instance gives normalization. `isApplyTorus_phaseShift_disp` bounds the phase by `η₀/2` using real points in the same strip, then applies the displacement estimate at `θ + ι(-phaseAverage K)`, which remains in the strip. Triangle arithmetic gives exactly `η₀`, with no further strip loss or G invocation.

The adversarial pass checked whether the selector could be used without existence, whether translating the torus should subtract a target-angle vector, whether a row-sum norm conversion loses a factor, and whether ≤1/2 was silently used as <1. Each concern is refuted by the cited terms and the literal blueprint convention `K^[a](θ)=K(θ+ιa)`. No reportable mathematical finding survived.

## Verification evidence

Commands were serialized for all Lean invocations, including the ABI check performed inside lint. No heartbeat or recursion override, clean, full-library build, or package-cache mutation was requested.

1. `nice -n 5 lake build KAM.Head.Normalize` — exit 0 (also checks the imported Apply target):

   ```text
   Build completed successfully (2929 jobs).
   ```

   The job count is Lake's dependency closure count; this was a targeted build against the seeded snapshot, not a library rebuild from scratch.

2. Disposable `.lake/abi-scratch/P45Audit.lean`, compiled with `nice -n 5 lake env lean .lake/abi-scratch/P45Audit.lean` — exit 0, no warnings/errors. The two examples used the complete Appendix A signatures, extracted from `theorem apply (hD …)` / `theorem normalize (hD …)` up to `:= sorry`, renamed to `example`, and proved by `exact KAM.Head.apply hD hP hgc hSA hω` / `exact KAM.Head.normalize hD hP hgc hSA hω`. Imports: `KAM.Head.Normalize`; scope: `Matrix.Norms.Operator`; namespace and variable types identical to those modules. This is an exact design-type probe, not a self-type probe. The file was deleted afterwards.

   All eight `#print axioms` queries in that file returned:

   ```text
   'KAM.Head.muParam_le_deltaStar' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Head.apply_closeness_eq' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Head.rowSum_le_of_norm_le' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Head.apply' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Head.isApplyTorus_phaseShift_structure' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Head.isApplyTorus_phaseShift_disp' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Head.isApplyTorus_phaseShift' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Head.normalize' depends on axioms: [propext, Classical.choice, Quot.sound]
   ```

3. `sh scripts/lint_sources.sh` — exit 0:

   ```text
   check_lean_modules: PASS (272 Lean files, 0 comparator configurations)
   FROZEN-ANCHOR GUARD OK
   ABI HASHES OK (144 frozen declarations)
   ```

4. `git diff --check k/p4-2...HEAD` — exit 0, no output. Both `git diff k/p4-2...HEAD -- KAM/Frozen manifest` and `git diff main...HEAD -- KAM/Frozen manifest` — exit 0, no output.

5. `wc -l KAM/Head/Apply.lean KAM/Head/Normalize.lean`:

   ```text
     106 KAM/Head/Apply.lean
     127 KAM/Head/Normalize.lean
     233 total
   ```

6. Source inspection and lint confirm copyright, `module`, interface `public import`, module docstring and exposed public section in both files. A targeted `rg` scan for definition commands, proof escapes, `EuclideanSpace` and `set_option` returned no matches (exit 1). A Python recursive walk of project import lines starting at Normalize reported `61 modules; forbidden modules: []` for prefixes `KAM.Provider.` and `KAM.Frozen.Theorems.`. Frozen definition imports are permitted. Neither direct nor transitive quarantine bypass is present.

7. Python extraction/comparison of each submitted theorem signature against Appendix A produced:

   ```text
   apply: signature byte equality to Appendix A = True
   normalize: signature byte equality to Appendix A = True
   ```

Provider exact-frozen-type probe: **N/A**, this is not a provider package. The exact design-type probes above cover both package interfaces. No frozen theorem was imported by the probe.

## Findings, limitations and closeout

Blocking findings: none. Major findings: none. Minor source/proof findings: none. No repair is proposed.

Notes retained with the passing verdict:

- The standard-only axiom output certifies the **implications with `GValid` as a premise**. It does not certify existence of that premise. The design requires its discharge later in the HEAD provider.
- H1/unperturbed come from P4-2, identified by the handoff as in audit. This report verifies their correct consumption and absence of extra axioms in the resulting package, not their complete independent blueprint audits.
- The wider merged diff contains other packages and generated HQ changes. No authorship or hygiene defect is inferred from their presence in that comparison.

Suspected pinned-source errata: none found in scope. No external PDF/source theorem was independently audited. New deviations introduced by P4-5: none; existing design P1/P2/P8/P9 conventions are disclosed above. No source repair, manifest change, or graph status update was made.

Closeout: 2/2 package result nodes checked; substantive proof steps located; all 8 new theorems axiom-checked; exact signature probes passed; targeted build and repository lint passed; disposable probe removed. Only this report was written as an audit deliverable. Package acceptance is conditional as stated at the start.
