# Track P, Part 6: independent review 1

## Verdict: ACCEPT WITH FIXES

The moving-Sun reduction, Hamiltonian difference, force signs, barycentric reconstruction and physical Kolmogorov-set assembly are correct. The proof reconstructs the literal frozen Newton equations on arbitrary sets of times, including μ=0, and obtains pair bounds exactly independent of μ. The max-to-Euclidean factor sqrt(2) is retained correctly.

I found no blocking or major mathematical error. Two minor specification fixes are listed below. These conditional assembly lemmas do not prove existence or positive measure of the chart-level KAM family; the later KAM and transport parts must still supply those inputs.

## Snapshot, scope and checks

Reviewed `blueprint-P/parts/p6-newtonian-models.tex`: **300 lines, 41,081 bytes**, SHA-256 **`c2aa7cb2930141f8622e0e5c01c5a1c1e09433358daca9bdd2c20bc24b5c485c`**. Initial HEAD: `b087f1f82b93a67c28df6fd8be42f70041fe4b2f`. The hash was rechecked after the calculations/build; concurrent work outside the review scope was not modified.

| Source / interface | SHA-256 |
|---|---|
| Fej04r, `sources/pdf/fejoz04_herman_arnold_revised.pdf` | `d5a05c79f754da467d8148ee572a22098e1e1ee16a8c6f3052356657a02ac9e3` |
| Fej07e, `sources/pdf/fejoz04_erratum.pdf` | `e8559fa0b031e7151e947a1d37106fbbb4f57deb7add3f91c623f101686bc5a4` |
| Part 1, `p1-hamiltonian-tools.tex` | `1a4219ec164d0ad9d16ee24dc5a98a854b0502e0f8c20c3467e3cae21ad89da1` |
| Frozen `PlanarTwoPlanetKAM.lean` | `47a0ef6a425b784ca6cd03477614faca7b4c46ca1cece1ee37f3db9973fb18bf` |
| Frozen `FixedSunPlanetaryKAM.lean` | `9eb5abd0507b6feb40ad4af5918a78089efeab3551ab5b7625f125e4dfa65f8b` |

Read the complete review brief, AGENTS/PLAN/DECISIONS and writer conventions; checked P PLAN and track-P source/statement-audit records, Part 0, Part 1's chart/quotient-measure interfaces, and the actual frozen definitions. Read Fej04r printed **pp.45–48**, especially (28) on p.46 and the mass dictionary on p.47, directly from the pinned PDF; visually inspected p.46. Read and visually inspected **Fej07e p.3**, including the correction to (28).

Frozen definitions inspected include `BodyVector`, `PlaneSq`, `PlaneLength`, `NoCollision`, `ActualMasses`, the two Hamiltonians, barycentric position/velocity maps, circular point/tube, `PairBounds`, `IsPhysicalTorus`, both all-time physical-solution predicates, both D25 pointwise solution predicates, and both Kolmogorov-set definitions. Also checked `KAM.Iso.IsHamiltonianSolutionOn` and the frozen Hamiltonian field/symplectic form.

For reproducibility, the ordered definition snapshot digest is **`524a2db0f65e3c421368e4f39a65d602554aee11624a532988318c368589e373`**. It is SHA-256 of lines `Name SHA256(file)\n`, in this order, under `KAM/Frozen/Planetary/Defs/`: HasFastDiffeomorphism, MovingHamiltonian, FixedHamiltonian, BarycentricPositions, BarycentricVelocities, IsNewtonSolution, IsNewtonSolutionOn, IsMovingSolutionOn, IsFixedSolution, IsPhysicalTorus, CircularPoint, CircularTube, PairBounds, MovingKolmogorovSet, FixedKolmogorovSet.

- `cd blueprint-P && latexmk -pdf -interaction=nonstopmode -outdir=.build/review blueprint.tex`: **exit 0, 56 pages**; final log **0** lines beginning `!`, **0** undefined-reference/citation warnings. Future Parts 7/11–14 remain mathematical dependencies despite their typeset forward citations.
- `scripts/lint_sources.sh`: **exit 0**; `check_lean_modules: PASS (180 Lean files, 0 comparator configurations)`; `FROZEN-ANCHOR GUARD OK`; `ABI HASHES OK (140 frozen declarations)`.
- Checked the actual Mathlib `hasDerivAt_pi` in `Analysis/Calculus/Deriv/Prod.lean:79`, coordinate Fréchet derivative rules in `FDeriv/Prod.lean`, `Real.hasDerivAt_sqrt` and `Real.contDiffAt_sqrt` in `Analysis/SpecialFunctions/Sqrt.lean:65–68`, and the Borel injective-image theorem in `MeasureTheory/Constructions/Polish/Basic.lean:821`. Their needed nonzero/open-domain guards are supplied.
- Exact rational scratch calculation independently checked the barycentric position derivative for nontrivial masses and μ. No Lean files were changed or built; no fresh `#print axioms`, provider completion or headline-theorem closure is claimed. Only the requested review Markdown files were authored, with temporary/ignored inspection and build artifacts.

