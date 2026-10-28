# I-3 independent audit 1

Verdict: **PASS WITH NOTES** for package I-3 (`ham-eq`, `newton`, and `h0`, second clause). No mathematical or statement-fidelity defect found. This is an infrastructure package: it neither supplies a provider nor seals any frozen theorem. In particular I-R3BP remains `DRAFT_SORRY`; I-KEPLER is already sealed independently of this diff. Provider/frozen-type and proposed seal-body probes are **N/A**, rather than passing seal receipts for either anchor.

## Scope and frozen inputs

Audit date: 2026-10-28 UTC. Worktree: `/root/code/KAM-inp-i3`. Audited HEAD: `7c3773528cd6e62df0d36e506518cb97eb19cbaa`; comparison ref `inp`: `8de675fd1a19c7d7753f0e3640edaeb865d792e1`. `git diff inp...HEAD` adds only `KAM/Iso/RestrictedHam.lean` (286 lines). Initial working-tree status was `?? docs/tracks/I/audits/`; the handoff was already present there.

Read the user instructions, AGENTS, PLAN, DECISIONS, `/root/code/KAM-inp/.drafts/briefs/inp-audit-package.md`, the I-3 handoff, track-I statement, design §§1.2, 2.1, 7 and Appendix A Part7Ham, blueprint-I p0 and p7 target statements/proofs, the relevant frozen definitions and theorem anchors, and all 286 lines of the implementation. Applied `lean-statement-audit` and `manuscript-audit` (focused tier 2). The user's exact report destination overrides the brief's generic main-worktree destination. No source repair, git mutation, or network lookup was performed. Only this report and temporary files under `.lake/abi-scratch/` were written, apart from authorized build artifacts. All audit Lean/Lake invocations were serialized with `LEAN_NUM_THREADS=1` and `nice -n 5`; the build used the prescribed compile gate. No agents were delegated.

Snapshot SHA-256:

| Input | SHA-256 |
|---|---|
| `KAM/Iso/RestrictedHam.lean` | `ee88c7e11b41c4ee83876d9061fe84a3d5ef63cb3c9425e020ee8ef479975123` |
| `blueprint-I/parts/p7-delaunay.tex` | `a3f650f5c2982ea6e5545efd4294c086103439908cfd2683ec3a836923a6521d` |
| `blueprint-I/parts/p0-conventions.tex` | `b7d03bed902122fab0cb1cdcf47816492caad9e55d67aabb8b1e836d187ab13f` |
| `docs/tracks/I/statement.md` | `060e16321cf4c51b6bf2219d5c4c542e6a5678807b16de0f25f6fdec979ea3ae` |
| `docs/tracks/P/design/KEPLER-LEAN-DESIGN.md` | `ef91c316d0127ef9884c602810d58b816501524ed75e7d2923c0e92f736dfdf5` |
| `docs/tracks/I/audits/I-3-handoff.md` | `72c364258f97c9c7043450849c9755fc4b773a48044d3c6573f51981704d1665` |

All source line locators below refer to this snapshot. Manifest identity: `iso.restrictedHamiltonian.v1`, `iso.restrictedVectorField.v1`, `iso.IsRestrictedSolutionOn.v1` are SEALED definitions, approved by D20; their ABI hashes are respectively `cb461337f8575c139de5daa594ad98c79c78610a0b84977605a40e168c2365c3`, `7f23620e590d0b874e5e94198c0e04331fa179347cb63925313f28703115520a`, `f8e83a3360d7b983683d6d48e29e232ef15fc8c7a9546eede0512d09d6a00059`. The repository guard and elaborated ABI check below validate the manifest, including definition closures. The 122 frozen definitions also passed independent whole-file SHA-256 comparison. Theorems use prefix/suffix and statement checks rather than a whole-file definition hash.

## Declaration inventory and fidelity

Every public declaration is included. Names below have prefix `KAM.Iso.`. These results contain no constants chosen after additional data, no typeclass premises, and no conditional proof bundles.

