# KEP-4 independent audit 1

Verdict: **PASS WITH NOTES** for the KEP-4 shared infrastructure. No frozen anchor or provider belongs to KEP-4; **no anchor is certified seal-ready**. The concrete contraction obligations left by KEP-3 are discharged. The API note about the full real slice is addressed by an audit composition probe, not a source edit.

## Scope, snapshot and authority

Audited 2026-10-28 in `/root/code/KAM-inp-kep4` at HEAD `d9a4881367f02afd395e055ef36de33e2710ba7b`. Read `AGENTS.md`, `docs/PLAN.md`, `docs/DECISIONS.md`, `/root/code/KAM-inp/.drafts/briefs/inp-audit-package.md`, and the local `KEP-4-handoff.md`. The prompt's exact report destination overrides the brief's main-worktree destination. Only this report is changed; probes and logs are temporary under `.lake/abi-scratch/`. No source repair, commit, push, or delegation is authorized or performed.

This is a tier-2 focused audit: statement/body inventory, direct proof inspection, a second adversarial pass, exact design-signature applications, axiom inspection, kernel replay and hygiene. The statement-audit binder and characterization checks are applied to infrastructure; this is not a manifest-bound frozen-anchor certification. Read the I/N/P statement documents for scope, the existing frozen I-KEPLER theorem and `keplerBorder` definition for the boundary, and the frozen definition imports used by the real solver. I-KEPLER is a separate sealed determinant result. Track N has no direct node in this package.

Diff authority requires care:

- `inp` resolved to `370c0bac661297ae63552bb547c97bdf1b18cb0c`. `git merge-base --all inp HEAD` returned `819a9a0f46c088bb722babc5a55aed2074cf6f44` and `ce0bd6e057b3d78927e8525f7512aabf352184c0`.
- As requested, ran `git diff inp...HEAD`; Git warned `multiple merge bases, using 819a9a0f46c088bb722babc5a55aed2074cf6f44`. Its delta contains only `EquationComplex.lean` (480 added lines) and `KeplerTube.lean` (640 added lines).
- Also ran the handoff's `git diff inp-kep3...HEAD`. That branch now resolves to `959e825bfc46c173a358049c1b9ba11bf3ec1337`; its three-dot diff includes 45 files and unrelated graph, root and package history. These are not KEP-4 edits. The immutable KEP-4 delta `git diff e45de82 HEAD` is exactly the 640-line `KeplerTube.lean` addition.
- `EquationComplex.lean` is byte-identical to KEP-3 commit `ce0bd6e057b3d78927e8525f7512aabf352184c0` (`git diff --quiet ce0bd6e HEAD -- KAM/Kepler/EquationComplex.lean`, exit 0). Read the prior independent KEP-3 report at `/root/code/KAM-inp/docs/tracks/P/audits/KEP-3-audit-1.md`, checked its unchanged file hash, and inspected the inherited contraction, choice specification, analytic IFT and differentiation spine again. Current axiom checks and replay include this inherited module.

Frozen-v1 inputs (SHA256):

| Input | SHA256 |
|---|---|
| `KAM/Kepler/KeplerTube.lean` | `e642052ba674d39cfb9491c5e3baf1419c4ad75d591227d7834a95b341823202` |
| `KAM/Kepler/EquationComplex.lean` | `8a8079d7d7ddbd847ce24125ce2b7f88866f2c625d42278c00dd96b0cdf34542` |
| `docs/tracks/P/design/KEPLER-LEAN-DESIGN.md` | `ef91c316d0127ef9884c602810d58b816501524ed75e7d2923c0e92f736dfdf5` |
| `blueprint-I/parts/p7-delaunay.tex` | `a3f650f5c2982ea6e5545efd4294c086103439908cfd2683ec3a836923a6521d` |
| `blueprint-P/parts/p7-kepler-poincare.tex` | `3a10ddf74067a3c7b54184a190710deaba3019c97d2e0d5e9a3773b889cc26ab` |

Source correspondence is against blueprint-I `p7-delaunay.tex:91–140` (`bpI:p7:kepler-eq`), blueprint-P `p7-kepler-poincare.tex:99–115` (`bpP:p7:regular-kepler` (b)), and design §§2, 7 (KEP-4), 7.1, B10 and Appendix A:978–1059. The untracked signature file mentioned in the design is absent here and at the named main-worktree location; the committed verbatim Appendix A is the comparison artifact. Its 23 KEP-4 declarations match after whitespace normalization: 9 definition bodies and 14 theorem signatures. All 14 theorem signatures are separately elaborated with direct applications listing every explicit binder in order. No draft body is imported.

## Mathematical and dependency audit

The regular instance (`Tube.keplerData_regular`, lines 114–152) takes `(a,b,c,y₀,κ)=(v₀,v₁,λ,1,39/100)`. Openness and analytic coefficients are proved by projection maps. Invariance is actually proved with the generic real/imaginary coefficient bound:

`|Im λ| + (|Re v₀|+|Re v₁|) sinh 1 + (|Im v₀|+|Im v₁|) cosh 1 < 1/4 + exp(1)/4 < 1`.

Both coefficient sums are bounded by `‖v₀‖+‖v₁‖<1/4`; `sinh 1+cosh 1=exp 1`. The contraction field is proved from `(‖v₀‖+‖v₁‖) cosh 1 ≤ cosh 1/4 < 0.3875 < 0.39`. `cosh_one_lt` uses explicit exp upper/lower estimates, not a numerical oracle. Reverse triangle inequality gives `|J|≥1−cosh 1/4>3/5`. The implicit derivative signs are `(+sin F,−cos F)` for the two vector coordinates. The complex modulus is the usual complex norm; no max norm is substituted for it.

