# Review 1: Kepler and the circular-regular Poincaré chart

## Verdict: REVISE

The main real and complex Poincaré constructions check out: the chart is analytic through circular orbits, its positive-sine perihelion convention has the frozen symplectic sign, and its formulas agree with the frozen D25 definitions on the stated guarded domain. The product chart and the full angle-lattice compatibility also check out. The corrected track-I Kepler tube is used within its actual hypotheses; the singular perihelion angle is not used to claim complex analyticity at eccentricity zero.

There is one **major statement defect**: the averaging corollary declares an observable on R^4 but evaluates it on the two-planet physical phase space, which is R^4 × R^4. Correct that binder before extracting this shared averaging interface. The remaining findings are local sign, normalization/source-description and external-contract corrections. None requires editing a frozen definition.

## Snapshot, materials and validation

- Reviewed `blueprint-P/parts/p7-kepler-poincare.tex` in full: **295 lines, 59,247 bytes**; SHA-256 `5da8ad1223c0b6b1bc6bfec2498cf2cc98f739f1b71843c52d69abe2ad50e99f`.
- Read the complete review brief, AGENTS.md, docs/PLAN.md, docs/DECISIONS.md, writer conventions, P PLAN and relevant P source/notes/statement material. Checked P Parts 0, 1 and 6 where used, track I's actual Kepler-equation, orbit-map, symplectic/chart, circular and scaling contracts, and the corrected circular endpoint in the current TeX.
- Dependency snapshots: I p7 `589325217120f60e9ceb4fbe17824548de2c7439837456226432bba286b542e9`; P p1 `1a4219ec164d0ad9d16ee24dc5a98a854b0502e0f8c20c3467e3cae21ad89da1`; P p6 `c2aa7cb2930141f8622e0e5c01c5a1c1e09433358daca9bdd2c20bc24b5c485c`.
- Compared the actual frozen files for `EllipsePosition`, `EllipseMomentum`, `KeplerMeanLongitude`, `LongitudeJacobian`, `SecularEccVector`, `SecularRoot`, `SecularAxis`, `SecularGamma`, `EllipsePhase`, the physical Kepler functions, `ProgradeElliptic`, `CircularPoint`, `CircularTube`, the planar operations, `Phase`, `SecularAverage`, `SecularIntegrand` and `ExactSecularHamiltonian`. Kept their total-function behavior separate from the guarded chart identities.
- Independently read pinned **Fej04r pp.46–48**, including rendered pp.47–48, and **Fej07e p.3** as text and image. File hashes match the source registry: revised Féjoz PDF `d5a05c79f754da467d8148ee572a22098e1e1ee16a8c6f3052356657a02ac9e3`; erratum `e8559fa0b031e7151e947a1d37106fbbb4f57deb7add3f91c623f101686bc5a4`. The LP17 attribution here is to its Kepler-element/AMD framework; the regular ellipse formulas are explicitly derived algebraically, as the track source packet says, rather than quoted as a numbered LP17 formula.
- `cd blueprint-P && latexmk -pdf -interaction=nonstopmode -outdir=.build/review blueprint.tex`: **exit 0**, **88 pages**, 1,393,964-byte PDF; zero error lines beginning `!`; no undefined references/citations. Existing overfull boxes occur in other parts; no overfull box was reported within the Part-7 log segment. Part 7 has underfull boxes and PDF-bookmark warnings. All local and cross-track label targets used by Part 7 exist.
- `scripts/lint_sources.sh`: **exit 0**; `check_lean_modules: PASS (183 Lean files, 0 comparator configurations)`, `FROZEN-ANCHOR GUARD OK`, `ABI HASHES OK (140 frozen declarations)`.
- Independent 55-digit numerical differentiation at four real chart points, including two circular points, gave symplectic matrix residuals below 2e−56, energy residuals below 2e−55, angular-momentum residuals below 5e−56 and LRL residuals below 4e−56. These are diagnostic checks, not a proof or Lean certification; the symbolic reasoning is below.
- No Lean source was changed or built, and no fresh `#print axioms`, provider sealing or frozen-statement proof is claimed. Only this requested review report was authored; source/ledger changes are left to their owners.

## Findings