| Blueprint node | Declaration (implementation line) | Verdict | Reason |
|---|---|---|---|
| p0:restricted / p7:ham-eq | `restrictedHamTotal` (50) | PASS | Literal total formula extension stipulated by design §1.2 and Appendix A L1431–1433. Physical interpretation is restricted to collision-free points. |
| p7:ham-eq | `restrictedHamiltonian_eq` (54) | PASS | Frozen subtype Hamiltonian equals the total formula by `rfl`, with exactly the same kinetic term, cross-term sign and two displaced-primary potentials. |
| p0:primaries / p7:ham-eq | `isOpen_collisionFree` (57) | PASS | Both positive Euclidean-radius conditions define open sets; no mass restriction is needed. |
| p7:ham-eq | `analyticOnNhd_restrictedHamTotal` (68) | PASS | Real analyticity at every point of the open collision-free set, stronger than merely smooth. Inverse radii are guarded by positivity. |
| p7:ham-eq | `restrictedVectorField_eq_hamiltonian` (137) | PASS | Exact frozen field equals `(∂p H, −∂q H)`; no assumed derivative identity. |
| p7:ham-eq | `isRestrictedSolutionOn_iff` (150) | PASS | Exact frozen solution predicate, arbitrary time set, collision freedom retained. Hamiltonian differentiability is proved from analyticity. `univ` is the action domain, not a replacement for collision freedom. |
| p7:h0, second clause | `restrictedHamTotal_zero` (166) | PASS | `H₀ = kE − planeCross` with no hypothesis: stronger for the explicit total extension. Composes with the frozen subtype equality at every collision-free point. Does not claim the Delaunay first clause. |
| p7:newton | `restricted_newton_iff` (253) | PASS | Exact designed first-order, pointwise formulation. Position derivative equals velocity, and velocity derivative equals the two inertial Newton forces iff the rotated phase curve has the exact frozen derivative. Applying at all times with `v = x′` yields the blueprint's twice-differentiable interval formulation. |

Private proof inventory (also checked line by line, and included in kernel replay): `radiusSq_def` (64); `fderiv_restrictedHamTotal_apply` (96); `rot_zero'` (176); `rot_neg_rot` (179); `rot_rot_neg` (182); `rot_add'` (185); `rot_sub'` (188); `rot_neg'` (191); `rot_smul'` (194); `hasDerivAt_rot_curve` (198); `hasDerivAt_rot_neg_curve` (218); `hasDerivAt_rot_pos_curve` (224); `restrictedVectorField_rot` (232). These are derived algebra/calculus facts, not added assumptions.

### Expanded binder audit

Each row is one binder, with subtype conditions and `CollisionFree` expanded. TYPING includes arbitrary object parameters. The shared source references are p0:primaries (blueprint p0 L131–137), p0:restricted (L139–151), p7:ham-eq (p7 L51–55), p7:newton (L72–85), and p7:h0 (L281–289); Appendix A L1431–1456 records the designed Lean interfaces. There are no implicit ambient variables beyond those listed.

| Declaration | Binder / expanded input | Bin | Source / justification |
|---|---|---|---|
| `restrictedHamiltonian_eq` | `μ : ℝ` | TYPING | p0:restricted parameter |
| same | subtype value `z : Phase 2` | TYPING | p0:restricted phase point |
| same | subtype proof: `0 < radius (z.1 − primary₁ μ)` | SOURCE | p0:primaries collision domain |
| same | subtype proof: `0 < radius (z.1 − primary₂ μ)` | SOURCE | p0:primaries collision domain |
| `isOpen_collisionFree` | `μ : ℝ` | TYPING | p7 domain Wμ |
| `analyticOnNhd_restrictedHamTotal` | `μ : ℝ` | TYPING | p7:ham-eq |
| `restrictedVectorField_eq_hamiltonian` | implicit `μ : ℝ` | TYPING | p7:ham-eq |
| same | implicit `z : Phase 2` | TYPING | p7:ham-eq |
| same | `hz`: positive first primary radius | SOURCE | p7:ham-eq, z ∈ Wμ |
| same | `hz`: positive second primary radius | SOURCE | p7:ham-eq, z ∈ Wμ |
| `isRestrictedSolutionOn_iff` | `μ : ℝ` | TYPING | p7:ham-eq |
| same | `J : Set ℝ` | TYPING | arbitrary time set; stronger than an interval restriction |
| same | `z : ℝ → Phase 2` | TYPING | solution curve |
| `restrictedHamTotal_zero` | `z : Phase 2` | TYPING | total identity; p7:h0 on source domain |
| `restricted_newton_iff` | implicit `μ : ℝ` | TYPING | p7:newton |
| same | implicit `t : ℝ` | TYPING | pointwise time |
| same | implicit `x : ℝ → Fin 2 → ℝ` | TYPING | inertial position |
| same | implicit `v : ℝ → Fin 2 → ℝ` | TYPING | velocity variable in designed first-order formulation |
| same | `hcf`: positive first radius at rotated position | SOURCE | p7:newton excludes collision with R(t)a₁ |
| same | `hcf`: positive second radius at rotated position | SOURCE | p7:newton excludes collision with R(t)a₂ |