The thin-tube instance (`Tube.keplerData_tube`, lines 426–464) takes `(a,b,c,y₀,κ)=(e,0,ℓ,keplerY0 e₁,keplerTheta e₁)`. All five scalar formulas and the infimum-distance domain exactly match the blueprint. Positivity, `e₁<e₂<θ<1`, `cosh y₀=θ/e₂`, and `e₂ cosh y₀=θ` are proved, depending only on `e₁`. Nonemptiness of the real interval is explicitly supplied when using `infDist_lt_iff`. A nearby real eccentricity gives `‖e‖≤e₂` and `|Im e|≤δ_E`; the imaginary contribution is retained. The helper relaxes the source’s strict bounds to non-strict ones for the contraction estimate; the original strict bounds follow directly from `exists_real_near` and `deltaE_le_left`, so this does not weaken the actual tube or the solution theorem. The bound `sinh y≤y cosh y` is proved by the nonnegative derivative of `y cosh y−sinh y`. Thus

`|Im ℓ| + |Re e| sinh y₀ + |Im e| cosh y₀ < δ_K + θ y₀ + δ_E cosh y₀ ≤ y₀`.

Contraction follows from `‖e‖ cosh y₀≤e₂ cosh y₀=θ<1`. The Jacobian bound, both partial derivatives, and holomorphy are obtained from these proved instances. There is no assumed solution, assumed contraction map, assumed inverse or assumed Jacobian bound. The inherited analytic IFT uses strict strip interior and openness to prove neighborhood agreement with the selected unique solution; off-domain choices cannot enter the derivative.

Reality is proved by comparison with the independently constructed real solver, whose Kepler equation and strip membership are supplied. The regular real-domain conversion proves `planeLength v<1` from the smaller sum bound. The shifts are additive lifts by real **2π**, not period-one periodicity of the anomaly itself. Shifted unique existence is proved in `keplerSol_shift`; the thin-tube statement additionally proves shifted tube membership. Zero eccentricity is verified by uniqueness and `δ_K<y₀`.

## Declaration ledger

All locations are in `KAM/Kepler/KeplerTube.lean` at frozen-v1. Names have prefix `KAM.Kepler.`. Public helpers are included, not only the handoff exports. There are 61 source declarations: 10 definitions and 51 theorems. Inherited KEP-3 has 32 declarations (27 theorems), individually inventoried in its unchanged independent report; current axiom/replay checks cover them too.