| ID | Location / label | Severity | Finding and evidence | Exact proposed fix |
|---|---|---|---|---|
| P7-01 | p7:266–273, `bpP:p7:average` | major, wrong binder/domain | The test observable is declared `varphi : R^4 -> R`, but both `Psi^(2)(w)` and `ellipsePhase m w F` have type `Phase (2*2) = (Fin 4 -> R) × (Fin 4 -> R)`, an eight-dimensional phase point. The displayed applications are ill-typed. This is not the one-planet chart of real dimension four: the statement fixes w in O_2 and keeps the other planet's longitude fixed. | State the observable as `varphi : Phase (2*2) -> R`, equivalently `R^4 × R^4 -> R`, and explicitly quantify i : Fin 2. Keep the displayed change of variables and proof. Alternatively formulate a genuinely one-planet observable by explicitly projecting the i-th (q,p) block; that narrower version is not sufficient for general interacting observables. |
| P7-02 | p7:112, `stepP:p7:rk-contr` | minor, sign typo | For beta(F) = lambda + v0 sin F − v1 cos F, the printed derivative v0 cos F − v1 sin F is wrong. The derivative is v0 cos F **+** v1 sin F. The absolute-value upper bound by (abs(v0)+abs(v1))cosh(1) is valid with either sign, and the actual J and implicit derivative formulas elsewhere are correct. | Change that derivative display to the plus sign. Retain the contraction constant and all conclusions. |
| P7-03 | p7:180, `normalisation`(1); p7:285, suspected errata | minor, pinned-source fidelity | The text attributes the missing sqrt(2) to **Fej04r (31) as printed**, but the pinned January-2007 revised PDF p.47 already prints sqrt(2Lambda_j) and sqrt(2G_j). Fej07e reports the correction to the original printing. The adopted chart normalization is correct. A separate stale expansion survives on revised p.48; see the source record below. | Say the omitted factor belongs to the original printing **as reported by Fej07e**, and that pinned Fej04r (31) already incorporates it. Do not quote the unpinned original as though it were the pinned page. Distinguish the slow-block form coefficient from a single global conformal factor: with the fast actions unchanged, dropping sqrt(2) changes only the slow coefficient, not the whole form by one scalar. |
| P7-04 | p7:180, last sentence of `normalisation`(1) | minor, false frequency description | Oscillator frequencies are said to be diagonal values of the second derivative with respect to Gamma. After diagonalization H2 = sum sigma_j(xi_j²+eta_j²) = sum 2sigma_j Gamma_j, so the frequencies are **first** Gamma derivatives, 2sigma_j; the second Gamma derivatives vanish. For H2 = xi²+eta² = 2Gamma, the asserted second derivative is zero while the oscillator frequency is 2. | Say that after canonical diagonalization the coefficient of Gamma_j, equivalently partial H2/partial Gamma_j, is Omega_j = 2sigma_j. If referring to a Hessian, specify the Hessian in the oscillator coordinates (xi,eta), not the Gamma Hessian. Keep the actual symplectic normalization. |
| P7-05 | p7:44, external fact E7 `e-comp`; application `tu-cont` at p7:220 | minor, totalized distance contract | The external statement gives a positive distance to the complement for arbitrary compact K inside open V, without specifying nonemptiness or an extended-real distance. With Mathlib's real-valued `infDist`, empty sets give zero, so that literal import is not valid without guards. The actual circular-torus application has a nonempty torus and a nonempty complement (the zero-position configuration lies outside K^(n)), so it is unaffected. | Prefer the exact neighborhood form: there exists delta > 0 such that every point within delta of some point of K lies in V. This handles empty K and V = univ as well. Alternatively guard both sets before invoking positive real set distance and split the vacuous cases. State that the present torus is nonempty/compact when applying the fact. |

## What I recomputed: Kepler mass/strength transport

The correct dictionary is L = Lambda/m, G = C/m and

```text
S_(m,kappa)(Q,P) = (Q/kappa, m kappa P),
E_(m,kappa)(S(Q,P)) = m kappa² E_1(Q,P),
cross(q,p) = m cross(Q,P),
a = L²/kappa = Lambda²/(m² kappa).
```

