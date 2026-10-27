# Independent audit: Part 4 Lean design, audit 1

Overall verdict: **PASS WITH NOTES as a conditional signature design.** `GValid` is a legitimate explicit interface to the frozen G1–G3 conclusions under rule 6. I found no false or weakened mathematical target requiring a corrected signature. This is not proof acceptance, permission to seal, or certification that the proposed modules can land verbatim against the current interfaces.

Audited on 2026-10-27 in `/root/code/KAM-w-design4`, HEAD `37c34d0b8eeb864fdcc8abe4ac2e3bab42b16bbc`. Inputs: `AGENTS.md`, `docs/PLAN.md`, `docs/DECISIONS.md`, both design-audit briefs, `PROVER-COMMON.md`, `docs/campaign/design/PART4-LEAN-DESIGN.md`, `.drafts/design/Part4Signatures.lean`, the Part 4 blueprint and its nodes in `docs/graph/K/DEPGRAPH.md`, the five actual frozen theorem files, and the relevant current Head, Torus, Strip, Matrix and Measure interfaces. No external source PDF was audited.

The draft has 956 lines and SHA-256 `54e609ceff902a908eaf530e5c306d6565a62573929567f28d238802c6e94bd4`. Its complete text occurs verbatim in Appendix A. Line numbers below refer to that draft unless a different path is given. PASS concerns the mathematical contract and the conditional layout; current integration qualifications are stated separately.

## The GValid decision

**PASS.** The structure at lines 375–384 contains precisely:

| Field | Frozen origin | Parameters and scope | Verdict |
|---|---|---|---|
| Inherited `GConsts.Pos` | Positivity conjuncts of G1, twice, and G2 | `C11`, `C21`, `C12`, `C22`, `cG` positive | PASS; no positivity is imposed on `C3`. |
| `g1a` | `AposterioriKam.lean`, body after the two positive constants | `ρ = s/4`, `ρinf = s/8`; `M`, `2+μ`, `2+μ`, `4Lplus Lh+μ`, `μ`, `γbar=1` | PASS. |
| `g1b` | Same frozen body | `ρ = 3s/32`, `ρinf = s/16`; same remaining parameters | PASS. |
| `g2` | `LocalUniquenessFlow.lean`, body after the positive constant | `ρ = s/16`; same `M`, bounds and margin | PASS. |
| `g3` | `VolumeNotDiophantineLe.lean`, conclusion at its witness | All `α > 0`, `Ω = frequencyMap h '' B`, bound `ofReal (C3 * α)` | PASS. |

`G1Body` (303–337) and `G2Body` (341–370) preserve the frozen order of domain, Hamiltonian, tori, frequency, Diophantine and error binders. In particular they preserve the arbitrary domain, full H1 derivative block, H2 ball margin, H3/H4 row sums, strict G1 smallness, G1 output margins, and G2's asymmetric requirements on the reference and comparison tori. G1 retains `γ ≤ γbar`; G2 has no such bound. Neither adds normalization, uniqueness of the selected torus, Lagrangianity, Lipschitz dependence, a boundary estimate, or any Part 4 conclusion.

These are the **whole universal frozen bodies at fixed constants**, not just their applications to `hbold h f`. That is exactly what the frozen existential witnesses provide, so this generality is not an illicit strengthening. The parameter tuples match `blueprint/parts/p4-measure.tex:405`–436. `GValid` itself requires no extra field for side conditions: those are proved from `Data` by `parameters` before invoking the anchors.

The explicit proof of `KAM.Provider.exists_gValid` (870–879) selects constants by two G1 calls, one G2 call and one G3 call. It uses only the side conditions from `parameters hD` and boundedness from `freq_map hD`; it uses no APPLY, LIP, measure, HEAD or HEAD-Q conclusion. Its final constructor checks the frozen bodies by definitional conversion. The successful independent elaboration checks these conversions at the real frozen types, not at replacement axioms with hand-written types.

This establishes derivability **conditional on proving `parameters` and `freq_map`, and on the frozen G1/G2 theorems being proved**. The current term still depends on `sorryAx`; it is not a completed provider receipt.

