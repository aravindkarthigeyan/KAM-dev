# I-HEAD independent package audit 1

Date: 2026-10-28. **Anchor verdict: PASS (seal-ready)** for `KAM.Iso.all_time_confinement`, supplied by `KAM.Provider.Iso.all_time_confinement`. No material statement, proof, or premise defect found. This report does not seal the anchor: its manifest state remains `DRAFT_SORRY`.

## Scope and authority

Audited `git diff inp...HEAD`: merge base `ee49a8e953a5e0763fbe7f293ea67601357155cc`, HEAD `d4156b3dff74a1e2e459b197ee224a6aa75dfeac`. At inspection `inp` pointed to `70459244a0e2eb0cee43f1efcbc5b2dc6dd81f2b`; the three-dot comparison still selects exactly the requested package: one file, 86 insertions, `KAM/Provider/Iso/AllTimeConfinement.lean` (101 total lines).

Read AGENTS.md, PLAN.md, DECISIONS.md, the package brief and handoff, the frozen I-HEAD declaration and relevant frozen definitions, Track I statement §I-HEAD, blueprint Parts 0/3/5, and the specified PART58/PART123 design interfaces, including the Appendix A copy of `IPart58Signatures.lean` section P. The standalone untracked signature file is not present in this worktree; its documented verbatim appendix supplies the comparison.

The orchestrator's corrected brief §4 explicitly permits importing SEALED frozen theorems and forbids DRAFT_SORRY anchors and direct imports of other providers. I reread that corrected text. The two private frozen imports satisfy this rule. The explicit user report destination in this worktree overrides the generic brief's main-worktree destination.

This is an independent audit of the changed assembly and its consumed interfaces, with kernel replay of the provider and its two direct lemma modules. It is not a new mathematical source audit of the entire pre-existing I-G1/Part 3/Part 5 proof campaign.

## Declaration and node table

All source locators below are relative to this worktree.

| Node / interface | New declaration (provider file line) | Verdict | Reason |
|---|---|---|---|
| Part 3 → Part 5, PART123 §8.2, `bpI:p3:tori` | `KAM.Iso.Confinement.part3_tori` (36) | PASS | Exactly the generic `ChartCover ∧ ToriExistence` output of `Charts.part3_tori_of`; its IG1Statement/G3Statement premises are discharged by the two SEALED anchors. Remaining `HeadData` and nonemptiness premises are the designated source data. |
| `stepI:p5:hd-eps` | `KAM.Iso.Confinement.confinement_main` (43) | PASS | Chooses the threshold before `f`, ε, and the initial point. Nonempty case calls `confinement_main_of_tori`; empty case supplies 1 and derives contradiction from initial action membership. |
| `stepI:p5:hd-fix` | `KAM.Iso.Confinement.confinement_main` (43) | PASS | PerturbData contains the original analytic, periodicity, reality, nonnegativity, and norm premises. No positive-ε restriction; ε = 0 remains included. |
| `stepI:p5:hd-sol` | `KAM.Iso.Confinement.confinement_main` (43) | PASS | Preserves global solution on all real times, initial value, genuine frozen solution predicate, and strict displacement bound. |
| `stepI:p5:hd-uniq` | `KAM.Iso.Confinement.confinement_main` (43) | PASS | Preserves agreement with every B-valued local solution on every Ioo a b with a < 0 < b; no displacement or enclosure hypothesis is added to competitors. |
| `bpI:p0:head`, PART58 §11.1 and section P | `KAM.Provider.Iso.all_time_confinement` (65) | PASS | Both-direction elaborated exact-type checks, definitional type equality, and a fresh frozen-declaration copy with the proposed seal body all pass. The constructor and final lambda match section P. |

These are all three new public declarations. There are no new definitions, abbreviations, structures, instances, or auxiliary public theorems hidden in the diff.

## Binder and definition audit

Provider lines 93–97 perform precisely the §11.1 repack:

| Frozen data / premises | Destination / use |
|---|---|
| B, s₀, r₀, h, B′, η | Parameters of `HeadData` and `confinement_main` |
| hs, hr, hh, hhreal | `HeadData.toBaseData = ⟨hs, hr, hh, hhreal⟩` |
| hB, hBb, hBne, hiso, hB′, hcompact, hinside, hη | The remaining HeadData fields, in their declared order |
| f, ε, holomorphy, periodicity, reality, 0 ≤ ε, norm bound | `PerturbData = ⟨hf, hper, hreal, h0, hbd⟩` |
| ε < ε₀, z₀, initial membership | Passed separately to the conclusion `H` |
| Global solution, initial value, displacement, local uniqueness | Returned unchanged from `H` |

The standing structures in `Confinement/Setting.lean:74–109` contain only the frozen source premises. In particular, they contain no torus existence, solution, or confinement field. `hB′` is intentionally unused by Parts 3/5 as documented; packing an unnecessary source premise is not premise smuggling. The constants depend only on the fixed HeadData parameters; `f`, ε, z₀ occur after the existential threshold.

The empty case at provider line 56 is legitimate: `hz₀` yields `⟨z₀.2, hz₀⟩ : B′.Nonempty`, contradicting the branch assumption. No trajectory or arbitrary fallback is claimed for an admissible initial point in that branch.

**New-definition classification: none.** Reviewed existing carriers used at the boundary: `P2` is the required product of real Fin-2 function spaces; `toC` is coordinatewise inclusion; `realPart` and frozen `realHamiltonian` are real restrictions; `actionNbhd` and `complexStrip` are the actual open complex domains. The bordered Hessian uses the real frequency gradient and its derivative. Frozen `IsHamiltonianSolutionOn` requires B-membership, differentiability of H at visited points, and genuine `HasDerivAt`, not a disguised confinement predicate. No new junk value or fallback construction is introduced or relied on.

`ChartCover` and `ToriExistence` are conditional-helper output structures, not hypotheses of the provider: the provider actually proves them via Part 3. The proof path is `part3_tori_of` → `part3_tori` → `confinement_main_of_tori` → `confinement_main` → provider. Inspection of `Confinement/Main.lean` confirms its threshold, torus, graph, maximal-solution, confinement/continuation, and uniqueness calls. No shortcut assumes the hard conclusion.

## Exact type, seal body, and axioms

Untracked probe: `.lake/abi-scratch/IHeadAudit.lean` (deleted after the checks). It imported the frozen I-HEAD module and provider and checked:

```lean
example : type_of% @KAM.Iso.all_time_confinement :=
  @KAM.Provider.Iso.all_time_confinement
example : type_of% @KAM.Provider.Iso.all_time_confinement :=
  @KAM.Iso.all_time_confinement
example : type_of% @KAM.Iso.all_time_confinement =
    type_of% @KAM.Provider.Iso.all_time_confinement := rfl
```

It also copied the entire frozen declaration under the fresh name `audit_seal_copy`, replacing only the body with:

```lean
by exact KAM.Provider.Iso.all_time_confinement
  B hB hBb hBne hs hr h hh hhreal hiso B' hB' hcompact hinside hη
```

Every explicit binder is supplied exactly once in frozen order; s₀, r₀, η remain implicit. The probe's examples using the draft anchor test only its type. The seal-copy proof depends on the provider and has no `sorryAx`.

Command:

```sh
LEAN_NUM_THREADS=1 nice -n 5 lake env lean .lake/abi-scratch/IHeadAudit.lean
```

Exit 0, with no errors or warnings; exact output:

```text
'KAM.Iso.Confinement.part3_tori' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Confinement.confinement_main' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Provider.Iso.all_time_confinement' depends on axioms: [propext, Classical.choice, Quot.sound]
'audit_seal_copy' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.isoenergetic_kam' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.volume_not_diophantine_le' depends on axioms: [propext, Classical.choice, Quot.sound]
```

## Build, kernel replay, and hygiene

