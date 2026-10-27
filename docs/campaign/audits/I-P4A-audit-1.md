# Independent audit: I-P4A

Overall verdict: **PASS WITH NOTES**.

Audited branch `k/p4a`, commit `60b9a1d1cd32ca50874e86f067b0d534d49a27c2`, against `main...HEAD` on 2026-10-27. No blocking or major finding. One minor documentation correction is proposed below. This audits the six package nodes and their seven substantive steps; it does not certify HEAD or seal a frozen theorem.

Read `AGENTS.md`, `docs/PLAN.md`, `docs/DECISIONS.md`, `PROVER-COMMON.md`, `AUDIT-PACKAGE.md`, `I-P4A.md`, the supplied handoff, the corresponding graph contracts, and their actual blueprint text. Inspected all seven new modules, the relevant frozen definitions, matrix infrastructure, and Cauchy/average interfaces. The branch changes only those modules and the generated root imports. The pre-existing untracked handoff was left untouched. The auditor changes only this report; temporary Lean probes were placed under `.lake/abi-scratch/` and deleted after use.

## Node inventory and statement fidelity

All short declaration names below have namespace `KAM.Head`. Blueprint locators refer to `blueprint/parts/p4-measure.tex`.

| Node | Lean declaration(s) and locator | Verdict | Reason |
|---|---|---|---|
| `bp:p4:data` | `Lplus`, `CBplus`, `stripWidth`, `deltaStar`, `muParam`, `domainD`, `domainD'`, `cauchyConst`, `cbar`, `unperturbedTorus`, `hbold`; `Data.lean:41–102` | PASS | Every formula at blueprint 138–163 agrees, including the complex domains and real-Hamiltonian identity. Constants have narrower, hence permitted, dependencies. |
| `bp:p4:h-bounded` | `h_bounded`, `hBound`, `norm_le_hBound`, `isLUB_hBound`; `HBounded.lean:106–139` | PASS | Boundedness plus the pointwise bound and least-upper-bound theorem realize the finite supremum of 168–170. Parameters are only `h,B,r₀`, never the perturbation. Openness, reality, nondegeneracy and dimension restrictions are unnecessary here and omitted, strengthening the result. |
| `step:p4:hbdd-compact` | `isClosed_hbddCompact`, `isBounded_hbddCompact`, `isCompact_hbddCompact`, `actionNbhd_subset_hbddCompact`, `hbddCompact_subset_actionNbhd`; `HBounded.lean:56–94` | PASS | The exact distance sublevel set is compact and has both inclusions from 173–176. Nonemptiness and positive radius come from the fixed data at 139–142. |
| `step:p4:hbdd-continuity` | `bddAbove_norm_image_of_isCompact`, applied in `h_bounded`; `HBounded.lean:98–115` | PASS | General continuous-on-compact helper; holomorphy supplies its continuity premise in the actual proof, rather than being replaced by an assumed bound. |
| `bp:p4:matrix-norms` | `matrix_norms_cor`; `MatrixNorms.lean:222–257` | PASS | All five clauses of 518–533 are present, with the max-induced row-sum norm, bilinear transpose and correct symplectic sign. Clause (v) uses an arbitrary uniform upper bound, equivalent to the stated supremum bound for continuous functions on the compact, nonempty cube. |
| `step:p4:mn-rowsum` | `matrix_norms_cor` and its component lemmas; `MatrixNorms.lean:60–207` | PASS | Reuses Part 1 operator/transpose results; computes the four frame norms directly; proves the symplectic identities and integral estimate. No unperturbed-torus theorem or smallness premise is imported. |
| `bp:p4:phase-average` | `angleDisplacement`, `phaseAverage`, `IsNormalized`, `phaseShift`, `continuous_angleDisplacement_ofReal`, `angleDisplacement_ofReal_im`, `ofReal_phaseAverage_eq_integral`, `ofReal_phaseAverage_eq_integral_vec`; `PhaseAverage.lean:41–125` | PASS | Exactly the definitions and real/complex average identity of 677–684. Holomorphy on a positive-width strip proves continuity; reality proves vanishing imaginary part. Primary periodicity is unnecessary for these facts, so its omission strengthens them. |
| `bp:p4:cover-mono` | `kamCover_mono`; `CoverMono.lean:25–32` | PASS | Exact frozen cover, with precisely `B' ⊆ B` and `κ' ≤ κ`; no regularity, size or sign hypotheses added. |
| `step:p4:cm-proof` | proof of `kamCover_mono`; `CoverMono.lean:28–32` | PASS | Keeps the same `K,ω,γ,I₀`; enlarges the action-domain witnesses and the distance bound exactly as 1194–1199. |
| `bp:p4:dyadic-approx` | `dyadic_approx`; `DyadicApprox.lean:265–274` | PASS | Matches 1241–1245 under the documented standing dimension convention. Quantifiers are `B,η`, then `B'`, then a single real `C`, then every `t>0`. Volume uses `ENNReal.ofReal` on the real upper bounds; no finiteness or measurability assumption is hidden. |
| `step:p4:dy-exhaust` | `dyadicFamily_finite`, `isClosed_dyadicUnion`, `exists_subcube`, `dyadicUnion_mono_succ`, `dyadicUnion_mono`, `iUnion_dyadicUnion`, `exists_dyadicUnion_diff_le`; `DyadicApprox.lean:79–203` | PASS | Proves finiteness, closure, refinement, exhaustion and approximation in measure. Uses continuity from above on the decreasing complements, equivalent to the blueprint's continuity from below since `B` has finite measure. |
| `step:p4:dy-open` | `isOpen_dyadicInterior`, `dyadicInterior_subset`, `volume_diff_dyadicInterior_le`; `DyadicApprox.lean:210–235` | PASS | Union of open cube interiors, subset of `B`, with only null cube boundaries lost. No approximation premise is assumed as a field or instance. |
| `step:p4:dy-layer` | `volume_layer_dyadicInterior_le`, `volume_layer_le`, `layer_subset`, slab volume lemmas; `DyadicApprox.lean:241–256`, `DyadicBoxes.lean:92–210` | PASS | Same explicit constant `2*n*N*ℓ^(n-1)` and all `t>0`. Nonempty complement is proved from boundedness and positive dimension. |

