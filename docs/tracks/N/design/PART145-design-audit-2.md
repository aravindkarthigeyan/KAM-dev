# N Parts 1/4/5 Lean design audit — round 2

**Verdict: PASS WITH FIXES.** F1–F6 are resolved at the signature/import-plan level, and the signatures elaborate successfully. No false or unusable changed signature was found. Before dispatch, correct the blueprint-synchronization claim at the named snapshot and the remaining consumer wording/transport instructions below. The optional sharp branch remains deferred. This is design acceptance with stated coordination fixes, not proof closure.

Date: 2026-10-28. Marker: `dsgn-n145r2`. Auditor: independent of the designer and round-1 auditor.

## Scope, snapshot and method

Focused tier-2 audit using the manuscript-audit skill. Authority: `/root/code/KAM-inp/.drafts/briefs/inp-audit-design.md`, AGENTS.md, PLAN and DECISIONS in the design checkout. Permission envelope: read-only source/design inspection; one elaboration of the named signature source; serial scratch probes; report only at the user-specified main-worktree path. No subagents, network lookup, source repairs or git mutation.

Pinned checkout: `/root/code/KAM-inp-design-n145`, commit `9aa1c4c3c707113527a7ab295776670e1e624aaa`. The design and signatures are byte-identical after extracting Appendix A and normalizing the final newline. The signatures have 1279 lines: 117 theorems, 59 definitions, 7 structures, 183 named declarations. Compared with the first design's Appendix A at `40a5a33`, the only changed declaration bodies/types are coefficients_deriv, SBound, sharp_of_sup_bound and transform; the generic Weighted section additionally gains the finite-dimensional W instance. The module/package narrative changes separately. The inventory below states a **round-2 signature disposition**, not an independent proof audit of 115 sorry bodies.

Read each changed signature and its source; checked the rest of the signature surface for effects of the new codomain restriction, empty/zero-dimensional carriers, signs, widths, and consumer applicability. The first audit's findings were checked rather than treated as acceptance evidence. Probed actual elaborated types by importing the scratch olean generated during the single signature elaboration, not by copying or elaborating the signature source again. Potential findings were challenged against the empty-domain guards, instance inference, staged imports, and the integration checkout before retention.

## Fix-by-fix decisions

| Fix | Verdict | Evidence and closure |
|---|---|---|
| F1 | PASS | Signature L394–397 now starts `0 <= M` and requires nonnegative majorants; L404–407 adds hM0. The former negative-bound witness is impossible for every D, not just D empty. A sorry-free probe derives contradiction from SBound(-1). |
| F2 | PASS | sharp_cauchy_theta L414–417 inherits M>=0 from hb. For n=0 the derivative index set is empty, so the conclusion reduces to 0 <= M/(exp(1)(s0-s)); the denominator is positive. The previous counterexample cannot satisfy its premise. |
| F3 | PASS | L268–273 has separate forall j and forall i conjuncts. Sorry-free consumer probes instantiate the angular statement at n=1,m=0 and the action statement at n=0,m=1, with no impossible opposite-coordinate witness. |
| F4 | PASS | transform L754–785 retains both identities, class and both estimates; adds HasSum for precisely the liftRemainder summand and the WBound partial-sum convergence on the same shrunken domain. No norm bound on h is introduced. The i+1/i+2 factorial indices agree with source j>=1. |
| F5 | PASS | Design L216–286: coth is in Weighted/Norm, qcQ/qcB/qcMu/qcEll in Interfaces/Setting, ConicCoercive has its own completed module, and P1-5 moves to wave 2 after W4-1 and P1-1. QuasiConvex no longer owns the independent linear-algebra file. The Period file is explicitly staged without qc_convert_tilde in P1-4 and extended later in P1-3b; do not add the later QuasiConvex import in its early stage. |
| F6 | PASS | The actual types of coeff_differentiableOn, coefficients_deriv, holomorphic_parametric_integral and cauchy_theta contain [FiniteDimensional C W]. K's regularity theorem requires finite-dimensional source **and target**; both are available. Definitions such as InClass and SBound retain their minimal class parameters; the new section variable is not falsely claimed as a binder of every definition. Consumer instances are verified below. |
| B2 wording | PASS WITH FIXES | Section 4/D3 now name the two intended sup-bound exceptions. Section 6 and the signature-file introductory comment still say every coefficient-reading statement carries 0<s; they should use the same qualified wording. No theorem needs strengthening here. |
| n=0 blueprint sync | PASS WITH FIXES | The singleton argument is mathematically correct, but the claim that it is already in the named checkout's blueprint is false; see R2-01. It is present in integration commit dbcf767. |

F1's optional majorant definition is adequate for these finite-bound targets. A formal equality with an extended-real sum of coefficient suprema remains explicitly deferred until a sharp consumer is admitted; this audit does not certify that absent characterization or the unplanned Part-5 sharp-composition branch.

## Remaining findings and precise fixes

### R2-01 — MEDIUM: synchronization claim does not describe commit 9aa1c4c

