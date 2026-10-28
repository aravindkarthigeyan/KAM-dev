# C5-3 independent package audit 1

**Verdict: PASS WITH NOTES for `bpN:p5:flow` (b), `KAM.Canonical.flow_b`.** The infrastructure statement and proof pass the contract audit. No frozen theorem anchor is proved or sealed by this package; provider/frozen-anchor equality and seal-body checks therefore have no applicable anchor. The signature-copy probe described below checks the corresponding infrastructure interface instead. Acceptance does not close any I/N/P headline theorem.

Audited on 2026-10-28 in `/root/code/KAM-inp-c53`, HEAD `c448256f3e17c11c0d1a8ebd414abd9eb0ded571`. Comparison: `git diff inp...HEAD`; observed `inp` was `a763bfdbf022d6f10caaff4fc865f2a9e5432a97`, merge base `b6862cc0d6a8e31e08d22d7d61264aa7e86075c6`. The diff contains only four added Lean modules, 832 lines. The pre-existing untracked handoff was read, not modified. This report's destination follows the user's explicit worktree-path instruction, overriding the brief's generic main-worktree destination.

Read: AGENTS.md, PLAN, DECISIONS, the named audit brief and handoff; Track N statement conventions; design C5-3, Appendix C.1, module/package tables and binding audit-2 notes; both PART145 design audits; blueprint `bpN:p5:flow` and its proof; all four added files and their relevant Flow/ODE/Weighted dependencies. There are no frozen theorem imports in the package's transitive KAM import closure. The three inherited frozen **definition** imports (`ComplexStrip`, `IsPrimaryOnStrip`, `IsRealOnReals`) were inspected; they are unchanged and are not theorem assumptions.

## Contract and proof findings

1. **Exact interface.** The text from `theorem flow_b` through its result type at `FlowRegular.lean:181–191` is byte-identical to `/root/code/KAM-inp/.drafts/design/NPart145Signatures.lean:495–505` and the design's Appendix C.1. A fresh declaration copied from that signature, with body `by exact flow_b h`, elaborates; both directions of the polymorphic `type_of%` assignment elaborate. The only explicit theorem binder is `h`. The existing section instances are the approved finite-dimensional complex normed-space instances. The conclusions retain joint continuity, holomorphy on the full gauge interior, image in Ω, joint derivative continuity, and the exact continuous-linear-map variational integral on the closed time interval `[-1,1]`. There is no additional smallness, nonemptiness, dimension-positivity, or derivative-bound premise.

2. **Actual flow, without an identification gap.** `FlowPicardConverge.lean:37` first derives `flow_integral_eq` from `flow_a` and the fundamental theorem of calculus, including negative time and endpoints. At line 65, compactness gives a larger gauge ball contained in Ω and a single Lipschitz constant valid for both curves, all nearby initial points, and all iterates. The base estimate is the actual flow's displacement. The induction integrates the Lipschitz estimate for `F(y_k)-F(flow)`, proving
   `ν(y_k(t,z)-flow(t,z)) ≤ ε Λ^k |t|^(k+1)/(k+1)!`.
   Thus the limit is already the chosen flow from part (a). The constants η and Λ precede z, k and t. Using `gen_lip` and operator norms gives an admissible Λ, rather than the blueprint's particular supremum; no downstream result requires equality to that supremum.

3. **Regularity and derivative convergence.** `picard_regular` proves, rather than assumes, regularity and displacement of every iterate. `flow_paramHyp_local` converts the gauge error to the ambient norm using `‖W⁻¹‖`. Its larger neighborhood V contains a fixed ambient ball of radius `η/(2(‖W‖+1))` about every point of V′. Uniform holomorphic convergence proves holomorphy on V; `general_cauchy` applied to the iterate-minus-flow difference gives derivative error `δ_k/r` on V′, uniformly also in time. Both errors tend to zero by the factorial estimate. Locality then supplies the full gauge interior. All divisions have positive denominators, including on the zero-dimensional carrier; ε=0 and the endpoint ε=1/2 need no extra restriction.

4. **Abstract-E integration.** `FlowRegularIntegral.lean:121–160` uses a closed ambient ball of radius r/2 contained in the open parameter domain. Finite dimensionality makes `[-1,1] × closedBall` compact. Joint continuity of the parameter derivative supplies one operator-norm bound C there. Rescaling time sends `[0,1]` into `[-1,1]`, also for negative t. The measure is `volume.restrict (Ioc 0 1)`, explicitly finite; the constant majorant is integrable. Continuity of each slice supplies almost-everywhere strong measurability of the integrand and derivative and integrability at the base point. The derivative bound and differentiability hold throughout a parameter neighborhood, as the Mathlib dominated differentiation theorem requires. `ParamHyp.intervalIntegral` assumes completeness of its target, and the actual E and continuous-linear-map targets are complete. Rescaling back handles t=0 separately in `intervalIntegral_eq_smul_mul`. No interchange is asserted without the required bound/measurability data.