## Answers to the five audit questions

1. **Yes, the dimension premises are authorized standing conventions.** Part 0 explicitly fixes `n ≥ 2` at `p0-conventions.tex:11`; Part 4 repeats it at `p4-measure.tex:139`. Both relevant Lean docstrings explicitly attach `0 < n` to this convention (`MatrixNorms.lean:219–220`, `DyadicApprox.lean:261–264`). The exported results actually cover every positive dimension. Zero-dimensional norm-one claims are false. For dyadic approximation at `n=0`, take the singleton ambient space `B=univ` and `0<η<1`: approximation forces `B'=univ`, whose empty complement has Lean `infDist=0`, so the layer has volume one for every positive `t` and admits no finite linear bound. This is outside the standing source scope, not a source defect.

2. **Yes, entrywise `matrixAverage` is faithful.** `torsionAverage_eq_matrixAverage` is literally `rfl`. The proof establishes entry integrability from continuity and compactness, commutes finite sums and scalar multiplication with integration, and bounds the averaged matrix on max-unit vectors using the row-sum operator norm. Thus it proves the actual operator-norm bound, not an entrywise bound missing a dimension factor. A supplementary Lean probe also established equality with the Bochner integral using the elementwise matrix norm and nested coordinate projections; in finite dimension this is the same integral. There is no required change of mathematical object. The arbitrary bound `S` is not a conclusion-shaped hypothesis: it is the pointwise bound whose preservation by integration is the lemma. Continuity on the cube gives a bounded, nonempty range of norms and hence permits choosing its real supremum.

3. **All three constructions are valid within their source scope.** `phaseAverage` integrates real coordinates over the closed unit cube, whose volume is one. The continuity theorem and the coordinatewise and vector complex-integral identities guard against Bochner's nonintegrable fallback under the source hypotheses. `h_bounded` is genuinely a `BddAbove` theorem, with `norm_le_hBound` and `isLUB_hBound` preventing a vacuous use of the total real `sSup`; no junk value pays the analytic bound. Empty `B` is an explicit harmless extension. `cauchyConst` takes `1,4,32` at orders `1,2,3`, exactly the constants proved at `p1-analysis.tex:505`; `norm_iteratedFDeriv_le_cauchyConst` attaches these values to the derivative estimates. The default `32` at other orders is outside that contract and is never used as an estimate there. See the minor comment issue below.