## Findings

| ID | Location / anchor | Severity | Finding and evidence | Exact proposed fix |
|---|---|---|---|---|
| P6-01 | `bpP:p6:reconstruction-fixed`, lines 184–186: “for all t∈J and i≠j” | minor, quantifier precision | The central noncollision and both derivative clauses should quantify over every i, independently of a second distinct index. Under the literal shared guard i≠j, these displayed clauses become vacuous for the supported n=1 case. The separate final `IsFixedSolution` conclusion and the proof do establish the stronger intended result, so this is not a counterexample to reconstruction. The frozen predicate has four separately scoped conjuncts. | Write `∀t∈J, ∀i, length(Q_i)>0`; `∀t∈J, ∀i j, i≠j → length(Q_j−Q_i)>0`; and both derivative clauses with `∀t∈J, ∀i`. Keep the n≥1 generality. |
| P6-02 | Intro units sentence and `bpP:p6:units`, line 180: both interval predicates said to have G=m0=1 | minor, frozen-description precision | `IsMovingSolutionOn` really fixes the Hamiltonian parameters G=m0=1. `IsNewtonSolutionOn` instead accepts an **arbitrary mass array**; it has no restriction forcing its Sun entry to be 1. It absorbs G into the mass array, as the reconstruction theorem itself correctly states. D25's particular application uses actualMasses 1 m μ. | Separate the two descriptions: the moving predicate fixes G,m0; the Newton predicate uses G=1 in its force formula with unrestricted mass input. State that the general-G application uses `(fun k => G*M_k)`, and only the normalized D25 application has mass array `actualMasses 1 m μ`. |

For `movkol-assembly`/`fixkol-assembly`, interpret the set premise “S is measurable” as the frozen **`MeasurableSet S`**, hence Borel measurability in the standard ambient measurable space. The preceding `measure-positive` lemma correctly distinguishes Lebesgue completion measurability from its Borel version; later assembly must use that Borel version. This is a consumer clarification, not an extra conclusion obtained from positive measure alone.

## What I recomputed: refutations that failed

### Planar derivatives, Hamiltonian splitting and forces

The length is sqrt(v·v). On v≠0, the radicand is positive, and the chain/reciprocal rules give

`D length(v) h = (v·h)/length(v)`,

`D(1/length)(v) h = −(v·h)/length(v)^3`.

The max-norm comparisons are `abs(v)_infty≤length(v)≤sqrt(2)abs(v)_infty`. The collision-free set is open because its finitely many squared lengths are positive. Both totalized Hamiltonians agree locally there with smooth explicit formulas, so their frozen fderiv values are genuine derivatives at every point used. No conclusion about differentiability at a collision is taken from a totalized reciprocal.

Expanding `length(sum p_i)^2` gives the diagonal terms plus twice the pair dot products. Therefore, with fixed planet masses m_i,

`H_mov = H_Kep + μ[length(P)^2/(2m0) − G sum_(i<j) m_i m_j/length(q_i−q_j)]`,

`H_fix = H_Kep − epsilon G sum_(i<j) m_i m_j/length(q_i−q_j)`.

At epsilon=μ, their difference is exactly **μ length(P)^2/(2m0)**. The identity also holds for the total formulas at collisions when every reciprocal is interpreted consistently. The moving model has not been replaced by a fixed-center one: its extra kinetic term survives.

Using the frozen field convention `(partial_p H,−partial_q H)`, the equations are

`q_i' = p_i/m_i + μ P/m0`,

`p_i' = −G m0 m_i g_i + μ G m_i f_i`.

For the fixed model, remove the μP/m0 velocity term and replace μ by epsilon in the pair force. The signs follow from differentiating the negative pair potential; its q_i derivative is `G μ m_i sum_(j≠i) m_j(q_i−q_j)/length(q_i−q_j)^3`, so its force points toward q_j. Summing the pair forces gives `sum_i m_i f_i=0` by antisymmetry, with each unordered pair counted once in H and twice with cancelling signs in this sum.