Anchor: design L206, “Blueprint-N Parts 1/4 now contain bpN:p4:n-zero ... cases ... nc-decay, nc-sum.” In the pinned worktree, Part 4 has no n-zero label or singleton branch, and Part 1 L206/L208 still invokes K's blueprint results without a dimension split. The source files are unchanged by 9aa1c4c (that commit edits only the design document). This is a reproducible snapshot mismatch, not a refutation of the all-n Lean targets.

Refutation check: the integration worktree **does** contain the promised branches at `dbcf767` (Part 4 n-zero and co-series/co-repr/b1-a/b1-b; Part 1 nc-decay/nc-sum). That commit is not an ancestor of the pinned design checkout. Thus the fix exists upstream but was not synchronized into this audit snapshot. Correct the design to cite dbcf767 as an external prerequisite, or integrate the relevant blueprint changes and repin before dispatch/claiming source closure. Do not add n>=1 to the signatures: their n=0 singleton specializations are valid. K's Lean norm_convert target already covers n=0; the outstanding discrepancy is in the blueprint proof citations.

### R2-02 — LOW, consumer instruction: flow_e is not verbatim on a triple product

Anchor: design L344, “11b: three-block gauge, flow_a..e verbatim.” flow_a..d are generic in finite-dimensional E and apply directly. flow_e at signature L522 onward is explicitly over `(Fin n -> C) x (Fin n -> C)` and the range of realInclusion2. N11b's natural three-block carrier and its coordinatewise real locus are not definitionally that type.

Refutation check: the total dimension is even, so a coordinate regrouping into two blocks of size n+k resolves this without changing an analytic hypothesis; the generic gauge accommodates the regrouped weights. This was already identified in round 1 and is still not spelled out in the consumer row. Replace “a..e verbatim” with “a..d directly; e after an explicit real-preserving coordinate regrouping and uniqueness transport,” or assign a generic real-subspace preservation wrapper. Keep the new N11b symplectic-form proof local as the design already does. No existing signature is false, and the new finite-dimensional binder does not obstruct this transport.

### R2-03 — LOW: finish the B2 wording update consistently

The qualified Section-4 sentence is correct: sup_le_wbound and sharp_sup_le have no positive-strip hypothesis; for n>0,s<=0 their conclusion is vacuous, while for n=0 it is the singleton bound. The signature comment L129–131 and Section 6's B2 conclusion still use “every statement.” Make those sentences agree with Section 4. This is documentation only; no corrected Lean signature is required.

**Pre-existing coordination boundary, not a new false theorem:** Part 3's design still advertises `KAM.Nekhoroshev.ODE.Data`/Wdom, while this file declares the single owners in `KAM.Nekhoroshev`. Section 0.6 explicitly plans this migration. Update the Part 3 qualified references/import authority or add forwarding abbreviations before prover dispatch; do not create a second Data structure. This round does not count a planned migration as an already completed production change.

## K reuse, codomain instances and consumers

| Surface | Verdict and actual applicability |
|---|---|
| K coefficient decay | PASS: torusCoeffW and decay/decay_boundary_radius are W-valued with complete complex/real scalar-tower data. Coefficient width is 2pi times geometric width. |
| K scalar Fourier reconstruction/convolution | PASS as ingredients: summableWeighted_torusCoeff, eq_fourierSum_torusCoeff, norm_fourierSum_le and convolution are scalar. The design still owes the declared W-valued duality and parameter arguments; no W-valued reconstruction is imported by renaming a scalar theorem. |
| K angular derivative | PASS: weightedNorm_partialCoeff_le has coefficient loss factor 2pi/(e delta). With delta=2pi sigma it gives 1/(e sigma). The main cauchy_theta sums pointwise in I before the action supremum; only the optional sharp theorem sums global norms. |
| K regularity | PASS after F6: holomorphic_regularity_of_finiteDimensional (Bridges L101) needs finite-dimensional domain and codomain. The coordinate source, its products, finite vectors/matrices and their continuous-linear-map spaces meet that requirement. |
| K Cauchy and uniform limits | PASS as a proof plan: norm_fderiv_le_of_closedBall_bound has the required closed-ball containment/positive-radius hypotheses; general_cauchy is the new limit-in-radius corollary. uniform_limits requires derivative convergence as well as pointwise convergence. W4-2 explicitly derives derivative convergence by Cauchy; the existing result alone is not the new Weierstrass theorem. |
| K real restriction / Taylor | Scope retained: real_restriction is strip/torus-specific. Arbitrary-open-domain holo_real uses hamiltonian_real_fderiv/hamiltonian_real or direct scalar restriction as planned. Taylor/increments are not a pre-existing integral Taylor remainder of every order; C5-6 remains new work. |
| N6/7, N9/10 and P2/P3 | PASS for the amended APIs: scalar functions, finite coordinate derivatives and finite phase spaces satisfy F6. Transform now supplies norm convergence as well as its pointwise identity, exactly what averaging/normal-form consumers need. |
| N11a–c/N12 | F6 PASS: extra action parameters do not change the finite codomain requirement; scalar coefficients or finite coordinate maps suffice. Flow's variational integrals use finite-dimensional continuous-linear-map spaces. Reality requires the R2-02 transport, and Part 12's general real-C1 dependence result remains separate. |
| P11/P11a2 | F6 PASS: parameter coefficient integrals are scalar or finite vectors; the extra stationary parameter block is finite-dimensional. Uniform field bounds and parameter/affine-map structure still belong to the consumer proof, not to a hidden stronger flow conclusion. |