The scaling S has symplectic factor m, but the action substitution contributes 1/m. Explicitly, the physical form pulls back to

```text
m(dL wedge dell + dG wedge dg)
  = dLambda wedge dell + dC wedge dg.
```

Thus the combined Delaunay chart has factor **one**, not m or kappa. Its domain Lambda > C > 0 is precisely the real noncircular domain L > G > 0 of I's chart. Its image is the rescaled noncircular prograde Kepler region. All real chart/identity citations meet their hypotheses.

The range lemma follows from

```text
cross(Q,P)² = 2r − r²/L² − (Q dot P)²
             = L² − (r−L²)²/L² − (Q dot P)² ≤ L².
```

Equality gives the tangential circular data r = L² and Q dot P = 0. Positivity of cross fixes the prograde direction. This supplies the missing circular endpoint when passing from I's noncircular Delaunay chart to the full Poincaré region, rather than treating a circle as a point of the strict Delaunay cone.

Energy is −kappa²m³/(2Lambda²), mean motion is kappa²m³/Lambda³ = sqrt(kappa)/a^(3/2), and the mean values scale to 1/a, m²kappa/a and a(1+e²/2). The current I circular corollary explicitly supplies the scalar identities and means for e = 0 while excluding strict noncircular-region membership. P uses only those permitted endpoint formulas. The former I circular-contract defect is not inherited by this source snapshot.

The two physical models have the same Kepler part because the moving-Sun self kinetic correction is assigned to the perturbation. Composing P6's exact total-function splitting with the chart gives

```text
H_mov o Psi = h(Lambda) + mu f_mov o Psi,
H_fix o Psi = h(Lambda) + epsilon f_fix o Psi.
```

Here h and both perturbation functions are independent of coupling. On the preimage of P6's collision-free W they are genuinely real analytic and the field/orbit transport applies. The algebraic identities may hold for total functions at other points, but no differentiability across collisions is inferred from them. The difference f_mov−f_fix is the total-momentum quadratic polynomial divided by 2m0. The reduced masses in Fej04r's alternative Kepler splitting need not be inserted into this chart.

## Regular Kepler equation and the track-I tube

For real v with planar length less than one,

```text
Phi(F,v) = F − v0 sin F + v1 cos F,
J(F,v) = 1 − v0 cos F − v1 sin F ≥ 1−length(v) > 0.
```

Phi(F,v)−F is bounded, so strict monotonicity gives a bijection of R. The real analytic implicit-function theorem applies jointly in lambda,v at every such point; uniqueness patches the local branches. The three implicit derivative signs printed in part (a) are correct. For v = e(cos g,sin g), real 0 < e < 1 and real g,

```text
F(lambda,v) = g + u_R(lambda−g,e).
```

This uses exactly I `kepler-eq`(c), which defines the real solution for every abs(e) < 1. When the holomorphic track-I statement is needed away from zero eccentricity, its domain is the **thin tube** around [−e1,e1] with angle width delta_K; it is not a full complex disc of eccentricities below e2. No application here exceeds that tube.

At v = 0, the polar map v -> (g,e) is singular, so it cannot prove joint holomorphy. The blueprint correctly avoids it. On its own complex domain abs(Im lambda) < 1/4, abs(v0)+abs(v1) < 1/4, the complete closed strip abs(Im F) ≤ 1 is invariant because

```text
abs(Im beta(F)) < (1+cosh(1))/4 = 0.635770158704... < 1.
```

The derivative, corrected as in P7-02, has modulus less than cosh(1)/4 = 0.385770158704... < 0.39. This is a genuine contraction on a convex closed strip, despite its unbounded real direction. The initial iterate F0 = lambda belongs to the strip and the first difference is uniformly bounded, so all subsequent differences have a uniform geometric bound. The claimed uniform holomorphic limit is justified. Also abs(J) ≥ 1−cosh(1)/4 > 3/5, giving valid complex implicit derivatives and denominators. Uniqueness supplies the periodic shift and reality.

## Poincaré formulas, sign and circular extension

On O, Lambda > 0 and Gamma = (xi²+eta²)/2 < Lambda. Hence

