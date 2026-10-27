# P2-13 independent audit 1

Overall verdict: **PASS WITH NOTES**.

The explicit iteration matches the binding design and all six conclusions of `bp:p2:iteration`.
No blocking, major, or minor implementation defect was found. The notes below distinguish the
closed iteration theorem from its conditional induction helper, explain totality outside the
source hypotheses, and bound this audit to P2-13. This does not seal G1 or audit its limit/provider.

## Scope, authority, and frozen inputs

Audit date: 2026-10-27. Tier 2 focused, refute-first audit, independent of the prover.
Permission envelope: the requested report only; temporary Lean probes under `.lake/abi-scratch/`,
removed after use; targeted builds and checks authorized by `AUDIT-PACKAGE.md`. No implementation,
frozen, manifest, generated, or git-history edits. No delegation or network access.

Read `AGENTS.md`, `docs/PLAN.md`, `docs/DECISIONS.md`, `AUDIT-PACKAGE.md`, the P2-13 and common
briefs, the handoff, the binding Part 2/3 design, the graph records, and the actual blueprint.
The statement-audit and manuscript-audit skills supplied the binder, definition, provenance,
and adversarial-check methodology; the package brief supplies the acceptance criteria.

Snapshot v1:

- Checked-out HEAD: `f83dd2a0a8394e5f6410c994471493ccba1df1a4`.
- P2-13 implementation commit: `ee0c7f2` (handoff's implementation revision).
- Comparison ref `k/p2-12`: `a8acfedc090230c4a07883c75967b1d44cbecf1f`.
- `git diff k/p2-12...HEAD` warns of multiple merge bases and selects
  `3d7ac61e58a331f6cbb10c090645df267fcfa906`; the other base from
  `git merge-base --all k/p2-12 HEAD` is `83b68e21da5033025e975c2fbb8a80d9806532e6`.
- The requested triple-dot diff therefore also contains predecessor and unrelated merged packages.
  Inspected that comparison; assessed P2-13's `KAM/Apost/Iteration.lean` and its generated root import.
  `git show --stat ee0c7f2` identifies precisely those two changed paths (487 + 1 lines).
  Direct endpoint comparison confirms `Step.lean` and `NewtonError.lean` are unchanged from
  `k/p2-12`; their contracts are inputs, not newly certified implementations here.

SHA256 of the source and governing evidence:

| Path | SHA256 |
|---|---|
| `KAM/Apost/Iteration.lean` | `10402514cac9e8f81240f085eaf670eaee6492222abe0c51afbd569492f67a4c` |
| `docs/campaign/design/PART23-LEAN-DESIGN.md` | `1b4bd7224e90844d78088822931f1d5e668dcc27cf5cd2351671da108985c125` |
| `blueprint/parts/p2-aposteriori.tex` | `c8fe335ca1f87390d803ffec36254804290f3962910284b9d7afd8fec3530f30` |
| `docs/campaign/briefs/AUDIT-PACKAGE.md` | `76b821648f341c99cd6787211cf983e5e1f281aff186f9b9c0b252b8f9d0e275` |
| `docs/campaign/audits/P2-13-handoff.md` | `bd597d0510ac78b182169bcdc68f411dfa0b77bff8a3e308c56d924c21d6ed8d` |

All implementation line references below refer to this HEAD and hash; blueprint locators refer
to the pinned local blueprint hash above. The handoff is untracked input, preserved unchanged.
No frozen theorem is being promoted: graph `bp:p2:iteration` has `FROZEN_FILE: -`.

## Node ledger

| Node | Lean declaration | Verdict | Evidence/reason |
|---|---|---|---|
| def `kamSeq` | `KAM.Apost.kamSeq` (49–52) | PASS | Literal recursion matches Appendix A byte for byte; zero is K and successor is the specified Newton map. See totality analysis below. |
| `bp:p2:iteration` | `KAM.Apost.iteration` (416–483) | PASS | Signature byte-identical to Appendix A; exact-type example elaborates; all six blueprint items at p2:971–991 occur with identical constants, strips, and margins. |
| `step:p2:it-sums` | `KAM.Apost.sums_le` (172–212), using `iteration_sums`, `error_decay_sum` | PASS (bridge) | The four partial sums have bounds μ/4, μ/4, μ/4, μ/2. Infinite weighted sums come from `error_decay_sum`; multiplying by the nonnegative factors in 130–168 gives the blueprint's infinite-sum comparisons. No assertion of summability from an unguarded tsum. |
| `step:p2:it-stepsmall` | `KAM.Apost.stepsmall_seq` (232–245); final comparison at 325–329 | PASS (bridge) | Weighted decay at j=2a yields the μ/2 bound; `stage_succ` proves μ/2 ≤ μ−D_s from the proved sum estimate before applying `step`. |
| `step:p2:it-base` | `KAM.Apost.stage_zero` (274–299) | PASS | Explicit construction from initial hypotheses and empty sums. Positivity/nonnegative error are supplied by `iteration`, not additional final premises. |
| `step:p2:it-step` | `KAM.Apost.stage_succ` (303–411) | PASS (induction helper) | Consumes the previous Stage and proved schedule/decay/sum facts; calls `step`; proves the next Stage and increments. Global sum bounds give the numerical right endpoints in final assembly. |

The graph locators are `docs/graph/K/DEPGRAPH.md:7532–7676`; the independently read source
is `blueprint/parts/p2-aposteriori.tex:971–1030`. Graph status metadata is not proof evidence.

## Expanded inputs and constant scope

The following is the complete outer typing-binder inventory and the expanded logical-input
inventory of `iteration`. Bound variables inside a source predicate (θ, z, k, i, j) have exactly
that predicate's source carriers and scopes. Conjunctions in `hG`, `hT`, and `Standing.bounds`
are split to expose every logical premise. No project instance adds an assumption.

| Binder / expanded input | Bin | Source / interpretation |
|---|---|---|
| n : ℕ | TYPING | p2 standing; finite coordinate dimension |
| τ : ℝ | TYPING | p2 standing |
| M : ℝ | TYPING | p2 standing |
| σK : ℝ | TYPING | p2 standing |
| σB : ℝ | TYPING | p2 standing |
| σT : ℝ | TYPING | p2 standing |
| 𝔅 : Set ((Fin n → ℂ) × (Fin n → ℂ)) | TYPING | p2 standing phase domain |
| h : ((Fin n → ℂ) × (Fin n → ℂ)) → ℂ | TYPING | p2 standing Hamiltonian |
| ω : Fin n → ℝ | TYPING | p2 standing frequency |
| γ : ℝ | TYPING | p2 standing Diophantine constant |
| ρ : ℝ | TYPING | p2:972 |
| ρinf : ℝ | TYPING | p2:972 |
| μ : ℝ | TYPING | p2:972 |
| e : ℝ | TYPING | p2:975–977 |
| K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ) | TYPING | p2:972–979 |
| hS.two_le | STANDING | p2:53–64, n ≥ 2 |
| hS.tau_ge | STANDING | p2:53–64, τ ≥ n−1 |
| hS.M_pos | STANDING | p2:53–64, M > 0 |
| hS.σK_pos | STANDING | p2:53–64, σK > 0 |
| hS.σB_pos | STANDING | p2:53–64, σB > 0 |
| hS.σT_pos | STANDING | p2:53–64, σT > 0 |
| hS.isOpen | STANDING | p2:54, open 𝔅 |
| hS.transl_mem | STANDING | p2:54–55, integer angle translates remain in 𝔅 |
| hS.holo | STANDING | p2:55, h holomorphic on 𝔅 |
| hS.periodic | STANDING | p2:55–56, period one in angles |
| hS.real | STANDING | p2:56, real on real points of 𝔅 |
| hS.bounds, first conjunct | STANDING | p2:58, bound on X_h |
| hS.bounds, second conjunct | STANDING | p2:58, bound on DX_h |
| hS.bounds, third conjunct | STANDING | p2:58, bilinear-operator bound on D²X_h |
| hS.gamma_pos | STANDING | p2:60, γ > 0 |
| hS.dio | STANDING | p2:60, ω ∈ Dio(γ,τ) |
| hρinf | SOURCE | p2:972, 0 < ρinf |
| hρ | SOURCE | p2:972, ρinf < ρ |
| hμ | SOURCE | p2:972, μ > 0 |
| hK | SOURCE | p2:973, holomorphic on T_ρ |
| hKp | SOURCE | p2:973, primary on T_ρ |
| hKr | SOURCE | p2:973, real on reals |
| hball | SOURCE | p2:973–974, open μ-ball containment |
| hDK | SOURCE | p2:974, derivative bound σK−μ |
| hG, first conjunct | SOURCE | p2:974, det G nonzero, equivalently IsUnit over ℂ |
| hG, second conjunct | SOURCE | p2:974, inverse Gram bound σB−μ |
| hT, first conjunct | SOURCE | p2:974–975, invertible averaged torsion |
| hT, second conjunct | SOURCE | p2:975, inverse averaged torsion bound σT−μ |
| hE | SOURCE | p2:975, pointwise error ≤ e on T_ρ |
| he1 | SOURCE | p2:977, e ≤ 1 |
| hsmall | SOURCE | p2:977, c_star e/(γ⁴ δ₀^(2a)) ≤ 1 |

