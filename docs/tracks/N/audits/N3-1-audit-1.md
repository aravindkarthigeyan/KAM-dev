# N3-1 Core: independent package audit 1

**Verdict: PASS.** All 16 designed declarations match binding Appendix A sections A/B: 12 theorem signatures, three definition bodies, and the five-field `UniformData` structure. Their proofs and definitions match the assigned blueprint contracts. Targeted build, independent elaborated-type checks, all-public-theorem axiom checks, and the single requested two-module kernel replay passed. Lint passes under the brief's explicit generated-root exception.

No provider or frozen anchor belongs to this package. Provider equality and prospective seal-body checks are therefore N/A by the user's instruction. This receipt certifies N3-1 only; it does not certify ODE existence, uniqueness, maximality, continuation, Hamiltonian specializations, or any frozen theorem.

## Scope and pinned inputs

- Worktree `/root/code/KAM-inp-n3core`, branch `inp-n3core`, HEAD `f7bf79f2cb8d52693686f33a80971fe6f4ce743d` throughout the audit.
- Exact requested comparison: `git diff ac01a8a^1...f7bf79f`; `ac01a8a^1` resolves to `4279fb7bd5b32d0cf5c548d4b93370cd02c0e6fe`.
- That diff contains only two new files: `KAM/ODE/Basic.lean` (126 lines) and `KAM/ODE/Lipschitz.lean` (80 lines).
- Read the complete package brief, AGENTS, PLAN, current decisions, relevant track-N conventions, the binding design and its N3-1 proof/ownership/deviation sections, Appendix A sections A/B, and blueprint-N Part 3's solution/symmetry/Lipschitz/uniform-data statements and proofs. Used the statement-audit method; no prior prover receipt was substituted for a check.
- Audited file hashes:

| Input | SHA-256 |
|---|---|
| `KAM/ODE/Basic.lean` | `13db29f548ae82d220360578a408ab147a6d1bc666fac9df881491019260090e` |
| `KAM/ODE/Lipschitz.lean` | `e9182137aed27eba5bb875bb8361c3d57011542503639bc1e9253694cc137a04` |
| `docs/tracks/N/design/PART3-LEAN-DESIGN.md` | `771846a22aad4b598a41881dafb191fc005de7bdbfd4cf1af5145c52508a8b7c` |
| `blueprint-N/parts/p3-hamiltonian-ode.tex` | `ae9ea3c57b401be389cd9a7e54d9508de50abe33bdc24f5d49a16fffcd43a17d` |

Permission envelope: read-only package inspection, targeted build and checks, temporary probes/log under `.lake/abi-scratch/`, and this one report in the main `inp` worktree. No source, design, blueprint, generated file, frozen file, manifest or git state was edited. No agent delegation or network lookup was needed.

## Declaration-by-declaration signature and blueprint inventory

All names below are prefixed `KAM.ODE.`. “Exact” means both the complete source signature (including names, order, explicit/implicit/instance binders and conclusion) matches Appendix A after comment/whitespace normalization and the independently copied signature elaborates against the implementation. Complete elaborated theorem types also compare by literal `rfl` at a common universe level. Definitions and structure fields match their complete design bodies, not merely their codomains.

