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
   No original theorem number or wording is relied upon here; BM11's attribution of its Theorem 3.1
   to Pöschel's Theorem 3 is a secondary locator, **[unverified against the original]**.
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
