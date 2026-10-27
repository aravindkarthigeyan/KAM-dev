# Independent audit of P-G3

Overall verdict: **PASS WITH NOTES**.

Audited branch `k/g3`, commit `49d32df9412af6e5fd7a18cb5dcc60769d60cff8`, against `main...HEAD` on 2026-10-27. No blocking or major finding. The provider has the frozen theorem's exact type, builds, has no extra axioms, and proves the requested measure estimate from the lattice and slab predecessors. This audit does not seal the frozen anchor, whose body remains `sorry`.

Read: `AGENTS.md`, `docs/PLAN.md`, `docs/DECISIONS.md`, `docs/campaign/briefs/AUDIT-PACKAGE.md`, `PROVER-COMMON.md`, `P-G3.md`, and `docs/campaign/audits/P-G3-handoff.md`. Compared the graph contracts in `docs/graph/K/DEPGRAPH.md:703` and `:9415–9735` with `blueprint/parts/p0-conventions.tex:157–162`, `blueprint/parts/p4-measure.tex:42–135`, the frozen theorem and definition, and all three package modules. No repository source was edited. Only this report was added; the temporary probe was deleted.

## Node-by-node statement and proof review

In this table, `M` abbreviates `KAM.Measure` and `P` abbreviates `KAM.Provider`. File line references refer to the audited source. PASS WITH NOTES on an intermediate step means the proof covers the step across the identified declarations/internal calculations; the handoff's single named export is not a verbatim standalone statement of the whole step.

