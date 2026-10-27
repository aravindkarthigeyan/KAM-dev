# Track P blueprint: plan of Parts 1 to 14

Author: bpP-p0. Part 0 is written (`parts/p0-conventions.tex`, 8 pages, compiles cleanly): conventions, the three track-K
and 33 track-P frozen definitions, the Lean-totality remark, and P-G, P-PLANAR, P-FIXED transcribed from the Lean text.
Labels: `bpP:p<k>:<slug>`, steps `stepP:p<k>:<slug>`. `K:` labels are written `\Kref{...}`; all labels below were checked
to exist in `blueprint/parts/`. `bpN:...` labels are those PLANNED in `blueprint-N/PLAN.md` (not yet written); `bpI:` items
are named by content only, since `blueprint-I/` has only Part 0.
Sources are read from `sources/incoming-P/` (text of `cp10.pdf`, `cp09.pdf`, the revised Fej04r, the erratum) and
`sources/pdf/cp11_planetary_invent.pdf`; pages below are printed pages. Abbreviations: CP10 = Chierchia-Pinzari
DCDS-S 2010, CP09 = Chierchia-Pusateri ETDS 2009 (arXiv v1 numbering), Fej04r = Fejoz revised printing, Fej07e = erratum.

## Sub-orchestrator rulings (2026-10-27)

- **Conventions** for all I/N/P blueprints: `.drafts/briefs/bp-part-writer.md`, item 3 (frozen conventions: period 1,
  max norms; cross-track citations `\Kref`, `\Iref`, `\Nref`, `\Pref` by exact label). CP's `2π` angles are converted
  once (Part 1, `bpP:p1:period-convert`).
- **Ownership of shared results.**
  - Hamiltonian ODE layer: track N Part 3 (`\Nref{bpN:p3:*}`, being written). P1 cites it.
  - Weighted norms, Lie transform / time-one maps, homological equation, Iterative Lemma: track N Parts 4–6
    (`\Nref{bpN:p4:*}`, `bpN:p5:*`, `bpN:p6:*`). P2 follows its plan of record (derive CP10 Lemma A.1 in the needed
    case `α₁ = α₂`, `Λ = {0}` from `bpN:p6:iterative`); BCV03 Lemma A.5 is then not needed.
  - Kepler problem fundamentals (energy, angular momentum, Kepler's equation solved analytically on a complex
    neighbourhood of small eccentricity, orbit maps): track I Part 7 (`\Iref{bpI:p7:*}`). P7 owns the Poincaré chart
    (analytic through `e = 0`) and the product chart, citing I for Kepler's equation; I's Delaunay chart (away from
    `e = 0`) stays in I.
  - Newtonian n-body models, barycentric reduction and reconstruction: P6 (cited by I where useful). Collision
    exclusion from a compact safe region: track I Part 8 (`\Iref{bpI:p8:*}`), stated generally.
  - Symplectic transport of tori and period conversions: P1. Averaging over mean longitudes, Laplace coefficients,
    secular Hamiltonian: P8. Two-scale Diophantine measure: P4.
- **Part 11 route decision (after the GPT-6.1-Sol route study `reviews/p11-route-study.md`, 2026-10-27).**
  - No route has a proof of the weak-nondegeneracy gate complete in the pinned sources. Féjoz 2004 §§3–5 is proved
    but in the C^∞ category (Fej07e p. 4: "Les tores trouvés ici sont de classe C∞"); the frozen statements need
    real-analytic tori, so route (b) is rejected as the gate (its Pyartli estimate, Théorème 50/58, may be reused).
  - **P-PLANAR: primary route (c)** — frozen P-G (Parts 1–5) applied to the planar secular Birkhoff form, using the
    explicit planar two-planet torsion of CP11 §8.1 pp. 32–34, (8.1)–(8.4) (pinned), plus the continuation of the
    torsion determinant to a full-torsion patch near every prescribed axis vector (new obligation; CP11 Rem. 7.3(iii)).
    Parts 10–12 are re-planned around this route; Part 11 becomes the planar torsion part.
  - **P-FIXED (general n): route (a)** — CP09 Theorem 4 with an analytic quantitative Rüssmann theorem. BLOCKED on
    source acquisition: Rüssmann, R&C Dynamics 6(2) (2001) 119–203 (CP09 [16], Thm 1.7 p. 127), and optionally
    Pusateri's master thesis (Roma Tre 2006, Fej07e [P06]). Requested from the owner. Do not dispatch a source-complete
    Part 11a before it is pinned and audited (study, milestone 1). The finite preparation (CP09 Lemmas 4–7, via N
    Parts 5–6) may be written meanwhile. For n = 2 only, P-FIXED can also follow route (c): ⟨H_mov⟩ − ⟨H_fix⟩ is
    an exact function of the actions (Fej04r Lemma 64 and the virial identity), to be proved in Part 8.
  - Apply the study's plan-level corrections: P6 tube sketch must convert the Pi (max) position error to Euclidean
    distance (factor √2); the pair bounds are exactly μ-independent (x_i − x_j = q_i − q_j).