5. **Variational equation.** `FlowRegular.lean:181–208` proves the image condition from the existing displacement bound, composes the established regular family with F, and differentiates the actual integral equation on a neighborhood of each initial point. `ParamHyp.comp_field` supplies precisely `DF(flow).comp (Dflow)` by the chain rule. `integral_congr` applies only on the segment contained in `[-1,1]`. The equation is the requested integral form, with no unproved derivative-flow or linear-equation hypothesis.

## Declaration inventory

All names below have prefix `KAM.Canonical.`. The integration and Picard helpers implement proof steps of `bpN:p5:flow` (b), not additional frozen anchors. Conditional closure helpers have distinct names; their `ParamHyp` assumptions describe their input family and are discharged by induction or preceding proofs before `flow_b` is exported.

| Node / proof step; file:line | Declaration | Verdict | Reason / note |
|---|---|---|---|
| fl-picard; FlowRegularIntegral:42 | `intervalIntegral_eq_smul_mul` | PASS | Exact signed-time change of variables; zero time handled. |
| fl-picard; FlowRegularIntegral:52 | `mul_mem_Icc_neg_one_one` | PASS | Required rescaled-time containment. |
| fl-picard; FlowRegularIntegral:60 | `continuousOn_slice` | PASS | Continuity restricted to a time slice. |
| fl-picard; FlowRegularIntegral:70 | `continuousOn_scale` | PASS | Joint continuity after fixed time scaling. |
| fl-picard; FlowRegularIntegral:80 | `continuousOn_integral_mul` | PASS | Compact local bound and dominated continuity. |
| fl-picard; FlowRegularIntegral:108 | `continuousOn_intervalIntegral` | PASS | Joint continuity with signed variable endpoint. |
| fl-picard; FlowRegularIntegral:121 | `hasFDerivAt_integral_mul` | PASS | Dominated differentiation with local bound and measurable slices. |
| fl-picard; FlowRegularIntegral:164 | `ParamHyp` | PASS | Literal regularity bundle, classified below. |
| fl-picard; FlowRegularIntegral:171 | `ParamHyp.intervalIntegral` | PASS | Proves closure and the actual derivative formula. |
| fl-picard; FlowRegularIntegral:195 | `ParamHyp.id_add` | PASS | Adds initial datum; derivative is id plus integral. |
| fl-limit; FlowPicard:39 | `norm_intervalIntegral_le_pow` | PASS | Correct factorial-induction integral, both signs of time. |
| fl-limit; FlowPicard:75 | `norm_gauge_intervalIntegral_le` | PASS | Commutes W with an integrable interval integral. |
| fl-picard; FlowPicard:88 | `isCompact_gaugeBall'` | PASS | Compact affine image of a closed ball. |
| fl-picard; FlowPicard:103 | `exists_gaugeInterior_gt'` | PASS | Compactness supplies strict interior slack. |
| fl-picard; FlowPicard:128 | `continuousOn_fderiv_field` | PASS | Holomorphy gives continuous derivative on open Ω. |
| fl-picard; FlowPicard:136 | `ParamHyp.comp_field` | PASS | Conditional chain-rule closure, not a substituted source result. |
| fl-picard; FlowPicard:158 | `ParamHyp.continuousOn_time` | PASS | Time-slice continuity. |
| fl-picard; FlowPicard:166 | `picard` | PASS | Literal recursion, classified below. |
| fl-picard; FlowPicard:171 | `picard_zero` | PASS | Exact zero-iterate identity. |
| fl-picard; FlowPicard:174 | `picard_succ` | PASS | Exact successor identity. |
| fl-picard; FlowPicard:179 | `abs_mul_le_half` | PASS | Uses precisely nonnegative ε≤1/2 and abs(t)≤1. |
| fl-picard; FlowPicard:188 | `mem_of_displacement` | PASS | Correct gauge-ball containment. |
| fl-picard; FlowPicard:194 | `picard_regular` | PASS | Inductively proves regularity and uniform displacement. |
| fl-picard; FlowPicard:226 | `intervalIntegrable_picard_field` | PASS | Integrability follows from established regularity. |
| fl-limit; FlowPicardConverge:37 | `flow_integral_eq` | PASS | Derived from the actual `flow_a` solution. |
| fl-limit; FlowPicardConverge:54 | `tendstoUniformlyOn_of_bound` | PASS | General metric consequence of a null uniform bound. |
| fl-limit; FlowPicardConverge:65 | `picard_flow_estimate` | PASS | Direct flow error, uniform local η/Λ and exact factorial rate. |
| fl-limit; FlowRegular:42 | `ParamHyp.of_local` | PASS | Genuine locality of the three regularity conditions. |
| fl-limit; FlowRegular:61 | `picard_bound_le` | PASS | Uniform-in-time factorial majorant. |
| fl-limit; FlowRegular:76 | `flow_paramHyp_local` | PASS | Holomorphic limit and uniform derivative convergence. |
| fl-limit; FlowRegular:176 | `flow_paramHyp` | PASS | Assembles local proofs on the entire intended domain. |
| flow (b); FlowRegular:181 | `flow_b` | PASS WITH NOTES | Exact approved interface; valid route substitutions and inherited prose notes below. |