### Symplectic reduction and Fej04r (28)

For actual momenta Y and actual masses `(m0,μm_i)`, the inverse heliocentric coordinate map is

`X0=Q0`, `Xi=Q0+q_i`, `Y0=P0−sum P_i`, `Yi=P_i`.

It preserves the Liouville one-form:

`sum Y_k dX_k = P0 dQ0 + sum P_i dq_i`.

Taking its exterior derivative gives exactly the stated symplectic identity with the frozen `dY wedge dX` sign. Equality of just the scalar coordinate pairing would not by itself justify a general symplectic-map claim; the manuscript supplies the stronger one-form calculation explicitly.

The transformed unreduced kinetic energy is `length(P0−sum P_i)^2/(2m0)+sum length(P_i)^2/(2μm_i)`. Positions in every potential difference become q_i or q_i−q_j, so the Hamiltonian is independent of Q0 and total momentum is conserved. At P0=0 and P_i=μp_i, each term gives

`F_mu = μ H_Kep + μ²[length(P)^2/(2m0)−G sum_(i<j)m_i m_j/length(q_i−q_j)] = μ H_mov`.

The momentum substitution also scales the reduced symplectic form by μ. Dividing both form and Hamiltonian by μ preserves time; dividing the Hamiltonian alone would not. The direct solution calculation in `reduction`(c) independently confirms the absence of a time rescaling. This derivation requires μ>0, as stated; the separate forward reconstruction does not divide by μ.

On p.47 the source masses satisfy `1/reducedMass_i=1/m_i+μ/m0` and `reducedMass_i*(m0+μm_i)=m0m_i`. Thus its (28) expands to the frozen moving Hamiltonian. Assigning the diagonal μ kinetic term to the perturbation leaves H_Kep independent of μ and is a disclosed valid regrouping. Fej04r's printed symplectic sign is opposite the frozen form, but the coordinate preservation identity holds with either simultaneous sign convention and the explicit frozen Hamilton equations fix the dynamics here.

The original correction is verified by Fej07e p.3: **“Formule (28). Remplacer m_i m_j par m_j m_k.”** The pinned revised p.46 already has m_j m_k under the j<k sum. The report therefore does not allege that the pinned revised formula still contains that error.

### Literal reconstruction, including arbitrary time sets and μ=0

Let `M*=m0+μ sum m_i>0`, `P=sum p_i`. The frozen maps give

`Q0=−μ(sum m_i q_i)/M*`, `Qi=Q0+q_i`,

`V0=−μP/m0`, `Vi=p_i/m_i`.

They have zero mass-weighted barycentre and momentum. Distances are exactly `length(Qi−Q0)=length(q_i)` and `length(Qj−Qi)=length(q_j−q_i)` for every μ. No small-μ approximation is needed.

At a single time where the Hamiltonian derivative and NoCollision hold,

`Q0' = −μ/M* sum m_i[p_i/m_i+μP/m0] = −μP/m0 = V0`,

`Qi' = V0+q_i' = Vi`.

The planet acceleration is

`Vi' = −Gm0 q_i/length(q_i)^3 + μG sum_(j≠i)m_j(q_j−q_i)/length(q_j−q_i)^3`,

which is precisely the filtered sum over the Sun and all other planets with actual masses. The Sun acceleration is

`V0' = μG sum m_i g_i − μ²G/m0 sum m_i f_i = μG sum m_i g_i`.

This is its Newton filtered sum. Fin.cons places the Sun at zero and planets at successors, so splitting `Fin.sum_univ_succ` has the correct indices. `bodyVector` uses `finProdFinEquiv`, consistent with the two-coordinate block calculations.

Every argument uses full `HasDerivAt` of the ambient total curve at the chosen t. It does not differentiate an equality known only on J or replace a derivative by a within-derivative at an endpoint. Hence J may be closed, disconnected, a singleton or empty. This is exactly the frozen interval predicates' pointwise semantics. The all-time statement is obtained by J=R. `IsMovingSolutionOn` also includes differentiability of H; here NoCollision and smoothness supply it, so the asserted equivalence of R1/R2 with the normalized predicate is valid.

At μ=0, Q0=V0=0 and the planet masses in the Newton force array vanish. Planet accelerations retain the Sun force, and the Sun acceleration vanishes. The algebra remains valid; no positive actual planet mass or division by μ is introduced in forward reconstruction. For general G, the interval Newton force array is `G*M`; its all-time counterpart carries G separately. For the fixed model, divide p_i' by m_i and obtain exactly the four frozen clauses, with epsilon allowed to be any real number as explicitly stated.

