# I2-4 independent audit 1

**PASS WITH NOTES for `bpI:p2:newton-error`, `KAM.Iso.Apost.newton_error`.** All six conclusions match the blueprint and the exact design signature; no material mathematical, hypothesis, definition or axiom defect found. Build, exact-signature application and kernel replay pass. This infrastructure package does not seal a frozen anchor. The strict protected-path empty-diff check **FAILS for inherited generated KAM.lean changes**. Full lint exits 1 solely for the stale-root diagnostic explicitly allowed in the brief. Neither integration observation is concealed by the mathematical verdict.

## Scope and frozen-v1 inputs

Independent tier-2 refute-first audit, 2026-10-28. Authority: AGENTS.md, docs/PLAN.md, docs/DECISIONS.md, `/root/code/KAM-inp/.drafts/briefs/inp-audit-package.md`, and the user's explicit destination and resource restrictions. Read those documents, the I2-4 handoff, Track I statement, frozen Iso theorem declarations and relevant definitions, design v2 §7/§B4, both design reviews, and blueprint Parts 1–3. User authority overrides the brief's generic main-worktree destination: this report belongs at `/root/code/KAM-inp-i24/docs/tracks/I/audits/I2-4-audit-1.md`. Only this report is a repository edit. No source repair, generated-file edit, git mutation, cache operation or broad rebuild was performed. Audit scratch files/logs were confined to `.lake/abi-scratch/` and removed after incorporation here.

HEAD is `7248f542c9297c33c317cddcf3da1b53c23580a6`; inp is `1e19678d78a3de729f7429444de8252df8d6b487`. Requested comparison: `git diff inp...HEAD`, which emits:

```text
warning: inp...HEAD: multiple merge bases, using dc4ffb73ca450595b9784a07649ce34e339805db
```

`git merge-base --all inp HEAD` also lists `0805974335892d77db7eae97b4c19706050df578`. I used the requested comparison, not a silently substituted handoff baseline. The handoff's `inp-i23...HEAD` currently produces the same 14-file stat. The requested diff contains five new implementation modules (1578 lines), six generated root imports and eight earlier audit/handoff documents: 14 files, 2591 insertions. NewtonError is I2-4's primary implementation; the other four modules were also inspected and checked. Earlier audit documents are historical evidence, not substitutes for independent verification. The I2-4 handoff was already untracked at entry.

| Implementation file | Lines | SHA-256 |
|---|---:|---|
| `KAM/Iso/Apost/NewtonError.lean` | 620 | `46c9e1e9a2787d82646f43dfae0a36a02b104aabaf7ded68af635a1cd90da942` |
| `KAM/Iso/Apost/Schedule.lean` | 276 | `20d0ebffdc64adc5a9dc4f3fc8ae11e06488621e2abb5b79046af014046bef67` |
| `KAM/Iso/Charts/Constants.lean` | 183 | `18920733299c0c8ad6def420c79c1bc6ebebe221b62fb10dd2e7bd705fb1405a` |
| `KAM/Iso/Charts/Coordinates.lean` | 248 | `ae6b4fabdb49fba92a2d24b445a2068e5596eb5eb4c3097a30169e45a9c6cfa0` |
| `KAM/Iso/Linear/Trivial.lean` | 251 | `e4c6592330491fc574d1d4702ae45678604f838be07f99f06f143d7c77316bfc` |

| Additional pinned input | SHA-256 |
|---|---|
| `docs/tracks/I/design/PART123-LEAN-DESIGN.md` | `bea8d5212f8f979070ca44ce0295c8513021595dcd694f0178d0a0b221442a00` |
| `blueprint-I/parts/p2-iso-iteration.tex` | `f2bcdff3e5bd29a51e0246740f69e0bbd6419b925d8ae037b4e89ccf7a288968` |
| `blueprint-I/parts/p1-iso-linear.tex` | `96892529ec86381a018c227e239993da5aa6e793144600505668057df0cfc70b` |
| `blueprint-I/parts/p3-iso-local-charts.tex` | `78f529636a4615405c7a5f74cfe143914d62a59be1f582adb5deecf451e83827` |
| `KAM/Iso/Apost/Defs.lean` | `bfe66bba3354dbcd66b5bbaa2dab630018b6fb44259e31cad47a319032bb8163` |
| `KAM/Iso/Apost/Correction.lean` | `1d87cffe4ae9c0f9b6e210f4ff0c13b3396ffbcfd628ed7adc5a855a97c05d1c` |
| `KAM/Iso/Linear/EnergyDefect.lean` | `60c47a56a73e8f7e5cf0042b7555c92adb7d432331f02bd5077830789b69543d` |
| `KAM/Iso/Apost/ConstantsArith.lean` | `53764012f163c90761052d35b52d24781d1d05d7efabb1d73e3072b6c6918227` |
| `manifest/frozen-anchors.json` | `a7d55a9a566d7d8408d455b1bfb2cc71bb9229baae5d1c547c96d9147159f8f3` |
| `KAM/Frozen/Iso/Theorems/IsoenergeticKam.lean` | `7d04c9e99e9e52113212f3a47ee749e577e8ffbf404085615df14d4707300922` |

