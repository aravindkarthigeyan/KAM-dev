# Review of Part 3 (local uniqueness for flows, G2): review 1

- **Reviewed file:** `blueprint/parts/p3-uniqueness.tex` (829 lines, sha256 prefix `10cba0614ba0e9ee`), 2026-10-27 16:03Z.
- **Context read:** `p0-conventions.tex` (`632560b61e0bf9df`), `p1-analysis.tex` (`54980dea7a65ffe0`), `preamble.tex`;
  frozen `KAM/Frozen/Theorems/LocalUniquenessFlow.lean` (`feb376ef6701b353`) and the frozen definitions
  `gramMatrix`, `normalFrame`, `torsion`, `torsionAverage`, `invarianceError`, `hamiltonianVectorFieldℂ`,
  `IsPrimaryOnStrip`, `IsRealOnReals`, `complexStrip`, `IsDiophantine`, `dotℂ`, `omegaZero`;
  GJLV05 (Thm 2, Rem. 1, Rem. 7, Prop. 8, Rem. 13, §6, Prop. 18, Lemmas 19–20); HL19 (§2.2, §2.4–2.5, Rem. 3.5,
  Lemmas 4.3, 4.6, 4.10, 5.1, (4.12)); FdlLS09 (Def. 2.1, Thm 3.14).
- **Build:** `latexmk -pdf -outdir=.build/review-p3 blueprint.tex` succeeded. Part 3 has no undefined references;
  the only undefined references come from Part 2. Part 3 has two overfull boxes (finding F7).
- **Reviewer stance:** refute-first. I recomputed every identity and constant by hand. I also checked the frame
  algebra numerically on random complex data, and checked exact reducibility, the Lagrangian property and
  $T=BL^\top X_N=N^\top\Omega_0X_N$ numerically on a non-trivial exact invariant torus: a primary torus
  $K(\theta)=(\theta+\nabla G(\nabla S(\theta)),\nabla S(\theta))$ of the conjugated Hamiltonian
  $h=h_0\circ\Phi_1^{-1}\circ\Phi_2^{-1}$, with $\omega=(1,\sqrt2)$, $B\ne I$ and non-constant $T$. The scripts are in
  the session scratchpad and are not part of the deliverable.

## Verdict: ACCEPT WITH FIXES

The proof of Theorem G2 is complete and correct as a mathematical proof of exactly the frozen statement. I found
no blocking or major finding.

- **Quantifier order.** $c$ is chosen after $n,\tau,\rho,M,\sigma_K,\sigma_B,\sigma_T,\mu$ and does not depend on
  $\gamma$.
- **Closeness hypothesis.** It is used exactly as $\sup_{T_\rho}\abs{K_1-K_2}\le c\gamma^2\rho^{2\tau}$ on the
  open strip.
- **Conclusion.** The phase $\varphi=-\psi$ is real, and $K_2=K_1(\cdot+\varphi)$ on the open strip $T_{\rho/2}$.

Every fix below is editorial or concerns bookkeeping across parts. Fix F1–F3 before the dependency graph is
built: they create duplicate or stale nodes and requests.

## Findings