| Blueprint node / role | Declaration, file and line | Signature/body | Verdict and reason |
|---|---|---|---|
| `bpN:p3:gen-sol` | `IsSolutionIn`, Basic:41 | Exact A | PASS: membership and ordinary two-sided derivative at every time in J. |
| `gen-sol`, raw derivative helper | `isSolutionIn_univ_iff`, Basic:45 | Exact A | PASS: removes only trivial univ membership. |
| `gen-sol#consequences` (i) | `IsSolutionIn.mono`, Basic:50 | Exact A | PASS: restricts times by J′⊆J. |
| `gen-sol#consequences` (ii) | `IsSolutionIn.continuousOn`, Basic:55 | Exact A | PASS: continuity follows from each ordinary derivative. |
| `gen-sol#consequences` (iii) | `isSolutionIn_congr_of_isOpen`, Basic:60 | Exact A | PASS: equality on open J gives equality of germs and derivative transfer. |
| Designed gluing helper | `IsSolutionIn.union_of_isOpen`, Basic:72 | Exact A | PASS: arbitrary open sets, no unnecessary interval/connectedness premise. |
| `bpN:p3:gen-symmetry` (a) | `gen_symmetry_shift`, Basic:81 | Exact A | PASS: t+c preimage and shifted derivative have the correct direction. |
| `gen-symmetry` (b), solution | `gen_symmetry_neg`, Basic:88 | Exact A | PASS: reversal changes F to −F and J to the negation preimage; no C¹ premise. |
| `gen-symmetry` (b), regularity | `gen_symmetry_neg_contDiffOn`, Basic:96 | Exact A | PASS: every designed differentiability order, not just C¹. |
| `gen-symmetry` (c) | `gen_symmetry_translate`, Basic:101 | Exact A | PASS: uses precisely W+v=W and F(x+v)=F(x) on W. |
| `gen-symmetry`, combined node | `gen_symmetry`, Basic:109 | Exact A | PASS: packages all clauses from the four preceding symmetry results. |
| Integer angle translation helper | `angleShift`, Basic:122 | Exact A | PASS: integer vector in first block and zero second block, including n=0. |
| `bpN:p3:gen-lip` | `gen_lip`, Lipschitz:35 | Exact B | PASS: nonnegative uniform bound and NNReal Lipschitz constant on the entire compact K. |
| `bpN:p3:gen-uniform` | `UniformData`, Lipschitz:49 | Exact B | PASS: all five defining source clauses, expanded below. |
| `gen-uniform-compact`, thickening | `closedThickening`, Lipschitz:57 | Exact B | PASS: literal existential union of closed norm balls. |
| `bpN:p3:gen-uniform-compact` | `gen_uniform_compact`, Lipschitz:60 | Exact B | PASS: one positive radius, uniform data, inclusion of the same thickening and its compactness. |

There are no extra declarations, project instances, auxiliary assumption packages or renamed substitutions in the diff. The source-to-design differences are the declared ones: the general normed-space statements extend the blueprint's finite-dimensional setting; compact thickening uses the exact designed `ProperSpace E` hypothesis; arbitrary smoothness order strengthens the C¹ negation clause; `UniformData` does not bundle C¹/openness into its definition (design §4 D3).

## Premise and constant audit

All common carrier/data binders (`E`, normed additive group and real normed-space instances, F, W, K, J, trajectories, time shifts, translation vectors and smoothness orders) are TYPING. `ProperSpace E` in `gen_uniform_compact` is the design's TYPING compactness carrier condition; it holds for the finite-dimensional blueprint consumer spaces. No instance carries a mathematical result to be proved.

The complete logical premise inventory, grouping only repeated occurrences of the same explicit premise, is:

| Input | Bin | Exact attachment / uses |
|---|---|---|
| `IsSolutionIn F W J z`, expanded as `∀t∈J, z t∈W ∧ HasDerivAt z (F(z t)) t` | SOURCE | Given-solution premise of restriction, continuity and symmetry, not assumed existence of a solution for arbitrary initial data. |
| `J′ ⊆ J` | SOURCE | Restriction consequence (i). |
| `IsOpen J` | SOURCE | Locality consequence (iii), where equality of germs is needed. |
| `EqOn y z J` | SOURCE | Same local representative on the open time set. |
| `IsSolutionIn F W J₁ y₁` | SOURCE | First given local solution for the designed gluing helper. |
| `IsSolutionIn F W J₂ y₂` | SOURCE | Second given local solution for gluing. |
| `IsOpen J₁` | SOURCE | First gluing neighborhood. |
| `IsOpen J₂` | SOURCE | Second gluing neighborhood. |
| `EqOn y y₁ J₁` | SOURCE | First representative agreement. |
| `EqOn y y₂ J₂` | SOURCE | Second representative agreement. |
| `ContDiffOn ℝ m F W` | SOURCE | Only the separate negation-regularity clause assumes smoothness. |
| `(fun x => x+v) '' W = W` | SOURCE | Space-translation domain invariance. |
| `∀x∈W, F(x+v)=F x` | SOURCE | Space-translation field invariance. |
| `IsOpen W` | SOURCE | Domain premise of both compact estimates. |
| `ContDiffOn ℝ 1 F W` | SOURCE | Field premise of both compact estimates. |
| `IsCompact K` | SOURCE | Compact set premise of both compact estimates. |
| `K ⊆ W` | SOURCE | Domain attachment of the same K. |

No STANDING, RULED or EXCESS logical input occurs. In particular, neither estimate assumes a bound, a Lipschitz constant, a thickening radius, uniform data, or a convex hull lying in W. Their constants are existential conclusions after F,W,K and the four source premises. `gen_uniform_compact` chooses δ from K⊆W before extracting M,L on that same δ-thickening, and supplies all five `UniformData` fields. No constant is selected after a queried center x or ball point y.

## Definition classification

