# N3-7 independent package audit

Marker: audit-n3-7  
Verdict: **PASS WITH NOTES**. All four public theorems pass signature, source-fidelity, proof and axiom checks, and the single requested kernel replay passes. The notes are the harmless unused source premise `hτ` and the expected stale generated root file. No provider or frozen anchor belongs to this package; provider-type and seal-body checks are inapplicable.

## Scope and identity

Audited `/root/code/KAM-inp-n3cont`, branch `inp-n3cont`, commit `cf4ff13c4d02970f95d63c836bee7fd0a6069915`, against its parent `7dbe2e061221a19be6aeabec66230c22304a7ed3`, as instructed. The complete package delta is one added file, `KAM/ODE/Continuation.lean`, 211 lines. Its SHA256 is `625ddde6145cc3787997d456fb36b4d34c7270479326e0165a70d7dfe6d2e7a1`.

Read the package audit brief in full, AGENTS, PLAN, DECISIONS, the track-N statement, the binding design (especially Appendix A G and its N3-7 proof plan), the package file, and the relevant imported ODE contracts. Source authority for these four nodes is `blueprint-N/parts/p3-hamiltonian-ode.tex` L270–L324. There are no relevant frozen theorem or frozen-definition interfaces in this general ODE package.

`git diff inp...HEAD --stat` is empty at audit time (`inp` resolved to `0eeb09b2df05ace23476f5460693a4622ae796da`); this does not erase the package delta. The review therefore uses the explicitly requested commit and parent. `git diff --name-status cf4ff13^ cf4ff13` prints exactly:

```text
A	KAM/ODE/Continuation.lean
```

## Declaration findings

Lean names below are in namespace `KAM.ODE`. Line numbers refer to the package file.

| Blueprint node / helper | Lean declaration | Verdict | Evidence |
|---|---|---|---|
| `bpN:p3:gen-continuation` | `gen_continuation` (L114–L129) | PASS | Identical design signature. Both endpoint implications preserve the source quantifiers and tail hypotheses. The source explicitly gives this positive equivalent form at L275. |
| `bpN:p3:gen-continuation-compact` | `gen_continuation_compact` (L132–L140) | PASS | Identical design signature. Compactness and inclusion in W supply uniform data; no boundedness or closedness substitute is assumed. |
| `bpN:p3:gen-continuation-periodic` | `gen_continuation_periodic` (L192–L207) | PASS | Identical design signature. The carrier is the specified max-norm product, angles have integer period one, and only the action component is confined in compact K. Both time directions are retained. |
| `bpN:p3:gen-confinement` | `gen_confinement` (L145–L182) | PASS WITH NOTES | Identical design signature. It proves existence of a maximal representative, strict interior containment, the closed-interval solution and confinement, and equality with every competing solution for every 0≤r≤τ. `hτ` is a genuine, harmless source premise; see below. |
| Private field-reversal helper | `UniformData.neg'` (L38–L42) | PASS | Preserves δ, M, L and the domain. Norm invariance under negation and negation of a Lipschitz map prove all fields; no dynamical assertion is assumed. |
| Private right-end helper | `continuation_right` (L45–L110) | PASS | Implements the source's local-existence, uniqueness and gluing contradiction using the actual maximality structure. |

All four public declaration headers match the binding Appendix A G headers exactly modulo whitespace, including binder order and implicitness. A temporary Lean probe restated those design signatures under fresh names and elaborated `example : type_of% @expected_<name> := @KAM.ODE.<name>` for each complete polymorphic type. This independently checks elaborated type compatibility, rather than merely testing an application at selected arguments.

## Proof and premise audit

At L51–L57, `continuation_right` assumes Tp is not top, excludes bottom using `hz.pos_lt`, and only then obtains an actual real T with Tp=T. It never substitutes `EReal.toReal` at an infinite endpoint. It chooses ε=δ/max(M,1)>0 and t₁=max(t_star,T−ε/2), proves t_star≤t₁<T<t₁+ε, and obtains local existence at z(t₁) from the given uniform data.

The left endpoint may still be bottom. The real bridge point l between Tm and t₁ (L71), followed by l'=max(l,t₁−ε), keeps the auxiliary interval inside the original left boundary. Uniqueness proves agreement on the overlap. The piecewise curve equals z on the old open interval and α on the trimmed new open interval, so `IsSolutionIn.union_of_isOpen` supplies an ordinary two-sided derivative even at T. At L104 the proof applies `hz.maximal` to the larger interval through zero. Its subset conclusion is contradicted by a real midpoint strictly beyond T. This is a genuine extension argument, with maximality used at its declared contract.

