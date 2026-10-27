# Review of Part 4 (measure: G3, HEAD, HEAD-Q): review 1

- **Reviewed file:** `blueprint/parts/p4-measure.tex` (1482 lines, sha256 prefix `bda9f391b1a38758`), 2026-10-27 16:38Z.
- **Context read:** `p0-conventions.tex` (`b22b60acce213ab4`), `p1-analysis.tex` (`ba6181f25096fbc7`), `preamble.tex`.
  Frozen theorems: `KamPositiveMeasure.lean` (`8070bbdc766e2ba2`), `KamPositiveMeasureQualitative.lean`
  (`d371ad9e7864a0bc`), `VolumeNotDiophantineLe.lean` (`09a719e2de22cb60`), `AposterioriKam.lean`
  (`2efe30c0f2f0d5f5`) and `LocalUniquenessFlow.lean` (`feb376ef6701b353`). All 20 files in `KAM/Frozen/Defs/`.
  Pinned Mathlib (`v4.35.0`, `.lake/packages/mathlib`) for every Mathlib name cited. Project infrastructure
  `KAM/Strip/{Cauchy,HigherCauchy,Regularity,Averages}.lean` and `docs/cauchy-estimates.md`.
- **Sources checked against the pinned PDFs:** Pos01 (pp. 5, 6, 11, 13); CCdlL13 (§5.1.1 and Rem. 25–27,
  pp. 30–31; Cor. 29–30, pp. 32–33); BC17 (Lemma 6, footnotes 28 and 32, pp. 17–18); GJLV05 (Lemma 19,
  pp. 889–890). All quotations are verbatim and all locations are correct.
- **Build:** `latexmk -g -pdf -interaction=nonstopmode -outdir=.build/review-p4 blueprint.tex` exits 0. Part 4
  has no undefined references, no LaTeX warnings and no overfull boxes. The seven overfull boxes in the log
  belong to Parts 0, 2 and 3.
- **Stance:** refute-first. I recomputed every frozen-definition identity, every constant and every entry of
  $c_*$ by hand. I checked each hypothesis of the two G1 and two G2 applications literally against the Lean
  binders (tables below).

## Verdict: ACCEPT WITH FIXES

The mathematics of G3, HEAD and HEAD-Q is correct. The constants are uniform, and the argument proves the frozen
statements exactly as written, with no added premise. I found **no blocking finding and one major finding**.

- **F1 (major).** The real-analyticity clause `AnalyticOnNhd ℝ K univ` of `IsInvariantLagrangianTorus` (frozen
  inside `kamCover`) rests on the claim "holomorphic on an open subset of $\C^n$ ⇒ complex-analytic".
  - The proof attributes this to Mathlib's `DifferentiableOn.analyticOnNhd`, but that lemma is
    **one-variable only** (`{s : Set ℂ} {f : ℂ → E}`).
  - Neither the pinned Mathlib, nor the Part 1 interface, nor the project infrastructure provides the
    several-variable statement. `KAM/Strip/Regularity.lean` gives only $C^\infty$.
  - The Part 1 interface lemma `bp:p1:real-restriction` is "Proved as `bp:p4:real-restriction`", so the gap is
    circular.
  - The fact is classical. The fix is an added interface lemma, not a change of argument.

All other findings are minor. They concern bookkeeping, citations, notation and stale notes.

### What was verified (brief items 1–8)

1. **G1/G2 applications.** Every frozen hypothesis is checked literally in the tables below.
   - **H1.** It holds on all of $\mathfrak B=T_{s/2}\times B_{r_0/2}$, through the uniform polydisc margin
     $\delta_*$ into $\mathfrak B'\subset D(s_0,r_0)$. $M=\bar c(M_h+1)\delta_*^{-3}$ depends on the data only,
     since $M_h$ is a sup over the compact $Q\supset B_{3r_0/4}$.
   - **$\bar\gamma$ and smallness.** $\bar\gamma=1$ is used with $0<\gamma\le1$, and the smallness quotient is
     at most $\tfrac12<1$.
   - **G2.** Closeness holds on $T_{s/16}=T_\rho$ by (s5), and the conclusion is used only on
     $T_{s/32}=T_{\rho/2}$. The single exception is the identity-theorem extension in `step:p4:nu-phase` (F2).
   - **Torsion at $K^0$, recomputed from the frozen `normalFrame`, `torsion`, `omegaZero` and `dotℂ`.**
     $G=\mathrm{Id}$ and $N^0e_j=\Omega_0(e_j,0)=(0,e_j)$. $DX_{\mathbf h}(z)(0,e_j)=(a,b)$ with
     $a_m=\partial_{I_j}\partial_{I_m}\mathbf h$ and $b_m=-\partial_{I_j}\partial_{\theta_m}\mathbf h$. Then
     $T^0_{ij}=\mathrm{dot}_{\C}\big((0,e_i),(-b,a)\big)=a_i=+\partial_{I_i}\partial_{I_j}(h+f)$. **The sign is
     $+$, as claimed.** The $DN^0[\omega]$ term vanishes because `normalFrame K⁰ ·` is constant on all of $\C^n$.