| Node / role | Declaration (line) | Verdict | Reason |
|---|---|---|---|
| P regular numeric | `cosh_one_lt` (45) | PASS | Explicit exp bounds give cosh 1 < 1.55. |
| P regular domain | `regularTube` (58) | PASS | Literal open tube; strict sum of complex moduli. |
| P regular solution | `keplerLongC` (61) | PASS WITH NOTES | Designed solver specialization; on-tube unique characterization below. |
| P regular / calculus helper | `Tube.sinh_le_mul_cosh` (66) | PASS | Direct proved identity, bound or calculus consequence; no excess premise. |
| P regular / calculus helper | `Tube.isOpen_regularTube` (84) | PASS | Direct proved identity, bound or calculus consequence; no excess premise. |
| Coordinate helper | `Tube.coordCLM` (92) | PASS | Literal continuous linear projection on the full carrier. |
| P regular / calculus helper | `Tube.coordCLM_apply` (96) | PASS | Direct proved identity, bound or calculus consequence; no excess premise. |
| P regular / calculus helper | `Tube.fderiv_coord` (98) | PASS | Direct proved identity, bound or calculus consequence; no excess premise. |
| P regular / calculus helper | `Tube.fderiv_first` (105) | PASS | Direct proved identity, bound or calculus consequence; no excess premise. |
| P regular contraction | `Tube.keplerData_regular` (114) | PASS | All eight fields proved; κ = 39/100. |
| P regular / calculus helper | `Tube.keplerLongC_spec` (154) | PASS | Direct proved identity, bound or calculus consequence; no excess premise. |
| P regular / calculus helper | `Tube.keplerLongC_analyticOnNhd` (159) | PASS | Direct proved identity, bound or calculus consequence; no excess premise. |
| P regular / calculus helper | `Tube.jac_bound_aux` (163) | PASS | Direct proved identity, bound or calculus consequence; no excess premise. |
| P regular / calculus helper | `Tube.jac_ne_zero` (179) | PASS | Direct proved identity, bound or calculus consequence; no excess premise. |
| P regular / calculus helper | `Tube.fderiv_keplerLongC_mul` (189) | PASS | Direct proved identity, bound or calculus consequence; no excess premise. |
| P regular / calculus helper | `Tube.fderiv_keplerLongC_eq` (198) | PASS | Direct proved identity, bound or calculus consequence; no excess premise. |
| P regular / calculus helper | `Tube.hasFDerivAt_keplerLongC` (205) | PASS | Direct proved identity, bound or calculus consequence; no excess premise. |
| P regular (b) | `regularKepler_complex` (211) | PASS | Holomorphy, equation, strip bound, |J| > 3/5 and uniqueness. |
| P regular real slice | `keplerLongC_ofReal` (226) | PASS | Exact planned signature; h is automatic for real λ. |
| P regular shift | `keplerLongC_shift` (250) | PASS | Additive 2π lift on the tube. |
| P regular / calculus helper | `hasDerivAt_keplerLongC_lambda` (257) | PASS | Direct proved identity, bound or calculus consequence; no excess premise. |
| F2 regular | `fderiv_keplerLongC_vec` (274) | PASS | Both coordinate partials; negative cosine sign preserved. |
| F2 regular | `regularKepler_jac_bound` (300) | PASS | Sharp 1−cosh 1/4 lower bound and strict >3/5. |
| I scalar constants | `keplerE2` (312) | PASS | Literal blueprint scalar formula. |
| I scalar constants | `keplerTheta` (313) | PASS | Literal blueprint scalar formula. |
| I scalar constants | `keplerY0` (314) | PASS | Literal blueprint scalar formula. |
| I scalar constants | `keplerDeltaK` (315) | PASS | Literal blueprint scalar formula. |
| I scalar constants | `keplerDeltaE` (316) | PASS | Literal blueprint scalar formula. |
| I domain | `keplerTube` (319) | PASS | Literal thin tube about the real interval, not an eccentricity disc. |
| I solution | `eccAnomC` (323) | PASS WITH NOTES | Designed solver specialization; on-tube unique characterization below. |
| I tube helper | `Tube.e2_pos` (331) | PASS | Direct proved identity, bound or calculus consequence; no excess premise. |
| I tube helper | `Tube.e1_lt_e2` (333) | PASS | Direct proved identity, bound or calculus consequence; no excess premise. |
| I tube helper | `Tube.e2_lt_theta` (335) | PASS | Direct proved identity, bound or calculus consequence; no excess premise. |
| I tube helper | `Tube.theta_lt_one` (338) | PASS | Direct proved identity, bound or calculus consequence; no excess premise. |
| I tube helper | `Tube.one_lt_theta_div` (341) | PASS | Direct proved identity, bound or calculus consequence; no excess premise. |
| I tube helper | `Tube.y0_pos` (344) | PASS | Direct proved identity, bound or calculus consequence; no excess premise. |
| I tube helper | `Tube.cosh_y0` (347) | PASS | Direct proved identity, bound or calculus consequence; no excess premise. |
| I tube helper | `Tube.e2_mul_cosh` (352) | PASS | Direct proved identity, bound or calculus consequence; no excess premise. |
| I tube helper | `Tube.deltaK_pos` (357) | PASS | Direct proved identity, bound or calculus consequence; no excess premise. |
| I tube helper | `Tube.deltaE_pos` (364) | PASS | Direct proved identity, bound or calculus consequence; no excess premise. |
| I tube helper | `Tube.deltaE_le_left` (374) | PASS | Direct proved identity, bound or calculus consequence; no excess premise. |
| I tube helper | `Tube.deltaE_cosh_le` (376) | PASS | Direct proved identity, bound or calculus consequence; no excess premise. |
| I tube helper | `Tube.deltaK_lt_y0` (386) | PASS | Direct proved identity, bound or calculus consequence; no excess premise. |
| I tube helper | `Tube.isOpen_keplerTube` (394) | PASS | Direct proved identity, bound or calculus consequence; no excess premise. |
| I tube helper | `Tube.exists_real_near` (403) | PASS | Direct proved identity, bound or calculus consequence; no excess premise. |
| I tube helper | `Tube.tube_bounds` (411) | PASS | Direct proved identity, bound or calculus consequence; no excess premise. |
| I contraction | `Tube.keplerData_tube` (426) | PASS | All eight fields proved; κ = θ, no quantitative premises. |
| I tube helper | `Tube.eccAnomC_spec` (466) | PASS | Direct proved identity, bound or calculus consequence; no excess premise. |
| I tube helper | `Tube.eccAnomC_analyticOnNhd` (471) | PASS | Direct proved identity, bound or calculus consequence; no excess premise. |
| I tube helper | `Tube.keplerOp_zero_right` (475) | PASS | Direct proved identity, bound or calculus consequence; no excess premise. |
| I tube helper | `Tube.jac_bound_tube` (479) | PASS | Direct proved identity, bound or calculus consequence; no excess premise. |
| I tube helper | `Tube.jac_ne_zero_tube` (495) | PASS | Direct proved identity, bound or calculus consequence; no excess premise. |
| I tube helper | `Tube.fderiv_eccAnomC_eq` (504) | PASS | Direct proved identity, bound or calculus consequence; no excess premise. |
| I tube helper | `Tube.hasFDerivAt_eccAnomC` (525) | PASS | Direct proved identity, bound or calculus consequence; no excess premise. |
| I tube helper | `keplerConstants_pos` (533) | PASS | Direct proved identity, bound or calculus consequence; no excess premise. |
| I kepler-eq | `keplerEq_tube` (540) | PASS | Equation, uniqueness, holomorphy and all four analytic bounds. |
| I real points | `keplerTube_real_points` (560) | PASS WITH NOTES | Exact planned core-interval API; full real slice checked by composition (N1). |
| I shift | `eccAnomC_periodic` (580) | PASS | Tube membership plus additive 2π lift. |
| I circular identity | `eccAnomC_zero_ecc` (593) | PASS | ℓ itself is the unique solution in the strip. |
| I tube helper | `hasDerivAt_eccAnomC_ell` (605) | PASS | Direct proved identity, bound or calculus consequence; no excess premise. |
| F2 I | `hasDerivAt_eccAnomC_ecc` (621) | PASS | sin u/(1−e cos u); denominator proved nonzero. |

## Definitions and choice

| Definition | Classification | Body / carrier / characterization |
|---|---|---|
| `regularTube` | Literal predicate | Exact source tube on ℂ × (Fin 2 → ℂ). |
| `Tube.coordCLM` | Literal linear map | Projection from the Pi factor; `coordCLM_apply` is rfl. |
| `keplerE2` | Literal scalar | (1+e₁)/2, no selected constant. |
| `keplerTheta` | Literal scalar | (1+e₂)/2. |
| `keplerY0` | Literal scalar | arcosh(θ/e₂); admissible e₁ gives argument >1. |
| `keplerDeltaK` | Literal scalar | (1−θ)y₀/2. |
| `keplerDeltaE` | Literal scalar | Exact minimum with denominator 2 cosh y₀. |
| `keplerTube` | Literal predicate | Distance to the complex image of the closed real interval. |
| `keplerLongC` | Characterized on `regularTube` | Specializes inherited `keplerSol`; `Tube.keplerData_regular` proves unique existence and `Tube.keplerLongC_spec` proves the entire equation/strip/uniqueness characterization. |
| `eccAnomC` | Characterized on `keplerTube e₁`, 0<e₁<1 | Same construction from `Tube.keplerData_tube` and `Tube.eccAnomC_spec`. |