The local pinned HL19 PDF `sources/pdf/arxiv_1711.05515.pdf` hashes to `ed457633b5c4f0412b7f2c81c3818ef88829dee3420b97864e42223b77eb5241`, matching the source pin. Read PDF/printed pp.49–51, especially Step 2, (6.34)–(6.39). The blueprint deliberately specializes the canonical case, uses positive directional derivatives and uniform hat constants, and weakens the small-divisor exponent to κ=τ+n. This is not a claim of verbatim HL19 exponents.

## Anchor status and exact signature

| Anchor / node | Verdict | Scope |
|---|---|---|
| `bpI:p2:newton-error` / `KAM.Iso.Apost.newton_error` | PASS WITH NOTES | Complete infrastructure theorem; generated-root integration notes below. |
| `iso.isoenergetic_kam.v1` / `KAM.Iso.isoenergetic_kam` | FROZEN_UNPROVED | Manifest state remains DRAFT_SORRY; not seal-ready from this package. |
| Other I/N/P anchors | N/A | No provider or anchor is added or sealed here. |

I-G1's manifest path/export are `KAM/Frozen/Iso/Theorems/IsoenergeticKam.lean` / `KAM.Iso.isoenergetic_kam`; registered provider module/export are `KAM.Provider.Iso.IsoenergeticKam` / `KAM.Provider.Iso.isoenergetic_kam`. ABI: `165645ea4aeb3d278f29d2336981a4bc924803cea8eaee49efbfca9874203b16`; source HL19 Theorem 3.6/Remark 3.7 with D20 approval. The draft body is unchanged. Provider=frozen-type and literal frozen seal-body probes are **N/A**: I2-4 adds no provider. The local error theorem cannot stand in for the full frozen KAM theorem.

NewtonError:582–606 is **byte-identical** to design:1418–1442 before the proof delimiter. A scratch copy extracted from the design, renamed `AuditI24.signature_newton_error`, elaborated with all explicit binders in order:

```lean
by
  exact KAM.Iso.Apost.newton_error hS hK hδ hδ1 h2δ hβ hsym
```

No premise or constant was inserted. The constant `hatCE n τ M σK σB σT` has no dependence on H,K,γ,ε,s or ωstar. Norms are max norms on functions and the phase product, maximum absolute row-sum norms on matrices, and the isometric `sumVec` identification. No Euclidean norm is substituted. Averages use the real period-one cube of volume one.

| Main conclusion | Lean location | Correspondence to p2:168–193 |
|---|---|---|
| New torus image in D on T_(r−2δ) | 587, 607–616 | PASS: correction≤d<β and source ball inclusion. |
| S invertible and inverse norm≤2 on T_(r−2δ) | 588, 321–328 | PASS: `sMat=QP=I−Ω₀E_sym`, defect≤1/2. |
| Moving-frequency invariance-error identity | 589–596, 331–361 | PASS: PS⁻¹E_lin+Δ²X+ξω∂ωΔK at `isoNewS • ωstar`. |
| Energy-error identity | 597–600, 451–519 | PASS: tangential average plus Taylor remainder after cancellation of the old energy error. |
| New invariance-error bound | 601–604, 374–438 | PASS: hatCE ε²/(γ⁴δ^(2a)), full T_(r−2δ). |
| New average energy-error bound | 605–606, 522–570 | PASS: same constant and denominator; no new-frequency Diophantine assumption. |

### Expanded main-node binder test

One row per outer typing binder or expanded logical field. Counts: **TYPING=19, STANDING=21, SOURCE=21, RULED=0, EXCESS=0**. Structure binders are represented by their fields, not counted twice. The five standing derivative bounds, and the determinant/inverse pairs in Gram and twist, are split. No extra project instance hypothesis occurs.

