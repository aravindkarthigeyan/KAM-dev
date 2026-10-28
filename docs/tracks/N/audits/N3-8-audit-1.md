# N3-8 Newton reduction: independent package audit 1

**Verdict: PASS WITH NOTES.** No blocking mathematical, signature or axiom defect was found. The targeted build, four exact Appendix A signature checks, all six public-theorem axiom checks, and the single two-module leanchecker invocation passed. The initial combined probe terminated with exit 143, but smaller separate probes supplied the required signature/axiom evidence. Lint reported the permitted stale generated root and initially lacked its ABI-success receipt; the separate ABI check subsequently passed for all 144 frozen declarations. These individual receipts and limits are recorded explicitly below.

No provider or frozen theorem anchor belongs to this package. Provider-type and seal-body probes are not applicable; this report does not authorize an anchor seal.

## Snapshot and scope

- Worktree `/root/code/KAM-inp-n3newton`, branch `inp-n3newton`.
- Commit `8e9c3c5b960f99def1822639107a5e7876a07e1d`; binding base is its parent, `b137943e5ef9852f8675b74209b5f43a71ec9e37`.
- Parent delta: `KAM/ODE/NewtonDefs.lean` (91 added lines), `KAM/ODE/NewtonReduction.lean` (170 added lines), nothing else.
- Source hashes: NewtonDefs `5397153af9c7abca677c162fa3d1e0ef3998f90143dcd09fb63c320de15e22fc`; NewtonReduction `66c4fd36ab6226ebd7985c1f1b6f29a181ce650d8e848bf89fc17d8b6e7b7a06`.
- Binding design: `docs/tracks/N/design/PART3-LEAN-DESIGN.md`, Appendix A section J; hash `771846a22aad4b598a41881dafb191fc005de7bdbfd4cf1af5145c52508a8b7c`, identical in main and package worktrees.
- Blueprint: `blueprint-N/parts/p3-hamiltonian-ode.tex` L434–453; region definitions additionally compared with L456–461. Hash `ae9ea3c57b401be389cd9a7e54d9508de50abe33bdc24f5d49a16fffcd43a17d`.

Read the audit brief in full, AGENTS.md, project plan/decisions, the relevant N/I/P statement conventions, Appendix A section J and its design departures, the two package files, Basic's solution definition, the frozen Newton/fixed/restricted predicates and collision/radius/primary definitions, and the imported planar-geometry inputs. Inspected the complete package delta against its named parent. The requested `git diff inp...HEAD` is empty because, at audit time, inp (`42271ef20be096f1c6ed1740c3d5b1e04c43ea37`) already contains HEAD; its merge base with HEAD is HEAD itself.

## Node/declaration review

The table gives source/type verdicts, supported by the successful targeted build, six axiom checks and single kernel replay. The separately elaborated signature checks cover restrictedField_eq and all three reductions. D = `KAM/ODE/NewtonDefs.lean`; R = `KAM/ODE/NewtonReduction.lean`, in the audited worktree.

