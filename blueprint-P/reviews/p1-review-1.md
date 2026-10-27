# Track P, Part 1: independent refute-first review 1

## Verdict: REVISE

The central **chart-field and torus-transport arguments are correct**, including the frozen sign of Omega and every torus-predicate clause, provided the stated chart/lattice hypotheses are supplied. **Part 1 fixes P3-06**: it scales the output angle explicitly and uses the same frequency as Part 3 after the Hamiltonian conversion. It does not repeat the double division by 2pi.

The remaining major issues are narrower: the measure package does not yet supply the frozen Borel-measurability contract; a sentence asserts measure preservation for noninjective charts; and two Diophantine helper statements omit necessary guards. These require explicit fixes before dependency extraction. No frozen file is found false or proposed for modification.

## Scope and snapshot

Reviewed file: `blueprint-P/parts/p1-hamiltonian-tools.tex`, **247 lines, 33,837 bytes**, 23 definition/lemma/theorem/corollary/remark environments.

Snapshot **P1-R1**, initial HEAD `46b69885ee97accdea52a5a0eff06ca48558f44f`, 2026-10-27. Concurrent workers committed unrelated work during the audit; file hashes, not the moving branch head, define this review.

| Input | SHA-256 |
|---|---|
| P1 reviewed file | `711d86b71093da407075d0d8c2f1736d288a8b0af987bb4a3da4ea2c74ea18f2` |
| `KAM/Frozen/Planetary/Defs/IsCylinderTorus.lean` | `cb77c0f0b579a52b77932b3001576792c1dba91f6e308d26e267187b0025fbef` |
| `KAM/Frozen/Planetary/Defs/IsPhysicalTorus.lean` | `3fa4c1f819a81dfce052deae9310e56b983020878ef18b9c98bfad8e43f7b4b3` |
| `KAM/Frozen/Planetary/Defs/FastShift.lean` | `a937f8886e11b4dac282f8a98ceaaedc096ff633e9cde2708501721d741d2527` |
| `KAM/Frozen/Defs/SymplecticForm.lean` | `cb406afe9c796cec050b1d0f340bf2327766481865dcaf001063c9b8d53df60a` |
| `KAM/Frozen/Defs/HamiltonianVectorField.lean` | `1592cf15aadef80f7e2017860494a1e067de8698ff8f6075c055a2d138877a79` |
| `blueprint-P/parts/p3a-two-scale-iteration.tex` | `b8f17f15cd2a150fc50a2d88b8fda13c32f662fc5ecf1b1343275fe41d52451d` |
| `blueprint-P/parts/p3b-two-scale-limit.tex` | `b647dc98f856b5844b0325dd4d0bef66afa89974cfc0ebb29371cea9028ffa2f` |
| CP09, `sources/incoming-P/cp09.pdf` | `dd29561ef38116ba27a743b9b580f797a602bfda1edee8510ef1371c61655859` |
| CP10, `sources/incoming-P/cp10.pdf` | `68fbf161e0aa62fc966f33b3b3c49e2ab0fbcca3eb7fdb0950d62eadcdf18338` |

Materials: the complete review brief; AGENTS.md, docs/PLAN.md, docs/DECISIONS.md and writer conventions; the P/N blueprint plans and P Part 0; the frozen definitions above and `IsDiophantine`, `IsCylinderKolmogorovSet`, `MovingKolmogorovSet`, `FixedKolmogorovSet`; P3 and review P3-06; N Part 3's actual uniqueness/energy/reduction interfaces and N Part 5's canonical-map interface; K Part 1's cited restriction and measure tools. Source pages were read directly from the pinned PDFs: CP09 pp. 5–8, CP10 pp. 546–547, 550–551. No replacement online source was used.

Method: focused tier-2 manuscript audit, with algebraic recomputation, literal frozen-clause comparison, local Mathlib source inspection, and a separate reconsideration/counterexample pass. No second agent or Lean verification is claimed. The brief authorizes the report and blueprint build, forbids manuscript/git edits, and waives Lean builds. No additional permission is needed.

## Findings

All line numbers and quotations below refer to P1-R1.