| Binder / expanded field | Bin | Source evidence |
|---|---|---|
| `n` | TYPING | p2:37–46, 92–105, 131–149: dimension, real parameters or functions on the source carriers. |
| `τ` | TYPING | p2:37–46, 92–105, 131–149: dimension, real parameters or functions on the source carriers. |
| `M` | TYPING | p2:37–46, 92–105, 131–149: dimension, real parameters or functions on the source carriers. |
| `σK` | TYPING | p2:37–46, 92–105, 131–149: dimension, real parameters or functions on the source carriers. |
| `σB` | TYPING | p2:37–46, 92–105, 131–149: dimension, real parameters or functions on the source carriers. |
| `σT` | TYPING | p2:37–46, 92–105, 131–149: dimension, real parameters or functions on the source carriers. |
| `σω` | TYPING | p2:37–46, 92–105, 131–149: dimension, real parameters or functions on the source carriers. |
| `ν` | TYPING | p2:37–46, 92–105, 131–149: dimension, real parameters or functions on the source carriers. |
| `γ` | TYPING | p2:37–46, 92–105, 131–149: dimension, real parameters or functions on the source carriers. |
| `ωstar` | TYPING | p2:37–46, 92–105, 131–149: dimension, real parameters or functions on the source carriers. |
| `D` | TYPING | p2:37–46, 92–105, 131–149: dimension, real parameters or functions on the source carriers. |
| `H` | TYPING | p2:37–46, 92–105, 131–149: dimension, real parameters or functions on the source carriers. |
| `E₀` | TYPING | p2:37–46, 92–105, 131–149: dimension, real parameters or functions on the source carriers. |
| `r` | TYPING | p2:37–46, 92–105, 131–149: dimension, real parameters or functions on the source carriers. |
| `β` | TYPING | p2:37–46, 92–105, 131–149: dimension, real parameters or functions on the source carriers. |
| `ε` | TYPING | p2:37–46, 92–105, 131–149: dimension, real parameters or functions on the source carriers. |
| `δ` | TYPING | p2:37–46, 92–105, 131–149: dimension, real parameters or functions on the source carriers. |
| `s` | TYPING | p2:37–46, 92–105, 131–149: dimension, real parameters or functions on the source carriers. |
| `K` | TYPING | p2:37–46, 92–105, 131–149: dimension, real parameters or functions on the source carriers. |
| `hS.two_le` | STANDING | p2:37–46: n≥2. |
| `hS.tau_ge` | STANDING | p2:37–46: τ≥n−1. |
| `hS.M_pos` | STANDING | p2:37–46: M>0. |
| `hS.σK_pos` | STANDING | p2:37–46: σK>0. |
| `hS.σB_pos` | STANDING | p2:37–46: σB>0. |
| `hS.σT_pos` | STANDING | p2:37–46: σT>0. |
| `hS.σω_gt` | STANDING | p2:37–46: σω>1. |
| `hS.ν_pos` | STANDING | p2:37–46: ν>0. |
| `hS.ωstar_ne` | STANDING | p2:37–46: ωstar≠0. |
| `hS.isOpen` | STANDING | p2:37–46: D open. |
| `hS.transl_mem` | STANDING | p2:37–46: D invariant under integer angle shifts. |
| `hS.holo` | STANDING | p2:37–46: H holomorphic on D. |
| `hS.periodic` | STANDING | p2:37–46: H periodic on D. |
| `hS.real` | STANDING | p2:37–46: H real on real points of D. |
| `hS.bounds.1` | STANDING | p2:37–46: ‖DH‖≤M. |
| `hS.bounds.2.1` | STANDING | p2:37–46: ‖X_H‖≤M. |
| `hS.bounds.2.2.1` | STANDING | p2:37–46: ‖DX_H‖≤M. |
| `hS.bounds.2.2.2.1` | STANDING | p2:37–46: ‖D²X_H‖≤M. |
| `hS.bounds.2.2.2.2` | STANDING | p2:37–46: ‖D²H‖≤M. |
| `hS.gamma_pos` | STANDING | p2:37–46: γ>0. |
| `hS.dio` | STANDING | p2:37–46: ωstar Diophantine. |
| `hK.r_pos` | SOURCE | p2:92–105: r>0. |
| `hK.β_pos` | SOURCE | p2:92–105: β>0. |
| `hK.ε_nonneg` | SOURCE | p2:92–105: ε≥0. |
| `hK.ε_le_one` | SOURCE | p2:92–105: ε≤1. |
| `hK.holo` | SOURCE | p2:92–105: K holomorphic on T_r (B1). |
| `hK.primary` | SOURCE | p2:92–105: K primary on T_r (B1). |
| `hK.real` | SOURCE | p2:92–105: K real on reals (B1). |
| `hK.ball_sub` | SOURCE | p2:92–105: B_β(K(θ))⊆D (B2). |
| `hK.deriv_le` | SOURCE | p2:92–105: ‖DK‖≤σK (B3). |
| `hK.gram.1` | SOURCE | p2:92–105: Gram determinant a unit (B4). |
| `hK.gram.2` | SOURCE | p2:92–105: Gram inverse norm≤σB (B4). |
| `hK.error_le` | SOURCE | p2:92–105: old invariance error≤ε (B6). |
| `hK.s_gt` | SOURCE | p2:92–105: s>1. |
| `hK.twist.1` | SOURCE | p2:92–105: bordered average determinant a unit (B5). |
| `hK.twist.2` | SOURCE | p2:92–105: bordered average inverse norm≤σT (B5). |
| `hK.energy_le` | SOURCE | p2:92–105: old energy error≤ε (B7). |
| `hδ` | SOURCE | p2:131–149, 168–180: δ>0. |
| `hδ1` | SOURCE | p2:131–149, 168–180: δ≤1. |
| `h2δ` | SOURCE | p2:131–149, 168–180: 2δ<r. |
| `hβ` | SOURCE | p2:131–149, 168–180: d<β. |
| `hsym` | SOURCE | p2:131–149, 168–180: C_sym ε/(γδ^(κ+1))≤1/2. |