| Node / obligation | Declaration / locator | Verdict | Assessment |
|---|---|---|---|
| `bpN:p3:newton-reduction`, Newton domain | `KAM.ODE.newtonDomain`, D38 | PASS | All mutual distances are strictly positive; no velocity or position bound is inserted. |
| Same, Newton field | `KAM.ODE.newtonField`, D42 | PASS | Exact frozen force sum over j≠i, coefficient G mass_j, cubic physical distance and direction q_j−q_i; first block is velocity. |
| Same, fixed domain | `KAM.ODE.fixedDomain`, D49 | PASS | Mutual collision exclusion and positive distance to the fixed origin, as required by both frozen collision clauses. |
| Same, fixed field | `KAM.ODE.fixedField`, D53 | PASS | Central force −G m₀ q_i/ℓ(q_i)³ plus eps times the exact mutual force; parameter order and signs agree with the frozen predicate. |
| Same, restricted domain | `KAM.ODE.restrictedDomain`, D61 | PASS | Literally the frozen CollisionFree predicate, retaining both positive distances. |
| Same, restricted field | `KAM.ODE.restrictedField`, D65 | PASS | Same rotating-coordinate formula as the frozen subtype field, with the exact primary positions and masses 1−μ, μ. No μ restriction is added. |
| Same, restricted-field identity | `KAM.ODE.restrictedField_eq`, D72 | PASS | Source body is rfl: the total field agrees definitionally with the frozen field on its collision-free subtype. Exact Appendix A signature. |
| `bpN:p3:newton-continuation`, region data only | `KAM.ODE.newtonRegion`, D77 | PASS | Literal separation threshold and velocity sup-norm bound. This package claims no continuation theorem. |
| Same, fixed region | `KAM.ODE.fixedRegion`, D81 | PASS | Adds separation from the fixed origin. |
| Same, restricted region | `KAM.ODE.restrictedRegion`, D85 | PASS | Bounds distances from both primaries below and both coordinate blocks above, as in the source/design. |
| `stepN:p3:nr-smooth`, openness helper | private `continuous_planeLength`, R28 | PASS | Continuity from the actual sum-of-squares/square-root definition; no alternate norm. |
| `stepN:p3:nr-pair`, product derivative | `KAM.ODE.hasDerivAt_pair_iff`, R34 | PASS | Ordinary two-sided HasDerivAt iff the two component derivatives, in arbitrary real normed spaces. Both directions proved. |
| `stepN:p3:nr-smooth`, guarded force | `KAM.ODE.contDiffAt_force`, R46 | PASS | Positive plane length supplies nonzero vector; imported inverse-cube analyticity gives C∞. The premise is a collision guard, not the smoothness conclusion. |
| Same, coordinate regularity | private `contDiff_q`, R56 | PASS | Coordinate evaluation composed with the position projection. |
| Same, finite force regularity | private `contDiffAt_sumForce`, R60 | PASS | Each summand uses its actual pairwise collision guard; smoothness is derived and the finite sum is formed. |
| `bpN:p3:newton-reduction`, Newton equivalence | `KAM.ODE.newton_reduction`, R70 | PASS | Exact Appendix A signature. Open collision-free domain, C∞ field, and iff with IsSolutionIn on univ. Positivity is carried in the domain-membership conjunct in both directions. N≥2 is legitimately omitted per design D6. |
| Same, fixed equivalence | `KAM.ODE.fixed_reduction`, R101 | PASS | Exact Appendix A signature. The two frozen positivity blocks become intersection membership, preserving their conjunction; position and velocity derivative blocks are reconstructed coordinatewise. |
| Same, restricted equivalence | `KAM.ODE.restricted_reduction`, R133 | PASS | Exact Appendix A signature. For arbitrary J and z, the existential CollisionFree witness becomes domain membership; the frozen subtype-field derivative is definitionally the total-field derivative. No interval or off-J behavior is assumed. |

A whitespace-normalized comparison confirmed all nine definition bodies and the complete signatures of restrictedField_eq and the three reduction theorems are identical to Appendix A section J. The two additional public helpers were independently inspected against the product-derivative and guarded-force obligations. The initial combined elaboration probe did not complete; the smaller four-signature probe and six-axiom probe did complete, as recorded below.

The plane-length helper omissions are authorized by the assignment. Existing `KAM.Kepler.Plane` supplies the relevant geometric facts, including the sup/physical-length comparisons, triangle inequality, radius identity and inverse-cube analytic input. None is redefined or assumed here. The separate global inverse-cube Lipschitz obligation belongs to N3-9a/NewtonUniform in the design, not to this reduction package.

## Frozen predicates and domain membership

The frozen `KAM.Planetary.IsNewtonSolution` consists of all-time mutual-distance positivity, per-body Q′=V, and per-body V′ equal to the displayed force. `newton_reduction` explicitly sends the first conjunct to newtonDomain membership, combines the other two with hasDerivAt_pi and hasDerivAt_pair_iff, and reverses all three steps. In particular, it proves membership AND the derivative equation; the total force equation alone is not substituted for the frozen predicate.