For the eight literal definitions: BODY_MATCH OK; PUBLIC_CARRIER OK; WELL_DEFINEDNESS and CHARACTERIZATION N/A_LITERAL; CHOICE_INDEPENDENCE N/A; verdict PASS. Scalar formulas are literal total formulas; analytic assertions use their source parameter range.

For the two selected solvers: BODY_MATCH OK against the exact design; SOURCE_CARRIER OK; WELL_DEFINEDNESS OK on that carrier; CHARACTERIZATION OK on that carrier; CHOICE_INDEPENDENCE OK by pointwise uniqueness. Both are implemented as total ambient functions, so their type alone does **not** characterize a solution outside the source tubes. The inherited `keplerSol` explicitly returns 0 if unique existence fails. Design §1 (lines 97–106) explicitly adopts this totalization and requires consumer guard hypotheses; it is not introduced by KEP-4. Every equation/analytic/derivative claim here proves and uses on-tube uniqueness before consuming the definition. No result relies on junk values. Accordingly PASS WITH NOTES under the package brief's rule “Junk values or fallbacks that a theorem relies on fail.” This is not a certification of an unrestricted characterized object on the entire ambient carrier, or a frozen definition eligible for unconditional reuse.

## Binder audit

No new structure, class, instance, abbrev or bundled input is introduced. The only bundled proof object in conclusions is `KeplerData`; its fields are produced, never hypotheses of a KEP-4 theorem. Expanded fields: `isOpen`, `analytic_a`, `analytic_b`, `analytic_c`, `y₀_pos`, `κ_lt`, `invariant`, `contraction`. Each is proved at lines 117–152 or 429–464. Thus no existence/estimate is smuggled in a standing assumption.

The following table records each theorem input binder separately. TYPING denotes scalar/point/index/direction variables, SOURCE denotes the source range or tube membership; STANDING=0, RULED=0, EXCESS=0. Helpers are explicitly internal mathematical steps on their stated carriers, not substituted for a stronger source result. Source references P and I mean the blueprint propositions cited above; C means elementary coordinate calculus or I's scalar/strip proof. Implicit section parameter `e₁` is included wherever auto-generalized.