Inspected the bodies of Params, Setting, IsoStanding, AdmissibleNoTwist and IsoAdmissible, together with the frozen invariance error, average energy, extended torsion and extended torsion average. The full bordered inverse is source nondegeneracy B5; there is no premise asserting invertibility of the unbordered torsion average. Diophantine scaling to sωstar is proved by `IsoStanding.setting` using s>1.

## Proof audit and refutation pass

**Border facts (77–168).** Re-applying `border_solve` uses the identical deterministic `isoBordData` and zero tangential phase, not a newly chosen solution. Its inputs are discharged: γ>0 and τ≥0 from Setting; Diophantine ω from standing; positive widths; ηL/ηN differentiability and periodicity from frame_basic/periodicity; zero average ηN from exactness; T differentiability and periodicity from frame_basic; Y regularity and periodicity from extended_basic. Geometry gives HL=2nm²ε, HN=2nmε, HT=C_T/δ, HY=m³. `bordAvg=extendedTorsionAverage` transfers the actual B5 determinant and inverse norm. The scalar energy forcing is literally minus the old defect and is bounded by B7. The normal component's holomorphy is restricted from T_(r−δ) to T_(r−2δ). `sStar_arith`, `gL_arith`, `xiL_eq` give the sharp cR·hatCg bound required by the energy estimate. No hidden compatibility equation or inverse is assumed; bordSol is not unfolded. The duplicated solve is a maintenance issue only.

**Expansion and reduction (181–273, 331–361).** The piecewise Newton map equals K+ΔK on a neighborhood of each point of the open smaller strip, so its actual fderiv is DK+DΔK there. `correction` proves Im ξω=0 before `isoNewS_smul_eq` turns the new frequency into (1−ξω)ω. Expansion leaves **plus** ξω∂ωΔK. The reduced equation receives the actual bordered-system equation proved above; this gives Q Res=E_lin, and QP=S with S invertible gives Res=PS⁻¹E_lin by square-matrix inverse identities. The conditional algebra helper `isoResidual_eq_frame` has its equation premise discharged at the source-node use; it never replaces the theorem by a conclusion-shaped premise. Importing K's NewtonError supplies local algebra/Taylor utilities; its incompatible fixed-frequency Newton solve is not invoked.

**Remainders (284–310).** The correction bound is strictly below β. Both endpoints and their segment lie in the source β-ball in D. Vector-field Taylor uses K's Hamiltonian estimate. Scalar Taylor uses exactly the fifth IsoStanding derivative bound, ‖iteratedFDeriv ℂ 2 H‖≤M, obtaining (M/2)‖ΔK‖² and then the weaker Md². The second derivative of X_H is not substituted for that of H.

**Invariance bound (399–438).** RedDefect·xi, Ω₀E_sym·∂ωxi and Ω_Kωξω are controlled on nested working strips. The exponent identity 2κ+3=a+1 is preserved. lin_arith gives E_lin; P≤2m² and S⁻¹≤2 account for the factor 4m². Taylor costs at most m·hatCDK². The frequency cross term has denominator γ³δ^(κ+a+2). E_total_arith uses γ≤Theta, δ≤1 and a=2κ+2 to reach γ⁴δ^(2a), then hatCE1≤hatCE. The frequency upper bound γ≤Theta is derived from admissibility, not added as a theorem premise. Constants retain the exact allowed dependence.

**Energy (451–570), including the cube-local focus.** Set r'=r−2δ>0 with r'≤r. `energy_defect` receives the actual xiL,xiN differentiability from border_facts. Its average split is combined with ⟨YxiN⟩=−(energyAverage−E₀). Holomorphy yields continuity of H∘K, DH(K)ΔK and the remainder on the real cube, justifying integral additivity. Corrected points belong to D before composing with H. In 552–556 the proof introduces x in the real unit cube, maps that x into the positive strip using `ofReal_mem_complexStrip hr' x`, and obtains both majorants at that exact point. It does **not** infer a strip supremum from a merely cube-local bound. Averaging the scalar remainder uses its actual strip Taylor estimate. energy_total_arith yields hatCE2≤hatCE. The energy helpers omit hsym because this part does not require it, a legitimate strengthening.

**Refutation results.** Separately challenged the frequency sign, piecewise derivatives, circular re-solving, missing unbordered twist, cube-local versus strip bounds, integral additivity and hidden constant dependence. Each concern is refuted at the point of use above. ε=0 and δ=1 are allowed; 2δ<r supplies positive smaller strips and denominators. No new-frequency Diophantine property or output admissibility is assumed. No material finding or tentative source defect survives. This audit is independent of the prover; no delegated second review is claimed.

The inherited Schedule module has the exact recurrence, weighted endpoint j=2a, summed endpoint j=2a−1 and constant 2, including e=0 and q≤1. Helpers permitting negative j strengthen the blueprint. Constants proves positive compact/open separation and true extrema on a nonempty compact set; `B'.Nonempty` is explicit in p3:setting. Coordinates proves the determinant identity, C¹ chart and positive slope-ray ratio without Kolmogorov nondegeneracy; a center anywhere in U strengthens the source's center in closure B'. Trivial proves the full constant bordered-matrix identity, average, determinant, total inverse and row-sum norm without an invertibility premise. Private cast lemmas cover singular matrices too. These implementations were inspected directly.

