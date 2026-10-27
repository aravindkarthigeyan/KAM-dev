# Track N blueprint: plan of Parts 1 to 11

Author: bpN-p0. Part 0 is written (`parts/p0-conventions.tex`, 5 pages, compiles cleanly). Labels: `bpN:p<k>:<slug>`,
steps `stepN:p<k>:<slug>`. `K:` means a label of `blueprint/` (checked to exist in `blueprint/parts/p1-analysis.tex`),
written `\Kref{...}`. Page numbers of Pöschel 1993 (Pos93) are printed pages, read from the scan
(`sources/incoming-N/poschel1993_gdz.pdf`, PDF page = printed - 185); BM11 = `arxiv_1004.1014v2`.

## Route and the technique decision

N-HEAD-C is Pos93 Theorem 1 (pp. 190-191) after conversions. The proof of Theorem 1 (p. 203-204) is the assembly of

1. the **Normal Form Lemma** (p. 192) from the **Iterative Lemma** (p. 193, proved in Appendix A pp. 211-213);
2. **stability estimates**: nonresonant Prop. 1 (p. 196), resonant Lemmas 1-2 and Prop. 2 (pp. 197-200), by energy
   conservation and convexity (no Dirichlet approximation needed);
3. the **geometry of resonances**: Geometric Lemma (pp. 201-202) and Covering Lemma (p. 203) on maximal K-lattices;
4. the closing choice `K = (eps_0/eps)^a`, `a = 1/(2n)` (p. 204).

(Pos93 Theorems 4, 5, 6, pp. 208-210, use Dirichlet simultaneous approximation; they are not needed. The row "N-HEAD
arithmetic: Dirichlet" of `notes.md` therefore reduces to lattice volumes, Gram determinants and the unimodular change of basis
of pp. 200-202.)

**Decision (resonant normal form): Pöschel's own method, the Lie transform in its simplest form.** Read on p. 211: the
canonical map is `Phi = X_phi^1`, the time-one map of the flow of a Hamiltonian field, and one uses *Taylor's formula with
integral remainder to first order* in `H_0 o Phi = h + {h,phi} + f_0 + int_0^1 {(1-t){h,phi}+f_0, phi} o X_phi^t dt`; the
homological equation `{phi,h} + chi = T_K f` is solved on Fourier coefficients (p. 211, with divisors `k.omega(I)`).
No infinite Lie series is used to *construct* the map. The one convergent Lie series occurs in Lemma B.5 (pp. 214-215), the
bound `|u o X_phi^1| <= (1-2|phi|/(rho sigma))^{-1} |u|` in the weighted norm, by the `ad_phi^h` series, whose terms are
bounded by the algebra property (Lemma B.2) and the bracket estimate (Lemma B.4). Reasons for this choice: (a) it is the route of the
selected contract (Thm 1, Normal Form Lemma, Iterative Lemma), so every constant relation can be read off the pinned pages;
(b) the single large first step and small later steps (p. 193) give the smallness condition in `K` alone, which is what
produces the exponent `1/(2n)`; (c) a full Lie-series (Giorgilli-type) normal form would need a different book-keeping and
is a different theorem. Pos93 p. 193 also mentions vector-field norms (Delshams-Gutierrez, Fasso) as an alternative; not selected.
Since the frozen headline asserts only the *existence* of constants, the blueprint may use cruder constants than Pöschel's
(`q=9`, `p=9/8`, `b=1/8`, `A = 11M/m`) wherever that simplifies a proof; every such change is a labelled deviation in Part 6/9.
Fallback if Lemma B.5 proves heavy in Lean: estimate `u o X_phi^1` in sup norms using the flow displacement bound
(p. 212: `X_phi^t` maps `V_{r-3rho/2, s-3sigma/2}` into `V_{r-rho,s-sigma}`) and convert with Lemma B.1 (coth loss); this costs
only constants. Decide at the start of Part 5.