| Node | Lean declaration and locator | Verdict | Reason |
| --- | --- | --- | --- |
| `bp:p4:lattice-count` | `M.lattice_count`, `Lattice.lean:109`; `M.card_l1Sphere_le`, `:124` | PASS | Exactly `n,m ≥ 1`, both inequalities, both constants and natural exponents. Integer absolute values define the same lattice shell as the real-cast norm used later. `mem_l1Sphere` proves finiteness/representation, so `Set.ncard` cannot silently return a junk zero for an infinite set. |
| `step:p4:count-projection` | `M.card_l1Sphere_succ_le`, `Lattice.lean:81`; `M.card_fibre_le_two`, `:55`; `M.lattice_count`, `:109` | PASS WITH NOTES | Projection is `Fin.init`. The proof establishes the box image and its cardinality, injects each fibre into two possible last coordinates, then counts. The successor formulation includes all positive dimensions and even allows radius zero. The final `2m+1 ≤ 3m` calculation is in `lattice_count`, not in the handoff's first export. |
| `bp:p4:lattice-sum` | `M.lattice_sum`, `Lattice.lean:254` | PASS | Same `n ≥ 1`, `τ > n−1`, nonzero lattice carrier and exponent `−τ−1`; proves summability as well as the exact bound `2·3^(n−1)·(τ+2−n)/(τ+1−n)`. No dependence on frequencies or slab parameters. |
| `step:p4:latsum-shells` | `M.sum_finset_le`, `Lattice.lean:224`, with `M.sum_sphere_le`, `:194` | PASS WITH NOTES | Finite shell decomposition via `sum_fiberwise_of_maps_to`; each shell is bounded by `2·3^(n−1)·m^(−p)`. The intermediate shell-series comparison appears inside the proof at lines 234–244; the exported conclusion already incorporates integral comparison. `lattice_sum` then passes from arbitrary finite sums to the infinite series. See finding 2 concerning the handoff mapping. |
| `step:p4:latsum-integral` | `M.tsum_rpow_neg_le`, `Lattice.lean:178`, with `M.sum_range_rpow_neg_le`, `:134` | PASS | For every real `p > 1`, convergence and sum at most `p/(p−1)`. The natural-indexed zero term vanishes because `−p ≠ 0`; this is the same series as the positive-indexed blueprint series. Uses decreasing-function integral comparison, with no assumed analytic estimate. |
| `bp:p4:slab` | `M.slab_measure_le`, `Slab.lean:150` | PASS | Same positive dimension, `R > 0`, `a > 0`, nonzero integer vector, closed cube, strict slab inequality, Lebesgue volume and exact constant `2n(2R)^(n−1)a/|k|₁`. |
| `step:p4:slab-coordinate` | `M.exists_dominant_coord`, `Slab.lean:132` | PASS | Exactly a maximal absolute coordinate, at least one, with sum at most `n` times that coordinate. Nonzero `k` itself supplies an index, so no hidden nonempty-dimension assumption is introduced. |
| `step:p4:slab-fubini` | `M.volume_slab_le_of_coord`, `Slab.lean:99`; `M.volume_abs_affine_lt_le`, `:55`; `M.slab_measure_le`, `:150` | PASS WITH NOTES | The section estimate and measure-preserving coordinate splitting give `(2R)^(n−1)·2a/|kᵢ|`. The coordinate theorem works for any nonzero coordinate and arbitrary real `R,a`, a strengthening of this part of the step. The final dominant-coordinate comparison is at `Slab.lean:155–172`. Measurability is proved as an intersection, correctly handling the closed cube; see finding 1. |
| `step:p4:g3-n0` | `P.isDiophantine_of_dim_zero`, provider `:37`; `P.volume_not_diophantine_le`, `:136–142` | PASS | Vacuity for all real `α,τ` and all zero-dimensional frequencies; assembly explicitly makes the exceptional set empty and chooses `C=0`. No positive-dimension convention is imported from other KAM results. |
| `step:p4:g3-cube` | `P.exists_cube_superset`, provider `:43`; `P.volume_not_diophantine_le`, `:143–145` | PASS WITH NOTES | Boundedness alone gives a positive cube radius for arbitrary `Ω`, including empty/nonmeasurable sets. The explicit constant is chosen in assembly and depends only on `n,τ,R`, before `α`. The named cube lemma covers the geometric construction; assembly covers the constant. |
| `step:p4:g3-union` | `P.not_diophantine_subset_iUnion`, provider `:54` | PASS | Literal negation of frozen `IsDiophantine`; same nonzero integer indices and strict small-divisor inequality. Division by `|k|₁^τ` equals the blueprint's negative power on these indices. This inclusion actually needs neither `α > 0` nor positive dimension. |
| `step:p4:g3-sum` | `P.volume_not_diophantine_le_of_cube`, provider `:93`, with `P.volume_slab_term_le`, `:68` | PASS | Same explicit constant and assumptions; monotonicity, countable subadditivity, slab estimate and summable lattice bound. Positivity of every nonzero lattice norm is proved before real-power manipulations. `ofReal_tsum_of_nonneg` is used with proved summability/nonnegativity. No measurability assumption on `Ω` is added. |
| `bp:p0:g3` | `P.volume_not_diophantine_le`, provider `:132` | PASS | Exactly the frozen type, including all binders and their order: arbitrary natural `n`, real `τ > n−1`, bounded `Ω`, then `∃ C : ℝ, ∀ α : ℝ, 0 < α → …`. Independent type probe passed. |

No extra standing convention was needed. In particular, `n ≥ 2` is not assumed. All carriers are `Fin n → ℤ` or `Fin n → ℝ`; the norm in the small-divisor and summation formulas is explicitly the sum of absolute coordinates. The max norm is used only to obtain a bounding cube from boundedness. The target is an outer-measure inequality in `ENNReal`, with the frozen `ENNReal.ofReal (C * α)` unchanged.

## Definitions and hypotheses

There are exactly three new global definitions, and no new `abbrev` or `structure`:

| Definition | Classification on its whole carrier |
| --- | --- |
| `M.l1Sphere (n m : ℕ)`, `Lattice.lean:42` | Intended finite lattice sphere, represented by a filtered finite box. `mem_l1Sphere` proves equivalence with `∑ |kᵢ| = m` for all `n,m`, including zero. No truncation changes the object. |
| `M.cube (n : ℕ) (R : ℝ)`, `Slab.lean:32` | Literal product of closed intervals `[-R,R]`. For negative radius in positive dimension it is empty; for dimension zero it is the singleton function space. These are the usual set-theoretic meanings, not fallbacks. |
| `M.slab (R a : ℝ) (k : Fin n → ℤ)`, `Slab.lean:35` | Literal intersection of that cube with the strict affine slab. Correct also for zero `k`, nonpositive `a`, or nonpositive radius. No theorem exploits a replacement definition outside its intended hypotheses. |

