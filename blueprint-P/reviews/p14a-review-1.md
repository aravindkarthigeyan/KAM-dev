# Independent review of Part 14a — round 1

**Verdict: REVISE.** The deterministic AMD confinement argument survives recomputation, including the first-exit bootstrap, continuation beyond both endpoints and physical reconstruction. The stopped N-PARTIAL-CONVEX bridge has the right domain, erosion, sign, normalization and quantifier architecture, but its proposed complex Hessian constant does **not** bound the norm required by the frozen N theorem. An explicit admissible eight-planet counterexample is below. This is a repairable defect of the blueprint's N-input lemma, not a defect found in either frozen D25 theorem.

Reviewed file: `blueprint-P/parts/p14a-amd-expsafe.tex`, 350 lines, 57,651 bytes; SHA256 `8e513ddfe468cf94a75461762951e9d66ed54ebc5538049236c3a6baea17ff4c`. Snapshot: HEAD `2aeff6c9e16459ffac2fde8f2f5a7bf2f97985cf`, 2026-10-28 (review begun 2026-10-27). During closeout the shared target received exactly the seven cross-track macro repairs (independently byte-compared against the initial snapshot with only those substitutions). The final reviewed text is 350 lines, 57,658 bytes, SHA256 `350038944fd0090ab6559fe12f93d329ffec75e8e68494fe6294bb1c64a0be56`; all mathematical text is unchanged. This is a focused, independent, refute-first mathematical/source-interface review. No mathematical source or frozen file was edited; no Lean build or provider proof certification is claimed.

## Materials and frozen statement comparison

Read the full review brief and current governing rules/conventions/plans; Part 14a in full; Part 0's D25 definitions and both transcribed theorems; the actual frozen planetary and N-PARTIAL-CONVEX declarations and their meaning-carrying definitions; the relevant P Parts 1, 6, 7 chart, dynamics and reconstruction interfaces; N Part 0's partial-system definitions and N Part 3's solution, first-exit, uniqueness, maximality, compact/uniform continuation interfaces. Inspected the P-p14a1/P-p14a2 graph packets: they are mechanical pre-extractions with TODO source-contract fields, not prior mathematical review receipts. Checked the cited D25 audit discussion without treating its earlier approval as proof of the present estimates.

| Authoritative input | SHA256 |
|---|---|
| `KAM/Frozen/Planetary/Theorems/AmdConfinement.lean` | `9178a6ef739497349dbeb1acde187fe8446de0f7a7231b5428782bb61ebaac72` |
| `KAM/Frozen/Planetary/Theorems/PlanetaryExponentialSafety.lean` | `aae99c96448ebee46eb673f16f29f5a326e3d66051b8b2764c635dee0556ca07` |
| `KAM/Frozen/Nekhoroshev/Theorems/PartialConvexNekhoroshev.lean` | `e6bb9443a34096433a84e3450162ed032b07d934352c7ecaaa10eb7caf16b4a3` |
| `sources/incoming-round3/nek77-eng.pdf` | `0bfe624cf108096badd7e27fc40ca800e2948b68dce2bf8b9c653e0eaec4def6` |
| `sources/incoming-zohar2/r2-amd17.pdf` | `6b3c7aad2c2bf69612c0e0a65a5409f40a03e330253f8b3880f8e53d40f09361` |

Read LP17 p.2 (4)–(11), and Nek77 pp.29–31 and 54–57 directly from the pinned PDFs. Rendered and inspected printed p.56 because the text layer loses the exponent formulas. It gives `a=2/(6s²−3s+14)` and `b=3a/2`; s counts planets. Printed p.57 does contain Lemma 12.4.B, the analytic-neighborhood statement cited here.

Part 0 and the two final theorem statements in Part 14a agree with the frozen types:

| Frozen binder / conclusion | Transcription and consumption |
|---|---|
| AMD: n≥2; B and B.Admissible | Ambient standing data, expanded as B1–B4. Mass/lower positivity, strict nested action intervals, positive AMD/eccentricity and geometric bounds all retained. |
| mu,T,delta>0, action factor-two margins, AMD margin | All precede z0; used by the stopped test, strict bootstrap and compact closure. No mu-smallness is added to the deterministic helper. |
| z0 in the **inner** LowAMDRegion; hstop | Exact initial predicate and frozen StoppedActionBound; hstop is an explicit source premise of this theorem, not a conclusion-shaped addition. |
| Existence of z with z(0)=z0 and IsMovingSolutionOn on closed [-T,T] | Proved using the actual frozen predicate and a maximal open solution interval strictly containing both endpoints. |
| MovingUniqueOn | Same quantification over arbitrary open convex U containing 0, competitor w with w(0)=z(0), and equality on U∩[-T,T]. No confinement premise on the competitor. |
| Newton predicate | Actual masses `actualMasses 1 B.mass mu`, barycentricPositions/Velocities with m0=1, on the same closed time set. No velocity p/m factor is lost. |
| Every certified time: outer region, exact totalMomentum conservation, e_i<ecc, d≤radius(q_i)≤R, PairBounds(d,2R) | All present, including Sun–planet pairs and their upper bounds. `totalMomentum` is the frozen sum of planar angular momenta, despite its abbreviated name. |
| AMD≤A0+n delta and every scalar action drift≤delta | Both retained at every t∈[-T,T]. |
| EXP-SAFE: n,B,hB → ∃muStar,c,C>0 → ∀mu → ∀z0 → ∃z | Choice order preserved. No perturbation, orbit or initial-phase dependence is added to these constants. |
| EXP-SAFE horizon and drift | Exactly symmetric `exp(c mu^(-planetaryTimeExponent n))`, and semimajor-axis drift `≤C mu^(planetaryDriftExponent n)` at every absolute-time query. No substitution of action drift for axis drift in the final conclusion. |

The definitions of ProgradeElliptic, keplerEnergy/Axis/Action/EccVector, physicalAMD, LowAMDRegion, AMDBox.Admissible, StoppedActionBound, IsMovingSolutionOn, MovingUniqueOn, PairBounds and the barycentric predicates were checked against the actual frozen bodies. Their guards and whole-function meanings are respected in the arguments below. The N bridge exception is the norm in F14A-01.

## Findings

Locations refer to the hashed 350-line target.

| ID | Location / label | Severity | Finding and refutation evidence | Exact proposed fix |
|---|---|---|---|---|
| F14A-01 | 195–206, especially 198 and 204; `bpP:p14:h-data`, `stepP:p14:hd-iv`; consumed at st-thr | major | The constant `max_i 3m_i³/(5ell_i/8)^4` bounds the diagonal Hessian **matrix** acting from l-infinity to l-infinity. The frozen N hypothesis is `norm (fderiv C (fderiv C h) z) ≤ Mcomplex`, namely the curried scalar bilinear second derivative. Its norm on max-norm vectors generally sums diagonal contributions. The equality “whose operator norm ... is max_i” in hd-iv is false for the needed object. The conservative 5/8 denominator does not rescue the stated bound for general n; the admissible n=8 example below violates it. | Define `Mcomplex := sum_i 3m_i³/(5ell_i/8)^4`, or `n * max_i ...`. Prove `|D²h(z)[v,w]| ≤ Mcomplex ||v||_infty ||w||_infty`, then take both operator suprema to obtain the literal frozen hHess bound. State that precise nested-fderiv norm in h-data(iv), propagate this corrected constant to the two N thresholds and constants table. No frozen statement/exponent change is needed. |
| F14A-02 | 198,223,229,240,268,282,283 | minor; closed in final delta | Seven occurrences use local `ref` for valid external N labels. They produce all seven unresolved-reference warnings. No label renaming is needed. | Replace each by `Nref` with the **same label**, using the exact inventory below; recompile. **Applied concurrently in the shared target and independently verified before closeout.** |
| F14A-03 | 212–218; `bpP:p14:tube`, especially tb-leb | minor | The lemma allows K_* empty, but the finite-cover construction takes a minimum over the chosen cover without a nonempty-cover case. Its actual application has a nonempty compact cell, so this does not block that application. | Add the empty case: choose r0=1 and f^C on the empty tube (or the zero total function restricted there). In the nonempty case choose a nonempty finite subcover before taking its positive minimum. |

The Hessian finding survived two refutation attempts: (1) replacing the bilinear norm by a row-sum matrix norm is not permitted by the frozen nested-fderiv type; (2) the extra room in 5ell/8 may cover some small-n examples, but the explicit n=8 admissible data below defeat that numerical slack. No defect in the frozen theorem itself was found. No new pinned-source erratum was established.

### Explicit counterexample to the proposed h-data bound