The scratch probe verified FiniteDimensional C for `Fin 3 -> C`, finite nested matrices, a product of coordinate spaces, and the continuous-linear-map space on that product. It also checked 47 named K/Mathlib declarations. Limits, Taylor and Increments were explicitly imported in the probe (as required by the round-1 discovery); these names are not falsely claimed to be exported by the signature file's smaller import list. The optional unbuilt Cohomological import was not added or built; its scalar torusCoeff_fderiv route remains a source-inspected/prover choice rather than a new live #check receipt.

## Frozen objects, definitions and packages

PASS for source/carrier correspondence in this delta. Read the frozen bodies for action/complex/real domains, analytic integrable/perturbation membership, derivative/Hessian/quasi-convexity bounds, realPart and IsSolutionOn, plus the shared fields/realHamiltonian/frequencyMap. The draft uses the frozen field and predicates, with the differentiability guard and two-sided derivatives. No extra frozen premise, parallel solution predicate, global norm instance or unguarded frozen denominator is introduced. symplFormC remains an explicit complexification, not a replacement frozen real form.

The corrected SBound guards the formerly problematic empty set and negative majorant; WBound's deliberately vacuous empty-domain convention remains distinct. F3 covers independently empty angle/action index types. The package DAG corrections in F5 remove the old numerical-definition dependency on late analytic modules; individual module estimates remain <=800 lines (largest combined package is explicitly split), and the signature file is 1279 lines. Endpoint slack, generic-gauge restrictions, the real-coordinate transport and Part 3 migration remain implementation obligations, not paid proofs.

## Signature-by-signature round-2 inventory

One row per named declaration, current signature-file line. “Unchanged” is mechanically checked against the first design's exact Appendix A, not a statement that its sorry body has been proved. All four changed declarations and the affected generic-W analytic surface were checked afresh as described above. No signature FAIL remains, so there is no corrected-signature block to propose.

