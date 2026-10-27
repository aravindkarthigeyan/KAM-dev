# Plan of the track-I blueprint (`blueprint-I/`), written by bpI-p0, 2026-10-27

Part 0 (`parts/p0-conventions.tex`, 6 pages, compiled clean) is done: conventions, all 15 frozen `KAM/Frozen/Iso/Defs`
definitions, the track-K definitions the track-I theorems use, the Lean-totality remark `bpI:p0:totality`, and the four
frozen theorems `bpI:p0:g1`, `bpI:p0:head`, `bpI:p0:kepler`, `bpI:p0:r3bp` (reading remarks `bpI:p0:*-remarks`).
Labels of definitions: `bpI:p0:{domains,diophantine,hamiltonian,realham,stripdata,extended,bordered,hamsol,primaries,restricted,nearcircular,keplerborder}`.
Track-K results are cited with `\Kref{bp:p?:...}`; every K label below was checked to exist in `blueprint/parts/`.
Page counts are estimates (K's blueprint: 59 pages for 5 theorems). Total proposed: about 95-110 pages beyond Part 0.

## Sub-orchestrator rulings (2026-10-27)

- **Conventions** for all I/N/P blueprints: `.drafts/briefs/bp-part-writer.md`, item 3 (frozen conventions: period 1,
  max norms; cross-track citations `\Kref`, `\Iref`, `\Nref`, `\Pref` by exact label).
- **p4-ode is cancelled.** The shared Hamiltonian ODE layer (Lipschitz, Picard–Lindelöf, uniqueness among all
  solutions, continuation from compact sets, first exit / barriers) is owned by track N, Part 3
  (`blueprint-N/parts/p3-hamiltonian-ode.tex`, labels `bpN:p3:*`), being written now. Every "p4.k" below means the
  corresponding `\Nref{bpN:p3:*}` result. Part numbers p5–p8 keep their labels (`bpI:p5:*` …); there is no `p4` file.
- **Track I owns** for all tracks: the Kepler normalisation (p6), the Delaunay/Kepler analytic chart and Kepler's
  equation on a complex neighbourhood (p7, cited by P as `\Iref{bpI:p7:*}`), and collision exclusion from a compact
  safe region (p8.2, stated generally so that P can cite it).

- Apply `reviews/p0-review-1.md` findings I04 (p8: choose a larger safe action domain containing the closure of the initial annulus; no uniform margin inside the open annulus), I05 (p3: fix tau = 2, or any tau > 1, for the confinement application; do not claim density at tau = 1), I06 (p6: keep kappa, Omega; kappa' = kappa (2 pi)^2, Omega' = Omega/(2 pi)), I07 (all "p4" items are `\Nref{bpN:p3:*}`; comparison intervals arbitrary connected).

## Source facts checked while planning (pages read)

* HL19 Thm 3.6, (3.13)-(3.16), H4', H5', Rem. 3.7: pp. 18-19. Proof: Sect. 6, pp. 45-53 (Lemma 6.1 pp. 46-47, Lemma 6.2
  pp. 47-51, convergence p. 52-53). Constants: Tables 4-5, p. 59 (Appendix B, pp. 56-59); inverse lemma A.1, p. 55.
  HL19 only sketches Sect. 6 ("computations analogous ... omitted", p. 45): everything not in Lemma 6.1/6.2 must be
  supplied by reduction to K's Part 2 (as in K's blueprint for Sect. 5).
* Chi05 (Chierchia, March 2005): Delaunay (2.23)-(2.26) pp. 8-9; true anomaly/radius (2.29)-(2.32) pp. 11-12;
  barycentre, unit separation (3.33), (3.34), (3.37) pp. 12-13; Hamiltonian (3.38)-(3.41) pp. 13-14; (3.42)-(3.43) p. 16;
  determinant 3/L^4 p. 17 (the unnumbered display after (3.43)).
* Observation: for H = h, K(theta) = (theta, I), omega = grad h(I), one computes N_.b = (0, e_b), T = D(grad h)(I), last
  row grad h(I)^T, hence the extended torsion equals the bordered Hessian B_h(I) exactly (used in p3).
* Observation: Diophantine for omega* implies Diophantine with the same gamma for s*omega*, s >= 1; and gamma <= min_i |omega*_i|
  (take k = e_i). So the K-scheme's `bp:p2:frequency` is replaced by the explicit bound |omega| <= sigma_omega |omega*|.