The frozen `IsFixedSolution` first requires positive distances from the origin, then mutual distances, then Q′=V and the fixed-center acceleration. Its forward proof reorders the two positivity blocks into fixedDomain's `(newtonDomain ∩ central-distance-set)` membership; its reverse proof retrieves both. No collision clause is dropped even when a coefficient such as G or eps vanishes.

The frozen `KAM.Iso.IsRestrictedSolutionOn μ J z` is `∀ t ∈ J, ∃ hz : CollisionFree μ (z t), HasDerivAt z (restrictedVectorField μ ⟨z t,hz⟩) t`. The subtype proof is not used in the frozen field's formula. Consequently membership and a derivative for the total extension are exactly equivalent, without any choice of a new force law. All derivatives remain two-sided, including at times that happen to be endpoints of J. The Newton/fixed equivalences retain univ time; the restricted equivalence retains arbitrary J.

The physical length is sqrt of the sum of two squares, not the ambient Pi sup norm. `Iso.radiusSq` and `Planetary.planeSq` have the same formula; both length definitions use sqrt. Primaries are exactly `![-μ,0]` and `![1−μ,0]`. All ambient carriers remain the prescribed finite-function blocks and products; there is no EuclideanSpace replacement.

## Definition classification and assumptions

All nine new definitions are literal data definitions: three collision-free domains, three total fields, three separation/size regions. They match the intended objects on their whole carriers. The fields use Lean's total real division at a collision, but all reduction solution predicates also require membership in the strictly collision-free domain. No result relies on off-domain division values; the source explicitly allows a total restricted-field extension with irrelevant off-domain values. Arbitrary real region thresholds are literal set definitions; positivity is a later use condition, not hidden fallback behavior.

No structure/abbrev, provider, new axiom, conclusion-shaped premise or assumed hard proof step occurs. Newton/fixed dimensions and real coefficients remain arbitrary as in the design, including degenerate finite dimensions. The three private helpers and all six public theorems have proof bodies.

A recursive KAM import scan found 50 modules in the closure and zero provider or frozen-theorem import edges. Plane and Basic are proved infrastructure dependencies. The two new files satisfy the module form (copyright, module, public imports, module docstring, exposed public noncomputable section). Their 91/170 lines are below 1500. A direct scan found no sorry, admit, axiom, unsafe, opaque, set_option or heartbeat/recursion override.

## Execution checks

Commands ran in `/root/code/KAM-inp-n3newton`. Lean operations were serialized; LEAN_NUM_THREADS=2 and nice −n 5 were used. No state-changing git or forbidden cache/clean/update command was run.

### Targeted build — PASS

```sh
LEAN_NUM_THREADS=2 /mnt/HC_Volume_106379410/orchestrator-tools/inp_lake_build.sh /root/code/KAM-inp-n3newton KAM.ODE.NewtonDefs KAM.ODE.NewtonReduction
```

Exit 0, exact output:

```text
[inp-gate] slot 1 acquired 00:01:00 for KAM.ODE.NewtonDefs KAM.ODE.NewtonReduction
Build completed successfully (9096 jobs).
```

### Independent signature/axiom probe — NOT COMPLETED

```sh
LEAN_NUM_THREADS=2 nice -n 5 lake env lean .lake/abi-scratch/N3_8_audit_signature_axioms.lean
```

Exit **143**, no Lean output. The 122-line probe imported NewtonReduction, copied the nine design definitions for rfl comparison, checked the four design theorem types plus the two public-helper types, projected membership from each of the three equivalences, and requested:

```lean
#print axioms KAM.ODE.restrictedField_eq
#print axioms KAM.ODE.hasDerivAt_pair_iff
#print axioms KAM.ODE.contDiffAt_force
#print axioms KAM.ODE.newton_reduction
#print axioms KAM.ODE.fixed_reduction
#print axioms KAM.ODE.restricted_reduction
```

The combined probe produced none of those lists and was deleted without retrying that larger probe. A subsequent seven-line axiom-only probe completed successfully, as recorded below. No success is attributed to the terminated combined probe.

### Exact Appendix A signatures — PASS

```sh
LEAN_NUM_THREADS=2 nice -n 5 lake env lean .lake/abi-scratch/N3_8_audit_signatures.lean
```