| ID | Location / anchor | Severity | Finding and evidence | Exact proposed fix |
|---|---|---|---|---|
| P1-01 | `bpP:p1:torus-union`, lines 204–210; X3–X4; use by frozen Kolmogorov-set predicates | **major** | The argument proves **Lebesgue/completion measurability**, not the frozen `MeasurableSet S` on the standard real/product measurable spaces, which is Borel measurability. “Completeness of Lebesgue measure” at line 209 cannot discharge that predicate. Mathlib explicitly distinguishes `MeasurableSet` from `NullMeasurableSet`; the X3 theorem without the subscript 0 requires the former, and its subscript-0 version handles the latter. A non-Borel subset E of a null Cantor set with F the identity is already a counterexample to interpreting this lemma's image as Borel measurable, even with the lower Lipschitz bound. Its image E x [0,1) would have a non-Borel section. Attempted dismissal via the bi-Lipschitz conclusion fails because its input E is only Lebesgue measurable. | State the present result as `NullMeasurableSet (F '' A) volume` and use the appropriate completed-measure/Jacobian version. Add a **distinct Borel consumer lemma**: for Borel E and continuous injective F on A, use `MeasurableSet.image_of_continuousOn_injOn`; or use compact/sigma-compact parameter sets so the image is sigma-compact. For the noninjective physical chart, use its local homeomorphism cover on a Borel input, or the quotient cell where Q2 gives injectivity. Prove the final S Borel while retaining whole tori; do not replace the frozen premise by a completed-measure predicate. |
| P1-02 | `bpP:p1:liouville`, line 189: “Symplectic charts (c=1) preserve Lebesgue measure” | **major** | The defined chart is a **local** diffeomorphism and need not be globally injective. The preceding inequality and conditional equality are correct, but this final sentence drops the equality's injectivity premise. On O={R>0}, the listed polar map P(psi,R)=sqrt(2R)(sin psi,cos psi) is a 1-chart. For A=[0,4pi) x [1,2], its image is the annulus with 2<=q^2+p^2<=4: input area 4pi, output area 2pi. Local invertibility does not refute this double-cover example. | Replace the sentence by “An injective symplectic chart preserves the measure of A; without injectivity only the upper bound is asserted.” Keep the quotient-cell equality as the separate Q2-based result already proved. |
| P1-03 | `bpP:p1:dio-basic`(b), line 164: only `nu(k)<=|k|_1` | **major** | The reciprocal-power comparison also needs `0<nu(k)` for nonzero k, or an explicit hypothesis that nu is a genuine norm. Lean totality gives `0^(-tau)=0`. Take nu identically zero, omega=0, gamma=tau=1, d=1: the stated premise holds for every nonzero k, but frozen Diophantine fails at k=1. The intended Euclidean and max norms are positive and their intended applications are sound. | Require `0<nu(k)<=|k|_1` for every nonzero integer k, or quantify over norms with positive-definiteness established. Then give the reciprocal-power comparison on positive bases. |
| P1-04 | `bpP:p1:phys-pipeline`, line 147 | **major** | The corollary assumes a `(tilde gamma,tau)`-Diophantine inequality but does not explicitly require `tilde gamma>0`. Frozen `KAM.IsDiophantine` contains no positivity guard. Without this premise, take d=1, H=0, O0={R>0}, Phi the polar 1-chart, tilde kappa(vartheta)=(vartheta,1), tilde omega=0, tilde gamma=0, tau=1. The chart, Q2, lattice, immersion, Lagrangian and zero-flow premises all hold, and the zero-gamma inequality is true. The conclusion's positive Diophantine clause for w=0 is false. Attempted rescue by the source's positive gamma works for the CP09 application but does not repair this standalone statement. | Add `tilde gamma>0` explicitly and carry it through division by 2pi. If “Diophantine” is intended as shorthand including positivity, define that shorthand explicitly and avoid identifying it with the unguarded frozen predicate. The central `torus-transport` theorem already includes the required gamma>0. |
| P1-05 | `bpP:p1:hol-chart`, lines 70–75; chart definition | minor | This lemma does not explicitly bind `c>0`, although the definition of a c-chart presupposes it. The matrix equation alone allows c=0 and a constant map. Its stated domain is V rather than the total Phase-to-Phase map of the chart definition. These are specification omissions; all intended applications have c=1 or 2pi. | Begin “Let c>0”; identify the real slice as an open subset of real Phase via the real embedding, and choose any total extension of the real restriction outside that open slice. No property of the extension outside O is used. |
| P1-06 | Convention line 18; `lattice-torus` L1–L6, lines 80–88 | minor | The unsplit position-lattice vector is written `iota_k := ((k,0),0)` for k in Z^d, which has an extra pair component in Phase d=R^d x R^d. Nested `(k_f,0_b)` is appropriate only after the fast/slow split. Also the enumerate counter assigns the flow clause L5 although the text calls it L6; L5 is inserted manually inside item L4. | Define `iota_k=((k_i)_i,0)` with integer-to-real coercion, and reserve `((k_f,0_b),0)` for `fastShift`. Give injective DK, Lagrangian, and flow clauses their own list items L4,L5,L6. Correct the same unsplit notation in the period and pipeline displays. |
| P1-07 | `bpP:p1:measure-use`, line 213; claimed identity with P3 dictionary, line 244 | minor | The measure-use remark combines c=1 with the unit cell Q while discussing the original 2pi-period chart, without stating the changed cell. In period-one coordinates the composite Phi o S_(2pi) has c=2pi, so its volume factor is (2pi)^d. Also P1's correct dictionary conflicts with the still-unchanged P3-06 sentences; saying P3 is simply “the case (b)” hides that inconsistency. | State either the original symplectic chart with Q_(2pi) and c=1, or the period-one composite with Q_1 and c=2pi, and write the equality explicitly. Mark the two erroneous P3 sentences as pending corrections in the handoff; P1's `w=omega` is the correct convention. |

