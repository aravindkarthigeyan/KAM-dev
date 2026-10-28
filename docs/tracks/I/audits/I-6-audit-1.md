# Independent audit I-6, round 1

Audited worktree: `/root/code/KAM-inp-i6`. Report destination follows the explicit user instruction, overriding the generic brief's main-worktree destination. No production source was edited.

Compared `git diff inp...HEAD`: HEAD `16307bf49015c2ed7777e2af3677b2429774fa10`; `inp` `0805974335892d77db7eae97b4c19706050df578`. The entire diff is one added file, `KAM/Iso/ComplexDomain.lean`, 623 physical lines. The handoff's 616-line count is stale. KEP-9 is already in the comparison base. The pre-existing untracked handoff was preserved.

## Verdict and scope

**FAIL for complete implementation of `bpI:p7:complex-domain`**, because the selected radius is not certified for the blueprint's explicit ratio-variation bound (F1). **PASS for the exact design signature and its proof**, including compact extrema, complex holomorphy, real-point agreement and exclusion of the zero fallback. No false Lean theorem, forbidden axiom, hidden source premise, or kernel error was found.

There is **no frozen anchor or provider export delivered by this package**. Thus no anchor can be labelled seal-ready and provider/frozen-type and seal-body probes are not applicable. In particular this package does not close I-G1, I-HEAD, I-R3BP, or I-KEPLER. The frozen Track-I theorem statements and the track conventions were consulted for the boundary of this infrastructure work; they are unchanged.

Read authorities: AGENTS.md, docs/PLAN.md, docs/DECISIONS.md, `/root/code/KAM-inp/.drafts/briefs/inp-audit-package.md`, the local I-6 handoff, `blueprint-I/parts/p7-delaunay.tex:325–351`, and design §2.2, §7 row I-6, §7.1 and Appendix A. The standalone `.drafts/design/KeplerSignatures.lean` is unavailable at the checked main-worktree location; the tracked design appendix reproduces the signature and was used directly. All 12 prescribed definitions/structures are identical to that appendix modulo whitespace. Fresh Lean examples elaborate the appendix's two theorem signatures with the implemented proofs.

## Findings

### F1 — Blocking blueprint/design coverage gap at the selected radius

`blueprint-I/parts/p7-delaunay.tex:341` explicitly concludes

> $\abs{G^2/L^2-G'^2/L'^2}<\tau:=\min\{e_-^2/2,\ e_-\delta_E\}$.

The same sentence concludes membership of the radicand in the corresponding disk. These are quantitative conclusions at the lemma's chosen radius, not merely instructions for its proof.

`KAM/Iso/ComplexDomain.lean:284–289` correctly defines `GoodRadius` with the required tolerance, and `exists_radius` (L316–382) proves its existence. The auxiliary `point_facts` and subsequent branch proofs use that bound correctly. However, `exists_complexDomainData` (L594–603) forgets it when constructing `ComplexDomainData`. That predicate (L191–203) contains eccentricity closeness and the later geometric consequences, but no ratio bound, radicand disk bound, or `GoodRadius` field. `complexDelta` (L207–208) chooses from **this weaker predicate**, and `complex_domain_spec` (L609–617) returns only that predicate.

Consequently, the good radius obtained inside the existence proof cannot be identified with `complexDelta K`: an arbitrary classical witness of `∃ δ, ComplexDomainData K δ` is selected. A proof of `∃ δ, GoodRadius K δ` is not a proof of `GoodRadius K (complexDelta K)`. No theorem in the diff supplies the missing bound at that selected radius. This finding concerns omitted certification, not a claim that Lean has proved a false theorem or that the selected radius is provably bad.

The defect is inherited from `docs/tracks/P/design/KEPLER-LEAN-DESIGN.md:1577–1597`, whose description says **“The full output”** and **“exact factorization”** while its predicate omits the explicit quantitative blueprint clause. The implementation follows that design exactly; design-signature fidelity therefore passes, whereas full blueprint fidelity fails under audit criterion 2.

Concrete repair for the package owner: include the ratio bound in the predicate used by `complexDelta`, prove the expanded predicate using `exists_radius`, and expose its projection at `complexDelta K`. Alternatively obtain an explicit ruling that the omitted quantitative statement is intentionally outside the implemented node contract, and narrow the coverage claim. Changing an existential proof alone without changing the choice predicate does not fix this gap. No frozen-file change is needed.