Rule 6 permits the layout because the interface supplies only already specified source results, the constants are chosen before `f` and `ε`, and both roots are distinctly named conditional helpers (`head_of_gValid`, `headq_of_head`). The actual exported theorems retain the exact frozen hypotheses. The latter helper assumes HEAD at arbitrary action domains for the same fixed remaining parameters; this is an instance of the whole frozen HEAD theorem, not HEAD-Q disguised as a premise.

Use of the premise follows the proof graph:

| Consumer | Actual G use or predecessor path |
|---|---|
| `apply` | Direct `g1a`, step `apply-g1`. |
| `normalize` | `apply` followed by phase shifting; no new G invocation. |
| `lip_error` | Properties from `normalize`; no G invocation in the mixed-difference calculation. |
| `lip` | `normalize`/`lip_error`, then direct `g1b` and `g2`, steps `lip-g1` and `lip-g2`. |
| `real_torus` | `normalize` plus the independent `lagrangian` lemma. |
| `good_actions` | Inverse-frequency identities and reality from `normalize`. |
| `map_lipschitz` | Size and angle derivative from `normalize`, frequency bound from `lip`. |
| `preimage_measure` | Only the G3 field, passed explicitly as `hC3`. |
| `main_measure` | `map_lipschitz`, `real_torus`, and `preimage_measure hD hgc.g3`. |
| `head_of_gValid` | Calls the preceding measure theorem and handles empty/zero cases. |

No G premise occurs on `freq_map`, `hessian_inverse`, `inverse_freq`, `h1`, `unperturbed`, `parameters`, `stab`, `lagrangian` or `coh_unique_zero`. `smallness` needs only positivity. Passing the bundle through a documented predecessor path is acceptable: it is not a claim that `normalize`, for example, directly applies G2 or G3. Some projections are unused in individual consumers, but the bundle contains no result beyond the permitted source inputs. There is no G dependency in the independent frame-stability or Lagrangian arguments.

## Signature inventory

All names in the following tables are in `KAM.Head` except `KAM.Provider.exists_gValid` and the explicitly anonymous checks. The node column abbreviates `bp:p4:` by `p4:` and `bp:p0:` by `p0:`. Definition rows are included so that the inventory also covers the carriers and constants on which the theorem signatures depend.