The guard findings distinguish false literal helper statements from their intended guarded applications. They do not invalidate the central transport theorem. No conclusion-shaped premise needs to be added to a frozen theorem.

## What I recomputed: sign, chart field, and totality

In the frozen order z=(position,momentum),

`M0=[[0,-Id],[Id,0]]`, `J0=-M0`, `Omega(v,w)=v^T M0 w`,

`X_l=(partial_momentum l,-partial_position l)=J0 grad(l)`.

Thus `M0 X_l=grad(l)` and **Omega(w,X_l)=l(w)**. The order of the arguments matters: Omega(X_l,w) has the opposite sign. The blueprint consistently uses the correct order. Skew symmetry, M0^2=-Id, nondegeneracy and det(M0)=1 hold, including the zero-dimensional convention.

For `A^T M0 A=c M0`, c nonzero, determinants give `(det A)^2=c^(2d)`, hence `|det A|=|c|^d` and A is invertible. Pairing against arbitrary w proves

`X_(l o A)=c A^-1 X_l`.

For a positive c-chart and `G=(H o Psi)/c`, chain rule gives `DG=(DH o DPsi)/c`, so

`DPsi X_G = X_H o Psi`.

There is no time rescaling. Replacing both occurrences of the symplectic form by their negatives leaves this matrix identity and Lagrangian zero unchanged. CP09's printed `dx wedge dy` is negative frozen Omega when x is position/angle; its stated positive-frequency normal-form dynamics fixes the intended Hamiltonian convention. No source sign erratum follows from this notational difference.

The nondifferentiability clause is also correct. Analyticity gives a C1 local inverse of Psi near z. If G is differentiable at z, the identity `H=c G o Psi_local_inverse` near Psi(z) proves H differentiable there. The converse is chain rule. Consequently if H is not differentiable at Psi(z), **both totalized fderiv values are zero**, and the frozen vector fields are zero. The blueprint never infers this from a one-way chain rule alone. It does not evaluate an inverse derivative at a singular point.

The local inverse suffices; global injectivity of Psi is not needed for the field identity. The orbit corollary is the same chain rule at each t; for endpoints of an interval its notation should be realized by a total ambient curve with the stated `HasDerivAt` hypotheses, or by the corresponding within-derivative variant. The torus application uses J=R, so there is no endpoint issue.

Reordering `(J,theta)` to `(theta,J)` transports the source form dJ wedge dtheta to frozen Omega and the source vector field to `(partial_J H,-partial_theta H)`. It is a relabelling of the source form, not a claim that the bare coordinate-swap matrix preserves the same numerical M0 on both orderings.

For the oscillator map, writing a=sqrt(2R), da/dR=1/a gives

`dp=(cos psi/a)dR-a sin psi dpsi`,

