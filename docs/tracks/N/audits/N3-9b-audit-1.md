# N3-9b Newton continuation — independent package audit

**Verdict: PASS.** Marker: `audit-n3-9b`.

Audited `/root/code/KAM-inp-n3ncont`, branch `inp-n3ncont`, commit `ad92a481eca01359d5e44598ca3d6f28f5b59ba4`, against its parent `00d6e82d73f0eaef1f8bb566ccd0c2b19597a6ff`. The package adds only `KAM/ODE/NewtonContinuation.lean` (97 lines). No provider or frozen theorem anchor belongs to this package; provider identity and seal probes are inapplicable, as instructed.

Read the package brief, AGENTS, repository PLAN/DECISIONS, track-N statement conventions, binding design Appendix A, the Newton continuation source and relevant imported definitions/contracts. The brief's `git diff inp...HEAD` is empty here because the current `inp` already contains the package commit (merge-base is `ad92a48`); the requested parent-to-commit diff therefore supplies the substantive audit boundary.

## Declaration verdicts

All Lean names below are in `KAM.ODE`.

| Blueprint node / role | Lean declaration and package lines | Verdict | Reason |
|---|---|---|---|
| Generic helper for `bpN:p3:gen-continuation` | `continuation_exit`, L33–48 | PASS | Exact classical contrapositive of the two clauses of `gen_continuation`; witnesses remain in the maximal interval and on the requested side of t_star. UniformData is an explicit conditional-helper premise, not an exit or continuation conclusion. |
| `bpN:p3:newton-continuation`, Newton case; `stepN:p3:nc-apply` | `newton_continuation`, L55–66 | PASS | Exact Appendix A signature. Domain openness and smoothness come from newton_reduction, and all uniform data are proved by newton_uniform_data with delta=rho/8. No confinement or collision/velocity escape is assumed. |
| Same node, fixed-center case | `fixed_continuation`, L69–80 | PASS | Exact Appendix A signature; fixedRegion retains both mutual separation and separation from the center. Openness, C-infinity regularity and uniform data are instantiated for the actual fixed field, with C-infinity reduced to C1. |
| Same node, restricted case | `restricted_continuation`, L83–93 | PASS | Exact Appendix A signature; restrictedRegion retains distance from both primaries and bounds on both position and momentum. The actual restricted field and domain are used. |

## Source fidelity and attempts to refute

The governing source is `blueprint-N/parts/p3-hamiltonian-ode.tex` L434–467, especially the corollary L456–462 and application L467. The generic continuation source is L270–275. Appendix A's three signatures are at `docs/tracks/N/design/PART3-LEAN-DESIGN.md` L1037–1068.

The source concerns a maximal solution in the collision-free domain, not a globally given Newton orbit. `IsMaximalSolution` contains the initial condition, actual solution on the open EReal interval, and maximality among competing solution intervals; these are the intended source premises. The theorem assumes no escape assertion or a priori confinement. The endpoints satisfy Tm<0<Tp, so Tp≠top and Tm≠bot express finite right and left endpoints respectively. Each witness has precisely the inclusive t_star boundary and strict maximal-end boundary required by the source. The sign-reversed time clause is consistent with the symmetric generic criterion.

The Lean result is slightly stronger than the displayed Newtonian source: N may be any natural number rather than N>=2, and Vbar may be any real number rather than Vbar>=0. This agrees with the binding design. For negative Vbar all three regions are empty, so the exit assertion is immediate for any admissible t_star. No extra physical positivity condition on G, masses, eps or mu is introduced. Position bounds are absent in the Newton and fixed regions; the restricted region includes the additional position bound expressly required by the source.

Checked the actual definitions in NewtonDefs: physical distances use planeLength/radius, while finite-function and product norms are max norms. The first block is position and the second velocity (momentum in the restricted case). Checked the imported UniformData fields: positive delta, nonnegative M, closed-ball containment in W, norm bound and Lipschitz bound on each such ball. The helper merely unpacks these witnesses. Each concrete export derives them from its corresponding uniform-data theorem, rather than adding a bundled assumption to its source statement. The three reduction theorems supply open domains and C-infinity regularity; the proof's `hF.of_le` legitimately restricts regularity to C1.