### N1 — Periodicity is inherited but not exported for the Delaunay wrapper

`blueprint-I/parts/p7-delaunay.tex:343` states **“$2\pi$-periodic in $\ell$ and in $g$”**. Neither `ComplexDomainData` nor a new theorem states this for `delaunayC`. Unlike F1, the required underlying result already applies on the selected domain: `KAM.Kepler.orbitMapC_periodic` (`KAM/Kepler/OrbitComplex.lean:143–161`) plus the domain inclusion supplied by `complex_domain_spec` gives the wrapper result after coordinate rewriting. Record this as an omitted interface corollary; export it when claiming the full blueprint conclusion. The radicand square identity is also not a conjunct, but is already globally available through `ComplexDomainAux.sqrt_sq_eq`; an independent Lean probe verified its specialization to `eccC`.

### N2 — Local real-tube extension is sound

The original KEP-9 `orbitMapC_ofReal` only covers `|e| ≤ e₁`. Real points of the enlarged action neighborhood need not satisfy this. The new helpers L539–576 use actual tube membership and `|e| < 1` instead. The real anomaly solves the complex equation by coercion, lies in the invariant strip because its imaginary part is zero, and is identified by strip uniqueness. Algebra then gives the real orbit formula; positivity of `G/L` chooses the correct real square root. This is a valid stronger real-tube interface, not a new unproved premise or a circular appeal to the desired real Delaunay conclusion.

## Declaration-by-declaration review

All entries below are in `KAM/Iso/ComplexDomain.lean`. Node names abbreviate `bpI:p7:complex-domain` and `stepI:p7:cd-uc`, `stepI:p7:cd-branch`. Auxiliary lemmas refine proof steps rather than claiming independent blueprint results. The scope-limited `GoodRadius` premises are explicit conditional helper premises, not extra premises of `complex_domain_spec`.