`dq=(sin psi/a)dR+a cos psi dpsi`,

so `dp wedge dq=dR wedge dpsi`. R>0 pays analyticity of sqrt and the nonzero derivative denominator. This is indeed a local 1-chart; its periodic noninjectivity explains P1-02. Composition of charts multiplies conformal factors, and `H^Psi1Psi2=(H o Psi2 o Psi1)/(c1 c2)` in the stated order. No spurious sign or time factor appears.

## Every frozen torus clause and Q2

I compared the theorem's conclusions with the literal eight conjuncts of `IsPhysicalTorus` and seven conjuncts of `IsCylinderTorus`, including the totalized `fderiv` and full `HasDerivAt` clauses.

| Frozen clause | Cylinder | Physical | Evidence in Part 1 |
|---|---|---|---|
| Real analytic K on all parameters | (i) | (i) | L1 and analytic composition; the intermediate range lies in O |
| Hamiltonian differentiability; range in U | (ii), including U | (ii), no U conjunct | Chart-field equivalence transports differentiability; cylinder range inclusion is explicit |
| Translation/periodicity | (iii): shift only fast positions by 2pi k_f | (iii): zero shift | L2 plus Q1, for every full integer parameter vector |
| Injectivity modulo phases | (iv): equality up to any fastShift(k_f) | (iv): exact equality | Q2 plus L2 and L3, as detailed below |
| Injective derivative | (v) | (v) | Invertible DPsi composed with injective DK |
| Lagrangian identity | (vi) | (vi) | Pullback multiplies by c; c times zero remains zero |
| Positive Diophantine data | None in this predicate | (vii): exists gamma>0,tau>d−1 | Explicit hypothesis of `torus-transport`(b); fix its pipeline's missing guard |
| Dynamics for every theta,t | (vii) | (viii) | L6 at theta+tw and chart-field; derivative is at exactly t |

**Q2 supplies exactly the required quotient information.** In the cylinder case, given an arbitrary fast integer shift k_f, choose the full integer vector (k_f,0_b). Q2 gives `K(theta')=K(theta)+iota_m` for some full m. L2 identifies the right side with K(theta+m), and L3 then gives `theta'−theta−m` integral. This is the frozen existential `ell` after adding m. There is no need to prove m=(k_f,0_b), and the frozen conclusion does not require that stronger statement.

For physical tori, take k=0 in Q2, since sigma_0=0. The same argument gives parameter injectivity modulo all of Z^d. Q1 gives exact periodicity of the physical output even though the chart-level K has affine winding.

I tried to remove Q2 using local invertibility, DK injectivity, and Q1; that refutation attempt fails. A polar chart composed with a twofold angle cover has all those local properties but identifies a half-period. It produces a multiply covered torus. Thus Q2 is a substantive geometric hypothesis, correctly placed on the **chart**, and must be proved for the actual physical chart on the actual domain. It is not a consequence of conformal symplecticity or a substitute conclusion of the target torus theorem.

The theorem's conditional status is honest: it proves transport from an LT and chart with Q1,Q2. CP09 Thm. 3(ii)'s quotient homeomorphism gives the source torus's injectivity after lifting; it does not itself establish Q2 for a separate polar/Poincare reconstruction on an arbitrary open O. The source map is on torus x an open action neighborhood, not automatically a total injective map on all real phase space. Total extensions can be chosen off O; all required properties remain local to O. No frozen `IsPrimaryOnStrip` is silently substituted for either torus predicate.

## Period conversion: Part 1 resolves P3-06

There are two different operations, and P1 treats them correctly:

1. **Changing phase coordinates:** `S_c(theta,I)=(c theta,I)`, a c-chart, has determinant c^d and pulls a physical Hamiltonian tilde H back to `H=(tilde H o S_c)/c`. Its equation is `DS_c X_H=X_tildeH o S_c`, preserving time. This operation must scale the **output angle** of a torus embedding.
2. **Changing only the torus parameter:** `K(theta)=tilde kappa(2pi theta)` while keeping its physical target coordinates fixed. Its frequency is `w=tilde omega/(2pi)` because `K(theta+s w)=tilde kappa(2pi theta+s tilde omega)` identically. It does not divide the physical Hamiltonian by 2pi.