No failed application premise, changed quantifier, weakened conclusion, altered carrier, or conclusion-shaped hypothesis was found. The general helper is not substituted for any of the three concrete source exports.

## Definition classification and imports

No new def, abbrev, structure, instance, notation or opaque declaration is introduced. There are exactly four new public theorems. The fields, domains, regions, UniformData and maximal-solution predicate are existing objects and are not redefined or replaced by proxies. No new fallback or totalization is used by the proofs.

The module publicly imports Continuation, NewtonUniform and NewtonReduction. It imports no provider or frozen theorem anchor directly. Its proof axiom sets below also exclude sorryAx and any custom axiom. Existing frozen definition dependencies of the Newton fields are not new provider/anchor claims of this package.

## Independent checks

All commands below ran in `/root/code/KAM-inp-n3ncont`, sequentially; no concurrent Lean jobs were launched by this auditor. No heartbeat, recursion-depth or synthesis-budget override was used.

### Targeted build

```sh
LEAN_NUM_THREADS=1 /mnt/HC_Volume_106379410/orchestrator-tools/inp_lake_build.sh /root/code/KAM-inp-n3ncont KAM.ODE.NewtonContinuation
```

Exit **0**. Output:

```text
[inp-gate] slot 1 acquired 01:17:38 for KAM.ODE.NewtonContinuation
Build completed successfully (9104 jobs).
```

The compile gate executes the required `nice -n 5 lake build` command. No clean, update, cache-get or library-wide build was requested.

### Appendix A identity and axioms

A temporary `.lake/abi-scratch/N39bAudit.lean` imported NewtonContinuation. It copied each of the three Appendix A theorem signatures under an audit-specific name and proved it by the actual export. For each it additionally checked:

```lean
example : (type_of% @audit_expected_newton_continuation) =
    (type_of% @newton_continuation) := rfl
```

The analogous two fixed/restricted equalities were checked too. An independent whitespace-normalized comparison of the three complete binder/result signatures also matched. Thus identity was tested on the complete types, not only by applying the functions to a favorable set of arguments.

```sh
LEAN_NUM_THREADS=1 nice -n 5 lake env lean .lake/abi-scratch/N39bAudit.lean
```

Exit **0**. The probe ran `#print axioms` on all four new public theorems, with exact output:

```text
'KAM.ODE.continuation_exit' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.ODE.newton_continuation' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.ODE.fixed_continuation' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.ODE.restricted_continuation' depends on axioms: [propext, Classical.choice, Quot.sound]
```

The probe was deleted after use.

### Kernel replay

```sh
LEAN_NUM_THREADS=1 nice -n 5 lake env leanchecker --verbose KAM.ODE.NewtonContinuation
```

Exit **0**, first attempt. Exact output:

```text
replaying KAM.ODE.NewtonContinuation
```

No exit 143 occurred; the requested retry was unnecessary.

### Source hygiene

```sh
sh scripts/lint_sources.sh
```

Exit **1**, solely for the brief's permitted generated-root exception. Exact output:

```text
KAM.lean is out of date; run scripts/gen_root_imports.py
check_lean_modules: PASS (314 Lean files, 0 comparator configurations)
FROZEN-ANCHOR GUARD OK
ABI HASHES OK (144 frozen declarations)
```

No other lint failure was reported. KAM.lean was not regenerated. The module has copyright/authors, `module`, public imports, module docstring and public section, and its 97 total lines are below the 1500-line cap. Inspection/search found no forbidden proof escape, resource override or EuclideanSpace use.

`git diff HEAD^ HEAD --check` exited **0**, with no output. `git diff HEAD^ HEAD -- KAM/Frozen manifest KAM.lean README.md` was empty, as was the brief's `git diff inp...HEAD` for those protected paths. The package worktree remained clean after the temporary probe was removed. Only this report was added in the main inp worktree; no source repair or state-changing git command was performed.

## Findings, uncertainties and errata

No findings requiring a change. No new suspected defect in the blueprint or pinned source and no unauthorized mathematical deviation were identified. The stated N/Vbar generalizations are compatible strengthenings already present in the binding design. This audit validates this package's contracts, proofs and replay; it makes no separate claim that any frozen theorem anchor is sealed.