* HL19 p. 45 (6.1) and p. 48 (E-bar_c) print "X_h(K) + L_omega K" with L_omega = - sum omega_i d_i (p. 20 (4.1)), i.e.
  X_h - DK omega: consistent with (2.1). This supports candidate erratum 2 (only (3.12), p. 18, has the wrong sign).

## Parts

### p1-iso-linear.tex -- Extended torsion and the bordered triangular system (~10 pp.)
Results:
1. `Extended torsion at a torus (theta,I)`: T_h = B_h exactly. Source: ours; HL19 Rem. 3.7 p. 19, Chi05 p. 17.
2. `Extended torsion at an invariant torus is [[T, omega],[omega^T, 0]]`: Dh(K)N = omega^T when E=0 (HL19 (3.17), p. 19;
   erratum 3: the first equality of Rem. 3.7 needs a minus sign). Needed so that I-G1's hypothesis (I8) is checkable from B_h.
3. `Border solve` (HL19 Lemma 6.1, pp. 46-47): the system (6.7)/(6.10) with the explicit estimates; proved here
   (HL19 proof is two lines "analogous to Lemma 5.1"). Sourcegap.
4. `Approximate energy identity`: <Dc(K) L> = D<c o K>-type identity, Dc(K)DK = D(c o K), and the
   compatibility <eta^N> = 0 for the iso right-hand sides (HL19 p. 46, (6.11)-(6.14)).
5. `Energy conservation of an invariant torus`: E=0 and nonresonant omega imply H o K constant; with the average, H(K)=E_0
   pointwise (D-I-ENERGY). Uses d(H o K) omega = DH X_H = 0 (symplectic identity).
K citations: `bp:p2:triangular` (the K triangular lemma, generalised to the 2n+1 system), `bp:p1:cohomological`,
`bp:p1:averages`, `bp:p1:averages-matrix`, `bp:p1:matrix-norms`, `bp:p1:neumann`, `bp:p1:holomorphic-inverse`,
`bp:p2:objects`, `bp:p2:frozen-agreement`, `bp:p2:periodicity`, `bp:p2:frame-identities`, `bp:p2:exactness`,
`bp:p2:geometry`, `bp:p2:hamiltonian`, `bp:p1:ext-integral` (integrability, Lean totality (T3)).
Shared with N/P: none. Dependencies: none (can start at once).

### p2-iso-iteration.tex -- One isoenergetic step and the iteration; proof of I-G1 (~25 pp.)
Results:
1. Standing data and constants (all depending on n, tau, M, sigma_K, sigma_B, sigma_T, mu, sigma_omega, nu, omega*; order of choice
   exactly as `bpI:p0:g1`). Source: HL19 Tables 4-5, p. 59 and (6.30), (6.45)-(6.51), pp. 49, 52-53; Lean: constants before D,H,K,...
2. `Frequency and gamma bounds`: |omega| <= sigma_omega |omega*|, gamma <= |omega*|, Diophantine for s*omega* (replaces `bp:p2:frequency`).
3. `Iso correction` (HL19 Lemma 6.2 Steps 1-2, pp. 48-50): Delta K = P xi, Delta omega = -omega xi^omega (a parallel shift along the
   ray), new error including L_{Delta omega} Delta K (6.34)-(6.39), new energy error (6.38). Open point: check whether `bp:p2:newton-error`
   applies to the first bracket X_h(K+DeltaK) - D(K+DeltaK) omega with omega frozen, else restate it with an extra defect.
4. `Perturbation of frame and extended torsion` (Steps 3-7, pp. 50-51): bounds (6.17)-(6.26), (6.43)-(6.44), invertibility of
   the new <T_c>, Lemma A.1 (p. 55) in the (n+1)x(n+1) max-row-sum norm; keeps dist(omega, boundary of ray) >= nu/2 (6.22), (6.48).
5. `Schedule, decay, induction, limit` (HL19 Sect. 6.3 pp. 52-53, (6.50)-(6.51)): s_j in (1, sigma_omega) Cauchy, s_inf in (1,sigma_omega),
   K_inf holomorphic on T_{rho_inf}, margins mu/2, E = 0, ||<H o K_j> - E_0|| -> 0.