| Lean declaration (line) | Blueprint label | Verdict | Round-2 reason |
|---|---|---|---|
| `KAM.Canonical.poissonBracket` (67) | `bpN:p5:setting` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Canonical.adPow` (72) | `bpN:p5:setting` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Canonical.scaledNorm` (79) | `bpN:p5:setting` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Canonical.scaleCLE` (82) | `bpN:p5:setting` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Canonical.norm_scaleCLE` (87) | `bpN:p5:setting` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Canonical.symplFormC` (92) | `bpN:p5:setting` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Canonical.poissonBracket_eq_fderiv_field` (95) | `bpN:p5:setting` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Canonical.poissonBracket_antisymm` (99) | `bpN:p5:setting` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Canonical.differentiableOn_poissonBracket` (103) | `bpN:p5:setting` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Canonical.differentiableOn_adPow` (107) | `bpN:p5:setting` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Canonical.poissonBracket_eq_zero_of_snd` (112) | `bpN:p5:setting` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Canonical.RealOn` (117) | `bpN:p5:setting` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Weighted.polyNbhd` (142) | `bpN:p4:domains` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Weighted.Dom` (145) | `bpN:p4:domains` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Weighted.polydisc` (149) | `bpN:p4:domains` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Weighted.isOpen_polyNbhd` (152) | `bpN:p4:domains` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Weighted.isOpen_Dom` (154) | `bpN:p4:domains` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Weighted.polyNbhd_mono` (156) | `bpN:p4:domains` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Weighted.Dom_mono` (159) | `bpN:p4:domains` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Weighted.polydisc_subset_Dom` (163) | `bpN:p4:domains` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Weighted.actionNbhd_eq_polyNbhd` (168) | `bpN:p4:domains` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Weighted.InClass` (174) | `bpN:p4:norm` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Weighted.coeff` (179) | `bpN:p4:norm` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Weighted.modeWeight` (183) | `bpN:p4:norm` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Weighted.wsum` (186) | `bpN:p4:norm` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Weighted.WSummable` (189) | `bpN:p4:norm` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Weighted.WBound` (193) | `bpN:p4:norm` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Weighted.HasFiniteWNorm` (196) | `bpN:p4:norm` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Weighted.wnorm` (200) | `bpN:p4:norm` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Weighted.wbound_iff` (203) | `bpN:p4:norm` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Weighted.WBound.mono` (208) | `bpN:p4:norm` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Weighted.wbound_pi_apply` (213) | `bpN:p4:norm` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Weighted.wbound_pi_of_components` (218) | `bpN:p4:norm` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Weighted.holomorphic_parametric_integral` (225) | `bpN:p4:ext-param` | PASS | Unchanged target; finite-dimensional analytic-codomain restriction is available to consumers. |
| `KAM.Weighted.general_cauchy` (234) | `bpN:p4:general-cauchy` | PASS | Unchanged target; finite-dimensional analytic-codomain restriction is available to consumers. |
| `KAM.Weighted.uniform_limit_holomorphic` (241) | `bpN:p4:ext-weier` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Weighted.dtheta` (252) | `bpN:p4:coefficients` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Weighted.dI` (255) | `bpN:p4:coefficients` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Weighted.fourierSeries` (259) | `bpN:p4:coefficients` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Weighted.coeff_differentiableOn` (263) | `bpN:p4:coefficients` | PASS | Unchanged target; finite-dimensional analytic-codomain restriction is available to consumers. |
| `KAM.Weighted.coefficients_deriv` (268) | `bpN:p4:coefficients` | PASS | F3 closed: angular/action forall families are independent, including m=0 or n=0. |
| `KAM.Weighted.coefficients_series` (276) | `bpN:p4:coefficients` | PASS | Unchanged target; finite-dimensional analytic-codomain restriction is available to consumers. |
| `KAM.Weighted.coefficients_repr` (287) | `bpN:p4:coefficients` | PASS | Unchanged target; finite-dimensional analytic-codomain restriction is available to consumers. |
| `KAM.Weighted.coth` (295) | `bpN:p4:sup-weighted` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Weighted.sup_le_wbound` (298) | `bpN:p4:sup-weighted` | PASS | Unchanged target; finite-dimensional analytic-codomain restriction is available to consumers. |
| `KAM.Weighted.wbound_of_sup_bound` (304) | `bpN:p4:sup-weighted` | PASS | Unchanged target; finite-dimensional analytic-codomain restriction is available to consumers. |
| `KAM.Weighted.coeff_mul` (311) | `bpN:p4:algebra` | PASS | Unchanged target; finite-dimensional analytic-codomain restriction is available to consumers. |
| `KAM.Weighted.wbound_mul` (320) | `bpN:p4:algebra` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Weighted.wbound_pow` (324) | `bpN:p4:algebra` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Weighted.cauchy_theta` (332) | `bpN:p4:cauchy` | PASS | Unchanged target; finite-dimensional analytic-codomain restriction is available to consumers. |
| `KAM.Weighted.cauchy_action` (339) | `bpN:p4:cauchy` | PASS | Unchanged target; finite-dimensional analytic-codomain restriction is available to consumers. |
| `KAM.Weighted.cauchy_loss` (344) | `bpN:p4:cauchy` | PASS | Unchanged target; finite-dimensional analytic-codomain restriction is available to consumers. |
| `KAM.Weighted.wbound_bracket` (353) | `bpN:p4:bracket` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Weighted.projMode` (365) | `bpN:p4:projections` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Weighted.truncate` (370) | `bpN:p4:projections` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Weighted.modeAverage` (374) | `bpN:p4:projections` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Weighted.projections` (377) | `bpN:p4:projections` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Weighted.truncation_tail` (385) | `bpN:p4:projections` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Weighted.SBound` (394) | `bpN:p4:sharp` | PASS | F1 closed: both M and all coefficient majorants are nonnegative, including the empty action domain. |
| `KAM.Weighted.wbound_of_sbound` (398) | `bpN:p4:sharp` | PASS | Rechecked with corrected SBound; optional/deferred sharp branch. |
| `KAM.Weighted.sharp_sup_le` (401) | `bpN:p4:sharp` | PASS | Rechecked with corrected SBound; optional/deferred sharp branch. |
| `KAM.Weighted.sharp_of_sup_bound` (404) | `bpN:p4:sharp` | PASS | F1 propagation closed: explicit hM0 ensures a nonnegative sharp bound on empty domains. |
| `KAM.Weighted.sharp_mul` (409) | `bpN:p4:sharp` | PASS | Rechecked with corrected SBound; optional/deferred sharp branch. |
| `KAM.Weighted.sharp_cauchy_theta` (414) | `bpN:p4:sharp` | PASS | Rechecked with corrected SBound; optional/deferred sharp branch. |
| `KAM.Weighted.sharp_cauchy_action` (419) | `bpN:p4:sharp` | PASS | Rechecked with corrected SBound; optional/deferred sharp branch. |
| `KAM.Weighted.sharp_bracket` (423) | `bpN:p4:sharp` | PASS | Rechecked with corrected SBound; optional/deferred sharp branch. |
| `KAM.Weighted.sharp_projections` (431) | `bpN:p4:sharp` | PASS | Rechecked with corrected SBound; optional/deferred sharp branch. |
| `KAM.Canonical.gaugeInterior` (455) | `bpN:p5:flow` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Canonical.flow` (460) | `bpN:p5:flow` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Canonical.SmallField` (465) | `bpN:p5:flow` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Canonical.isOpen_gaugeInterior` (473) | `bpN:p5:flow` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Canonical.gaugeInterior_mono` (476) | `bpN:p5:flow` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Canonical.ball_subset_gaugeInterior` (480) | `bpN:p5:flow` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Canonical.flow_a` (486) | `bpN:p5:flow` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Canonical.flow_b` (495) | `bpN:p5:flow` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Canonical.flow_c` (506) | `bpN:p5:flow` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Canonical.flow_d` (513) | `bpN:p5:flow` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Canonical.flow_e` (522) | `bpN:p5:flow` | PASS | Unchanged valid two-block reality target; three-block transport is required (R2-02). |
| `KAM.Canonical.differentiableOn_hamField` (536) | `bpN:p5:vf-bound` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Canonical.vf_bound` (541) | `bpN:p5:vf-bound` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Canonical.symplectic` (552) | `bpN:p5:symplectic` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Canonical.canonical_bracket` (564) | `bpN:p5:canonical` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Canonical.canonical_field` (578) | `bpN:p5:canonical` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Canonical.canonical_orbit` (590) | `bpN:p5:canonical` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Canonical.lie_derivative` (606) | `bpN:p5:lie-derivative` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Canonical.taylor_lie` (620) | `bpN:p5:taylor` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Canonical.taylor_poschel` (636) | `bpN:p5:taylor` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Canonical.adjoint_bound` (652) | `bpN:p5:adjoint` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Canonical.ComposeData` (665) | `bpN:p5:composition` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Canonical.ComposeData.omega` (679) | `bpN:p5:composition` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Canonical.ComposeData.gauge` (683) | `bpN:p5:composition` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Canonical.composition_domain` (689) | `bpN:p5:composition` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Canonical.composition_series` (699) | `bpN:p5:composition` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Canonical.composition_t` (715) | `bpN:p5:composition` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Canonical.composition_real` (724) | `bpN:p5:composition` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Canonical.composition_integral` (732) | `bpN:p5:composition-integral` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Canonical.liftRemainder` (748) | `bpN:p5:transform` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Canonical.transform` (754) | `bpN:p5:transform` | PASS | F4 closed: pointwise HasSum plus convergence of the literal remainder partial sums in WBound, with original bounds retained. |
| `KAM.Canonical.CanonData` (784) | `bpN:p5:canonical-map` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Canonical.CanonData.omega` (794) | `bpN:p5:canonical-map` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Canonical.CanonData.gauge` (797) | `bpN:p5:canonical-map` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Canonical.canonical_map_a` (802) | `bpN:p5:canonical-map` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Canonical.canonical_map_b` (819) | `bpN:p5:canonical-map` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Canonical.canonical_map_c` (830) | `bpN:p5:canonical-map` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Canonical.canonical_map_d` (837) | `bpN:p5:canonical-map` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Canonical.canonical_map_e` (844) | `bpN:p5:canonical-map` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Nekhoroshev.euclid` (864) | `bpN:p1:norm-compare` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Nekhoroshev.norm_le_euclid` (867) | `bpN:p1:norm-compare` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Nekhoroshev.modeSize_euclid_compare` (872) | `bpN:p1:norm-compare` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Nekhoroshev.lattice_ball_inclusions` (876) | `bpN:p1:norm-compare` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Nekhoroshev.bilinear_euclid_bound` (882) | `bpN:p1:norm-compare` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Nekhoroshev.Data` (891) | `bpN:p1:s-holo#data` | PASS | Unchanged frozen-object interface; Part 3 qualified-name migration remains explicit. |
| `KAM.Nekhoroshev.Wdom` (899) | `bpN:p1:s-holo#data` | PASS | Unchanged frozen-object interface; Part 3 qualified-name migration remains explicit. |
| `KAM.Nekhoroshev.realActionDomain_eq` (905) | `bpN:p1:realdomain` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Nekhoroshev.isOpen_realActionDomain` (908) | `bpN:p1:realdomain` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Nekhoroshev.ball_subset_realActionDomain` (911) | `bpN:p1:realdomain` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Nekhoroshev.isOpen_Wdom` (914) | `bpN:p1:realdomain` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Nekhoroshev.realInclusion₂_preimage_complexDomain` (917) | `bpN:p1:realdomain` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Nekhoroshev.isOpen_actionNbhd_ball` (921) | `bpN:p1:realdomain` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Nekhoroshev.isOpen_complexDomain` (923) | `bpN:p1:realdomain` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Nekhoroshev.realInclusion_preimage_actionNbhd` (925) | `bpN:p1:realdomain` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Nekhoroshev.tube_subset` (929) | `bpN:p1:realdomain` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Nekhoroshev.tube_real` (933) | `bpN:p1:realdomain` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Nekhoroshev.complexStrip_mono` (938) | `bpN:p1:realdomain` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Nekhoroshev.complexStrip_zero` (941) | `bpN:p1:realdomain` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Nekhoroshev.holo_real_a` (948) | `bpN:p1:holo-real` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Nekhoroshev.holo_real_b` (955) | `bpN:p1:holo-real` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Nekhoroshev.complexHessian` (970) | `bpN:p1:holo-real` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Nekhoroshev.holo_real_c` (974) | `bpN:p1:holo-real` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Nekhoroshev.holo_real_d` (989) | `bpN:p1:holo-real` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Nekhoroshev.holo_real_e` (1001) | `bpN:p1:holo-real` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Nekhoroshev.holo_input` (1008) | `bpN:p3:holo-input` | PASS | Unchanged frozen-object interface; Part 3 qualified-name migration remains explicit. |
| `KAM.Nekhoroshev.partials` (1020) | `bpN:p1:partials` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Nekhoroshev.hessian_convert` (1031) | `bpN:p1:hessian-convert` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Nekhoroshev.conic_coercive` (1041) | `bpN:p1:conic-coercive` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Nekhoroshev.qcQ` (1049) | `bpN:p1:qc-convert` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Nekhoroshev.qcB` (1050) | `bpN:p1:qc-convert` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Nekhoroshev.qcMu` (1051) | `bpN:p1:qc-convert` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Nekhoroshev.qcEll` (1052) | `bpN:p1:qc-convert` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Nekhoroshev.qc_convert` (1055) | `bpN:p1:qc-convert` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Nekhoroshev.periodLift` (1071) | `bpN:p1:period-convert` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Nekhoroshev.tildeH` (1075) | `bpN:p1:period-convert` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Nekhoroshev.tildeh` (1079) | `bpN:p1:period-convert` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Nekhoroshev.tildef` (1082) | `bpN:p1:period-convert` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Nekhoroshev.realHamiltonian_tilde` (1086) | `bpN:p1:period-convert` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Nekhoroshev.isSolutionOn_tilde_iff` (1090) | `bpN:p1:period-convert` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Nekhoroshev.frequencyMap_tildeh` (1095) | `bpN:p1:period-convert` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Nekhoroshev.fderiv_fderiv_realPart_tildeh` (1098) | `bpN:p1:period-convert` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Nekhoroshev.tilde_hypotheses` (1103) | `bpN:p1:period-convert` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Nekhoroshev.qc_convert_tilde` (1113) | `bpN:p1:qc-convert (scaling)` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Nekhoroshev.tildef_domain` (1122) | `bpN:p1:period-convert` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Nekhoroshev.tildef_periodic` (1130) | `bpN:p1:period-convert` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Nekhoroshev.tildef_fourier` (1137) | `bpN:p1:period-convert` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Nekhoroshev.norm_convert` (1147) | `bpN:p1:norm-convert` | PASS | Exact K reuse elaborates, including n=0; blueprint synchronization caveat R2-01. |
| `KAM.Nekhoroshev.norm_convert_converse` (1158) | `bpN:p1:norm-convert` | PASS | Exact K reuse elaborates, including n=0; blueprint synchronization caveat R2-01. |
| `KAM.Nekhoroshev.HeadParams` (1172) | `bpN:p1:constants` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Nekhoroshev.HeadParams.Pos` (1181) | `bpN:p1:constants` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Nekhoroshev.HeadHyp` (1190) | `bpN:p1:constants` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Nekhoroshev.HeadParams.expo` (1197) | `bpN:p1:constants` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Nekhoroshev.HeadParams.q` (1198) | `bpN:p1:constants` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Nekhoroshev.HeadParams.B` (1199) | `bpN:p1:constants` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Nekhoroshev.HeadParams.mu` (1200) | `bpN:p1:constants` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Nekhoroshev.HeadParams.ell` (1201) | `bpN:p1:constants` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Nekhoroshev.HeadParams.r0` (1202) | `bpN:p1:constants` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Nekhoroshev.HeadParams.A` (1204) | `bpN:p1:constants` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Nekhoroshev.HeadParams.s0` (1205) | `bpN:p1:constants` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Nekhoroshev.HeadParams.sigma` (1206) | `bpN:p1:constants` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Nekhoroshev.HeadParams.F` (1207) | `bpN:p1:constants` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Nekhoroshev.HeadParams.epsStar` (1208) | `bpN:p1:constants` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Nekhoroshev.HeadParams.C` (1210) | `bpN:p1:constants` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Nekhoroshev.HeadParams.c` (1211) | `bpN:p1:constants` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Nekhoroshev.HeadParams.T` (1213) | `bpN:p1:constants` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Nekhoroshev.HeadParams.eps0` (1214) | `bpN:p1:constants` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Nekhoroshev.centralSet` (1217) | `bpN:p1:constants` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Nekhoroshev.const_pos` (1221) | `bpN:p1:constants` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Nekhoroshev.const_eps0` (1225) | `bpN:p1:constants` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Nekhoroshev.const_size` (1229) | `bpN:p1:constants` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Nekhoroshev.const_tubes` (1234) | `bpN:p1:constants` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Nekhoroshev.const_hyp` (1241) | `bpN:p1:constants` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Nekhoroshev.const_perturbation` (1252) | `bpN:p1:constants` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Nekhoroshev.const_exceptional` (1259) | `bpN:p1:constants` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Nekhoroshev.const_time` (1267) | `bpN:p1:constants` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |
| `KAM.Nekhoroshev.const_conclusion` (1274) | `bpN:p1:constants` | PASS | Unchanged declaration; no adverse effect from F1–F6; retained design target. |

## Verification receipts and limitations

The signature source was elaborated **once**, serially, with default resource limits:

```sh
LEAN_NUM_THREADS=2 nice -n 5 lake env lean --root=.drafts/design \
  -o .lake/abi-scratch/NPart145Signatures.olean \
  .drafts/design/NPart145Signatures.lean