| Node / step | Declaration and location | Verdict | Reason / note |
|---|---|---|---|
| `complex-domain` | `KAM.Iso.SafeAction` (L46) | PASS | standing compactness, nonemptiness and cone premises only. |
| `complex-domain` | `KAM.Iso.kEccMin` (L51) | PASS | literal compact-extremum formula; total-order fallback unused under SafeAction. |
| `complex-domain` | `KAM.Iso.kEccMax` (L52) | PASS | literal compact-extremum formula; total-order fallback unused under SafeAction. |
| `complex-domain` | `KAM.Iso.kLMin` (L53) | PASS | literal compact-extremum formula; total-order fallback unused under SafeAction. |
| `complex-domain` | `KAM.Iso.kGMin` (L54) | PASS | literal compact-extremum formula; total-order fallback unused under SafeAction. |
| `complex-domain` | `KAM.Iso.kRmin` (L55) | PASS | literal compact-extremum formula; total-order fallback unused under SafeAction. |
| `complex-domain` | `KAM.Iso.kRhoMax` (L56) | PASS | literal compact-extremum formula; total-order fallback unused under SafeAction. |
| `complex-domain` | `KAM.Iso.ComplexDomainAux.eccOf_pos_lt_one` (L64) | PASS | elementary bound, continuity, extremum or algebra lemma supporting the indicated proof step. |
| `complex-domain` | `KAM.Iso.ComplexDomainAux.eccOf_sq` (L75) | PASS | elementary bound, continuity, extremum or algebra lemma supporting the indicated proof step. |
| `complex-domain` | `KAM.Iso.ComplexDomainAux.continuousOn_eccFn` (L81) | PASS | elementary bound, continuity, extremum or algebra lemma supporting the indicated proof step. |
| `complex-domain` | `KAM.Iso.ComplexDomainAux.sInf_spec` (L89) | PASS | compact continuous image is nonempty, bounded, and contains its infimum. |
| `complex-domain` | `KAM.Iso.ComplexDomainAux.sSup_spec` (L96) | PASS | compact continuous image is nonempty, bounded, and contains its supremum. |
| `complex-domain` | `KAM.Iso.ComplexDomainAux.pos_x0` (L103) | PASS | elementary bound, continuity, extremum or algebra lemma supporting the indicated proof step. |
| `complex-domain` | `KAM.Iso.ComplexDomainAux.kEccMin_spec` (L106) | PASS | elementary bound, continuity, extremum or algebra lemma supporting the indicated proof step. |
| `complex-domain` | `KAM.Iso.ComplexDomainAux.kEccMax_spec` (L110) | PASS | elementary bound, continuity, extremum or algebra lemma supporting the indicated proof step. |
| `complex-domain` | `KAM.Iso.ComplexDomainAux.kLMin_spec` (L114) | PASS | elementary bound, continuity, extremum or algebra lemma supporting the indicated proof step. |
| `complex-domain` | `KAM.Iso.ComplexDomainAux.kGMin_spec` (L118) | PASS | elementary bound, continuity, extremum or algebra lemma supporting the indicated proof step. |
| `complex-domain` | `KAM.Iso.ComplexDomainAux.continuousOn_rminFn` (L122) | PASS | elementary bound, continuity, extremum or algebra lemma supporting the indicated proof step. |
| `complex-domain` | `KAM.Iso.ComplexDomainAux.continuousOn_rmaxFn` (L126) | PASS | elementary bound, continuity, extremum or algebra lemma supporting the indicated proof step. |
| `complex-domain` | `KAM.Iso.ComplexDomainAux.kEccMin_pos` (L130) | PASS | elementary bound, continuity, extremum or algebra lemma supporting the indicated proof step. |
| `complex-domain` | `KAM.Iso.ComplexDomainAux.kEccMin_le_kEccMax` (L136) | PASS | elementary bound, continuity, extremum or algebra lemma supporting the indicated proof step. |
| `complex-domain` | `KAM.Iso.ComplexDomainAux.kEccMax_lt_one` (L140) | PASS | elementary bound, continuity, extremum or algebra lemma supporting the indicated proof step. |
| `complex-domain` | `KAM.Iso.ComplexDomainAux.kLMin_pos` (L146) | PASS | elementary bound, continuity, extremum or algebra lemma supporting the indicated proof step. |
| `complex-domain` | `KAM.Iso.ComplexDomainAux.kGMin_pos` (L151) | PASS | elementary bound, continuity, extremum or algebra lemma supporting the indicated proof step. |
| `complex-domain` | `KAM.Iso.SafeAction.ecc_bounds` (L158) | PASS | attained extrema give strict positivity and r_min ≤ rho_max. |
| `complex-domain` | `KAM.Iso.eccC` (L181) | PASS | literal principal cpow formula, total on ℂ²; valid branch proved on the neighborhood. |
| `complex-domain` | `KAM.Iso.UDelta` (L183) | PASS | angle sup strip times the frozen actionNbhd, literal carrier. |
| `complex-domain` | `KAM.Iso.delaunayC` (L186) | PASS | literal orbitMapC composition; denominator/tube guards proved on UDelta. |
| `complex-domain` | `KAM.Iso.ComplexDomainData` (L191) | FAIL for full blueprint coverage | PASS against design appendix. Missing ratio-variation clause (F1). |
| `complex-domain` | `KAM.Iso.complexDelta` (L207) | PASS WITH NOTES | certified choice, fallback unreachable for SafeAction; chosen predicate loses GoodRadius.unif (F1). |
| `cd-branch` | `KAM.Iso.ComplexDomainAux.re_sqrt_pos` (L215) | PASS | principal logarithm argument gives positive cosine. |
| `cd-branch` | `KAM.Iso.ComplexDomainAux.sqrt_sq_eq` (L229) | PASS | principal cpow square identity, including zero. |
| `cd-branch` | `KAM.Iso.ComplexDomainAux.sqrt_branch` (L237) | PASS | positive real part, square identity and norm factorization; no branch assumption hidden. |
| `complex-domain` | `KAM.Iso.ComplexDomainAux.coord_sub_le` (L271) | PASS | elementary bound, continuity, extremum or algebra lemma supporting the indicated proof step. |
| `complex-domain` | `KAM.Iso.ComplexDomainAux.cast_one_sub` (L278) | PASS | elementary bound, continuity, extremum or algebra lemma supporting the indicated proof step. |
| `cd-uc` | `KAM.Iso.ComplexDomainAux.GoodRadius` (L284) | PASS | conditional proof-helper predicate, constructed by exists_radius; never assumed by complex_domain_spec. |
| `complex-domain` | `KAM.Iso.ComplexDomainAux.kEccMax_pos` (L291) | PASS | elementary bound, continuity, extremum or algebra lemma supporting the indicated proof step. |
| `cd-uc` | `KAM.Iso.ComplexDomainAux.GoodRadius.le_deltaK` (L294) | PASS | elementary bound, continuity, extremum or algebra lemma supporting the indicated proof step. |
| `cd-uc` | `KAM.Iso.ComplexDomainAux.GoodRadius.le_L` (L300) | PASS | elementary bound, continuity, extremum or algebra lemma supporting the indicated proof step. |
| `cd-uc` | `KAM.Iso.ComplexDomainAux.GoodRadius.le_G` (L307) | PASS | elementary bound, continuity, extremum or algebra lemma supporting the indicated proof step. |
| `cd-uc` | `KAM.Iso.ComplexDomainAux.exists_radius` (L316) | PASS | compact closed thickening, nonzero L, positive tolerance, uniform continuity. |
| `cd-branch` | `KAM.Iso.ComplexDomainAux.point_facts` (L386) | PASS | GoodRadius supplies the quantitative premise; this is explicitly a conditional helper. |
| `cd-branch` | `KAM.Iso.ComplexDomainAux.nbhd_facts` (L427) | PASS | witnesses in the frozen actionNbhd give nonzero L and positive radicand real part. |
| `cd-branch` | `KAM.Iso.ComplexDomainAux.slit_of_re_pos` (L435) | PASS | elementary bound, continuity, extremum or algebra lemma supporting the indicated proof step. |
| `cd-branch` | `KAM.Iso.ComplexDomainAux.cd_diff_ecc` (L439) | PASS | complex cpow differentiability on the slit plane. |
| `cd-branch` | `KAM.Iso.ComplexDomainAux.cd_real` (L448) | PASS | positive L and G, positive radicand and principal cpow/ofReal identity. |
| `complex-domain` | `KAM.Iso.ComplexDomainAux.tube_mem` (L480) | PASS | eccentricity is close to an actual member of the real eccentricity interval. |
| `complex-domain` | `KAM.Iso.ComplexDomainAux.cd_mem_dom` (L499) | PASS | tube membership and nonzero L are exactly orbitDomC. |
| `complex-domain` | `KAM.Iso.ComplexDomainAux.cd_diff_delaunay` (L506) | PASS | chain rule into orbitDomC with guarded division. |
| `complex-domain` | `KAM.Iso.ComplexDomainAux.eccAnomC_real_tube` (L539) | PASS | real solution satisfies the complex equation and strip condition; uniqueness identifies it. |
| `complex-domain` | `KAM.Iso.ComplexDomainAux.orbitMapC_real_tube` (L551) | PASS | algebraic substitution of the real-tube anomaly; no assumption abs(e) ≤ e₁. |
| `complex-domain` | `KAM.Iso.ComplexDomainAux.delaunayC_real_pt` (L561) | PASS | positive G/L is the real square root of 1-e². |
| `complex-domain` | `KAM.Iso.ComplexDomainAux.cd_real_eq` (L579) | PASS | real-neighborhood cone membership and the enlarged real-tube lemma. |
| `complex-domain` | `KAM.Iso.ComplexDomainAux.exists_complexDomainData` (L594) | PASS as stated | existential forgets the stronger GoodRadius predicate (F1). |
| `complex-domain` | `KAM.Iso.complex_domain_spec` (L609) | FAIL for full blueprint coverage | PASS as the exact design-signature theorem (F1). |