| Declaration | Binder | Bin | Source / meaning |
|---|---|---|---|
| `cosh_one_lt` | none | — | Closed theorem. |
| `Tube.sinh_le_mul_cosh` | `y : ℝ` | TYPING | C / ambient data. |
| `Tube.sinh_le_mul_cosh` | `hy : 0 ≤ y` | SOURCE | I parameter/tube. |
| `Tube.isOpen_regularTube` | none | — | Closed theorem. |
| `Tube.coordCLM_apply` | `i : Fin 2` | TYPING | C / ambient data. |
| `Tube.coordCLM_apply` | `x : ℂ × (Fin 2 → ℂ)` | TYPING | C / ambient data. |
| `Tube.fderiv_coord` | `i : Fin 2` | TYPING | C / ambient data. |
| `Tube.fderiv_coord` | `x : ℂ × (Fin 2 → ℂ)` | TYPING | C / ambient data. |
| `Tube.fderiv_coord` | `v : ℂ × (Fin 2 → ℂ)` | TYPING | C / ambient data. |
| `Tube.fderiv_first` | `x : ℂ × (Fin 2 → ℂ)` | TYPING | C / ambient data. |
| `Tube.fderiv_first` | `v : ℂ × (Fin 2 → ℂ)` | TYPING | C / ambient data. |
| `Tube.keplerData_regular` | none | — | Closed theorem. |
| `Tube.keplerLongC_spec` | `x : ℂ × (Fin 2 → ℂ)` | TYPING | C / ambient data. |
| `Tube.keplerLongC_spec` | `hx : x ∈ regularTube` | SOURCE | P tube. |
| `Tube.keplerLongC_analyticOnNhd` | none | — | Closed theorem. |
| `Tube.jac_bound_aux` | `x : ℂ × (Fin 2 → ℂ)` | TYPING | C / ambient data. |
| `Tube.jac_bound_aux` | `hx : x ∈ regularTube` | SOURCE | P tube. |
| `Tube.jac_ne_zero` | `x : ℂ × (Fin 2 → ℂ)` | TYPING | C / ambient data. |
| `Tube.jac_ne_zero` | `hx : x ∈ regularTube` | SOURCE | P tube. |
| `Tube.fderiv_keplerLongC_mul` | `x : ℂ × (Fin 2 → ℂ)` | TYPING | C / ambient data. |
| `Tube.fderiv_keplerLongC_mul` | `hx : x ∈ regularTube` | SOURCE | P tube. |
| `Tube.fderiv_keplerLongC_mul` | `v : ℂ × (Fin 2 → ℂ)` | TYPING | C / ambient data. |
| `Tube.fderiv_keplerLongC_eq` | `x : ℂ × (Fin 2 → ℂ)` | TYPING | C / ambient data. |
| `Tube.fderiv_keplerLongC_eq` | `hx : x ∈ regularTube` | SOURCE | P tube. |
| `Tube.fderiv_keplerLongC_eq` | `v : ℂ × (Fin 2 → ℂ)` | TYPING | C / ambient data. |
| `Tube.hasFDerivAt_keplerLongC` | `x : ℂ × (Fin 2 → ℂ)` | TYPING | C / ambient data. |
| `Tube.hasFDerivAt_keplerLongC` | `hx : x ∈ regularTube` | SOURCE | P tube. |
| `regularKepler_complex` | none | — | Closed theorem. |
| `keplerLongC_ofReal` | `lam : ℝ` | TYPING | C / ambient data. |
| `keplerLongC_ofReal` | `v : Fin 2 → ℝ` | TYPING | C / ambient data. |
| `keplerLongC_ofReal` | `h : (lam : ℂ) ∈ {z : ℂ | |z.im| < 1 / 4}` | SOURCE | P tube. |
| `keplerLongC_ofReal` | `hv : |v 0| + |v 1| < 1 / 4` | SOURCE | P tube. |
| `keplerLongC_shift` | `x : ℂ × (Fin 2 → ℂ)` | TYPING | C / ambient data. |
| `keplerLongC_shift` | `hx : x ∈ regularTube` | SOURCE | P tube. |
| `hasDerivAt_keplerLongC_lambda` | `x : ℂ × (Fin 2 → ℂ)` | TYPING | C / ambient data. |
| `hasDerivAt_keplerLongC_lambda` | `hx : x ∈ regularTube` | SOURCE | P tube. |
| `fderiv_keplerLongC_vec` | `x : ℂ × (Fin 2 → ℂ)` | TYPING | C / ambient data. |
| `fderiv_keplerLongC_vec` | `hx : x ∈ regularTube` | SOURCE | P tube. |
| `regularKepler_jac_bound` | `x : ℂ × (Fin 2 → ℂ)` | TYPING | C / ambient data. |
| `regularKepler_jac_bound` | `hx : x ∈ regularTube` | SOURCE | P tube. |
| `Tube.e2_pos` | `e₁ : ℝ (implicit section variable)` | TYPING | C / ambient data. |
| `Tube.e2_pos` | `h0 : 0 < e₁` | SOURCE | I parameter/tube. |
| `Tube.e1_lt_e2` | `e₁ : ℝ (implicit section variable)` | TYPING | C / ambient data. |
| `Tube.e1_lt_e2` | `h1 : e₁ < 1` | SOURCE | I parameter/tube. |
| `Tube.e2_lt_theta` | `e₁ : ℝ (implicit section variable)` | TYPING | C / ambient data. |
| `Tube.e2_lt_theta` | `h1 : e₁ < 1` | SOURCE | I parameter/tube. |
| `Tube.theta_lt_one` | `e₁ : ℝ (implicit section variable)` | TYPING | C / ambient data. |
| `Tube.theta_lt_one` | `h1 : e₁ < 1` | SOURCE | I parameter/tube. |
| `Tube.one_lt_theta_div` | `e₁ : ℝ (implicit section variable)` | TYPING | C / ambient data. |
| `Tube.one_lt_theta_div` | `h0 : 0 < e₁` | SOURCE | I parameter/tube. |
| `Tube.one_lt_theta_div` | `h1 : e₁ < 1` | SOURCE | I parameter/tube. |
| `Tube.y0_pos` | `e₁ : ℝ (implicit section variable)` | TYPING | C / ambient data. |
| `Tube.y0_pos` | `h0 : 0 < e₁` | SOURCE | I parameter/tube. |
| `Tube.y0_pos` | `h1 : e₁ < 1` | SOURCE | I parameter/tube. |
| `Tube.cosh_y0` | `e₁ : ℝ (implicit section variable)` | TYPING | C / ambient data. |
| `Tube.cosh_y0` | `h0 : 0 < e₁` | SOURCE | I parameter/tube. |
| `Tube.cosh_y0` | `h1 : e₁ < 1` | SOURCE | I parameter/tube. |
| `Tube.e2_mul_cosh` | `e₁ : ℝ (implicit section variable)` | TYPING | C / ambient data. |
| `Tube.e2_mul_cosh` | `h0 : 0 < e₁` | SOURCE | I parameter/tube. |
| `Tube.e2_mul_cosh` | `h1 : e₁ < 1` | SOURCE | I parameter/tube. |
| `Tube.deltaK_pos` | `e₁ : ℝ (implicit section variable)` | TYPING | C / ambient data. |
| `Tube.deltaK_pos` | `h0 : 0 < e₁` | SOURCE | I parameter/tube. |
| `Tube.deltaK_pos` | `h1 : e₁ < 1` | SOURCE | I parameter/tube. |
| `Tube.deltaE_pos` | `e₁ : ℝ (implicit section variable)` | TYPING | C / ambient data. |
| `Tube.deltaE_pos` | `h0 : 0 < e₁` | SOURCE | I parameter/tube. |
| `Tube.deltaE_pos` | `h1 : e₁ < 1` | SOURCE | I parameter/tube. |
| `Tube.deltaE_le_left` | `e₁ : ℝ` | TYPING | C / ambient data. |
| `Tube.deltaE_cosh_le` | `e₁ : ℝ` | TYPING | C / ambient data. |
| `Tube.deltaK_lt_y0` | `e₁ : ℝ (implicit section variable)` | TYPING | C / ambient data. |
| `Tube.deltaK_lt_y0` | `h0 : 0 < e₁` | SOURCE | I parameter/tube. |
| `Tube.deltaK_lt_y0` | `h1 : e₁ < 1` | SOURCE | I parameter/tube. |
| `Tube.isOpen_keplerTube` | `e₁ : ℝ` | TYPING | C / ambient data. |
| `Tube.exists_real_near` | `e₁ : ℝ (implicit section variable)` | TYPING | C / ambient data. |
| `Tube.exists_real_near` | `x : ℂ × ℂ` | TYPING | C / ambient data. |
| `Tube.exists_real_near` | `h0 : 0 < e₁` | SOURCE | I parameter/tube. |
| `Tube.exists_real_near` | `hx : x ∈ keplerTube e₁` | SOURCE | I parameter/tube. |
| `Tube.tube_bounds` | `e₁ : ℝ (implicit section variable)` | TYPING | C / ambient data. |
| `Tube.tube_bounds` | `x : ℂ × ℂ` | TYPING | C / ambient data. |
| `Tube.tube_bounds` | `h0 : 0 < e₁` | SOURCE | I parameter/tube. |
| `Tube.tube_bounds` | `hx : x ∈ keplerTube e₁` | SOURCE | I parameter/tube. |
| `Tube.keplerData_tube` | `e₁ : ℝ (implicit section variable)` | TYPING | C / ambient data. |
| `Tube.keplerData_tube` | `h0 : 0 < e₁` | SOURCE | I parameter/tube. |
| `Tube.keplerData_tube` | `h1 : e₁ < 1` | SOURCE | I parameter/tube. |
| `Tube.eccAnomC_spec` | `e₁ : ℝ (implicit section variable)` | TYPING | C / ambient data. |
| `Tube.eccAnomC_spec` | `x : ℂ × ℂ` | TYPING | C / ambient data. |
| `Tube.eccAnomC_spec` | `h0 : 0 < e₁` | SOURCE | I parameter/tube. |
| `Tube.eccAnomC_spec` | `h1 : e₁ < 1` | SOURCE | I parameter/tube. |
| `Tube.eccAnomC_spec` | `hx : x ∈ keplerTube e₁` | SOURCE | I parameter/tube. |
| `Tube.eccAnomC_analyticOnNhd` | `e₁ : ℝ (implicit section variable)` | TYPING | C / ambient data. |
| `Tube.eccAnomC_analyticOnNhd` | `h0 : 0 < e₁` | SOURCE | I parameter/tube. |
| `Tube.eccAnomC_analyticOnNhd` | `h1 : e₁ < 1` | SOURCE | I parameter/tube. |
| `Tube.keplerOp_zero_right` | `a : ℂ` | TYPING | C / ambient data. |
| `Tube.keplerOp_zero_right` | `G : ℂ` | TYPING | C / ambient data. |
| `Tube.jac_bound_tube` | `e₁ : ℝ (implicit section variable)` | TYPING | C / ambient data. |
| `Tube.jac_bound_tube` | `x : ℂ × ℂ` | TYPING | C / ambient data. |
| `Tube.jac_bound_tube` | `h0 : 0 < e₁` | SOURCE | I parameter/tube. |
| `Tube.jac_bound_tube` | `h1 : e₁ < 1` | SOURCE | I parameter/tube. |
| `Tube.jac_bound_tube` | `hx : x ∈ keplerTube e₁` | SOURCE | I parameter/tube. |
| `Tube.jac_ne_zero_tube` | `e₁ : ℝ (implicit section variable)` | TYPING | C / ambient data. |
| `Tube.jac_ne_zero_tube` | `x : ℂ × ℂ` | TYPING | C / ambient data. |
| `Tube.jac_ne_zero_tube` | `h0 : 0 < e₁` | SOURCE | I parameter/tube. |
| `Tube.jac_ne_zero_tube` | `h1 : e₁ < 1` | SOURCE | I parameter/tube. |
| `Tube.jac_ne_zero_tube` | `hx : x ∈ keplerTube e₁` | SOURCE | I parameter/tube. |
| `Tube.fderiv_eccAnomC_eq` | `e₁ : ℝ (implicit section variable)` | TYPING | C / ambient data. |
| `Tube.fderiv_eccAnomC_eq` | `x : ℂ × ℂ` | TYPING | C / ambient data. |
| `Tube.fderiv_eccAnomC_eq` | `h0 : 0 < e₁` | SOURCE | I parameter/tube. |
| `Tube.fderiv_eccAnomC_eq` | `h1 : e₁ < 1` | SOURCE | I parameter/tube. |
| `Tube.fderiv_eccAnomC_eq` | `hx : x ∈ keplerTube e₁` | SOURCE | I parameter/tube. |
| `Tube.fderiv_eccAnomC_eq` | `v : ℂ × ℂ` | TYPING | C / ambient data. |
| `Tube.hasFDerivAt_eccAnomC` | `e₁ : ℝ (implicit section variable)` | TYPING | C / ambient data. |
| `Tube.hasFDerivAt_eccAnomC` | `h0 : 0 < e₁` | SOURCE | I parameter/tube. |
| `Tube.hasFDerivAt_eccAnomC` | `h1 : e₁ < 1` | SOURCE | I parameter/tube. |
| `Tube.hasFDerivAt_eccAnomC` | `x : ℂ × ℂ` | TYPING | C / ambient data. |
| `Tube.hasFDerivAt_eccAnomC` | `hx : x ∈ keplerTube e₁` | SOURCE | I parameter/tube. |
| `keplerConstants_pos` | `e₁ : ℝ` | TYPING | C / ambient data. |
| `keplerConstants_pos` | `h0 : 0 < e₁` | SOURCE | I parameter/tube. |
| `keplerConstants_pos` | `h1 : e₁ < 1` | SOURCE | I parameter/tube. |
| `keplerEq_tube` | `e₁ : ℝ` | TYPING | C / ambient data. |
| `keplerEq_tube` | `h0 : 0 < e₁` | SOURCE | I parameter/tube. |
| `keplerEq_tube` | `h1 : e₁ < 1` | SOURCE | I parameter/tube. |
| `keplerTube_real_points` | `e₁ : ℝ` | TYPING | C / ambient data. |
| `keplerTube_real_points` | `h0 : 0 < e₁` | SOURCE | I parameter/tube. |
| `keplerTube_real_points` | `h1 : e₁ < 1` | SOURCE | I parameter/tube. |
| `keplerTube_real_points` | `ℓ : ℝ` | TYPING | C / ambient data. |
| `keplerTube_real_points` | `e : ℝ` | TYPING | C / ambient data. |
| `keplerTube_real_points` | `he : |e| ≤ e₁` | SOURCE | I parameter/tube. |
| `eccAnomC_periodic` | `e₁ : ℝ` | TYPING | C / ambient data. |
| `eccAnomC_periodic` | `h0 : 0 < e₁` | SOURCE | I parameter/tube. |
| `eccAnomC_periodic` | `h1 : e₁ < 1` | SOURCE | I parameter/tube. |
| `eccAnomC_periodic` | `x : ℂ × ℂ` | TYPING | C / ambient data. |
| `eccAnomC_periodic` | `hx : x ∈ keplerTube e₁` | SOURCE | I parameter/tube. |
| `eccAnomC_zero_ecc` | `e₁ : ℝ` | TYPING | C / ambient data. |
| `eccAnomC_zero_ecc` | `h0 : 0 < e₁` | SOURCE | I parameter/tube. |
| `eccAnomC_zero_ecc` | `h1 : e₁ < 1` | SOURCE | I parameter/tube. |
| `eccAnomC_zero_ecc` | `ℓ : ℂ` | TYPING | C / ambient data. |
| `eccAnomC_zero_ecc` | `hℓ : |ℓ.im| < keplerDeltaK e₁` | SOURCE | I parameter/tube. |
| `hasDerivAt_eccAnomC_ell` | `e₁ : ℝ` | TYPING | C / ambient data. |
| `hasDerivAt_eccAnomC_ell` | `h0 : 0 < e₁` | SOURCE | I parameter/tube. |
| `hasDerivAt_eccAnomC_ell` | `h1 : e₁ < 1` | SOURCE | I parameter/tube. |
| `hasDerivAt_eccAnomC_ell` | `x : ℂ × ℂ` | TYPING | C / ambient data. |
| `hasDerivAt_eccAnomC_ell` | `hx : x ∈ keplerTube e₁` | SOURCE | I parameter/tube. |
| `hasDerivAt_eccAnomC_ecc` | `e₁ : ℝ` | TYPING | C / ambient data. |
| `hasDerivAt_eccAnomC_ecc` | `h0 : 0 < e₁` | SOURCE | I parameter/tube. |
| `hasDerivAt_eccAnomC_ecc` | `h1 : e₁ < 1` | SOURCE | I parameter/tube. |
| `hasDerivAt_eccAnomC_ecc` | `x : ℂ × ℂ` | TYPING | C / ambient data. |
| `hasDerivAt_eccAnomC_ecc` | `hx : x ∈ keplerTube e₁` | SOURCE | I parameter/tube. |

