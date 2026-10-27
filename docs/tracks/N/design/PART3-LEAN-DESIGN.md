# Lean design for blueprint-N Part 3 (the Hamiltonian ODE layer, shared by tracks I, N, P)

Design v1, 2026-10-27, branch `inp-design-n3` (brief: design the Lean architecture for `bpN:p3:*`). Planning
evidence, not approved Lean. Nothing here is frozen; Part 3 has no frozen theorem, so there is no provider.
Modeled on track K's `PART23-LEAN-DESIGN.md`.

**The signatures.** Every Part 3 result node has its exact Lean statement in
`.drafts/design/NPart3Signatures.lean` (untracked; copied verbatim in Appendix A).
- The file is 683 lines, sha256 `1401a7d605221d802b45c280797d2bdb19c6e024a8c2b57e3f4a1035528e63a1`.
- `nice -n 5 lake env lean .drafts/design/NPart3Signatures.lean` exits 0 against the build snapshot of `0ab0518`
  in about 6 s. It prints 53 diagnostics, all `declaration uses 'sorry'`; there is no other warning, no
  `set_option`, no `maxHeartbeats`.
- Proved in the file (no `sorry`): `gen_symmetry`, `gen_uniqueness_inter`, `ham_smooth_c1`,
  `radius_eq_planeLength` (by `rfl`), `restrictedField_eq` (by `rfl`) and three `ProperSpace` instance
  checks.
- The corrected Picard-Lindelof statement `picard_lindelof_ball` was proved once in a scratch file from
  `IsPicardLindelof.exists_eq_forall_mem_Icc_hasDerivWithinAt₀` (about 15 lines), so the Mathlib route of
  Section 5, B1 is checked and not only planned.

## 0. Decisions in brief

1. **One generic layer.** The general layer is stated for `E` with `[NormedAddCommGroup E] [NormedSpace ℝ E]`, and
   `[ProperSpace E]` where compactness is used (existence, extension, maximality, continuation). Every consumer
   carrier is proper by instance: `(Fin n → ℝ) × (Fin n → ℝ)` (tracks N, I), `(Fin N → Fin 2 → ℝ) × (Fin N → Fin 2 → ℝ)`
   (Newton), `(Fin 2 → ℝ) × (Fin 2 → ℝ)` (restricted), and the chart spaces of track P. No `EuclideanSpace`; the
   plane length is the frozen `planeLength` and the sup norm is the ambient one.
2. **The predicate.** `KAM.ODE.IsSolutionIn F W J z := ∀ t ∈ J, z t ∈ W ∧ HasDerivAt z (F (z t)) t`, the blueprint's
   suggested name. `F : E → E` is a total function; `W` open and `ContDiffOn ℝ 1 F W` are hypotheses of the
   theorems, never fields of the predicate.