## Declaration inventory

One row per new public theorem in the requested diff. Prefix A=`KAM.Iso.Apost`, X=`KAM.Iso.Apost.NewtonErrorAux`, C=`KAM.Iso.Charts`, L=`KAM.Iso.Linear`. Conditional helpers certify their displayed implications; their premises are discharged at the main-node calls. All 50 axiom sets were checked.

| Node / file:line | Declaration | Verdict | Reason |
|---|---|---|---|
| newton-error / NewtonError:77 | `X.border_facts` | PASS | Actual bordered equations, energy normalization, sharp tangential bound and holomorphy; all inputs derived. |
| newton-error / NewtonError:181 | `X.isoNewtonMap_of_mem` | PASS | Literal update on its strip. |
| newton-error / NewtonError:186 | `X.isoNewtonMap_eventuallyEq` | PASS | Open-strip neighborhood gives local equality for derivatives. |
| newton-error / NewtonError:192 | `X.differentiableAt_isoCorrection` | PASS | Conditional product differentiability; actual regularity supplied by callers. |
| newton-error / NewtonError:203 | `X.sumVec_invarianceError_isoNewtonMap` | PASS | Moving-frequency expansion; reality premise supplied by correction. |
| newton-error / NewtonError:256 | `X.isoResidual_eq_frame` | PASS | Conditional square-matrix algebra; equation and determinant premise supplied at use. |
| newton-error / NewtonError:284 | `X.norm_isoQuadX_le` | PASS | Local Taylor bound with the original ball and actual correction size. |
| newton-error / NewtonError:291 | `X.norm_isoQuadH_le` | PASS | Scalar Taylor uses the fifth standing bound and actual segment. |
| newton-error / NewtonError:321 | `X.sMat_bounds` | PASS | Small symplectic defect gives inverse norm≤2. |
| newton-error / NewtonError:331 | `X.sumVec_error_eq` | PASS | Exact reduction and frequency identity on T_(r−2δ). |
| newton-error / NewtonError:374 | `X.norm_error_le` | PASS | All three error costs absorbed into hatCE, exact denominator. |
| newton-error / NewtonError:451 | `X.energyAverage_sub_eq` | PASS | Normal-energy cancellation and legitimate splitting of integrals. |
| newton-error / NewtonError:522 | `X.norm_energyAverage_sub_le` | PASS | Cube-local tangential estimate plus scalar remainder. |
| newton-error / NewtonError:582 | `A.newton_error` | PASS | All six blueprint/design conclusions, no excess premise. |
| schedule/error-decay / Schedule:46 | `A.isoEpsSeq_zero` | PASS | Exact initial error e. |
| schedule/error-decay / Schedule:48 | `A.isoEpsSeq_succ` | PASS | Exact hatCE quadratic recurrence. |
| schedule/error-decay / Schedule:53 | `A.isoEpsSeq_nonneg` | PASS | Nonnegative recurrence, including zero error. |
| schedule/error-decay / Schedule:64 | `A.isoEpsSeq_succ_eq` | PASS | Positive-width rewrite to standard quadratic recurrence. |
| schedule/error-decay / Schedule:75 | `A.isoEpsSeq_le_q_pow` | PASS | Exact superexponential estimate with natural subtraction. |
| schedule/error-decay / Schedule:94 | `A.iso_q_nonneg` | PASS | q nonnegative from standing positivity. |
| schedule/error-decay / Schedule:103 | `A.iso_error_decay_eps` | PASS | Both decay inequalities with q≤1. |
| schedule/error-decay / Schedule:123 | `A.iso_error_decay_weighted` | PASS | Pointwise bound for all real j≤2a, stronger. |
| schedule/error-decay / Schedule:154 | `A.iso_error_decay_sum` | PASS | Summability and constant 2 for all real j≤2a−1, stronger. |
| schedule/error-decay / Schedule:205 | `A.isoEps_div_nonneg` | PASS | Nonnegative weighted terms. |
| schedule/error-decay / Schedule:212 | `A.isoEps_partial_sum_le` | PASS | Finite sums from genuine summability; X≥0 explicit. |
| schedule/error-decay / Schedule:226 | `A.isoEps_div_le` | PASS | Weighted quotient estimate. |
| schedule/error-decay / Schedule:234 | `A.isoEps_le` | PASS | Case j=0, ε_s≤e. |
| schedule/error-decay / Schedule:244 | `A.isoDSeq_eq` | PASS | Unconditional identity for actual d sequence. |
| schedule/error-decay / Schedule:255 | `A.iso_error_decay` | PASS | Full blueprint decay contract, exact endpoints. |
| compact / Constants:41 | `C.isOpen_realAct_charts` | PASS | Open real preimage of complex action neighborhood. |
| compact / Constants:46 | `C.subset_realAct_charts` | PASS | B included for positive radius. |
| compact / Constants:50 | `C.contDiffOn_frequencyMap` | PASS | C¹ real frequency map from holomorphy and reality. |
| compact / Constants:55 | `C.continuousOn_fderiv_frequencyMap` | PASS | Continuous Hessian on open real slice. |
| compact / Constants:60 | `C.continuousOn_borderedHessian` | PASS | Entrywise continuity of actual bordered matrix. |
| compact / Constants:73 | `C.continuousOn_inv_of_det_ne_zero` | PASS | Conditional generic Cramer formula on nonsingular locus. |
| compact / Constants:85 | `C.continuousOn_norm_inv` | PASS | Continuous bordered inverse norm, standing determinant hypothesis. |
| compact / Constants:92 | `C.frequencyMap_ne_zero_of_det_ne_zero` | PASS | Zero gradient forces zero last row. |
| compact / Constants:103 | `C.inv_ne_zero_of_det_ne_zero` | PASS | AA⁻¹=1 on nonempty index set. |
| compact / Constants:111 | `C.compact` | PASS | Positive distance and true extrema on nonempty compact set. |
| det-identity/coordinates/slope-ray / Coordinates:67 | `C.borderedHessian_det_eq` | PASS | Literal identity, even without symmetry, stronger. |
| det-identity/coordinates/slope-ray / Coordinates:76 | `C.hessR_transpose` | PASS | Real Hessian symmetry under actual holomorphic data. |
| det-identity/coordinates/slope-ray / Coordinates:93 | `C.det_identity` | PASS | Determinant identity and nonzero gradient; nonzero equivalence follows from exact sign identity. |
| det-identity/coordinates/slope-ray / Coordinates:110 | `C.dotProduct_self_pos` | PASS | Nonzero real vector gives positive squared dot product. |
| det-identity/coordinates/slope-ray / Coordinates:117 | `C.continuous_aCoord` | PASS | Literal coordinate formula continuous in w. |
| det-identity/coordinates/slope-ray / Coordinates:123 | `C.dotProduct_eq_aCoord_mul` | PASS | Projection identity for nonzero g. |
| det-identity/coordinates/slope-ray / Coordinates:130 | `C.det2_self` | PASS | Alternating determinant identity. |
| det-identity/coordinates/slope-ray / Coordinates:135 | `C.eq_aCoord_smul_add_bCoord_smul` | PASS | Exact reconstruction in g,perp g basis. |
| det-identity/coordinates/slope-ray / Coordinates:151 | `C.coordinates` | PASS | C¹ chart on positive-coordinate domain; arbitrary center in U is stronger. |
| det-identity/coordinates/slope-ray / Coordinates:193 | `C.slope_ray` | PASS | Exact positive proportionality and max-norm ratio. |
| trivial / Trivial:211 | `L.trivial_torus` | PASS | Complete torus, bordered matrix, average, determinant, inverse and norm identities. |