Counts: SOURCE 6, TYPING 14, STANDING 0, RULED 0, EXCESS 0. `Phase 2` is literally the product of two `Fin 2 → ℝ` spaces. `CollisionFree` has only the two displayed radius inequalities. `IsRestrictedSolutionOn` expands to `∀ t ∈ J, ∃ hz, HasDerivAt ...`; `IsHamiltonianSolutionOn` expands to action membership, differentiability of H, and the genuine curve derivative. These predicates occur in the equivalence being proved, never as additional theorem assumptions. Analyticity's domain membership is inside its conclusion. No bundled result or instance hides a premise.

### Definition classification

Only one new definition; no new abbrev, structure, instance or choice construction.

`restrictedHamTotal` is an **auxiliary literal total formula extension**, not a replacement definition of the frozen physical Hamiltonian on collisions. Design §1.2 explicitly says “the frozen `restrictedHamiltonian` formula on all of `Phase 2`”; blueprint p8 L229 also requires a “total formula extension” on the open collision-free domain. Its whole body is precisely the polynomial and inverse-radius expression; no `if`, `dite`, chosen witness, or arbitrary default branch occurs. Lean's total division has its usual value at zero, but no physical or differentiability claim is made there. The no-hypothesis zero-mass identity holds algebraically on that explicit extension and specializes to the physical identity. It does not enable collision solutions: both sides of the solution equivalence retain `CollisionFree`.

- BODY_MATCH: OK (literal extension as designed; restriction is definitionally the frozen formula).
- PUBLIC_CARRIER: OK (explicitly auxiliary `Phase 2 → ℝ`, not a globally physical interpretation).
- WELL_DEFINEDNESS: N/A_LITERAL.
- CHARACTERIZATION: N/A_LITERAL; restriction identity independently checked by `rfl`.
- CHOICE_INDEPENDENCE: N/A.
- DEFINITION_VERDICT: PASS.

## Refutation pass and proof assessment

Tried the following potential failures against the actual proof, separately from hygiene:

1. **Wrong Coriolis/rotation sign:** ruled out. `rot` is `(cos t·x₀ − sin t·x₁, sin t·x₀ + cos t·x₁)`; `quarterTurn = (−x₁,x₀)`. Differentiating R(−t)y gives `−J R(−t)y + R(−t)y′`. Thus q′ = p − Jq, p′ = −Jp + rotated force, exactly the frozen field. The reverse implication differentiates R(t) of both components and cancels the J terms; it does not assume differentiability of x or v separately.
2. **Max norm substituted for Newtonian radius:** ruled out by literal frozen radius/planeLength equality, Euclidean sum of squares, and `planeLength_rot`. No norm cubed is used in the force. The transient probe checks both moving-primary distance identities.
3. **Zero-mass removal hiding collision behavior:** ruled out. The physical frozen Hamiltonian still requires both collision exclusions at μ=0; only the named auxiliary total identity is stronger. Its physical specialization is checked by composition.
4. **Hamiltonian predicate loses collisions or assumes smoothness:** ruled out. Both positive radii remain on the RHS; differentiability of the total Hamiltonian at each such point is constructed from real analyticity, not assumed. The transient probe unfolds the Hamiltonian solution clauses and verifies the exact derivative-only equivalence.
5. **Total extension used to invent off-domain smoothness:** ruled out. Every analytic/derivative field lemma is guarded by collision freedom; openness provides a genuine neighborhood of each point. No formula outside that neighborhood is used to replace a physical derivative.

No surviving mathematical finding. This was a single independent auditor's full source/statement/proof pass with adversarial rechecking; no second-person review is claimed. The analytic inverse-radius derivative is imported from the unchanged `KAM.Kepler.Plane` infrastructure and its application is checked at nonzero displacements. All helper proofs are kernel replayed below.

## Notes, source defects, deviations and limits

- **Minor handoff metadata:** handoff L3 says “(276 lines)”; the audited file has 286 lines. L10 cites “p6-kepler.tex/p8-r3bp.tex nodes ham-eq, newton, h0”, but all three actual node labels are in `blueprint-I/parts/p7-delaunay.tex` (L51, L72, L281). The implementation docstring already identifies Part 7 correctly. These are locator/count corrections, not mathematical defects.
- **Expected generated root:** `KAM.lean` omits the new module until orchestrator regeneration, exactly as allowed by the brief; it was left unchanged.
- No suspected mathematical blueprint defect, pinned-source erratum, or implementation deviation found in the audited nodes. The blueprint's barycentric Hamiltonian is explicitly its own adaptation; this audit verifies that formula and its derivation, not a fresh PDF-level audit of Chi05 or the entire KAM/three-body campaign.
- The shared ODE `IsSolIn` reduction, canonical coordinate transformation as a symplectic-map theorem, Delaunay first clause of h0, I-HEAD and I-R3BP assembly are outside this package. The pointwise Newton differential identity is proved; no additional canonical-map theorem is claimed here.