2. **Action parameterization.** A torus is produced for every $\omega\in\nabla h(B)\cap\mathcal D_{\gamma,\tau}$,
   with $I_\omega\in B$. The domain margin $\delta_*=\frac14\min(s,r_0)$ is uniform in $I_*\in B$
   (`bp:p4:unperturbed`(g)), so no distance to $\partial\nabla h(B)$ is needed.
3. **LIP.**
   - **Error split.** $E'=(P_h,0)+P_f-DW_\omega\Delta\omega$ is exact, and the pure $|\Delta\omega|^2$ term
     cancels because $\Delta\omega=\nabla h(\iota I_\omega+\iota\Delta I)-\nabla h(\iota I_\omega)$.
   - **Error terms.** The mixed difference gives $H_3\eta_0L_+|\Delta\omega|$, the $f$ term gives
     $F_2\varepsilon L_+|\Delta\omega|$, and the transport term gives $32n\eta_0/s\cdot|\Delta\omega|$. Their
     sum is $A_1\varepsilon\gamma^{-2}|\Delta\omega|$.
   - **Pairs.** Far pairs are handled correctly; strict "<" should be "≤" at $\varepsilon=0$ (F7).
   - **Phase.** $\operatorname{ph}(\tilde K)=\varphi$, $|\varphi|\le d_1$, and the final bound is
     $(\sigma_K+1)d_1=A_2\varepsilon\gamma^{-4}|\Delta\omega|$.
   - **Strips.** $s/4\to s/8$ (G1#1); $s/8\to3s/32$ (STAB, loss $s/32$) $\to s/16$ (G1#2);
     $s/8\to s/16$ (STAB, loss $s/16$) for $K_{\omega'}$; and $s/16\to s/32$ (G2). All are consistent.
4. **Real tori.**
   - **Analyticity.** See F1.
   - **Primarity, immersion and embedding mod $\Z^n$.** These hold since $|D\tilde u|\le 16n\eta_0/s\le\frac12$.
   - **Lagrangian.** $\Lambda_{ij}$ is an exact sum of derivatives and $\partial_\omega\Lambda=0$ (using
     $DX=-\Omega_0S$, $\Omega_0^\top\Omega_0=I$, $\Omega_0^2=-I$), so cohomological uniqueness applies.
   - **ODE clause.** It holds for every real $x,t$, through `bp:p4:hamiltonian-real` at
     $K_\omega(\iota y)\in\mathfrak B$.
   - **Cover clauses.** The actions satisfy $|k_2-I_\omega|\le\eta_0\le\mu<r_0$, and with
     $\gamma=(\varepsilon/c_*)^{1/4}$ one has $\eta_0=A_0c_*^{1/2}\sqrt\varepsilon\le C\sqrt\varepsilon$.
5. **Measure.**
   - **Extension.** The clamped componentwise McShane extension is $\frac12$-Lipschitz in the max norm and
     bounded by $\eta_0\le\frac12$. $\Psi=\mathrm{id}+\bar G$ is a $\frac32$-Lipschitz bijection that preserves
     $\R^n\times Z^c$.
   - **Inclusion.** $F_B\setminus\mathcal K(\eta_0)\subset([0,1)^n\times(B\cap Z))\cup\Psi(Q\times(Z^c\setminus A_\gamma))$
     is correct, and $Z^c\subset B$ because $\operatorname{infDist}(I,B^c)=0$ off $B$.
   - **Measure bounds.** The boundary-layer hypothesis is applied at $\delta=2\gamma$. G3 is pulled back
     through the $L_+$-Lipschitz inverse frequency map, with the factor $L_+^n$. The product outer measure and
     $(3/2)^{2n}2^n=(9/2)^n$ are correct.
   - **Constants and edge cases.** $C$ and $\varepsilon_0$ depend only on $n,\tau,s_0,r_0,B,h$ and the
     witnesses $L,C_B$. The cases $\varepsilon=0$, $\varepsilon<0$ (excluded when $B\ne\emptyset$) and
     $B=\emptyset$ are handled.
6. **HEAD-Q.**
   - **Dyadic approximation.** The inner dyadic $B'$ is open and bounded, and its layer constant is
     $2nN\ell^{n-1}$; the direction of $\operatorname{infDist}$ monotonicity is correct.
   - **Hypotheses and closeness.** All of HEAD's hypotheses restrict to $B'$, $C'\sqrt\varepsilon\le\kappa$,
     and the cover is monotone.
   - **Compact closure.** It is not needed: HEAD asks only for an open, bounded $B'$ with the layer bound.
7. **G3.**
   - **Lattice count and sum.** The count $2(2m+1)^{n-1}$ (fibre at most 2) is correct, as is the sum bound
     $S(n,\tau)=2\cdot3^{n-1}\frac{\tau+2-n}{\tau+1-n}$.
   - **Slabs.** The dominant-coordinate slab bound $2n(2R)^{n-1}a/|k|_1$ is correct.
   - **Measure.** The argument uses only outer-measure monotonicity and subadditivity for an arbitrary bounded
     $\Omega$. The case $n=0$ is handled.
8. **Lean totality guards.** Guards are established before each use of `frequencyMap`, `hamiltonianVectorField`,
   `hamiltonianVectorFieldℂ` (on $\mathfrak B$), `gramMatrix`, `normalFrame`, `torsion`, the matrix inverse
   (determinant nonzero), `torsionAverage` (continuity on the compact cube) and $\operatorname{ph}$.
   - **Exceptions.** Several-variable regularity (F3) and analyticity (F1) are used without an interface lemma.

### G1 / G2 hypothesis checks

**G1 #1** (`step:p4:apply-g1`): $\mathfrak B=\mathfrak B$, $h=\mathbf h$, $K=K^0_\omega$, $e=F_1\varepsilon$, tuple $(\rho,\rho_\infty)=(s/4,s/8)$, $\sigma_K=\sigma_B=2+\mu$, $\sigma_T=4L_++\mu$, $\bar\gamma=1$.

| frozen hypothesis | where checked | status |
|---|---|---|
| `IsOpen 𝔅`, $\Z^n$-invariance | `step:p4:h1-open` | ✓ |
| `DifferentiableOn ℂ h 𝔅`, periodicity, reality on 𝔅 | `step:p4:h1-holo` (𝔅 ⊂ $D(s_0,r_0)$, $B_{r_0/2}\subset B_{r_0}$) | ✓ |
| four bounds ≤ M on **all** of 𝔅 | `bp:p4:derivative-bounds`(a),(d): polydisc radius $\delta_*$ into $\mathfrak B'$, $\lvert\mathbf h\rvert\le M_h+1$ there | ✓ (uses regularity, F3) |
| K differentiable/primary/real on $T_{s/4}$ | `bp:p4:unperturbed`(a) | ✓ |
| `ball (K θ) μ ⊆ 𝔅` | (g), $\mu=\delta_*/2<\delta_*$ | ✓ |
| `‖fderiv K θ‖ ≤ σK−μ = 2` | $\lvert L^0\rvert=1$ | ✓ |
| Gram unit, row sums of Lean inverse ≤ 2 | (b): $G=\mathrm{Id}$, `inv_one` | ✓ |
| torsion average unit, row sums ≤ $4L_+$ | (d),(e): $\le 2L_+$ by Neumann, $L_+F_2\varepsilon\le\frac12$ | ✓ (sign recomputed) |
| $0<\gamma\le1$, Diophantine | SA, $\omega\in\Omega_\gamma$ | ✓ |
| $\lvert E\rvert\le e$ on $T_{s/4}$; $C_1e/(\gamma^4\rho^{4\tau})<1$ | (f) on $T_{s/2}$; (s2) gives $\le\frac12$ | ✓ |

**G1 #2** (`step:p4:lip-g1`): $K=K_\omega+(0,\iota\Delta I)$, frequency $\omega'$, $e=e'$, $(\rho,\rho_\infty)=(3s/32,s/16)$.

| frozen hypothesis | where checked | status |
|---|---|---|
| H1 | as above | ✓ |
| H2–H4 on $T_{3s/32}$ (including torsion at $\omega'$) | STAB with $I_*=I_{\omega'}\in B$, $\lvert\omega'\rvert\le W$, $\rho=s/8$, $\delta=s/32$, $\eta=\eta_0\le\eta_*(s/32)$, $\lvert K'-K^0_{\omega'}\rvert=\lvert W_\omega\rvert\le\eta_0$ | ✓ (minor bookkeeping F4) |
| H5 | SA, $\omega'\in\Omega_\gamma$ | ✓ |
| error on $T_{3s/32}$, smallness | `bp:p4:lip-error`, $e'\le A_1\lambda_*\varepsilon$, (s4) | ✓ |

**G2 #1** (`step:p4:nu-g2`, $\rho=s/16$): $K_1=K_\omega$ satisfies H2–H4 on $T_{s/16}$ by STAB ($\delta=s/16$), with $E_1=0$. $K_2=K'$ is holomorphic, primary and real, with $E_2=0$ and $K_2(T_{s/16})\subset\mathfrak B$ ($\eta_0<\delta_*$). Closeness is $2\eta_0\le c_G\gamma^2(s/16)^{2\tau}$ by (s5). ✓. The conclusion is used on $T_{s/32}$ and then extended by the identity theorem (F2).

**G2 #2** (`step:p4:lip-g2`): $K_1=K_{\omega'}$ satisfies H2–H4 by STAB, with $E_1=0$. $K_2=\tilde K$ is holomorphic, primary and real on $T_{s/16}$, with $E_2=0$, and it is the centre of balls in $\mathfrak B$. Closeness is $2\eta_0+d_1\le(2A_0+C_2^{(2)}A_1\lambda_*(3s/32)^{-2\tau})\varepsilon\gamma^{-2}\le c_G\gamma^2(s/16)^{2\tau}$ by (s5). ✓. The conclusion is used only on $T_{s/32}$. ✓

## Findings

| id | label / step | severity | finding | evidence | fix |
|---|---|---|---|---|---|
| F1 | `step:p4:rr-analytic`, `bp:p4:real-restriction`(a); used by `step:p4:rt-analytic`, i.e. clause (i) `AnalyticOnNhd ℝ K Set.univ` of `IsInvariantLagrangianTorus` inside `kamCover` | **major** | The step says "a function holomorphic on an open subset of $\C^n$ is complex-analytic there (Mathlib: `DifferentiableOn.analyticOnNhd`)". In the pinned Mathlib that lemma is stated only for one complex variable. No several-variable version exists (no Osgood/Hartogs or polydisc Cauchy formula giving `AnalyticOnNhd`). The project's `KAM/Strip/Regularity.lean` proves only `ContDiffOn ℂ ⊤`, which does not imply analyticity. The Part 1 interface lemma `bp:p1:real-restriction` asserts real-analyticity but is "Proved as `bp:p4:real-restriction`", so the dependency is circular. The frozen cover cannot be inhabited without this fact, so HEAD and HEAD-Q depend on an unproved, unlisted infrastructure lemma. The mathematics is classical and true. | `Mathlib/Analysis/Complex/CauchyIntegral.lean:706`: `theorem _root_.DifferentiableOn.analyticOnNhd {s : Set ℂ} {f : ℂ → E}`; a grep of the pinned Mathlib for several-variable analyticity, Osgood or Hartogs finds nothing; `KAM/Strip/Regularity.lean` ll. 145–178; p1 l. 160–163; frozen `IsInvariantLagrangianTorus.lean` (first conjunct). | Add a Part 1 interface lemma stating that `DifferentiableOn ℂ f U` with $U\subset\C^m$ open (finite-dimensional source) implies `AnalyticOnNhd ℂ f U`. Cite it in `step:p4:rr-analytic` and correct the Mathlib pointer. Two routes: (a) iterated one-variable Cauchy formula on polydiscs, or the all-order line estimates already in `KAM/Strip/Cauchy.lean` (`norm_iteratedDeriv_line_le_…`, $j!A/\delta^j$) plus polarization and Taylor's theorem; (b) a strip-specific proof that a periodic holomorphic map on $T_\rho$ is real-analytic on $\R^n$, via `bp:p1:summation` (exponentially decaying Fourier series expanded into a power series at each real point). Record it as an infrastructure package. |
| F2 | `step:p4:nu-phase`, `step:p4:lag-unique` | minor | Both steps extend an identity from a thinner strip by "the identity theorem". Mathlib's several-variable identity theorem (`AnalyticOnNhd.eqOn_of_preconnected_of_eventuallyEq`) needs analyticity, which is F1 again. Neither extension is needed. `bp:p4:lagrangian` is used only at real points, which lie in $T_{\rho/4}$. `bp:p4:normalized-unique` is not used downstream at all (LIP applies G2 directly). | ll. 776–778, 1039–1041; uses of `bp:p4:lagrangian` only at l. 1084; no `\ref{bp:p4:normalized-unique}` outside its own statement. | State $\Lambda=0$ on $T_{\rho/4}$, which suffices for `step:p4:rt-lagrangian`. State the corollary on $T_{s/32}$, or demote it to a remark. Either change removes two analyticity uses. |
| F3 | `step:p4:db-vectorfield`, `step:p4:fm-hessian`, `step:p4:tr-inverse`, `step:p4:stab-cauchy`, `step:p4:lag-regular`, `step:p4:lag-transport`, `step:p4:mixed-proof` | minor | These steps use several-variable regularity: derivatives of holomorphic maps on open subsets of $\C^m$ are holomorphic ($DK$, $\partial_ih$, $D\mathbf h$, $DX_{\mathbf h}$, $\partial_\ell\Delta$), and mixed partials commute. No Part 1 interface lemma states this. `bp:p1:cauchy-open` bounds the total `iteratedFDeriv`, which is $0$ off the differentiability set, so it does not imply differentiability of `fderiv`. The fact is implemented in the project (`differentiableOn_fderiv_of_isOpen`, `contDiffOn_infty_of_differentiableOn`). | p1 ll. 20–25; `KAM/Strip/Regularity.lean`; `docs/cauchy-estimates.md` §Proof 3. | Add a Part 1 interface lemma "holomorphic on open $U\subset\C^m$ ⇒ `fderiv` holomorphic on $U$ (hence $C^\infty$, symmetric second derivative)", pointing to `KAM/Strip/Regularity.lean`, and cite it at these steps. |
| F4 | `step:p4:stab-small`, `step:p4:stab-frame` | minor | The recorded bound $a\le\frac1{10n}$ gives only $12na\le\frac65$, so "$\lvert N\rvert\le2$" does not follow as written. The true bound $a\le n\eta\delta^{-2}\le n/(16c_TL_+)\le 1/(4864n^2)$ gives $12na<1$, so the conclusion holds. Every later constant ($2M\eta$, $c_T$) is correct. | l. 602 ($a\le\frac1{10n}$); l. 627 ($\lvert N-N^0\rvert\le12na$, $\lvert N\rvert\le2$). | In `step:p4:stab-small`, record $a\le\frac1{12n}$ (or the sharp bound). |
| F5 | `bp:p4:matrix-norms`(v), `step:p4:mn-rowsum`, `step:p4:stab-twist` | minor (citation) | Item (v) assumes only continuity on $[0,1]^n$ and cites `bp:p1:averages-matrix`, whose hypothesis is "continuous, 1-periodic on $\R^n$". STAB(d) does not assume $K$ primary, so $T$ is not known to be periodic. The direct argument given ("integrate the row sums over the unit cube") suffices, and every actual application has $K$ primary. | l. 527, l. 539; p1 ll. 125–128; STAB statement ll. 580–593. | Drop the Part 1 citation in favour of the one-line proof (or the project's `norm_torusAverage_le`), or add primarity to STAB(d). |
| F6 | `step:p4:lag-regular` | minor (citation) | Periodicity of $u,v,DK$ is cited from `step:p4:tr-periodic`. Lemma `bp:p4:torsion-regular`, of which that step is part, assumes $\det G_K\ne0$ on $T_\rho$, which Lemma `bp:p4:lagrangian` does not provide. The periodicity part needs only primarity and holomorphy, so the claim is right but the citation is outside its lemma's hypotheses. | l. 1011; `bp:p4:torsion-regular` hypotheses ll. 543–545. | Prove periodicity inline from primarity, or split (d) of `bp:p4:torsion-regular` into a separate lemma that assumes only holomorphy and primarity. |
| F7 | `step:p4:lip-far` | minor | The bound "$2A_0\varepsilon\gamma^{-2}<(2A_0/\lambda_*)\varepsilon\gamma^{-4}\lvert\Delta\omega\rvert$" is false at $\varepsilon=0$ (both sides are $0$). The standing assumption allows $\varepsilon=0$, and HEAD uses it (`step:p4:head-zero`). | l. 884. | Replace "<" by "≤". |
| F8 | `step:p4:le-f` | minor (citation) | The increment bound $\lvert P_f\rvert\le F_2\varepsilon\lvert\Delta I\rvert$ on the convex ball is used without citing `bp:p1:increments-open`. | ll. 859–862. | Cite `bp:p1:increments-open` with $F=X_f$, $U=B_{\delta_*}(K^0_\omega(\theta))$, $A=F_2\varepsilon$. |
| F9 | `bp:p4:phase-average` | minor (Lean fidelity) | $\operatorname{ph}(K)$ is declared to lie in $\R^n$, and $K^{[a]}$ requires $a\in\R^n$. In Lean, $\int u_K(\iota x)\,dx$ is $\C^n$-valued. A real vector needs either a definition through real parts or a lemma that the imaginary part vanishes (integral commutes with $\operatorname{Im}$). | ll. 674–676. | Define $\operatorname{ph}(K)=\int_{[0,1]^n}\operatorname{Re}u_K(\iota x)\,dx$ and note $\iota\operatorname{ph}(K)=\int u_K(\iota x)\,dx$. |
| F10 | notation | minor (readability, graph extraction) | Several symbols are overloaded. $L$ is the HEAD witness and also $DK$ (`bp:p4:torsion-regular`, STAB). $\Lambda$ is the Lipschitz constant of $\nabla h$ and also $DK^\top\Omega_0DK$ (`bp:p4:lagrangian`). $W$ is the bound on $\lvert\omega\rvert$ and also the displacement $W_\omega$. $s$ is the strip parameter and also a variable in `bp:p4:mixed-difference` and `step:p4:rt-ode`. $\delta$ is the STAB loss, the cover radius and the layer width. | ll. 232, 544, 1000, 233/730, 804, 1091. | Rename, e.g. $\Lambda_g$, $W_\infty$, $\mathcal L_K$, and use $t,t'$ in the mixed-difference lemma. |
| F11 | §`bp:p4:sec-notes` ("Transfer requests", R2) | minor (stale) | Part 1 already carries transferred versions: `bp:p1:periodic-average`, `real-restriction`, `hamiltonian-real`, `mixed-difference`, `lip-image`, `mcshane`, `lipeo`, `cauchy-strip-2`. Part 4 neither cites them nor marks the transfer done. Several are worded differently: `bp:p1:mixed-difference` assumes a convex domain and a global $D^2$ bound; `bp:p1:lip-image` adds a preimage-of-null-sets clause that Part 4 never proves as such; `bp:p1:mcshane` cites `extend_pi`, while Part 4 cites `extend_real`. R2 is already satisfied, since `bp:p1:cauchy-open` names `iteratedFDeriv` with the operator norm. The graph would get two nodes per fact. | p1 ll. 150–189, 20–25; p4 ll. 1410–1427. | Cite the Part 1 labels in Part 4. Keep the Part 4 proofs as the proofs of those interface lemmas, with identical statements. Close R2. |
| F12 | `bp:p4:normalized-unique` | minor (structure) | The corollary is never used, so the claim "G2 applied twice" counts an application whose output is unused. It also carries the F2 identity-theorem use. | No reference to it outside ll. 749–779; §notes l. 1404. | Demote it to a remark, or keep it but mark it as not on the HEAD dependency path. |

No blocking findings. Not findings (checked and correct):

- The torsion sign at $K^0$.
- Every entry of $c_*$ and items (s1)–(s7).
- The constants $c_T=304n^3(M+W+1)$, $A_0,\dots,A_4$, $\lambda_*$ and $C_{\rm meas}$.
- The Gram and Neumann margins: $\le2$ against $\sigma_B-\mu=2$, and $\le4L_+$ against $\sigma_T-\mu$.
- $\lvert DK\rvert\le2$ against $\sigma_K-\mu$.
- The H1 bounds on all of $\mathfrak B$.
- G2's conclusion is used on $T_{\rho/2}$ only (up to F2).
- The quantifier order of HEAD: $L$ and $C_B$ are obtained before $C,\varepsilon_0$.
- The $\varepsilon=0$, $\varepsilon<0$ and $B=\emptyset$ cases.
- The direction of the dyadic boundary-layer inequality.
- The lattice-count and lattice-sum constants.

## Sources and ledger candidates

- **Pos01.**
  - p. 5, the quotation on $m(R^\tau_{\alpha,k}\cap\Omega)$ and $\tau>n-1$: verbatim.
  - p. 6, $\Omega_\alpha$ at distance $\alpha$ from $\partial\Omega$, and "piecewise smooth, or at least of
    dimension $n-1$": verbatim.
  - p. 11, Prop. 1 "Hence $\bar\varphi$ is a lipeomorphism on $\R^n$" and Prop. 2 "$\le|\bar\varphi|_{L,\Omega}\,m(\Omega-\Omega_\alpha)$":
    verbatim.
  - p. 13, "a constant times the measure of $\Omega_\alpha\times T^n$": verbatim.
- **CCdlL13.**
  - §5.1.1, (5.3) and Rem. 25–27, pp. 30–31: correct.
  - Cor. 30, p. 33: "It is important that we choose $K$ normalized", "depend only on $K_0,\mu_0$ and therefore
    they are uniform", "we can apply the argument again to all $\omega,\omega'\in\tilde D_s$": all verbatim.
  - The source gap claimed in `bp:p4:sec-lip` is accurate: the uniformity remark concerns only the
    non-degeneracy at $K_0$.
- **BC17.** Footnote 32, p. 18 is verbatim. Footnote 28 (p. 17) is the near-identity inverse fixed point,
  correctly cited for lipeomorphisms.
- **GJLV05.** Lemma 19(b),(d), pp. 889–890: "In particular, $L=0$ if $e=0$" is verbatim.
- **Ledger candidates.**
  - **(L1) E-Pos01-3.** CONFIRMED (should read $(\Omega-\Omega_\alpha)\times T^n$).
  - **(L2).** CONFIRMED as a candidate. The counterexample $\Omega=(0,1)\setminus\{1/k\}$ has inner
    $\alpha$-layer $\gtrsim\sqrt\alpha$ (about $(2\alpha)^{-1/2}$ disjoint neighbourhoods of width $2\alpha$),
    while $\dim_H\partial\Omega=0$. The reading "Minkowski content" is the right correction.
  - **(L3).** CONFIRMED: the Lipschitz constant must enter to the power $n$.

## Part 1 citations in Part 4

| # | where (line, step) | Part 1 lemma | use | within interface? |
|---|---|---|---|---|
| 1 | l. 132, `bp:p4:g3-remark` | `bp:p1:dmeas` | identification only | n/a (pointer) |
| 2 | ll. 160, 206, `step:p4:db-cauchy` | `bp:p1:cauchy-open` | $h$ on $U=B_{3r_0/4}$ ($\lvert h\rvert\le M_h$); $f$ and $\mathbf h$ on $U=\mathfrak B'$ ($\le\varepsilon$, $\le M_h+\varepsilon$); closed polydiscs of radius $\delta_*$ in $U$; $j=1,2,3$, scalar | Yes |
| 3 | l. 387, `step:p4:unp-twist` | `bp:p1:neumann` | $A=\nabla^2h(\iota I_*)$, $\lvert A^{-1}\rvert\lvert\Delta\rvert\le L_+F_2\varepsilon\le\frac12$ | Yes |
| 4 | l. 533, `step:p4:mn-rowsum` | `bp:p1:operator-norms` | row-sum = operator norm; $\lvert\Omega_0\rvert=1$ | Yes |
| 5 | l. 534, `step:p4:mn-rowsum` | `bp:p1:matrix-norms` | submultiplicativity; $\lvert A^\top\rvert\le m\lvert A\rvert$, used for $2n\times n$ matrices only ($m'=n\le m=2n$); general $p\times q$ proved directly | Yes |
| 6 | l. 539, `step:p4:mn-rowsum` (item (v)) | `bp:p1:averages-matrix` | $\lvert\int A\rvert\le\sup\lvert A\rvert$ for $A$ continuous on $[0,1]^n$ | **Outside as stated** (periodicity on $\R^n$ not assumed, F5); within in every actual application ($K$ primary ⇒ $T$ periodic) |
| 7 | l. 564, `step:p4:tr-inverse` | `bp:p1:holomorphic-inverse` | $G_K$ holomorphic on open $T_\rho$, $\det G_K\ne0$ there | Yes (holomorphy of $G_K=L^\top L$ needs F3) |
| 8 | l. 606, `step:p4:stab-cauchy` | `bp:p1:cauchy-strip` | $\Delta$ bounded by $\eta$ on $T_\rho$, loss $\delta$; then $\partial_\ell\Delta$ bounded by $2\eta/\delta$ on $T_{\rho-\delta/2}$, loss $\delta/2$ | Yes, given F3 (holomorphy of $\partial_\ell\Delta$) |
| 9 | l. 621, `step:p4:stab-gram` | `bp:p1:neumann` | $A=\mathrm{Id}$, $\lvert\Delta\rvert\le5na\le\frac12$; both conclusions used | Yes |
| 10 | l. 635, `step:p4:stab-xn` | `bp:p1:increments-open` | $F=DX_{\mathbf h}$ on the open ball $B_{\delta_*}(K^0_{I_*}(\theta))\subset\mathfrak B$, $\lvert DF\rvert=\lVert$`iteratedFDeriv 2`$X_{\mathbf h}\rVert\le M$ | Yes, given F3 |
| 11 | l. 652, `step:p4:stab-twist` | `bp:p1:neumann` | $A=\avg{T^0}$, $\lvert A^{-1}\rvert\lvert\Delta\rvert\le\frac18$ | Yes |
| 12 | l. 865, `step:p4:le-transport` | `bp:p1:cauchy-strip` | $W_\omega$ bounded by $\eta_0$ on $T_{s/8}$, loss $s/32$, vector-valued | Yes |
| 13 | l. 939, `step:p4:lip-close` | `bp:p1:increments` | $u=\tilde K$ holomorphic on $T_{s/16}$, segment $[\theta,\theta-\iota\varphi]\subset T_{s/32}$, $\lVert D\tilde K\rVert_{s/32}\le\sigma_K$ | Yes |
| 14 | l. 1013, `step:p4:lag-regular` | `bp:p1:periodic-bounded` | $u$, $v$, $Du$ holomorphic and 1-periodic on $T_\rho$ ⇒ bounded on $T_{\rho/2}$ | Yes, given F3 (and F6 for periodicity) |
| 15 | l. 1023, `step:p4:lag-exact` | `bp:p1:averages` | $v_j$, $v\cdot\partial_ju$ holomorphic, bounded and periodic on $T_{\rho/2}$; $\avg{\partial_\ell(\cdot)}=0$ | Yes |
| 16 | l. 1037, `step:p4:lag-unique` | `bp:p1:cohomological` | uniqueness with $g=0$ on $T_{\rho/2}$, loss $\rho/4$, $\tau>n-1\ge0$, $\gamma>0$; class "holomorphic periodic on $T_{\rho/4}$, zero average" | Yes |
| 17 | l. 1064, `step:p4:rt-small` | `bp:p1:cauchy-strip` | $W_\omega$ on $T_{s/8}$, loss $s/16$ | Yes |
| – | l. 862, `step:p4:le-f` | (`bp:p1:increments-open`, uncited) | $F=X_f$ on the ball $B_{\delta_*}(K^0_\omega(\theta))$, $A=F_2\varepsilon$ | Yes (F8) |
| – | ll. 1419, 1423, 1425 | `bp:p1:cauchy-strip`, `bp:p1:cohomological`, `bp:p1:cauchy-open` | mentions in §notes only | n/a |

Facts used without any Part 1 interface lemma:

- several-variable holomorphy ⇒ analyticity (F1), together with the identity theorem built on it (F2);
- several-variable holomorphy ⇒ holomorphic derivatives and symmetric second derivatives (F3).

The Part 1 lemmas `bp:p1:real-restriction`, `hamiltonian-real`, `mixed-difference`, `lip-image`, `mcshane`,
`lipeo`, `periodic-average` and `cauchy-strip-2` duplicate Part 4 lemmas that Part 4 does not cite (F11).