Use n=8, indices i=0,…,7, with the following **rational** box data:

- `m_i=1−i/100`, `ell_i=1`, `innerLower_i=1.00002`, `innerUpper_i=1.00004`, `u_i=1.0001`.
- `ecc=1/1000`, `A0=1/20000000`, `A1=1/10000000`, `d=1/1000`, `R=2`.
- For the enlargement take `kappa=1/1000000`, `e1=1/500`, `Aplus=1/5000000`.

All masses and nested endpoints are positive. The original B2 AMD threshold is at least `ecc²/2=1/2000000>A1`, using `1−sqrt(1−e²)≥e²/2`. Its radial lower margin over d is 499/500; its upper-radius margin below R is positive. Exact rational evaluation of all original i<j radial margins after subtracting d gives minimum

`620132376637/36300000000000 > 0`.

The enlarged E2 threshold is at least `(1−2kappa)e1²/2=499999/250000000000>Aplus`. E1 holds. E3's solar bound is positive with ample room, and the minimum enlarged pair margin after subtracting d/2 is

`19056759382297099/1225125000000000000 > 0`.

Thus these are valid admissible/enlarged data. At the real point I=(1,…,1), which lies in G' and therefore in its complex rho-neighborhood for **every** permitted positive rho, the second derivative is

`D²h(I)[v,w]=−sum_i 3m_i³ v_i w_i`.

Taking v=w=(1,…,1), both of max norm 1, proves

`norm (fderiv C (fderiv C h) I) ≥ 3 sum_i m_i³ = 337557/15625 = 21.603648`.

But the proposed `Mcomplex=3/(5/8)^4=12288/625=19.6608`. The strict violation is the exact rational number `30357/15625`. These checks use exact rational arithmetic, not a floating-point search or an assumption that an arbitrary Hessian can occur here.

For the corrected sum constant, the proof is direct on the existing guarded domain:

`|sum_i (−3m_i³ z_i^(−4)) v_i w_i| ≤ (sum_i 3m_i³/(5ell_i/8)^4) ||v||_infty ||w||_infty`.

The other two constants g_h and varsigma_h do not need this factor: their uses are, respectively, a conservative lower bound on a max-norm gradient and a coefficientwise lower bound multiplying sum_i v_i².

## The seven undefined references: exact replacements

Every cited label already exists in the owning N file. The initial defect was the cross-track macro, not an absent theorem or a wrong spelling. There were seven occurrences of six distinct labels. All seven replacements below are now present in the final shared target; no local N refs remain.

| P14a line | Use | Replacement | Existing owner location |
|---|---|---|---|
| 198 | Complex action neighborhood | `\Nref{bpN:p0:actionnbhd}` | N `p0-conventions.tex:36` |
| 223 | Normalized partial perturbation | `\Nref{bpN:p0:partial-pert}` | N `p0-conventions.tex:301` |
| 229 | Partial complex tube | `\Nref{bpN:p0:partial-domain}` | N `p0-conventions.tex:284` |
| 240 | Uniform-data definition | `\Nref{bpN:p3:gen-uniform}` | N `p3-hamiltonian-ode.tex:136` |
| 268 | Same complex tube at real points | `\Nref{bpN:p0:partial-domain}` | N `p0-conventions.tex:284` |
| 282 | Frozen Hamiltonian solution predicate | `\Nref{bpN:p0:sol}` | N `p0-conventions.tex:165` |
| 283 | Closed max-norm erosion | `\Nref{bpN:p0:partial-core}` | N `p0-conventions.tex:277` |

The existing Nref citations to `bpN:p0:partial`, `partial-exponents`, `bpN:p3:gen-sol`, `gen-lip`, `gen-maximal`, `gen-continuation` etc. also resolve to the intended source statements. Do not replace gen-uniform by gen-uniform-compact: line 240 defines the property being concluded, while compact uniform-data existence is a separate input to its proof.

## Proof-step execution ledger

All 74 labelled proof steps were checked. Prefixes below are `stepP:p14:`. PASS describes the argument at blueprint level, not a Lean proof receipt.