### Tube geometry and coupling-independent constants

Let gamma_a be the minimum of the positive axes and pairwise axis gaps, omitting the empty pair minimum when n=1. It is positive, and `zeta*=min(eta,gamma_a/6)`, `d=gamma_a/2`, `D=2a_max+gamma_a` satisfy 0<d<D before any coupling is chosen.

A max-phase tube of radius zeta implies only

`length(q_i−a_i e(phi_i)) < sqrt(2) zeta`.

The manuscript correctly retains this factor. Reverse triangle inequalities give the listed central and pair distances. The numerical margins can be proved without decimals: sqrt(2)<3/2 gives `sqrt(2)/6<1/4` and `2sqrt(2)/6<1/2`. Consequently the central distances exceed 3gamma_a/4 and the pair distances exceed gamma_a/2=d. The upper bounds are less than `a_max+gamma_a/4` and `2a_max+gamma_a/2`, both below D.

For barycentric positions, every difference cancels Q0 exactly. Thus the same d,D work for **all μ≥0**, without any condition involving μ times a Sun-displacement constant. They also work for `Fin.cons 0 q` in the fixed-center predicate. No small denominator involving the total mass appears in the distance estimate. The constants depend only on the axes, so choosing d,D before μ0/epsilon0 is compatible with both frozen headline quantifier orders.

### Positive finite measure and every assembly clause

The circular reference momenta have coordinate modulus at most `P_max=max_i m_i sqrt(Gm0/a_i)`. Therefore U_eta lies in the claimed position/momentum box, of volume

`[2(a_max+eta)]^(2n) [2(P_max+eta)]^(2n)`.

Every subset has finite outer volume; this step needs no unstated bounded-angle lift. Positivity comes separately from a lattice-invariant positive-measure chart set A. The integer translates of A∩Q cover A, so positive measure of A forces positive measure of its cell representative. Q1 identifies all those translates' images, and Q2 makes the chart injective on A∩Q. Part 1's current quotient Liouville lemma thus gives

`meas(Psi(A)) = c^(2n) meas(A∩Q)>0`.

The exponent is the number of degrees of freedom d=2n, not the full phase dimension 4n. A periodic chart is not being treated as globally injective. For Borel A, its restriction to the half-open cell is continuous and injective, giving Borel S by the checked image theorem. For merely completion-measurable A the conclusion remains only completion measurability; the manuscript expressly distinguishes this case.

Finally I compared both assembly lemmas with the frozen conjunctions:

| Frozen clause | Supplied evidence |
|---|---|
| `MeasurableSet S` | S1, using its Borel interpretation; the chart lemma's Borel version supplies this in the intended application |
| `S subset circularTube ... eta` | S1 and monotonicity zeta*≤eta |
| For every z∈S, witnesses w,K,theta; K theta=z; range K⊆S; `IsPhysicalTorus` | Exactly S2; this is the conditional assembly input, not a newly proved KAM existence claim |
| `forall phi, NoCollision (K phi).1` | Entire range lies in the smaller tube and `tube-geometry`(d) |
| `forall phi`, the complete Newton or fixed-center orbit predicate | Clause (viii) of the already frozen torus predicate supplies full derivatives along K(phi+t w), then `orbit-transfer` applies reconstruction on R |
| `forall phi`, all ordered pair bounds, including the Sun | `tube-geometry`(e) at K phi; evenness covers both Sun/planet orders |

The same witnesses are retained throughout; whole tori remain in S. The construction neither assumes a preexisting global flow nor derives finite-time existence from a bounded-position assertion. Positivity/finite measure belongs to the separate headline conjuncts and is correctly furnished by `measure-positive`, not silently inserted into the definitions of MovKol/FixKol.

## Sources, deviations and closeout

No new source erratum was found in this part. The existing Fej07e index correction is confirmed, and its incorporation into the pinned revised printing is confirmed. Restoring G, using planar blocks instead of spatial ones, regrouping the μ-dependent diagonal kinetic term, and extending the pointwise statements to arbitrary J are disclosed adaptations and mathematically valid.

Correct P6-01/P6-02 and keep the Borel consumer distinction explicit. Later Parts 11–13 must still supply a Borel positive-measure union of genuine tori, lattice-compatible charts and containment in U_zeta*. This review accepts the conditional physical reconstruction and assembly, not those future existence inputs or the frozen headline proofs.