Binder occurrence counts: SOURCE=73, TYPING=68, STANDING=0, RULED=0, EXCESS=0. These count theorem input occurrences, including pure data, not universal variables inside conclusions. The uniqueness conclusions quantify over G and its strip/equation predicates; those are the source uniqueness property, not assumed existence. No new typeclass binders occur.

## Refutation pass, notes and limits

**N1 — API coverage note, refuted as a mathematical blocker.** At line 560 the public lemma assumes `he : |e| ≤ e₁`. Blueprint-I line 116 says “u=u_R on the real points of every P(e₁)”, including a small real collar outside that core interval. The lemma exactly matches the design appendix, so this is not signature drift. The audit's broader composition probe assumes only real tube membership: `Tube.tube_bounds` gives `|e|≤e₂<1`; `eccAnom_eq` supplies the real equation; the real solution has imaginary part 0≤y₀; `Tube.eccAnomC_spec` uniqueness identifies the solutions. Thus the stronger source clause follows from actual exported results without a new premise. A named full-real-slice convenience lemma would improve the API; no source change was made. The probe is recorded below.

```lean
-- Full real-slice clause: checks whether the core-interval API causes a genuine gap.
example {e₁ : ℝ} (h0 : 0 < e₁) (h1 : e₁ < 1) {ℓ e : ℝ}
    (hx : ((ℓ : ℂ), (e : ℂ)) ∈ keplerTube e₁) :
    eccAnomC e₁ ((ℓ : ℂ), (e : ℂ)) = (eccAnom ℓ e : ℂ) := by
  have he : |e| < 1 := by
    have hb := (Tube.tube_bounds h0 hx).1
    rw [Complex.norm_real] at hb
    exact hb.trans_lt ((Tube.e2_lt_theta h1).trans (Tube.theta_lt_one h1))
  have hEq := congrArg (fun r : ℝ => (r : ℂ)) (eccAnom_eq ℓ he)
  simp only [Complex.ofReal_sub, Complex.ofReal_mul, Complex.ofReal_sin] at hEq
  have hop : keplerOp (e : ℂ) 0 ((eccAnom ℓ e : ℝ) : ℂ) = (ℓ : ℂ) := by
    rw [Tube.keplerOp_zero_right]
    exact hEq
  have hs : |((eccAnom ℓ e : ℝ) : ℂ).im| ≤ keplerY0 e₁ := by
    simpa using (Tube.y0_pos h0 h1).le
  exact ((Tube.eccAnomC_spec h0 h1 hx).2.2 _ hs hop).symm

```