Thirteen additional new theorems are private implementation helpers. They were read and their kernel bodies are covered by replay; they are not independent source nodes:

| Private declaration | Verdict | Role |
|---|---|---|
| `Coordinates.det_bordered` | PASS | Finite determinant/cast or derivative identity, explicitly conditional where appropriate. |
| `Trivial.det_map_ofReal_fintype` | PASS | Finite determinant/cast or derivative identity, explicitly conditional where appropriate. |
| `Trivial.inv_map_ofReal_fintype` | PASS | Finite determinant/cast or derivative identity, explicitly conditional where appropriate. |
| `Trivial.norm_map_ofReal_fintype` | PASS | Finite determinant/cast or derivative identity, explicitly conditional where appropriate. |
| `Trivial.hasFDerivAt_pr2` | PASS | Finite determinant/cast or derivative identity, explicitly conditional where appropriate. |
| `Trivial.fderiv_pr2` | PASS | Finite determinant/cast or derivative identity, explicitly conditional where appropriate. |
| `Trivial.differentiableOn_pr2` | PASS | Finite determinant/cast or derivative identity, explicitly conditional where appropriate. |
| `Trivial.fderiv_fderiv_apply` | PASS | Finite determinant/cast or derivative identity, explicitly conditional where appropriate. |
| `Trivial.fderiv_pr2_action` | PASS | Finite determinant/cast or derivative identity, explicitly conditional where appropriate. |
| `Trivial.fderiv_pr2_angle` | PASS | Finite determinant/cast or derivative identity, explicitly conditional where appropriate. |
| `Trivial.torsion_trivial` | PASS | Finite determinant/cast or derivative identity, explicitly conditional where appropriate. |
| `Trivial.invarianceError_trivial` | PASS | Finite determinant/cast or derivative identity, explicitly conditional where appropriate. |
| `Trivial.extendedTorsion_trivial` | PASS | Finite determinant/cast or derivative identity, explicitly conditional where appropriate. |

## Definition classification