6. `Proof of I-G1` from 2-5 + p1.5; <= in (O5), (O6) (erratum 1: HL19 (3.16) strict inequalities).
K citations: `bp:p2:standing`, `bp:p2:constants`, `bp:p2:correction`, `bp:p2:newton-error`, `bp:p2:perturbation`, `bp:p2:step`,
`bp:p2:schedule`, `bp:p2:error-decay`, `bp:p2:iteration`, `bp:p2:limit`, `bp:p2:g1`, `bp:p2:constants-register`, `bp:p2:deviations`,
`bp:p1:iteration`, `bp:p1:uniform-limits`, `bp:p1:taylor`, `bp:p1:cauchy-strip`, `bp:p1:cauchy-strip-2`, `bp:p1:real-restriction`, `bp:p1:hamiltonian-real`.
Shared with N/P: none (N/P use K's G1, not the iso variant). Dependencies: p1 statements (can be written in parallel against the statements).

### p3-iso-local-charts.tex -- Applying I-G1: local energy charts and uniform constants (~14 pp.)
Results:
1. `Local chart`: if det B_h(I0) != 0 then (I, s) -> (h(I), grad h(I) - s omega*) is a local diffeo near (I0,s0) (implicit function theorem
   in 3 unknowns); real-analytic holomorphic extension; uniform size on compact sets. Source: ours; Chi05 p. 17, HL19 Rem. 3.7.
2. `Two dense Diophantine directions`: for n = 2, tau >= 1, Diophantine rays omega* are dense in directions; choose omega*_+ and omega*_-
   on both sides of the direction of grad h(I0). Source: standard (Mathlib-level metric number theory: `bp:p1`/K's G3 `KAM.volume_not_diophantine_le`
   gives existence; the K blueprint's Part 4 label should be added to the Kref list by the writer).
3. `Initial approximate torus`: K(theta) = (theta, I) with h(I) = E - <f> up to O(eps), grad h(I) = s omega*; verify (I1)-(I13) of `bpI:p0:g1`
   for H = h + f with e = C eps: bounds M by Cauchy on a shrunken domain (`bp:p1:cauchy-open`, `bp:p1:cauchy-strip`), the Gram matrix
   is the identity, <T_c> = B_h up to O(eps) (p1.1) and its inverse by `bp:p1:neumann`.
4. `Uniform application over a compact cover`: finite cover of closure(B') x energy window by patches; epsilon_0 = min over patches.
K citations: `bp:p1:cauchy-open`, `bp:p1:cauchy-strip`, `bp:p1:neumann`, `bp:p1:holomorphic-inverse`, `bp:p1:real-inverse`, `bp:p1:matrix-norms`,
`bp:p1:periodic-bounded`, `bp:p1:increments-open`, `bp:p1:real-restriction`.
Shared: none. Dependencies: statement of I-G1 (p0) and p1.1 only.

### p4-ode.tex -- Hamiltonian ODEs: uniqueness, continuation, first exit (~10 pp.)
Results (SHARED with N and P):
1. `Local Lipschitz of X_H` for H real-analytic on real points of an open set (derivative of Re of a holomorphic function; `bp:p1:hamiltonian-real`).
2. `Picard-Lindeloef`: existence and uniqueness of solutions through a point (Mathlib: `IsPicardLindelof`, `ODE_solution_unique`); uniqueness
   among all solutions on all intervals containing 0 (this is the uniqueness clause of I-HEAD and, in physical coordinates, of I-R3BP).
3. `Continuation`: a maximal solution with image in a compact subset of the open domain is global (exit from every compact set).
4. `First-exit lemma` (P-AMD-CONFINEMENT needs the same): a solution starting in an open set whose boundary is invariant stays inside.
Source: standard; no pinned page; Lean-level infrastructure. 
Shared with: N (continuation and collision exclusion from a compact safe region, notes.md "Infrastructure"), P (first-exit, compact continuation,
finite-interval Newton equations, `docs/tracks/P/notes.md` Additions). **Place once** (suggest `blueprint-I/parts/p4-ode.tex`, cited by N and P as
`\Iref{bpI:p4:*}` after adding that macro, or hoist to a shared preamble part).
Dependencies: none.

### p5-confinement.tex -- Separation by invariant tori; proof of I-HEAD (~14 pp.)
Results:
1. `Energy chart`: near a point with grad h != 0 (implied by det B_h != 0) the energy surface {H = E} in a cylinder is a graph over (phi, c) and
   the cylinder T^2 x interval is separated by two graphs. Source: ours (D-I-CONFINEMENT).
2. `Graph property of the tori`: K_inf from p2 is C^1-close to (theta, I) so theta -> theta + u(theta) is a diffeomorphism of T^2; the torus is a
   graph I = Y(phi). Uses `bp:p1:cauchy-strip`, `bp:p1:periodic-bounded` and the O(e/gamma^2) closeness (O5) of I-G1.
3. `Invariant tori separate`: a trajectory started between two invariant graphs in the energy cylinder stays between (uses p4.2 uniqueness and
   the first-exit lemma p4.4); trajectories have the energy of z0 so only tori of that energy are needed (the point of I-G1's pointwise H(K_inf) = E_0).
4. `Confinement`: the region between the tori lies within eta of I0 (action projection of the energy surface is within O(eps) of the curve {h = E}); global
   existence by p4.3 (the region stays in a compact subset of B).
5. `Proof of I-HEAD` assembling p3.4, 5.1-5.4. No positive measure statement is used.
Source: ours; CC03 Thm 1.1, p. 7 (two boundary tori, numerical precedent, not used as input); Arnold63b (original theorem **[unverified]**).
Dependencies: statements of p3, p4 (written in parallel), p2's (O1)-(O6) only through p0.

### p6-kepler.tex -- Kepler bordered determinant and period-one conversion (~4 pp.)
Results:
1. I-KEPLER: det K_{kappa,Omega}(L) = 3 kappa Omega^2 / L^4 > 0: expansion along the first row (the (1,3)-entry cofactor vanishes against the zero
   entries; direct 3x3 computation). Source: Chi05 p. 17; general kappa, Omega ours.
2. `Rescaling lemma`: h(L,G) = -kappa/(2L^2) - Omega G in conventional 2 pi variables becomes, in period-one angles and I = 2 pi (L,G),
   h~(I) = -(2 pi)^2 / (2 I_1^2) - I_2/(2 pi), so kappa = (2 pi)^2, Omega = 1/(2 pi) are positive and B_{h~}(I) = a nonzero multiple of the
   conjugate of K_{kappa,Omega}(L) (this is the reason for generality in kappa, Omega); `borderedHessian` of the Delaunay Hamiltonian
   equals `keplerBorder` of its restriction (derivative characterization of the matrix entries: grad h = (kappa/L^3, -Omega)).
Shared with P: Kepler energy/action normalisation. Dependencies: none.

### p7-delaunay.tex -- Delaunay coordinates and the exact restricted Hamiltonian (~18 pp.)
Results:
1. `Hamilton equations of the restricted problem` (check that V_mu = (d_p H, -d_q H) on collision-free points, i.e. `bpI:p0:restricted`),
   and equivalence with the Newton equations (1.2), pp. 1-2, in the barycentric rotating frame (3.34), (3.37) pp. 12-13; rotation by -t
   preserves |p| (bound R).
2. `Delaunay chart at mu = 0` : an analytic symplectic diffeomorphism from {(l,g,L,G): 0 < G < L} (mod periods) onto the Cartesian region
   of Kepler ellipses, with a = L^2, e = sqrt(1 - (G/L)^2), r = a(1 - e cos u), Kepler equation (2.23)-(2.26), (2.29)-(2.32) pp. 8-9, 11-12;
   NearCircular is the preimage of {a_- < L^2 < a_+, e_- < e < e_+, G > 0}; complex extension to a neighbourhood (needs e_- > 0, e_+ < 1: away from e=0,1).
   Source: Chi05 (pp. 8-9, 11-12); **sourcegap**: Chi05 states analyticity "in u for |e| small" (p. 12); we need it on the whole e < 1/4 range
   (analytic implicit function theorem for Kepler's equation u - e sin u = l, |e| < 1/4 complexified).
3. `Exact transformed Hamiltonian`: H^{R3}_mu o chart = -1/(2L^2) - G + mu F_mu, F_mu analytic, |F_mu| <= C uniformly on a common complex neighbourhood
   for |mu| <= mu_1, including the shift of both primaries (Chi05 (3.38)-(3.43), pp. 13-16, where the model is the heliocentric, truncated one: not used;
   our F is exact and barycentric). Estimate by Cauchy: `bp:p1:cauchy-strip`, `bp:p1:holomorphic-regularity`.
4. `Nondegeneracy`: B_h(L,G) = K_{1,1}(L) (p6), det = 3/L^4 > 0.
Shared with P (P-PLANAR: Kepler/Poincare coordinates, energy, angular momentum, Runge-Lenz; `docs/tracks/P/notes.md`): **the Delaunay chart (items 2) should
be placed once** (here, or in a common part) and cited by P. Dependencies: p6 for item 4; items 1-3 independent.

### p8-r3bp.tex -- Proof of I-R3BP (~14 pp.)
Results:
1. `Topology of N`: open (r, a, e are continuous functions of (q,p) on {rad > 0, angular momentum > 0}), nonempty (explicit circular-like orbit),
   its image in (L,G) is open and bounded with closure in the safe region 0 < G < L (a_- >= ... , e_- > 0, e_+ < 1/4).
2. `Safe box`: choose B (open nbhd of the closed (L,G)-region of N) with the margins; the unperturbed orbits stay inside radius a_+(1+e_+) < 1
   (hypothesis hinner), distance >= d_0 > 0 from both primaries for |mu| small (barycentric shift).
3. `Application of I-HEAD` with f = mu F_mu, eps = C mu, eta small enough that the confined action box keeps a, e inside (a_-, a_+) range with margin;
   mu_0 from eps_0 and from collision exclusion; mu_0 <= 1/2.
4. `Transfer`: global physical solution z with the bounds d, R (radius via Kepler formulas; |p| <= R by energy), and uniqueness by ODE uniqueness in
   physical coordinates (p4.2), which needs no confinement of competitors.
Source: ours (D-I-PHYSICAL); Chi05 pp. 12-17 for the model. Dependencies: p5, p6, p7, p4.

## Results shared with tracks N / P (for the sub-orchestrator)
| Item | Placed in | Consumers |
|---|---|---|
| Hamiltonian ODE: Lipschitz, Picard-Lindeloef, uniqueness, continuation from compact, first exit | I p4 | N (continuation, collision exclusion), P (first-exit, finite-interval Newton eqs.) |
| Kepler/Delaunay analytic chart, Kepler equation on a complex neighbourhood, energy-angular momentum formulas | I p7 | P (planar problem, Poincare chart, physical Kepler geometry) |
| Kepler action normalisation (2 pi conversion) | I p6 | P |
| Collision exclusion from a compact safe region (distance >= d) | I p8.2 (using p4.3) | N, P |
| K's strip/Cauchy/matrix lemmas | K p1 (cited, not re-proved) | all |

## Order of writing
Wave 1 (parallel, no dependencies): p1, p4, p6, and the first half of p7 (items 1-2). Wave 2 (parallel, each against the statements of
wave 1): p2 (needs p1), p3 (needs p1.1 and the statement of I-G1), p7 items 3-4 (needs p6). Wave 3: p5 (needs statements of p3, p4), p8
(needs p5, p6, p7, p4). Critical path: p1 -> p2 -> p3 -> p5 -> p8. Page estimate: p1 10, p2 25, p3 14, p4 10, p5 14, p6 4, p7 18, p8 14.

## Doubtful points and errata for the ledger (not silently fixed)
* None of the four frozen statements looks false. Checked: I-KEPLER determinant 3 kappa Omega^2/L^4 by cofactor expansion; hypotheses of I-G1 are
  consistent with HL19 H1', H2-H3, H4', H5' (the transposed bounds ||(DK)^T||, ||(DX_h)^T|| are absorbed into M, sigma by norm equivalence of max row
  sums; HL19's c_{c,2} is the bound on D^2 H); I-HEAD's uniqueness and R3BP's uniqueness are plain ODE uniqueness.
* HL19 (3.16), p. 19: strict "<" with E_c = 0 (candidate erratum 1 of notes.md); frozen statement already uses <=.
* HL19 (3.12), p. 18: sign of L_omega K; pp. 45, 48 use the consistent convention (candidate erratum 2, with the new evidence above).
* HL19 Rem. 3.7, p. 19, first equality: missing minus sign (candidate erratum 3).
* HL19 Lemma 6.1, p. 46: (6.8)-(6.10) are printed with R_omega of (4.2) and L_omega = -d_omega; signs and the use of "(6.10)" must be re-derived in p1.3 (K's
  `bp:p2:triangular` records the same sign conversion for Lemma 5.1).
* Part 0 reading note: in I-G1 the Diophantine condition is on omega*, not on s*omega*, and nu appears only in (I9) and in the choice of the constants.
* In I-HEAD the nondegeneracy hypothesis `hiso` is required on the whole real slice of B_{r0}; it forces grad h != 0 there (last row/column of the bordered
  matrix), which is what makes omega* != 0 available in p3.
