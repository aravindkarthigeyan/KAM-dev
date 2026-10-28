# I-6 delta audit, round 2

**Verdict: PASS. F1 CLOSED; N1 CLOSED.** The expanded selected-radius specification now certifies the blueprint ratio bound, radicand disk and square identity. The Delaunay wrapper exports both required angle periodicities. No weakening was found.

Scope: `/root/code/KAM-inp-i6`, delta `16307bf49015c2ed7777e2af3677b2429774fa10..482bc55c9c607bf7492074c7075a8b1160f6432d`, checked against `blueprint-I/parts/p7-delaunay.tex:325–351` and its referenced Kepler constants at L90–105. HEAD was exactly the latter commit. The delta contains only `KAM/Iso/ComplexDomain.lean` (113 insertions, 3 deletions). The user-supplied orchestrator ruling authorizes this strengthening as an overnight design amendment. This report supersedes round 1's F1/N1 findings for this commit; it does not claim a frozen-anchor seal.

## F1: quantitative certification at the selected radius

The blueprint L341 requires `|G²/L² - G'²/L'²| < τ`, with `τ = min{e₋²/2, e₋δ_E}`. The new `complexTau` at `KAM/Iso/ComplexDomain.lean:190–191` is literally

```lean
min (kEccMin K ^ 2 / 2) (kEccMin K * keplerDeltaE (kEccMax K))
```

Here `kEccMin K` and `kEccMax K` remain the compact-set eccentricity minimum and maximum. In particular, `keplerDeltaE (kEccMax K)` is exactly the blueprint's δ_E at e₁ = max_K e. At `KAM/Kepler/KeplerTube.lean:312–317` the definitions are

```text
e₂ = (1 + e₁)/2
ϑ = (1 + e₂)/2
y₀ = arcosh(ϑ/e₂)
δ_E = min(e₂ - e₁, (1 - ϑ)*y₀/(2*cosh y₀))
```

These match `blueprint-I/parts/p7-delaunay.tex:93–97`, including the denominator **2 cosh y₀**. There is no rescaling, replacement tolerance or wider constant dependence. Fresh `rfl` probes checked both `complexTau` and the δ_E formula.

`ComplexDomainData` now appends, after its nine original clauses:

1. The ratio bound for **every** y ∈ K within δ₁ of x ∈ actionNbhd K δ₁.
2. The strict disk bound `‖(1-G²/L²) - e(y)²‖ < e₋²/2`, together with the stronger strict lower bound `e₋²/2 < Re(1-G²/L²)`.
3. `eccC L G ^ 2 = 1-G²/L²` on the entire chosen action neighborhood.

`ComplexDomainAux.ratio_disk_facts` (L441–471) derives the ratio estimate from `GoodRadius.unif` by negating the difference. It uses the real eccentricity-square identity, `e(y) ≥ e₋ > 0`, and `|Re z| ≤ ‖z‖` to establish the disk and real-part bounds. This is the blueprint's argument; the strict real-part bound is stronger than the stated non-strict bound in its proof. The entire disk is in the right half-plane because its center is real and at least e₋², while its radius is e₋²/2 > 0.

`exists_complexDomainData` (L641–658) constructs **all twelve** clauses from the same `exists_radius` witness. `complexDelta` (L219–220) still chooses from `∃ δ₁, ComplexDomainData K δ₁`, whose meaning now includes all added clauses. `complex_domain_spec` (L663–672) returns that expanded predicate at `complexDelta K`; it excludes the zero fallback using the proved existential. Consequently the quantitative properties hold for the actual selected radius, rather than merely for an unrelated good radius.

The three public projections at L675, L683 and L691 correctly extract the new clauses. They assume only `SafeAction K` and ordinary point/domain premises; they do not assume `GoodRadius` or the desired bound. F1 is closed.

## N1: periodicity of the wrapper

`delaunayC_periodic` (L698–727) states both equalities after updating angle coordinate 0 or 1 by **2π**, for every point of `UDelta K (complexDelta K)`. The action coordinates and eccentricity are unchanged. It obtains the orbit-domain inclusion from the selected-radius specification and applies `orbitMapC_periodic`; explicit vector-update equalities transport that result to the Delaunay wrapper.

There is no smaller domain or new bound on real angles, no period-one substitution, and no extra premise. Real 2π shifts preserve imaginary parts, hence preserve this domain. This is exactly the periodicity in blueprint L343. N1 is closed.

## Delta review and definition classification