For parameter conversion, `DK=2pi D tilde kappa`; immersion is equivalent, the Lagrangian bilinear expression acquires `(2pi)^2`, and phase shifts/injectivity change from 2pi Z^d to Z^d. The range is unchanged because parameter multiplication is surjective. Analyticity equivalence follows by composing with the invertible linear parameter maps in both directions. The field `HasDerivAt` clause is literally the same curve, not merely a formal cancellation of derivative factors.

For the cylinder pipeline the actual output is

`K_phys = Phi o S_(2pi) o K3`,

`G3 = (H o Phi o S_(2pi))/(2pi)`.

Since Phi is a 1-chart, Psi=Phi o S_(2pi) is a 2pi-chart. Q1 and Q2 pull back from the 2pi lattice of O0 to the integer lattice of O. Its frozen frequency is **w=omega of Part 3**, while CP's own angular frequency is tilde omega=2pi omega. This scales the output and divides the frequency only once.

For the physical pipeline the actual output is

`K_phys(theta)=Phi(tilde kappa(2pi theta))`,

with symplectic Phi, source Hamiltonian tilde G=H o Phi, and frozen frequency tilde omega/(2pi). Reparameterizing alone does not invoke the conformal Hamiltonian dictionary. The proof uses the transport theorem with a 2pi lattice instead of an integer lattice; its clause-by-clause proof is valid with that explicit substitution. A short generalized-lattice version would be useful for Lean reuse but is not a missing mathematical argument.

**Linear test:** tilde H(phi,I)=2pi I, H(theta,I)=I. K3(theta)=(theta,I0), omega=1. S_(2pi)K3=(2pi theta,I0) has derivative along w=1 equal to `(2pi,0)=X_tildeH`. P1 gives exactly w=1. P3a line 101's map without output S_(2pi), and P3b line 200's w=omega/(2pi), fail this test and are unchanged at this snapshot. They remain the earlier P3-06 finding; P1 supplies the correct repair rather than repeating the defect.

## Diophantine conversions and source fidelity

Except for the omitted guards in P1-03 and P1-04, all inequalities have the correct direction:

- For nonzero integer k, the frozen l1 base is at least 1. Increasing tau decreases gamma/|k|_1^tau. Decreasing a positive gamma preserves the lower bound. This permits any larger strict exponent threshold without changing the frequency.
- For a **positive** norm nu(k)<=|k|_1 and tau>0, `nu(k)^(-tau)>=|k|_1^(-tau)`. In particular Euclidean or max-norm Diophantine implies the frozen l1-norm version with the **same gamma**, not an extra dimension factor. The converse would cost a comparison factor; no converse is used.
- For s>0, `k dot (omega/s)=(k dot omega)/s`; gamma scales to gamma/s in both directions. The norm of a fast or slow block likewise divides by 2pi during source-frequency conversion.
- CP10 (19) gives gamma_1 for k_f nonzero and mu gamma_bar_2 for k_f=0. In the latter case the full l1 norm equals the slow k block's l1 norm. Minimum of the two positive constants gives ordinary frozen Diophantine. The cylinder torus predicate itself has no Diophantine conjunct; it is `IsCylinderKolmogorovSet` that requires positive gamma and tau>a+b.
- CP09 p. 5 defines its norm as Euclidean. Definition 2 p. 6 specifies a **positive integer** nondegeneracy index; Theorem 3 fixes an integer mu at least that index and tau>n mu. Its p. 7 (6) therefore implies tau>n−1 and the frozen positive-gamma Diophantine clause after division by 2pi. Here CP09 n is the **torus dimension**, equal to d=2 times the planet count for the planar physical applications.

The cited CP10 period footnote is on p. 546, the integer l1 convention on p. 547 footnote 5, the stronger exponent choice on p. 550, and (19) on p. 551. CP09's period and printed symplectic sign are on p. 6; its positive-frequency flow and Euclidean Diophantine equation are on p. 7. Those source attributions check out. No new suspected source erratum was found in this scope. The adaptations are period, coordinate order, norm weakening, and a more general conformal chart, all identifiable as blueprint constructions.

## Liouville and torus unions: what is correct and what remains unpaid