| id | label / step | severity | finding | evidence | proposed fix |
|---|---|---|---|---|---|
| F1 | `bp:p3:periodic-bounded`, `bp:p3:increments`, `bp:p3:taylor`, `bp:p3:matrix-norms`(a), `step:p3:red-holomorphy`, `bp:p3:iteration`, `bp:p3:transfer` | minor (structure) | Part 1 now carries the transferred lemmas as `bp:p1:periodic-bounded`, `bp:p1:increments`, `bp:p1:taylor`, `bp:p1:matrix-norms`, `bp:p1:holomorphic-inverse`, `bp:p1:iteration` and `bp:p1:averages-real`. Part 3 still states, proves and cites its own copies, and §`bp:p3:transfer` still says they "could be moved". The pairs are not identical. `bp:p1:matrix-norms` lacks $\abs{\Omega_0A}=\abs A$, $\abs{A\Omega_0}=\abs A$ and the two block formulas used for $\abs P$ and $\abs{P^{-1}}$, and it restricts the transpose bound to $m'\le m$. `bp:p1:increments` is phrased with $\norm{Du}_{\rho-\delta}$ and a segment. `bp:p1:periodic-bounded` omits continuity on $\R^n$. The graph would get two nodes per fact. | p1-analysis.tex ll. 69–106 ("transferred from Part 3"); p1 l. 99 "(Proved as `bp:p3:iteration`…)"; p3 ll. 741–749. | Cite the Part 1 labels throughout Part 3 and keep the Part 3 proofs only as proofs of the Part 1 interface (or move them). Extend `bp:p1:matrix-norms` with the $\Omega_0$ and block facts; Part 2 request T1 asks for the same. Rewrite §`bp:p3:transfer` as "done". |
| F2 | `bp:p3:shared` (ll. 751–759) vs Part 2 | minor (structure) | Part 2 now proves its own copies of the same geometry for $E\ne0$: `bp:p2:frame-identities`, `bp:p2:exactness`, `bp:p2:geometry` and `bp:p2:frequency`. Its request Q6 says these give "the exact geometry needed in Part 3". Part 3 says the opposite: that Part 2 needs Part 3's `bp:p3:hamiltonian-symmetry`, `tangent-identities`, `frame-algebra`, and so on. Two independent proofs of the frame algebra, of $\avg{\Omega_K}=0$ and of $\gamma\le\abs\omega$ will become parallel graph nodes. | p2-aposteriori.tex §`bp:p2:sec-requests` (Q6), §`bp:p2:sec-transfer`; p3 ll. 751–759. | The orchestrator picks one canonical set of labels. The other part cites it, and §`bp:p3:shared` is updated to match. No mathematical conflict: the two frequency bounds agree ($\abs{BL^\top}\le2n\sigma_K\sigma_B\le C_P$). |
| F3 | `bp:p3:requests` (1), (2), (3), (5) | minor | Four of the requests are stale or already satisfied. **(1)** Part 0's G2 transcription now lists the $K_1$ hypotheses explicitly and no longer imports $\bar\gamma$ or G1's smallness condition. **(2)** `bp:p1:cohomological` already states uniqueness in the class "holomorphic and 1-periodic on $T_{\rho-\delta}$, zero average", with no boundedness. **(3)** `bp:p1:averages-real` now exists. **(5)** The preamble now has a `bpstep` counter, and the steps render as "Step 4.8" and so on, so `\ref` works. | p0 l. 141 ff.; p1 ll. 47–54, 108–111; preamble ll. 39–41; rendered p. 17. | Delete or close (1), (2), (3) and (5). Optionally use `bp:p1:averages-real` in `step:p3:tangent-average`, which removes the detour through $T_{\rho/2}$, and replace `\hyperref[...]{step "title"}` by `\ref`. |
| F4 | step numbering (preamble-level) | minor (readability) | The step counter is numbered per section, so step and lemma numbers collide. For example, "Step 4.10: Bound on $\omega$" sits inside the proof of "Lemma 4.10", and "Step 4.8" lives next to "Lemma 4.8". The source line after `bp:p3:reducibility` renders "HL19 … Lemma 4.10 with $E_{\rm red}=0$" on the same page as the blueprint's own Lemma 4.10. | Rendered pp. 17–18. | Give steps a distinct prefix (e.g. "Step S4.8") or number them per proof, and write "HL19, Lemma 4.10" in that source line. This is for the orchestrator, since the counter lives in the preamble. |
| F5 | `\source` after `bp:p3:reducibility` (l. 388); intro ll. 9–10 | minor | "GJLV05 Lemma 20, pp. 891–892 (another frame)" is inaccurate. GJLV05 §8.2, (105)–(106), use $M=(DK\ \ J\,DK\,N)$ with $N=(DK^\top DK)^{-1}$, and (102) gives $J\nabla H=(\nabla_yH,-\nabla_xH)$, so $J=-\Omega_0$. This is the same canonical frame, with normal columns of opposite sign, and their torsion $S$ (108) is the same object up to sign. | GJLV05 pp. 891–892, (102), (105)–(106), (108). | Write "(the same frame with $J=-\Omega_0$; normal columns of opposite sign)". The intro could cite GJLV05 §8.2 next to HL19 §2.4–2.5 as the flow frame. |
| F6 | `bp:p3:ledger` (4) | minor | The ledger classifies GJLV05 Remark 7 as an "erratum, imprecise claim". The mathematical point is right: the time-one map of a flow-Diophantine $\omega$ can be resonant, e.g. $\omega=(1,\sqrt2)$, $k=e_1$, $m=1$. But the remark only refers to [Dou82]'s reduction, and a time-$t$ reduction works. FdlLS09 Thm 3.15 states the flow corollary under a map-Diophantine hypothesis, which supports the deviation rather than an erratum. | GJLV05 p. 865 (Rem. 7), p. 857 (Rem. 1); FdlLS09 §3.4, Thm 3.15. | Reclassify as "clarification (no erratum)", or keep as CANDIDATE with the hedge "imprecise only for the literal time-one map". Keep the explanation. |
| F7 | `step:p3:lagrangian-unique`, `step:p3:frequency-omega` (source ll. 318–325, 335–339) | minor (typography) | Overfull hboxes of 9.4 pt and 30.6 pt. The inline inequalities "$\le 2n\sigma_K^2$" and "$\abs\omega=\abs{B(0)L(0)^\top L(0)\omega}\le$" run into the right margin on p. 17. | `.build/review-p3/blueprint.log` ("Overfull \hbox … lines 318--325 / 335--339"); rendered p. 17. | Display the two inequalities. |
| F8 | `\source` after `bp:p3:frame-algebra` (ll. 303–304) | nit | The page list "pp. 11–12, 25–26" omits p. 10, where (2.14) $P^\top\Omega P=\Omega_0$ and the triangular form appear. | HL19 p. 10. | Write "(2.14) p. 10". |
| F9 | `bp:p3:totality-check` (ll. 731–732) | nit | "Uses $n\ge2$ and $\tau\ge n-1$ only through $n\ge1$ and $\tau\ge0$" is true of Part 3's own reasoning. The cited Part 1 lemmas, however, are stated under Part 0's convention $n\ge2$ (they hold verbatim for $n\ge1$). For $n\ge2$ and $0\le\tau<n-1$ the hypotheses are vacuous ($\Dio_{\gamma,\tau}=\emptyset$). This is harmless and not a symptom of an error; see check 6 below. | p0 l. 8 ($n\ge2$ convention). | Add "(Part 1's lemmas hold verbatim for $n\ge1$)" or drop the remark's dimension clause. |
| F10 | `step:p3:tangent-average`, `step:p3:quad-normal-osc`, `step:p3:quad-normal-avg` | nit | `bp:p1:averages` is stated for one function $v$ with no codomain, and is applied to vector-valued $\xi^N,\xi^L$. It holds componentwise, trivially. | p1 ll. 51–54. | Add "componentwise for vector- and matrix-valued $v$" to `bp:p1:averages`, as `bp:p1:cohomological` already does. |
| F11 | `bp:p3:taylor` (Lean note) | nit | The proof bounds $D(DX_h)$ by $M$, while the frozen hypothesis bounds `‖iteratedFDeriv ℂ 2 (hamiltonianVectorFieldℂ h) z‖`. The two norms are equal: `norm_fderiv_iteratedFDeriv`, plus the isometry `iteratedFDeriv 1 ≅ fderiv` on the open set $\mathfrak B$. A formalizer must make this bridge. Part 2 (Q3) raises the same transcription point. | Frozen anchor l. 50; p3 ll. 156–161. | Add one sentence: "$\abs{D^2X_h}$ is the operator norm of the bilinear map (Lean `iteratedFDeriv`), equal to the norm of $D(DX_h)$". |
| F12 | Strategy (1), ll. 16–17 | nit | "Since $K_1$ is exactly invariant and $\omega$ is nonresonant, $K_1$ is Lagrangian" omits the third ingredient, $\avg{\Omega_{K_1}}=0$. That comes from exactness of $\omega_0$ and primarity (`bp:p3:tangent-identities`(c)), and the proof uses it. | p3 ll. 16–17 vs ll. 248–260, 311–324. | Write "exactly invariant, primary (so $\avg{\Omega_{K_1}}=0$) and $\omega$ nonresonant". |
| F13 | `step:p3:g2-iteration` vs Part 2 request Q2 | nit (forward compatibility) | Part 2 asks to replace `bp:p1:iteration` by a stronger form proportional to $y_0$. Part 3 needs only $y_m\to0$ under $Q2^py_0\le\frac12$. Part 3 stays valid under any replacement that implies the current conclusion, or at least $y_m\to0$ under the same hypothesis. | p2 Q2; p3 ll. 659–668, 720. | When `bp:p1:iteration` is unified, keep the hypothesis form $y_{m+1}\le Q2^{pm}y_m^2$, $Q2^py_0\le\frac12$. |