**Conventions inside Parts 5 to 9.** Work in Pöschel's normalisation (period `2 pi`, Euclidean action norm, Fourier norm
`|u|_{D,r,s} = sup_I sum_k |u_k(I)| e^{|k|s}`) to keep the pinned pages readable; do the conversion to the frozen conventions
(period 1, max norms) once, in Part 1 and Part 10. Alternative (period 1, `e^{2 pi |k| sigma}`) would let Parts 4 to 6 cite
`\Kref{bp:p1:decay}`, `\Kref{bp:p1:summation}` directly; the sub-orchestrator may choose it, it changes only constants.

## Sub-orchestrator rulings (2026-10-27)

- **Conventions** for all I/N/P blueprints: `.drafts/briefs/bp-part-writer.md`, item 3 (frozen conventions: period 1, max norms; cross-track citations by exact label).
- **Ownership:** track N owns the shared ODE layer (Part 3, written), weighted norms, Lie transform and normal forms (Parts 4-6); track I owns Kepler fundamentals and Delaunay (I p6-p7) and collision exclusion (I p8); track P owns Newtonian n-body models (P6), the Poincare chart (P7), secular averaging (P8).
- Apply `reviews/p0-review-1.md` findings N05 (Poschel's quantitative QC is the alternative "|omega.xi| <= ell |xi|_2 implies Q[xi,xi] >= mu |xi|_2^2", never full positive definiteness), N06 (lattice norms: {|k|_1 <= K} is contained in {|k|_2 <= K}; carry the sqrt(n) factor; separate geometry and analytic cutoffs), N07 (the "Conventions inside Parts 5 to 9" paragraph below is overruled: frozen conventions throughout, conversions once in Part 1), N02 (holomorphy gives differentiability on R^n x B_s(R), angles first).

- **Cutoff direction CORRECTED (Part 8, 2026-10-27; supersedes the N06 wording above).** Part 6 needs
  nonresonance on the ℓ¹ ball Z_{K_a}; the Geometric Lemma gives it on the Euclidean ball {‖k‖₂ ≤ K_g}; since
  Z_{K_a} ⊆ {‖k‖₂ ≤ K_a}, one needs K_a ≤ K_g. The √n enters Part 7's radius condition r ≤ α/(p√n M K_a) against
  the covering radius r_Λ = α_Λ/(pMK_g), which holds iff K_g ≥ √n K_a. Correct compatibility: **K_g ≥ √n·K_a**
  (Part 9: K_g = √n K_a). See `bpN:p8:direction`, `bpN:p8:cutoffs`. Parts 6–7 cutoff remarks to be corrected.

## Parts

Sizes are estimates of final printed pages in the Part-0 format.

| Part | File | Pages | Depends on (statement level) |
|---|---|---|---|
| 1 | `p1-interfaces.tex` | 7 | P0 |
| 2 | `p2-qc-zero.tex` | 5 | P0 |
| 3 | `p3-hamiltonian-ode.tex` | 9 | P0 |
| 4 | `p4-weighted-norms.tex` | 6 | P0, K |
| 5 | `p5-canonical-maps.tex` | 10 | P4 |
| 6 | `p6-normal-form.tex` | 9 | P4, P5 |
| 7 | `p7-stability.tex` | 8 | P3, P6 (statements) |
| 8 | `p8-resonance-geometry.tex` | 8 | P0 |
| 9 | `p9-poschel-theorem1.tex` | 6 | P6, P7, P8 (statements) |
| 10 | `p10-assembly.tex` | 9 | P1, P3, P9 |
| 11 | `p11-d22-additions.tex` | 12-20 (tbd) | after D22 freeze |

Total about 90 to 100 pages.

### Part 1: Interfaces and conversion of hypotheses (`p1-interfaces.tex`)

- `bpN:p1:realdomain`: `B_s(R) = B(0,R+s)`, closure and openness facts for the domains (ours; Remark `bpN:p0:rdomain-eq`).
- `bpN:p1:holo-real`: holomorphic on `B(0,R)_s` implies `h_R` is `C^infty` on `B_s(R)`, `omega_h` is the gradient, and
  `H_{h,f}` is real-differentiable near real points of the domain with `X_H = X_{h+f}` (BM11 p. 4; `\Kref{bp:p1:holomorphic-regularity}`,
  `\Kref{bp:p1:real-restriction}`, `\Kref{bp:p1:hamiltonian-real}`, `\Kref{bp:p1:ext-schwarz}`).
- `bpN:p1:partials`: ordered coordinate partials equal multi-index partials; first-order `B(M)` gives `|omega_h(I)|_2 <= sqrt(n) M`.
- `bpN:p1:hessian-convert`: `HasComplexHessianBound` gives every Hessian entry `<= M_C`, hence Euclidean norm `<= n M_C`
  (`\Kref{bp:p1:operator-norms}`, `\Kref{bp:p1:matrix-norms}`).
- `bpN:p1:qc-convert`: from `QC(m)` (BM-form) and `omega_min` to the uniform Pöschel quantification
  `<Q xi,xi> >= mu |xi|_2^2` on the whole space, with `q=m/n, Bc=nM_C+q, mu=q/2, ell=omega_min q/(8(Bc+q))`
  (`docs/tracks/N/sources.md`, "Uniform conversion"; Pos93 p. 190, anchor POS190-QC). The Lean statement has the max norm on the right
  and Euclidean orthogonality; every inequality of the conversion is a labelled step.
- `bpN:p1:period-convert`: `H~(phi,I) = 2 pi H(phi/2pi, I)`, `h~ = 2 pi h`, `f~ = 2 pi f`; effect on `M`, `M_C`, `m`, `omega`.
- `bpN:p1:norm-convert`: strip sup norm to weighted Fourier norm, loss `coth^n(sigma)` (Pos93 p. 190 and Lemma B.1 p. 213; `\Kref{bp:p1:decay}`, `\Kref{bp:p1:summation}`, `\Kref{bp:p1:exp-sums}`).
- `bpN:p1:constants`: the dictionary of Pos93 parameters `r_0, s_0, sigma, F, A, eps*, C, c, T` in terms of `(n,R,s,M,m,M_C,omega_min)`
  and a check that none depends on `h, f, eps, theta_0, I_0`. Shared with P9, P10.

### Part 2: N-QC and N-ZERO (`p2-qc-zero.tex`)

- `bpN:p2:qc-kernel`: the derivative of `Psi` is `(v,u) -> (omega.v, u omega + lambda Q v)`; its kernel is trivial (BM11 Lemma 3.3 proof, p. 10). Uses `\Kref{bp:p1:ext-schwarz}` (symmetric Hessian), `bpN:p1:holo-real` is not needed (only `C^2`).
- `bpN:p2:qc-bij`: injective linear map between spaces of equal dimension `n+1` is bijective; proves N-QC (Theorem `bpN:p0:qcthm`).
- `bpN:p2:zero-deriv`: `X_H` at `(theta, I_0)` for `H = Re(h+f)`, using `f=0` on the open set `D_s(R)`, equals `(omega_h(I_0), 0)` (BM11 p. 1).
- `bpN:p2:zero`: N-ZERO (Theorem `bpN:p0:zero`): chain rule for the affine orbit, differentiability of `H` on the tube.
Shared: N-QC is the gate used by track I (isoenergetic geometry) and the N confinement; coordinate with I's blueprint so that
`bpN:p2:qc-kernel` is cited, not repeated.

### Part 3: Hamiltonian ODE infrastructure (`p3-hamiltonian-ode.tex`)

- `bpN:p3:lipschitz`: `X_H` is `C^1` (locally Lipschitz) on `B(0,R) x R^n` for `H = H_{h,f}` (via `bpN:p1:holo-real`).
- `bpN:p3:local-exist`: local existence and uniqueness (Picard-Lindelof, external fact, one label) for `z' = X_H(z)`; both time directions.
- `bpN:p3:energy`: `H(z(t))` is constant along `IsSolutionOn` solutions (BM11 p. 13, Pos93 p. 198 "energy conservation").
- `bpN:p3:continuation`: a solution whose action stays in a compact subset of the open action domain extends to any interval
  (maximal-solution argument, BM11 p. 13); angles are unbounded but the field is periodic, so no obstruction.
- `bpN:p3:uniqueness-closed`: uniqueness on closed intervals `[-L,L]` (Gronwall; clause (d) of Theorem `bpN:p0:head`), including that
  a solution on `[-L,L]` agrees with the exhibited one.
- `bpN:p3:confinement-glue`: if every solution on a maximal interval stays within `C eps^a` of `I_0` for `|t| <= tau`, then it exists on
  `[-tau, tau]` (the final clause assembling (a)-(d)). Used by Part 10.
Shared with tracks I and P (confinement, finite-time applications) and with N-ZERO; the sub-orchestrator should place Part 3 first and let
I and P cite it. Must be stated for general real-analytic `H` on an open set to allow this.

### Part 4: Weighted Fourier norms and Cauchy estimates (`p4-weighted-norms.tex`)

Pos93 Appendix B (pp. 213-215).
- `bpN:p4:norm`: `|u|_{I,s}`, `|u|_{D,r,s}`; Lemma B.1 sup vs weighted (p. 213; `\Kref{bp:p1:decay}`, `\Kref{bp:p1:summation}`, `\Kref{bp:p1:exp-sums}`).
- `bpN:p4:algebra`: Lemma B.2 `|uv| <= |u||v|` (p. 213).
- `bpN:p4:cauchy`: Lemma B.3 derivative estimates in weighted norm (p. 213-214; `\Kref{bp:p1:cauchy-open}` is the sup-norm analogue and is not enough).
- `bpN:p4:bracket`: Lemma B.4 Poisson bracket estimate (p. 214).
- `bpN:p4:general-cauchy`: Lemma C.1, general Cauchy inequality for analytic maps of Banach spaces (p. 215; or derived from `\Kref{bp:p1:ext-cauchy}`).
- `bpN:p4:projections`: the truncation `T_K` and `P_Lambda` (p. 192) and `|f - T_K f| <= e^{-Ks}|f|`.
Shared with track P (averaging) and K.

### Part 5: Canonical transformations (`p5-canonical-maps.tex`)

Pos93 Appendix A, B.5 and the discussion p. 193; decision above.
- `bpN:p5:flow-domain`: if `|W X_phi| <= 1/2` then `X_phi^t` maps the shrunk domain into the larger one and is symplectic, real analytic,
  `|W(X_phi^t - id)| <= ...` (p. 212; uses `bpN:p3:*` for existence of the flow and `bpN:p4:cauchy`).
- `bpN:p5:flow-derivative`: `|W(D X_phi^t - I) W^{-1}| <= q delta/(alpha rho sigma)` by the general Cauchy inequality (p. 212).
- `bpN:p5:taylor`: Taylor with integral remainder of `H_0 o X_phi^1` (p. 211).
- `bpN:p5:composition`: Lemma B.5, `|u o X_phi^1| <= (1 - 2|phi|/(rho sigma))^{-1} |u|` (pp. 214-215), via `ad_phi` series or the fallback.
- `bpN:p5:symplectic`: time-one maps of Hamiltonian fields are symplectic (standard; external fact, one label).
Shared with tracks I and P (Lie transform, normal forms). This is the largest shared package; the sub-orchestrator should assign
one writer for Parts 4 and 5 and give I and P the statement labels.

### Part 6: Iterative Lemma and Normal Form Lemma (`p6-normal-form.tex`)

- `bpN:p6:homological`: solve `{phi,h} + chi = T_K f` on Fourier coefficients with `|k.omega(I)| >= alpha/q` on `Z_K^n \ Lambda`; estimates `|chi|, |phi| <= q delta/alpha` (p. 211-212; `|k.omega|` lower bound via the mean value theorem and `M K r` as p. 212).
- `bpN:p6:iterative`: Iterative Lemma (p. 193) with the estimate of `f_+` (pp. 212-213).
- `bpN:p6:normal-form`: Normal Form Lemma (p. 192) from `N = floor(Ks/(12 ln 2))` iterations with the first step large (pp. 193-196); includes the induction `eps_i <= 4^{1-i} eps_1`.
- `bpN:p6:nonresonant-case`: `K s < 6` case `g = 0` (p. 197).
Shared with track P (averaging and normal forms).

### Part 7: Stability estimates (`p7-stability.tex`)

- `bpN:p7:nonresonant`: Proposition 1 (p. 196): nonresonant stability, no convexity.
- `bpN:p7:resonant-lemma1`: Lemma 1 (p. 197-198): the energy/convexity argument for `m`-convex `h` in normal form.
- `bpN:p7:resonant-lemma2`: Lemma 2 (p. 199): `l,m`-quasi-convex version (uses the stopping-time contradiction argument).
- `bpN:p7:resonant-prop2`: Proposition 2, Resonant Stability Lemma (pp. 199-200): transfer back to original coordinates.
Uses energy conservation `bpN:p3:energy`. Shared with track I (energy confinement for isoenergetic KAM).

### Part 8: Geometry of resonances (`p8-resonance-geometry.tex`)

Self-contained linear algebra and lattice geometry; can be written at once.
- `bpN:p8:lattice-volume`: `|Lambda| = sqrt(det A^T A)`, independence of the basis (unimodular change, `det U = +-1`) (p. 200-201).
- `bpN:p8:blocks`: maximal `K`-lattices, resonance zones `Z_Lambda`, blocks `B_Lambda`, covering `R^n = B_Theta u B_1^* u ... u B_n^*` (p. 201).
- `bpN:p8:geometric-lemma`: Geometric Lemma (pp. 201-202), with the orthogonal-projection computation, including all positivity of square roots (`A^2 - 1 >= 0`) and the case distinction `d < n`, `d = n`.
- `bpN:p8:covering`: Covering Lemma (p. 203) in action space.
Pull-back to action space uses only the frequency map being a map `P -> R^n`; no regularity needed. Shared with Part P (resonance blocks), with track K small divisors only through the arithmetic (not cited).

### Part 9: Pöschel's Theorem 1 (`p9-poschel-theorem1.tex`)

- `bpN:p9:thm1`: Pos93 Theorem 1 as an internal theorem in Pöschel's normalisation (pp. 190-191), with the proof of p. 204: constants `q=9, p=9/8, b=1/8, A=11M/m`, the choice `K = (eps_0/eps)^a`, the bounds `r_Lambda <= r_0/(AK)`, the time bound `>= A^2 s_0/Omega_0`, and the nonexceptional branch separately from the exceptional one `|omega(I_0)| <= m r_0/8` (pp. 204).
- `bpN:p9:thm1star`: not needed; omit (Theorem 1*, p. 191, is not selected).
Every conclusion is stated for solutions of the Hamiltonian system as long as the action stays in the domain (an a-priori statement about solutions on the real domain), so that Part 10 can connect it with existence.

### Part 10: Assembly of N-HEAD-C (`p10-assembly.tex`)

- `bpN:p10:choice`: the choices of `r_0, s_0, sigma, F, A, eps*, C, c, T, eps_0` from `bpN:p1:constants`, and `C eps_0^{1/(2n)} <= R/4`.
- `bpN:p10:hypotheses-check`: hypotheses of Theorem `bpN:p9:thm1` hold: tube inside `B_s^C`, `l,mu`-quasi-convexity (`bpN:p1:qc-convert`), exceptional branch excluded by `omega_min`, perturbation size `<= F eps` (`bpN:p1:norm-convert`), time prefactor `<= 2 Pi_0` bound from `|omega|_2 <= 2 pi n M`.
- `bpN:p10:existence`: existence of `z` on `[-tau, tau]` by `bpN:p3:local-exist` and `bpN:p3:continuation` using the a-priori confinement in `B(0,3R/4)`.
- `bpN:p10:uniqueness`: clause (d), by `bpN:p3:uniqueness-closed`.
- `bpN:p10:head`: proof of Theorem `bpN:p0:head` including quantifier order and constant dependence.
- `bpN:p10:zero-case`: remark that `eps = 0` is covered by N-ZERO (Part 2), consistent with `H7`.

### Part 11: D22 additions (`p11-d22-additions.tex`), reserved

To be written after N-PARTIAL-CONVEX (Nekhoroshev 1977 Thm 4.4; `sources/incoming-round3/nek77-eng.pdf`) and N-AVERAGING
(Arnold-Kozlov-Neishtadt Thm 6.11) are frozen. It will cite Parts 3 (ODE), 4 to 6 (normal forms) and 8 (resonance geometry); its Part 0 additions
(statements, definitions) go into an appendix section of `p0-conventions.tex` or into this part, the sub-orchestrator decides. Page count unknown until
statement freeze.

## Shared infrastructure to place once (with tracks I and P)

| Item | Where | Consumers |
|---|---|---|
| Lie transform / time-one canonical maps, estimates, composition | Part 5 | I, P |
| Resonant normal form (Iterative and Normal Form Lemma) | Part 6 | P (normal forms, averaging); N-AVERAGING |
| Weighted Fourier norms, bracket and Cauchy estimates | Part 4 | P, K |
| Hamiltonian ODE existence, uniqueness, continuation, energy conservation | Part 3 | I (confinement), P (finite-time), N-ZERO |
| Energy confinement for convex/quasi-convex `h` | Part 7 | I |
| N-QC kernel argument and nonsingular derivative | Part 2 | I (isoenergetic gate) |
| Holomorphic to real-analytic restriction, `X_H = X_{h+f}` | Part 1 | I, P, K (cites `bp:p1:hamiltonian-real`) |
| Lattice volumes and resonance blocks | Part 8 | P |

## Track-K results cited, not re-proved (all exist in `blueprint/parts/p1-analysis.tex`)

`bp:p1:ext-cauchy`, `bp:p1:ext-mvt`, `bp:p1:ext-schwarz`, `bp:p1:ext-integral`, `bp:p1:ext-fourier`, `bp:p1:holomorphic-regularity`,
`bp:p1:holomorphic-analytic`, `bp:p1:cauchy-open`, `bp:p1:taylor`, `bp:p1:operator-norms`, `bp:p1:matrix-norms`, `bp:p1:periodic-bounded`,
`bp:p1:cauchy-strip`, `bp:p1:cauchy-strip-2`, `bp:p1:decay`, `bp:p1:summation`, `bp:p1:exp-sums`, `bp:p1:fourier-basic`, `bp:p1:averages`,
`bp:p1:real-restriction`, `bp:p1:hamiltonian-real`, `bp:p0:domains`, `bp:p0:hamiltonian` (Part 0 of K). Nothing in K's Part 2 (a-posteriori machinery)
is used: the frozen KAM theorem is not a provider for N-HEAD-C (`notes.md`).

## Parallel writing

- Wave 1 (independent, need only Part 0): Parts 1, 2, 3, 4, 8.
- Wave 2: Part 5 (after Part 4 statements), then Part 6 (after Part 5 statements); Part 7 can start from the *statements* of Part 6 and Part 3.
- Wave 3: Part 9 (statements of 6, 7, 8), Part 10 (statements of 1, 3, 9).
- Part 11 after the D22 freeze.
Cross-part dependencies are by labelled statement, so writers in a wave work from the fixed statement lists above.

## Doubtful points to report

- The frozen N-HEAD-C is stated for solutions on `B(0,R)` while (H4), (H5) are on `B(0,R+s)`; no problem, but Part 10 must keep the two radii apart.
- Pos93 Theorem 1 as printed has hypothesis `r_0 <= 4l/m` and exceptional branch; the frozen statement avoids it only through `omega_min`; the conversion in `sources.md` is not in the source, only in our notes (`\sourcegap` in `bpN:p0:head`).
- Pos93 p. 192 Normal Form Lemma bounds are with `|k| <= K` (l1) while the Geometric Lemma on p. 202 uses the Euclidean norm of `k`; Pöschel says it suffices to take `||k|| <= K` ("rather than the stronger") - the l1/Euclid comparison must be made explicit in Part 8/9 (`||k||_2 <= |k|_1`, so the Euclidean-ball set `Z_K` is smaller; check the direction in Part 9).