| Signature (line) | Node or contract | Verdict | Reason |
|---|---|---|---|
| `Hconst` (53) | p4:derivative-bounds | PASS | Exact H-j formula and data-only dependence. |
| `Fconst` (57) | p4:derivative-bounds | PASS | Exact F-j formula; no Hamiltonian dependence. |
| `Mconst` (60) | p4:derivative-bounds | PASS | Exact uniform H1 constant. |
| `derivative_bounds` (64) | p4:derivative-bounds | PASS | All (a)–(d), closed balls, orders 1–3 and conditional ε ≤ 1 block retained; current adapter needed. |
| `torsion_regular` (90) | p4:torsion-regular | PASS | Inverse, derivative, frame, torsion and periodicity clauses retained; all-direction column identity is a valid strengthening. Current adapter needed. |
| `shift` (125) | p4:shift | PASS | Clauses (a)–(e); arbitrary Hamiltonian specialization is legitimate; phase identity implies uniqueness of normalized shift. |
| `mixed_difference` (158) | p4:mixed-difference | PASS | Exact parallelogram hypothesis and Q product bound; no convexity assumption added. |
| `coh_unique_zero` (168) | p1:cohomological adapter | PASS | Holomorphic periodic zero-average homogeneous solution; nonresonance suffices for arbitrary τ. See interface note below. |
| `Data` (178) | p4:sec-data / p0:head | PASS | Frozen standing premises and explicit nondegeneracy witness; no positivity of Lh or boundary regularity invented. |
| `Pert` (193) | p0:head perturbation premises | PASS | Holomorphy, integer periodicity, reality and size bound verbatim. |
| `Layer` (204) | p0:head boundary premise | PASS | Inner layer, strict infDist inequality, every positive width; witness may have either sign. |
| `HeadConclusion` (208) | p0:head | PASS | Exact frozen quantifier order, C√ε cover and Cε^(1/4) outer measure bound. |
| `HeadQConclusion` (223) | p0:headq | PASS | Exact frozen κ-relative measure bound; no boundary premise. |
| `realDomain` (239) | p4:freq-map | PASS | Preimage of action neighbourhood under real inclusion. |
| `gradC` (243) | p4:freq-map | PASS | Complex partial derivatives; agreement with frozen frequencyMap is proved, not assumed. |
| `hessian` (247) | p4:freq-map | PASS | Correct derivative order and matrix carrier. |
| `LambdaG` (251) | p4:freq-map | PASS | max(H2, 2H1/δ*) exactly. |
| `Winf` (255) | p4:freq-map | PASS | H1 exactly. |
| `invFreq` (259) | p4:inverse-freq | PASS | invFunOn guarded by image membership in every analytic use. |
| `actionHessian` (263) | p4:unperturbed | PASS | Both derivatives in action directions. |
| `GConsts` (270) | p4:parameters / preimage-measure | PASS | Exactly six real witnesses; not a package of Part 4 conclusions. |
| `GConsts.Pos` (285) | frozen G1/G2 witnesses | PASS | Exactly five positive constants. |
| `sigmaK` (293) | p4:parameters | PASS | 2+μ. |
| `sigmaB` (296) | p4:parameters | PASS | 2+μ. |
| `sigmaT` (299) | p4:parameters | PASS | 4Lplus Lh+μ. |
| `G1Body` (303) | p0:g1 witness body | PASS | Definitional match to frozen body. |
| `G2Body` (341) | p0:g2 witness body | PASS | Definitional match to frozen body. |
| `GValid` (375) | fixed G1/G2/G3 witness properties | PASS | Exactly the permitted source interfaces; verdict above. |
| `A0` (387) | p4:parameters | PASS | Factor 2 and first G1 closeness constant retained. |
| `lamStar` (391) | p4:parameters | PASS | δ*/(4Lplus Lh). |
| `A1` (394) | p4:parameters | PASS | H3 A0, F2, and 32nA0/s terms retained. |
| `A2` (400) | p4:parameters | PASS | σK+1 phase cost and second G1 denominator retained. |
| `A3` (405) | p4:parameters | PASS | max of near-pair and far-pair constants. |
| `A4` (410) | p4:parameters | PASS | 16nA0/s. |
| `cT` (413) | p4:parameters | PASS | 304n³(M+Winf+1). |
| `etaStar` (417) | p4:parameters | PASS | min(μ, δ²/(16cT Lplus Lh)). |
| `cStar` (421) | p4:parameters | PASS | All eight minimum entries in the blueprint, including G2 and final size constraints. |
| `SA` (435) | p4:SA | PASS | Exactly 0<γ≤1 and 0≤ε≤c*γ⁴. |
| `eta0` (443) | p4:SA | PASS | A0 ε/γ². |
| `OmegaGamma` (446) | p4:SA | PASS | Image intersected with Dio; no frequency-boundary restriction. |
| `IsApplyTorus` (451) | p4:apply | PASS | All seven APPLY properties at s/8; η0/2 closeness. |
| `applyTorus` (465) | p4:normalized-torus | PASS | Choice of APPLY witness; existence is supplied before extracting properties. |
| `normTorus` (471) | p4:normalized-torus | PASS | Phase shift by negative phase average. |
| `normDisp` (478) | p4:normalized-torus | PASS | Kω−K0 at the same selected inverse action. |
| `shiftedTorus` (484) | p4:lip-error | PASS | Adds the real action difference with correct orientation. |
| `layerSet` (491) | p4:good-actions | PASS | infDist ≤ γ on the whole action carrier. |
| `goodActions` (495) | p4:good-actions | PASS | I∈B, distance ≥2γ, and Diophantine frequency. |
| `disp` (501) | p4:good-actions | PASS | Correct values on good actions and zero on boundary layer under SA; arbitrary total extension elsewhere is harmless. |
| `Cmeas` (508) | p4:main-measure | PASS | Exact 2CB+ and (9/2)^n terms with max(C3,0). |
| `freq_map` (517) | p4:freq-map | PASS | All five items, real/complex derivative agreement and bounded image; no convexity of B assumed. |
| `hessian_inverse` (543) | p4:hessian-inverse | PASS | Real-vector lower bound, complex invertibility, real inverse and exact row-sum norm bound. |
| `inverse_freq` (551) | p4:inverse-freq | PASS | Injectivity on closure, inverse estimates, image guards and required left inverse on B. Closure inequality expresses inverse Lipschitzness on its image. |
| `h1` (565) | p4:h1 | PASS | Exact H1 block of both frozen gates. |
| `unperturbed` (583) | p4:unperturbed | PASS | All (a)–(g); correct positive Hessian sign in torsion, averaged perturbation and conditional twist bound. |
| `parameters` (628) | p4:parameters | PASS | Gate side conditions and derived positivity use Data/Pos only, avoiding circular GValid construction. |
| `smallness` (643) | p4:smallness | PASS | All (s1)–(s7), same γ powers, bounds and strict-smallness preparation. |
| `apply` (669) | p4:apply | PASS | G1 at first tuple; image membership supplies inverse action. |
| `stab` (678) | p4:stab | PASS | Exact strip loss, C0 closeness assumptions and (a)–(d); frozen H2–H4 block only conditional on primary/reality. No G premise. |
| `normalize` (713) | p4:normalize | PASS | Preserves G1 margins, adds normalized phase and doubles the allowed displacement to η0. |
| `lip_error` (733) | p4:lip-error | PASS | Near-pair threshold λ*γ², exact action shift and ε/γ² times frequency difference. |
| `lip` (753) | p4:lip | PASS | All pairs, s/32, ε/γ⁴ and A3; no near-pair premise leaked into conclusion. |
| `lagrangian` (763) | p4:lagrangian | PASS | Arbitrary holomorphic primary invariant K, bounded DK; no reality or GValid premise added. |
| `real_torus` (775) | p4:real-torus | PASS | Actual frozen invariant Lagrangian torus predicate and cover; strict action-neighbourhood bound retained. |
| `preimage_measure` (796) | p4:preimage-measure | PASS | Exactly G3 witness property as premise and Lplus^n max(C3,0) α. |
| `good_actions` (805) | p4:good-actions claim | PASS | Image and inverse identities plus complex inclusion of real displacement. |
| `map_lipschitz` (813) | p4:map-lipschitz | PASS | Disjointness, size, and 1/2 bound on precisely the union domain; no global Lipschitz assertion for indicator. |
| `main_measure` (824) | p4:main-measure | PASS | Nonempty B explicit; exact cover and Cmeas γ bound. |
| `head_of_gValid` (834) | p0:head conditional helper | PASS | Data and layer before conclusion constants; no ε≥0 assumption added to frozen root. |
| `headq_of_head` (842) | p0:headq conditional helper | PASS | HEAD on each action domain is available from frozen HEAD; all original HEAD-Q binders retained. |
| `KAM.Provider.exists_gValid` (870) | frozen-source interface construction | PASS | Explicit calls to exactly G1, G1, G2, G3; no downstream analytic assumption. |
| Anonymous HEAD check (882) | p0:head provider assembly | PASS | Elaborates against `type_of% @KAM.kam_positive_measure`. |
| Anonymous HEAD-Q check (891) | p0:headq provider assembly | PASS | Elaborates against `type_of% @KAM.kam_positive_measure_qualitative`. |
| Anonymous G1 plumbing (907) | step:p4:lip-g1 | PASS | h1 and stab output apply directly to g1b after ring width identity. |
| Anonymous G2 plumbing (930) | step:p4:lip-g2 | PASS | Reference side of g2 matches stab at loss s/16; all second-torus premises remain explicit. |