- **P3 as written (2026-10-27, `p3a-two-scale-iteration.tex`, `p3b-two-scale-limit.tex`).** Part 3 consumes the
  averaging interface `bpP:p3:avg` (CP10 Prop. 1 with m = 0 and two non-resonance scales α₁ ≥ α₂, smallness
  `64e·K·E < α₂ r`, displacement bounds `9E`). **P2 must prove exactly that interface.** First try: since
  |k·ω| ≥ α₁ ≥ α₂ for every non-resonant k, apply the one-scale `\Nref{bpN:p6:iterative}` with α = α₂ and check that
  its conclusions (remainder, displacement, domains) imply `bpP:p3:avg`; if they do not, prove the two-scale variant
  on top of N Parts 4–6. P3 added the normalisations `M̂ ≤ M`, `M̄ᵢ ≤ M̄` (true in P-G) and dropped CP10's unproved
  uniqueness of φ_ω.

- **Norm ruling (after review P3-03, 2026-10-27).** Track P uses track N's weighted norm throughout
  (Pöschel's `sup_I Σ_k |f_k(I)| e^{2π|k|₁σ}`, `\Nref{bpN:p4:norm}`), with geometric widths σ = s_CP/(2π). Part 3
  (written with CP10's `Σ_k sup_I` norm) is revised to it; constants that depend on the norm are recomputed.
- **Averaging (review P3-01/02).** P2 proves the averaging by iteration (`\Nref{bpN:p6:normal-form}`, Λ = {0}) and
  proves the two-scale coordinate displacement bounds (I₁ with α₁, I₂ with α₂) itself; the α = α₂ shortcut is
  insufficient. Part 5's perturbation size is E = Cμε⁵ (CP10 p. 560), not μ⁵ (P3-05).

## Routes in one paragraph

* **P-G** (Theorem `bpP:p0:pg`) is CP10 Theorem 1.3, pp. 548 and 562-564 (proof §4, "most of the arguments are similar
  (but simpler) than" §3), which uses: Averaging (CP10 Prop. 1 / Lemma A.1, pp. 552, 564-566), the two-scale KAM theorem
  (CP10 Prop. 3, pp. 554-555, proved in App. B, pp. 565-573) and the measure Lemma 3.1 (p. 562; App. C, pp. 574-578). **No
  Birkhoff normal form is needed for Theorem 1.3** (the Birkhoff step, CP10 Prop. 2 p. 553 and Step 4 p. 559, belongs to Theorem 1.2);
  hypothesis (A2'') already is the normal form up to order four.
* **P-PLANAR** (n = 2, moving Sun) and **P-FIXED** (general n, fixed Sun) share one route (`statement.md`, "Physical proof route",
  audit P5-P7): (1) Newtonian model, reconstruction, tube and pair bounds; (2) planar Kepler/Poincare chart (Fej04r Thm 62, p. 48);
  (3) averaging and the secular quadratic form (Fej04r Lemma 64, pp. 49-50, Formula 67 = (36)-(37), pp. 50-51, with the P5 corrections);
  (4) negative definiteness and diagonalization (Fej04r Lemmas 70-75, Prop. 73, pp. 53-55; erratum's sqrt2 normalization);
  (5) R-nondegeneracy of (nu, 2 sigma) (Fej04r Formula 69 p. 52, Lemma 76 and Prop. 77, pp. 55-58, with P6 repairs);
  (6) the analytic weakly nondegenerate KAM gate (CP09 Theorem 4, p. 8, via Russmann's Theorem 3, pp. 6-7); (7) transport back to
  Cartesian coordinates. At zero coupling both models have the same chart and the same h(Lambda), and
  `H_mov - H_fix|_{eps=mu} = mu |sum p_i|^2/(2 m_0)` (`bpP:p0:movham`), so only the **secular identification** (P7) separates them.

## Parts

Pages are estimates of final printed pages in the Part-0 format.

| Part | File | Pages | Depends on (statement level) |
|---|---|---|---|
| 1 | `p1-hamiltonian-tools.tex` | 10 | P0 |
| 2 | `p2-averaging.tex` | 14 | P0, bpN p4-p6 |
| 3 | `p3-two-scale-kam.tex` | 24 | P2 (statement), K p1 |
| 4 | `p4-pg-measure.tex` | 12 | P3 (statement) |
| 5 | `p5-pg-assembly.tex` | 12 | P2, P3, P4, P1 |
| 6 | `p6-newtonian-models.tex` | 12 | P0, P1 |
| 7 | `p7-kepler-poincare.tex` | 16 | P1 |
| 8 | `p8-secular-form.tex` | 16 | P6, P7 |
| 9 | `p9-secular-spectrum.tex` | 8 | P8 (statements) |
| 10 | `p10-nondegeneracy.tex` | 14 | P8, P9 |
| 11 | `p11-weak-kam-gate.tex` | 25 to 40 (tbd) | P1, K p1 |
| 12 | `p12-planar-assembly.tex` | 12 | P6, P7, P8, P10, P11 |
| 13 | `p13-fixed-assembly.tex` | 8 | P12, P8, P10 |
| 14 | `p14-d22-additions.tex` | 20 to 30 (tbd) | after the D22 freeze |

Total about 210 pages (about 175 without Part 14).

### Part 1: Hamiltonian tools for tori (`p1-hamiltonian-tools.tex`)

- `bpP:p1:torus-transport`: if `Phi` is an analytic symplectic diffeomorphism between open sets and `K` is a (cylinder/physical) torus for `H o Phi`, then `Phi o K`
  is one for `H` (analyticity, injectivity of `D(Phi o K)`, zero symplectic pullback, `X_{H o Phi} = Phi^* X_H`; the frozen sign of `Omega`, `bpP:p0:hamsymp`). Uses
  `\Kref{bp:p1:hamiltonian-real}`, `\Kref{bp:p1:real-restriction}`, `\Kref{bp:p1:holomorphic-analytic}`. (ours; standard)
- `bpP:p1:period-convert`: conversion between CP's angles of period `2 pi` (`T^n = R^n/2 pi Z^n`, CP10 fn. 1 p. 546, CP09 Thm 3 p. 6) and the frozen period-one parameter, and `w = omega_phys/2 pi`;
  from `phi_omega` on `T^n` to `K` with `K(theta + k) = K(theta) + shift(k_f)` (`bpP:p0:cyltorus`, items (iii)-(iv)); from CP's `Omega`-torus to the physical period-one torus. (ours)
- `bpP:p1:diophantine-convert`: two-scale Diophantine conditions (CP10 (19), p. 551) imply `bpP:p0:diophantine` with `tau > a + b`; `(gamma,tau)`-Diophantine with `tau > d - 1` (the `IsPhysicalTorus` form) from CP09's condition. Cites `\Kref{bp:p0:diophantine}`.
- `bpP:p1:measure-symplectic`: symplectic diffeomorphisms preserve Lebesgue measure (Liouville; `\Kref{bp:p1:lip-image}`, `\Kref{bp:p1:lipeo}`); union of whole tori is measurable (images of compact sets under Lipschitz maps).
- `bpP:p1:ode`: **cite, do not repeat**, track N's Hamiltonian ODE infrastructure `bpN:p3:local-exist`, `bpN:p3:uniqueness-closed`, `bpN:p3:continuation`. Needed here only for: a torus orbit is a solution of the
  Newton/fixed-center equations (chain rule, no existence theory) and uniqueness statements. If bpN p3 slips, P needs only the chain-rule parts.
Shared with I and N: the transport lemma and the ODE part. Writer: one agent; can start at once.

### Part 2: Averaging with two frequency scales (`p2-averaging.tex`)

- `bpP:p2:averaging`: CP10 Prop. 1 (p. 552) in its two-scale form, proved in App. A (Lemma A.1, p. 564; iterative lemma [4, Lemma A.5], cited by CP10 and NOT pinned: the proof must be reconstructed, `\sourcegap`). `H = h + f` analytic on `W_{v,s+s'}`, non-resonance `alpha_1` (k_1 != 0), `alpha_2` (k_1 = 0), smallness `E < alpha_2 d/(2^7 c_m K s)`; conclusion: symplectic `Psi` with `H o Psi = h + g + f_*`, `|f_*| <= e^{-K s/6} E`.
- Uses `\Kref{bp:p1:cohomological}` (cohomological equation), `\Kref{bp:p1:cauchy-open}`, `\Kref{bp:p1:cauchy-strip}`, `\Kref{bp:p1:decay}`, `\Kref{bp:p1:summation}`, `\Kref{bp:p1:iteration}`.
- Shared with N: `bpN:p4:*` (weighted norms, Poisson bracket estimate), `bpN:p5:*` (time-one flows of Hamiltonian fields), `bpN:p6:homological`. **CP10's Lemma A.1 has two scales `alpha_1 >= alpha_2` and a lattice `Lambda`; Pos93's Iterative Lemma has one scale. Decision for the sub-orchestrator:** either derive Lemma A.1 from Pos93's lemma in the (unequal-scale) form with `alpha = alpha_2` (loses nothing needed for Thm 1.3 because Step 1 of §4, p. 563, takes `alpha_1 = alpha_2`, `Lambda = {0}`, `r_p = r_q = 0`), which then lets P use `bpN:p6:iterative` directly; this is the plan of record. Then only the case `alpha_1 = alpha_2`, `l_2 = 0` is needed in P2 and the part shrinks to about 8 pages.
- `bpP:p2:averaged-remainder`: the use in CP10 §4 Step 1 (p. 563): `P` is averaged up to `O(mu^5)` with `K = (30/s_0) log(1/rho)`, domain shrinking, estimates (61)-(63).

### Part 3: Two-scale KAM theorem (`p3-two-scale-kam.tex`)

- `bpP:p3:two-scale-kam`: CP10 Prop. 3 (pp. 554-555): `H = h(J) + f(J, psi)` analytic, `omega_0 = dh` a diffeomorphism with nonsingular Hessian `U` and block bounds `M, M_hat, M_bar`; KAM condition `c_hat E_hat < 1`; conclusion: a Lipschitz one-to-one family `phi_omega` of analytic Lagrangian tori for `omega in omega_0(D) cap D_{gamma_1,gamma_2,tau_*}`, measure of the complement (34), estimates (35).
- Proof (CP10 App. B, pp. 565-573): iterative lemma `bpP:p3:iterative` (Lemma B.1, p. 565, inductive theorem as Arnold [3, p. 144]), Lemma B.2 (p. 568, injectivity of the new frequency map), limit actions (Step 1 p. 570), `phi_omega` (Step 2), Lagrangian/invariance (Step 3), measure (Step 4, p. 573; Kirszbraun/McShane: `\Kref{bp:p1:mcshane}`).
- **Decision (records the alternative and why it is rejected).** Track K's a-posteriori Theorem G1 (`\Kref{bp:p2:g1}`) and its measure machinery (`\Kref{bp:p4:main-measure}`) cannot replace Prop. 3:
  G1 needs `|<T>^{-1}| <= sigma_T - mu` uniformly, but for the properly degenerate Hessian `h_II = diag(H_0'', mu beta)` the inverse torsion is of order `1/mu`; rescaling the slow actions by `mu` makes the symplectic structure
  non-uniform; and the sharp relation `mu < r^6/(log 1/r)^c` of P-G is lost if one pays `gamma^{-4}` with `gamma ~ mu` (`bpP:p0:pg`, hypothesis on `C1 e/(gamma^4 rho^{4 tau}) < 1` of G1). The plan is to re-prove Prop. 3 (Arnold-type Newton scheme in the frequency-map form), reusing from K only `\Kref{bp:p1:cohomological}`, `\Kref{bp:p1:cauchy-strip}`, `\Kref{bp:p1:holomorphic-inverse}`, `\Kref{bp:p1:uniform-limits}`, `\Kref{bp:p1:iteration}` and the Lipschitz-measure lemmas.
- Sizes: Lemma B.1 and its proof are the longest single item in track P (CP10 pp. 565-568, 15 pages of dense estimates). Split into `p3a` (statement and constants (30)-(32), iterative lemma) and `p3b` (limit, Lipschitz, measure) if it exceeds 25 pages.
- `\sourcegap`: Prop. 3 is "not available in literature" (CP10 p. 550, (vi)); its printed proof is the only source. The constants `c_hat, K, rho_hat, L, E_hat` must be recomputed in the blueprint, not copied.

### Part 4: Measure estimates for P-G (`p4-pg-measure.tex`)

- `bpP:p4:lemma-3-1`: CP10 Lemma 3.1 (p. 562), proof App. C (pp. 574-578): covering of the frequency image by `U = cup_{I_1} B_{R_1}(0) x B_{R_2}(omega_0^{(2)}(I_1))`, Lipschitz inverse of `omega_0` (needs `HasFastDiffeo` on `W`: `bpP:p0:fastdiffeo`), and the estimate of the measure of the non-Diophantine set in two scales (Pyartli-type count, CP10 fn. 10 p. 549).
- `bpP:p4:two-scale-diophantine-measure`: the two-scale analogue of `\Kref{bp:p0:g3}`; counting lemmas `\Kref{bp:p4:lattice-sum}`, `\Kref{bp:p4:slab}`, `\Kref{bp:p4:preimage-measure}`, `\Kref{bp:p4:cover-mono}`, `\Kref{bp:p4:dyadic-approx}`.
- `bpP:p4:collar`: the two-sided boundary collar estimate: use hypothesis `hboundary` (`bpP:p0:pg`) in place of CP10 p. 561's unproved "outer boundary estimate" (audit P3, D-PG-5). Relative collar volume `<= A t/meas V`.
- `bpP:p4:disc-measure`: product-of-discs volume `meas(C_r cell) = (2 pi)^a meas(V) (pi r^2)^b`, and the shell `{2 c_1 r^{5/2} < p_j^2+q_j^2 < ...}`, the "action-angle on discs" integration; the proof that removing the singular shells costs `C sqrt r`.

### Part 5: P-G assembly (`p5-pg-assembly.tex`)

- `bpP:p5:uniform-remainder`: from (H1), (H2), (H4) of `bpP:p0:pg` (joint analyticity, periodicity, `HasBirkhoff`): `P_av` is jointly analytic in `(mu, I, p, q)` near the compact `[0,mu_0] x cl V x {0}`; its jet of order 4 at `(p,q) = 0` has the Birkhoff form; hence `|P_av - N| <= C |(p,q)|^5` uniformly (CP10 (60), p. 562), and `beta`, `Omega` extend continuously to `cl V` with `|det beta| >= B`. (`\sourcegap`: the source asserts (60) without derivation.)
- `bpP:p5:domain-reduction`: from the hypotheses to the setting of CP10 §4 (p. 562): analytic extension of `H` to a neighbourhood `V_{rho_0} x T_{s_0} x B_{eps_0}`, `omega_0` a diffeomorphism of `V_{rho_0}` with bounded inverse Jacobian (58) (p. 562), normalization `|P|_{rho_0,eps_0,s_0} = 1` (rescale `mu`), fundamental cell, `r_* < min(r_0, 1)`.
- `bpP:p5:kam-application`: Steps 1-2 of CP10 §4 (pp. 562-564): averaging (Part 2), then the two-scale KAM (Part 3) with the parameters (61), `gamma_bar >= ...`; conversion of the torus family to `IsCylinderTorus` (`bpP:p1:period-convert`, action-angle map from oscillator discs back to `(p, q)`, analytic away from `p_j^2 + q_j^2 = 0`), whole tori in `S`, `Set.range K <= S`, frequency bounds `|w_f| <= C`, `|w_s| <= C mu`.
- `bpP:p5:measure`: lower bound `(1 - C sqrt r) meas F` from Part 4 and the CP10 inequality `meas(P_{sqrt(2 c_2) r} \ K_*) <= C(gamma_bar + gamma_1 + r^2 + ...)` (p. 564); passage from `P` to the cell `F(V, r)` and to the frozen disc radius `r` (CP10 renames the radius: `sqrt(2 c_2) eps -> r`).
- `bpP:p5:strictness`: **strict upper bound `meas(S cap F) < meas F`**: delete the tori `T_b` for `b` in a small positive-measure subset of the parameter set (the map `(b, xi) -> X_0(b, xi)` is bi-Lipschitz, CP09 Thm 3 (ii), CP10 Prop. 3); the lower bound has slack by the strict inequality. Also `0 < meas(S cap F)`. (ours; not in CP10/CP11.)
Shared: none beyond P1.

### Part 6: Newtonian models and physical reconstruction (`p6-newtonian-models.tex`)

- `bpP:p6:reduction`: the reduced Hamiltonians `H_mov`, `H_fix` and their Hamilton equations; derivation of `bpP:p0:movham` from the barycentric Hamiltonian (Fej04r (28), pp. 46-47; Fej07e p. 3 mass-index erratum): `H_mov - H_fix|_{eps=mu} = mu |sum p_i|^2/(2 m_0)`.
- `bpP:p6:reconstruction`: for an `H_mov`-orbit `(q(t), p(t))`, the barycentric `x_i, v_i` of `bpP:p0:barycentric` satisfy `x_i' = v_i` and the Newton equations (`bpP:p0:newton`) for all times, with the actual masses; for an `H_fix`-orbit the fixed-center equations (`bpP:p0:fixedsol`). Uses `\Kref{bp:p2:hamiltonian}`-type chain rule only.
- `bpP:p6:tube-geometry`: if `z` is in `U_eta` with `eta < min(a_i, a_{i+1} - a_i)/4`, then `|q^{(i)}| in [a_i - eta, a_i + eta]`, `|q^{(i)} - q^{(j)}| >= |a_j - a_i| - 2 eta`, upper bound `D`, barycentric Sun displacement `|x_0| <= mu C`, so `PairBounds d D` holds uniformly in `mu < mu_0` and NoColl holds. Choice of `d, D` before `mu`.
- `bpP:p6:measure-positive`: `0 < meas S < inf` from a torus family of positive measure inside the tube (`S` bounded).
Shared with track I (Newton equations, collision exclusion for the restricted three-body problem), with N (the P-AMD helpers later). Place Part 6 content once, in the shared tracks' Newtonian part if track I writes it first (bpI Newtonian/collision part): the sub-orchestrator should assign one owner.

### Part 7: Kepler problem and Poincare coordinates (`p7-kepler-poincare.tex`)

- `bpP:p7:kepler`: planar Kepler problem for mass `m`, centre mass `G m_0`: energy, angular momentum, Kepler's equation, circular orbits; Kepler energy identity and the virial/mean values `<|p|^2> = m^2 G m_0 / a`, `<1/|q|>`.
- `bpP:p7:poincare`: analytic symplectic Poincare chart `(lambda, Lambda, xi, eta)` on a neighbourhood of the circular prograde torus, with `Lambda = m sqrt(G m_0 a)`, `H_Kep = -G^2 m_0^2 m^3/(2 Lambda^2)`, analytic at `e = 0` (Fej04r Thm 62, p. 48, citing Poincare [Poin05] and Chenciner [Che88], NOT pinned: `\sourcegap`; plan: explicit algebraic formulas of the kind in the D22 draft (LP17), with Kepler's equation solved analytically near `e = 0`, rather than quoting the unpinned proof). The Erratum's normalization `r_j = xi_j + i eta_j = sqrt(2 Lambda_j) sqrt(1 - sqrt(1 - e_j^2)) e^{i(g_j + theta_j)}` (Fej07e p. 3) fixes `Omega = 2 sigma` later.
- `bpP:p7:product-chart`: `n` independent planar charts; the chart for the fixed-center and the moving-Sun problem at zero coupling is the same (planet mass `m_i`, centre mass `m_0`): this is why `H_mov = h + mu f` and `H_fix = h + eps f'` with `f, f'` independent of the coupling.
Shared with **track I** (Delaunay/Poincare coordinates for the restricted problem): ask bpI's plan for the label of its planar Kepler/Delaunay part; P needs the chart analytic through `e = 0` (Poincare, not Delaunay), so P7 should be placed first and I should cite it, or vice versa.

### Part 8: Averaged perturbation and the secular quadratic form (`p8-secular-form.tex`)

- `bpP:p8:perturbation-analytic`: in the chart, the planet-planet interaction `-G m_i m_j/|q_i - q_j|` is analytic near the circular torus when `a_i != a_j` (non-collision of ellipses; Fej04r p. 49, "the Keplerian ellipses do not intersect"); the average over `lambda` is analytic.
- `bpP:p8:evenness`: `<f>` is even in `(xi, eta, p, q)`, so the origin is a critical point (Fej04r p. 50). In the planar problem only `(xi, eta)`.
- `bpP:p8:lemma64`: `average_lambda (Y_j . Y_k) = 0`, `j != k` (Fej04r Lemma 64, p. 49-50; Fubini, `Y_j = (dX_j/dt)`). Hence the indirect kinetic term of `H_mov` contributes only `mu sum |p_i|^2/(2 m_0)`, whose `lambda`-average is a function of the actions alone (`m_i^2 G m_0/a_i` by the virial identity, `bpP:p7:kepler`).
- `bpP:p8:laplace`: Laplace coefficients `b_s^{(k)}(alpha)` (Fej04r Def. 66, p. 50); **local** holomorphy on `|alpha| < 1` directly from the Fourier/binomial series (P6; Lemma 76 as printed is false: `b_{1/2}^{(0)}` has a logarithmic, not polar, singularity at `alpha = 1`, E-P-Fej04r-2).
- `bpP:p8:quadratic-form`: derivation of `Q_h` from `H_dir` (Fej04r (36)-(37), pp. 50-51) with the P5 corrections: in decreasing axis order `a_1 > ... > a_n`,
  `q_jj = -sum_{k<j} m_j m_k a_j b_{3/2}^{(1)}(a_j/a_k)/(2 a_k^2) - sum_{k>j} m_j m_k a_k b_{3/2}^{(1)}(a_k/a_j)/(2 a_j^2)`, `q_jk = m_j m_k a_k b_{3/2}^{(2)}(a_k/a_j)/(2 a_j^2)` (`j < k`), `q_kj = q_jk` after `Delta = diag(sqrt Lambda_j)` (printed p. 55 repeats `m_k m_k` twice and drops a factor 2: E-P-Fej04r-1). The labels run in Fejoz's decreasing order; Lean's increasing order requires reversal.
- `bpP:p8:identification` (the P7 obligation `fixedCenterSecularIdentification`): in the zero-coupling chart, `<H_mov>` and `<H_fix>` have the same `xi,eta`-quadratic form `Q_h` (hence the same `Omega`) and the same `h`; they differ by `mu G sum m_i^2/(2 a_i)`, an action-only function. This is the single step that separates P-FIXED from P-PLANAR. **Unresolved:** the source gives only the plan (statement.md, item 4); it is our own computation.
Shared with I: the averaging of a planar interaction in Poincare/Delaunay variables (I's R3BP secular term) uses the same Laplace-coefficient machinery.

### Part 9: Spectrum of the secular matrix (`p9-secular-spectrum.tex`)

- `bpP:p9:lemmas-70-72`: Fej04r Lemmas 70, 71, Cor. 72 (pp. 53-54): eigenvalue perturbation of `Diag(delta) + epsilon A` with simple/zero entries. Pure linear algebra.
- `bpP:p9:definite`: Prop. 73 (pp. 54-55): `Q_h` negative definite, via Lemma 74 (sign of `b_{3/2}^{(1)}`) and Lemma 75 (Hadamard). Source remark: the sign convention of the Newtonian potential.
- `bpP:p9:diagonalize`: `rho_h in SO(n)`, the symplectic rotation `(xi, eta) -> (rho_h xi, rho_h eta)`, `Omega_j = 2 sigma_j` (CP09 uses `Omega_j (u_j^2 + v_j^2)/2`, Fej04r `sigma_j(xi_j^2 + eta_j^2)`, P7 item 3). Records the coordinate permutation and normalization.
Can be written as soon as the statements of Part 8 are fixed (parallel with Part 8).

### Part 10: R-nondegeneracy of the planetary frequency map (`p10-nondegeneracy.tex`)

- `bpP:p10:asymptotics`: Fej04r Formula 69 (p. 52) with the Laplace asymptotics as `a_k/a_j -> 0`; the `n = 2` computation (p. 57, (41)): `sigma_{1,2} = -m_1 m_2 (3/8)(a_2/a_1^3) Lambda_{1,2}^{-1} (1 + O(sqrt a_2))`.
- `bpP:p10:n2-nondegenerate`: for `n = 2`: `(nu_1, nu_2, 2 sigma_1, 2 sigma_2)` satisfies no linear relation on any open patch (so is R-nondegenerate in the sense of CP09 Def. 1, p. 5). **Plan: prove it without a universal cover by the symmetric-product trick** (ours; to be vetted by the audit): for `c in R^4`, `F(a) = prod_{pi in S_2} (c_1 nu_1 + c_2 nu_2 + c_3 sigma_{pi 1} + c_4 sigma_{pi 2})` is a polynomial in the coefficients of the characteristic polynomial, hence single-valued analytic on the connected domain of Part 8; if the relation held on a real patch, `F = 0` there, hence everywhere by the identity theorem, hence one of the finitely many factors vanishes on an open subset of the asymptotic region, contradicting (41). This replaces Fej04r's universal cover of `A^C_s` (whose simple connectedness is false as printed: E-P-Fej04r-2, P6) and the `exp` chart `L = {Re l_1 > ... > Re l_n, |Im l_j| < pi/4}` of statement.md item 2; both options are recorded, the sub-orchestrator should choose after the statement audit.
- `bpP:p10:induction`: general `n`: Fej04r Prop. 77 induction (pp. 57-58, "par un raisonnement analogue"): let `a_n -> 0`, `Q_h = (Q_hat_h + O(a_n^{5/2}), O(a_n^{5/2}); ..., b_nn)`, Cor. 72 gives `sigma_n != 0 -> 0`; transfer the linear relation to the `(n-1)`-body limit. **`\sourcegap`:** the induction step is not written in the source (neither the scales of `nu_n ~ a_n^{-3/2}` against `sigma_n`, nor the transfer of the relation are shown). Needed only for P-FIXED with `n >= 3`; P-PLANAR (`n = 2`) needs only the base case.
- `bpP:p10:patch`: from analytic nonplanarity on a connected domain to the existence, in every neighbourhood of the given axes `a` (strictly ordered), of an open real patch where the eigenvalues are distinct and analytic and the frequency map is R-nondegenerate (a dense open full-measure set `U`, Prop. 77's statement).
- `bpP:p10:russmann-index`: R-nondegenerate implies the existence of `mu_0, beta` of CP09 Lemma 1 / (3), p. 5 (Russmann's Lemma 18.2, unpinned).

### Part 11: The analytic weakly nondegenerate KAM gate (`p11-weak-kam-gate.tex`)

- `bpP:p11:russmann`: CP09 Theorem 3 (Russmann 2001, pp. 6-7; quoted from Russmann [16, Theorem 1.7, p. 127], **not pinned and not proved in CP09**).
- `bpP:p11:properly-degenerate`: CP09 Theorem 4 (p. 8; proof §2.3, Prop. 1 and 2 pp. 17-20, Lemma 8): `H_eps = h(I) + eps f`, `f = f_0 + f_1`, `<f_1> = 0`, `f_0 = f_00(I) + sum Omega_j (u_j^2 + v_j^2)/2 + O(3)`; R-nondegenerate `(nabla h, Omega)` implies a positive-measure set of analytic Lagrangian invariant tori with Diophantine flow, close to `T^{d+p}_{I,w}`, `w_j = O(eps)`.
- **Flagged gaps (largest of the track).** (i) The source of Theorem 3 (Russmann) is not in the pinned sources: either acquire and pin Russmann (Regul. Chaotic Dyn. 6 (2001)) or a pinned quantitative replacement (Pyartli-type measure plus an analytic KAM theorem under Russmann nondegeneracy); a Lean proof of Russmann's theorem is a research-scale item (25-40 pages plus Lean). (ii) Theorem 4's printed statement has no explicit `eps_0`, no uniformity in `h`, and says only "close to"; P-PLANAR needs the tori inside the `eta`-tube `U_eta` (`bpP:p0:planar`) and measure-positivity, so Part 11 must state a quantitative closeness (`|K - T_{I,w}| <= delta` for `eps <= eps_0(delta)`), extracted from Thm 3 (i) "close to the identity" and Lemma 8: a `\sourcegap`. (iii) Theorem 4 has no `eps`-dependence of `f`; the plan uses the `eps`-independent `f` of `bpP:p7:product-chart` (the printed CP09 proof for the planetary problem uses `eps`-dependent `H^i`, "regular and non influential", CP09 p. 22, which is NOT used).
- **Fallback gate for P-PLANAR (n = 2) only, via P-G.** P-G itself (frozen) can supply the planar theorem if the planar secular Hamiltonian is put in Birkhoff form at order 4 and `det beta != 0` at some axes (then on an open dense set by analyticity); this avoids Russmann but needs a quartic Birkhoff computation (Arnold 1963, p. 138; the original is not pinned, CP11 p. 34 fn. 53 reports an erratum; CP11 §§8-10 treat the spatial case and do not contain the planar `n = 2` computation as a theorem), nonresonance of `Omega` up to order 4 (CP10 Prop. 2, p. 553) and the continuity needed to apply P-G with its disc/neighbourhood/collar premises on a patch. It is a genuinely different obligation, not claimed to follow from the weak route.
- **If a prover team writes Part 11 as a conditional theorem, it must carry a distinct name (`bpP:p11:*` conditional), never stand in for CP09 Theorem 4 (hard rule 6).**
Shared with N (Lie series for the averaging step `bpN:p5:*`, `bpN:p6:*`), K p1.

### Part 12: P-PLANAR assembly (`p12-planar-assembly.tex`)

- `bpP:p12:hamiltonian-form`: in the chart, `H_mov o Phi = h(Lambda) + mu f`, `f` analytic, `f = f_0 + f_1`, the pair `(h, f_0)` verifying CP09 Theorem 4's (7)-(8) with `d = p = 2`; `Omega = 2 sigma` (Part 9).
- `bpP:p12:choose-patch`: choose an open real patch of axes `a'` within `eta/2` of the given `a` in the good set of Prop. 77 (Part 10) and a compact ball `K` of actions; the thresholds `(mu_0, d, D)` are chosen from the `eps_0` of Part 11 and Part 6.
- `bpP:p12:transport`: apply Part 1's transport lemma to the chart `Phi: (lambda, Lambda, xi, eta) -> (q, p)`; period conversions; `IsPhysicalTorus` clauses (i)-(viii); `0 < meas S < inf` (Liouville for `Phi`, `S` bounded in the tube).
- `bpP:p12:physical`: NoCollision, Newton solutions (Part 6), PairBounds with `d, D` independent of `mu`, `S subset U_eta`.
- `bpP:p12:quantifiers`: verification of the quantifier order of `bpP:p0:planar`: `mu_0, d, D` after `(G, m_0, m, a, eta)` and before `mu`.
Depends on the unresolved gaps of Part 11 (ii).

### Part 13: P-FIXED assembly (`p13-fixed-assembly.tex`)

- `bpP:p13:fixed-hamiltonian-form`: `H_fix o Phi = h + eps f'`, `f'` the direct interaction; the same `(h, Q_h)`, hence the same `Omega` and R-nondegeneracy by `bpP:p8:identification`.
- `bpP:p13:assembly`: as Part 12, with the fixed-center equations (`bpP:p0:fixedsol`), the Sun at the constant origin as point `0` of the pair bounds, general `n >= 2`, tori of dimension `2n`.
- `bpP:p13:n-general`: depends on `bpP:p10:induction` (source gap) for `n >= 3`.

### Part 14 (reserved): the D22 additions

P-EXP-SAFE, P-AMD-CONFINEMENT, P-SECULAR-BOX (draft v0.3, `docs/tracks/P/statement.md`, "Additions (D22)"; `.drafts/P/Additions.lean`), after the statement audit and the
owner's freeze. They reuse: Part 6 (physical reconstruction), Part 7 (explicit Kepler orbit maps `q_i(F), p_i(F)` and the mean-longitude average, `bpP:p7:kepler`), the stopped Nekhoroshev estimate of track N
(`N-PARTIAL-CONVEX`, bridging to `StoppedActionBound`), `bpN:p3:*` (ODE continuation, collision-free compact regions). Do not start before the freeze.

## Shared infrastructure to place once (for the sub-orchestrator)

| Item | Where in P | Shared with | Suggested owner |
|---|---|---|---|
| Hamiltonian ODE existence/uniqueness/continuation | P1 (cites) | N p3 (planned `bpN:p3:*`), I | N p3; P and I cite |
| Lie series / time-one flows, Hamiltonian averaging, weighted norms, homological equation | P2 | N p4-p6 (`bpN:p4:*`, `bpN:p5:*`, `bpN:p6:*`) | N; P adds only the two-scale remark |
| Symplectic transport of tori, period conversions | P1 | I (isoenergetic tori), K p4 (real tori) | one of P1 / bpI; P plan of record is P1 |
| Newtonian n-body Hamiltonians, barycentric reduction, collision exclusion | P6 | I (planar R3BP, Newton eqs) | I Newtonian part if it exists first; else P6 |
| Kepler problem, Delaunay/Poincare coordinates, Kepler's equation | P7 | I (Delaunay for R3BP), D22 P-SECULAR-BOX | single Kepler/coordinates part; P7 needs analyticity at `e = 0` |
| Averaging over mean longitude, Laplace coefficients, secular Hamiltonian | P8 | I (R3BP secular term, bordered torsion) | P8 |
| Rotation-invariance (angular momentum) | P8, D22 | I | whoever writes the first |
| Two-scale Diophantine measure | P4 | K p4 (single scale) | P4 |

## What can be written in parallel

Wave 1 (start immediately, independent): P1, P6, P7, P9 (statements fixed by Part 0 and the planned P8 statements), P2 (after deciding the N-based variant), P3.
Wave 2: P4 (needs P3's statement only), P8 (needs P6, P7 statements), P10 (needs P8/P9 statements).
Wave 3: P5 (P2, P3, P4), P11 (independent of P8-P10 but gated by a source decision), P12/P13.
Part 14 after the D22 freeze. Within Wave 1, P3 is the critical path for P-G (about 24 pages) and P11 for P-PLANAR/P-FIXED.

## Frozen statements whose route still has an unresolved mathematical gap

1. **P-PLANAR and P-FIXED: the analytic weak-nondegeneracy gate (Part 11).** Russmann's theorem (CP09 Thm 3) is cited, not pinned and not proved; CP09 Thm 4 has no quantitative closeness statement and is stated without `eps`-dependence of `f`. Both are required for the frozen conclusions (`S subset U_eta`). Largest gap.
2. **P-FIXED: the secular identification (`bpP:p8:identification`) and the general-`n` induction (`bpP:p10:induction`).** The identification is our own computation; the source induction is not written out.
3. **P-PLANAR/P-FIXED: continuation of eigenvalue branches (`bpP:p10:n2-nondegenerate`).** Fej04r Lemma 76 is false as printed and the printed topology of `A^C` is wrong; the symmetric-product proposal is ours and needs audit.
4. **P-G: Prop. 3 (two-scale KAM) is not in the literature other than in CP10's own appendix; Lemma A.1's iterative lemma [4, Lemma A.5] is not pinned; uniform `O(r^5)` remainder (CP10 (60)) and strictness of `meas(S cap F) < meas F` are not proved in the source.** The P-G statement itself looks true as written (all additional premises of audit P1-P4 are used: `W` for the inverse Jacobian, the collar for the boundary term); no frozen statement was found false.
5. **Spatial claims and everything D22 are out of scope here (Part 14 reserved).**

## Suspected source defects found while reading (for the errata ledger; not edited)

- Fej04r Lemma 76, p. 55-56: "meromorphes sur la sphere de Riemann ayant pour points singuliers les quatre poles 0, +-1, infinity" (already E-P-Fej04r-2).
- Fej04r p. 55: `A^C = {|a_k/a_j| < 1, Re(a_k/a_j) > 0}` is called simply connected; the loop `a -> e^{it} a` projects to winding one in `C^*` (already P6).
- CP09 p. 22 (48): `H^0 = F_Kep` has `epsilon`-dependent `mu_j, M_j`, but Theorem 4 (7)-(8) is stated for `h(I)` and `f` independent of `epsilon`; the planetary application needs the `epsilon`-dependent version, which is not stated (cf. statement.md item 4). Our route avoids it by using the zero-coupling chart.
- CP10 p. 562, (60): `sup |P~_av| <= C eps^5` is asserted from (A2'') (a little-o statement) without the uniformity/analyticity argument (our Part 5 supplies it).
- CP11 Thm 11.1 / CP10 Thm 1.3, (12): `meas P > meas K` is asserted without proof of strictness (our `bpP:p5:strictness`).