Counts under this stated convention: TYPING 15, STANDING 16, SOURCE 15, RULED 0, EXCESS 0.
`Standing` is expanded from `KAM/Apost/Standing.lean:41–73`; the local module docstring
points to Part 2 and the binding design explicitly imports its standing assumptions.

Norms are the max norms of `Fin n → ℂ` and their product, the CLM operator norm for derivatives,
and maximum absolute row-sum operator norm for matrices (`open scoped Matrix.Norms.Operator`,
line 40). Invertibility is retained separately from a norm bound on the total matrix inverse.
The torsion term is `(torsionAverage h K_s ω)⁻¹`, not the average of the pointwise inverse.
Widths are geometric open-strip widths. Real exponents are Real.rpow; γ² and γ⁴ are natural powers.

There are no new selectable constants: `c_star` takes exactly
(n,τ,M,σK,σB,σT,μ); δ₀ takes (ρ,ρinf); the other constants retain the argument lists in design §2.3.
No constant depends on s, K, h, ω, or the domain beyond the declared standing bounds.
Replacing existential maps by `kamSeq` is the explicitly mandated stronger construction (L17).
The theorem assumes neither an iteration witness nor the conclusions of any preceding result.

## Definition classification and full-carrier behavior

All six new definitions/structures are classified here; there is no new abbrev.