Exit **0**, no output. This smaller probe copied the complete expected forall types directly from Appendix A for restrictedField_eq, newton_reduction, fixed_reduction and restricted_reduction, and supplied each corresponding `@KAM.ODE.<name>` without adapting its proof. It used the package definitions, whose bodies were separately confirmed identical to the nine design definitions modulo whitespace. All four type checks succeeded; the probe was deleted afterwards.

### Axiom-only probe — PASS

```sh
LEAN_NUM_THREADS=2 nice -n 5 lake env lean .lake/abi-scratch/N3_8_audit_axioms.lean
```

Exit **0**, exact output:

```text
'KAM.ODE.restrictedField_eq' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.ODE.hasDerivAt_pair_iff' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.ODE.contDiffAt_force' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.ODE.newton_reduction' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.ODE.fixed_reduction' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.ODE.restricted_reduction' depends on axioms: [propext, Classical.choice, Quot.sound]
```

This probe contained only the NewtonReduction import and those six print commands; it was deleted after completion. All six public theorem axiom sets satisfy the permitted list.

### Source lint — permitted root exception after separate ABI completion

```sh
LEAN_NUM_THREADS=2 nice -n 5 sh scripts/lint_sources.sh
```

Exit **1**. Observed nonblank output:

```text
KAM.lean is out of date; run scripts/gen_root_imports.py
check_lean_modules: PASS (262 Lean files, 0 comparator configurations)
FROZEN-ANCHOR GUARD OK
```

The last output was a blank line. In particular, there was **no `ABI HASHES OK` receipt**. The generated-root exception is allowed by the brief, but the missing ABI-success receipt prevents treating this as a lint pass modulo that exception. No forbidden-token/size/module diagnostic was printed. Neither the generated root nor frozen files were changed, and the aggregate lint command was not retried. Its unfinished ABI stage was instead checked separately:

```sh
LEAN_NUM_THREADS=2 nice -n 5 python3 -I scripts/abi_hashes.py /root/code/KAM-inp-n3newton manifest/frozen-anchors.json --check
```

Exit **0**:

```text
ABI HASHES OK (144 frozen declarations)
```

Together with the original static/module/frozen-guard results, this completes the individual lint checks except for the explicitly permitted generated-root freshness exception. The separate success is not presented as an exit-0 receipt for the earlier aggregate command.

### Kernel replay — single invocation

```sh
LEAN_NUM_THREADS=2 nice -n 5 lake env leanchecker --verbose KAM.ODE.NewtonDefs KAM.ODE.NewtonReduction
```

Exit **0**, exact output:

```text
replaying KAM.ODE.NewtonReduction
replaying KAM.ODE.NewtonDefs
```

Exactly one leanchecker invocation was made; it was not retried.

### Diff and cleanup evidence

`git diff --check HEAD^ HEAD` exited 0 with no output. Both `git diff HEAD^ HEAD -- KAM/Frozen manifest KAM.lean README.md` and `git diff inp...HEAD -- KAM/Frozen manifest KAM.lean README.md` were empty. The parent delta contains only the two package files. After removing the audit probe, `git status --porcelain=v1` was empty and HEAD remained the requested commit.

## Source wording and handoff limits

At blueprint N Part 3 L453, nr-pair ends “Together they say exactly that x has derivative F_N(x(t)) at t.” Read literally without the preceding membership clause, a bare equation for a total field would not enforce collision exclusion. The proposition at L440–445 and the preceding sentence at L453 expressly include domain membership. The package implements that full conjunction correctly; no correction of a frozen predicate is needed. This is a prose-scope clarification, not a finding against the implemented theorem.

No new pinned-paper erratum or unexplained mathematical deviation was identified. The design's stronger all-N reduction statements and the authorized helper ownership are retained. No continuation, confinement or physical theorem is proved by this package audit. The successful smaller probes and separate ABI check supply the receipts missing from the first attempts. No remaining mathematical/package acceptance blocker was found; regenerating the generated root remains the orchestrator action permitted by the brief. Only this report was written in the main worktree; no package source or protected artifact was edited.