The two primed compactness lemmas reprove private lemmas from Flow.lean. This duplication is harmless; no earlier private declaration is replaced or exported under a misleading source name. The helper statements either express intermediate steps or generalize the elementary calculation; they do not weaken a required blueprint conclusion.

## Definitions and dependency graph

- `ParamHyp` (`FlowRegularIntegral.lean:164`) is a Prop structure containing exactly joint continuity, holomorphy in the initial point, and joint continuity of its ambient Fréchet derivative on `[-1,1] × U`. It is the intended regularity property for arbitrary U, with no existence, convergence, or variational-equation field smuggled in. On empty domains its conditions are correctly vacuous.
- `picard` (`FlowPicard.lean:166`) is the literal total recursion `y₀=z`, `yₖ₊₁=z+∫₀ᵗF(yₖ)`. There is no conditional fallback. Although the ambient Bochner integral is total, every use in the flow argument is guarded by proved interval integrability and domain containment. No theorem relies on an undefined-integral value.
- There are no other new `def`, `abbrev`, or `structure` declarations. The pre-existing `flow` fallback is excluded on the claimed domain by `flow_a`, which supplies actual existence.

The module DAG is acyclic: Mathlib → FlowRegularIntegral; existing C5-2 Flow + FlowRegularIntegral → FlowPicard; FlowPicard + existing ODE.Lipschitz → FlowPicardConverge; FlowPicardConverge + W4-2 Weighted.Parametric → FlowRegular. ODE.Lipschitz is already below Flow. No later canonical package, provider, or frozen theorem is imported. The public facade remains at the design's `KAM.Canonical.FlowRegular` module path. Generic abstract E is the approved signature and permits the concrete `Fin n → ℂ` and product carriers without `EuclideanSpace`.

## Independent verification receipts

Every audit-launched Lean/Lake/checker invocation ran serially with `LEAN_NUM_THREADS=1` and `nice -n 5` (the gate applies nice to its build; lint's ABI subprocess inherits the parent's priority and environment). No heartbeat, recursion, or synthesis budget override was used. Only the report was edited outside `.lake/abi-scratch/`; the audit probe/log files are deleted after extracting these receipts.

**Targeted build:**

```sh
LEAN_NUM_THREADS=1 /mnt/HC_Volume_106379410/orchestrator-tools/inp_lake_build.sh /root/code/KAM-inp-c53 KAM.Canonical.FlowRegular
```

Exit 0. Exact output:

```text
[inp-gate] slot 2 acquired 03:22:52 for KAM.Canonical.FlowRegular
Build completed successfully (2897 jobs).
```

This targeted build used the existing worktree build snapshot; no clean, update, cache fetch, or library-from-scratch build was requested.

**Signature and axiom probe:**

```sh
LEAN_NUM_THREADS=1 nice -n 5 lake env lean .lake/abi-scratch/C53Audit.lean > .lake/abi-scratch/C53Audit.out 2>&1
```

Exit 0. The probe imports `KAM.Canonical.FlowRegular`, recreates the signature under `flow_b_audit` with body `by exact flow_b h`, and checks:

```lean
example : type_of% @flow_b_audit := @flow_b
example : type_of% @flow_b := @flow_b_audit
```

It executes `#print axioms KAM.Canonical.<name>` for each of the 30 theorem rows above, plus `picard` and `ParamHyp.mk`. All 32 outputs have exactly `[propext, Classical.choice, Quot.sound]`; no `sorryAx` or additional axiom occurs. Full output:

```text
'KAM.Canonical.intervalIntegral_eq_smul_mul' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Canonical.mul_mem_Icc_neg_one_one' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Canonical.continuousOn_slice' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Canonical.continuousOn_scale' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Canonical.continuousOn_integral_mul' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Canonical.continuousOn_intervalIntegral' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Canonical.hasFDerivAt_integral_mul' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Canonical.ParamHyp.intervalIntegral' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Canonical.ParamHyp.id_add' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Canonical.norm_intervalIntegral_le_pow' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Canonical.norm_gauge_intervalIntegral_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Canonical.isCompact_gaugeBall'' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Canonical.exists_gaugeInterior_gt'' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Canonical.continuousOn_fderiv_field' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Canonical.ParamHyp.comp_field' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Canonical.ParamHyp.continuousOn_time' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Canonical.picard_zero' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Canonical.picard_succ' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Canonical.abs_mul_le_half' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Canonical.mem_of_displacement' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Canonical.picard_regular' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Canonical.intervalIntegrable_picard_field' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Canonical.flow_integral_eq' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Canonical.tendstoUniformlyOn_of_bound' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Canonical.picard_flow_estimate' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Canonical.ParamHyp.of_local' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Canonical.picard_bound_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Canonical.flow_paramHyp_local' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Canonical.flow_paramHyp' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Canonical.flow_b' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Canonical.picard' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Canonical.ParamHyp.mk' depends on axioms: [propext, Classical.choice, Quot.sound]
```

**Kernel replay:**

```sh
LEAN_NUM_THREADS=1 nice -n 5 lake env leanchecker --verbose KAM.Canonical.FlowRegular KAM.Canonical.FlowRegularIntegral KAM.Canonical.FlowPicard KAM.Canonical.FlowPicardConverge > .lake/abi-scratch/C53Kernel.out 2>&1
```

Exit 0. Complete output:

```text
replaying KAM.Canonical.FlowPicardConverge
replaying KAM.Canonical.FlowPicard
replaying KAM.Canonical.FlowRegularIntegral
replaying KAM.Canonical.FlowRegular
```

All four named module replays completed successfully in this single invocation.

**Source lint:**

```sh
LEAN_NUM_THREADS=1 nice -n 5 sh scripts/lint_sources.sh
```

Exit 1, solely the exception expressly allowed by the audit brief. Complete output:

```text
KAM.lean is out of date; run scripts/gen_root_imports.py
check_lean_modules: PASS (367 Lean files, 0 comparator configurations)
FROZEN-ANCHOR GUARD OK
ABI HASHES OK (144 frozen declarations)
```

No forbidden token, resource override, overlong line, module-format failure, or over-1500-line file was reported. The four new files have respectively 217 (FlowRegularIntegral), 239 (FlowPicard), 164 (FlowPicardConverge), and 212 (FlowRegular) physical lines. Each has copyright, `module`, public imports, module docstring, and exposed public noncomputable section.

`git diff --check inp...HEAD` exits 0 with no output. `git diff inp...HEAD -- KAM/Frozen manifest KAM.lean README.md` exits 0 with empty output. The generated root was deliberately left for the orchestrator, as the brief requires.

## Notes, errata and boundaries

- **Accepted proof-route deviations, explicitly recorded:** the abstract-E interval integral lemma replaces the coordinate-carrier `holomorphic_parametric_integral`; `gen_lip` supplies an admissible local Lipschitz constant; factorial convergence is proved directly against `flow_a` rather than constructing a separate limit and invoking uniqueness; derivative convergence is obtained from `general_cauchy`. These are proved replacements at the same interface, with no added source premises. The handoff's informal line counts 211/213 differ from the current physical counts 212/217; this is bookkeeping, not a type or proof defect.
- **Inherited blueprint sign defect:** `blueprint-N/parts/p5-canonical-maps.tex:59`, `stepN:p5:fl-max`, says “symmetrically ... `$T_->-1$`.” Existence on the whole closed interval requires **`T_- < -1`** for the maximal open interval. Time reversal proves that inequality. Both earlier design audits already identify this typo; it remains in this snapshot. The Lean argument uses the correct `flow_a` time domain, so this does not block C5-3. No source or ledger was edited.
- **Binding R2-02 consumer boundary retained:** design row at `PART145-LEAN-DESIGN.md:344` still says “flow_a..e verbatim” for the three-block N11b carrier. As `PART145-design-audit-2.md:38–44` requires, a..d apply directly; e needs a real-preserving coordinate regrouping and uniqueness transport, or a generic real-subspace wrapper. C5-3 proves the generic complex-space part (b), makes no claim to prove e, and introduces no reliance on that stale wording. The boundary is unaffected, not discharged by this audit.
- **No new pinned-paper erratum identified.** Part 5 explicitly labels the general-norm formulation and holomorphy as the project's own extension; this audit checks that blueprint/design contract and its Lean proof, not a fresh transcription of Pos93. No missing mathematical obligation within the C5-3 export was found. General real-C¹ dependence in N Part 12, reality, inverse, symplecticity, and all frozen I/N/P providers remain separate packages.

Final disposition: accept C5-3 infrastructure with the notes above; no frozen-anchor seal is authorized or claimed by this package audit.