4. **Yes, the statement and constant are unchanged.** The proof covers the layer by at most `2n` face slabs per cube, each bounded by `t*ℓ^(n-1)`. Clipping slab width by `min t ℓ` handles large `t` as well. Finite subadditivity gives exactly `C=2nNℓ^(n-1)`, including `N=0`; no disjointness assumption is needed. This is a proof variation, not a theorem deviation. No blueprint contradiction is revealed.

5. **Yes, the data package matches every named constant and domain.** The formulas are `L₊=max L_h 1`, `C_B⁺=max C_B 0`, `s=min s₀ 1`, `δ_*=(1/4)*min s r₀`, `μ=δ_*/2`, `D=T_(s/2) × B_(r₀/2)`, `D'=T_(3s/4) × B_(3r₀/4)`, and `cbar=max{1,c(n,j),c(2n,j):j=1,2,3}=32`. `K⁰(θ)=(θ,ιI_*)` and `hbold=h(I)+f(θ,I)` are literal. The latter is total on the ambient space, agrees on the source domain, and has an unconditional `rfl` bridge to the frozen real Hamiltonian. None of the numeric constants depends on `f` or `ε`; `hbold` of course depends on `f`, as required. The post-definition radius bounds and domain inclusions are proved with the original positive-radius assumptions.

## Definition classification

There are **30 new definitions**, no new abbreviations or structures.

| Definitions | Classification and totality |
|---|---|
| `Lplus`, `CBplus`, `stripWidth`, `deltaStar`, `muParam` | Exact arithmetic formulas on all real inputs. Positivity conclusions require the source positive-radius inputs. |
| `domainD`, `domainD'` | Exact products of the frozen complex strip and action neighbourhood at the prescribed radii; no substituted carrier. |
| `cauchyConst` | Exact intended constants for orders 1–3; total extension `32` elsewhere. Every derivative claim restricts the order to `{1,2,3}`. |
| `cbar` | Supremum of an explicit finite, nonempty set, with maximum proved equal to `32`. No unbounded/empty supremum fallback. |
| `unperturbedTorus`, `hbold` | Literal ambient maps; total extensions preserve the source formulas. |
| `hbddCompact` | Exact distance sublevel set. If `B` is empty and radius positive it is the entire ambient space because of Lean's distance convention; compactness/inclusion theorems explicitly require nonempty `B`. The root handles empty `B` separately, without relying on this artifact. |
| `hBound` | Real supremum of the exact norm-value set. Under source assumptions the range is nonempty and bounded, proved separately. For empty/unbounded ranges Lean totalizes `sSup`; no analytic estimate relies on such a value. |
| `frameL0`, `frameN0` | Literal block matrices `(Id;0)` and `(0;Id)`, using `Fin n ⊕ Fin n` for the two phase blocks. Multiplication identities identify them with the intended maps. |
| `matrixAverage` | Coordinatewise Bochner integrals over the unit cube; genuine matrix integral for continuous inputs, with a norm bound proved independently of matrix-integral typeclass conveniences. |
| `angleDisplacement`, `phaseAverage`, `IsNormalized`, `phaseShift` | Literal displacement, coordinatewise real average, zero-average predicate and real phase translation. The average's total extension to arbitrary `K` is not used to infer the source analytic facts. |
| `closedBox`, `openBox` | Exact products of closed/open intervals, including their ordinary empty/degenerate cases. |
| `loSlab`, `hiSlab` | Closed face slabs with width clipped by `min t ℓ`. Intended geometric descriptions apply at the positive widths used by the layer proof; general volume bounds remain valid on the full real carrier. |
| `dyadicSide`, `dyadicCorner`, `dyadicCube`, `dyadicFamily`, `dyadicUnion`, `dyadicInterior` | Exact dyadic grid, index set of contained cubes, union of cubes and union of their interiors. The family need not be finite for unbounded `B`; finiteness is proved from boundedness before taking its cardinality. |

No conclusion-shaped premise, hidden hard-step instance, bundled unproved analytic field, provider shortcut or frozen-theorem import was found. The only frozen imports are definitions. The imports added to `KAM.lean` are exactly the seven new modules; the root generator check passes. There are no package providers, so the frozen/provider exact-type probe is **not applicable**.