Local `set` abbreviations are algebraic names, not additional bundled assumptions. The shell map uses `Int.toNat` only on sums of absolute integers, with nonnegativity proved at `Lattice.lean:240`. Real powers at zero occur only in the auxiliary full-lattice/natural series; the negative exponent is proved nonzero and the zero term is proved to vanish. The final series is explicitly over nonzero vectors.

All theorem premises were reviewed. Conditional helpers assume elementary membership, nonzero-coordinate, finite-shell, or containing-cube data; those are proved at their call sites. No premise, instance or structure field assumes a desired count, integral estimate, summability, section bound, or target measure inequality.

The provider imports only the frozen **definition** `IsDiophantine`, the two package predecessors, and Mathlib. Those predecessors import Mathlib only. It imports no frozen theorem or other provider, directly or through these predecessors. Its proof actually consumes `lattice_sum`, `slab_measure_le`, the cube lemma, the union inclusion and the dimension-zero lemma. The only source import of this provider elsewhere is its own frozen anchor. The two generated root additions import the ordinary measure modules; no provider/DRAFT_SORRY anchor was added to the root.

## Independent checks and exact outputs

Commands ran serially with respect to Lean processes; no heartbeat, recursion-depth or synthesis overrides were used. The targeted build used the existing worktree build snapshot; there was no clean, cache replacement, or whole-library rebuild.

`git rev-parse HEAD`:

```text
49d32df9412af6e5fd7a18cb5dcc60769d60cff8
```

`git diff --stat main...HEAD`:

```text
 KAM.lean                                 |   2 +
 KAM/Measure/Lattice.lean                 | 276 +++++++++++++++++++++++++++++++
 KAM/Measure/Slab.lean                    | 176 ++++++++++++++++++++
 KAM/Provider/VolumeNotDiophantineLe.lean | 134 +++++++++++++++
 4 files changed, 588 insertions(+)
```

`git diff main...HEAD -- KAM/Frozen manifest`, `git diff -- KAM/Measure/Lattice.lean KAM/Measure/Slab.lean KAM/Provider/VolumeNotDiophantineLe.lean`, and `git diff --check main...HEAD`: each produced no output and exited 0. Thus the audited package files equal HEAD, frozen/manifest paths have no branch changes, and the branch diff passes whitespace checks.

`wc -l KAM/Measure/Lattice.lean KAM/Measure/Slab.lean KAM/Provider/VolumeNotDiophantineLe.lean`:

```text
  276 KAM/Measure/Lattice.lean
  176 KAM/Measure/Slab.lean
  149 KAM/Provider/VolumeNotDiophantineLe.lean
  601 total
```

`nice -n 5 lake build KAM.Provider.VolumeNotDiophantineLe` exited 0:

```text
Build completed successfully (2854 jobs).
```

`nice -n 5 sh scripts/lint_sources.sh` exited 0:

```text
check_lean_modules: PASS (177 Lean files, 0 comparator configurations)
FROZEN-ANCHOR GUARD OK
ABI HASHES OK (140 frozen declarations)
```

This includes module-system headers, file size, prohibited proof escapes/resource overrides, root generation consistency, frozen file guards and elaborated ABI checks. Manual inspection also confirmed copyright comments, `module`, imports, module docstrings and `@[expose] public section` in all three package files. No forbidden constructs occur in the package.

The temporary `.lake/abi-scratch/P-G3-audit-1.lean` began with:

```lean
import KAM.Frozen.Theorems.VolumeNotDiophantineLe
import KAM.Provider.VolumeNotDiophantineLe
example : type_of% @KAM.volume_not_diophantine_le := @KAM.Provider.volume_not_diophantine_le
```