```text
k = 1−Gamma/Lambda in (0,1],
s² = (1−Gamma/(2Lambda))/Lambda > 1/(2Lambda),
v = s(xi,eta), length(v)² = 1−k² < 1.
```

The positive radicand, Lambda J > 0 and 1+k > 0 make all displayed operations genuine analytic ones. On Gamma > 0 put (xi,eta) = sqrt(2Gamma)(cos g,sin g), C = Lambda−Gamma and ell = lambda−g. With F = g+u and e² = 1−k²,

```text
e²/(1+k) = 1−k,
kc−v+[(v dot c)/(1+k)]v
  = (cos u−e)e_g + k sin u J0 e_g,
J0c−[(v dot c)/(1+k)]J0v
  = −sin u e_g + k cos u J0 e_g.
```

These identify both position and momentum with the mass-scaled Delaunay map, not just the orbit locus. The momentum factor is m²kappa/(Lambda J), as required for canonical momentum rather than velocity.

For symplecticity the frozen order matters: position block (lambda,xi), momentum block (Lambda,eta). Pulling back the Delaunay form gives

```text
dLambda wedge d(lambda−g) + d(Lambda−Gamma) wedge dg
  = dLambda wedge dlambda − dGamma wedge dg.
```

For xi = rho cos g, eta = rho sin g, one has dxi wedge deta = rho drho wedge dg = dGamma wedge dg. Thus the result is precisely dLambda wedge dlambda + deta wedge dxi. The positive-sine convention is correct. Reflecting eta while leaving the same physical perihelion interpretation would reverse the slow block's sign. The later oscillator polar variables use xi = sqrt(2R)sin(psi), eta = sqrt(2R)cos(psi), so g = pi/2−psi and the oscillator angle runs opposite to g; this is compatible with Omega = 2sigma and forward perihelion precession when sigma < 0.

All chart formulas are already analytic at xi = eta = 0 before invoking density. Therefore DPsi is continuous there, and the matrix form identity on the dense Gamma > 0 subset extends to the circular locus. Nondegeneracy then proves invertibility of DPsi there. There is no circular argument assuming symplecticity to obtain the regularity used in the density step.

At the circular point q = a(cos lambda,sin lambda), p = m sqrt(kappa/a)(−sin lambda,cos lambda). These match frozen `circularPoint` with phi = lambda/(2pi). The energy, positive angular momentum and nonzero radius follow directly, without demanding membership in I's noncircular region.

For the LRL identity, the strength/mass rescaling reduces the expression to

```text
(length(P)²−1/length(Q))Q − (Q dot P)P.
```

Substituting the Delaunay radius, radial momentum and velocity gives (e,0) in the perihelion frame, hence v; at a circle it is zero. These identities recover Lambda,Gamma,v from the physical point. The inverse matrix k Id + vv^T/(1+k) has eigenvalues k and 1, both positive. It recovers c = (cos F,sin F) and hence F modulo 2pi; lambda = Phi(F,v) is recovered modulo 2pi. There is no claimed globally single-valued analytic argument function on the plane. Injectivity and surjectivity modulo the fast lattice are proved separately for circular and noncircular points, so the quotient diffeomorphism claim has no missing e = 0 branch.

## Complex extension, products and lattice transport

On N(Lambda_circ), abs(Lambda) > Lambda_circ/2 and abs(Gamma) < Lambda_circ/256, whence abs(Gamma/Lambda) < 1/128. The stated argument bounds put (1−Gamma/(2Lambda))/Lambda in the positive-real-part half-plane. Its principal square root is holomorphic with modulus less than 1.5/sqrt(Lambda_circ). Thus

```text
abs(v0)+abs(v1) < 1.5(2/16) = 3/16 < 1/4.
```

The small vector Kepler domain really contains these parameters. Re(k) > 0.99, abs(1+k) > 1.9, abs(J) > 3/5 and Lambda != 0 guard the rational formulas. Real points satisfy Gamma < Lambda and agree with the real chart. The derivative identity at real points is exactly what P1 `hol-chart` assumes; no complex symplectic identity away from the real locus is needed for that import.