Only one new definition occurs: private `Charts/Coordinates.lean:40–51`, `sumFin3`. It sends the two Fin 2 indices to 0,1 and the Unit index to 2, with the exact inverse by finite cases. Its conditional inverse covers all Fin 3; both inverse laws are proved. This is finite reindexing, not a fallback object. BODY_MATCH=OK; PUBLIC_CARRIER=OK (private equivalence); WELL_DEFINEDNESS=N/A_LITERAL; CHARACTERIZATION=N/A_LITERAL; CHOICE_INDEPENDENCE=N/A; DEFINITION_VERDICT=PASS. No new abbrev or structure occurs.

I2-4 itself introduces no definitions. Existing I-D0 definitions were checked at use:

| Definition | Verdict | Body / carrier assessment |
|---|---|---|
| isoBordData | PASS | Actual ηL,ηN,T,Y and negative average energy defect. |
| isoXi / isoXiOmega / isoCorrection | PASS | Deterministic bordered solution with zero phase; correction Pxi. |
| isoNewS | PASS | s(1−Re ξω); correction proves Im ξω=0 before the complex frequency identity. |
| isoNewtonMap | PASS | Literal source update on T_w and original K elsewhere. The source explicitly says “K̄:=K elsewhere” (p2:169). |
| isoQuadX / isoQuadH | PASS | Exact first-order-subtracted remainders at K+ΔK, globally defined by those formulas. Comparisons with the piecewise map are confined to T_w or its contained real cube. |
| IsoStanding / IsoAdmissible | PASS | Source records expanded above; no result fields. |

For these literal definitions: BODY_MATCH=OK, PUBLIC_CARRIER=OK, WELL_DEFINEDNESS=N/A_LITERAL, CHARACTERIZATION=N/A_LITERAL, CHOICE_INDEPENDENCE=N/A. The explicit source-prescribed off-strip K branch is legitimate; there is no invented junk-value workaround. bordSol uses the actual matrix inverse, not arbitrary choice from nonunique existence. Existing chart extrema are only used after proving nonempty compactness and continuity.

## Verification evidence

All audit Lean checks were sequential, with `LEAN_NUM_THREADS=1` and `nice -n 5`; the build gate supplies nice itself. No second audit Lean check was started while its predecessor ran. Target build only; no clean, update, cache fetch or Mathlib rebuild was requested. The build includes cached/replayed modules and is not claimed to be a clean source rebuild of NewtonError.

### Build

```sh
LEAN_NUM_THREADS=1 /mnt/HC_Volume_106379410/orchestrator-tools/inp_lake_build.sh /root/code/KAM-inp-i24 KAM.Iso.Apost.NewtonError KAM.Iso.Apost.Schedule KAM.Iso.Charts.Constants KAM.Iso.Charts.Coordinates KAM.Iso.Linear.Trivial
```

