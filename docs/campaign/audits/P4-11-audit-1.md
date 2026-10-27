# P4-11 independent audit 1

Overall verdict: **PASS**.

Audited branch `k/p4-11` at `ccaa719b54ee3dcbda8fedb92d8f149f87b1db9b`, against local main
`62ff935f779046e7c983bbb7df0cd5ed67889c31`. The handoff names the earlier prover commit 5f931ac;
this audit concerns the actual merged checkout. Acceptance is for the conditional P4-11 package, not
existence of GValid, sealing of HEAD, or verification against external source PDFs.

Read AGENTS.md, docs/PLAN.md, docs/DECISIONS.md, AUDIT-PACKAGE.md, P4-11.md, its common briefs,
the supplied handoff, the binding Part 4 design and its independent audit. Compared the branch with
`git diff main...HEAD`, the contracts in docs/graph/K/DEPGRAPH.md:12421–12759, and
blueprint/parts/p4-measure.tex:1102–1186.

## Node inventory

Declaration names below are in `KAM.Head`; locations refer to the audited checkout.

| Node | Lean declaration / coverage | Verdict | Reason |
|---|---|---|---|
| bp:p4:good-actions (claim) | `good_actions`, GoodActions.lean:121 | PASS | Frequency membership, inverse identity, and equality under real inclusion all retained. |
| bp:p4:map-lipschitz | `map_lipschitz`, GoodActions.lean:303 | PASS | Disjointness, global size, and two-point 1/2 bound on the exact product carrier. |
| bp:p4:main-measure | `main_measure`, MainMeasure.lean:139 | PASS | Exact fundamental domain, frozen kamCover, eta0, Cmeas and nonempty premise. |
| step:p4:ml-size | `disjoint_goodActions_layerSet`, `norm_disp_le`, GoodActions.lean:147,156 | PASS | 2γ > γ separates sets; normalize supplies size on good actions; indicator is zero elsewhere. |
| step:p4:ml-good | `disp_sub_le_good_good`, applied inside `map_lipschitz`, GoodActions.lean:179,294,310 | PASS | Angle MVT plus lip and frequency Lipschitz bound; s6 and γ ≤ 1 give 1/4. |
| step:p4:ml-mixed | `disp_sub_le_mixed`, GoodActions.lean:251; boundary/boundary case in `map_lipschitz_of_lip`:299 | PASS | infDist triangle bound gives γ ≤ distance; s7 gives eta0 ≤ γ/2. Boundary/boundary difference is zero. |
| step:p4:mm-extension | `measure_diff_le_of_displacement`, MainMeasure.lean:61,74–83 | PASS | Clamped mcshane_prod supplies agreement, global 1/2 Lipschitz and size; lipeo_half supplies complement-surjectivity and 3/2 bound. |
| step:p4:mm-tori | `main_measure` local hcover, MainMeasure.lean:154; transfer in `measure_diff_le_of_displacement`:97–100 | PASS | real_torus gives membership; z + disp is the real torus and the extension agrees on good actions. |
| step:p4:mm-complement | `measure_diff_le_of_displacement` local hsub, MainMeasure.lean:86–108 | PASS | Boundary split, preimage outside Z, exclusion of A, and angle-preimage bound in Q are proved. |
| step:p4:mm-bad | `main_measure` locals hY, hBad, hBZ, hZA, MainMeasure.lean:163–182 | PASS | Boundary estimate at 2γ, G3 through preimage_measure, and both bad-set inclusions. |
| step:p4:mm-count | `main_measure`, `measure_diff_le_of_displacement`, `volume_cubeHalf`, `measure_count_eq`, MainMeasure.lean:48,110–117,127,183–204 | PASS | Product outer measure, image estimate in dimension 2n, union bound and exact arithmetic. |

## Statement, definition and hypothesis checks

All three principal signatures (text between theorem name and `:=`) are byte-identical to Appendix A
§§16–17. An independent Lean probe also applied each theorem to its signature copied from the design;
all three examples elaborated. Binder order, Data/Pert/GValid/SA, all quantifiers and conjunctions agree.
`main_measure` retains the unused `hne : B.Nonempty`, as required by design clarification F1.

Data and Pert contain the standing HEAD premises. Layer B CB is the original boundary-layer inequality
for every positive width. GValid is the explicitly permitted source-result interface at fixed constants.
No additional premise was inserted into the three main statements. The global size statement for the
total indicator is the stronger statement already specified by design departure P17.

Cmeas is exactly `2 * CBplus CB + (9 / 2)^n * (2 * CBplus CB + Lplus Lh^n * max gc.C3 0)`;
it depends on n, Lh, CB and gc.C3, never on f, ε or γ. The norm is the max norm on
`(Fin n → ℝ) × (Fin n → ℝ)`. The measure is product Lebesgue volume. The cube
Q = `[-1/2,3/2]^n` has volume `2^n`, and `(3/2)^(2*n) * 2^n = (9/2)^n` is explicitly proved.
The fundamental domain is exactly `[0,1)^n × B`; the conclusion uses the frozen kamCover unchanged.
Product outer-measure identities, monotonicity and subadditivity add no measurability premise for the cover.