The negative endpoint is handled by `hz.neg`, C¹ regularity of −F, unchanged uniform data, and EReal negation. The conclusion −Tm=top becomes Tm=bottom. No finite coercion of an infinite left endpoint occurs. Compact and periodic variants use their actual uniform-data theorems; they do not require compact angle lifts or assume a global flow.

For confinement, `gen_maximal` supplies the maximal solution rather than taking its existence as a hypothesis. The proof instantiates `hconf` on that open maximal interval. If Tp≤τ, all its nonnegative times lie within the a priori horizon, so continuation would force Tp=top, contradicting Tp≤τ. The left endpoint argument is symmetric. The resulting strict endpoint inequalities give a solution on the closed interval by restriction, preserving two-sided derivatives at its endpoints. Ordinary ODE uniqueness proves the final universal comparison clause.

`hconf` is exactly the conditional helper premise in the blueprint L312–L313 and design; it is not an inserted premise of a frozen theorem. `IsMaximalSolution` is the preceding package's standard structure: endpoint signs, initial value, actual solution predicate and the maximal extension/equality property. No field assumes continuation or confinement.

At blueprint L311, the literal premise is “τ>0”. Appendix A G also requires `(hτ : 0 < τ)`. The package retains it at L146; L154 merely binds `have _hτ := hτ`, and the rest of the proof never uses that binding. This is redundant proof data, not a defect or a disguised assumption. No signature change is requested.

## Definition classification

There are no new `def`, `abbrev` or `structure` declarations: four public theorems and two private theorems comprise the package. The local piecewise curve in the extension proof is the intended glued solution on the verified interval. Values outside the asserted solution intervals are never used as dynamics. Imported `IsSolutionIn`, `UniformData`, `eIoo` and `IsMaximalSolution` have their intended carriers and guards; no new fallback or junk-value definition is introduced.

## Independent checks

Commands ran from `/root/code/KAM-inp-n3cont` unless the worktree argument is explicit. No resource override was used. The temporary probe was under `.lake/abi-scratch/` and was removed after checking.

Targeted gated build:

```sh
LEAN_NUM_THREADS=2 /mnt/HC_Volume_106379410/orchestrator-tools/inp_lake_build.sh /root/code/KAM-inp-n3cont KAM.ODE.Continuation
```

```text
[inp-gate] slot 1 acquired 22:10:44 for KAM.ODE.Continuation
Build completed successfully (2845 jobs).
```

Exit 0. The gate runs `nice -n 5 lake build`; no clean, update, cache retrieval or scratch rebuild was requested.

Signature and axiom probe:

```sh
LEAN_NUM_THREADS=2 nice -n 5 lake env lean .lake/abi-scratch/AuditN37.lean
```

Exit 0; all four type examples elaborated. Exact `#print axioms` output:

```text
'KAM.ODE.gen_continuation' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.ODE.gen_continuation_compact' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.ODE.gen_confinement' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.ODE.gen_continuation_periodic' depends on axioms: [propext, Classical.choice, Quot.sound]
```

Kernel replay — exactly one invocation, after the build and probe completed:

```sh
LEAN_NUM_THREADS=2 nice -n 5 lake env leanchecker --verbose KAM.ODE.Continuation
```

```text
replaying KAM.ODE.Continuation
```

Exit 0 (`LEANCHECKER_EXIT=0` captured by the command wrapper).

Source lint:

```sh
sh scripts/lint_sources.sh
```

```text
KAM.lean is out of date; run scripts/gen_root_imports.py
check_lean_modules: PASS (242 Lean files, 0 comparator configurations)
FROZEN-ANCHOR GUARD OK
ABI HASHES OK (144 frozen declarations)
```

Exit 1 solely for the generated-root condition expressly allowed by the audit brief. No root regeneration was performed. The package has the copyright header, `module`, public imports, module docstring and public section; 211 lines are below the 1500-line cap. A code-token scan found no sorry, admit, axiom, unsafe, opaque, set_option, EuclideanSpace, provider import or frozen import.

`git diff --check HEAD^ HEAD` exits 0 with no output. Both the requested `git diff inp...HEAD -- KAM/Frozen manifest KAM.lean README.md` and the meaningful parent comparison `git diff HEAD^ HEAD -- KAM/Frozen manifest KAM.lean README.md` are empty. The package worktree was clean before audit scratch files and remained clean after cleanup. Only this report is retained as an audit edit.

## Source defects, deviations and limits

No suspected mathematical defect in these four blueprint statements or their proofs was found; no new pinned-source erratum is asserted. The positive continuation formulation and explicit maximality/interior clauses are already authorized by design departures D8–D9 and express the blueprint's stated conclusions. The unused positivity premise is recorded above without changing it. No deviation was introduced by this audit.

This verdict covers the named package at the pinned commit and its imported contracts, with successful kernel replay and allowed axiom closure. It does not seal a frozen theorem or certify an entire track-N proof route.