| Declaration | Classification | Body/carrier check |
|---|---|---|
| `kamSeq` | Literal recursively specified sequence | Matches design Appendix A in full, including width `r_s−2δ_s`. Defined for every h,K,ω,ρ,ρinf and every natural s. No choice of a step witness or validity test. |
| `sumD` | Literal finite sum | Exactly ∑ j<s d_j for every real parameter tuple and s. Empty sum and successor equations proved. |
| `sumDK` | Literal finite sum | Exactly ∑ j<s n d_j/δ_j. Same full-carrier equations. |
| `sumB` | Literal finite sum | Exactly ∑ j<s C_B d_j/δ_j. Same full-carrier equations. |
| `sumT` | Literal finite sum | Exactly ∑ j<s 2 mSize² C_DT d_j/δ_j². Same full-carrier equations. |
| `Stage` | Internal proof invariant, Prop-structure | Five fields: admissibility, displacement from K, derivative bound, inverse Gram bound, inverse averaged torsion bound. These are intermediate induction claims, not a new source object or an assumed substitute for the final result. |

For `kamSeq` and the four sums:

```text
BODY_MATCH: OK
PUBLIC_CARRIER: OK
WELL_DEFINEDNESS: N/A_LITERAL
CHARACTERIZATION: N/A_LITERAL
CHOICE_INDEPENDENCE: N/A
DEFINITION_VERDICT: PASS
```

Full-carrier question from the handoff: **a failed step hypothesis does not cause kamSeq to stop,
select an arbitrary successor, or return a new validity-dependent default.** It still evaluates
`newtonMap` by the same recurrence. That predecessor definition is `K_s + correction` inside
`T_(r_s−2δ_s)` and `K_s` outside (`NewtonError.lean:53–56`), exactly the design's specified extension.
If that width is nonpositive and n is positive, the strip is empty, so this successor equals K_s
everywhere. With n=0 the strip predicate is vacuous, illustrating why arbitrary parameters
receive only the literal recursion, not a theorem asserting valid KAM dynamics.

On other invalid inputs the pre-existing fderiv, matrix inverse, integral and Fourier tsum have
Lean's total semantics. In particular a non-summable scalar Fourier series in `cohSolution`
uses tsum's default; no cohomological or analytic guarantee is asserted there. This is not a
new object defined only on a valid locus with promised semantics deferred: the complete literal
formula is fixed now, and `iteration` proves its KAM properties under exactly the source premises.
See p0:57–62 (totality), design §0.4, §2.2 and L17; `cohSolution` is the explicit Fourier series
in `KAM/Strip/CohomologicalDefs.lean:37–40`, reached through `cohR` and the triangular correction.
No invalid-input default is used as a proof step.