The n-body chart is a product followed by the same coordinate permutations in positions and momenta. Frozen `bodyVector` uses `finProdFinEquiv(i,j)`; frozen `ellipsePhase` assembles with its inverse. Thus the block form identities sum to the frozen phase form with no sign or Jacobian factor from reindexing. The physical Kepler region is a product; it does not itself exclude interplanetary collisions, which are handled by restricting to Psi^−1(W) for the interacting models.

The compact-torus tube argument controls the physical element functions Lambda_i and Gamma_i continuously, rather than selecting an arbitrary lifted angle inverse. Every preimage has these same element values by chart injectivity modulo the fast lattice. The actual torus is nonempty and compact, so the positive-neighborhood conclusion used in that proof is valid after making E7's contract precise.

For the full torus lattice, polarizing every slow oscillator on 0 < R_i < I_i gives Gamma_i = R_i and Lambda_i = I_i. The form identity deta_i wedge dxi_i = dR_i wedge dpsi_i is correct. A common physical image determines I,R, the fast angles modulo 2pi and, since R_i > 0, every oscillator angle modulo 2pi. Hence Q1 with sigma_k = 0 and Q2 both hold for all 2n angle positions, not just the n fast angles. No assertion of polar injectivity at R_i = 0 is made.

Composing with S_(2pi) yields a **2pi-chart**, not a symplectic factor-one chart. Its Hamiltonian in period-one variables is (H o Phi_n o S_(2pi))/(2pi), and the frequency conversion is omega_rad/(2pi), with time unchanged. This agrees with the actual P1 transport theorem and physical pipeline. The displayed h(I)+coupling*f formula in `lattice`(d) is for the radian factor-one Phi_n; it must not be reused unchanged as the normalized Hamiltonian for Phi_n^(1).

## D25 definitions and averaging scope

The following literal dictionary holds at kappa = 1 on O_2, with fast position lambda, slow position xi, fast momentum Lambda and slow momentum eta:

| Frozen definition | Recomputed chart value / guard |
|---|---|
| `secularGamma` | oscillatorAction(slow w.2, slow w.1) = (eta_i²+xi_i²)/2; no sign or factor-two discrepancy. |
| `secularRoot` | k_i = 1−Gamma_i/Lambda_i in (0,1], not an unguarded square-root formula. |
| `secularEccVector` | sqrt((1−Gamma_i/(2Lambda_i))/Lambda_i) times (xi_i,eta_i), in that order. Radicand is strictly positive. |
| `secularAxis` | (Lambda_i/m_i)² = a_i, using m_i > 0 and kappa = 1. |
| `keplerMeanLongitude` | F−v0 sin F+v1 cos F, with the plus sign in the last term. |
| `longitudeJacobian` | 1−planeDot(v,orbitalUnit(F)) = J ≥ 1−e > 0. |
| `ellipsePosition` | a(kc−v+[(v dot c)/(1+k)]v), exactly the chart's position at eccentric longitude F. |
| `ellipseMomentum` | m_i²/(Lambda_i J) times (quarterTurn(c)−[(v dot c)/(1+k)]quarterTurn(v)); canonical momentum, not p/m. |
| `ellipsePhase` | Componentwise assembly of the two physical blocks; range is `Phase (2*2)`, the domain correction in P7-01. |
| `keplerEnergy`, `keplerAxis`, `keplerAction` | −m_i³/(2Lambda_i²), Lambda_i²/m_i², and m_i sqrt(a_i) = Lambda_i; energy is negative and all denominators are nonzero. |
| `keplerEccVector` | The LRL expression above at kappa = 1, equal to v_i. |
| `ProgradeElliptic` | Positive masses, positive individual radii, negative Kepler energies and positive individual cross products. These follow on the chart image, including circles. |

For arbitrary real F the frozen ellipse formulas represent Psi evaluated at lambda' = Phi(F,v), not necessarily at the original lambda stored in w. At the unique solved F_i(w) they equal Psi(w). This distinction is correctly made in `d25`(c).

After correcting the observable's type, the change-of-variables proof is valid. Phi(F+2pi,v) = Phi(F,v)+2pi and Phi' = J > 0. The endpoints corresponding to lambda = 0,2pi need not be F = 0,2pi: both integrands are periodic, so a whole-period integral can be shifted to those endpoints. This pays the apparent endpoint mismatch without setting the perihelion angle to zero. Fubini then gives the product weight product_i J_i for a double average of a continuous observable on the compact ellipse product.