| Steps | Result / execution obligations |
|---|---|
| el-a,b,c,d,e,f | PASS. Expanded the LRL vector and used `(q·p)²=r²|p|²−C²`. This gives `e²=1+2EC²/m³=1−C²/Lambda²`; q·e=C²/m²−r; Cauchy–Schwarz gives both radial bounds. All m,r,Lambda,1−e divisions have positive guards. Circular e=0 is included. |
| eb-sum,ecc | PASS. Each Lambda_i−C_i≥0, so its value is bounded by total AMD. The strict lower action bound and positive `1−sqrt(1−ecc²)` give e_i<ecc even if the displayed A inequality is non-strict. |
| geo-a,b,c,d,k | PASS. Admissible all-pairs radial ordering gives positive interplanet separation by reverse triangle; solar and momentum bounds give a closed bounded full phase set K1 inside W. Pair upper bound is 2R. No angle quotient or unproved collision exclusion is needed. |
| cl-a,b,c | PASS. Openness uses genuine smooth/continuous quantities only on r_i>0,E_i<0. The tightened action upper bound forces a uniform negative energy margin, and the low-AMD eccentricity bound forces C_i≥positive. Thus neither E_i=0 nor prograde angular momentum zero can appear at the limit. Closure is proved without evaluating totalized action formulas at an unguarded point. |
| mo-reg,eq | PASS for the physical field. IsMovingSolutionOn is exactly the frozen differentiability-guarded Hamiltonian predicate plus NoCollision; smoothness on W supplies the guard in the reverse implication. For the sentence about −H, use the Hamiltonian-solution predicate for −H and NoCollision, not the unchanged physical IsMovingSolutionOn predicate; time reversal solves the negative field. |
| am-eq,der,const | PASS. Literal equations are q_i'=p_i/m_i+mu P and p_i'=−m_i q_i/r_i³+mu m_i f_i. The kinetic angular derivative is mu cr(P,P)=0; central terms vanish; pair torques cancel in ordered pairs with equal distance denominators. No Hessian or averaged-system conservation is substituted for the true system. |
| amd-max,fwd,margin,close,bwd | PASS. hstop is used only on [0,s] or [−s,0] already known to stay in the outer region. Action drift yields strict interior action margins and AMD≤A(z0)+n delta. At first exit the physical solution still lies in W, so closure gives a point back in the open outer region, a contradiction. Backward time uses the original stopped predicate on negative segments, not an unsupported stopped premise for −H. |
| amd-cont,a,b,c,d | PASS. If a maximal endpoint occurred by ±T, the entire adjacent half-orbit would lie in compact K1⊂W, contradicting compact continuation. Hence endpoints lie strictly beyond ±T, making all endpoint derivatives two-sided. Uniqueness only assumes an arbitrary physical competitor in W. P6 reconstruction and exact barycentric differences supply Newton and all pair bounds; the final action/AMD inequalities follow from the same stopped test. |
| en-lim,choice | PASS. Strict B2 and slack d>d/2 permit simultaneous small positive kappa, e1−ecc and Aplus−A1 by finite continuity. No equality at the initial AMD boundary is used. All choices depend on the fixed box only. |
| rd-o,ecc,sep,last | PASS. E2 forces Gamma_i<Lambda_i, hence the chart root is positive, and e_i<e1. Enlarged annuli give collision-free real chart domain, including its closed slow/action subset. Fast real angles are free, so K is a cylinder rather than a compact full phase set. |
| hd-i,ii,v | PASS. Open G and rho≤kappa give a **closed** working-ball collar inside G'. Complex coordinates have Re z_i>ell_i−3kappa≥5ell_i/8. Monomial differentiation is genuine. The fast Hessian is negative definite for h, positive for −h, with sigma=−1/+1 as allowed by the actual frozen HasDefiniteFastPart. Gradient lower bound and third real regularity follow. |
| hd-iv | FAIL: F14A-01. The matrix representation is correct; the norm identification and resulting frozen hHess input are not. |
| tb-local,leb,glue,per | PASS after the empty-case fix F14A-03. Real-centered complex polydiscs have connected intersections and nonempty real-open trace whenever they overlap; equality there gives equality of extensions. Periodization glues by the same argument. No imaginary monodromy or arbitrary branch equality is assumed. |
| pt-input,rho,def,p12,p3,p4,neg | PASS. A compact fast-angle cell and its lattice translates give a uniform complex tube. The closed rho-neighborhood of the cell is compact inside the r0 tube because rho≤r0/2; periodicity gives a global sup bound. P=f^C/B0 is holomorphic on the required domain, real at real points, bounded by 1 and 2pi-periodic only in fast angles. Its total extension by zero is used only off the guarded domain. −P satisfies the same conditions. |
| ud-cell,transl | PASS. A compact enlarged 2pi-angle cell times compact remaining coordinates lies in W; a closed collar gives boundedness/Lipschitz data. Translating an entire max-norm ball into that cell transfers both bounds. This is the needed version with only **fast** angles periodic, not an invalid direct application of the all-position-periodic N corollary. |
| li-init,max,proj,cont,concl | PASS. Onto prograde-elliptic chart supplies an initial lift, including circular points. The maximal chart solution projects to the physical one by the true symplectic field identity and uniqueness. Outer-region membership bounds (xi,Lambda,eta) in a compact set, and fast-periodic uniform continuation prevents either lift endpoint before the tested physical endpoint. Thus the lift exists on a neighborhood of the closed segment; no global inverse-angle selection is needed. |
| hn-eq,field | PASS. For nu=B0 mu, equality `nu P=mu hat f` holds on the **open** V, so derivatives/fields agree there, including totalized fderiv guards. Neither time nor the Hamiltonian is divided by B0. |
| st-thr,seg,sol,core,fwd,bwd,phys | Correct after replacing Mcomplex in st-thr. The exact frozen N inputs and stopped timing are checked below. No slow confinement or whole-window solution is assumed from N. |
| es-const,par,stop,amd,axis,assemble | Correct conditional on the repaired bridge. Fixed constants precede mu,z0; nu0≤1 supplies the extra inverse-nu time prefactor, both factor-two margins hold, and the action-to-axis factor 2u_i/m_i² cancels delta's 1/2 exactly. |