| Object | Whole-carrier classification |
|---|---|
| `IsSolutionIn` | Literal source predicate: actual membership in W and two-sided `HasDerivAt`, even at endpoints of J. No smoothness/uniqueness/existence result is hidden in it. Arbitrary time sets are allowed. |
| `angleShift` | Literal `(k,0)` with coordinatewise integer-to-real coercion; no rounding, period rescaling, or selected representative. |
| `UniformData` | Literal predicate structure for fixed F,W,Φ,δ,M,L. It is a source definition, not a conclusion-shaped assumption bundle. See the exact fields below. |
| `closedThickening` | Literal `{y | ∃x∈K, ‖y−x‖≤δ}` on all K and real δ. Empty K gives the empty set for every δ; negative δ also gives no witnesses. No infDist-of-empty fallback or valid-locus-only replacement. |

`UniformData` expands exactly to:

| Field | Meaning |
|---|---|
| `delta_pos` | `0<δ` |
| `M_nonneg` | `0≤M` |
| `closedBall_subset` | `∀x∈Φ, closedBall x δ ⊆ W` |
| `norm_le` | `∀x∈Φ, ∀y∈closedBall x δ, ‖F y‖≤M` |
| `lipschitz` | `∀x∈Φ, LipschitzOnWith L F (closedBall x δ)` |

Nonnegativity of L is supplied by its `ℝ≥0` carrier. No omitted smoothness is silently recovered from these fields: openness and C¹ are explicit premises wherever the two audited theorems need them. On the empty Φ the three universal fields are properly vacuous, while the two sign fields remain required.

For all four literal objects: BODY_MATCH OK; PUBLIC_CARRIER OK; WELL_DEFINEDNESS N/A_LITERAL; CHARACTERIZATION N/A_LITERAL; CHOICE_INDEPENDENCE N/A; DEFINITION_VERDICT PASS. All definitions needing unfolding are in an `@[expose] public noncomputable section`. No characterization-defined object or arbitrary witness definition was introduced.

## Refute-first proof inspection

1. **Locality and gluing:** checked the orientation of the eventual equality and replacement of F(y t) by F(z t). The open-time premise supplies an actual neighborhood, so the proof does not transfer a two-sided derivative merely from equality on a closed interval. The union proof transfers each original derivative on the corresponding open neighborhood; no compatibility premise is missing because both representatives agree there with the same y.
2. **Time signs:** t↦z(t+c) is evaluated precisely when t+c∈J. Reversal composes with t↦−t, giving derivative −F(z(−t)), not F(z(−t)). It does not import C¹ from the separate smoothness lemma. Thus the arbitrary-F/whole-space uses anticipated by the design are legitimate.
3. **Space translation:** W+v=W provides translated membership, and F invariance supplies the actual translated equation. No invariance off W is used.
4. **Compact Lipschitz bound:** C¹ on open W gives a locally Lipschitz germ at each x∈W. The proof restricts this local property to K and uses Mathlib's compact local-to-global Lipschitz theorem; it does not assume K or its convex hull is convex. The norm bound is obtained from continuity on the same compact K and replaced by `max C 0` to ensure nonnegativity, including empty K.
5. **Same-radius uniform data:** Mathlib yields δ>0 with `cthickening δ K⊆W`. Only with compact K and δ≥0 does the proof identify that object with the explicit existential `closedThickening K δ`. Properness gives compactness. `gen_lip` is then applied to this compact thickening itself, and every center ball is included using its own center as witness. This proves the uniform norm and Lipschitz bounds at every point of every closed ball, including boundary points. No radius loss, closure substitution, or unexplained off-domain estimate occurs.
6. **Empty-set attack:** inspected Mathlib `IsCompact.cthickening_eq_biUnion_closedBall`, which explicitly handles empty K using `cthickening_empty`; it does not use `infDist(·,∅)=0`. An independent Lean example also proves `closedThickening (∅ : Set E) δ=∅`. No nonemptiness assumption is missing.

Relevant Mathlib source checks: `Topology/Algebra/MetricSpace/Lipschitz.lean:59` (`LocallyLipschitzOn.exists_lipschitzOnWith_of_compact`); `Topology/MetricSpace/Thickening.lean:283` (compact thickening with properness), `:426` (positive radius inside an open superset), and `:552` (compact-set union-of-closed-balls identity). Their hypotheses match the applications exactly.

## Mechanical checks and exact output

All Lean/build/lint invocations below were serialized by this auditor and used niceness 5. No heartbeat, recursion-depth or synthesis-budget override was used. No library clean, update, cache download or edit under `.lake/packages` occurred.