## Answers to the six checks in the brief

**1. Canonical Case III identities (bilinear transpose).** All are verified by hand, and numerically to rounding
error.

- **Frame algebra.** $B^\top=B$; $N^\top\Omega_0=B^\top L^\top\Omega_0^\top\Omega_0=BL^\top$;
  $N^\top\Omega_0L=I$; $L^\top\Omega_0N=-L^\top LB=-I$; $N^\top\Omega_0N=B\Omega_LB$.
- **Left inverse.** It equals $\left(\begin{smallmatrix}I&B\Omega_LB\\-\Omega_L&I\end{smallmatrix}\right)$, and
  $-\Omega_0P^\top\Omega_0=\left(\begin{smallmatrix}N^\top\Omega_0\\-L^\top\Omega_0\end{smallmatrix}\right)$.
  When $\Omega_L=0$, $P^\top\Omega_0P=\Omega_0$.
- **Lagrangian property.** $DE=X_L$ uses the symmetry of $D^2K$. The formula for $\partial_\omega\Omega_K$ uses
  $DX_h^\top\Omega_0+\Omega_0DX_h=0$, which follows from $\Omega_0X_h=\nabla h$.
- **Primary-torus subtlety.** It is handled correctly. With $g_j=K^I\cdot\partial_jK^\theta$, which is 1-periodic
  because $K^\theta(\theta+k)=K^\theta(\theta)+k$, one has $\partial_ig_j-\partial_jg_i=(\Omega_K)_{ij}$; I
  rechecked the sign from $\Omega_0(a,b)=(-b,a)$. So $\avg{\Omega_K}=0$, and uniqueness for
  $\partial_\omega u=0$ gives $\Omega_{K_1}\equiv0$.