| Declaration / change | Verdict | Check |
|---|---|---|
| `complexTau` (L190) | PASS | Explicit total formula, identical to τ; no fallback. |
| `ComplexDomainData` (L197) | PASS | Original predicate body preserved verbatim as a prefix; only three conjuncts appended. |
| `ComplexDomainAux.ratio_disk_facts` (L441) | PASS | Conditional helper with proved `GoodRadius` input; direct quantitative derivation. |
| `ComplexDomainAux.exists_complexDomainData` (L641) | PASS | Same witness supplies original clauses and the added three. |
| `complex_domain_spec` (L663) | PASS | Unchanged proof now certifies the expanded choice predicate. |
| `complexDelta_ratio_bound` (L675) | PASS | Exact selected-radius quantitative projection. |
| `complexDelta_radicand_disk` (L683) | PASS | Exact selected-radius disk and real-part projection. |
| `complexDelta_ecc_sq` (L691) | PASS | Square identity on the selected neighborhood. |
| `delaunayC_periodic` (L698) | PASS | Both angle shifts by 2π, on the selected domain. |
| Remaining original declarations | PASS, unchanged | Diff adds no premise, changes no carrier/norm, and deletes no original conclusion. |

Only `complexTau` is a new object definition. `ComplexDomainData` is a strengthened Prop-valued output specification. Existing definitions, the safe-action extrema, the local real-tube lemmas and imports are unchanged. The stronger choice predicate may select a different admissible radius; that is legitimate because the radius had no prescribed formula and all old guarantees persist.

An independent Lean probe copied the complete **old** predicate directly from commit `16307bf` under a fresh name and proved `ComplexDomainData K δ → OldComplexDomainData K δ` by extracting the first nine fields. It also elaborated the exact statements of all four new public selected-domain conclusions. This checks preservation beyond merely comparing field counts.

## Independent validation

All Lean-related commands were run sequentially with `LEAN_NUM_THREADS=1` and `nice -n 5`; the build used the required compile gate. No production source or generated/frozen file was edited by the auditor. Scratch files were confined to `.lake/abi-scratch/` and removed after recording results.

### Build

```sh
LEAN_NUM_THREADS=1 /mnt/HC_Volume_106379410/orchestrator-tools/inp_lake_build.sh /root/code/KAM-inp-i6 KAM.Iso.ComplexDomain
```

Exit 0. The gate ran `nice -n 5 lake build KAM.Iso.ComplexDomain`. Output included:

```text
[inp-gate] slot 1 acquired 02:36:27 for KAM.Iso.ComplexDomain
⚠ [9087/9098] Replayed KAM.Kepler.Energy
warning: KAM/Kepler/Energy.lean:106:35: Variable name `hm` is not explicitly referenced.
warning: KAM/Kepler/Energy.lean:106:48: Variable name `hκ` is not explicitly referenced.
Build completed successfully (9098 jobs).
```

Only the unchanged dependency warnings and their routine advice appeared; no warning names the changed module.

### Lean probes and axioms

```sh
LEAN_NUM_THREADS=1 nice -n 5 lake env lean .lake/abi-scratch/I6DeltaAudit.lean
```

**Exit 0**, no errors. Probe contents: old-predicate preservation, two definitional constant identities, the four new public theorem signatures and `#print axioms` for **all 47 public theorems** in the current module. Complete axiom output:

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
'KAM.Iso.ComplexDomainAux.ratio_disk_facts' depends on axioms: [propext, Classical.choice, Quot.sound]
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
'KAM.Iso.complexDelta_ratio_bound' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.complexDelta_radicand_disk' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.complexDelta_ecc_sq' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.delaunayC_periodic' depends on axioms: [propext, Classical.choice, Quot.sound]
```

Every result uses only `propext`, `Classical.choice`, `Quot.sound`. No `sorryAx` or additional axiom occurs.

### Kernel replay

```sh
LEAN_NUM_THREADS=1 nice -n 5 lake env leanchecker --verbose KAM.Iso.ComplexDomain
```

Exit 0. Complete output:

```text
replaying KAM.Iso.ComplexDomain
```

### Source hygiene

```sh
LEAN_NUM_THREADS=1 nice -n 5 sh scripts/lint_sources.sh
```

Exit 1, solely for the expected stale generated root; all remaining checks passed. Complete output:

```text
KAM.lean is out of date; run scripts/gen_root_imports.py
check_lean_modules: PASS (345 Lean files, 0 comparator configurations)
FROZEN-ANCHOR GUARD OK
ABI HASHES OK (144 frozen declarations)
```

The root was left untouched as instructed.

`git diff --check 16307bf..482bc55`: exit 0, empty output. `git diff 16307bf..482bc55 -- KAM/Frozen manifest KAM.lean README.md`: exit 0, empty output. The only changed source has **733 lines**, zero lines over 100 characters, no forbidden escape/resource-override tokens, and its original module header, public imports and exposed public section. Imports are unchanged from the independently checked round-1 closure; this delta introduces no provider or frozen-theorem dependency.

## Remaining qualifications

The tracked design appendix still describes the earlier nine-field predicate; the orchestrator amendment supplied in this audit request explicitly authorizes the strengthening. Synchronizing that planning text is documentation upkeep, not an unresolved proof obligation. No new pinned-source erratum, blueprint defect, weakening or audit-introduced deviation was found. This is a PASS for the I-6 infrastructure node and the F1/N1 delta; there is no provider/frozen-anchor seal in this package.