There are **no new def, abbrev or structure declarations** in either package module. The local sets S
and Q are the intended extension carrier and angle cube. Consumed definitions classify as follows:

| Definition | Classification / whole-carrier behavior |
|---|---|
| `layerSet`, Defs.lean:318 | Literal infDist sublevel set on all real actions. For positive γ it includes Bᶜ, since distance there is zero. |
| `goodActions`, Defs.lean:322 | Exact intersection of B, distance ≥ 2γ, and the Diophantine frequency condition. |
| `disp`, Defs.lean:328 | Total indicator: torus displacement on good actions and zero everywhere else. The extra zero extension is explicit and harmless. |
| `Cmeas`, Defs.lean:335 | Exact scalar formula with CBplus, Lplus and max C3 0; no choice or fallback. |

The pre-existing invFreq and selected tori are total choice constructions. On the nonzero branch of disp,
good_actions establishes frequency membership and the inverse identity; normalize establishes the torus
properties. Elsewhere disp is zero. No result exploits arbitrary inverse/torus values outside their
intended carrier. Data includes n ≥ 2; no zero-dimensional shortcut occurs.

`disp_sub_le_good_good` and `map_lipschitz_of_lip` are distinctly named conditional helpers.
Their hlip premise is supplied by `lip hD hP hgc hSA` at GoodActions.lean:310. The abstract measure
helper's displacement and cover premises are all proved inside main_measure before its application at
MainMeasure.lean:161. These helpers do not replace source results by unpaid hypotheses.
The real angle derivative bound is proved by realDisp_fderiv_le and realDisp_lipschitz using Cauchy
and the MVT, rather than assumed; it reproduces the rt-small estimate used by ml-good.

## GValid and provider boundary

The only direct G-result projection in these modules is MainMeasure.lean:168:
`preimage_measure hD hgc.g3 γ hγ`. No direct G1 or G2 invocation occurs here. The frequency comparison
uses lip, whose direct invocations are g1b at Lip.lean:253 and g2 at Lip.lean:329. Normalization and
real_torus also legitimately inherit the first G1 application, g1a at Apply.lean:88.
Thus “only g3” describes direct P4-11 use, not absence of inherited G1 dependence.

No provider or frozen theorem is imported directly or transitively: a recursive walk of local KAM
imports returned `Transitive provider/frozen-theorem imports: []`. MainMeasure's frozen import is the
permitted definition FundamentalDomain. The results remain conditional on GValid; they do not prove it.

Provider exact-type probe: **not applicable**, because P4-11 is not a provider package. The independent
three design-signature examples all passed.

## Hygiene and validation

Lean checks ran sequentially, at default resource settings.

`nice -n 5 lake build KAM.Head.GoodActions KAM.Head.MainMeasure` (exit 0):

```text
Build completed successfully (3243 jobs).
```

`sh scripts/lint_sources.sh` (exit 0):

```text
check_lean_modules: PASS (285 Lean files, 0 comparator configurations)
FROZEN-ANCHOR GUARD OK
ABI HASHES OK (144 frozen declarations)
```

`git diff main...HEAD -- KAM/Frozen manifest` (exit 0): no output.
`git diff --check main...HEAD` (exit 0): no output.

`wc -l KAM/Head/GoodActions.lean KAM/Head/MainMeasure.lean`:

```text
  316 KAM/Head/GoodActions.lean
  210 KAM/Head/MainMeasure.lean
  526 total
```

`rg -n '\b(sorry|admit|axiom|unsafe|opaque|EuclideanSpace)\b|set_option' KAM/Head/GoodActions.lean KAM/Head/MainMeasure.lean`
returned no output (exit 1, meaning no matches). Both files have copyright headers, module declarations,
appropriate public imports, module docstrings and exposed public sections. The only other tracked branch
change is KAM.lean's two generated imports; the generator check included in lint passes.

`nice -n 5 lake env lean .lake/abi-scratch/P411Audit.lean` (exit 0) checked the three design-signature
examples and printed axioms for **every theorem** in the two modules. Exact output:

```text
'KAM.Head.realDisp_fderiv_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.realDisp_lipschitz' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.disp_of_mem_good' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.disp_of_notMem_good' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.good_actions' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.eta0_nonneg' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.disjoint_goodActions_layerSet' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.norm_disp_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.realDisp_const_eq' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.disp_sub_le_good_good' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.disp_sub_le_mixed' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.map_lipschitz_of_lip' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.map_lipschitz' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.volume_cubeHalf' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.measure_diff_le_of_displacement' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.measure_count_eq' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.main_measure' depends on axioms: [propext, Classical.choice, Quot.sound]
```

No other probe diagnostic occurred. The scratch probe was deleted after checking.

## Findings and limits

No blocking, major or minor correctness finding; no proposed proof or signature fix is required.
The eight focused steps are covered by the declarations and local proofs named in the table, consistent
with the brief's permission to point to a declaration that covers a step. No conclusion was bypassed.

No suspected pinned-source erratum was identified, and no external source PDF was checked. No new
mathematical deviation from the binding design was found or introduced. This report is the auditor's
only repository edit. No state-changing git operation, frozen edit, library-wide build or kernel replay
was performed. Conditional package acceptance does not close the upstream G1/G2 or HEAD proof obligations.