- **Exact reducibility.** $L^\top\Omega_0X_N=0$ follows from $\partial_\omega(L^\top\Omega_0N)=0$ and the
  symmetry. Then $X_N=LT$, and $DX_h(K_1)P-\partial_\omega P=(0\ LT)=P\Lambda$.
- **Torsion.** $T=BL^\top X_N$ equals the frozen `torsion`: the $(i,j)$ entry is
  $\mathrm{dot}_\C(N_i,\Omega_0X_{N,j})$, and `normalFrame` column $j$ is $\Omega_0LBe_j$. The identity is pure
  algebra and does not need $\Omega_L=0$.

**2. A priori bound.**

- $E_1(0)=0$ and $\abs{X_h}\le M$ at $K_1(0)\in\mathfrak B$ give $\abs{L(0)\omega}\le M$. Then
  $\abs\omega=\abs{BL^\top L\omega}\le2n\sigma_K\sigma_BM\le C_PM=\Gamma$.
- The Diophantine inequality at $k=e_1$ ($\abs{k}_1^\tau=1$, also with Lean's `rpow`) gives $\gamma\le\abs{\omega_1}$.
- The constants $C_P,\Gamma,C_{\rm tor},C^N,C^L,C_{\rm quad}$ and $c$ (eq. (6)) involve only
  $n,\tau,\rho,M,\sigma_K,\sigma_B,\sigma_T,\mu$ and $c(n,\tau)$. Since $c(n,\tau)$ is uniform in $\rho$ and
  $\delta$ (as stated in Part 1), $c$ does not depend on $\gamma$.
- $\gamma$ enters only through $\gamma\le\Gamma$ (the first two smallness conditions and (5)) and through the
  $\gamma^2$ of the hypothesis (third condition).

**3. Phase, difference equation, quadratic estimate, iteration.** All verified.

- **Phase.**
  - $\Phi:\R^n\to\R^n$ is real because $K_1$ and $K_2$ are real on reals, so $L$ and $B$ are real at real
    $\theta$.
  - The Lipschitz constant is $(2nC_P\eta/\rho)(1+2C_P\sigma_K)\le\frac12$ under (`eq:p3:phase-small`).
  - $\abs{\Phi(0)}\le C_P\eta$, so $\Phi$ maps the closed ball $Y$ of radius $2C_P\eta$ into itself, and Banach's
    theorem applies.
- **Difference equation.**
  - $\partial_\omega\Delta=DX_h(K_1)\Delta+R$ gives $\partial_\omega\xi=\Lambda\xi+q$.
  - $\abs q\le\frac12C_PM\abs\Delta^2$, by the Taylor bound on a segment inside $B_\mu(K_1(\theta))$.
  - The periodicity of $q^N$ and $g$ is derived from $\xi$, so the periodicity of $h$ and of $T$ is never needed.
- **Quadratic estimate.**
  - $\avg{\xi^N}$ is fixed by $\avg T^{-1}$, and $\avg{\xi^L}=0$ by the phase.
  - $C^N$, $C^L$ and $C_{\rm quad}$ recompute exactly as printed.
  - (5) $1\le\Gamma\rho^{\tau+n}\gamma^{-1}\delta^{-(\tau+n)}$ holds because $\delta<\rho$ and $\gamma\le\Gamma$.
  - The final exponent is $\gamma^{-2}\delta^{-2(\tau+n)}$.
- **Strip losses.**
  - $\rho\to3\rho/4$ costs $\rho/4$, for the Cauchy bound on $\partial_\omega N$, hence on $T$.
  - The iteration $\rho_m=(\frac12+2^{-m-2})\rho$ has $\delta_m=2^{-m-4}\rho$ and total loss
    $\sum(\rho_m-\rho_{m+1})=\rho/4$.
  - The total is exactly $\rho/2$, and $T_{\rho/2}\subset T_{\rho_m}$ for every $m$.
  - $Q2^py_0=C_{\rm quad}\gamma^{-2}(\rho/32)^{-2(\tau+n)}y_0\le\frac12$ follows from the third term of $c$.
- **Domains of definition.** Every function is used on a strip where it is defined and bounded:
  - $N$ on $T_\rho$ ($\sigma_K\sigma_B$);
  - $T$ on $T_{3\rho/4}$;
  - $\Delta,\xi,q$ on $T_\rho$ ($<\mu$, $C_P\mu$, $\frac12C_PM\mu^2$);
  - $W$ on $T_\rho$ ($\eta$);
  - $g$ on $T_{\rho'-\delta}\subset T_{3\rho/4}$.

**4. Lean totality.**

- `fderiv` is used only on the open sets $T_\rho$ and $\mathfrak B$, where the functions are complex
  differentiable. This includes the inner `fderiv` of $\theta'\mapsto$ `normalFrame` $K_1\,\theta'\,j$, which is
  holomorphic on $T_\rho$ by Cramer's rule.
- `(gramMatrix)⁻¹` is used only on $T_\rho$, where the determinant is a unit; in particular at $\theta=0$ and at
  real $\theta$.
- `torsionAverage` is an integral of a function continuous on $[0,1]^n$, by `bp:p3:torsion-bound`.
- $\avg T^{-1}$ is guarded by `IsUnit det`.
- All other averages are of continuous functions.
- Remaining Lean bridges: F11, plus the ($C^2$ via analyticity) step that differentiates $\theta\mapsto$
  `fderiv ℂ K θ ω`.

**5. Hypotheses beyond literal content; silent assumptions.** None found.

- Boundedness of $K_2$ is never used; only $W=K_2-K_1$ is bounded, by $\eta$. Analyticity up to the boundary is
  never used.
- $K_2(T_\rho)\subset\mathfrak B$ is indeed redundant: $K_2(\theta+\psi)\in B_{\mu}(K_1(\theta))$.
- $E_2=0$ is used only at points $\theta+\psi\in T_\rho$.
- The hypothesis norms match: operator norms on max norms, so $\abs{DK_1}$ is the max row sum of a $2n\times n$
  matrix, and $\abs{B}$, $\abs{\avg T^{-1}}$ are row sums, exactly the Lean `∑ j ‖·‖`.
- The ball $B_\mu$ is open, as in Lean's `Metric.ball`, and is used with the strict inequality
  $\norm\Delta_\rho\le\mu/2<\mu$.

**6. $n\ge1$, $\tau\ge0$ and the unused hypotheses.** Harmless.

- **Bound on $Dh$.** It is a G1 hypothesis.
- **Periodicity of $h$, $\Z^n$-invariance of $\mathfrak B$, realness of $h$.** Uniqueness takes place along
  $K_1$, and the needed periodicity comes from primarity of $K_1,K_2$. The phase is real because the tori are
  real on reals. The derivation of $\partial_\omega\xi^N=q^N$ avoids needing $q$ periodic.
- **$n\ge1$, $\tau\ge0$.** The only arithmetic input is $\gamma\le\abs{\omega_1}$ (needs $n\ge1$) and the
  cohomological lemma (needs $\tau\ge0$).
- None of this indicates an error; see F9 for wording.

## Source checks

All page and item citations were checked against the pinned PDFs.

- **GJLV05** (journal pages): Thm 2 p. 862; Rem. 7 p. 865; Prop. 8 pp. 875–876; Rem. 13 p. 876; §6 p. 883;
  (77) and Lemma 14 p. 884; "for any $0<\delta,\rho/2$" p. 885; Prop. 18 and Lemma 19 p. 889; Lemma 19(d) p. 890;
  Lemma 20 p. 891. All correct.
- **HL19** (arXiv pages): §2.2 p. 7; §2.4 and (2.14) p. 10 (F8); §2.5 pp. 11–12; Rem. 3.5 p. 18; Lemma 4.3
  p. 22; (4.12) p. 23; Lemma 4.6 p. 25; Rem. 4.7 p. 26; Lemma 4.10 p. 29; Lemma 5.1 pp. 31–32. All correct.

Ledger candidates:

- **(1) GJLV05 Lemma 14.** The quotes are verbatim. The gap is real: $\Psi(0)$ has norm up to
  $\norm{T}_\rho\norm{K_1-K_2}_\rho$, so $\Psi(\Theta)\subset\Theta$ is not shown, and $\Theta$ is open. The
  correction is the one used in `bp:p3:phase`. CONFIRMED as a CANDIDATE erratum.
- **(2) Phases constant.** Correct: (78) does not depend on the strip, and the contraction has a unique fixed
  point.
- **(3) GJLV05 Prop. 18 typos.** Both verbatim: $\partial v/\partial\theta_i$ under $\sum_j$, and
  $\norm v_\rho$ on the right side. CONFIRMED.
- **(4)** See F6.
- **(5)** Correct.
- **(6) FdlLS09 Def. 2.1.** Uses $\abs{\omega\cdot k-n}^{-1}\le\kappa\abs k^\nu$, so $\kappa^2\sim\gamma^{-2}$ is
  consistent; no new entry.
- **(7)(a)–(f)** are accurate. On (f), compare with F5: GJLV05's flow frame in §8 coincides with ours up to sign.

## Part 1 citations in Part 3

| # | where (line, step) | Part 1 lemma | use | within interface? |
|---|---|---|---|---|
| 1 | l. 144–145, proof of `bp:p3:increments` | `bp:p1:cauchy-strip` | $u$ holomorphic and bounded on $T_{\rho_1}$, $\delta=\rho_1-\rho_2\in(0,\rho_1)$, form $\norm{Du}_{\rho_1-\delta}\le n\delta^{-1}\norm u_{\rho_1}$; vector- or matrix-valued. Used downstream for $W$ (bound $\eta$) and $L$ (bound $\sigma_K$) from $T_\rho$ to $T_{\rho/2}$ in `step:p3:phase-derivatives`. | Yes |
| 2 | l. 404–405, `step:p3:torsion-bound-step` | `bp:p1:cauchy-strip` | $N$ matrix-valued, $\norm N_\rho\le\sigma_K\sigma_B$, $\delta=\rho/4$, per-coordinate form $\norm{\partial_{\theta_\ell}N}_{3\rho/4}\le4\sigma_K\sigma_B/\rho$. | Yes |
| 3 | l. 260, `step:p3:tangent-average` | `bp:p1:averages` | $g_j$ scalar, holomorphic and 1-periodic on $T_\rho$, bounded on $T_{\rho/2}$ via `bp:p3:periodic-bounded`; lemma applied on $T_{\rho/2}$. | Yes (could use `bp:p1:averages-real`; F3) |
| 4 | l. 321, `step:p3:lagrangian-unique` | `bp:p1:cohomological` | Uniqueness clause with $g=0$ on $T_\rho$ (bounded, periodic, zero average), $\gamma>0$, $\tau\ge0$, any $\delta\in(0,\rho)$, scalar entries of $\Omega_{K_1}$. | Yes. The uniqueness class has no boundedness as stated, and $\Omega_{K_1}$ is bounded anyway. |
| 5 | l. 588, `step:p3:quad-normal-osc` | `bp:p1:averages` | $\avg{\partial_\omega\xi^N}=0$, with $\xi^N$ vector-valued, holomorphic, bounded and periodic on $T_{\rho'}$. | Yes (componentwise; F10) |
| 6 | l. 590, `step:p3:quad-normal-osc` | `bp:p1:cohomological` | $g=q^N$ on $T_{\rho'}$: holomorphic, bounded, periodic (as $\partial_\omega\xi^N$), $\avg{q^N}=0$; loss $\delta<\rho'$; vector-valued in the max norm; uniqueness identifies $\tilde\xi^N$. | Yes |
| 7 | l. 599, `step:p3:quad-normal-avg` | `bp:p1:averages` | $\avg{\partial_\omega\xi^L}=0$, with $\xi^L$ bounded by $C_P\mu$ on $T_\rho$. | Yes (componentwise) |
| 8 | l. 628, `step:p3:quad-tangent` | `bp:p1:cohomological` | $g=\partial_\omega\xi^L=T\xi^N+q^L$ on $T_{\rho'-\delta}$: holomorphic, bounded, periodic, zero average; loss $\delta<\rho'-\delta$ because $\rho''>0$; uniqueness identifies $\xi^L$ on $T_{\rho''}$. | Yes |
| 9 | l. 99, (`eq:p3:constants`) | `bp:p1:cohomological` | $C_{\rm coh}=c(n,\tau)$. Requires the interface constant to be uniform in $\rho$ and $\delta$, as stated ("depend only on the displayed quantities"). | Yes |
| – | ll. 745, 769, 774 | `bp:p1:cauchy-strip`, `bp:p1:cohomological`, `bp:p1:averages` | Mentions in §transfer and §requests only; not uses. | n/a |

Part 1 lemmas that Part 3 does **not** cite but now duplicates: `bp:p1:periodic-bounded`, `bp:p1:increments`,
`bp:p1:taylor`, `bp:p1:matrix-norms`, `bp:p1:holomorphic-inverse`, `bp:p1:iteration` and `bp:p1:averages-real`
(F1). Part 3 does not use `bp:p1:cauchy-open`, `bp:p1:decay`, `bp:p1:summation`, `bp:p1:neumann` or
`bp:p1:dmeas`.

Part 0 citations: `bp:p0:diophantine` (the $k=e_1$ step), `bp:p0:stripdata`, `bp:p0:totality` and `bp:p0:g2`.
All are used consistently with the frozen Lean statement and definitions.