## Verification evidence

Targeted build (exit 0):

```text
LEAN_NUM_THREADS=1 /mnt/HC_Volume_106379410/orchestrator-tools/inp_lake_build.sh /root/code/KAM-inp-i3 KAM.Iso.RestrictedHam
[inp-gate] slot 1 acquired 00:32:58 for KAM.Iso.RestrictedHam
⚠ [9087/9094] Replayed KAM.Kepler.Energy
warning: KAM/Kepler/Energy.lean:106:35: Variable name `hm` is not explicitly referenced.
warning: KAM/Kepler/Energy.lean:106:48: Variable name `hκ` is not explicitly referenced.
Build completed successfully (9094 jobs).
```

The two warnings are replayed from unchanged Energy infrastructure. The gate executes `nice -n 5 lake build`; the environment is inherited. No clean or library-from-scratch rebuild was requested.

Lint (exit 1 solely for the explicitly permitted generated-root discrepancy):

```text
LEAN_NUM_THREADS=1 nice -n 5 sh scripts/lint_sources.sh
KAM.lean is out of date; run scripts/gen_root_imports.py
check_lean_modules: PASS (263 Lean files, 0 comparator configurations)
FROZEN-ANCHOR GUARD OK
ABI HASHES OK (144 frozen declarations)
```

Axiom and composition probe (exit 0):

```text
LEAN_NUM_THREADS=1 nice -n 5 lake env lean .lake/abi-scratch/I-3-audit-1.lean
'KAM.Iso.restrictedHamiltonian_eq' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.isOpen_collisionFree' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.analyticOnNhd_restrictedHamTotal' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.restrictedVectorField_eq_hamiltonian' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.isRestrictedSolutionOn_iff' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.restrictedHamTotal_zero' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.restricted_newton_iff' depends on axioms: [propext, Classical.choice, Quot.sound]
.lake/abi-scratch/I-3-audit-1.lean:29:5: warning: Variable name `hcf` is not explicitly referenced.
```

The transient probe also elaborated four examples: (1) literal frozen/total Hamiltonian equality by `rfl`; (2) solution equivalence with the expanded genuine derivative clause, constructing Hamiltonian differentiability from collision freedom; (3) zero-mass identity for the actual frozen subtype Hamiltonian by composing the two public equalities; (4) both moving-primary distance equalities. The last identity holds without needing the supplied collision witness, explaining the probe-only warning. There is no provider or new frozen theorem to compare using `type_of%`, and no proposed seal body.

Other mechanical checks:

```text
git diff inp...HEAD -- KAM/Frozen manifest KAM.lean README.md
(no output; exit 0)
git diff inp...HEAD --check
(no output; exit 0)
rg -n '(sorry|admit|axiom|unsafe|opaque|set_option|EuclideanSpace)' KAM/Iso/RestrictedHam.lean
(no output; exit 1 = no matches)
```

A recursive project-import traversal found 48 modules with zero provider/frozen-theorem import edges. The source has one `def`, seven public theorems, thirteen private theorems, 286 total lines, a copyright header, `module`, public imports, module docstring and an exposed public noncomputable section. No resource override occurs. No new declaration contains a forbidden proof escape. Frozen source/ABI validation passed as above.

Kernel replay (one invocation, exit **0**, complete output):

```text
LEAN_NUM_THREADS=1 nice -n 5 lake env leanchecker --verbose KAM.Iso.RestrictedHam
replaying KAM.Iso.RestrictedHam
```

This replays the module containing every new lemma, including all private derivative and rotation proofs. There is no provider module in I-3 to add to this invocation.

Final snapshot check: `inp` advanced concurrently to `06a8029e61b8d65d7a7b5c332c18bde68cad2ee6` (generated-root update). Re-ran `git diff inp...HEAD --stat`, `--name-only`, the protected-path diff, and `--check`: the triple-dot comparison still contains only the same 286-line addition, protected paths remain empty, and diff whitespace checking exits 0. Its merge base is `6de19bf7888aa655e5683a0372f9e576908e67aa`. HEAD and the audited module's SHA-256 are unchanged. This concurrent ref advance did not change the audited worktree source.

All seven public theorems pass axiom closure; all eight public declarations are classified; zero EXCESS binders; kernel replay and targeted build pass; lint has only the permitted root discrepancy. The report is the only repository content written by the auditor. Temporary probe and replay-log files were removed after their evidence was recorded. No source, frozen file, manifest, generated root, or README was edited; no errata ledger change was made.

**Closeout: PASS WITH NOTES for I-3 as an infrastructure package. No frozen-anchor closure is claimed.**