```

Exit 0, wall 15.475 s, maximum child RSS 1,807,568 KiB; exactly 115 `warning: declaration uses sorry`, no other diagnostics. The `--root`/`-o` options only give the scratch module an importable name and output location. Two subsequent probes import that olean: the first checks K/Mathlib names, instance synthesis and the F1/F3 regression cases (exit 0, 13.424 s, no diagnostics); the second prints the actual type telescopes (exit 0), confirming the F6 binder. Neither re-elaborates the signature source. Every Lean invocation used `nice -n 5`, LEAN_NUM_THREADS=2, and ran serially within this audit; no build, clean, update, cache download or heartbeat override was used. The host's other jobs were not killed or changed; the main signature elaboration was started after the process check found no other lean/lake/leanchecker job.

`LEAN_NUM_THREADS=2 nice -n 5 sh scripts/lint_sources.sh`: exit 0:

```text
check_lean_modules: PASS (243 Lean files, 0 comparator configurations)
FROZEN-ANCHOR GUARD OK
ABI HASHES OK (144 frozen declarations)
```

No main proof result was authored and no #print-axioms proof-closure receipt is claimed for this sorry-bearing design. No paper erratum was newly verified. The two previously recorded source issues remain: Part 5's prose `T_- > -1` should be `T_- < -1`, and Part 4's attribution of the sharp norm to current P averaging is stale. These are inherited/source-checked prose issues, not a fresh pinned-PDF audit.

## Input manifest

All paths are in the pinned design worktree unless absolute. The hashes below distinguish the audited blueprint snapshot from the independently inspected integration copy.

| Input | SHA256 |
|---|---|
| `.drafts/design/NPart145Signatures.lean` | `1db3ad2b05ea000a814403bb7c3f60a8aa300db91e612d94184ef3245991ee53` |
| `docs/tracks/N/design/PART145-LEAN-DESIGN.md` | `fc01c808189ec793902bd35127fbe6cf9379fa994357eae9464cfc046f057f02` |
| `blueprint-N/parts/p1-interfaces.tex` | `9cdb9533aa22de5c31ad2edcc9af8e391dbd7588a50563dc0d90aa594adb5caa` |
| `blueprint-N/parts/p4-weighted-norms.tex` | `ef713786581a34855a4e6c3ad1eec69e2eb81ce61b1632990f7bbc5c52ff15b7` |
| `blueprint-N/parts/p5-canonical-maps.tex` | `40560931653c109631d9edbebe453856a49dbb925002536cefc423aa15e01db0` |
| `/root/code/KAM-inp/docs/tracks/N/design/PART145-design-audit-1.md` | `7492d710f4ad5a7f7ae27975a20f4a2a8cba73bfd9bbd71d76a2646e772404a4` |

Additional inspected reuse/consumer/frozen-definition inputs at the pinned revision:

```text
14e37768795f6884f92de1526a5064bee4610f29c25d61d05774b67b9c1bb21c  KAM/Strip/Bridges.lean
852cfd7a351db8a2a2b09efd00bc403a72fb447e71ff308de8f6eb24a743a707  KAM/Strip/FourierBasic.lean
7d5b094a0d89191b5b8db011c7ff835510b15e5fd0e6cf00fa494eee9647701c  KAM/Strip/FourierSeries.lean
7155cd49c76ca7562dc94f555d8ac1f9e3b19aa2b64eb508071e9c3db6d83f0c  KAM/Strip/Cauchy.lean
ad2a7bf9aa6b60db2c0971d3d87d90b8ad4b2c96d363b190a0e37e77eac352e6  KAM/Strip/Limits.lean
75975d9ba03b430430b095c7bbb2e361bb06532d94b31ad45ca555172f293261  KAM/Strip/RealRestriction.lean
1cc2e3fa6d67ecb9e26978fc7b0c0d0ea037f80f5b88219081cb435e37ba8e47  KAM/Strip/Taylor.lean
fc612f47bed15c922d0f860c900cfd230e0faf87171cc2f4864fc5f5673ae1e1  KAM/Strip/Increments.lean
e5ab2a52b519c9956a17a0423cfdbffda5233b6b2fad16c4d833a1e7a12c2f59  KAM/Fourier/Convolution.lean
d6fd0881d1385371a8eb3c68da0791e76ef5fc21ded3daacbed6e339784a551d  KAM/Fourier/Derivative.lean
670a2fbd87ede11c231a453bbf92a999bac4fb57b468dfbbdd5f975fe87bd07e  KAM/Fourier/ExpSums.lean
7d0c8fa8dbd06dbc76d22541d861bd7c2724c0843d6486e34d13709f49e7c30c  blueprint-N/parts/p11b-partial-nf.tex
771846a22aad4b598a41881dafb191fc005de7bdbfd4cf1af5145c52508a8b7c  docs/tracks/N/design/PART3-LEAN-DESIGN.md
b81a9c8327d0857988c0f93b08b92dcc3a09258345dafab3cae4793dd1db4e88  lake-manifest.json
ca5f1f601d34c49079e38d7e7041eb0f2a9c227fbc1df0f404820069a052330c  lean-toolchain
713ef4f9a008415621d3ba53c738561c6c65ffb9a8d9e980f900e3f1432851f8  KAM/Frozen/Nekhoroshev/Defs/IntegrableOrbit.lean
3ffb3341ecdc4b29627300246a9b1c5f01cec0abb931a128f9919f27fbd6bad7  KAM/Frozen/Nekhoroshev/Defs/IsAnalyticIntegrable.lean
14ea3a474b0bb0f64c4bb6edf711b780c712c85c4fb5c2ee1b2798dd91f01a87  KAM/Frozen/Nekhoroshev/Defs/HasComplexHessianBound.lean
6dd005609acd4dcb1d7d7766da331752f2b4641f5811b2a2ed592a82ba11a122  KAM/Frozen/Nekhoroshev/Defs/ActionBall.lean
c5a871146b08a4158b348adb2e65f738e2fbecbe1299294e9183b4c54c400b47  KAM/Frozen/Nekhoroshev/Defs/PartialComplexDomain.lean
c26d3ca9660dcc5d35eeffd26ac391b7ac9f87917e5e8befaaef9e92fe5ab5df  KAM/Frozen/Nekhoroshev/Defs/IsStrictlyQuasiConvex.lean
858dba45a125697b4e91206cbc80064c55923f7d129466770e0636eccbcebcb5  KAM/Frozen/Nekhoroshev/Defs/RealActionDomain.lean
0067a88dd3bd98a8e1e287e0ef9bea4fed23c32ac45975fa05664f398278b320  KAM/Frozen/Nekhoroshev/Defs/ComplexifyPhase.lean
ae6742b3cc3b97ed7f206e79dcb2b2f8ab7d7ab91552be61fd932a3b20bec129  KAM/Frozen/Nekhoroshev/Defs/IsSolutionOn.lean
4ff02420fabd4c7f01b6b3a99aad7166cd49142dc33442fb55fe1930373be3b3  KAM/Frozen/Nekhoroshev/Defs/AveragingError.lean
7c1462ee3640419d4f1cab9ec56ad5bead3d666cdac936ef09ac2cc7417e121c  KAM/Frozen/Nekhoroshev/Defs/HasAveragingFrequencyRank.lean
253dce379acf8e27cb809da4f33a82a47d3f508b31218e76330e8530f7e521d0  KAM/Frozen/Nekhoroshev/Defs/IsAnalyticPerturbation.lean
1176d3c7e12c86a2870e1d434bcf95c83d692fa3893982d801a54f4cf0057d98  KAM/Frozen/Nekhoroshev/Defs/PartialDriftExponent.lean
57325c038cebd2da50eaae24ed31ffeff556cbcc5dad97751678733a78c189d8  KAM/Frozen/Nekhoroshev/Defs/IsPartialPerturbation.lean
85abbe30196fa629c9be922f13e67fdf591a9d435d94e92a0e0e701c6dde1e7b  KAM/Frozen/Nekhoroshev/Defs/RealPart.lean
da53bc81b53fc409a13f6efe6dffd4adb50d4a09c6f663fc283896d0868afc87  KAM/Frozen/Nekhoroshev/Defs/HasDerivativeBounds.lean
00b318c5378b25c6fb3bf6b53da3d3c34eb150c3ed19f69b562ca472e4b221c3  KAM/Frozen/Nekhoroshev/Defs/HasDefiniteFastPart.lean
68468aed44112d7d629986cc84eec531fc1ba1ae0b6a294acaa70c1777603cf8  KAM/Frozen/Nekhoroshev/Defs/ComplexDomain.lean
5572389e81b1796cead789c8a390ff0f6acba16d10c0ec7039c98cff8544a626  KAM/Frozen/Nekhoroshev/Defs/InnerCore.lean
3bfefe0e644df4b167aa74da1f2be6040e781e5544b09b4c899254f074ea5734  KAM/Frozen/Nekhoroshev/Defs/PartialTimeExponent.lean
1592cf15aadef80f7e2017860494a1e067de8698ff8f6075c055a2d138877a79  KAM/Frozen/Defs/HamiltonianVectorField.lean
6943acf3f4c92ac007afeb274bd6f82ae422279617ca433d8c84898341d0edf5  KAM/Frozen/Defs/HamiltonianVectorFieldC.lean
d2e526b9c26f37128281d928c668b6ae14c389f5ef63007634c1985e1ac6e2a4  KAM/Frozen/Defs/RealHamiltonian.lean
a1f9fe8cb6281f57cc68cfcbc5b7c3020bd207d681b45665e7c31ebd8593ee8f  KAM/Frozen/Defs/FrequencyMap.lean
e09d35d4c4c71ad6dad5dfb1995c842840f1c35bffbd3494bb6ff62f78c3da99  KAM/Frozen/Defs/ComplexStrip.lean
a3d0fe1c21946ded08e554c696710a795fc45cd67a1948c31887a850abb5ba80  KAM/Frozen/Defs/ActionNbhd.lean
```

Closeout: F1–F6 verified; all 183 named declarations classified for this round; one signature-source elaboration completed; serial API/regression/type probes and lint passed. Required follow-up is R2-01 plus the stated consumer/documentation coordination, not a stronger hypothesis on the mathematical theorems. No signatures, sources, frozen files, manifests or graphs were repaired by this auditor.

Scratch cleanup: the two probe sources and all five artifacts generated by the single signature compilation were deleted. Signature/design hashes and pinned HEAD were unchanged; the design checkout remains git-clean. The sole persistent authored artifact is this report in the main inp worktree. Direct report inventory and whitespace checks PASS.