The determinant calculation gives the exact density c^d in **2d-dimensional phase space**, not c^(2d). On Lebesgue-measurable A inside O, a local analytic chart is locally Lipschitz; use a countable cover by small cubes to send null sets to null sets. Inner regularity gives an F_sigma subset up to a null remainder, including when A has infinite measure by a bounded exhaustion. Continuous images of the compact pieces are compact. Therefore the stated **Lebesgue** measurability proof is valid. The area inequality is valid without injectivity; equality needs injectivity as in P1-02.

For Borel A, the local homeomorphism cover also proves its chart image Borel directly, without a completeness argument: on each homeomorphism domain, the image of the Borel restriction is the inverse's continuous preimage of a Borel set. Countably many such images suffice. This is a useful exact stronger consumer lemma.

The quotient-cell equality is correct under Q1,Q2. With sigma=0 and integer position lattice, the half-open Q_1 contains one representative of every orbit. For z,z' in A intersect Q_1 with equal images, Q2 forces z'=z+iota_m; the half-open positions force m=0. Thus Psi is injective **on the cell**, giving

`volume(Psi(A))=c^d volume(A intersect Q_1)`.

The countable disjoint translated cells show `volume(A)=0` iff `volume(A intersect Q_1)=0`, so the positivity equivalence is correct even though nonzero volume(A) is then usually infinite. Bounded A intersect Q_1 has finite measure.

With an original symplectic 2pi-angle chart, the corresponding equality uses Q_(2pi) and c=1. With its period-one conformal composite it uses Q_1 and c=2pi. Since S_(2pi) multiplies cell volume by (2pi)^d, these formulations agree exactly. This is the clarification needed in P1-07.

For `torus-union`, McShane extends F componentwise without losing the max-norm Lipschitz constant. K's outer-measure image bound in dimension 2d gives the upper factor Lambda^(2d). A lower Lipschitz bound makes the inverse lambda^-1-Lipschitz, giving the lower factor lambda^(2d). Product cell volume is volume(E). Positivity and finiteness equivalences follow **under that lower-bound hypothesis**. Without it only the upper bound and completion-measurability conclusion hold.

The last union identity is correct for primary/affine-periodic torus lifts: decompose the parameter domain into integer cells and use the image's iota_k translation. Physical periodic tori instead have zero shift; the same image already comes from one cell. A physical periodic embedding cannot satisfy a positive ordinary Euclidean lower Lipschitz bound on all of a half-open parameter cell: parameters approaching opposite endpoints have images approaching one another. Apply the lower-bound lemma at the primary chart level or with the quotient metric, then use the Q2-based chart/cell result for the physical image. Do not silently apply its ordinary lower bound directly to a wrapped Cartesian embedding.

For the frozen measurability requirement, CP09 supplies a particularly simple route: its K_star is compact and K_star x T^d is compact, so the continuous Cartesian torus union is compact and hence Borel. For other consumers use explicitly Borel parameters plus injectivity, or a sigma-compact saturated family. Deleting an arbitrary completed-measurable collection of parameters or merely taking a Borel envelope of a torus union can destroy either Borelness or whole-torus saturation. The final assembly must retain both properties, alongside containment and the physical orbit clauses.

## X1–X5 and local Mathlib verification

These are source-code checks, not claims of successful elaboration. Paths below are relative to `/root/code/KAM/.lake/packages/mathlib/Mathlib`.