The audit's build, probe, kernel replay, and lint/ABI elaboration were run sequentially, with `LEAN_NUM_THREADS=1`. No separate Lean check was started during another audit Lean/lake command. The build used the required compile gate, which invokes `nice -n 5 lake build`.

```sh
LEAN_NUM_THREADS=1 /mnt/HC_Volume_106379410/orchestrator-tools/inp_lake_build.sh /root/code/KAM-inp-ihead KAM.Provider.Iso.AllTimeConfinement
```

Exit 0. Output:

```text
[inp-gate] slot 2 acquired 03:54:08 for KAM.Provider.Iso.AllTimeConfinement
⚠ [2841/2865] Replayed KAM.ODE.Exit
warning: KAM/ODE/Exit.lean:36:0: automatically included section variable(s) unused in theorem `KAM.ODE.gen_exit`:
  [NormedSpace ℝ E]
consider restructuring your `variable` declarations so that the variables are not in scope or explicitly omit them:
  omit [NormedSpace ℝ E] in theorem ...

Note: This linter can be disabled with `set_option linter.unusedSectionVars false`
Build completed successfully (3321 jobs).
```

This is an existing dependency linter warning, not a provider warning or a resource failure. No option was changed.

```sh
LEAN_NUM_THREADS=1 nice -n 5 lake env leanchecker --verbose KAM.Provider.Iso.AllTimeConfinement KAM.Iso.Confinement.Main KAM.Iso.Charts.Tori
```

Exit 0, exact output:

```text
replaying KAM.Iso.Charts.Tori
replaying KAM.Iso.Confinement.Main
replaying KAM.Provider.Iso.AllTimeConfinement
```

Manifest inspection confirms `iso.isoenergetic_kam.v1` and `kam.volume_not_diophantine_le.v1` are `SEALED`; their frozen bodies are trivial provider applications. I-HEAD remains `DRAFT_SORRY`. The provider directly imports neither another provider nor a DRAFT_SORRY theorem. Sealed anchors' own implementation imports are the permitted anchor/provider boundary.

The changed file has copyright, `module`, public interface imports, module docstring and `public section`; 101 lines is below 1500. No forbidden proof escape, resource override, new definition requiring exposure, or prohibited ambient carrier is introduced.

`git diff inp...HEAD -- KAM/Frozen manifest KAM.lean README.md` is empty (exit 0). `git diff --check inp...HEAD` has no output (exit 0).

Lint command (exit 0):

```sh
LEAN_NUM_THREADS=1 sh scripts/lint_sources.sh
```

The lint shell was raised to niceness 5 with `renice -n 5 -p 610796` before it launched the ABI Lean subprocess, which inherited that niceness. Exact lint output:

```text
check_lean_modules: PASS (385 Lean files, 0 comparator configurations)
FROZEN-ANCHOR GUARD OK
ABI HASHES OK (144 frozen declarations)
```

There was no out-of-date-root exception to waive. This independently verifies that the guard accepts the two SEALED frozen imports and the current frozen ABI. All disposable audit probe/log files were removed after their output was recorded here.

## Blueprint/source notes and remaining scope

No suspected mathematical source erratum or meaning-changing deviation was found in this package. Blueprint `p0-conventions.tex:268–299` and `p5-confinement.tex:181–184` agree with the provider's quantifiers, max norm, zero-size perturbation case, and local uniqueness conclusion.

Nonblocking documentation notes: PART58 §2 still says “I-G1 is `DRAFT_SORRY`”; that historical status sentence is stale relative to the checked SEALED manifest. PART123 §8.2 correctly specifies the sealed-anchor import arrangement. The provider's line-35 phrase “Premise-free output” means no undischarged I-G1/G3 input; the theorem visibly retains its source-data premises `hd` and `hne`. Neither wording affects Lean or seal readiness.

Only this report was added by the auditor outside disposable `.lake/abi-scratch/` files. No frozen file, manifest, implementation, generated root, README, source ledger, or git state was edited. No uncertainties remain about the changed glue; the audit does not claim a re-review of every pre-existing source derivation.