Adversarial checks also considered: replacing the thin tube by a complex disc (excluded by its actual definition); dropping Im(e) from invariance (it is retained); denominator sign mistakes (checked by differentiating the signed operator); an unbounded strip invalidating contraction (the strip is complete and convex, no boundedness needed); choice outside the valid locus leaking into a derivative (openness/analytic neighborhood agreement excludes it); and replacing additive anomaly shifts with periodic anomalies (the statements use additive 2π). None survived as a mathematical blocker.

The regular implementation uses the slightly coarser exp-based invariance bound anticipated in design §7.1, and obtains real agreement directly by unique comparison rather than `keplerSol_real`. Design D19 authorizes analytic IFT in place of the blueprint's uniform Picard limit. These are proof-route variations preserving the statements, not changes to constants, domains or quantifiers.

No new suspected defect in a pinned external source was found. The blueprint explicitly labels these quantitative analytic constructions as original arguments; this audit does not re-audit Chi05 or LP17 PDFs, prove coordinate-chart/physical results, or seal any I/N/P headline. The design's B10(i) numerics are confirmed. No implementation deviation was introduced by this audit.

## Verification receipts

All audit-started Lean commands are sequential with `LEAN_NUM_THREADS=1` and `nice -n 5`. The targeted build uses the required compile gate; no broad build, clean, update, cache fetch, resource override or dependency edit was performed. Other users' processes were left alone. Lake's reported 9094 jobs are its dependency-job count, not 9094 rebuilt modules.