There are no FAIL signatures, so there are no corrected mathematical signatures to supply. The anonymous plumbing checks prove `True` after constructing the relevant applications: they certify application typing only, not the analytic estimates in their sorry-backed inputs.

## Structures, definitions and assembly

**Standing structures: PASS.** The witnesses Lh and CB are fixed outside the perturbation quantifiers. Neither needs a positive-sign premise: `Lplus` and `CBplus` perform the blueprint truncations. `Data` omits global nonemptiness and the layer premise where they are unused. This makes the local lemmas stronger without affecting their proof route; `main_measure` restores nonemptiness and HEAD explicitly splits the empty case. In particular `exists_gValid` is also needed on empty B in the displayed assembly; `freq_map` is vacuous there and M remains positive because its numerator contains `hBound+1`.

**Definitions: PASS on their stated guarded uses.** `invFreq` is only used as an inverse on `frequencyMap h '' B`, or after `good_actions` supplies that membership. `applyTorus` is meaningful after `apply` proves existence. `IsApplyTorus` is used as the selection predicate and conclusion, never assumed as a replacement for APPLY. The indicator in `disp` is only claimed Lipschitz on the union of good actions and the separated boundary layer. It is not the McShane extension, and no argument may use its arbitrary values outside that union as if it were globally Lipschitz. Real/complex inclusions are explicit, and matrix norms use `Matrix.Norms.Operator` consistently with the frozen row sums.