## Checks and receipts

Commands were run from `/root/code/KAM-w-p4a`, with no concurrent Lake/Lean processes initiated by this auditor, no resource overrides, and no source changes. No full-library rebuild or clean was performed.

`git rev-parse HEAD` and `git branch --show-current`:

```text
60b9a1d1cd32ca50874e86f067b0d534d49a27c2
k/p4a
```

`git diff main...HEAD -- KAM/Frozen manifest` and `git diff --check main...HEAD`: both exit 0, no output. Thus all frozen sources and manifest files are untouched by the branch.

`sh scripts/lint_sources.sh`: exit 0, output:

```text
check_lean_modules: PASS (190 Lean files, 0 comparator configurations)
FROZEN-ANCHOR GUARD OK
ABI HASHES OK (140 frozen declarations)
```

`nice -n 5 lake build KAM.Head.CoverMono KAM.Head.Data KAM.Head.DyadicApprox KAM.Head.DyadicBoxes KAM.Head.HBounded KAM.Head.MatrixNorms KAM.Head.PhaseAverage`: exit 0, output:

```text
Build completed successfully (2872 jobs).
```

`wc -l KAM/Head/*.lean`: exit 0, output:

```text
   36 KAM/Head/CoverMono.lean
  187 KAM/Head/Data.lean
  278 KAM/Head/DyadicApprox.lean
  216 KAM/Head/DyadicBoxes.lean
  143 KAM/Head/HBounded.lean
  261 KAM/Head/MatrixNorms.lean
  131 KAM/Head/PhaseAverage.lean
 1252 total
```

Source review plus lint found no forbidden proof escapes, forbidden types, resource overrides, missing module scaffolding or quarantine violations. All seven files have the copyright header, `module`, appropriate imports, module docstring and exposed public section. The maximum file size is 278 physical lines, below the 1500-line cap.

### Axiom probe

The scratch probe imported all seven modules and issued `#print axioms` for every one of the 83 new theorems (including helpers), extracted from the declaration headers. Command: `nice -n 5 lake env lean .lake/abi-scratch/IP4AAudit.lean`. Exit 0. Exact output:

```text
'KAM.Head.kamCover_mono' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.norm_iteratedFDeriv_le_cauchyConst' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.realHamiltonian_eq_re_hbold' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.unperturbedTorus_fst' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.unperturbedTorus_snd' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.one_le_Lplus' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.le_Lplus' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.CBplus_nonneg' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.le_CBplus' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.stripWidth_pos' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.stripWidth_le_one' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.stripWidth_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.deltaStar_pos' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.muParam_pos' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.deltaStar_le_quarter' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.muParam_le_eighth' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.complexStrip_mono' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.actionNbhd_mono' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.domainD_subset_domainD'' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.domainD'_subset' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.cbar_eq' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.dyadicSide_pos' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.dyadicSide_succ' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.dyadicCorner_mem_dyadicCube' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.dyadicFamily_finite' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.dyadicUnion_subset' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.isClosed_dyadicUnion' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.exists_subcube' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.dyadicUnion_mono_succ' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.dyadicUnion_mono' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.iUnion_dyadicUnion' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.exists_dyadicUnion_diff_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.isOpen_dyadicInterior' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.dyadicInterior_subset' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.volume_diff_dyadicInterior_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.volume_layer_dyadicInterior_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.dyadic_approx' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.isOpen_openBox' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.isClosed_closedBox' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.openBox_subset_closedBox' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.volume_closedBox' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.volume_openBox' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.volume_closedBox_diff_openBox' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.prod_ite_eq_mul_pow' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.volume_loSlab_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.volume_hiSlab_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.le_infDist_compl_of_ball_subset' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.ball_subset_openBox' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.layer_subset' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.volume_layer_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.isometry_ofReal_pi' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.isClosed_hbddCompact' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.isBounded_hbddCompact' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.isCompact_hbddCompact' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.actionNbhd_subset_hbddCompact' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.hbddCompact_subset_actionNbhd' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.bddAbove_norm_image_of_isCompact' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.h_bounded' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.hBound_nonneg' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.norm_le_hBound' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.isLUB_hBound' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.frameL0_mulVec' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.frameN0_mulVec' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.omegaZeroMatrix_mul_frameL0' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.norm_eq_one_of_rowSum' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.norm_frameL0' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.norm_frameL0_transpose' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.norm_frameN0' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.norm_frameN0_transpose' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.dotℂ_eq_dotProduct' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.dotℂ_omegaZero' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.omegaZeroMatrix_transpose_mul_self' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.ofReal_symplecticForm' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.torsionAverage_eq_matrixAverage' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.norm_matrixAverage_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.matrix_norms_cor' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.angleDisplacement_apply' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.phaseShift_apply' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.phaseShift_zero' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.continuous_angleDisplacement_ofReal' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.angleDisplacement_ofReal_im' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.ofReal_phaseAverage_eq_integral' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.ofReal_phaseAverage_eq_integral_vec' depends on axioms: [propext, Classical.choice, Quot.sound]
```