It then contained `#print axioms` for all 26 package theorems, not merely the root. `nice -n 5 lake env lean .lake/abi-scratch/P-G3-audit-1.lean` exited 0. The exact-type example produced no diagnostics. Exact axiom output:

```text
'KAM.Measure.mem_l1Sphere' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Measure.card_fibre_le_two' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Measure.card_l1Sphere_succ_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Measure.lattice_count' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Measure.card_l1Sphere_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Measure.sum_range_rpow_neg_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Measure.tsum_rpow_neg_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Measure.sum_sphere_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Measure.sum_finset_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Measure.lattice_sum' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Measure.volume_cube' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Measure.measurableSet_cube' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Measure.measurableSet_slab' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Measure.volume_abs_affine_lt_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Measure.mem_section_iff' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Measure.mem_cube_of_insertNth_mem' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Measure.abs_affine_lt_of_insertNth_mem' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Measure.volume_slab_le_of_coord' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Measure.exists_dominant_coord' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Measure.slab_measure_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Provider.isDiophantine_of_dim_zero' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Provider.exists_cube_superset' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Provider.not_diophantine_subset_iUnion' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Provider.volume_slab_term_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Provider.volume_not_diophantine_le_of_cube' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Provider.volume_not_diophantine_le' depends on axioms: [propext, Classical.choice, Quot.sound]
```

In particular, no result depends on `sorryAx`, even though the type-comparison probe imports the unsealed frozen theorem. The probe uses only that theorem's type, not its proof.

## Findings, proposed fixes, and limits

1. **Minor — blueprint wording about openness.** `blueprint/parts/p4-measure.tex:96` says, “The slab is open, hence measurable.” The full slab without the cube is open; its intersection with the closed cube need not be. For example, `n=1`, `R=1`, `k=1`, `a=2` gives the set `[-1,1]`. Lean correctly proves measurability of the intersection at `Slab.lean:48–51` and uses it at `:106`. Proposed fix: say “The full slab is open; its intersection with the closed cube is measurable.” This is a blueprint prose correction, not a defect in the Lean statement or proof, and not an independently verified Pos01 erratum.

2. **Minor — handoff entries abbreviate multi-part proof coverage.** The handoff names `sum_finset_le` for the shell-comparison step, but its exported statement already gives the final `S(n,τ)` bound. The actual finite shell comparison is internal to `Lattice.lean:234–244`, followed by the integral comparison at `:247–249`; passage to the infinite lattice sum is at `:263–272`. Similarly, the constant for `g3-cube` is at provider `:143–145`, and the final dominant-coordinate estimate for `slab-fubini` is at `Slab.lean:155–172`. Proposed fix: expand the handoff mapping with those locators, or export the intermediate comparisons if a downstream consumer needs them. No missing mathematical step or weakened root result was found. The common brief permits pointing to a declaration that covers a proof step, so these internal calculations count as coverage; they are not presented here as verbatim exported step contracts.

The dimension-zero sentence at `p4-measure.tex:107`, “any C works,” is correct for the frozen `ENNReal.ofReal (C*α)` inequality, because its right side is always nonnegative. If read instead as an ordinary real-valued inequality `0 ≤ Cα`, it needs `C ≥ 0`. The provider avoids this interpretive issue by choosing `C=0`. This is a convention clarification, not a frozen-statement defect.

No suspected defect in a pinned external source was established: this audit compares the supplied blueprint and Lean package and does not independently recertify the Pos01 quotation against its PDF. No mathematical deviation was introduced by the auditor. Finite-sum passage in place of a standalone infinite shell identity and a measure-preserving coordinate equivalence for Fubini are faithful implementation choices.

Initial worktree status already contained a modified tracked `scripts/__pycache__/check_lean_modules.cpython-312.pyc` and untracked audit/brief material. These were not treated as prover changes or repaired. No state-changing git command was run. The ordinary lint can touch its Python cache; no deliberate source edit outside this report was made.