**Assembly: PASS for exact types.** The direct elaboration reruns both §P1 checks against the actual anchors. It preserves the existential nondegeneracy and boundary-layer witnesses, uniform constants before perturbations, and both roots' allowance of arbitrary real ε under the size bound. The planned negative-ε contradiction, empty-domain split and ε=0 limiting argument are required proof work, not extra frozen assumptions. HEAD-Q applies HEAD on inner domains rather than adding boundary regularity to B.

No source defect or frozen-statement defect was found. I did not edit a frozen file or propose changing any frozen type.

## Current interface findings and severity

1. **MEDIUM — stale integration status, not a mathematical signature failure.** Design §2.4, §4–5 and §7.3 describe I-P4B and I-STRIP-3 as missing/running. At audited HEAD the files `KAM/Head/{DerivativeBounds,TorsionRegular,Shift,MixedDifference}.lean` and `KAM/Strip/Cohomological.lean` exist. The scratch file does not import these modules; it supplies same-namespace sorry-backed expected interfaces. Its successful elaboration therefore does not certify integration with them. Refresh the status and provide adapters before landing consumers; do not land duplicate `derivative_bounds`, `torsion_regular` or `mixed_difference` declarations.

   Concrete differences:
   - `DerivativeBounds.lean:47`–57 exports `derivConstH/F/M`, using multiplication by inverse powers; the design uses `Hconst/Fconst/Mconst`, with division by powers. These are equal by elementary field identities, not the same public names. The actual `derivative_bounds` at line 249 has six conjunction blocks, reorders j and point binders, and separates the vector-field bounds; Appendix A has four blocks.
   - `TorsionRegular.lean:67` assumes determinant nonzero, rather than `IsUnit`; its column derivative clause is specialized to the real direction ω. Its torsion block includes the normal-field identity and average identity, and its periodicity block uses `IsZPeriodicOn` and includes `fderiv K`. Convert determinants over ℂ, project/reassemble conjunctions, and use `IsZPeriodicOn.isPeriodicOn` (`TorsionRegularGeneral.lean:45`). For the draft's all-complex-direction column identity, use the derivative of `sumVec_normalFrame` and the matrix derivative API; it is not literally the landed ω-only clause.
   - `Shift.lean:255` exports `phase_shift`, with the Hamiltonian as a binder after `a ω`, rather than draft `shift`'s universally quantified Hamiltonian inside clause (b). The component lemmas already expose the required arbitrary-Hamiltonian identities and transfer properties.
   - `MixedDifference.lean:143` has the same mathematical statement; Q is introduced before `hpar`. Implicit binder placement is not an analytic gap.

   The design's claim that each adapter is at most 30 lines has not been verified. This audit does not certify that estimate.

