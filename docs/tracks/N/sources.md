# Track N — source packet (Phase 0, 27 October 2026)

Status: source and statement evidence for review, not approval or proof. Page numbers below are printed
preprint pages, which coincide with PDF page numbers for BM11 and GCB16. No journal/preprint identity of
wording is presumed. Existing source files and registries were read only.

## BM11 — primary authority

Abed Bounemoura and Jean-Pierre Marco, *Improved exponential stability for near-integrable quasi-convex
Hamiltonians*, Nonlinearity **24** (2011), 97–112,
[DOI 10.1088/0951-7715/24/1/005](https://doi.org/10.1088/0951-7715/24/1/005).
Read: [arXiv:1004.1014v2](https://arxiv.org/abs/1004.1014v2), submitted 7 April 2010,
revised 8 November 2010. The pinned PDF prints “October 30, 2018” on its title page and carries the v2
8 November 2010 arXiv stamp; the hash, rather than the generated title-page date, identifies our text.

- File: `sources/pdf/arxiv_1004.1014v2_BM_quasiconvex.pdf`.
- SHA-256: `90f0f6b3b3b183b8898f4e961f0127b3a143453f76645d960d3095fda5b9b818`.
- Verification: the version-specific arXiv abs page was fetched successfully with Python urllib; its title,
  authors and revision date match. The exact [Crossref DOI record](https://api.crossref.org/works/10.1088/0951-7715/24/1/005)
  matches title, both authors, volume 24, issue 1 and pages 97–112. Its publication date is 25 November 2010
  (online publication); the volume citation is 2011. Both local PDF hashes were recomputed and matched
  `sources/SHA256SUMS`.

### Transcription: analytic class and source hypotheses, pp. 4–5

The following quotations transcribe the supplied local PDF, with mathematical typography normalized.

> Let B = B(0,R) be the open ball of ℝⁿ of radius R > 0, with respect to the supremum norm |·|,
> centered at the origin.

For s > 0, p. 4 defines A_s(D) as bounded real-analytic functions on D = Tⁿ × B extending holomorphically to

> D_s = {(θ,I) ∈ (ℂⁿ/ℤⁿ) × ℂⁿ | |Im(θ)| < s, d(I,B) < s},

and continuous on its closure. The norm is |f|_s = sup_{z∈D_s}|f(z)|. The norm on ℂⁿ and its distance
are explicitly the supremum norm. B_s = {I∈ℝⁿ : d(I,B)<s} is the real action domain. The geometric
parameters n,R,s are fixed first.

> The integrable part h : B_s → ℝ will be assumed to be strictly quasi-convex: the gradient map ∇h does
> not vanish and there exists a positive number m such that
>
> ∇²h(I)v·v ≥ m|v|²                                                   (QC(m))
>
> holds for any I∈B_s and any v orthogonal to ∇h(I) (with respect to the Euclidean scalar product).

The right-hand norm remains the source's maximum norm; the orthogonality pairing is the Euclidean dot
product. These are different operations, deliberately retained in the draft.

> |∂ᵏh(I)| ≤ M,  1 ≤ |k₁| + ··· + |kₙ| ≤ 3.                         (B(M))

This is a bound on coordinate partial derivatives, not on the Hessian operator norm. The system on p. 5 is

> H(θ,I) = h(I) + f(θ,I),
> h ∈ A_s(D), f ∈ A_s(D),
> h satisfies (QC(m)) and (B(M)),
> |f|_s < ε.                                                         (C(M,m,ε))

The paragraph immediately following defines a stable constant as a positive constant depending on
n,R,s,M,m and the parameter δ or ρ, **not on the particular H** satisfying C(M,m,ε).

### Transcription: Theorem 2.1, p. 5

> Consider a real number δ satisfying 0 < δ ≤ (2n(n−1))⁻¹.
> Then there exist stable constants c₁,c₂,c₃ and ε₀ such that if 0 ≤ ε ≤ ε₀, and if H satisfies
> (C(M,m,ε)), the following estimates
>
> |I(t)−I₀| ≤ c₁ ε^{δ(n−1)},   |t| ≤ c₂ exp(c₃ ε^{−1/(2(n−1))+δ})
>
> hold true for every initial action I₀ ∈ B(0,R/2).
>
> Moreover, consider a real number ρ satisfying 0 < ρ < R/2. Then there exist stable constants
> c₄,c₅ and ε̃₀ such that if 0 ≤ ε ≤ ε̃₀, then
>
> |I(t)−I₀| ≤ ρ,   |t| ≤ c₄ exp(c₅ ε^{−1/(2(n−1))})
>
> for every I₀ ∈ B(0,R/2).

The second paragraph remains under the theorem's Hamiltonian hypotheses. It is not selected for freezing.
Immediately below, the source explicitly substitutes δ=(2n(n−1))⁻¹ and prints

> |I(t)−I₀| ≤ c₁ ε^{1/(2n)},   |t| ≤ c₂ exp(c₃ ε^{−1/(2n)}).

These displays have no equation number. The proof on pp. 13–14 starts from an arbitrary
(θ₀,I₀)∈Tⁿ×B(0,R/2) and a maximal solution; it therefore supports “every angle” and the solution-existence
reading, subject to the proof issues identified in notes.md. Section 1, p. 2 distinguishes n=2 from n≥3;
Theorem 2.1 itself does not print an additional n≥3 hypothesis. We deliberately select n≥3, matching
`docs/TRACKS.md`; we do not attribute that restriction to the literal theorem.

### Transcription: selected geometric gate, Lemma 3.3 and proof, pp. 9–10

> Suppose h satisfies (QC(m)). Then the map
>
> Ψ_h : B × ℝ⁺_* → ℝ × (ℝⁿ ∖ {0}),  (I,λ) ↦ (h(I), λω(I))
>
> is a local diffeomorphism in the neighbourhood of any point (I₀,λ₀) ∈ B × ℝ⁺_*.

The proof on p. 10 computes

> d_{(I₀,λ₀)}Ψ_h(v,u) = (ω(I₀)·v, uω(I₀) + λ₀∇²h(I₀)v)

and proves nonsingularity by quasi-convexity. N-QC selects this derivative-bijectivity assertion only.
The subsequent claim of uniform inverse radii is not selected; see candidate E-N-BM-2.
N-ZERO is a direct supplementary statement for f=0, derived from the Hamiltonian in §1, p. 1,
not a separately numbered theorem of BM11.

## GCB16 — inspected, deferred steep target

Massimiliano Guzzo, Luigi Chierchia and Giancarlo Benettin, *The Steep Nekhoroshev’s Theorem*,
Communications in Mathematical Physics **342** (2016), 569–601,
[DOI 10.1007/s00220-015-2555-x](https://doi.org/10.1007/s00220-015-2555-x).
Read [arXiv:1403.6776v1](https://arxiv.org/abs/1403.6776v1), 26 March 2014.

- File: `sources/pdf/arxiv_1403.6776v1_GCB_steep.pdf`.
- SHA-256: `7b89f25ed0e1b4815df095bac4af5095bff9e205287a6822f39a77122d44b176`.
- Verification: arXiv abs page matches version, authors and title; exact
  [Crossref DOI record](https://api.crossref.org/works/10.1007/s00220-015-2555-x) matches the title, three
  authors, volume and page range, with date 21 January 2016. Initial Crossref 429 responses succeeded on retry.

The model is H(I,φ)=h(I)+εf(I,φ), equation (1), p. 2, with 2π-periodic angles. This is a different
placement of ε from BM11. On p. 3, steepness requires inf_{I∈U}‖ω(I)‖>0 and, for each I∈U and each
j-dimensional linear subspace Λ orthogonal to ω(I), 1≤j≤n−1,

> max_{0≤η≤ξ} min_{u∈Λ:‖u‖=η} ‖π_Λ ω(I+u)‖ ≥ C_j ξ^{α_j},   ∀ ξ∈(0,r].       (3)

Here α_j≥1, C_j,r>0, π_Λ is Euclidean orthogonal projection, and the norm is Euclidean/Hermitian.
The text defines D−η by closed-ball containment. The following is the supplied PDF's theorem, p. 4:

> Theorem 1. Let H in (1) be real-analytic with h steep in U with steepness indices α₁,…,α_{n−1} and let
> p₁ := ∏_{k=1}^{n−2} α_k,  a := 1/(2np₁),  b := a/α_{n−1}.
> Then, there exist positive constants ε₀,R₀,T,c>0 such that for any 0≤ε<ε₀ the solution (I_t,φ_t)
> of the Hamilton equations for H(I,φ) with initial data (I₀,φ₀) with I₀∈U−2R₀εᵇ satisfies
>
> ‖I_t−I₀‖ ≤ R₀εᵇ                                                         (4)
>
> for any time t satisfying |t| ≤ (T/√ε) exp(c/εᵃ).                         (5)

The preceding p. 3 explicitly takes n≥3. The quantitative formulation on pp. 4–5 specifies extension
parameters and constants, including dependence on the norm of the fixed f. We do not freeze this statement
or silently delete its ε^{-1/2} time factor. Steepness, uniform perturbation quantifiers and the period/norm
translation require a dedicated packet; see notes.md.

## Historical sources: acquisition and verification

1. Jürgen Pöschel, *Nekhoroshev estimates for quasi-convex hamiltonian systems*, Mathematische Zeitschrift
   **213** (1993), 187–216, [DOI 10.1007/BF03025718](https://doi.org/10.1007/BF03025718).
   Exact [Crossref match](https://api.crossref.org/works/10.1007/BF03025718): title, author, volume,
   pages, May 1993. The author-copy URL `http://www.poschel.de/pbl/nek-1.pdf` returned 404; HTTPS
   variants failed TLS negotiation. [EuDML](https://eudml.org/doc/174526) resolved with urllib and linked
   GDZ identifier `GDZPPN002441616`, which resolves to volume `PPN266833020_0213`, image 193.
   Its IIIF manifest identifies article range `LOG_0021`; the archive's linked
   [article PDF](https://gdz.sub.uni-goettingen.de/download/pdf/PPN266833020_0213/LOG_0021.pdf)
   was successfully downloaded (2,706,612 bytes, 31 PDF pages: archive cover plus 30 article pages).
   Local pin: `sources/incoming-N/poschel1993_gdz.pdf`.
   SHA-256: `27568ec63af069ab6d6c02e0327aa2d822998be47888f20dea0c6418552dc869`.
   This is the journal scan, not the unavailable author copy. Its article pages have no extractable text.
   In v0.1 no original theorem wording was relied upon. In v0.2, printed pp. 189–192 and
   206–207 have been visually checked: Theorem 1 is on pp. 190–191, the Normal Form Lemma on p. 192,
   and Theorem 3 on pp. 206–207. See the precise source-line anchors and transcription below.
2. Pierre Lochak, *Canonical perturbation theory via simultaneous approximation*, Russian Mathematical
   Surveys **47(6)** (1992), 57–133,
   [DOI 10.1070/RM1992v047n06ABEH000965](https://doi.org/10.1070/RM1992v047n06ABEH000965).
   Exact [Crossref match](https://api.crossref.org/works/10.1070/RM1992v047n06ABEH000965): title,
   author, volume, issue and English pages. [MathNet record](https://www.mathnet.ru/eng/rm1380) agrees.
   MathNet full-text access failed (403/timeout); the Crossref-linked IOP PDF request led to a bot-check
   HTML page, which was not saved as a PDF. English PDF not obtained; SHA-256 unavailable; original
   theorem locators and wording **[unverified]**. The Russian pagination 59–140 is not the English
   pagination 57–133.

No statement depends on an unavailable historical PDF. New source downloads, if obtained, belong only to
`sources/incoming-N/`; no shared source registry or manifest is modified by this packet.

## v0.2 direct Pöschel source audit and source-line anchors

The journal scan above is now a primary source for the **separate** N-HEAD-C proposal. Its SHA-256 was
rechecked unchanged. Printed pp. 189–192 and 206–207 were read visually in the audit's rendered pages
`.drafts/N/audit-scratch/Pos-04.png` through `Pos-07.png`, `Pos-21.png`, and `Pos-22.png`.
The scan has no numbered lines or equation numbers in these passages. The following identifiers name
specific printed lines/displays, not invented source line numbers. PDF page = printed page − 185.

| Anchor | Exact location and source text/display | Input or obligation |
|---|---|---|
| POS189-DOM | p. 189, §1 “Set up”, last two paragraphs: `V_{r₀,s₀}P = V_{r₀}P × W_{s₀}Tⁿ`; `V_r D := {I : ‖I−D‖ < r}`; `Tⁿ = ℝⁿ/2πℤⁿ` | Fixed complex width; Euclidean action distance, 2π-periodic angles. |
| POS190-NORM | p. 190, first two norm displays: `|f_ε|_{P,r₀,s₀} ≤ ε`; `|u|_{D,r,s} = sup_{I∈V_rD} Σ_k |u_k(I)| e^{|k|s}` | Perturbation size in the weighted Fourier norm. |
| POS190-BRIDGE | p. 190, display immediately before “The Hessian”: sup norm ≤ weighted norm ≤ `cothⁿ σ` times the sup norm at width `s+2σ` | Pays the strip-sup to Fourier-norm conversion by a fixed width loss. |
| POS190-HESS | p. 190, “The Hessian of the integrable hamiltonian h”, next two displays: `Q(I)=∂²_Ih(I)` and `sup_{I∈V_{r₀}P} ‖Q(I)‖ ≤ M < ∞` | A uniform **complex** Euclidean operator-norm bound. This is the new Mcomplex input after norm conversion. |
| POS190-QC | p. 190, “More generally”, final display before Theorem 1: `|⟨ω(I),ξ⟩| > l‖ξ‖` or `⟨Q(I)ξ,ξ⟩ ≥ m‖ξ‖²`, for every real ξ and I∈U_{r₀}P | Uniform quantitative quasi-convexity. It is derived below, not assumed as a normal-form conclusion. |
| POS190-T1 | p. 190, Theorem 1, smallness and concluding displays: `ε₀ = mr₀²/(2¹⁰A^{2n})`, `r₀ ≤ 4l/m`, `A=11M/m`; action and time estimates below | Classical exponent and admissible radius; these auxiliary quantities must be chosen from fixed parameters. |
| POS191-LOW | p. 191, first line continuing Theorem 1: “except when ‖ω(I₀)‖ ≤ mr₀/8 in which case ‖I(t)−I₀‖ ≤ r₀ for all t” | The printed low-frequency branch gives a fixed radius, not the requested ε^{1/(2n)} radius. A fixed frequency lower bound excludes this branch for the selected direct route. |
| POS191-TIME | p. 191, first two displays: `a=1/(2n)`, `R₀=r₀/A`, `T₀=A²s₀/Ω₀`, `Ω₀ = sup_{‖I−I₀‖≤R₀} ‖ω(I)‖` | A uniform frequency **upper** bound is also needed for a uniform positive time prefactor; existing real first-derivative bounds supply it. |
| POS192-NF | p. 192, Normal Form Lemma, first display: `ε ≤ αr/(2⁷qK)`, `r ≤ min(α/(pMK),r₀)` | Confirms that the complex M enters the normal-form radius; it cannot be silently replaced by BM11's real B(M). |
| POS206-T3 | p. 206, Theorem 3 and p. 207 continuation | Verifies the original resonant-theorem locator used by BM11 p. 8. The same complex bound and quantitative l,m setup apply. |

### Exact theorem selected for N-HEAD-C: Theorem 1, printed pp. 190–191

With the analytic and norm setup just transcribed, its mathematical displays read:

> Suppose h is l,m-quasi-convex, and
> |f_ε|_{P,r₀,s₀} ≤ ε ≤ ε₀ = mr₀²/(2¹⁰A^{2n}),
> where r₀ ≤ 4l/m and A=11M/m. Then for every orbit with initial position (I₀,θ₀) in P×Tⁿ one has
>
> ‖I(t)−I₀‖ ≤ R₀(ε/ε₀)^a,
> |t| ≤ T₀ exp((s₀/6)(ε₀/ε)^a),
>
> except when ‖ω(I₀)‖ ≤ mr₀/8 in which case ‖I(t)−I₀‖ ≤ r₀ for all t.
> The parameters are a=1/(2n), R₀=r₀/A, T₀=A²s₀/Ω₀,
> where Ω₀=sup_{‖I−I₀‖≤R₀}‖ω(I)‖.

This is a transcription of the supplied pinned scan. We select its positive-ε, nonexceptional branch;
zero size is handled by N-ZERO. No theorem from the unavailable Lochak PDF is relied upon. In particular,
we do not claim to have verified that Lochak uses an identical hypothesis package.

### Uniform conversion from the proposed inputs to every source input

Besides the existing n,R,s,M,m and BM analytic/QC/B(M) premises, N-HEAD-C fixes **Mcomplex>0 and ωmin>0
before all existential constants**. Its new assumptions are:

- `HasComplexHessianBound R s h Mcomplex`: complex C² on B_s^ℂ and
  `‖fderiv ℂ (fderiv ℂ h) z‖ ≤ Mcomplex` for every z∈B_s^ℂ.
  Complex C² is a redundant regularity guard under holomorphy on this open set. The norm is the iterated
  operator norm on the existing maximum-norm spaces, never the spectral radius of a complex symmetric matrix.
- `ωmin ≤ ‖KAM.frequencyMap h I‖` for every I∈B(0,R), with the maximum norm.
  This is a **proposed additional source-route input**, not a premise of D18's original N-HEAD and not a
  literal blanket hypothesis in Pöschel's Theorem 1. Its precise source reasons are POS190-QC and
  POS191-LOW. Qualitative nonvanishing on each fixed h is not treated as a uniform lower bound.

Here are explicit choices demonstrating the parameter dependence; they are mathematical conversion work,
not Lean proofs or a proof of the normal-form theorem. Put

    q = m/n,       Bc = n Mcomplex + q,       μ = q/2,
    ell = ωmin q / (8(Bc+q)).

Every Hessian entry is bounded by Mcomplex, so its Euclidean operator norm is at most n Mcomplex≤Bc.
For a unit Euclidean vector v, decompose v=u+t e with e=ω/‖ω‖₂ and u perpendicular to ω.
If |ω·v|≤ell, then |t|≤ell/ωmin=q/[8(Bc+q)]<1. BM's transverse condition gives

    Q[v,v] ≥ q(1−t²) − 2Bc|t| − Bc t²
           = q − (q+Bc)t² − 2Bc|t| ≥ q − q/8 − q/4 ≥ μ.

Homogeneity gives POS190-QC with ell,μ for all v, including v=0, throughout B. Thus **no independent ell
parameter or extra quantitative-QC hypothesis is needed** in this strengthened package. First-order B(M)
also gives ‖ω‖₂≤√n M≤nM on the real domain, supplying POS191-TIME. No additional frequency upper-bound
parameter, complex third-derivative bound, or uniform bound on h's value is required. Adding a constant to
h has no effect on these inputs.

For the period conversion use φ=2πθ and the source Hamiltonian

    H̃(φ,I)=2π H(φ/(2π),I),   h̃=2πh,   f̃=2π f(φ/(2π),I).

This preserves time in Hamilton's equations; changing the angle without the Hamiltonian factor would not.
The source curvature, Hessian, quantitative-QC and frequency bounds are multiplied by 2π.
Take P to be the closed maximum-norm ball of radius R/2 and choose

    r₀ = min(s/2, R/8, 2ell/μ, 4ωmin/μ) > 0,
    s₀ = πs,    σ = πs/4,    F = 2π cothⁿ(πs/4),    A = 11 Bc/μ.

The complex Euclidean r₀-tube of P lies in B_s^ℂ; its real slice lies in B(0,3R/4), where the lower
frequency bound holds. The source inequality r₀≤4ell/μ holds. Its exceptional threshold is at most
(2πμ)r₀/8≤πωmin, strictly below every source initial frequency ≥2πωmin. Moreover A≥22, so the source
R₀-ball used to define Ω₀ remains inside B. The source perturbation norm is ≤Fε by POS190-BRIDGE:
s₀+2σ=3πs/2<2πs. All domain and width choices are independent of h,f and the initial point.

With ε*= (2πμ)r₀²/(2¹⁰A^{2n}), the source estimates give the required exponent a=1/(2n) and permit

    C = (r₀/A)(F/ε*)^a,
    c = (s₀/6)(ε*/F)^a,
    T = (A²s₀)/(4π n M).

The time prefactor is at most half the source prefactor since Ω₀≤2πnM. Shrink ε₀≤ε*/F further so that
Cε₀^a≤R/4. Ordinary local ODE existence/uniqueness and continuation in the resulting interior action tube
supply the same explicit solution conclusions as N-HEAD. These are remaining formal proof obligations,
not new hypotheses. This direct Theorem 1 route avoids BM11's λ-uniform inversion and same-inner-ball restart.

**Scope of necessity.** The complex bound is a literal analytic premise of this source. The added ωmin is a
sufficient, explicitly quantified way to obtain the source's quantitative QC and stay in its sharp-radius
branch. We do not claim that every true classical Nekhoroshev theorem needs a lower frequency bound, or
that the bound cannot be derived by a new argument from the original class. Removing it from this package
would require an audited quantitative conversion and treatment of the exceptional branch; neither is
smuggled in via compactness. All original real B(M) orders are retained to make this a strengthened-input
variant of the approved class, although this direct route only uses its first-order upper bound.

## Additions (D22), draft v0.3 — source evidence

This section supports only the new `.drafts/N/Additions.lean` declarations. It leaves the earlier source
packet and D20's frozen statements intact. Bibliography and hashes were checked again on 27 October 2026.
The research reports are navigation and correction records, not replacements for the sources below.

### Nek77: the stopped theorem, primary PDF verified

N. N. Nekhoroshev, *An exponential estimate of the time of stability of nearly-integrable Hamiltonian
systems*, Russian Mathematical Surveys **32** (6) (1977), 1–65.
[DOI](https://doi.org/10.1070/RM1977v032n06ABEH003859).
The [exact Crossref record](https://api.crossref.org/works/10.1070/RM1977v032n06ABEH003859) matches title,
author, year, and pages. The version read is the English journal translation, not a later abstract or
Guzzo's attribution. Printed and PDF page numbers coincide.

- File: `sources/incoming-round3/nek77-eng.pdf`.
- SHA-256: `0bfe624cf108096badd7e27fc40ca800e2948b68dce2bf8b9c653e0eaec4def6`.
- Read §1.5 p.5, §1.18 pp.14–15, §4 pp.28–30; p.30's exponent display and p.28's steepness/index
  display were checked as rendered PDF images, because plain-text extraction drops formula material.
- The chapter's s fast actions are renamed n; its total number n is our n+k. No exponent uses the total
  number of slow plus fast degrees of freedom.

**Source setting, §4.3 p.29.** H=H₀(I)+H₁(I,p,φ,q), with 2π-periodic φ, s≥2 fast actions and n>s.
G⊂ℝˢ and D⊂ℝ²⁽ⁿ⁻ˢ⁾ are arbitrary open domains. The complex set is

> F = {I,p,φ,q : Re I∈G, Re(p,q)∈D, |Im I,p,φ,q|<ρ}.

The imaginary inequalities are componentwise; other finite-dimensional norms are Euclidean/Hermitian.
H is analytic on F and real on reals. The displayed complex bound is

> m = sup_F ‖∂²H₀(I)/∂I²‖ < ∞.                                      (4.2)

Our parameter Mcomplex corresponds to this bound after finite-dimensional operator-norm conversion;
it is not the real convexity parameter m in the draft. §4.3.C gives the actual canonical equations
İ=−Hφ, ṗ=−Hq, φ̇=HI, q̇=Hp. The draft's ordering (φ,q;I,p) reproduces these equations using the frozen
Hamiltonian vector field.

**Steepness and specialization, §4.1 p.28.** The source requires a uniform lower bound g>0 on
|grad H₀| and steepness coefficients Cᵣ,δᵣ and indices αᵣ≥1 on affine r-planes perpendicular to the gradient.
Its plane-restricted quantity m_{I,λ}(η) is the infimum of the restricted gradient lengths on the radius-η
sphere intersected with the domain; steepness is sup_{0≤η≤ξ} m_{I,λ}(η)>Cξ^α for 0<ξ<δ.
§1.18 p.14 explicitly identifies same-sign nonzero second derivatives and nonzero gradient as convex,
quasi-convex and steep; this includes its concave Kepler example. The draft uses a uniform signed definite
Hessian, stronger than quasi-convexity, and an enlarged real domain. Deriving uniform index-one coefficients
with the exact domain convention is a provider/audit obligation; we do not quote §1.18 as a quantified
uniform-family theorem. Substituting all αᵣ=1 in (4.1) gives ζ=s(s−1)/2, with the separate s=2 rule ζ=1.

**Theorem 4.4, p.30, normalized transcription.** Under §4.3 and steepness in G with fixed coefficients and
indices, the source supplies M₀=M₀(H₀,ρ)>0 independent of the characteristics of H₁ other than ρ. Set
M=sup_F|grad H₁| and assume 0<M<M₀. For an arbitrary real canonical solution with

> I(0)∈G−d and (p(t),q(t))∈D−d for all t∈[0,C], where C>0 is arbitrary,
>
> |I(t)−I(0)|<d/2 for all t∈[0,min{C,T}].
>
> d=Mᵇ,  b=3/((12ζ+3s+14)α_{s−1}),                                  (4.4)
>
> T=(1/M) exp((1/M)ᵃ),  a=2/(12ζ+3s+14).                              (4.5)

§4.2 p.29 defines X−d by requiring the point and its d-neighborhood to lie in X. The draft's closed
maximum-norm erosion is explicitly stronger. Its slow history implication applies this result with C=t;
no statement from Pinzari Appendix D is used to justify that quantifier.

**Remarks 4.5.A–B, p.30.**

> The assertion of the theorem is completely unchanged if we take M to be sup |H₁| instead of
> sup |grad H₁|.

The following remark limits dependence of M₀ to the steepness coefficients/indices, the complex Hessian
bound m, and ρ. This pins both the value-norm normalization of P and the complex-control input. For
M≤μ the source bound is weakened monotonically to the draft's μ bound; the case M=0 is treated directly.
The fixed-h draft does not claim every displayed numerical bound exhausts the threshold's dependence.

**Source defect found while reading.** §1.18 p.15 says, concerning two bodies approaching one another,
“the perturbation H−H₀ becomes small.” This appears to be a translation/typographical error: the mutual
Newtonian potential has a reciprocal-distance singularity, so its magnitude becomes large. The paragraph's
need for angular momentum to prevent close approaches confirms that reading. Proposed correction: “large”
or “ceases to be small.” This sentence is not used as a premise; report E-N-ADD-1 to the orchestrator.

### AKN06: mean averaging estimate; book-page verification incomplete

Vladimir I. Arnold, Valery V. Kozlov and Anatoly I. Neishtadt, *Mathematical Aspects of Classical and
Celestial Mechanics*, **third edition**, Encyclopaedia of Mathematical Sciences **3**, Springer, 2006.
[DOI](https://doi.org/10.1007/978-3-540-48926-9), ISBN 978-3-540-28246-4 (print),
978-3-540-48926-9 (electronic). The [exact Crossref record](https://api.crossref.org/works/10.1007/978-3-540-48926-9)
confirms all three authors, title, year and ISBNs; the [publisher record](https://link.springer.com/book/10.1007/978-3-540-48926-9)
identifies the third edition. This verifies the citation, not every theorem hypothesis.

The theorem text available in this workspace is a pinned transcription of the book, not a full PDF:

- `sources/incoming-zohar2/akn06-web-excerpt.json`, SHA-256
  `4601cba5dd3c2c6fb030d5a9d1c5de3c5185d10ce5cb60b75fe8c9cb06af4aca`.
  This is a JSON-encoded string containing the book transcription and line locators. Its
  [book-text URL](https://studylib.es/doc/9451276/vladimir-i.-arnold--valery-v.-kozlov--anatoly-i.-neishtad...)
  was reopened and checked at the lines below. The content is the primary authors' text carried by a
  third-party host, not that host's mathematical commentary.
- `sources/incoming-zohar2/akn06university.pdf`, SHA-256
  `06bd6cab45130dedcef195f0edf46e0677e67d00fae1daccb04d1c5474944ac3`.
  This is an **11-page publisher/contents excerpt**. It does not contain p.243 and is not evidence that
  Theorem 6.11 has been checked in a PDF.
- Complete third-edition PDF and a visual check of printed p.243: **[unverified]**. Attempts to obtain a
  full copy from the available search/publisher links did not produce one; no failed download was pinned
  as a source. The later author slides below independently corroborate the formula, not all standing
  hypotheses. Do not freeze on the strength of a purported full-PDF verification.

**Exact locators and formula transcription.** §6.1.1, pp.208–209, transcript L10042–10075, specifies

    İ = ε f(I,φ,ε),       φ̇ = ω(I)+ε g(I,φ,ε),                       (6.2)
    J̇ = ε F(J),           F(J) = (2π)⁻ᵐ ∫_{Tᵐ} f(J,φ,0)dφ,           (6.3)
    J(0)=I(0),             0≤t≤1/ε.

The functions are 2π-periodic. For the Hamiltonian specialization, the first averaged vector field vanishes
by periodic differentiation/integration; period conversion and norms only change constants.

Theorem 6.11 ([451]), §6.1.9, **p.243**, L11597–11606, requires either rank(Dω)=m or projective frequency
rank m−1. It calls the resulting quantity the “mean error (over the initial conditions)”. Formula (6.27) is

> ∫ max_{0≤t≤1/ε} |I(t)−J(t)| dI₀dφ₀ < c₁√ε.                      (6.27)

Corollary 6.1, L11607–11620, takes initial data in a fixed compact set, defines E(ε,ρ) by error at least ρ,
and states

> meas E(ε,ρ) < c₁√ε/ρ.                                             (6.28)

Its equivalent κ form is

> |I(t)−J(t)| < c₁√ε/κ

outside a set of measure κ. The integrals here are over initial phase volume; “mean” does not introduce a
normalized probability measure. Strict inequalities become weak ones in the draft. The source uses ρ for
error tolerance; the draft uses η to distinguish it from analytic strip widths. No square-root error bound
with a square-root exceptional measure is asserted. The local-existence corollary is a derived target;
the precise smoothness version needed to justify its cutoff is **[unverified]**, not silently supplied by
this transcription. The cited original item [451] has not been independently pinned or used as a separate
authority here.

### NO22: independent author corroboration of the rate only

A. Neishtadt and A. Okunev, *Averaging and passage through resonances in two-frequency systems near
separatrices*, Joint BE-ABP and INFN Theoretical Group Seminar, **3 February 2022**, slides **1 and 14/46**.
[Author slide PDF hosted by CERN](https://indico.cern.ch/event/1117554/attachments/2380210/4066752/talk_averaging.pdf).
The title, both authors and date are printed on slide 1. This is not a journal paper; no DOI is claimed.

- File: `sources/incoming-zohar2/nei22slides.pdf`.
- SHA-256: `df064c4063d93478f343278458190da21972c1c5174dc63a79e746282a59fec7`.
- Slide 14, “Systems with many frequencies”, gives the same full/projective rank alternatives, mean
  O(√ε) estimate, O(√ε/κ) error off a set of measure κ, and the balanced ε^(1/4) consequence.
  It is corroboration only: the draft's theorem locator remains AKN Theorem 6.11/Corollary 6.1.

### Excluded routes and discrepancy record

Pinzari Appendix D.1 is not the authority for the stopped-history quantifier. The round-2 whole-interval
hypothesis cannot close a first-exit bootstrap; no analytic cutoff is invoked for N-PARTIAL-CONVEX.
Nek77's source exponents are retained. The reported Guzzo 1999 attribution of 1/(2n) to Nek77 and the
unavailable Niederman 1996 proof do not support a stronger draft. These are existing round-3 discrepancies,
not fresh independent audits of those papers. The only new suspected printed-source typo reported here
is E-N-ADD-1; the AKN page/smoothness limitations and the steepness-domain conversion are explicit open
source/translation checks. All introduced specializations and weakenings are listed in statement.md.