| Item | Actual interface checked | Result / implementation obligation |
|---|---|---|
| X1 | `Analysis/Analytic/Composition.lean:858`, `AnalyticAt.comp`; line 890, `AnalyticOnNhd.comp`; `Analysis/Calculus/UniformLimitsDeriv.lean` for the independently cited derivative-limit machinery | The two named analytic composition declarations exist. They require the usual point/range hypotheses, supplied here by K(range) subset O. Chain rule uses actual derivatives on O. No whole-space analyticity of Psi is needed. |
| X2 | `Analysis/Calculus/InverseFunctionTheorem/FDeriv.lean:118`, `HasStrictFDerivAt.toOpenPartialHomeomorph`; `ContDiff/RCLike.lean:61`, `ContDiffAt.hasStrictFDerivAt`; `InverseFunctionTheorem/ContDiff.lean:66`, `ContDiffAt.to_localInverse` | The named local-homeomorphism construction exists and takes an invertible **continuous linear equivalence** as derivative. Analyticity implies C1, hence a strict derivative; finite-dimensional invertibility supplies the equivalence. The named construction by itself supplies the homeomorphism; use the local-inverse regularity theorem as well for the claimed C1 inverse. All hypotheses are available. |
| X3 | `MeasureTheory/Function/Jacobian.lean:897`, `addHaar_image_le_lintegral_abs_det_fderiv`; line 1095, `lintegral_abs_det_fderiv_eq_addHaar_image`; line 1105, its subscript-0 version | Both exact names exist in namespace MeasureTheory. They use a field f' of continuous linear maps and `HasFDerivWithinAt` on the set, not unguarded totalized fderiv. Analytic chart differentiability supplies this. Equality also requires InjOn. For Lebesgue/completion-measurable inputs use `NullMeasurableSet` and the subscript-0 equality, or decompose into a Borel part and a null remainder for the inequality. |
| X4 | `MeasureTheory/Measure/Regular.lean:704,732` inner compact regularity; `MeasureTheory/Constructions/Polish/Basic.lean:821`, `MeasurableSet.image_of_continuousOn_injOn`; `Constructions/BorelSpace/Basic.lean:716`, `Real.borelSpace` | The stated F_sigma-plus-null fact is valid in finite-dimensional real space with completed Lebesgue measure, including unbounded sets by exhaustion. Closed subsets are sigma-compact by intersecting with closed bounded balls. This is **not** a proof that arbitrary null subsets are Borel; P1-01 records the distinction needed by frozen predicates. |
| X5 | Determinant multiplication, transpose, and the explicit block matrix M0 | Correct finite-dimensional algebra. There is no questionable external mathematical theorem here; det(M0)=1 follows by the 2x2 plane-block decomposition, including d=0. The ambient finite-product basis must be fixed for the Lean determinant calculation. |

The P1 text does not invent a conflicting symplectic-flow provider: N's `bpN:p5:canonical`(b),(c) is the holomorphic time-one-map version. P1 adds arbitrary real analytic charts, conformal factor, lattice geometry and totality guards; this generalization is useful. Factoring the small linear-algebra calculation into a shared helper is reasonable, but does not justify replacing P1's more general statement by N's narrower flow statement.

All five K cross-reference labels and all ten N labels used in the file exist. Of eight distinct P cross-reference labels, only `bpP:p5:kam-application` is absent from written parts; it is an explicitly planned forward reference. The ODE uniqueness/energy calls meet their point-of-use hypotheses: H C2 on open W gives X_H C1 there, both compared solutions take values there, and J=R is an interval. The energy conclusion is for each fixed initial theta, along t, not constancy across distinct tori. The Newton reconstruction is correctly deferred to Part 6; torus transport alone does not prove Newton's equations.

## Checks and closeout

- `latexmk -pdf -interaction=nonstopmode -outdir=.build/review blueprint.tex` in `blueprint-P`: exit 0 (up to date). Then forced a fresh TeX pass with `latexmk -g -pdf -interaction=nonstopmode -outdir=.build/review blueprint.tex`: **exit 0**, **29 pages**, **0** log lines beginning `!`, **no undefined-reference warnings**. P1's label-index paragraph at line 246 has an overfull box of 13.40pt. Three further overfull boxes belong to P3. Cross-track macros print their labels literally; the separate label inventory above supplies the existence check.
- `scripts/lint_sources.sh`: **exit 0**; `check_lean_modules: PASS (124 Lean files, 0 comparator configurations)`; `FROZEN-ANCHOR GUARD OK`; `ABI HASHES OK (94 frozen declarations)`.
- Final P1 SHA-256 agrees with P1-R1. `git diff --check` passed. No manuscript, Lean source, generated public PDF, manifest, or git state was changed by this reviewer. Only this report was authored; the allowed build generated ignored files under `.build/review/`. Concurrent unowned changes were left alone.
- No Lean build or scratch compilation was needed. `#print axioms`: not run; this report creates no Lean theorem and certifies no provider axiom closure.

No new source errata or mathematical deviations were introduced. P3-06 remains open in Part 3, but its correct repair is present in Part 1. Acceptance requires the explicit guard fixes, the injectivity qualification for Liouville, and a Borel-measurability consumer interface meeting the unchanged frozen predicates. The principal chart and torus-transport proof may be retained.