3. **Maximal intervals use `EReal`.** `T₋ ∈ [-∞, 0)`, `T₊ ∈ (0, +∞]` are `EReal`; the interval is
   `eIoo T₋ T₊ = {t : ℝ | T₋ < t ∧ t < T₊}`. "`T₊ = +∞`" is `T₊ = ⊤`. The maximal solution is a Prop-structure
   `IsMaximalSolution F W x₀ T₋ T₊ z` (the blueprint's "let `(T₋, T₊)` and `z` be the maximal interval and
   solution"), so `gen_continuation` and the Newton corollaries take it as a premise, which is a source premise
   (rule 6), not a conclusion. Rejected: a `Set ℝ` interval `I` (no `T_±`; consumers say "`T_+ = ∞`") and
   `ℝ≥0∞`-valued `T_+` plus a separate `T_-` (asymmetric; reversal needs a second copy).
4. **Mathlib first.** Picard-Lindelof is `IsPicardLindelof` with `r = 0` and a time-independent field; uniqueness is
   `ODE_solution_unique_of_mem_Icc_right/_left` with `s := fun _ => K`; local Lipschitz from `C¹` is
   `ContDiffAt.exists_lipschitzOnWith` and `LocallyLipschitzOn.exists_lipschitzOnWith_of_compact`. Maximal solutions,
   continuation, first exit, confinement glue and every uniform-data statement are **not** in Mathlib (checked: no
   `maximal`/`continuation` in `Mathlib/Analysis/ODE`; the manifold `IsIntegralCurve*` API has no maximality).
   Grönwall is not needed anywhere: uniqueness on arbitrary intervals goes through a compact piece and
   `gen_lip`.
5. **Hypotheses are minimal.** Where a blueprint hypothesis is not used by any proof step it is dropped (listed in
   Section 4); the statements are then strictly stronger. This keeps the unused-variable linter quiet and the
   statements easy to apply.
6. **Layout.** The shared layer lives in `KAM/ODE/` (namespace `KAM.ODE`, the blueprint's name), not under
   `KAM/Nekhoroshev/`: tracks I and P import it and must not import N. Only the track-N specializations (the
   `s-N` subsection) live in `KAM/Nekhoroshev/ODE/Specialization.lean`. Inside `namespace KAM.ODE`, Mathlib's
   `ODE.*` must be written `_root_.ODE.*` (none is used by name here; `ODE_solution_unique…` are root-level).
7. **Packages.** 12 prover packages (N3-1 … N3-10b), 350-900 lines each, in 5 waves, about 6,100 lines in total;
   the critical path is 5 waves (Section 7). No package needs Part 1 except `holo_input` (N3-10a), which restates
   Part 1 `bpN:p1:holo-real`.

## 1. Carriers

| Object | Lean carrier | Notes |
|---|---|---|
| state space, general layer | `E`, `[NormedAddCommGroup E] [NormedSpace ℝ E]` (+ `[ProperSpace E]`) | complete by `ProperSpace`; compact = closed bounded |
| phase space `P = ℝⁿ × ℝⁿ` | `(Fin n → ℝ) × (Fin n → ℝ)` | max norm is the frozen product norm; points `(θ, I)` |
| angle translation `(k, 0)`, `k ∈ ℤⁿ` | `KAM.ODE.angleShift (k : Fin n → ℤ)` | `(fun i => (k i : ℝ), 0)` |
| `ℝⁿ × U` | `(univ : Set (Fin n → ℝ)) ×ˢ U` | `Wdom n R s = univ ×ˢ ball 0 (R + s)` |
| Newton space | `(Fin N → Fin 2 → ℝ) × (Fin N → Fin 2 → ℝ)` | matches `IsNewtonSolution`'s `Q V : ℝ → Fin N → Fin 2 → ℝ` |
| restricted space | `(Fin 2 → ℝ) × (Fin 2 → ℝ)` | matches `IsRestrictedSolutionOn` |
| times, intervals | `ℝ`, `Set ℝ` with `J.OrdConnected` | the blueprint's "interval" |
| `T₋, T₊` | `EReal` | decision 3 |
| Lipschitz constants | `L : ℝ≥0`, `LipschitzOnWith L F S` | Mathlib's spelling; `lipschitzOnWith_iff_norm_sub_le` converts |
| bounds | `M δ ρ V̄ : ℝ` with explicit sign hypotheses where used | `UniformData` carries `0 < δ`, `0 ≤ M` |

Instances: none are declared on bare function or matrix types. The only instances used are Mathlib's norms on
`Pi` and `Prod` (the sup norm), which are exactly the frozen ambient norms.

### 1.1 Standing structure (track N only)

`KAM.Nekhoroshev.ODE.Data n R s ε h f : Prop` has the four source premises of `bpN:p3:s-N#data`, verbatim:
`0 < R`, `0 < s`, `IsAnalyticIntegrable R s h`, `IsAnalyticPerturbation R s ε f` (the latter contains `0 ≤ ε`).
It is a premise of every track-N theorem, never produced by one (rule 6). The general layer has no structure:
its hypotheses are `IsOpen W` and `ContDiffOn ℝ 1 F W`.

### 1.2 Explicit objects (all total definitions, rule 6)

`IsSolutionIn`, `UniformData` (Prop-structure of the five clauses of `bpN:p3:gen-uniform`), `closedThickening`,
`angleShift`, `eIoo`, `IsMaximalSolution`, `exitSet`, `IsInvariantSet`, `newtonDomain`, `newtonField`, `fixedDomain`,
`fixedField`, `restrictedDomain`, `restrictedField`, `newtonRegion`, `fixedRegion`, `restrictedRegion`,
`Wdom`, `IsMaximalSolutionOn`. `restrictedField` is the frozen `restrictedVectorField` formula on all of `ℝ² × ℝ²`
(`restrictedField_eq` is `rfl`), so no dependent `dite` and no hidden hypothesis appears.

## 2. Node table

Every graph node is covered. "Mathlib" lists the declarations the proof should use (all checked with `#check`).

| Blueprint node | Lean declaration(s) | Module | Mathlib |
|---|---|---|---|
| `gen-sol` | `IsSolutionIn` | `ODE/Basic` | — |
| `gen-sol#consequences` | `isSolutionIn_univ_iff`, `IsSolutionIn.mono`, `.continuousOn`, `isSolutionIn_congr_of_isOpen`, helper `IsSolutionIn.union_of_isOpen` | `ODE/Basic` | `HasDerivAt.continuousAt`, `HasDerivAt.congr_of_eventuallyEq`, `IsOpen.mem_nhds` |
| `gen-symmetry` | `gen_symmetry_shift`, `_neg`, `_neg_contDiffOn`, `_translate`; the node as one conjunction `gen_symmetry` (proved) | `ODE/Basic` | `HasDerivAt.comp_add_const`, `hasDerivAt_neg`, `HasDerivAt.scomp`, `HasDerivAt.add_const`, `ContDiffOn.neg` |
| `gen-lip` | `gen_lip` | `ODE/Lipschitz` | `ContDiffOn.contDiffAt`, `ContDiffAt.exists_lipschitzOnWith`, `LocallyLipschitzOn.exists_lipschitzOnWith_of_compact`, `IsCompact.exists_bound_of_continuousOn` |
| `gen-uniform` | `UniformData` | `ODE/Lipschitz` | — |
| `gen-uniform-compact` | `closedThickening`, `gen_uniform_compact` | `ODE/Lipschitz` | `IsCompact.exists_cthickening_subset_open`, `IsCompact.cthickening_eq_biUnion_closedBall`, `IsCompact.cthickening`, `gen_lip` |
| `gen-uniform-periodic` | `angleShift`, `gen_uniform_periodic` | `ODE/UniformPeriodic` | `IsCompact.exists_cthickening_subset_open`, `Int.floor`, `isCompact_Icc` (Pi order), `pi_norm_le_iff_of_nonneg`, `Prod.norm_def`, `gen_lip` |
| `ext-pl` (E1) | `picard_lindelof_ball` (helper, corrected, B1) | `ODE/Existence` | `IsPicardLindelof`, `IsPicardLindelof.exists_eq_forall_mem_Icc_hasDerivWithinAt₀`, `Real.coe_toNNReal` |
| `gen-short` | `gen_short_forward` (helper), `gen_short` | `ODE/Existence` | `IsClosed.Icc_subset_of_forall_mem_nhdsWithin`, `norm_image_sub_le_of_norm_deriv_le_segment` or `Convex.norm_image_sub_le_of_norm_hasDerivWithin_le`, `hasDerivAt_neg`, `HasDerivAt.scomp` |
| `gen-uniform-exist` | `gen_uniform_exist` | `ODE/Existence` | `picard_lindelof_ball`, `gen_short`, `HasDerivWithinAt.hasDerivAt`, `Icc_mem_nhds`, `mul_div_cancel₀` |
| `gen-local` | `gen_local` | `ODE/Existence` | `gen_uniform_compact`, `gen_uniform_exist`, `isCompact_singleton` |
| `gen-uniqueness` | `gen_uniqueness`, `gen_uniqueness_inter` (proved) | `ODE/Uniqueness` | `ODE_solution_unique_of_mem_Icc_right`, `ODE_solution_unique_of_mem_Icc_left`, `IsCompact.image_of_continuousOn`, `isCompact_Icc`, `IsCompact.union`, `gen_lip`, `HasDerivAt.hasDerivWithinAt`, `Set.OrdConnected.out` |
| `gen-extend` | `gen_extend` | `ODE/Maximal` | `gen_local`, `HasDerivWithinAt.union`, `Set.Iic_union_Ici`, `hasDerivWithinAt_univ`, `gen_symmetry_neg` |
| `gen-maximal` | `eIoo`, `IsMaximalSolution`, `gen_maximal`, helper `IsMaximalSolution.neg` | `ODE/Maximal` | `gen_uniqueness_inter`, `gen_extend`, `EReal.lt_iff_exists_real_btwn`, `EReal.coe_lt_coe_iff`, `EReal.neg_lt_neg_iff`, `sSup`/`sInf` on `EReal` |
| `gen-continuation` | `gen_continuation` | `ODE/Continuation` | `gen_uniform_exist`, `gen_uniqueness_inter`, `IsSolutionIn.union_of_isOpen`, `IsMaximalSolution.neg` |
| `gen-continuation-compact` | `gen_continuation_compact` | `ODE/Continuation` | `gen_uniform_compact` |
| `gen-continuation-periodic` | `gen_continuation_periodic` | `ODE/Continuation` | `gen_uniform_periodic` |
| `gen-confinement` | `gen_confinement` | `ODE/Continuation` | `gen_maximal`, `gen_continuation`, `gen_uniqueness` |
| `gen-exit` | `exitSet`, `gen_exit` | `ODE/Exit` | `Set.OrdConnected.out`, `csInf_mem`/`IsClosed` argument, `IsOpen.frontier_eq`, `csSup_Ico` |
| `gen-invariant` | `IsInvariantSet`; parenthetical claims `isInvariantSet_equilibria`, `isInvariantSet_union` | `ODE/Exit` | `gen_uniqueness` |
| `gen-barrier` | `gen_barrier` | `ODE/Exit` | `gen_exit` (applied to `z` and to `z ∘ neg`) |
| `ham-smooth` | `ham_smooth` (any `k : WithTop ℕ∞`), `ham_smooth_c1` (proved) | `ODE/Hamiltonian` | `ContDiffOn.fderiv_of_isOpen`, `ContDiffOn.clm_apply`, `contDiffOn_pi`, `ContDiffOn.prodMk`, `ContDiffOn.neg`, `ContDiffOn.differentiableOn` |
| `ham-energy` | `ham_energy` | `ODE/Hamiltonian` | `HasFDerivAt.comp_hasDerivAt`, `constant_of_has_deriv_right_zero`, `Finset.univ_sum_single` |
| `ham-periodic` | `ham_periodic` | `ODE/Hamiltonian` | `fderiv_comp_add_right`, `Filter.EventuallyEq.fderiv_eq`, `gen_symmetry_translate` |
| `ham-reduction` | `ham_reduction` | `ODE/Hamiltonian` | `ham_smooth`, `ContDiffOn.mono` |
| `newton-reduction` (3 cases) | `newtonDomain/Field`, `fixedDomain/Field`, `restrictedDomain/Field`, `newton_reduction`, `fixed_reduction`, `restricted_reduction`; helpers `norm_le_planeLength`, `planeLength_le_sqrt_two_mul_norm`, `planeLength_add_le`, `radius_eq_planeLength` (proved) | `ODE/NewtonDefs`, `ODE/NewtonReduction` | `ContDiffOn.sqrt`, `ContDiffOn.div`, `.smul`, `.sum`, `.pow`, `contDiffOn_pi`, `hasDerivAt_pi`, `HasDerivAt.prodMk`, `HasFDerivAt.comp_hasDerivAt` (with `ContinuousLinearMap.fst/snd`), `Real.sqrt_pos`, `isOpen_iInter_of_finite` |
| `newton-continuation` (3 cases) | regions, `lipschitzOnWith_inv3_smul`, `newton_uniform_data`, `fixed_uniform_data`, `restricted_uniform_data`, `newton_continuation`, `fixed_continuation`, `restricted_continuation` | `ODE/NewtonUniform`, `ODE/NewtonContinuation` | `LipschitzOnWith.prodMk`, `LipschitzOnWith.mono`, `lipschitzOnWith_iff_norm_sub_le`, `gen_continuation`, `newton_reduction` |
| `s-N#data` | `Data`, `Wdom` | `Nekhoroshev/ODE/Specialization` | — |
| `holo-input` | `holo_input` | same | Part 1 (`KAM.hamiltonian_real`, `KAM.holomorphic_regularity`, `KAM.realInclusion₂`); gated by `bpN:p1:holo-real` and `bpN:p1:realdomain` |
| `lipschitz` | `lipschitz_X` | same | `gen_lip`, `gen_uniform_periodic`, `ham_smooth_c1`, `ham_periodic` |
| `local-exist` | `local_exist` | same | `ham_reduction`, `gen_local`, `gen_uniqueness` |
| `energy` | `energy` | same | `ham_energy` |
| `continuation` | `IsMaximalSolutionOn`, `continuation` | same | `ham_reduction`, `gen_maximal`, `gen_continuation_periodic` |
| `uniqueness-closed` | `uniqueness_closed` | same | `local_exist` (uniqueness part) |
| `confinement-glue` | `confinement_glue` | same | `gen_confinement`, `gen_uniform_periodic`, `ham_periodic`, `ham_reduction` |
| `totality`, `ext-unique`, `ext-lip-local`, `ext-compact`, `ext-calc`, `ext-pl-c1` | no Lean declaration | — | `ext-unique` is `ODE_solution_unique_of_mem_Icc_right/_left`; `ext-lip-local` is `ContDiffAt.exists_lipschitzOnWith`; `ext-pl-c1` is `IsPicardLindelof.of_contDiffAt_one` (optional single-point shortcut, not used by the design) |

`bpN:p3:totality` is a remark about Lean's `fderiv`/division totality. It has no declaration: it is the reason every
statement carries `IsOpen W` and `ContDiffOn ℝ 1 F W`, uses `IsSolutionIn` (values of `F` only enter at points of `W`),
and why `restrictedField` is the formula on all of `ℝ² × ℝ²`.

Convention (as in track K): a node with several items is one conjunction or a documented family of lemmas; the
three `newton-reduction` cases and the three `newton-continuation` cases are separate theorems because their
parameter lists differ (`G, mass`; `G, m₀, m, eps`; `μ`). The graph's `LEAN_REF` for those nodes lists all three.

## 3. Conventions binding for all Part 3 modules

- **Lean module system.** Every file: copyright header, `module`, `public import` of everything its statements use,
  module docstring, `@[expose] public section` (definitions `IsSolutionIn`, `eIoo`, `angleShift`, `closedThickening`,
  `exitSet`, `IsInvariantSet`, the Newton/restricted data and `Wdom` must unfold, so they are exposed; the
  `structure`s need no `@[expose]`).
- **Side conditions are binders.** `0 < ρ`, `0 < τ`, `0 < R`, `0 < s`, `IsOpen W`, `ContDiffOn ℝ 1 F W`,
  `IsCompact K`, `K ⊆ W`, `J.OrdConnected`, `t₀ ∈ J`, `0 ∈ J` are all explicit hypotheses of the statements that use
  them. `n ≥ 1` is never needed (all statements hold for `n = 0`).
- **Derivatives** are two-sided `HasDerivAt`, also at endpoints of `J`, exactly as in the frozen predicates.
- **Intervals.** `J.OrdConnected` (not `Convex`, not `IsPreconnected`); open intervals are `IsOpen J ∧ J.OrdConnected`.
  Time shift: `J - c` is `(fun t => t + c) ⁻¹' J`; time reversal: `-J` is `Neg.neg ⁻¹' J`.
- **Norm and balls.** `closedBall x δ` of `E`; on `P` this is a sup-norm box. Regions are written with `‖v‖ ≤ V̄` for
  the sup norm of the velocity block.
- **Smoothness.** `ContDiffOn ℝ 1 F W` is `C¹`; `C^∞` is `ContDiffOn ℝ ∞ …` with `open scoped ContDiff` (not `⊤`,
  which is `ω` in the current `WithTop ℕ∞`). `ham_smooth` is for any `k : WithTop ℕ∞` with `ContDiffOn ℝ (k + 1) H W`.
- **Caveat on `Pi`/`Prod` calculus:** a `HasDerivAt` into `Fin N → Fin 2 → ℝ` or a `Prod` is decomposed with
  `hasDerivAt_pi` and `HasFDerivAt.comp_hasDerivAt` against `ContinuousLinearMap.fst/snd` (there is no
  `HasDerivAt.fst`).

## 4. Departures from the literal blueprint text

| # | Where | Lean form | Reason |
|---|---|---|---|
| D1 | `ext-pl` | `picard_lindelof_ball`: `∀ y ∈ closedBall x a, ‖F y‖ ≤ M`, `t₀` quantified | blueprint issue B1 |
| D2 | `gen-short` | stated with raw `HasDerivAt` on `J`, plus `gen_short_forward`; conclusion also gives `α t ∈ closedBall x δ` | B2 |
| D3 | `gen-uniform` | `UniformData` is a Prop-structure; the standing "`F` is `C¹` on open `W`" is not a field | not used by any clause |
| D4 | `gen-uniform-exist`, `gen-barrier` | `IsOpen W`, `ContDiffOn ℝ 1 F W` dropped | not used by the proof; strictly stronger |
| D5 | `ham-reduction` | `U` open dropped | not used |
| D6 | `newton-reduction`, `newton-continuation` | `N ≥ 2` and `0 ≤ V̄` dropped; `x₀ ∈ W` dropped (it follows from `IsMaximalSolution`) | not used |
| D7 | `uniqueness-closed` | `0 ≤ L` dropped | `[-L, L] = ∅` otherwise |
| D8 | `gen-continuation` | positive form: "stays in `Φ` near the end ⇒ `T_± = ±∞`" | the blueprint's "equivalently" form; easier to apply |
| D9 | `gen-confinement` | conclusion also asserts `IsMaximalSolution`, `T₋ < -τ`, `τ < T₊` | the blueprint's "the maximal interval contains `[-τ, τ]` in its interior" |
| D10 | `gen-exit` | stated for `ContinuousOn z J` (not `IsSolutionIn`); `∂V` is `frontier V` (`= closure V \ V` by `IsOpen.frontier_eq`); backward in time by composing with `Neg.neg` | the blueprint says only continuity is used |
| D11 | `gen-barrier` | invariance of `S` for `F` only (not also for `-F`) | the backward direction applies `gen_exit` to `z ∘ neg` and uses invariance of `S` on `z` itself |
| D12 | `ham-smooth` | any `k : WithTop ℕ∞`; blueprint has `k ≥ 0` integer | strictly more general |
| D13 | `ham-periodic` | `W + (k,0) = W` as `(fun x => x + angleShift k) '' W = W` | equality of sets |
| D14 | `holo-input` | `X_H = X_{h+f}` as `realInclusion₂ (X_H z) = hamiltonianVectorFieldℂ (fun w => h w.2 + f w) (realInclusion₂ z)` | the identification `ι` |
| D15 | `local-exist`, `continuation`, `uniqueness-closed`, `confinement-glue` | `U` open and `U ⊆ ball 0 (R + s)` explicit; `IsMaximalSolutionOn` Prop-def; maximal-solution uniqueness included in `continuation` | blueprint: "`U ⊂ B(0,R+s)` open" |

## 5. Blueprint issues

None is a mathematical defect of a theorem; B1 is a mis-quantified external fact, B2 a dependency subtlety. The
corrected statements are in the signatures file.

**B1. `ext-pl` (E1), lines 31-35: quantifiers.** As written: "Let `F`, `x`, `a, M, L ≥ 0` with `‖F(y)‖ ≤ M` and `F`
`L`-Lipschitz on `B̄(x,a)`, `T ≥ 0` with `MT ≤ a`. Then there is `α` with `α(t₀) = x` and derivative `F(α(t))` within
`[t₀-T, t₀+T]`." Two defects (already noted in `N-p3a.nodes.md`):
(i) `y` in `‖F(y)‖ ≤ M` is unbound. Read literally as "for all `y ∈ E`" it assumes a global bound that the
applications (a field bounded only on a ball) do not provide, and Mathlib's `IsPicardLindelof.norm_le` is only on
`closedBall x₀ a`. The correct hypothesis is `∀ y ∈ closedBall x a, ‖F y‖ ≤ M`.
(ii) `t₀` is never introduced; it must be a universally quantified real, chosen after `x, a, M, L, T`.
Corrected (`picard_lindelof_ball`, proved in scratch via `IsPicardLindelof` with `tmin := t₀ - T`, `tmax := t₀ + T`,
`a.toNNReal`, `r = 0`, `M.toNNReal`, `L`):
```lean
theorem picard_lindelof_ball [CompleteSpace E] {F : E → E} {x : E} {a M T t₀ : ℝ} {L : ℝ≥0}
    (ha : 0 ≤ a) (hM : 0 ≤ M) (hT : 0 ≤ T) (hF : ∀ y ∈ closedBall x a, ‖F y‖ ≤ M)
    (hL : LipschitzOnWith L F (closedBall x a)) (hMT : M * T ≤ a) :
    ∃ α : ℝ → E, α t₀ = x ∧
      ∀ t ∈ Icc (t₀ - T) (t₀ + T), HasDerivWithinAt α (F (α t)) (Icc (t₀ - T) (t₀ + T)) t
```
Note that the solution `α` is not asserted to stay in the ball, which is why `gen-short` (B2) is needed in
`gen-uniform-exist`.

**B2. `gen-short` vs `gen-symmetry(b)` with `W = E`, lines 173-183 and 185-197.** The proof of `gen-short` reduces
the case `t < t₀` to `gen-symmetry(b)`. Checked: no defect, but the dependency needs care.
- `gen-short` assumes only the raw derivative condition on `J` and a bound of an *arbitrary* function `F` on a
  ball; it has no `W` and no regularity. `gen-symmetry(b)` is a statement about `IsSolIn F W J z`. The reduction is
  legitimate with `W := univ` (`isSolutionIn_univ_iff`), and only the first clause of (b) ("`z(-·)` solves `-F` on
  `-J`") is used. The second clause ("`-F` is `C¹` on `W` if `F` is") is irrelevant here, since `F` is not assumed
  `C¹`; in Lean it is a separate lemma `gen_symmetry_neg_contDiffOn`, so there is no hidden hypothesis.
- The bound transfers because `‖-F‖ = ‖F‖`; the forward bootstrap is proved for *every* function `F`, so applying
  it to `-F` is not circular.
- **Design resolution.** Prove the forward half as `gen_short_forward` (any `F`, raw derivatives), obtain the left
  half by applying it to `s ↦ α(-s)` and `-F` with `HasDerivAt.scomp` and `hasDerivAt_neg` (no `IsSolutionIn` is
  involved), and state `gen_short` two-sidedly. Then `gen-short` does not depend on `gen-symmetry` at all; the
  graph edge `gen-short → gen-symmetry(b)` is replaced by an edge to the two lemmas of this item.
- Smaller points: the blueprint says `M > 0` and `|t - t₀| < δ/M`; the Lean form keeps both (so `δ ≤ 0` is
  vacuous, because then `|t - t₀| < δ/M` is impossible). The "in particular" clause `α t ∈ closedBall x δ` is a
  second conjunct.

**B2'. Independent review input (N-p3a/N-p3b reviews), four items, all handled.**
1. `ham-periodic` (blueprint L402-407, esp. L405) writes `H∘(z+(k,0)) = H∘z` without "on `J`", although `z(t) ∈ W` is
   only known for `t ∈ J`. Counterexample: `n = 1`, `W = ℝ × (-1,1)`, `H = 0` for `|I| < 1` and `H = θ` for `|I| ≥ 1`
   (periodicity is assumed on `W` only), `J = {0}`, `z` leaving `W` at other times. Lean: the identity is
   `∀ t ∈ J, H (z t + angleShift k) = H (z t)` (see `ham_periodic`); no statement about `t ∉ J` is made.
2. `ext-pl`: `t₀` unintroduced and the bound on `F` not attached to `y ∈ closedBall x a`: both binders are explicit in
   `picard_lindelof_ball` (B1).
3. `gen-maximal` (L255, L267) asserts uniqueness only of the *restriction* of `z` to `(T₋, T₊)`, never of off-interval
   representatives (values outside are arbitrary). Lean: `IsMaximalSolution.maximal` and the uniqueness clause of
   `gen_maximal` conclude `EqOn z z' (eIoo T₋ T₊)` only; `z` itself is not unique.
4. `gen-short` uses reversal and continuity helpers for a total `F` without `C¹` by taking `W = E` (B2): in Lean the
   helpers are `isSolutionIn_univ_iff`, `gen_symmetry_neg` (no regularity) and the raw-derivative `gen_short_forward`.

**B3 (cosmetic, no action).** The blueprint's "Equivalently" in `gen-continuation` is a contrapositive; the Lean
form is the positive implication (D8). `gen-extend` needs `J ≠ ∅`, which the blueprint states. `gen-exit`'s "exactly
one of" is `∨` in Lean; exclusivity is immediate (`A = ∅` versus `A.Nonempty`).

**B4 (dependency, for the orchestrator).** `holo-input` restates `bpN:p1:holo-real` (b)-(d) for
`W_s = ℝⁿ × ball 0 (R + s)`, whereas the frozen definitions use `realActionDomain n R s`; their equality is Part 1's
`bpN:p1:realdomain`. Package N3-10a is gated by those two Part 1 lemmas.

## 6. Modules and import DAG

Sizes are realistic estimates; the hard cap is 1500 lines (target ≤ 600).

| Module | Content | Lines |
|---|---|---|
| `KAM/ODE/Basic.lean` | `IsSolutionIn`, consequences, `union_of_isOpen`, `gen_symmetry*`, `angleShift` | 260 |
| `KAM/ODE/Lipschitz.lean` | `gen_lip`, `UniformData`, `closedThickening`, `gen_uniform_compact` | 320 |
| `KAM/ODE/UniformPeriodic.lean` | `gen_uniform_periodic` | 340 |
| `KAM/ODE/Existence.lean` | `picard_lindelof_ball`, `gen_short(_forward)`, `gen_uniform_exist`, `gen_local` | 550 |
| `KAM/ODE/Uniqueness.lean` | `gen_uniqueness`, `gen_uniqueness_inter` | 200 |
| `KAM/ODE/Exit.lean` | `exitSet`, `gen_exit`, `IsInvariantSet`, equilibria/union, `gen_barrier` | 350 |
| `KAM/ODE/Maximal.lean` | `eIoo`, `IsMaximalSolution`, `.neg`, `gen_extend`, `gen_maximal` | 650 |
| `KAM/ODE/Continuation.lean` | `gen_continuation`, `_compact`, `_periodic`, `gen_confinement` | 450 |
| `KAM/ODE/Hamiltonian.lean` | `ham_smooth(_c1)`, `ham_energy`, `ham_periodic`, `ham_reduction` | 600 |
| `KAM/ODE/NewtonDefs.lean` | Newton/fixed/restricted domains and fields, regions, plane-length helpers | 250 |
| `KAM/ODE/NewtonReduction.lean` | `newton_reduction`, `fixed_reduction`, `restricted_reduction` | 600 |
| `KAM/ODE/NewtonUniform.lean` | `lipschitzOnWith_inv3_smul`, `newton_/fixed_/restricted_uniform_data` | 650 |
| `KAM/ODE/NewtonContinuation.lean` | the three `*_continuation` corollaries | 250 |
| `KAM/Nekhoroshev/ODE/Specialization.lean` | `Data`, `Wdom`, `holo_input`, `lipschitz_X`, `local_exist`, `energy`, `IsMaximalSolutionOn`, `continuation`, `uniqueness_closed`, `confinement_glue` | 550 (`holo_input` in its own file `HoloInput.lean`, 200, if the package is split) |

About 6,000 lines. Optional facades: `KAM/ODE.lean`-style re-exports are not needed (the root file is generated).

**Import DAG** (`A ← B` means B imports A):

```
[Mathlib ODE, ContDiff.RCLike, MeanValue, Thickening, EReal]   ← ODE.Basic
ODE.Basic                          ← ODE.Lipschitz ← ODE.UniformPeriodic
ODE.Lipschitz                      ← ODE.Uniqueness
ODE.Basic, ODE.Lipschitz           ← ODE.Existence
ODE.Basic, ODE.Uniqueness         ← ODE.Exit   (isInvariantSet_equilibria uses gen_uniqueness; both owned by N3-5)
ODE.Existence, ODE.Uniqueness      ← ODE.Maximal
ODE.Maximal, ODE.UniformPeriodic   ← ODE.Continuation
ODE.Basic [Frozen.Defs.HamiltonianVectorField, Frozen.Nekhoroshev.Defs.IsSolutionOn,
                                Frozen.Iso.Defs.IsHamiltonianSolutionOn] ← ODE.Hamiltonian
ODE.Basic [Frozen.Planetary.Defs.IsNewtonSolution, IsFixedSolution, Frozen.Iso.Defs.IsRestrictedSolutionOn,
           CollisionFree, RestrictedVectorField, Radius] ← ODE.NewtonDefs ← ODE.NewtonReduction
[Mathlib.Analysis.Calculus.Deriv.Prod: HasDerivAt.prodMk, hasDerivAt_pi] ← ODE.NewtonReduction (and any module using them)
ODE.NewtonDefs, ODE.Lipschitz      ← ODE.NewtonUniform
ODE.NewtonUniform, ODE.NewtonReduction, ODE.Continuation ← ODE.NewtonContinuation
ODE.Hamiltonian, ODE.Continuation  ← Nekhoroshev.ODE.Specialization
[Frozen.Nekhoroshev.Defs.IsAnalyticIntegrable, IsAnalyticPerturbation, Frozen.Defs.RealHamiltonian,
 HamiltonianVectorFieldC, Strip.RealRestriction]                 ← Nekhoroshev.ODE.Specialization
```
No module imports a provider or a frozen theorem. Only frozen *definitions* are imported (`KAM/Frozen/*/Defs`).

## 7. Prover packages

Each package proves its nodes exactly as in Appendix A. A package changes a signature only through the
orchestrator, after a statement audit. Hard rules for every Lean brief (verbatim):
1. Never use `set_option maxHeartbeats` (or any heartbeat-budget override). A default-heartbeat elaboration failure
   is a design signal to refactor or split the proof, not something to mask with a larger budget. If a proof will
   not elaborate at default heartbeats, report it as a design signal.
2. No Lean file may exceed 1500 lines of code. When a file approaches the cap, split it into focused modules,
   preserving public import paths as cheap facades.

| Package | Nodes | Modules | Lines | After | Wave |
|---|---|---|---|---|---|
| N3-1 Core | `gen-sol` (+consequences), `gen-symmetry`, `gen-lip`, `gen-uniform`, `gen-uniform-compact`, `IsSolutionIn.union_of_isOpen` | `ODE/Basic`, `ODE/Lipschitz` | 570 | — | 1 |
| N3-2 Hamiltonian layer | `ham-smooth`, `ham-energy`, `ham-periodic`, `ham-reduction` | `ODE/Hamiltonian` | 600 | N3-1 | 2 |
| N3-3 Periodic uniform data | `gen-uniform-periodic` | `ODE/UniformPeriodic` | 350 | N3-1 | 2 |
| N3-4 Existence | `ext-pl` (helper), `gen-short`, `gen-uniform-exist`, `gen-local` | `ODE/Existence` | 550 | N3-1 | 2 |
| N3-5 Uniqueness, exit, barriers | `gen-uniqueness`, `gen-exit`, `gen-invariant`, `gen-barrier` | `ODE/Uniqueness`, `ODE/Exit` | 550 | N3-1 | 2 |
| N3-8 Newton reduction | `newton-reduction` (3 cases) | `ODE/NewtonDefs`, `ODE/NewtonReduction` | 850 | N3-1 | 2 |
| N3-6 Maximal solutions | `gen-extend`, `gen-maximal`, `IsMaximalSolution.neg` | `ODE/Maximal` | 650 | N3-4, N3-5 | 3 |
| N3-9a Newton uniform data | `lipschitzOnWith_inv3_smul`, `newton_uniform_data`, `fixed_uniform_data`, `restricted_uniform_data` | `ODE/NewtonUniform` | 650 | N3-8, N3-1 | 3 |
| N3-7 Continuation, confinement | `gen-continuation`, `-compact`, `-periodic`, `gen-confinement` | `ODE/Continuation` | 450 | N3-6, N3-3 | 4 |
| N3-9b Newton continuation | `newton-continuation` (3 cases) | `ODE/NewtonContinuation` | 250 | N3-7, N3-9a, N3-8 | 5 |
| N3-10a Holomorphic input | `holo-input` | `Nekhoroshev/ODE/HoloInput` | 200 | N3-2; **Part 1 `holo-real`, `realdomain`** | 2-5 (when Part 1 lands) |
| N3-10b Track-N statements | `lipschitz`, `local-exist`, `energy`, `continuation`, `uniqueness-closed`, `confinement-glue`, `Data`, `Wdom` | `Nekhoroshev/ODE/Specialization` | 400 | N3-7, N3-2, N3-3, N3-10a | 5 |

**Critical path:** N3-1 → N3-4 → N3-6 → N3-7 → N3-10b (5 waves). What the consumers can use, by wave:
wave 2 gives `gen_uniqueness`, `gen_exit`, `gen_barrier`, `ham_*`, `*_reduction`, `gen_local`; wave 3 gives
`gen_maximal`; wave 4 gives `gen_continuation*` and `gen_confinement`; wave 5 the Newton continuation and the
track-N theorems. Wave 2 has six packages that are independent in content; builds are serialized by the compile gate (AGENTS.md rule 8).

Before wave 1 an independent statement audit of Appendix A against the blueprint is recommended
(`lean-statement-audit`; the deviation table of Section 4 is the checklist).

### 7.1 Proof plans (so provers do not rediscover them)

**N3-1.** `gen_lip`: for `x ∈ W`, `ContDiffOn.contDiffAt (hW.mem_nhds hx)` then `ContDiffAt.exists_lipschitzOnWith` gives
`K, t ∈ 𝓝 x`; assemble `LocallyLipschitzOn W F` (`mem_nhdsWithin_of_mem_nhds`), restrict to `K`, apply
`LocallyLipschitzOn.exists_lipschitzOnWith_of_compact`. The bound is `IsCompact.exists_bound_of_continuousOn` (take
`max C 0`). `gen_uniform_compact`: `IsCompact.exists_cthickening_subset_open` gives `δ > 0` with
`cthickening δ K ⊆ W`; for compact `K`, `IsCompact.cthickening_eq_biUnion_closedBall` identifies it with
`closedThickening K δ` (`mem_closedBall_iff_norm`); compactness is `IsCompact.cthickening` (needs `ProperSpace`);
`gen_lip` on `closedThickening K δ` gives `M, L`. No empty-set case split is needed. `gen_symmetry_*`: one-line chain
rules (`HasDerivAt.comp_add_const`; `HasDerivAt.scomp` with `hasDerivAt_neg` and `neg_one_smul`;
`HasDerivAt.add_const` with `hW ▸ mem_image_of_mem`).

**N3-3.** `gen_uniform_periodic`: choose `δ ∈ (0, 1]` with `closedThickening K δ ⊆ U` (min of the `gen_uniform_compact` radius
with `1`; for `K = ∅` any `δ`). `C := Icc (-1) 2 ×ˢ closedThickening K δ` is compact (`isCompact_Icc` for the Pi order)
and `⊆ univ ×ˢ U`; `gen_lip` on `C`. For `x ∈ univ ×ˢ K` put `k := fun i => ⌊x.1 i⌋`, `x' := x - angleShift k`; then
`closedBall x δ = closedBall x' δ + angleShift k` and `closedBall x' δ ⊆ C` (coordinates: `pi_norm_le_iff_of_nonneg`,
`Prod.norm_def`). Bounds and Lipschitz transfer by periodicity (`hper`).

**N3-4.** `picard_lindelof_ball`: scratch proof exists (Section 5, B1). `gen_short_forward`: real induction with
`IsClosed.Icc_subset_of_forall_mem_nhdsWithin` on `S := {u | ‖α u - x‖ ≤ M * (u - t₀)}` over `[t₀, t]`: `S ∩ Icc` is closed
by continuity of `α` on `J`; for `u ∈ S ∩ Ico` we have `‖α u - x‖ < δ` (because `u < t < t₀ + δ/M`), so by
continuity `α(Icc u (u+η)) ⊆ closedBall x δ`, and `Convex.norm_image_sub_le_of_norm_hasDerivWithin_le` (or
`norm_image_sub_le_of_norm_deriv_le_segment`) on `Icc u (u+η)` gives `‖α v - α u‖ ≤ M (v - u)`, i.e. `S ∈ 𝓝[>] u`.
`gen_short`: forward half, plus the left half by `s ↦ α(-s)`, `-F`. `gen_uniform_exist`: `a := δ`, `M' := max M 1`,
`T := δ / M'` (so `M' T = δ`), `picard_lindelof_ball`, `HasDerivWithinAt.hasDerivAt` on `Ioo ⊆ Icc` via `Icc_mem_nhds`,
then `gen_short` on `J = Ioo` (`ordConnected_Ioo`) with `M'`: `‖α t - x‖ ≤ M' |t - t₀| < δ`, hence
`α t ∈ closedBall x δ ⊆ W` by `UniformData.closedBall_subset`. `gen_local`: `gen_uniform_compact` on `{x₀}` or `K`, then
`gen_uniform_exist` (`ε := δ / max M 1`).

**N3-5.** `gen_uniqueness`: for `t₁ > t₀` in `J`, `K := y₁ '' Icc t₀ t₁ ∪ y₂ '' Icc t₀ t₁` is compact
(`IsCompact.image_of_continuousOn`, `.union`) and `⊆ W`; `gen_lip` gives `L`; apply
`ODE_solution_unique_of_mem_Icc_right` with `v := fun _ => F`, `s := fun _ => K` (right derivatives from two-sided ones
by `HasDerivAt.hasDerivWithinAt`); `t₁ < t₀` uses `ODE_solution_unique_of_mem_Icc_left` with `Ioc`/`Iic`. `gen_exit`:
`t⋆ := sInf A` (`A` bounded below by `0`); `t⋆ ∈ J` by `OrdConnected.out` from `0` and a point of `A`; `z t⋆ ∉ V` because
`V` is open, `z` is continuous on `J` and `A` accumulates at `t⋆` from the right; `t⋆ > 0` from `z 0 ∈ V`; for
`t ∈ Ico 0 t⋆`, `t ∈ J` and `t ∉ A`; `z t⋆ ∈ closure V` by left limit, so `∈ frontier V = closure V \ V`; the supremum
formula is `csSup_Ico` once `{t ∈ J | 0 ≤ t ∧ z '' Icc 0 t ⊆ V} = Ico 0 t⋆`. `gen_barrier`: apply `gen_exit` to `z` (forward)
and to `fun t => z (-t)` on `Neg.neg ⁻¹' J` (backward; continuity via `ContinuousOn.comp continuousOn_neg`), then
`hS` and `hz0S`. `isInvariantSet_equilibria`: the constant `fun _ => y t₁` is a solution on `J` (`F (y t₁) = 0`), so
`gen_uniqueness` applies.

**N3-6.** `gen_extend`: right end by gluing `fun s => if s ≤ b then y s else α s`; derivative at `b` from
`HasDerivWithinAt.union` on `Iic b ∪ Ici b = univ` (`Set.Iic_union_Ici`, `hasDerivWithinAt_univ`); elsewhere
`HasDerivAt.congr_of_eventuallyEq`. Left end by the same lemma applied to `fun t => y (-t)` for `-F`
(`gen_symmetry_neg`, `gen_symmetry_neg_contDiffOn`), then `neg_neg`. A set that is `OrdConnected`, nonempty, with
neither a least nor a greatest element is open (prove once as a lemma in `ODE/Maximal`). `gen_maximal`: `𝒥 := {J | IsOpen J ∧ J.OrdConnected ∧
0 ∈ J ∧ ∃ y, y 0 = x₀ ∧ IsSolutionIn F W J y}`, `I := ⋃ 𝒥`; `T₋ := sInf ((↑) '' I)`, `T₊ := sSup ((↑) '' I)` in `EReal`;
`I = eIoo T₋ T₊` (⊇ by `OrdConnected` and `sInf_lt_iff`-style, ⊆ by openness; use `EReal.lt_iff_exists_real_btwn`);
`z t := y_J t` for a chosen `J ∋ t`, independent of `J` by `gen_uniqueness_inter`; `IsSolutionIn F W I z` pointwise
by `IsSolutionIn.union_of_isOpen`-style local equality; maximality by `gen_extend` and `gen_uniqueness_inter`.
Uniqueness of `(T₋, T₊)`: from `eIoo T₋ T₊ = eIoo T₋' T₊'` compare, for real `r < 0`, `T₋ < r ↔ T₋' < r` and conclude
`T₋ = T₋'` by density of `ℝ` in `EReal`; symmetric for `T₊`. `IsMaximalSolution.neg`: reflect `J`, use
`EReal.neg_lt_neg_iff`.

**N3-7.** `gen_continuation`: as the blueprint (set-up, `gen_uniform_exist` at `t₁`, `gen_uniqueness_inter` on
`(t₁-ε, t₁+ε) ∩ eIoo T₋ T₊`, `IsSolutionIn.union_of_isOpen` for the glued `y`, contradict `maximal`); the left end is the
right end for `hz.neg`. `gen_confinement`: by contradiction `T₊ ≤ τ`, `gen_continuation` (with `hconf` applied to the
open interval `eIoo T₋ T₊`); then `[-τ, τ] ⊆ eIoo T₋ T₊`, `hconf` on `z` itself, `gen_uniqueness` for `y` on `Icc (-r) r`.

**N3-2.** `ham_smooth`: `ContDiffOn.fderiv_of_isOpen hH hW le_rfl` (with `m := k`), then each coordinate
`fun x => fderiv ℝ H x v` by `ContDiffOn.clm_apply` with a constant, `contDiffOn_pi`, `ContDiffOn.prodMk`,
`ContDiffOn.neg`; differentiability by `ContDiffOn.differentiableOn` (`k + 1 ≠ 0`). `ham_energy`: the chain rule
`HasFDerivAt.comp_hasDerivAt` gives derivative `ℓ (X_H (z t))`, `ℓ := fderiv ℝ H (z t)`; with `X_H = (a, b)` expand
`(a, b) = ∑ i, a i • (Pi.single i 1, 0) + ∑ i, b i • (0, Pi.single i 1)` (`Finset.univ_sum_single`) so the value is
`∑ ℓ(0,e_i) ℓ(e_i,0) - ∑ ℓ(e_i,0) ℓ(0,e_i) = 0`; constancy on `[s, t] ⊆ J` by `constant_of_has_deriv_right_zero`. `ham_periodic`:
`fderiv_comp_add_right` and `Filter.EventuallyEq.fderiv_eq` (`H ∘ τ_k =ᶠ H` near `x ∈ W` since `W` is open), evaluate on
`(0, e_i)` and `(e_i, 0)`; solutions by `gen_symmetry_translate`. `ham_reduction`: membership is `Set.mk_mem_prod`,
differentiability is `ham_smooth`, `ContDiffOn.mono`.

**N3-8.** Smoothness: `planeLength w = √(planeSq w)`; `planeSq` is a finite sum of squares of coordinates (`ContDiff`),
`ContDiffOn.sqrt` needs `planeSq ≠ 0` (from `0 < planeLength`, `Real.sqrt_pos`), then `.pow`, `.div` (denominator `≠ 0`),
`.smul`, `.sum`, `contDiffOn_pi`, `ContDiffOn.prodMk`. Openness: finite intersection of preimages of `Ioi 0` under the
continuous `planeLength ∘ (x.1 j - x.1 i)` (`isOpen_iInter_of_finite`). Equivalence: `HasDerivAt x (F (x t)) t` with
`x = fun t => (Q t, V t)` splits into the two components by `HasDerivAt.prodMk` and, for the converse,
`HasFDerivAt.comp_hasDerivAt` against `ContinuousLinearMap.fst/snd`; each component is a `Fin N → Fin 2 → ℝ`-valued map,
split by `hasDerivAt_pi` (the frozen clauses are stated per body `i`). The restricted case is the same with
`radius_eq_planeLength` and no `univ` time set. The three field/domain formulas are copied from the frozen bodies.

**N3-9a (the heaviest analysis).** Do not bound `fderiv`. The Lipschitz constant comes from the elementary global lemma
`lipschitzOnWith_inv3_smul`: for `g w = ℓ(w)⁻³ • w` on `{ℓ ≥ r}` write `g w - g w' = (ℓ w)⁻³ • (w - w') + (ℓ(w)⁻³ - ℓ(w')⁻³) • w'`
with `w'` the shorter vector (so `‖w'‖ ≤ ℓ(w')`), use `|a⁻³ - b⁻³| ≤ 3 min(a,b)⁻⁴ |a - b|` and the reverse triangle inequality
`|ℓ w - ℓ w'| ≤ ℓ (w - w')` (from `planeLength_add_le`), with `ℓ ≤ √2 ‖·‖`. On `closedBall x (ρ/8)` every mutual distance satisfies
`ℓ(q'_j - q'_i) ≥ ρ - 2√2 (ρ/8) ≥ ρ/2` (`planeLength_add_le`, `planeLength_le_sqrt_two_mul_norm`), so `closedBall ⊆ newtonDomain`;
the field is a sum of `G m_j • g (x.1 j - x.1 i)` (Lipschitz with constant `2 L_g |G m_j|`, since `x ↦ x.1 j - x.1 i` is `2`-Lipschitz
in the sup norm) paired with the velocity block (`LipschitzOnWith.prodMk`). The bound `M` uses `‖g w‖ = ℓ⁻³‖w‖ ≤ ℓ⁻²`
(`norm_le_planeLength`) and `‖x.2‖ ≤ V̄ + ρ/8`. Fixed center: extra term `ℓ(q_i)⁻³ • q_i`, same lemma. Restricted: the
terms `(1-μ) ℓ⁻³ (q - primary₁)` and `μ ℓ⁻³ (q - primary₂)` plus the linear terms.
Fallback if the combinator route is awkward: `Convex.lipschitzOnWith_of_nnnorm_fderiv_le` on the convex ball with explicit
`D(w/ℓ³) = ℓ⁻³ (I - 3 ŵ ŵᵀ)`.

**N3-9b.** Each corollary: by contradiction, `hx.isSolution`-type conversion is not needed (the premise is already
`IsMaximalSolution` for the Newton field), apply `gen_continuation` with `Φ := newtonRegion N ρ V̄` and the `UniformData`
of N3-9a; the conclusion "`∃ t ≥ t⋆, x t ∉ Φ`" is the contrapositive of the positive form.

**N3-10a/b.** `holo_input`: (C^∞) `Re ∘ G ∘ ι` with `G := fun w => h w.2 + f w` holomorphic on the open
`complexDomain` and `ι (Wdom) ⊆ complexDomain`, using Part 1; the field identity is `KAM.hamiltonian_real`
(with `V := complexDomain n R s`, which is open, `hh`, `hf`); periodicity from the fourth clause of `IsAnalyticPerturbation`.
`lipschitz_X`: `holo_input`, `ham_smooth_c1`, `gen_lip`, `gen_uniform_periodic` with `ham_periodic`. `local_exist`,
`continuation`, `confinement_glue`: rewrite `IsSolutionOn` as `IsSolutionIn (X_H) (univ ×ˢ U)` by `ham_reduction` (with
`W := Wdom n R s`, `univ ×ˢ U ⊆ Wdom` from `hUs`, `H` is `C^2` by `holo_input` and `ContDiffOn.of_le`), then
`gen_local`/`gen_uniqueness`, `gen_maximal` + `gen_continuation_periodic` (with `ham_periodic` for `hper`), and
`gen_confinement` with `Φ := univ ×ˢ closedBall I₀ ρ` and `gen_uniform_periodic`. The hypothesis translation of
`confinement_glue` is: `|(y t).2 - I₀| ≤ ρ ↔ y t ∈ univ ×ˢ closedBall I₀ ρ` (`mem_closedBall_iff_norm`).

## 8. How the consumers use the API

| Consumer | Uses | Notes |
|---|---|---|
| N Part 7 (stability), Part 9-10, 11, 12 | `IsSolutionIn` for `X_{G^ℝ}` in `W_ϱ`; `gen_maximal`, `gen_uniqueness`, `gen_continuation_periodic`, `gen_exit`, `ham_energy`, `ham_smooth_c1`, `ham_periodic`, `confinement_glue`, `uniqueness_closed` | backward in time: `gen_exit` on `fun t => z (-t)` over `Neg.neg ⁻¹' J` |
| I Part 5 (confinement) | `gen_barrier`, `IsInvariantSet`, `gen_continuation_periodic`, `gen_maximal` (`T_± = ⊥/⊤`), `gen_uniqueness`, `ham_energy`, `ham_periodic`, `ham_reduction` | `n = 2`, `Wdom`-free: `W = univ ×ˢ B` |
| I Parts 7-8 (Delaunay, R3BP) | `restricted_reduction`, `newton_reduction`, `gen_sol`, `gen_uniqueness` | `IsRestrictedSolutionOn` on any interval `(a, b)` |
| P Part 14a (AMD, EXP-SAFE) | `gen_uniqueness`, `gen_maximal`, `gen_exit`, `gen_symmetry` (b), `gen_continuation`, `gen_continuation_compact`, `gen_uniform_compact`, `gen_lip`, `gen_uniform`, `ham_smooth_c1`, `ham_periodic` | generic `E` (chart spaces `ℝ^{4n}`); `IsMovSolOn ↔ IsSolutionIn` is track P's own lemma; the `-H`, `-F` case is `gen_symmetry_neg` |
| P Part 14a, consumer bridges (audit F3) | `bpP:p14:moving-ode` (L106–115): track P's own lemma bridging the frozen `IsMovingSolutionOn` on the collision-free domain to `IsSolutionIn`; `ham_reduction` is NOT instantiated with `U = univ` (needs global C²). `stepP:p14:li-max` (L252) uses the PROOF of `ham-periodic` for arbitrary translations τ_k (2π shifts in chart angles): keep that local translation proof in P (or export an arbitrary-translation helper); no period-1/2π identification. `bpP:p14:uniform-data` (L239–244) builds its own chart uniform data and applies generic `gen_continuation` | owners: track P designs |
| P Part 14b (SECULAR-BOX) | `bpP:p14:sb-pred` (L218–224): on curves staying in the open regular set S, bridge frozen `Iso.IsHamiltonianSolutionOn H univ J z` to `IsSolutionIn X_H S J z` ("pattern only", P's own lemma); `gen_maximal`, `gen_continuation_compact`, `gen_uniqueness` | owner: track P design |
| N Part 11c | `bpN:p11:continuation` (L35–40) proves its own periodic/transverse-dimension uniform-data lemma, then applies generic `gen_continuation`; `gen_continuation_periodic` (equal-sized blocks) cannot replace it | owner: track N Part 11 design |
| P Parts 1, 6, 11b | `newton_reduction`, `fixed_reduction`, `newton_continuation`, `ham_*`, `gen_continuation` | |

Helper API consumers will want (not graph nodes; include in the packages that own them): `mem_eIoo_iff : t ∈ eIoo a b ↔ a < t ∧ t < b`,
`eIoo_bot_top : eIoo ⊥ ⊤ = univ`, `IsMaximalSolution.isSolution_of_mem`, and for a time shift `t₀ ≠ 0` apply
`gen_symmetry_shift` (blueprint: "for initial time `t₀` instead of `0` use `gen-symmetry(a)`").

## Audit fixes (design audit 1, `docs/tracks/N/design/PART3-design-audit-1.md`, PASS WITH FIXES)

- F1: `Mathlib.Analysis.Calculus.Deriv.Prod` imported (signatures file and `NewtonReduction`).
- F2: `angleShift` moved to `ODE/Basic`; `ODE/Hamiltonian` no longer imports `ODE/UniformPeriodic` (so N3-2 needs only N3-1, as scheduled); `ODE/Exit` imports `ODE/Uniqueness`.
- F3: consumer bridges for P Parts 14a/14b and N Part 11c recorded in §8.

## 9. Risks

### 9.1 Elaboration

The signatures elaborate in about 6 s. No statement is heavy. Proof-side risks and levers:
- **`EReal` arithmetic** (`gen_maximal`, `IsMaximalSolution.neg`, `gen_continuation`): keep every `EReal` fact behind
  `mem_eIoo_iff` and the density lemma `EReal.lt_iff_exists_real_btwn`; never `simp` through `eIoo` with `EReal` order lemmas
  in bulk; state real-variable lemmas and coerce once.
- **`Pi`/`Prod` derivative decomposition** in `newton_reduction`: one helper per component (`hasDerivAt_pi` is an `iff`),
  do not `simp` the whole `HasDerivAt` of a nested `Pi`-`Prod`.
- **Smoothness of `newtonField`** (`ContDiffOn.sum` of `smul` of `div` of `pow` of `sqrt`): build it from small named
  lemmas (`contDiffOn_planeLength`, `contDiffOn_inv3_smul`), each over a single difference `x.1 j - x.1 i`.
- **N3-9a constants**: keep `L` and `M` opaque; prove `lipschitzOnWith_inv3_smul` once and reuse for the three fields. A
  heartbeat failure there is a design signal (hard rule 1): split per field, do not raise budgets.

### 9.2 Missing or awkward API

1. No maximal solutions, continuation, first exit or confinement in Mathlib. Everything above `gen_uniqueness` is ours.
2. `IsPicardLindelof` uses `ℝ≥0` parameters and a `Subtype` initial time `⟨t₀, _⟩`; `picard_lindelof_ball` hides this once.
3. `ContDiffOn ℝ ∞` versus `⊤`: `⊤ : WithTop ℕ∞` is `ω` (analytic). Statements use `∞`; the Newton fields are analytic away from
   collisions but `∞` is what is stated and what consumers need.
4. `ContDiffOn.locallyLipschitzOn` requires a convex set; it is not usable for an open `W`. Use the pointwise
   `ContDiffAt.exists_lipschitzOnWith` (Section 7.1, N3-1).
5. `HasDerivAt.fst/snd` do not exist (Section 3).
6. The track-N theorems state `U ⊆ ball 0 (R + s)`; at the call site `U = ball 0 R` needs `ball_subset_ball`.

### 9.3 Dependencies outside this design

- `holo_input` needs Part 1's `holo-real` and `realdomain` Lean lemmas (N-p1). Until they land, N3-10a cannot be
  proved and N3-10b can only be developed against the statement; this does not block tracks I and P, which do not use
  the `s-N` subsection.
- Tracks I and P state `W`, `F`, `H` concretely in their own parts and use only the general layer plus the three
  reduction propositions; nothing in the general layer mentions `h`, `f`, `R` or `s`.
- Nothing in Part 3 touches `KAM/Frozen/**`, `manifest/` or a provider. The only frozen declarations referenced are
  definitions (`hamiltonianVectorField`, `IsSolutionOn`, `IsHamiltonianSolutionOn`, `IsRestrictedSolutionOn`,
  `IsNewtonSolution`, `IsFixedSolution`, `restrictedVectorField`, `CollisionFree`, `radius`, `planeLength`,
  `realHamiltonian`, `IsAnalyticIntegrable`, `IsAnalyticPerturbation`, `hamiltonianVectorFieldℂ`).

### 9.4 Errata candidates for `docs/errata/ledger.json` (reported here, not edited)

- `blueprint-N/parts/p3-hamiltonian-ode.tex` L31-35, `ext-pl`: unbound `y` in `‖F(y)‖ ≤ M`; unintroduced `t₀` (B1).
- Same file, `gen-short` L173-183: proof cites `gen-symmetry(b)` although `gen-short` has no `W`; harmless (B2).
- `ham-reduction`, `newton-reduction`, `uniqueness-closed`, `gen-uniform-exist`, `gen-barrier`: unused hypotheses (Section 4); statements
  remain correct, only over-hypothesised.

## Appendix A. The signatures

Verbatim copy of `.drafts/design/NPart3Signatures.lean` (sha256 `663f10c065cd2771be3277317fb7f068263e86aa7ac745949d2fbe5be0950c58`). Variables are explicit in each statement;
every `theorem … := sorry` is a prover obligation, every other declaration is part of the design.

```lean
/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
module

public import Mathlib.Analysis.ODE.ExistUnique
public import Mathlib.Analysis.ODE.Gronwall
public import Mathlib.Analysis.Calculus.ContDiff.RCLike
public import Mathlib.Analysis.Calculus.MeanValue
public import Mathlib.Analysis.Calculus.Deriv.Prod
public import Mathlib.Analysis.SpecialFunctions.Sqrt
public import Mathlib.Topology.MetricSpace.Thickening
public import Mathlib.Data.EReal.Basic
public import KAM.Frozen.Defs.HamiltonianVectorField
public import KAM.Frozen.Defs.HamiltonianVectorFieldC
public import KAM.Frozen.Defs.RealHamiltonian
public import KAM.Frozen.Nekhoroshev.Defs.IsSolutionOn
public import KAM.Frozen.Nekhoroshev.Defs.IsAnalyticIntegrable
public import KAM.Frozen.Nekhoroshev.Defs.IsAnalyticPerturbation
public import KAM.Frozen.Iso.Defs.IsHamiltonianSolutionOn
public import KAM.Frozen.Iso.Defs.IsRestrictedSolutionOn
public import KAM.Frozen.Planetary.Defs.IsNewtonSolution
public import KAM.Frozen.Planetary.Defs.IsFixedSolution
public import KAM.Strip.RealRestriction

/-!
# Signatures of blueprint-N Part 3 (design draft)

Exact Lean statements of every Part 3 result node (labels `bpN:p3:*`); every body is `sorry`
except the few derived corollaries that are proved from their siblings. Design evidence, not
approved Lean. Sections A-J correspond to the modules of `docs/tracks/N/design/PART3-LEAN-DESIGN.md`.
-/

@[expose] public noncomputable section

open Set Metric
open scoped NNReal ContDiff

namespace KAM.ODE

/-! ## A. The solution predicate and symmetries (`KAM/ODE/Basic.lean`) -/

section Basic

variable {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]

/-- `bpN:p3:gen-sol`. `z` solves `ẋ = F x` in `W` on `J`: at every `t ∈ J`, `z t ∈ W` and `z` has
the two-sided derivative `F (z t)`. -/
def IsSolutionIn (F : E → E) (W : Set E) (J : Set ℝ) (z : ℝ → E) : Prop :=
  ∀ t ∈ J, z t ∈ W ∧ HasDerivAt z (F (z t)) t

/-- With `W = univ` the predicate is the raw derivative condition (used by `gen_short`). -/
theorem isSolutionIn_univ_iff {F : E → E} {J : Set ℝ} {z : ℝ → E} :
    IsSolutionIn F univ J z ↔ ∀ t ∈ J, HasDerivAt z (F (z t)) t := sorry

/-- `bpN:p3:gen-sol#consequences` (i): restriction. -/
theorem IsSolutionIn.mono {F : E → E} {W : Set E} {J J' : Set ℝ} {z : ℝ → E}
    (h : IsSolutionIn F W J z) (hJ : J' ⊆ J) : IsSolutionIn F W J' z := sorry

/-- `bpN:p3:gen-sol#consequences` (ii): solutions are continuous on `J`. -/
theorem IsSolutionIn.continuousOn {F : E → E} {W : Set E} {J : Set ℝ} {z : ℝ → E}
    (h : IsSolutionIn F W J z) : ContinuousOn z J := sorry

/-- `bpN:p3:gen-sol#consequences` (iii): local nature, for open `J'`. -/
theorem isSolutionIn_congr_of_isOpen {F : E → E} {W : Set E} {J : Set ℝ} {y z : ℝ → E}
    (hJ : IsOpen J) (h : EqOn y z J) : IsSolutionIn F W J y ↔ IsSolutionIn F W J z := sorry

/-- Helper (not a graph node; used by `gen_maximal` and `gen_continuation`): gluing solutions on
two open intervals along equality of the glued function. -/
theorem IsSolutionIn.union_of_isOpen {F : E → E} {W : Set E} {J₁ J₂ : Set ℝ} {y y₁ y₂ : ℝ → E}
    (h₁ : IsSolutionIn F W J₁ y₁) (h₂ : IsSolutionIn F W J₂ y₂) (hJ₁ : IsOpen J₁)
    (hJ₂ : IsOpen J₂) (e₁ : EqOn y y₁ J₁) (e₂ : EqOn y y₂ J₂) :
    IsSolutionIn F W (J₁ ∪ J₂) y := sorry

/-- `bpN:p3:gen-symmetry` (a): time shift; the interval `J - c` is `(· + c) ⁻¹' J`. -/
theorem gen_symmetry_shift {F : E → E} {W : Set E} {J : Set ℝ} {z : ℝ → E}
    (h : IsSolutionIn F W J z) (c : ℝ) :
    IsSolutionIn F W ((fun t => t + c) ⁻¹' J) (fun t => z (t + c)) := sorry

/-- `bpN:p3:gen-symmetry` (b): time reversal; the interval `-J` is `Neg.neg ⁻¹' J`. No regularity of
`F` is needed (it is applied with `W = univ` and arbitrary `F` in `gen_short`). -/
theorem gen_symmetry_neg {F : E → E} {W : Set E} {J : Set ℝ} {z : ℝ → E}
    (h : IsSolutionIn F W J z) :
    IsSolutionIn (fun x => -F x) W (Neg.neg ⁻¹' J) (fun t => z (-t)) := sorry

/-- `bpN:p3:gen-symmetry` (b), regularity clause: `-F` is as smooth as `F` on `W`. -/
theorem gen_symmetry_neg_contDiffOn {F : E → E} {W : Set E} {m : WithTop ℕ∞}
    (hF : ContDiffOn ℝ m F W) : ContDiffOn ℝ m (fun x => -F x) W := sorry

/-- `bpN:p3:gen-symmetry` (c): space translation by `v` with `W + v = W` and `F (x + v) = F x`. -/
theorem gen_symmetry_translate {F : E → E} {W : Set E} {J : Set ℝ} {z : ℝ → E}
    (h : IsSolutionIn F W J z) {v : E} (hW : (fun x => x + v) '' W = W)
    (hF : ∀ x ∈ W, F (x + v) = F x) : IsSolutionIn F W J (fun t => z t + v) := sorry

/-- `bpN:p3:gen-symmetry`, the node as one conjunction (proved from the four lemmas above). -/
theorem gen_symmetry {F : E → E} {W : Set E} {J : Set ℝ} {z : ℝ → E} (h : IsSolutionIn F W J z) :
    (∀ c : ℝ, IsSolutionIn F W ((fun t => t + c) ⁻¹' J) (fun t => z (t + c))) ∧
    (IsSolutionIn (fun x => -F x) W (Neg.neg ⁻¹' J) (fun t => z (-t)) ∧
      ∀ m : WithTop ℕ∞, ContDiffOn ℝ m F W → ContDiffOn ℝ m (fun x => -F x) W) ∧
    (∀ v : E, (fun x => x + v) '' W = W → (∀ x ∈ W, F (x + v) = F x) →
      IsSolutionIn F W J (fun t => z t + v)) :=
  ⟨fun c => gen_symmetry_shift h c,
    ⟨gen_symmetry_neg h, fun _ hF => gen_symmetry_neg_contDiffOn hF⟩,
    fun _ hW hF => gen_symmetry_translate h hW hF⟩

/-- The translation `(k, 0)` of phase space by the integer vector `k` in the angles
(owned by `KAM/ODE/Basic.lean`, so that `KAM/ODE/Hamiltonian.lean` need not import the periodic uniform data). -/
def angleShift {n : ℕ} (k : Fin n → ℤ) : (Fin n → ℝ) × (Fin n → ℝ) := (fun i => (k i : ℝ), 0)

end Basic

/-! ## B. Lipschitz data (`KAM/ODE/Lipschitz.lean`) -/

section Lipschitz

variable {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]

/-- `bpN:p3:gen-lip`: bounded and Lipschitz on a compact subset of the open `W`. -/
theorem gen_lip {F : E → E} {W K : Set E} (hW : IsOpen W) (hF : ContDiffOn ℝ 1 F W)
    (hK : IsCompact K) (hKW : K ⊆ W) :
    (∃ M : ℝ, 0 ≤ M ∧ ∀ x ∈ K, ‖F x‖ ≤ M) ∧ ∃ L : ℝ≥0, LipschitzOnWith L F K := sorry

/-- `bpN:p3:gen-uniform`: uniform data `(δ, M, L)` of `Φ` for `(F, W)`. The blueprint's standing
"`F` is `C¹` on open `W`" is not a field: it is not used by any clause. -/
structure UniformData (F : E → E) (W Φ : Set E) (δ M : ℝ) (L : ℝ≥0) : Prop where
  delta_pos : 0 < δ
  M_nonneg : 0 ≤ M
  closedBall_subset : ∀ x ∈ Φ, closedBall x δ ⊆ W
  norm_le : ∀ x ∈ Φ, ∀ y ∈ closedBall x δ, ‖F y‖ ≤ M
  lipschitz : ∀ x ∈ Φ, LipschitzOnWith L F (closedBall x δ)

/-- The closed `δ`-thickening `K_δ = {y | ∃ x ∈ K, ‖y - x‖ ≤ δ}` of `bpN:p3:gen-uniform-compact`. -/
def closedThickening (K : Set E) (δ : ℝ) : Set E := {y | ∃ x ∈ K, ‖y - x‖ ≤ δ}

/-- `bpN:p3:gen-uniform-compact`. -/
theorem gen_uniform_compact [ProperSpace E] {F : E → E} {W K : Set E} (hW : IsOpen W)
    (hF : ContDiffOn ℝ 1 F W) (hK : IsCompact K) (hKW : K ⊆ W) :
    ∃ (δ M : ℝ) (L : ℝ≥0), UniformData F W K δ M L ∧ closedThickening K δ ⊆ W ∧
      IsCompact (closedThickening K δ) := sorry

end Lipschitz

/-! ## C. Angle-periodic fields (`KAM/ODE/UniformPeriodic.lean`) -/

section Periodic

variable {n : ℕ}

/-- `bpN:p3:gen-uniform-periodic`. -/
theorem gen_uniform_periodic {U : Set (Fin n → ℝ)}
    {F : (Fin n → ℝ) × (Fin n → ℝ) → (Fin n → ℝ) × (Fin n → ℝ)} (hU : IsOpen U)
    (hF : ContDiffOn ℝ 1 F (univ ×ˢ U))
    (hper : ∀ k : Fin n → ℤ, ∀ x ∈ (univ : Set (Fin n → ℝ)) ×ˢ U, F (x + angleShift k) = F x)
    {K : Set (Fin n → ℝ)} (hK : IsCompact K) (hKU : K ⊆ U) :
    ∃ (δ M : ℝ) (L : ℝ≥0), δ ≤ 1 ∧ UniformData F (univ ×ˢ U) (univ ×ˢ K) δ M L := sorry

end Periodic

/-! ## D. Local existence (`KAM/ODE/Existence.lean`) -/

section Existence

variable {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]

/-- `bpN:p3:ext-pl` with the quantifiers repaired (blueprint issue B1): the bound `M` holds only on
the ball, and the initial time `t₀` is a universally quantified real. Helper, from Mathlib
`IsPicardLindelof` with `r = 0`; not a graph node. -/
theorem picard_lindelof_ball [CompleteSpace E] {F : E → E} {x : E} {a M T t₀ : ℝ} {L : ℝ≥0}
    (ha : 0 ≤ a) (hM : 0 ≤ M) (hT : 0 ≤ T) (hF : ∀ y ∈ closedBall x a, ‖F y‖ ≤ M)
    (hL : LipschitzOnWith L F (closedBall x a)) (hMT : M * T ≤ a) :
    ∃ α : ℝ → E, α t₀ = x ∧
      ∀ t ∈ Icc (t₀ - T) (t₀ + T), HasDerivWithinAt α (F (α t)) (Icc (t₀ - T) (t₀ + T)) t := sorry

/-- Forward half of `gen_short` (helper, not a graph node), for arbitrary `F`: the right-hand
bootstrap `stepN:p3:short-boot/short-ext`. `gen_short` follows on the left by applying this to
`s ↦ α (-s)` and the field `-F` (raw derivatives, no `gen_symmetry` needed; blueprint issue B2). -/
theorem gen_short_forward {F : E → E} {J : Set ℝ} (hJ : J.OrdConnected) {t₀ : ℝ} (ht₀ : t₀ ∈ J)
    {α : ℝ → E} {x : E} {δ M : ℝ} (hα₀ : α t₀ = x)
    (hα : ∀ t ∈ J, HasDerivAt α (F (α t)) t) (hM : 0 < M)
    (hF : ∀ y ∈ closedBall x δ, ‖F y‖ ≤ M) :
    ∀ t ∈ J, t₀ ≤ t → t - t₀ < δ / M → ‖α t - x‖ ≤ M * (t - t₀) := sorry

/-- `bpN:p3:gen-short`: a priori short-time confinement. The hypothesis is the raw derivative
condition (no `W`, no regularity of `F`). -/
theorem gen_short {F : E → E} {J : Set ℝ} (hJ : J.OrdConnected) {t₀ : ℝ} (ht₀ : t₀ ∈ J)
    {α : ℝ → E} {x : E} {δ M : ℝ} (hα₀ : α t₀ = x)
    (hα : ∀ t ∈ J, HasDerivAt α (F (α t)) t) (hM : 0 < M)
    (hF : ∀ y ∈ closedBall x δ, ‖F y‖ ≤ M) :
    ∀ t ∈ J, |t - t₀| < δ / M → ‖α t - x‖ ≤ M * |t - t₀| ∧ α t ∈ closedBall x δ := sorry

/-- `bpN:p3:gen-uniform-exist`: uniform existence time `δ / max M 1`. The blueprint's `C¹`/open
hypotheses are not used and are omitted. -/
theorem gen_uniform_exist [CompleteSpace E] {F : E → E} {W Φ : Set E} {δ M : ℝ} {L : ℝ≥0}
    (hΦ : UniformData F W Φ δ M L) :
    ∀ x ∈ Φ, ∀ t₀ : ℝ, ∃ α : ℝ → E, α t₀ = x ∧
      (∀ t ∈ Ioo (t₀ - δ / max M 1) (t₀ + δ / max M 1), ‖α t - x‖ < δ) ∧
      IsSolutionIn F W (Ioo (t₀ - δ / max M 1) (t₀ + δ / max M 1)) α := sorry

/-- `bpN:p3:gen-local`: local existence in both time directions, uniform on compact sets. -/
theorem gen_local [ProperSpace E] {F : E → E} {W : Set E} (hW : IsOpen W)
    (hF : ContDiffOn ℝ 1 F W) :
    (∀ x₀ ∈ W, ∀ t₀ : ℝ, ∃ ε > 0, ∃ α : ℝ → E, α t₀ = x₀ ∧
      IsSolutionIn F W (Ioo (t₀ - ε) (t₀ + ε)) α) ∧
    (∀ K : Set E, IsCompact K → K ⊆ W → ∃ ε > 0, ∀ x₀ ∈ K, ∀ t₀ : ℝ, ∃ α : ℝ → E, α t₀ = x₀ ∧
      IsSolutionIn F W (Ioo (t₀ - ε) (t₀ + ε)) α) := sorry

end Existence

/-! ## E. Uniqueness (`KAM/ODE/Uniqueness.lean`) -/

section Uniqueness

variable {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]

/-- `bpN:p3:gen-uniqueness`: two solutions on an arbitrary interval agreeing at one time agree. -/
theorem gen_uniqueness {F : E → E} {W : Set E} (hW : IsOpen W) (hF : ContDiffOn ℝ 1 F W)
    {J : Set ℝ} (hJ : J.OrdConnected) {t₀ : ℝ} (ht₀ : t₀ ∈ J) {y₁ y₂ : ℝ → E}
    (h₁ : IsSolutionIn F W J y₁) (h₂ : IsSolutionIn F W J y₂) (h : y₁ t₀ = y₂ t₀) :
    EqOn y₁ y₂ J := sorry

/-- `bpN:p3:gen-uniqueness`, "in particular": solutions on `J₁`, `J₂` agree on `J₁ ∩ J₂`. -/
theorem gen_uniqueness_inter {F : E → E} {W : Set E} (hW : IsOpen W) (hF : ContDiffOn ℝ 1 F W)
    {J₁ J₂ : Set ℝ} (hJ₁ : J₁.OrdConnected) (hJ₂ : J₂.OrdConnected) {t₀ : ℝ}
    (ht₀ : t₀ ∈ J₁ ∩ J₂) {y₁ y₂ : ℝ → E} (h₁ : IsSolutionIn F W J₁ y₁)
    (h₂ : IsSolutionIn F W J₂ y₂) (h : y₁ t₀ = y₂ t₀) : EqOn y₁ y₂ (J₁ ∩ J₂) :=
  gen_uniqueness hW hF (hJ₁.inter hJ₂) ht₀ (h₁.mono inter_subset_left)
    (h₂.mono inter_subset_right) h

end Uniqueness

/-! ## F. Maximal solutions (`KAM/ODE/Maximal.lean`) -/

section Maximal

variable {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]

/-- The open interval `(a, b)` with extended-real endpoints, as a set of reals. -/
def eIoo (a b : EReal) : Set ℝ := {t | a < (t : EReal) ∧ (t : EReal) < b}

/-- `(Tm, Tp, z)` is *the* maximal solution of `ẋ = F x` in `W` through `x₀` at time `0`
(`bpN:p3:gen-maximal`): a solution on `(Tm, Tp)` such that every solution through `x₀` on an
interval containing `0` lives in `(Tm, Tp)` and equals `z` there. -/
structure IsMaximalSolution (F : E → E) (W : Set E) (x₀ : E) (Tm Tp : EReal) (z : ℝ → E) :
    Prop where
  neg_lt : Tm < 0
  pos_lt : 0 < Tp
  init : z 0 = x₀
  isSolution : IsSolutionIn F W (eIoo Tm Tp) z
  maximal : ∀ (J : Set ℝ) (y : ℝ → E), J.OrdConnected → (0 : ℝ) ∈ J → y 0 = x₀ →
    IsSolutionIn F W J y → J ⊆ eIoo Tm Tp ∧ EqOn y z J

/-- Helper (not a graph node; used by the left end of `gen_continuation`, and by consumers for
backward-in-time arguments): reversal of a maximal solution. -/
theorem IsMaximalSolution.neg {F : E → E} {W : Set E} {x₀ : E} {Tm Tp : EReal} {z : ℝ → E}
    (h : IsMaximalSolution F W x₀ Tm Tp z) :
    IsMaximalSolution (fun x => -F x) W x₀ (-Tp) (-Tm) (fun t => z (-t)) := sorry

/-- `bpN:p3:gen-extend`. -/
theorem gen_extend [ProperSpace E] {F : E → E} {W : Set E} (hW : IsOpen W)
    (hF : ContDiffOn ℝ 1 F W) {J : Set ℝ} (hJ : J.OrdConnected) (hne : J.Nonempty) {y : ℝ → E}
    (h : IsSolutionIn F W J y) :
    ∃ (J' : Set ℝ) (y' : ℝ → E), IsOpen J' ∧ J'.OrdConnected ∧ J ⊆ J' ∧ EqOn y' y J ∧
      IsSolutionIn F W J' y' := sorry

/-- `bpN:p3:gen-maximal`: existence, and uniqueness of the interval and of `z` on it. -/
theorem gen_maximal [ProperSpace E] {F : E → E} {W : Set E} (hW : IsOpen W)
    (hF : ContDiffOn ℝ 1 F W) {x₀ : E} (hx₀ : x₀ ∈ W) :
    (∃ (Tm Tp : EReal) (z : ℝ → E), IsMaximalSolution F W x₀ Tm Tp z) ∧
    ∀ (Tm Tp Tm' Tp' : EReal) (z z' : ℝ → E), IsMaximalSolution F W x₀ Tm Tp z →
      IsMaximalSolution F W x₀ Tm' Tp' z' → Tm = Tm' ∧ Tp = Tp' ∧ EqOn z z' (eIoo Tm Tp) := sorry

end Maximal

/-! ## G. Continuation and confinement glue (`KAM/ODE/Continuation.lean`) -/

section Continuation

variable {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E] [ProperSpace E]

/-- `bpN:p3:gen-continuation` (positive form of "there is no `t_*` ..."): if the maximal solution
stays in a set with uniform data near an end of its maximal interval, that end is infinite. -/
theorem gen_continuation {F : E → E} {W : Set E} (hW : IsOpen W) (hF : ContDiffOn ℝ 1 F W)
    {x₀ : E} {Tm Tp : EReal} {z : ℝ → E} (hz : IsMaximalSolution F W x₀ Tm Tp z)
    {Φ : Set E} {δ M : ℝ} {L : ℝ≥0} (hΦ : UniformData F W Φ δ M L) :
    ((∃ t_star : ℝ, 0 ≤ t_star ∧ (t_star : EReal) < Tp ∧
        ∀ t : ℝ, t_star ≤ t → (t : EReal) < Tp → z t ∈ Φ) → Tp = ⊤) ∧
    ((∃ t_star : ℝ, t_star ≤ 0 ∧ Tm < (t_star : EReal) ∧
        ∀ t : ℝ, Tm < (t : EReal) → t ≤ t_star → z t ∈ Φ) → Tm = ⊥) := sorry

/-- `bpN:p3:gen-continuation-compact`. -/
theorem gen_continuation_compact {F : E → E} {W : Set E} (hW : IsOpen W)
    (hF : ContDiffOn ℝ 1 F W) {x₀ : E} {Tm Tp : EReal} {z : ℝ → E}
    (hz : IsMaximalSolution F W x₀ Tm Tp z) {K : Set E} (hK : IsCompact K) (hKW : K ⊆ W) :
    ((∃ t_star : ℝ, 0 ≤ t_star ∧ (t_star : EReal) < Tp ∧
        ∀ t : ℝ, t_star ≤ t → (t : EReal) < Tp → z t ∈ K) → Tp = ⊤) ∧
    ((∃ t_star : ℝ, t_star ≤ 0 ∧ Tm < (t_star : EReal) ∧
        ∀ t : ℝ, Tm < (t : EReal) → t ≤ t_star → z t ∈ K) → Tm = ⊥) := sorry

/-- `bpN:p3:gen-confinement`. The a priori confinement is the blueprint's hypothesis; the
conclusion adds that `z` is the maximal solution and that `[-τ, τ]` is in the interior of its
interval. -/
theorem gen_confinement {F : E → E} {W : Set E} (hW : IsOpen W) (hF : ContDiffOn ℝ 1 F W)
    {x₀ : E} (hx₀ : x₀ ∈ W) {τ : ℝ} (hτ : 0 < τ) {Φ : Set E} {δ M : ℝ} {L : ℝ≥0}
    (hΦ : UniformData F W Φ δ M L)
    (hconf : ∀ (J : Set ℝ) (y : ℝ → E), IsOpen J → J.OrdConnected → (0 : ℝ) ∈ J → y 0 = x₀ →
      IsSolutionIn F W J y → ∀ t ∈ J, |t| ≤ τ → y t ∈ Φ) :
    ∃ (Tm Tp : EReal) (z : ℝ → E), IsMaximalSolution F W x₀ Tm Tp z ∧ Tm < ((-τ : ℝ) : EReal) ∧
      ((τ : ℝ) : EReal) < Tp ∧ IsSolutionIn F W (Icc (-τ) τ) z ∧ (∀ t : ℝ, |t| ≤ τ → z t ∈ Φ) ∧
      ∀ r : ℝ, 0 ≤ r → r ≤ τ → ∀ y : ℝ → E, y 0 = x₀ → IsSolutionIn F W (Icc (-r) r) y →
        EqOn y z (Icc (-r) r) := sorry

end Continuation

section ContinuationPeriodic

variable {n : ℕ}

/-- `bpN:p3:gen-continuation-periodic`: on `ℝⁿ × U`, only the action component needs to stay in a
compact `K ⊆ U`; the angles may be unbounded. -/
theorem gen_continuation_periodic {U : Set (Fin n → ℝ)} (hU : IsOpen U)
    {F : (Fin n → ℝ) × (Fin n → ℝ) → (Fin n → ℝ) × (Fin n → ℝ)}
    (hF : ContDiffOn ℝ 1 F (univ ×ˢ U))
    (hper : ∀ k : Fin n → ℤ, ∀ x ∈ (univ : Set (Fin n → ℝ)) ×ˢ U, F (x + angleShift k) = F x)
    {x₀ : (Fin n → ℝ) × (Fin n → ℝ)} {Tm Tp : EReal} {z : ℝ → (Fin n → ℝ) × (Fin n → ℝ)}
    (hz : IsMaximalSolution F (univ ×ˢ U) x₀ Tm Tp z) {K : Set (Fin n → ℝ)} (hK : IsCompact K)
    (hKU : K ⊆ U) :
    ((∃ t_star : ℝ, 0 ≤ t_star ∧ (t_star : EReal) < Tp ∧
        ∀ t : ℝ, t_star ≤ t → (t : EReal) < Tp → (z t).2 ∈ K) → Tp = ⊤) ∧
    ((∃ t_star : ℝ, t_star ≤ 0 ∧ Tm < (t_star : EReal) ∧
        ∀ t : ℝ, Tm < (t : EReal) → t ≤ t_star → (z t).2 ∈ K) → Tm = ⊥) := sorry

end ContinuationPeriodic

/-! ## H. First exit, invariant sets, barriers (`KAM/ODE/Exit.lean`) -/

section Exit

variable {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]

/-- The exit set `A = {t ∈ J | t ≥ 0, z t ∉ V}` of `bpN:p3:gen-exit`. -/
def exitSet (J : Set ℝ) (z : ℝ → E) (V : Set E) : Set ℝ := {t | t ∈ J ∧ 0 ≤ t ∧ z t ∉ V}

/-- `bpN:p3:gen-exit` (forward time; backwards, apply it to `fun t => z (-t)` on `Neg.neg ⁻¹' J`).
Only continuity of `z` on `J` is used, so it is stated for `ContinuousOn`. -/
theorem gen_exit {J : Set ℝ} (hJ : J.OrdConnected) (h0 : (0 : ℝ) ∈ J) {z : ℝ → E}
    (hz : ContinuousOn z J) {V : Set E} (hV : IsOpen V) (hz0 : z 0 ∈ V) :
    ((exitSet J z V = ∅) ∧ ∀ t ∈ J, 0 ≤ t → z t ∈ V) ∨
    ((exitSet J z V).Nonempty ∧ ∃ t_star : ℝ, IsLeast (exitSet J z V) t_star ∧ 0 < t_star ∧
      t_star ∈ J ∧ (∀ t ∈ Ico 0 t_star, z t ∈ V) ∧ z t_star ∈ frontier V ∧
      t_star = sSup {t : ℝ | t ∈ J ∧ 0 ≤ t ∧ z '' Icc 0 t ⊆ V}) := sorry

/-- `bpN:p3:gen-invariant`. -/
def IsInvariantSet (F : E → E) (W S : Set E) : Prop :=
  ∀ (J : Set ℝ) (y : ℝ → E), J.OrdConnected → IsSolutionIn F W J y →
    ∀ t₁ ∈ J, y t₁ ∈ S → ∀ t ∈ J, y t ∈ S

/-- Parenthetical claim of `bpN:p3:gen-invariant` (not a graph node): equilibria are invariant. -/
theorem isInvariantSet_equilibria {F : E → E} {W : Set E} (hW : IsOpen W)
    (hF : ContDiffOn ℝ 1 F W) : IsInvariantSet F W {x | F x = 0} := sorry

/-- Parenthetical claim of `bpN:p3:gen-invariant` (not a graph node): unions are invariant. -/
theorem isInvariantSet_union {F : E → E} {W S S' : Set E} (hS : IsInvariantSet F W S)
    (hS' : IsInvariantSet F W S') : IsInvariantSet F W (S ∪ S') := sorry

/-- `bpN:p3:gen-barrier`. The blueprint's `C¹` hypothesis is not used and is omitted. -/
theorem gen_barrier {F : E → E} {W : Set E} {J : Set ℝ} (hJ : J.OrdConnected)
    (h0 : (0 : ℝ) ∈ J) {z : ℝ → E} (hz : IsSolutionIn F W J z) {V : Set E} (hV : IsOpen V)
    (hz0 : z 0 ∈ V) {G S : Set E} (hG : z '' J ⊆ G) (hS : IsInvariantSet F W S)
    (hbd : frontier V ∩ G ⊆ S) (hz0S : z 0 ∉ S) : ∀ t ∈ J, z t ∈ V := sorry

end Exit

/-! ## I. Hamiltonian layer (`KAM/ODE/Hamiltonian.lean`) -/

section Hamiltonian

variable {n : ℕ}

/-- `bpN:p3:ham-smooth`: `H ∈ C^{k+1}` on open `W` gives `X_H ∈ C^k` there (any `k : WithTop ℕ∞`)
and differentiability of `H` at every point of `W`. -/
theorem ham_smooth {W : Set ((Fin n → ℝ) × (Fin n → ℝ))} {H : (Fin n → ℝ) × (Fin n → ℝ) → ℝ}
    (hW : IsOpen W) {k : WithTop ℕ∞} (hH : ContDiffOn ℝ (k + 1) H W) :
    ContDiffOn ℝ k (hamiltonianVectorField H) W ∧ ∀ x ∈ W, DifferentiableAt ℝ H x := sorry

/-- `bpN:p3:ham-smooth`, the instance `k = 1` used by all consumers. -/
theorem ham_smooth_c1 {W : Set ((Fin n → ℝ) × (Fin n → ℝ))}
    {H : (Fin n → ℝ) × (Fin n → ℝ) → ℝ} (hW : IsOpen W) (hH : ContDiffOn ℝ 2 H W) :
    ContDiffOn ℝ 1 (hamiltonianVectorField H) W :=
  (ham_smooth (k := 1) hW (by rwa [one_add_one_eq_two])).1

/-- `bpN:p3:ham-energy`. -/
theorem ham_energy {H : (Fin n → ℝ) × (Fin n → ℝ) → ℝ} {J : Set ℝ} (hJ : J.OrdConnected)
    {z : ℝ → (Fin n → ℝ) × (Fin n → ℝ)}
    (hz : ∀ t ∈ J, DifferentiableAt ℝ H (z t) ∧ HasDerivAt z (hamiltonianVectorField H (z t)) t) :
    ∀ t ∈ J, ∀ t' ∈ J, H (z t) = H (z t') := sorry

/-- `bpN:p3:ham-periodic`. -/
theorem ham_periodic {W : Set ((Fin n → ℝ) × (Fin n → ℝ))}
    {H : (Fin n → ℝ) × (Fin n → ℝ) → ℝ} (hW : IsOpen W)
    (hWk : ∀ k : Fin n → ℤ, (fun x => x + angleShift k) '' W = W)
    (hH : ∀ k : Fin n → ℤ, ∀ x ∈ W, H (x + angleShift k) = H x) :
    (∀ k : Fin n → ℤ, ∀ x ∈ W,
      hamiltonianVectorField H (x + angleShift k) = hamiltonianVectorField H x) ∧
    ∀ (J : Set ℝ) (z : ℝ → (Fin n → ℝ) × (Fin n → ℝ)),
      IsSolutionIn (hamiltonianVectorField H) W J z → ∀ k : Fin n → ℤ,
        IsSolutionIn (hamiltonianVectorField H) W J (fun t => z t + angleShift k) ∧
        ∀ t ∈ J, H (z t + angleShift k) = H (z t) := sorry

/-- `bpN:p3:ham-reduction`: the frozen predicates `IsSolutionOn` (track N) and
`IsHamiltonianSolutionOn` (track I) are `IsSolutionIn` for `X_H` in `ℝⁿ × U`. The blueprint's
"`U` open" is not used and is omitted. -/
theorem ham_reduction {H : (Fin n → ℝ) × (Fin n → ℝ) → ℝ} {U : Set (Fin n → ℝ)}
    {W : Set ((Fin n → ℝ) × (Fin n → ℝ))} (hW : IsOpen W)
    (hUW : (univ : Set (Fin n → ℝ)) ×ˢ U ⊆ W) (hH : ContDiffOn ℝ 2 H W) :
    ContDiffOn ℝ 1 (hamiltonianVectorField H) (univ ×ˢ U) ∧
    ∀ (J : Set ℝ) (z : ℝ → (Fin n → ℝ) × (Fin n → ℝ)),
      (KAM.Nekhoroshev.IsSolutionOn H U J z ↔
        IsSolutionIn (hamiltonianVectorField H) (univ ×ˢ U) J z) ∧
      (IsSolutionIn (hamiltonianVectorField H) (univ ×ˢ U) J z ↔
        KAM.Iso.IsHamiltonianSolutionOn H U J z) := sorry

end Hamiltonian

/-! ## J. Newtonian fields (`KAM/ODE/NewtonDefs.lean`, `NewtonReduction.lean`,
`NewtonContinuation.lean`) -/

section Newton

/-- `W_N`: positive mutual distances. -/
def newtonDomain (N : ℕ) : Set ((Fin N → Fin 2 → ℝ) × (Fin N → Fin 2 → ℝ)) :=
  {x | ∀ i j, i ≠ j → 0 < KAM.Planetary.planeLength (x.1 j - x.1 i)}

/-- `F_N(q, v) = (v, (∑_{j ≠ i} G m_j ℓ⁻³ (q_j - q_i))_i)`. -/
def newtonField (N : ℕ) (G : ℝ) (mass : Fin N → ℝ)
    (x : (Fin N → Fin 2 → ℝ) × (Fin N → Fin 2 → ℝ)) :
    (Fin N → Fin 2 → ℝ) × (Fin N → Fin 2 → ℝ) :=
  (x.2, fun i => ∑ j ∈ Finset.univ.filter (fun j => j ≠ i),
    (G * mass j / KAM.Planetary.planeLength (x.1 j - x.1 i) ^ 3) • (x.1 j - x.1 i))

/-- `W_N' = W_N ∩ {ℓ(q_i) > 0}`. -/
def fixedDomain (N : ℕ) : Set ((Fin N → Fin 2 → ℝ) × (Fin N → Fin 2 → ℝ)) :=
  newtonDomain N ∩ {x | ∀ i, 0 < KAM.Planetary.planeLength (x.1 i)}

/-- The fixed-center field `F'`. -/
def fixedField (N : ℕ) (G m₀ : ℝ) (m : Fin N → ℝ) (eps : ℝ)
    (x : (Fin N → Fin 2 → ℝ) × (Fin N → Fin 2 → ℝ)) :
    (Fin N → Fin 2 → ℝ) × (Fin N → Fin 2 → ℝ) :=
  (x.2, fun i => (-G * m₀ / KAM.Planetary.planeLength (x.1 i) ^ 3) • x.1 i +
    eps • ∑ j ∈ Finset.univ.filter (fun j => j ≠ i),
      (G * m j / KAM.Planetary.planeLength (x.1 j - x.1 i) ^ 3) • (x.1 j - x.1 i))

/-- `W_μ`: the collision-free set of the restricted problem. -/
def restrictedDomain (μ : ℝ) : Set ((Fin 2 → ℝ) × (Fin 2 → ℝ)) :=
  {z | KAM.Iso.CollisionFree μ z}

/-- The total extension `F_μ` of `restrictedVectorField μ`, by the same formula. -/
def restrictedField (μ : ℝ) (z : (Fin 2 → ℝ) × (Fin 2 → ℝ)) : (Fin 2 → ℝ) × (Fin 2 → ℝ) :=
  (![z.2 0 + z.1 1, z.2 1 - z.1 0],
    ![z.2 1, -z.2 0] -
      ((1 - μ) / KAM.Iso.radius (z.1 - KAM.Iso.primary₁ μ) ^ 3) • (z.1 - KAM.Iso.primary₁ μ) -
      (μ / KAM.Iso.radius (z.1 - KAM.Iso.primary₂ μ) ^ 3) • (z.1 - KAM.Iso.primary₂ μ))

/-- On `W_μ`, `F_μ` is the frozen `restrictedVectorField`. -/
theorem restrictedField_eq (μ : ℝ) (z : {z : (Fin 2 → ℝ) × (Fin 2 → ℝ) // KAM.Iso.CollisionFree μ z}) :
    restrictedField μ z.val = KAM.Iso.restrictedVectorField μ z := rfl

/-- Helper: the Euclidean `planeLength` dominates the sup norm. -/
theorem norm_le_planeLength (v : Fin 2 → ℝ) : ‖v‖ ≤ KAM.Planetary.planeLength v := sorry

/-- Helper: `planeLength v ≤ √2 ‖v‖`. -/
theorem planeLength_le_sqrt_two_mul_norm (v : Fin 2 → ℝ) :
    KAM.Planetary.planeLength v ≤ Real.sqrt 2 * ‖v‖ := sorry

/-- Helper: triangle inequality for `planeLength` (without `EuclideanSpace`). -/
theorem planeLength_add_le (v w : Fin 2 → ℝ) :
    KAM.Planetary.planeLength (v + w) ≤ KAM.Planetary.planeLength v + KAM.Planetary.planeLength w :=
  sorry

/-- Helper: the frozen `Iso.radius` is `Planetary.planeLength` (definitional). -/
theorem radius_eq_planeLength : KAM.Iso.radius = KAM.Planetary.planeLength := rfl

/-- Helper (the analytic core of `newton_uniform_data`): `w ↦ ℓ(w)⁻³ w` is Lipschitz on
`{ℓ ≥ r}`, globally (no convexity): split `g w - g w'` with `w'` the shorter vector. -/
theorem lipschitzOnWith_inv3_smul {r : ℝ} (hr : 0 < r) :
    ∃ L : ℝ≥0, LipschitzOnWith L (fun w : Fin 2 → ℝ => (KAM.Planetary.planeLength w ^ 3)⁻¹ • w)
      {w | r ≤ KAM.Planetary.planeLength w} := sorry

/-- `bpN:p3:newton-reduction`, Newton case (`N ≥ 2` of the blueprint is not needed). -/
theorem newton_reduction (N : ℕ) (G : ℝ) (mass : Fin N → ℝ) :
    IsOpen (newtonDomain N) ∧ ContDiffOn ℝ ∞ (newtonField N G mass) (newtonDomain N) ∧
    ∀ Q V : ℝ → Fin N → Fin 2 → ℝ, KAM.Planetary.IsNewtonSolution G mass Q V ↔
      IsSolutionIn (newtonField N G mass) (newtonDomain N) univ (fun t => (Q t, V t)) := sorry

/-- `bpN:p3:newton-reduction`, fixed-center case. -/
theorem fixed_reduction (N : ℕ) (G m₀ : ℝ) (m : Fin N → ℝ) (eps : ℝ) :
    IsOpen (fixedDomain N) ∧ ContDiffOn ℝ ∞ (fixedField N G m₀ m eps) (fixedDomain N) ∧
    ∀ Q V : ℝ → Fin N → Fin 2 → ℝ, KAM.Planetary.IsFixedSolution G m₀ m eps Q V ↔
      IsSolutionIn (fixedField N G m₀ m eps) (fixedDomain N) univ (fun t => (Q t, V t)) := sorry

/-- `bpN:p3:newton-reduction`, restricted case (arbitrary interval `J`). -/
theorem restricted_reduction (μ : ℝ) :
    IsOpen (restrictedDomain μ) ∧ ContDiffOn ℝ ∞ (restrictedField μ) (restrictedDomain μ) ∧
    ∀ (J : Set ℝ) (z : ℝ → (Fin 2 → ℝ) × (Fin 2 → ℝ)),
      KAM.Iso.IsRestrictedSolutionOn μ J z ↔
        IsSolutionIn (restrictedField μ) (restrictedDomain μ) J z := sorry

/-- The region `Φ_{ρ, V̄}` of `bpN:p3:newton-continuation` (Newton field). -/
def newtonRegion (N : ℕ) (ρ Vbar : ℝ) : Set ((Fin N → Fin 2 → ℝ) × (Fin N → Fin 2 → ℝ)) :=
  {x | (∀ i j, i ≠ j → ρ ≤ KAM.Planetary.planeLength (x.1 j - x.1 i)) ∧ ‖x.2‖ ≤ Vbar}

/-- The region of `bpN:p3:newton-continuation` for the fixed-center field. -/
def fixedRegion (N : ℕ) (ρ Vbar : ℝ) : Set ((Fin N → Fin 2 → ℝ) × (Fin N → Fin 2 → ℝ)) :=
  newtonRegion N ρ Vbar ∩ {x | ∀ i, ρ ≤ KAM.Planetary.planeLength (x.1 i)}

/-- The region of `bpN:p3:newton-continuation` for the restricted field. -/
def restrictedRegion (μ ρ Vbar : ℝ) : Set ((Fin 2 → ℝ) × (Fin 2 → ℝ)) :=
  {z | ρ ≤ KAM.Iso.radius (z.1 - KAM.Iso.primary₁ μ) ∧
    ρ ≤ KAM.Iso.radius (z.1 - KAM.Iso.primary₂ μ) ∧ ‖z.1‖ ≤ Vbar ∧ ‖z.2‖ ≤ Vbar}

/-- `stepN:p3:nc-data` (Newton): `Φ_{ρ,V̄}` has uniform data with `δ = ρ / 8`. Helper; the three
corollaries below follow from it, `gen_continuation` and `newton_reduction`. -/
theorem newton_uniform_data (N : ℕ) (G : ℝ) (mass : Fin N → ℝ) {ρ : ℝ} (hρ : 0 < ρ) (Vbar : ℝ) :
    ∃ (M : ℝ) (L : ℝ≥0), UniformData (newtonField N G mass) (newtonDomain N)
      (newtonRegion N ρ Vbar) (ρ / 8) M L := sorry

/-- `stepN:p3:nc-data` (fixed center). -/
theorem fixed_uniform_data (N : ℕ) (G m₀ : ℝ) (m : Fin N → ℝ) (eps : ℝ) {ρ : ℝ} (hρ : 0 < ρ)
    (Vbar : ℝ) :
    ∃ (M : ℝ) (L : ℝ≥0), UniformData (fixedField N G m₀ m eps) (fixedDomain N)
      (fixedRegion N ρ Vbar) (ρ / 8) M L := sorry

/-- `stepN:p3:nc-data` (restricted). -/
theorem restricted_uniform_data (μ : ℝ) {ρ : ℝ} (hρ : 0 < ρ) (Vbar : ℝ) :
    ∃ (M : ℝ) (L : ℝ≥0), UniformData (restrictedField μ) (restrictedDomain μ)
      (restrictedRegion μ ρ Vbar) (ρ / 8) M L := sorry

/-- `bpN:p3:newton-continuation`, Newton case: a finite-time singularity needs near-collisions or
unbounded velocities. -/
theorem newton_continuation (N : ℕ) (G : ℝ) (mass : Fin N → ℝ) {x₀ : (Fin N → Fin 2 → ℝ) × (Fin N → Fin 2 → ℝ)}
    {Tm Tp : EReal}
    {x : ℝ → (Fin N → Fin 2 → ℝ) × (Fin N → Fin 2 → ℝ)}
    (hx : IsMaximalSolution (newtonField N G mass) (newtonDomain N) x₀ Tm Tp x)
    {ρ Vbar : ℝ} (hρ : 0 < ρ) :
    (Tp ≠ ⊤ → ∀ t_star : ℝ, 0 ≤ t_star → (t_star : EReal) < Tp →
      ∃ t : ℝ, t_star ≤ t ∧ (t : EReal) < Tp ∧ x t ∉ newtonRegion N ρ Vbar) ∧
    (Tm ≠ ⊥ → ∀ t_star : ℝ, t_star ≤ 0 → Tm < (t_star : EReal) →
      ∃ t : ℝ, Tm < (t : EReal) ∧ t ≤ t_star ∧ x t ∉ newtonRegion N ρ Vbar) := sorry

/-- `bpN:p3:newton-continuation`, fixed-center case. -/
theorem fixed_continuation (N : ℕ) (G m₀ : ℝ) (m : Fin N → ℝ) (eps : ℝ)
    {x₀ : (Fin N → Fin 2 → ℝ) × (Fin N → Fin 2 → ℝ)} {Tm Tp : EReal} {x : ℝ → (Fin N → Fin 2 → ℝ) × (Fin N → Fin 2 → ℝ)}
    (hx : IsMaximalSolution (fixedField N G m₀ m eps) (fixedDomain N) x₀ Tm Tp x)
    {ρ Vbar : ℝ} (hρ : 0 < ρ) :
    (Tp ≠ ⊤ → ∀ t_star : ℝ, 0 ≤ t_star → (t_star : EReal) < Tp →
      ∃ t : ℝ, t_star ≤ t ∧ (t : EReal) < Tp ∧ x t ∉ fixedRegion N ρ Vbar) ∧
    (Tm ≠ ⊥ → ∀ t_star : ℝ, t_star ≤ 0 → Tm < (t_star : EReal) →
      ∃ t : ℝ, Tm < (t : EReal) ∧ t ≤ t_star ∧ x t ∉ fixedRegion N ρ Vbar) := sorry

/-- `bpN:p3:newton-continuation`, restricted case. -/
theorem restricted_continuation (μ : ℝ) {x₀ : (Fin 2 → ℝ) × (Fin 2 → ℝ)} {Tm Tp : EReal}
    {x : ℝ → (Fin 2 → ℝ) × (Fin 2 → ℝ)}
    (hx : IsMaximalSolution (restrictedField μ) (restrictedDomain μ) x₀ Tm Tp x)
    {ρ Vbar : ℝ} (hρ : 0 < ρ) :
    (Tp ≠ ⊤ → ∀ t_star : ℝ, 0 ≤ t_star → (t_star : EReal) < Tp →
      ∃ t : ℝ, t_star ≤ t ∧ (t : EReal) < Tp ∧ x t ∉ restrictedRegion μ ρ Vbar) ∧
    (Tm ≠ ⊥ → ∀ t_star : ℝ, t_star ≤ 0 → Tm < (t_star : EReal) →
      ∃ t : ℝ, Tm < (t : EReal) ∧ t ≤ t_star ∧ x t ∉ restrictedRegion μ ρ Vbar) := sorry

end Newton

end KAM.ODE

/-! ## K. Track-N statements (`KAM/Nekhoroshev/ODE/Specialization.lean`) -/

namespace KAM.Nekhoroshev.ODE

open KAM.ODE

/-- `bpN:p3:s-N#data`: the standing data of the track-N statements (`R, s > 0`, `h` analytic
integrable, `ε`-small analytic perturbation `f`). -/
structure Data (n : ℕ) (R s ε : ℝ) (h : (Fin n → ℂ) → ℂ)
    (f : (Fin n → ℂ) × (Fin n → ℂ) → ℂ) : Prop where
  hR : 0 < R
  hs : 0 < s
  hh : IsAnalyticIntegrable R s h
  hf : IsAnalyticPerturbation R s ε f

/-- `W_s = ℝⁿ × B(0, R + s)`. -/
def Wdom (n : ℕ) (R s : ℝ) : Set ((Fin n → ℝ) × (Fin n → ℝ)) :=
  univ ×ˢ ball (0 : Fin n → ℝ) (R + s)

/-- `bpN:p3:holo-input` (Part 1, Lemma `holo-real` (b)-(d)). `ι = KAM.realInclusion₂ n`. -/
theorem holo_input {n : ℕ} {R s ε : ℝ} {h : (Fin n → ℂ) → ℂ}
    {f : (Fin n → ℂ) × (Fin n → ℂ) → ℂ} (hd : Data n R s ε h f) :
    ContDiffOn ℝ ∞ (KAM.realHamiltonian h f) (Wdom n R s) ∧
    (∀ z ∈ Wdom n R s, KAM.realInclusion₂ n (hamiltonianVectorField (KAM.realHamiltonian h f) z) =
      KAM.hamiltonianVectorFieldℂ (fun w => h w.2 + f w) (KAM.realInclusion₂ n z)) ∧
    (∀ z ∈ Wdom n R s, ∀ k : Fin n → ℤ,
      KAM.realHamiltonian h f (z + angleShift k) = KAM.realHamiltonian h f z) := sorry

/-- `bpN:p3:lipschitz`. -/
theorem lipschitz_X {n : ℕ} {R s ε : ℝ} {h : (Fin n → ℂ) → ℂ}
    {f : (Fin n → ℂ) × (Fin n → ℂ) → ℂ} (hd : Data n R s ε h f) :
    ContDiffOn ℝ 1 (hamiltonianVectorField (KAM.realHamiltonian h f)) (Wdom n R s) ∧
    (∀ K ⊆ Wdom n R s, IsCompact K →
      ∃ L : ℝ≥0, LipschitzOnWith L (hamiltonianVectorField (KAM.realHamiltonian h f)) K) ∧
    ∀ K : Set (Fin n → ℝ), IsCompact K → K ⊆ ball 0 (R + s) →
      ∃ (δ M : ℝ) (L : ℝ≥0), δ ≤ 1 ∧
        UniformData (hamiltonianVectorField (KAM.realHamiltonian h f)) (Wdom n R s)
          (univ ×ˢ K) δ M L := sorry

/-- `bpN:p3:local-exist`. -/
theorem local_exist {n : ℕ} {R s ε : ℝ} {h : (Fin n → ℂ) → ℂ}
    {f : (Fin n → ℂ) × (Fin n → ℂ) → ℂ} (hd : Data n R s ε h f) {U : Set (Fin n → ℝ)}
    (hU : IsOpen U) (hUs : U ⊆ ball 0 (R + s)) :
    (∀ t₀ : ℝ, ∀ z₀ ∈ (univ : Set (Fin n → ℝ)) ×ˢ U, ∃ ε' > 0, ∃ y : ℝ → (Fin n → ℝ) × (Fin n → ℝ),
      y t₀ = z₀ ∧ IsSolutionOn (KAM.realHamiltonian h f) U (Ioo (t₀ - ε') (t₀ + ε')) y) ∧
    ∀ (J : Set ℝ), J.OrdConnected → ∀ t₀ ∈ J, ∀ y₁ y₂ : ℝ → (Fin n → ℝ) × (Fin n → ℝ),
      IsSolutionOn (KAM.realHamiltonian h f) U J y₁ → IsSolutionOn (KAM.realHamiltonian h f) U J y₂ →
        y₁ t₀ = y₂ t₀ → EqOn y₁ y₂ J := sorry

/-- `bpN:p3:energy`: any `H`, any `U`. -/
theorem energy {n : ℕ} {H : (Fin n → ℝ) × (Fin n → ℝ) → ℝ} {U : Set (Fin n → ℝ)} {J : Set ℝ}
    (hJ : J.OrdConnected) {z : ℝ → (Fin n → ℝ) × (Fin n → ℝ)} (hz : IsSolutionOn H U J z) :
    ∀ t ∈ J, ∀ t' ∈ J, H (z t) = H (z t') := sorry

/-- `(Tm, Tp, z)` is the maximal `IsSolutionOn`-solution through `z₀` at time `0`
(`bpN:p3:continuation`). -/
def IsMaximalSolutionOn {n : ℕ} (H : (Fin n → ℝ) × (Fin n → ℝ) → ℝ) (U : Set (Fin n → ℝ))
    (z₀ : (Fin n → ℝ) × (Fin n → ℝ)) (Tm Tp : EReal) (z : ℝ → (Fin n → ℝ) × (Fin n → ℝ)) :
    Prop :=
  Tm < 0 ∧ 0 < Tp ∧ z 0 = z₀ ∧ IsSolutionOn H U (eIoo Tm Tp) z ∧
    ∀ (J : Set ℝ) (y : ℝ → (Fin n → ℝ) × (Fin n → ℝ)), J.OrdConnected → (0 : ℝ) ∈ J →
      y 0 = z₀ → IsSolutionOn H U J y → J ⊆ eIoo Tm Tp ∧ EqOn y z J

/-- `bpN:p3:continuation`: unique maximal solution, and `T_± = ±∞` when the action stays in a
compact `K ⊆ U` near the end. -/
theorem continuation {n : ℕ} {R s ε : ℝ} {h : (Fin n → ℂ) → ℂ}
    {f : (Fin n → ℂ) × (Fin n → ℂ) → ℂ} (hd : Data n R s ε h f) {U : Set (Fin n → ℝ)}
    (hU : IsOpen U) (hUs : U ⊆ ball 0 (R + s)) {z₀ : (Fin n → ℝ) × (Fin n → ℝ)} (hz₀ : z₀.2 ∈ U) :
    ∃ (Tm Tp : EReal) (z : ℝ → (Fin n → ℝ) × (Fin n → ℝ)),
      IsMaximalSolutionOn (KAM.realHamiltonian h f) U z₀ Tm Tp z ∧
      (∀ (Tm' Tp' : EReal) (z' : ℝ → (Fin n → ℝ) × (Fin n → ℝ)),
        IsMaximalSolutionOn (KAM.realHamiltonian h f) U z₀ Tm' Tp' z' →
          Tm' = Tm ∧ Tp' = Tp ∧ EqOn z' z (eIoo Tm Tp)) ∧
      ∀ K : Set (Fin n → ℝ), IsCompact K → K ⊆ U →
        ((∃ t_star : ℝ, 0 ≤ t_star ∧ (t_star : EReal) < Tp ∧
          ∀ t : ℝ, t_star ≤ t → (t : EReal) < Tp → (z t).2 ∈ K) → Tp = ⊤) ∧
        ((∃ t_star : ℝ, t_star ≤ 0 ∧ Tm < (t_star : EReal) ∧
          ∀ t : ℝ, Tm < (t : EReal) → t ≤ t_star → (z t).2 ∈ K) → Tm = ⊥) := sorry

/-- `bpN:p3:uniqueness-closed`. -/
theorem uniqueness_closed {n : ℕ} {R s ε : ℝ} {h : (Fin n → ℂ) → ℂ}
    {f : (Fin n → ℂ) × (Fin n → ℂ) → ℂ} (hd : Data n R s ε h f) {U : Set (Fin n → ℝ)}
    (hU : IsOpen U) (hUs : U ⊆ ball 0 (R + s)) {L : ℝ}
    {y₁ y₂ : ℝ → (Fin n → ℝ) × (Fin n → ℝ)}
    (h₁ : IsSolutionOn (KAM.realHamiltonian h f) U (Icc (-L) L) y₁)
    (h₂ : IsSolutionOn (KAM.realHamiltonian h f) U (Icc (-L) L) y₂) (h0 : y₁ 0 = y₂ 0) :
    EqOn y₁ y₂ (Icc (-L) L) := sorry

/-- `bpN:p3:confinement-glue`. -/
theorem confinement_glue {n : ℕ} {R s ε : ℝ} {h : (Fin n → ℂ) → ℂ}
    {f : (Fin n → ℂ) × (Fin n → ℂ) → ℂ} (hd : Data n R s ε h f) {U : Set (Fin n → ℝ)}
    (hU : IsOpen U) (hUs : U ⊆ ball 0 (R + s)) {θ₀ I₀ : Fin n → ℝ} {τ ρ : ℝ} (hτ : 0 < τ)
    (hρ : 0 < ρ) (hball : closedBall I₀ ρ ⊆ U)
    (hconf : ∀ (J : Set ℝ) (y : ℝ → (Fin n → ℝ) × (Fin n → ℝ)), IsOpen J → J.OrdConnected →
      (0 : ℝ) ∈ J → y 0 = (θ₀, I₀) → IsSolutionOn (KAM.realHamiltonian h f) U J y →
        ∀ t ∈ J, |t| ≤ τ → ‖(y t).2 - I₀‖ ≤ ρ) :
    ∃ z : ℝ → (Fin n → ℝ) × (Fin n → ℝ), z 0 = (θ₀, I₀) ∧
      IsSolutionOn (KAM.realHamiltonian h f) U (Icc (-τ) τ) z ∧
      (∀ t : ℝ, |t| ≤ τ → ‖(z t).2 - I₀‖ ≤ ρ) ∧
      ∀ L : ℝ, 0 ≤ L → L ≤ τ → ∀ y : ℝ → (Fin n → ℝ) × (Fin n → ℝ), y 0 = z 0 →
        IsSolutionOn (KAM.realHamiltonian h f) U (Icc (-L) L) y → EqOn y z (Icc (-L) L) := sorry

end KAM.Nekhoroshev.ODE

/-! ## L. Instance checks: the ambient spaces are proper, so the general layer applies. -/

example (n : ℕ) : ProperSpace ((Fin n → ℝ) × (Fin n → ℝ)) := inferInstance
example (N : ℕ) : ProperSpace ((Fin N → Fin 2 → ℝ) × (Fin N → Fin 2 → ℝ)) := inferInstance
example : ProperSpace ((Fin 2 → ℝ) × (Fin 2 → ℝ)) := inferInstance

end
```