## Definition classification

- `SafeAction`: intended standing source data, a Prop structure with compactness, nonemptiness and `0 < G < L`. No conclusion-shaped field.
- `kEccMin`, `kEccMax`, `kLMin`, `kGMin`, `kRmin`, `kRhoMax`: literal infimum/supremum formulas on the entire set carrier. For arbitrary unsafe or empty sets these are Lean's total extrema, with no claim of physical significance. Every physical use is guarded by `SafeAction`. `sInf_spec`/`sSup_spec` prove attainment for arbitrary continuous scalar functions on the safe compact set; their r-min/rho-max specializations are used in `SafeAction.ecc_bounds`. All six extrema are therefore attained; strict positivity uses actual minimizing/maximizing points, not an invalid strict-infimum argument.
- `eccC`: principal complex power `(1 - G²/L²)^(1/2)` on the whole carrier. Total division/cpow outside the admissible domain is unused. Positive radicand real part and nonzero L are proved on the constructed neighborhood; real points agree with positive real sqrt.
- `UDelta`: literal product of the open angle strip with frozen `actionNbhd`, using the Pi/Prod sup norms. No changed carrier or norm.
- `delaunayC`: literal complex orbit-map composition, using parameter `kEccMax K`, principal eccentricity and `G/L`. Its tube and nonzero-denominator conditions are proved, not assumed by the final theorem.
- `ComplexDomainData`: Prop-valued output specification, matching the design exactly. Its mathematical clauses are intended, but its claim to package the full blueprint output is incomplete (F1, N1).
- `complexDelta`: classical choice from a proved existential on safe sets. `exists_complexDomainData hK` excludes the zero fallback, and `choose_spec` certifies the whole chosen predicate. There is no reliance on the fallback. The certification covers precisely that predicate, with the limitation F1 identifies.
- `ComplexDomainAux.GoodRadius`: proof-helper Prop structure. Its strong fields are proved by compactness/uniform continuity in `exists_radius`, then consumed by separately named conditional helpers. It is not an external input to the main theorem.