### Supplementary integral probe

Command: `nice -n 5 lake env lean .lake/abi-scratch/IP4AIntegral.lean`. Final probe below: exit 0, no output.

```lean
import KAM.Head.MatrixNorms
import Mathlib.MeasureTheory.SpecificCodomains.Pi
open MeasureTheory
open scoped Matrix.Norms.Elementwise

example {n p q : ℕ} {A : (Fin n → ℝ) → Matrix (Fin p) (Fin q) ℂ}
    (hA : ContinuousOn A (Set.pi Set.univ fun _ : Fin n => Set.Icc (0 : ℝ) 1)) :
    KAM.Head.matrixAverage A = KAM.torusAverage A := by
  have hint : IntegrableOn (fun x i j => A x i j)
      (Set.pi Set.univ fun _ : Fin n => Set.Icc (0 : ℝ) 1) := by
    apply Integrable.of_eval
    intro i
    apply Integrable.of_eval
    intro j
    refine ContinuousOn.integrableOn_compact ?_ ?_
    · rw [Set.pi_univ_Icc]
      exact isCompact_Icc
    · exact continuousOn_pi.1 (continuousOn_pi.1 hA i) j
  ext i j
  let row := ContinuousLinearMap.proj (R := ℂ) (φ := fun _ : Fin p => Fin q → ℂ) i
  let entry := ContinuousLinearMap.proj (R := ℂ) (φ := fun _ : Fin q => ℂ) j
  exact (entry.comp row).integral_comp_comm hint
```

During development of this supplementary probe, direct matrix compact-integrability synthesis failed with `failed to synthesize instance of type class ContinuousENorm (Matrix (Fin p) (Fin q) ℂ)`; omitting a matrix norm scope also failed to synthesize `NormedAddCommGroup`. These were probe construction failures, not package failures. The final probe uses the elementwise norm and establishes integrability through the scalar coordinates, then commutes their continuous linear projections with the integral. The package's direct row-sum proof already avoids those typeclass issues. This receipt establishes the equality in the elementwise norm implementation; it is not a claim that an operator-scoped Bochner-integral wrapper has been added to the package.

## Findings, proposed fixes and limits

**Minor M1 — overbroad `hBound` docstring.** `KAM/Head/HBounded.lean:117–118` says the value set is empty “which happens only for `B = ∅`.” The definition at 119–120 accepts every real `r₀`; for `r₀=0` and nonempty `B`, `actionNbhd B 0` is empty because a norm cannot be negative. Thus this sentence needs “when `r₀ > 0`.” Proposed fix: qualify that parenthetical by the positive-radius assumption, or remove the “only” clause. This is prose only: the upper-bound and least-upper-bound results at 128–139 already assume `0 < r₀`, and their proofs do not rely on the false unrestricted comment.

**Blocking findings: none. Major findings: none.** No suspected defect in a pinned external source was encountered; this package audit used the local blueprint and frozen definitions and makes no fresh PDF-level source certification. No frozen statement looked defective, and no auditor deviation was introduced. The positive-dimension restriction is explicitly authorized by the blueprint convention; the complement-continuity and slab arguments are faithful proof variations. The `cauchyConst` total extension outside orders 1–3 is an implementation choice with a guarded contract.

Independent checks are compilation, source/contract inspection, lint, frozen ABI guard and axiom printing; no separate `leanchecker` kernel replay was performed. Only this report was retained.