Exit **0**. Relevant output (the inherited warning's explanatory suggestion is omitted):

```text
[inp-gate] slot 1 acquired 02:42:29 for KAM.Iso.Apost.NewtonError KAM.Iso.Apost.Schedule KAM.Iso.Charts.Constants KAM.Iso.Charts.Coordinates KAM.Iso.Linear.Trivial
✔ [3213/3227] Built KAM.Iso.Apost.Schedule (3.9s)
⚠ [3240/3280] Replayed KAM.ODE.Exit
warning: KAM/ODE/Exit.lean:36:0: automatically included section variable(s) unused in theorem `KAM.ODE.gen_exit`:
  [NormedSpace ℝ E]
✔ [3278/3280] Built KAM.Iso.Charts.Constants (3.3s)
✔ [3279/3280] Built KAM.Iso.Linear.Trivial (3.6s)
✔ [3280/3280] Built KAM.Iso.Charts.Coordinates (2.0s)
Build completed successfully (3280 jobs).
```

### Exact-signature application and all public axioms

```sh
LEAN_NUM_THREADS=1 nice -n 5 lake env lean .lake/abi-scratch/I24Audit.lean
```

Exit **0**. Probe imports the five modules, extracts the exact design declaration, proves it with the explicit application above, and prints axioms of all 50 public theorems. Exact output:

```text
'KAM.Iso.Apost.NewtonErrorAux.border_facts' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.NewtonErrorAux.isoNewtonMap_of_mem' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.NewtonErrorAux.isoNewtonMap_eventuallyEq' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.NewtonErrorAux.differentiableAt_isoCorrection' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.NewtonErrorAux.sumVec_invarianceError_isoNewtonMap' depends on axioms: [propext,
 Classical.choice,
 Quot.sound]
'KAM.Iso.Apost.NewtonErrorAux.isoResidual_eq_frame' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.NewtonErrorAux.norm_isoQuadX_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.NewtonErrorAux.norm_isoQuadH_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.NewtonErrorAux.sMat_bounds' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.NewtonErrorAux.sumVec_error_eq' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.NewtonErrorAux.norm_error_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.NewtonErrorAux.energyAverage_sub_eq' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.NewtonErrorAux.norm_energyAverage_sub_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.newton_error' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.isoEpsSeq_zero' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.isoEpsSeq_succ' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.isoEpsSeq_nonneg' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.isoEpsSeq_succ_eq' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.isoEpsSeq_le_q_pow' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.iso_q_nonneg' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.iso_error_decay_eps' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.iso_error_decay_weighted' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.iso_error_decay_sum' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.isoEps_div_nonneg' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.isoEps_partial_sum_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.isoEps_div_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.isoEps_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.isoDSeq_eq' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.iso_error_decay' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.isOpen_realAct_charts' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.subset_realAct_charts' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.contDiffOn_frequencyMap' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.continuousOn_fderiv_frequencyMap' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.continuousOn_borderedHessian' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.continuousOn_inv_of_det_ne_zero' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.continuousOn_norm_inv' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.frequencyMap_ne_zero_of_det_ne_zero' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.inv_ne_zero_of_det_ne_zero' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.compact' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.borderedHessian_det_eq' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.hessR_transpose' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.det_identity' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.dotProduct_self_pos' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.continuous_aCoord' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.dotProduct_eq_aCoord_mul' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.det2_self' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.eq_aCoord_smul_add_bCoord_smul' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.coordinates' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.slope_ray' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Linear.trivial_torus' depends on axioms: [propext, Classical.choice, Quot.sound]
```

### Kernel replay

```sh
LEAN_NUM_THREADS=1 nice -n 5 lake env leanchecker --verbose KAM.Iso.Apost.NewtonError KAM.Iso.Apost.Schedule KAM.Iso.Charts.Constants KAM.Iso.Charts.Coordinates KAM.Iso.Linear.Trivial
```

Exit **0**, complete output:

```text
replaying KAM.Iso.Linear.Trivial
replaying KAM.Iso.Charts.Coordinates
replaying KAM.Iso.Charts.Constants
replaying KAM.Iso.Apost.Schedule
replaying KAM.Iso.Apost.NewtonError
```

### Lint and source hygiene

```sh
LEAN_NUM_THREADS=1 nice -n 5 sh scripts/lint_sources.sh
```

Exit **1**, complete output:

```text
KAM.lean is out of date; run scripts/gen_root_imports.py
check_lean_modules: PASS (359 Lean files, 0 comparator configurations)
FROZEN-ANCHOR GUARD OK
ABI HASHES OK (144 frozen declarations)
```

Only the exact stale-root diagnostic fails; this line is explicitly allowed in the brief. Module, line-length, size, proof-escape and frozen/ABI checks pass. All five implementation modules have copyright, module command, interface public imports, module docstring and public section, and remain below 1500 lines. The only new definition is private; no new public definition lacks body exposure. A code-masked scan of all six changed Lean files found zero sorry/admit/axiom/unsafe/opaque/EuclideanSpace or heartbeat/recursion overrides. Recursive import inspection found 124 project modules in the five modules' closure and **zero provider or frozen-theorem imports**. Frozen-definition imports are legitimate.

```sh
git diff inp...HEAD -- KAM/Frozen manifest README.md
git diff --check inp...HEAD
```

Both exit **0**, no diff or whitespace error; only the multiple-merge-base warning. The brief's stronger empty-diff condition

```sh
git diff inp...HEAD -- KAM/Frozen manifest KAM.lean README.md
```

**FAILS**: its output is nonempty (git diff itself still exits 0). Exactly six generated-root additions occur:

```diff
+public import KAM.Iso.Apost.Schedule
+public import KAM.Iso.Charts.Constants
+public import KAM.Iso.Charts.Coordinates
+public import KAM.Iso.Linear.BorderSolve
+public import KAM.Iso.Linear.BorderUnique
+public import KAM.Iso.Linear.Trivial
```

**H1 — integration note, survived refutation.** KAM.lean:208–239 is actually changed in the requested comparison, so that strict hygiene condition is not satisfied. Attribution check: `git log -1 -- KAM.lean` identifies `0805974335892d77db7eae97b4c19706050df578`, “Regenerate KAM.lean (Iso Linear/Trivial)”; NewtonError's last change is the package HEAD. Thus these are inherited generated edits, not a frozen-statement alteration by I2-4. They do not invalidate the local theorem. The orchestrator must reconcile or explicitly dispose of this difference before claiming the exact protected-root condition passed. No root repair was made here. The separately observed stale-root lint diagnostic is allowed by the brief.

## Source defects, deviations and closeout

No new suspected defect in the pinned HL19 source, blueprint or frozen statement was found. HL19 p.50 says “L_Δω ΔK = −ξω L_ω ΔK”; its negative directional-derivative convention translates to the plus ξω∂ωΔK in this blueprint and implementation. The uniform constants and exponent losses are declared adaptations, not newly discovered errata. The source-prescribed off-strip branch and deterministic repeated bordered solve introduce no mathematical deviation. This audit introduced none.

Closeout: all 50 new public theorems, 13 private theorems and the sole private definition classified; all six main conclusions checked; no unresolved mathematical warning; target build, exact signature application, all public axiom checks and five-module kernel replay pass; frozen guard and all 144 ABI hashes pass. The single allowed lint diagnostic and the separate strict protected-root diff failure are explicitly recorded. This package does not establish I-G1 or any other frozen-root closure, seal or full-campaign correctness.