1. `git diff inp...HEAD -- KAM/Frozen manifest KAM.lean README.md`: no diff output; only the multiple-merge-base warning quoted above. `git diff --check inp...HEAD`: exit **0**, same warning, no whitespace errors. `git diff --check`: exit **0**, no output. The current mutable `inp-kep3...HEAD` does show unrelated generated-root differences; these are isolated as historical scope drift, not silently omitted from the audit.
2. `LEAN_NUM_THREADS=1 /mnt/HC_Volume_106379410/orchestrator-tools/inp_lake_build.sh /root/code/KAM-inp-kep4 KAM.Kepler.KeplerTube`: exit **0**. Output:

   ```text
   [inp-gate] slot 2 acquired 00:49:09 for KAM.Kepler.KeplerTube
   Build completed successfully (9094 jobs).
   ```

3. `LEAN_NUM_THREADS=1 nice -n 5 lake env lean .lake/abi-scratch/KEP4Audit.lean > .lake/abi-scratch/KEP4Audit.log 2>&1`: exit **0**; 14 copied exact-design theorem applications and the full real-slice composition all elaborated, with no warnings/errors. The probe ran `#print axioms` on all 51 KEP-4 public theorems and all 27 inherited KEP-3 public theorems. All 78 outputs have exactly `[propext, Classical.choice, Quot.sound]`. Exact output:

```text
'KAM.Kepler.cosh_one_lt' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.Tube.sinh_le_mul_cosh' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.Tube.isOpen_regularTube' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.Tube.coordCLM_apply' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.Tube.fderiv_coord' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.Tube.fderiv_first' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.Tube.keplerData_regular' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.Tube.keplerLongC_spec' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.Tube.keplerLongC_analyticOnNhd' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.Tube.jac_bound_aux' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.Tube.jac_ne_zero' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.Tube.fderiv_keplerLongC_mul' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.Tube.fderiv_keplerLongC_eq' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.Tube.hasFDerivAt_keplerLongC' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.regularKepler_complex' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.keplerLongC_ofReal' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.keplerLongC_shift' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.hasDerivAt_keplerLongC_lambda' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.fderiv_keplerLongC_vec' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.regularKepler_jac_bound' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.Tube.e2_pos' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.Tube.e1_lt_e2' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.Tube.e2_lt_theta' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.Tube.theta_lt_one' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.Tube.one_lt_theta_div' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.Tube.y0_pos' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.Tube.cosh_y0' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.Tube.e2_mul_cosh' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.Tube.deltaK_pos' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.Tube.deltaE_pos' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.Tube.deltaE_le_left' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.Tube.deltaE_cosh_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.Tube.deltaK_lt_y0' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.Tube.isOpen_keplerTube' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.Tube.exists_real_near' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.Tube.tube_bounds' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.Tube.keplerData_tube' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.Tube.eccAnomC_spec' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.Tube.eccAnomC_analyticOnNhd' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.Tube.keplerOp_zero_right' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.Tube.jac_bound_tube' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.Tube.jac_ne_zero_tube' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.Tube.fderiv_eccAnomC_eq' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.Tube.hasFDerivAt_eccAnomC' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.keplerConstants_pos' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.keplerEq_tube' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.keplerTube_real_points' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.eccAnomC_periodic' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.eccAnomC_zero_ecc' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.hasDerivAt_eccAnomC_ell' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.hasDerivAt_eccAnomC_ecc' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.EqC.re_sin' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.EqC.im_sin' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.EqC.re_cos' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.EqC.im_cos' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.EqC.abs_re_sin_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.EqC.abs_im_sin_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.EqC.abs_re_cos_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.EqC.abs_im_cos_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.EqC.norm_sin_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.EqC.norm_cos_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.EqC.keplerOp_eq_iff' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.EqC.isClosed_strip' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.EqC.convex_strip' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.EqC.abs_im_fixMap_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.EqC.hasDerivAt_fixMap' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.EqC.norm_dfix_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.EqC.norm_fixMap_sub_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.EqC.eq_of_keplerOp_eq' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.EqC.abs_im_lt_of_keplerOp' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.EqC.existsUnique_keplerOp' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.EqC.keplerSol_props' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.keplerSol_spec' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.keplerSol_analyticOnNhd' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.keplerSol_differentiableOn' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.keplerSol_fderiv' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.keplerSol_real' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.keplerSol_shift' depends on axioms: [propext, Classical.choice, Quot.sound]
```

PENDING_REPLAY_LINT