## Exact N bridge and constant dependencies

| Frozen N input | Supplied here |
|---|---|
| n≥2, k≥1 | n planets, k=n slow pairs; canonical dimension n+k=2n. This is n **fast actions**, not 2n fast actions. |
| G,G' open convex; D open | Nested product action intervals and the open Euclidean slow ball Gamma<Aplus. The ambient Lean carriers retain max norms; the comparison to the slow Euclidean length is explicit. |
| rho>0, Mcomplex>0; closedBall(I,rho)⊂G' for I∈G | rho=min(kappa,r0/2)>0; strict open interval endpoints make the closed collar valid. Corrected sum/n-times-max Hessian bound is positive. |
| hhol,hC2,hreal | Explicit rational Kepler h on the nonzero-coordinate complex neighborhood. Values at zero coordinates are never used. |
| hHess | **Not supplied with the written Mcomplex.** F14A-01 is required before this application is executable. |
| HasDefiniteFastPart | g_h,varsigma_h positive; C³ real restriction; one global sign sigma=−1 for h and +1 for −h. |
| normalized perturbation P after the threshold | P on F(G',D,rho), sup≤1, reality and frozen fastShift(2pi) periodicity. Logical uniformity in P permits instantiating with the already constructed P. |
| arbitrary C>0 and actual IsSolutionOn on [0,C] | For queried positive t, C=r>0; for negative t, C=−l>0 with reversed lifted solution and (−h,−P). The unused zero-duration side needs no N application. |
| initial fast point in innerCore G(nu^b) | Tested segment gives z0=z(0) in the **outer** box. Its actions are strictly in (ell,u), hence at least kappa away from G's endpoints; nu^b<kappa suffices. No separate assumption on arbitrary z0 is introduced in stopped's statement. |
| slow innerCore D(nu^b) only up to query | All tested outer-segment points have Gamma<A1. A max-norm perturbation of radius nu^b has Euclidean norm≤sqrt(2n)nu^b, which is less than sqrt(2Aplus)−sqrt(2A1). Thus the **closed** max-norm ball is in the open D. This is derived from the stopped premise, not from N's conclusion. |
| t≤min(C,nu^(-1)exp(nu^(-a))) | Immediate from the stopped horizon condition for both signs. N supplies norm drift≤nu^b/2, implying each scalar action drift≤delta. |

For Lean transport the equality `n*2=n+n` and the fast/slow block identification must be made explicit (e.g. normalization by Nat.mul_two and the P7 product-chart dictionary), rather than assumed definitional. This is routine index transport; there is no change of normalization or physical variables.

After F14A-01 the threshold choices still have the required dependence: fixed box → enlarged domains and rho → h/g/varsigma/corrected Mcomplex → the two N thresholds → nu0 → muStar,c,C → mu,z0. Dependence on P's particular values is not smuggled into the N theorem; rho is fixed by the original box's analytic neighborhood before applying that theorem. B0 rescales the coupling only: nu=B0 mu and c=B0^(−a), so `nu^(−a)=c mu^(−a)` without a time change.

With `theta=min(kappa,eps_D,min_i(innerLower−lower),min_i(upper−innerUpper),(A1−A0)/n)>0` and `muStar=B0^(-1)min(nu0/2,(theta/2)^(1/b))`, one obtains nu<nu0≤1, nu^b<theta/2, both strict action margins, and `2n delta=n nu^b<A1−A0`. `T=exp(nu^(−a))≤nu^(-1)exp(nu^(−a))`. Finally

`|a_i(t)−a_i(0)| ≤ (2u_i/m_i²)delta = (u_i/m_i²)B0^b mu^b ≤ C mu^b`.

No extra comparison error from reduced masses, no change to osculating canonical elements and no exponent optimization is required. The physical AMD identity is exact, not an approximate first integral.

## What I recomputed and tried to refute

- Expanded the LRL algebra, radial inequalities and the positive angular-momentum relation C=Lambda sqrt(1−e²). The proof includes e=0 and never assumes perihelion angles exist there.
- Checked both kinetic and gravitational torque cancellations for the **literal** moving Hamiltonian, including the indirect kinetic term. The total J is conserved; AMD itself is not assumed conserved.
- Tried to force exit through E_i=0, C_i=0 or a chart boundary. The strict action/AMD collars and closure lemma exclude these before a first outer exit. Compact K1 prevents collision or unbounded momentum at a finite maximal endpoint.
- Tried the one-sided stopped intervals l=0 or r=0 and the endpoint queries ±T. The proof tests only positive-length relevant segments; the other side is vacuous. Strict extension beyond ±T supplies the required two-sided derivatives there.
- Checked the complex tube against the **actual** partialComplexDomain: its real fast actions are in G', its real slow pair is in D, and every imaginary coordinate is bounded by rho. There is no extra real slow strip condition or slow periodicity assumption.
- Tried to refute global lifting through angular winding. The proof uses chart ODE continuation with only the fast angles periodic and a compact slow/action cylinder; it does not need an arbitrary globally continuous inverse angle.
- Checked the max-to-Euclidean slow collar factor sqrt(2n), closed-ball erosion into open D, negative-time application to (−h,−P), and the literal Hamiltonian equality on an open neighborhood. These survive.
- Checked the Hessian norm at the actual frozen nested-fderiv type rather than its matrix notation. This refutation succeeds: F14A-01.
- Verified the frozen exponent formulas agree with the **rendered** Nek77 (12.4)–(12.5). LP17 supplies the canonical Kepler elements and AMD/angular momentum dictionary; it is not used as a theorem that full-system AMD is conserved. Nek77's original barycentric-domain proof is explicitly replaced by this documented low-AMD/heliocentric route.

## Build and closeout

Ran `cd blueprint-P && latexmk -pdf -interaction=nonstopmode -outdir=.build/review blueprint.tex`; initial exit 0 (targets already up to date), with exactly the seven F14A-02 warnings. Re-ran after independently verifying the concurrent macro-only delta: **exit 0**, final output `.build/review/blueprint.pdf` has 223 pages, 2,537,549 bytes. Final log: **zero fatal TeX errors and zero undefined-reference warnings**. Command output is recorded in `.build/review/p14a-review-command.log`. No duplicate target labels or additional unresolved local P labels were found. Printed Nek77 p.56 was rendered and visually inspected in `.build/review/p14a-nek77-p56.png`.

Only this report was written apart from authorized build/render artifacts. No Lean proof, axiom closure or sealing is asserted. N-PARTIAL-CONVEX is a frozen theorem input whose implementation belongs to N; this review checks its consumer applicability, not its proof. The general P7 identities are named upstream inputs, with the componentwise extension described in the text.

Closeout: fix the literal complex Hessian bound, update its consumer/constant attachment and handle the generic empty compact-cell case. The seven cross-track macro repairs are already closed in the independently checked final delta. Recompute the changed N-input estimate and recompile after the remaining mathematical fix. The deterministic AMD proof needs no new premise, and the proposed EXP-SAFE repair needs no change to a frozen theorem or to the frozen exponents.

READY review-p14a