## Induction and adversarial checks

Read the proof spine in full, then attempted to break it by changing stage, strip, margin,
exponent, error sign, or invertibility interpretation. No candidate defect survived.

1. **Initial error sign.** `iteration:454–456` obtains 0 ≤ e by evaluating hE at 0 in the
   nonempty initial strip. It does not silently add `0 ≤ e` to its signature. Likewise ρ > 0
   follows from the two width premises, and K(T_ρ) ⊆ 𝔅 follows from hball and μ > 0.
2. **Frequency bound.** `iteration:464–465` calls `frequency` with the actual initial K, e≤1,
   containment, derivative and invertibility bounds. Thus γ≤Θ is produced, not assumed in
   the final theorem. Its occurrence as an input to the distinct arithmetic helper `sums_le`
   is discharged at that call site.
3. **Summed bounds.** `partial_sum_le:124–127` first obtains Summable and its tsum estimate,
   then bounds each finite partial sum using nonnegative terms. The factors in 130–168
   convert d_j and all three weighted variants exactly. `eight_le_aExp` implies the needed
   a,a+1,a+2 ≤ 2a−1; δ₀≤1 and γ≤Θ are supplied to `iteration_sums` (179–180).
4. **Stage smallness.** Weighted decay at j=2a is allowed (inclusive endpoint). `stepsmall_seq`
   multiplies it by nonnegative c_step/γ⁴ and uses `iteration_step_small`. Before `step`,
   `stage_succ:325–329` replaces μ/2 by μ−D_s using D_s≤μ/4; the inequality has the right direction.
5. **Step application.** Stage.adm supplies every admissibility field; schedule supplies
   δ_s>0, δ_s≤1 and 4δ_s<r_s. The map equality `hk`, d_s equality `hd`, and successor-error
   equality `hε` are all rfl. `step` is applied at precisely
   (r,β,ε,δ)=(r_s,μ−D_s,ε_s,δ_s).
6. **Strips and derivatives.** `stage_succ:342–349` proves the new strip is contained in the
   old strip and in both the −2δ and −3δ strips. Value/error/ball results use −2δ; derivative
   and Gram perturbation results use −3δ. The global piecewise maps are the same maps used
   in `step`; no restriction is substituted before taking fderiv.
7. **Margins and units.** The new ball radius is exactly μ−D_(s+1) by `hβ:392–395`.
   The new radius is positive using D_(s+1)≤μ/4. New error is nonnegative by the recurrence,
   and ≤1 by the proved heps and he1. The new Gram and averaged torsion determinant units
   come from `step` itself, not from bounds on a total inverse. Numeric derivative/Gram/twist
   bounds follow from sums at s+1; no next-stage estimate is assumed through Stage.
8. **No circular helper assumptions.** `stage_succ` is explicitly a conditional induction
   helper: heps, hsm, hsum and st express its inputs. `iteration:466–474` produces the first
   three before induction and produces Stage by `stage_zero` and ordinary Nat induction.
   The final conjunction (483) also supplies each right-hand numerical bound, so the helper
   is never substituted for the closed source result.

The exact source conclusion was checked item by item rather than inferred from compilation.
No contradiction with the local blueprint, suspected pinned-source erratum, or newly introduced
mathematical deviation was found. External HL19 PDF fidelity and predecessor proof packages
were not re-audited; this audit's primary mathematical source is the local blueprint requested
by the package brief.

## Verification commands and outputs

All Lean commands ran serially. The lint's internal ABI probe finished before the audit probe
started. No heartbeat, recursion, or synthesis limit was changed; no clean or full-library build.

`nice -n 5 lake build KAM.Apost.Iteration` — exit 0:

```text
Build completed successfully (3194 jobs).
```

This was a targeted Lake build against the existing worktree build overlay, not evidence that
3194 modules were freshly recompiled. The fresh consumer probe below independently elaborated.

`sh scripts/lint_sources.sh` — exit 0:

```text
check_lean_modules: PASS (269 Lean files, 0 comparator configurations)
FROZEN-ANCHOR GUARD OK
ABI HASHES OK (144 frozen declarations)
```

`git diff k/p2-12...HEAD -- KAM/Frozen manifest` — exit 0; empty stdout, stderr:

```text
warning: k/p2-12...HEAD: multiple merge bases, using 3d7ac61e58a331f6cbb10c090645df267fcfa906
```

`git diff main...HEAD -- KAM/Frozen manifest` — exit 0; no output.

`git diff k/p2-12 HEAD -- KAM/Apost/Step.lean KAM/Apost/NewtonError.lean` — exit 0; no output.

`git diff --check k/p2-12...HEAD` — exit 0; empty stdout and the same merge-base warning.

`wc -l KAM/Apost/Iteration.lean`:

```text
487 KAM/Apost/Iteration.lean
```

`rg -n 'sorry|admit|axiom|unsafe|opaque|set_option' KAM/Apost/Iteration.lean` — exit 1;
no matches. Module header, copyright, module docstring, public imports/section and exposed
literal definitions checked at lines 1–40. Provider quarantine checked by source lint and
axiom closure. The generated root import is present and passes `gen_root_imports.py --check`
through lint; neither root file nor README was edited by this audit.

Signature/definition extraction with Python `str.index` (using the unique Appendix A
`theorem iteration (hS` / `def kamSeq (h :` anchors, then the declaration delimiters):

```text
iteration design signature byte equality: True
kamSeq design definition byte equality: True
probe created: .lake/abi-scratch/audit_p213_1.lean axiom queries: 27
```

The untracked probe imports `KAM.Apost.Iteration`, opens the matrix operator norm scope and
namespace, and copies the full Appendix A `iteration` signature as an `example`, proved by:

```lean
  exact iteration hS hρinf hρ hμ hK hKp hKr hball hDK hG hT hE he1 hsmall
```

It also proves the unconditional successor recursion by rfl and issues `#print axioms` for
every top-level def, structure and theorem matched by
`^(?:theorem|def|structure) (\w+)` in `Iteration.lean` (27 declarations).
Reproduction: copy the Appendix A signature through the text before ` := sorry`, replace
`theorem iteration` by `example`, use the variable context of Iteration lines 45–46, insert
the proof above, and append those axiom queries. No implementation proof was copied.

`nice -n 5 lake env lean .lake/abi-scratch/audit_p213_1.lean` — exit 0;
no warnings or errors; complete stdout:

```text
'KAM.Apost.kamSeq' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.sumD' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.sumDK' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.sumB' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.sumT' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.sumD_zero' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.sumDK_zero' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.sumB_zero' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.sumT_zero' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.sumD_succ' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.sumDK_succ' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.sumB_succ' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.sumT_succ' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.eps_div_nonneg' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.partial_sum_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.dSeq_eq' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.dK_term_eq' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.dB_term_eq' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.dT_term_eq' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.sums_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.eps_div_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.eps_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.stepsmall_seq' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.Stage' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.stage_zero' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.stage_succ' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.iteration' depends on axioms: [propext, Classical.choice, Quot.sound]
```

Provider exact-type probe: **N/A**; P2-13 has no provider and seals no frozen export.
The independently extracted exact Appendix A iteration signature was nevertheless compiled
as a consumer example, as described above. The audit's probe was removed after successful use;
the pre-existing `.lake/abi-scratch/p213_axioms.lean` was not touched.

## Findings, limits, and closeout

No blocking, major, or minor findings; no proposed code repair.

Nonblocking review notes:

- `stage_succ` is conditional by design, and `sums_le` states partial-sum estimates. Neither
  alone is the whole source proposition. Their exact composition in `iteration`, together
  with the weighted infinite-sum input and arithmetic constants, is what passes this audit.
- On invalid arbitrary inputs, the sequence retains the literal recurrence and the documented
  predecessor total semantics. The theorem's conclusions apply only under the source
  hypotheses; this report does not assert unconditional holomorphy or a successful KAM step.
- The multiple-merge-base diff includes unrelated package changes. This verdict covers the
  requested P2-13 node and steps, using the existing predecessor contracts, and the generated
  root import's hygiene. It does not re-certify P2-9/P2-12, uniqueness, Lagrangianity, limit
  convergence, G1, any frozen theorem, or the entire repository's mathematical closure.

Closeout: all six handoff rows classified; all new definitions/structures classified; final
premises expanded with zero EXCESS; proof spine and adverse cases checked; signature probe,
27 axiom queries, targeted build, source lint and frozen integrity checks passed. No unresolved
candidate finding. Only this audit report was added to tracked-source space; no commit or push.