The frozen `secularIntegrand` uses eccentric longitudes as its fast variables, evaluates `movingHamiltonian` on `ellipsePhase`, and includes exactly that product of longitude Jacobians. `exactSecularHamiltonian` applies the normalized `secularAverage`, with factor (2pi)^−2. Thus the chart explains the intended literal secular integral on a collision-free ellipse product. The present continuous-observable corollary does **not** by itself assert integrability of the totalized Newtonian Hamiltonian on every O_2: crossing ellipses require separate guards. Part 8/14 must supply the safe noncrossing compact domain and integrability before applying this to H_mov. That is an applicability limit, not an extra hypothesis needed for the chart or a refutation of the current conditional averaging proof.

The three mean values follow by shifting lambda = ell+g away from zero eccentricity and by the explicit circular formulas at zero. They give 1/a_i, m_i²/a_i and a_i(1+e_i²/2), consistent with the D25 kappa = 1 specialization.

## Source normalization and candidate source erratum

Fej07e p.3 explicitly reports the missing sqrt(2) correction for the original (31). **Pinned Fej04r p.47 already displays the corrected sqrt(2Lambda_j) and sqrt(2G_j).** Its Theorem 62 on p.48 asserts analytic symplectic coordinates and refers to Poincaré/Chenciner for the proof. This blueprint supplies its own planar proof and does not rely on either unpinned reference. The mass/strength replacement and removal of spatial nodal coordinates are disclosed adaptations.

**Candidate E-P7-Fej48: a stale asymptotic after the corrected normalization.** In the pinned revised PDF, p.48, the display immediately before Theorem 62 reads, in its eccentricity component,

```text
abs(r_j) = sqrt(Lambda_j/2) epsilon_j (1 + O(epsilon_j²)).
```

But corrected (31) gives

```text
abs(r_j) = sqrt(2Lambda_j) sqrt(1−sqrt(1−epsilon_j²))
         = sqrt(Lambda_j) epsilon_j (1 + O(epsilon_j²))
```

for positive small eccentricity. The inclination component likewise retains sqrt(Lambda_j/2) where its leading coefficient should be sqrt(Lambda_j) near the coplanar circular limit. Both were checked on the rendered page. This looks like an expansion left unchanged when (31) acquired sqrt(2). It is a defect in that expansion, not a reason to remove the corrected factor from the chart. The blueprint does not use the stale expansion. Record this candidate with the pinned-page location and keep it separate from the historical erratum reported by Fej07e; the reviewer did not edit the ledger.

The source's mean motion in (33) is sqrt(M_j)/a_j^(3/2), consistent with sqrt(kappa)/a^(3/2) here. The chart's plus-sine convention and the corrected slow normalization establish the subsequent Omega = 2sigma interpretation after secular diagonalization, subject to fixing P7-04's derivative description. No frozen statement or D25 definition was found false.

## Formalization route and closeout

E1 is plausible with the installed analytic inverse machinery: `OpenPartialHomeomorph.hasFPowerSeriesAt_symm` in `Analysis/Analytic/Inverse.lean:657` and `OpenPartialHomeomorph.analyticAt_symm'` in `Analysis/Calculus/FDeriv/Analytic.lean:415`. Apply the real analytic IFT to (F,v) -> (Phi(F,v),v); its triangular derivative is invertible because J > 0. The holomorphic near-circle route has an explicit complete-strip contraction, so it does not need a global argument function or a singular polar parameterization. Exterior-form calculations can be implemented as finite matrix/differential identities, with the density step applied entrywise. Quotient diffeomorphism wording can be realized by local inverse charts and the proved modulo-lattice injectivity; the frozen consumers need the latter concrete properties rather than a new manifold infrastructure.

The main unpaid statement is P7-01's observable binder. Fix it and the listed minor items, preserve the explicit real/complex regular-Kepler proof and the density argument, and the part supplies the intended chart, transport and secular-coordinate interfaces at blueprint level. Reviewed hashes were rechecked at closeout; report whitespace, table columns and conflict-marker checks passed. No unrelated file was authored or repaired by this review.