2. **LOW — the homogeneous cohomological adapter needs the correct API.** Draft `coh_unique_zero` allows arbitrary τ. The landed `KAM.eq_cohSolution` at `Strip/Cohomological.lean:302` inherits `0 ≤ τ`, forcing, strip-loss and bounded-forcing premises from its section at lines 226–231. It cannot simply be applied at the original arbitrary τ without an argument. No such stronger premise should be added to `coh_unique_zero`. A valid route uses `hω.condition.nonresonant hγ`, `torusCoeff_fderiv`, zero average and `Diophantine.solve_unique`, then `eq_zero_of_torusCoeff_holomorphic` (`Strip/FourierBasic.lean:193`). These current APIs justify the broader homogeneous adapter without estimating small divisors or assuming bounded w. This route was inspected, not elaborated as a finished adapter here.

3. **LOW — helper completion must remain distinct from sealing.** All 25 analytic theorem signatures still have sorry bodies in this excluded draft. `exists_gValid` has a real proof body but uses sorry-backed `parameters`, `freq_map` and G1/G2. Passing the exact root-type checks cannot certify any of those premises. Keep the seal gates in §5–6 and obtain clean axiom receipts after replacing the stubs.

4. **LOW — source draft is not a landable module.** It deliberately lacks `module`/`public section`, imports theorem anchors and contains sorry declarations outside Frozen. That is acceptable only as the explicitly requested excluded design test, not a template to copy wholesale into the library. Any landing must install the standard module wrapper, expose the required unfolding bodies, import only frozen definitions in Head modules, and contain proved theorem bodies. The 956-line draft passes the size ceiling; the planned split does not yet establish actual proof-file sizes.

The current Torus carrier and frozen-agreement layer supply the intended tangent, Gram, normal, torsion and averaging dictionary. Existing Head phase-average, cover-monotonicity and dyadic-approximation interfaces support the proposed route. Current `mcshane_prod`, `lipeo_half`, `lip_image_prod` and the row-sum/operator-norm conversion have the required product carriers and constants. No additional conclusion-shaped assumption is needed to bridge those interfaces. The signatures do not require unfinished Part 2 Newton proofs; the only actual G1/G2 exports enter through the provider after sealing.

## Checks and limits

Executed independently in this turn:

- `nice -n 5 lake env lean .drafts/design/Part4Signatures.lean`: exit 0; exactly 25 diagnostics, each ``warning: declaration uses `sorry` ``; no other warnings/errors. Both frozen root-type checks and both G plumbing checks elaborate at default heartbeats.
- `scripts/lint_sources.sh`: exit 0. Output: `check_lean_modules: PASS (234 Lean files, 0 comparator configurations)`, `FROZEN-ANCHOR GUARD OK`, `ABI HASHES OK (144 frozen declarations)`.
- `nice -n 5 lake build KAM.Head.DerivativeBounds`: exit 0. Output includes `Built KAM.Head.HamiltonianField`, `Built KAM.Head.DerivativeBounds`, and `Build completed successfully (2883 jobs).` This was one targeted incremental build, not a root rebuild.
- A temporary permitted probe `.lake/abi-scratch/DsgnP4Audit1.lean` appended four `#print axioms` commands to the unchanged draft text. `nice -n 5 lake env lean .lake/abi-scratch/DsgnP4Audit1.lean`: exit 0, the same 25 sorry warnings, and these receipts:

  ```text
  'KAM.Provider.exists_gValid' depends on axioms: [propext, sorryAx, Classical.choice, Quot.sound]
  'KAM.Head.head_of_gValid' depends on axioms: [propext, sorryAx, Classical.choice, Quot.sound]
  'KAM.Head.headq_of_head' depends on axioms: [propext, sorryAx, Classical.choice, Quot.sound]
  'KAM.volume_not_diophantine_le' depends on axioms: [propext, Classical.choice, Quot.sound]
  ```

The probe is removed. No heartbeat, recursion or synthesis override was used. No state-changing git command was run. Only this report is a deliverable change; no Lean source, manifest, generated root, README or ledger was edited. The original draft SHA-256 was checked. No source-PDF erratum or new mathematical deviation is alleged. Design departures P1–P20 are acceptable representations or justified strengthenings, subject to the integration notes above. Analytic proof completion, adapter elaboration, clean axioms for the remaining main results and future seals remain unverified.