### Build

```sh
LEAN_NUM_THREADS=2 /mnt/HC_Volume_106379410/orchestrator-tools/inp_lake_build.sh /root/code/KAM-inp-n3core KAM.ODE.Basic KAM.ODE.Lipschitz
```

Exit 0. Exact output:

```text
[inp-gate] slot 1 acquired 21:49:42 for KAM.ODE.Basic KAM.ODE.Lipschitz
Build completed successfully (2144 jobs).
```

This was a targeted warm build of the two modules' dependency graph, not a clean library rebuild.

### Independent signature and definition probes

The source comparison extracted Appendix A from `section Basic` through the end of `section Lipschitz`, stripped comments, and compared each theorem's complete header up to `:=`, each definition's complete command including its body, and the structure declaration including every field. Declaration inventories agree exactly; all 16 comparisons passed.

Command:

```sh
LEAN_NUM_THREADS=2 nice -n 5 lake env lean .lake/abi-scratch/N3Audit.lean
```

Final exit **0**. For each of the 12 design theorem signatures the scratch file copied that exact signature under `N3Audit.expected_i`, used only the corresponding production theorem applied to its explicit binders as proof, and then checked:

```lean
example : (type_of% @expected_i.{u}) = (type_of% @KAM.ODE.<original>.{u}) := rfl
```

It also proved the three literal definition equations by `rfl` and the empty-thickening equation by unfolding. The initial probe's type-equality lines accidentally instantiated the two sides at independent universe levels; that audit-harness error was corrected by fixing the same `u` on both sides. No production signature or proof was altered to make the check pass. No design `sorry` declaration was compiled or imported.

The successful probe ran `#print axioms` on every public theorem. Exact output:

```text
'KAM.ODE.isSolutionIn_univ_iff' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.ODE.IsSolutionIn.mono' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.ODE.IsSolutionIn.continuousOn' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.ODE.isSolutionIn_congr_of_isOpen' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.ODE.IsSolutionIn.union_of_isOpen' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.ODE.gen_symmetry_shift' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.ODE.gen_symmetry_neg' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.ODE.gen_symmetry_neg_contDiffOn' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.ODE.gen_symmetry_translate' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.ODE.gen_symmetry' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.ODE.gen_lip' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.ODE.gen_uniform_compact' depends on axioms: [propext, Classical.choice, Quot.sound]
```

### Kernel replay: one invocation

```sh
LEAN_NUM_THREADS=2 nice -n 5 lake env leanchecker --verbose KAM.ODE.Basic KAM.ODE.Lipschitz
```

Exit **0**, one run, exact output:

```text
replaying KAM.ODE.Lipschitz
replaying KAM.ODE.Basic
```

### Lint, imports, size and protected paths

```sh
LEAN_NUM_THREADS=2 nice -n 5 sh scripts/lint_sources.sh
```

Exit **1**, with exactly the brief-permitted generated-root discrepancy and no other failure:

```text
KAM.lean is out of date; run scripts/gen_root_imports.py
check_lean_modules: PASS (236 Lean files, 0 comparator configurations)
FROZEN-ANCHOR GUARD OK
ABI HASHES OK (144 frozen declarations)
```

**Lint PASS under the specified exception.** No generated root was changed. Both files have copyright, `module`, public interface imports, module docstring and public section. File sizes are 126 and 80 lines. Static scans found no `sorry`, `admit`, `axiom`, `unsafe`, `opaque`, `set_option` or `EuclideanSpace`. Basic imports only Mathlib; Lipschitz's only project import is Basic. There are no providers, frozen theorem imports or frozen definition dependencies in these modules.

`git diff ac01a8a^1...f7bf79f -- KAM/Frozen manifest KAM.lean README.md`: exit 0, empty output. `git diff --check ac01a8a^1...f7bf79f`: exit 0, empty output. Package worktree status was clean. Audited HEAD and both production-file hashes remained unchanged through validation.

## Errata, deviations and closeout

No suspected defect in the assigned blueprint contracts, binding A/B signatures or implementation was found. No pinned-paper result is imported by this package; it proves elementary calculus/topology consequences through Mathlib. Existing design notes about other Part-3 nodes are outside this package and are neither closed nor promoted by this audit. The only blueprint-to-design generalizations are the explicit ones recorded above, implemented exactly without additional prover deviations.

All required checks are complete. The temporary signature probe and replay log were removed after recording their evidence here. This report is the only durable artifact created; no source repair, git operation or sealing action was performed.