## Independent checks

All Lean-related invocations were serialized and inherited `LEAN_NUM_THREADS=1`. No heartbeat, recursion or synthesis overrides, clean/update/cache command, or mutation of a dependency package was used. The only production artifact written by this audit is this report; scratch probes and captured logs were kept in `.lake/abi-scratch/` and removed after incorporating their results.

### Targeted build

Command:

```sh
LEAN_NUM_THREADS=1 /mnt/HC_Volume_106379410/orchestrator-tools/inp_lake_build.sh /root/code/KAM-inp-i6 KAM.Iso.ComplexDomain
```

The gate invokes `nice -n 5 lake build KAM.Iso.ComplexDomain`. Exit 0. Output:

```text
[inp-gate] slot 1 acquired 02:25:57 for KAM.Iso.ComplexDomain
⚠ [9086/9094] Replayed KAM.Kepler.Energy
warning: KAM/Kepler/Energy.lean:106:35: Variable name `hm` is not explicitly referenced.
warning: KAM/Kepler/Energy.lean:106:48: Variable name `hκ` is not explicitly referenced.
Build completed successfully (9098 jobs).
```

The warning advice was omitted above; both warnings are replayed from the unchanged base dependency. No diagnostic names the new module.

### Signature probes and all public-theorem axioms

Command:

```sh
LEAN_NUM_THREADS=1 nice -n 5 lake env lean .lake/abi-scratch/I6Audit.lean
```

The scratch file imported only `KAM.Iso.ComplexDomain`, printed all 42 new public theorem axioms, and checked these examples (the first two are copied from the design appendix):

```lean
open Set Metric Real KAM KAM.Kepler KAM.Planetary KAM.Iso
example {K : Set (Fin 2 → ℝ)} (hK : SafeAction K) :
    0 < kEccMin K ∧ kEccMax K < 1 ∧ 0 < kLMin K ∧ 0 < kGMin K ∧
      0 < kRmin K ∧ kRmin K ≤ kRhoMax K :=
  by exact KAM.Iso.SafeAction.ecc_bounds hK
example {K : Set (Fin 2 → ℝ)} (hK : SafeAction K) :
    ComplexDomainData K (complexDelta K) :=
  by exact KAM.Iso.complex_domain_spec hK
example (L G : ℂ) : eccC L G ^ 2 = 1 - G ^ 2 / L ^ 2 :=
  KAM.Iso.ComplexDomainAux.sqrt_sq_eq _
```

Probe completed with no errors. Complete axiom output:

```text
'KAM.Iso.ComplexDomainAux.eccOf_pos_lt_one' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.ComplexDomainAux.eccOf_sq' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.ComplexDomainAux.continuousOn_eccFn' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.ComplexDomainAux.sInf_spec' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.ComplexDomainAux.sSup_spec' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.ComplexDomainAux.pos_x0' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.ComplexDomainAux.kEccMin_spec' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.ComplexDomainAux.kEccMax_spec' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.ComplexDomainAux.kLMin_spec' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.ComplexDomainAux.kGMin_spec' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.ComplexDomainAux.continuousOn_rminFn' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.ComplexDomainAux.continuousOn_rmaxFn' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.ComplexDomainAux.kEccMin_pos' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.ComplexDomainAux.kEccMin_le_kEccMax' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.ComplexDomainAux.kEccMax_lt_one' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.ComplexDomainAux.kLMin_pos' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.ComplexDomainAux.kGMin_pos' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.SafeAction.ecc_bounds' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.ComplexDomainAux.re_sqrt_pos' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.ComplexDomainAux.sqrt_sq_eq' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.ComplexDomainAux.sqrt_branch' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.ComplexDomainAux.coord_sub_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.ComplexDomainAux.cast_one_sub' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.ComplexDomainAux.kEccMax_pos' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.ComplexDomainAux.GoodRadius.le_deltaK' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.ComplexDomainAux.GoodRadius.le_L' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.ComplexDomainAux.GoodRadius.le_G' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.ComplexDomainAux.exists_radius' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.ComplexDomainAux.point_facts' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.ComplexDomainAux.nbhd_facts' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.ComplexDomainAux.slit_of_re_pos' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.ComplexDomainAux.cd_diff_ecc' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.ComplexDomainAux.cd_real' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.ComplexDomainAux.tube_mem' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.ComplexDomainAux.cd_mem_dom' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.ComplexDomainAux.cd_diff_delaunay' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.ComplexDomainAux.eccAnomC_real_tube' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.ComplexDomainAux.orbitMapC_real_tube' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.ComplexDomainAux.delaunayC_real_pt' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.ComplexDomainAux.cd_real_eq' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.ComplexDomainAux.exists_complexDomainData' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.complex_domain_spec' depends on axioms: [propext, Classical.choice, Quot.sound]
```

Thus the two main results and every auxiliary public theorem use only `propext`, `Classical.choice`, `Quot.sound`; no `sorryAx` appears. No provider/seal ABI probe was manufactured for an infrastructure package without an anchor.

### Kernel replay

Command:

```sh
LEAN_NUM_THREADS=1 nice -n 5 lake env leanchecker --verbose KAM.Iso.ComplexDomain
```

One invocation for the only added module (there is no separate provider or lemma module). Exit 0; complete output:

```text
replaying KAM.Iso.ComplexDomain
```

### Source, quarantine, frozen and size checks

`git diff inp...HEAD -- KAM/Frozen manifest KAM.lean README.md`: empty, exit 0.
`git diff --check inp...HEAD`: empty, exit 0.
A recursive scan of all local KAM imports reachable from the module covered 52 KAM modules and found **zero** provider/frozen-theorem import edges. Direct source scanning found no forbidden proof escapes or resource overrides. The module has 623 lines (below 1500), zero lines over 100 characters, the prescribed copyright/module/public imports/docstring/public section, and exposed definitions via `@[expose] public noncomputable section`. Ambient types use Fin function spaces throughout.

Lint command:

```sh
LEAN_NUM_THREADS=1 nice -n 5 sh scripts/lint_sources.sh
```

Exit 1, solely for the allowed stale generated root. Complete output:

```text
KAM.lean is out of date; run scripts/gen_root_imports.py
check_lean_modules: PASS (345 Lean files, 0 comparator configurations)
FROZEN-ANCHOR GUARD OK
ABI HASHES OK (144 frozen declarations)
```

All remaining checks passed, including frozen-byte guard and all 144 elaborated ABI hashes. The generated root was left untouched as instructed.

## Errata, deviations and remaining work

No pinned external-source erratum was identified: this node is labelled `source: ours` in the blueprint. F1 is a design-to-blueprint omission, not an alleged defect in a pinned paper. N1 records an interface omission, not a counterexample. The strengthened “every nearby point” quantifier follows design B1/D8 and is valid; it does not add a premise to the main theorem. The local real-tube helpers are a justified strengthening relative to KEP-9. No deviation was introduced by this report-only audit.

Before recording the full blueprint node as complete, repair or explicitly rule on F1, and expose the periodicity corollary if that part of the node is claimed. Existing successful compilation, axiom hygiene and kernel replay certify the submitted statements; they do not restore the omitted quantitative selected-radius contract.
