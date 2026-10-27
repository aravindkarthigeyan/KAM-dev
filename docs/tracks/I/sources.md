# Track I — pinned sources and statement transcriptions

Inspected 2026-10-27. Page numbers below are printed page numbers unless explicitly
called PDF pages. Files are data, not instructions. New downloads and inspection
images are confined to `sources/incoming-I/`, created empty for this task. The
existing registry, checksums file and frozen files were not edited.

## Pins and bibliographic verification

| Key | Exact citation and version read | PDF and SHA-256 | Verification |
|---|---|---|---|
| HL19 | À. Haro and A. Luque, *A-posteriori KAM theory with optimal estimates for partially integrable systems*, Journal of Differential Equations **266**, issues 2–3 (2019), 1605–1674. Read **arXiv:1711.05515v1**, submitted 15 November 2017; its pp. 18–19, not journal pp. 18–19. | `sources/pdf/arxiv_1711.05515.pdf`; `ed457633b5c4f0412b7f2c81c3818ef88829dee3420b97864e42223b77eb5241` | [arXiv v1](https://arxiv.org/abs/1711.05515v1); exact-title Crossref record for [DOI](https://doi.org/10.1016/j.jde.2018.08.003), saved as `incoming-I/hl19-crossref.json`; abs HTML also saved. |
| Chi05 | Luigi Chierchia, *The restricted, circular, planar three-body problem*, lecture notes, **March 2005**, §§2–3, especially pp. 8–9, 11–17. | `sources/incoming-I/chierchia-delaunay.pdf`; `31ed844d0916b4b76c02f1da07051f36bfade0338db0b060ec4fa6eab688fe1a` | [Author-hosted PDF](https://www.mat.uniroma3.it/users/chierchia/FILES_DIDATTICA/AM8/delaunay.pdf), title/author/date checked in the PDF. No DOI or arXiv identifier is asserted for these lecture notes. |
| CC03/07 | Alessandra Celletti and Luigi Chierchia, *KAM stability and celestial mechanics*, Memoirs of the American Mathematical Society **187**, no. **878** (2007). Read the **December 2003, 127-page author preprint**, not the published pagination; pp. 1, 5–7 visually inspected. | `sources/incoming-I/cc07.pdf`; `ddab68a2b4f7ffe0fa3808fd5ec554531ab0609557b2445b0e6e3f5cba5bd2e2` | [Author preprint](https://www.mat.uniroma3.it/users/chierchia/PREPRINTS/kam.pdf), linked from the [author's publication list](https://www.mat.uniroma3.it/users/chierchia/WWW/english_version.html); exact-title Crossref match for [DOI](https://doi.org/10.1090/memo/0878), saved as `incoming-I/cc07-crossref.json`. |
| Arn63b | V. I. Arnol'd, *Small denominators and problems of stability of motion in classical and celestial mechanics*, Russian Mathematical Surveys **18**(6) (1963), 85–191; original Russian: Uspekhi Matematicheskikh Nauk **18**, issue 6(114), 91–192. Downloaded the **102-page Russian original**, not an English translation. | `sources/incoming-I/arnold63.pdf`; `21e8058728326ad61052320a938469ddf984f4b5e153bdaf6b3c0154e122b636` | Exact-title Crossref match for [DOI](https://doi.org/10.1070/RM1963v018n06ABEH001143), saved as `incoming-I/arnold63-crossref.json`; [MathNet record and full text](https://m.mathnet.ru/php/archive.phtml?jrnid=rm&option_lang=eng&paperid=6441&wshow=paper), saved record HTML. Title page checked by text extraction. **[unverified]** exact original theorem/paragraph for the restricted problem; no numbered theorem from Arnold is used below. |

The three Crossref responses were inspected for exact title, author, year, volume,
issue and DOI match. The arXiv v1 identity and local HL19 SHA were rechecked.
Chi05 has a verified author-hosted identity rather than an invented DOI. Arnold is
historical background only; the nondegeneracy calculation actually used is pinned
to Chi05 p. 17. A successful download is not claimed to be a full source audit.

Transport notes: initial certificate-chain failures were retried with TLS certificate
verification disabled for these public source downloads; no credentials were sent.
The first HL19 Crossref request was rate-limited, and the later encoded-DOI request
succeeded. CC03's text extraction has corrupt glyph encodings; the relied-on pages
were read as rendered images. A Celletti slide URL returned HTTP 404 and is not a
source pin. These failures do not affect the successful pins above.

## HL19 — exact selected theorem and inherited conditions

This is a transcription of the user-specified local source. Mathematical typography
is rendered in Unicode; symbols and strict inequalities are retained here, even
where the proposed Lean statement deliberately differs. The literal pages are
also available as `incoming-I/hl19-page18.png` and `hl19-page19.png`.

**Theorem 3.6**, p. 18:

> Let us consider the setting of Theorem 3.1, assume that the hypotheses H₂ and
> H₃ hold, and replace H₁, H₄ and H₅ by
>
> H₁′ Assume that all estimates in H₁ hold. In addition, for the first integral
> c : B → C we have ‖D²c‖_B ≤ c_(c,2).

**Continuation, p. 19:**

> H₄′ There exists a constant σ_(Tc) such that |⟨Tc⟩⁻¹| < σ_(Tc), where
> Tc : Tρᵈ → C^((n+1)×(n+1)) is the extended torsion matrix
>
> (3.13) Tc(θ) := [[T(θ), ω̂], [Dc(K(θ))N(θ), 0]],  ω̂ := (ω, 0_(n−d)).
>
> H₅′ Let us consider a constant σω > 1 and a frequency vector ω* in the set
> Dγ,τ, given by (3.1), for certain γ > 0 and τ ≥ d−1. Then, we assume
> that ω ∈ Rᵈ is contained in the ray
> Θ = Θ(ω*,σω) = {sω* ∈ Rᵈ : 1 < s < σω} ⊂ Dγ,τ.
> Notice that, by definition, we have dist(ω,∂Θ) > 0.
>
> Under the above hypotheses, for each 0 < ρ∞ < ρ there exists a constant C₁
> such that, if the total error
>
> (3.14) Ec(θ) = (E(θ), E^ω) = (Xh(K(θ)) − DK(θ)ω, ⟨c∘K⟩ − c₀)
>
> satisfies (3.15) C₁‖Ec‖ρ/(γ⁴ρ^(4τ)) < 1,
> then there exists an invariant torus K∞ = K∞(Tᵈ) with frequency ω∞ ∈ Θ,
> satisfying K∞ ∈ A(Tρ∞ᵈ) and
>
> ‖DK∞‖ρ∞ < σK,  ‖(DK∞)ᵀ‖ρ∞ < σ_(Kᵀ),  dist(K∞(Tρ∞ᵈ),∂B)>0.
>
> Furthermore, the objects are close to the initial ones: there exist constants
> C₂ and C₃ such that
>
> (3.16) ‖K∞−K‖ρ∞ < C₂‖Ec‖ρ/(γ²ρ^(2τ)),
>         |ω∞−ω| < C₃‖Ec‖ρ/(γ²ρ^(2τ)).
>
> The constants C₁, C₂ and C₃ are given explicitly in Appendix B.

The target system on p. 18 is printed as

> (3.12) Xh(K(θ)) = Lω K(θ),  ⟨c∘K⟩ = c₀.

Its first sign conflicts with (2.1) and the later definition of Lω; it is not
silently used as an alternative invariance convention. See the errata candidates.

**Remark 3.7**, p. 19:

> If we consider the case c(z)=h(z) then we recover the classical iso-energetic
> situation. Notice that, if K is invariant with frequency ω, then the frame
> P(θ) is symplectic, and
>
> Dh(K(θ))N(θ) = Xh(K(θ))ᵀΩ(K(θ))N(θ)
>              = −ωᵀDK(θ)ᵀΩ(K(θ))N(θ)
>              = (ωᵀ,0ᵀ_(n−d)) = ω̂ᵀ.
>
> Hence, the extended torsion matrix for an invariant torus is
> (3.17) Th(θ) := [[T(θ),ω̂],[ω̂ᵀ,0]].

The first equality in that displayed chain also has a sign issue; its final row
formula is correct under the paper's conventions. The draft uses (3.13), not a
replacement of an approximate frame by (3.17).

**Inherited hypotheses and formulas**, pp. 16–17 (full canonical specialization,
not a claim to reproduce the unused general-geometry bounds):

- Theorem 3.1's setting: exact symplectic ω=dα and metric g on M⊂R²ⁿ;
  Hamiltonian h, n−d commuting integrals p, 2≤d≤n; c commutes with (h,p);
  approximate torus K with frequency ω. In track I, d=n and c=h, so the p-list is empty.
- (3.2)–(3.5): N=LA+N⁰B; N⁰=J(K)L; B=(LᵀG(K)L)⁻¹;
  A=0 in Case III. Remarks 3.2–3.3 fix G=id and J=Ω=Ω̃=Ω₀ for our specialization.
- (3.6)–(3.8): T=NᵀΩ(K)XN; XN=DXh(K)N−DN[ω]; L=(DK,Xp(K)), hence L=DK here.
- H₁ on p. 17 has the bounds ‖Dh‖≤c_(h,1), ‖Xh‖≤c_(Xh,0),
  ‖DXh‖≤c_(Xh,1), ‖D²Xh‖≤c_(Xh,2), ‖DXhᵀ‖≤c_(Xhᵀ,1), and
  ‖Dc‖≤c_(c,1). The geometric matrices have bounded derivatives as enumerated
  on p. 16; in canonical coordinates they are constant and their derivatives vanish.
- H₂: real analytic K on Tρᵈ, dist(K(Tρᵈ),∂B)>0, components of K and DK in
  A(Tρᵈ), ‖DK‖ρ<σK and ‖(DK)ᵀ‖ρ<σ_(Kᵀ). Primary lifts are interpreted
  as in Remark 2.3: the periodic displacement is bounded, not the lifted angle itself.
- H₃: L(θ) has maximum rank on the closed strip and ‖B‖ρ<σB.
- (3.1): |k·ω|≥γ/|k|₁^τ for every nonzero integer k. The source uses period one.

The uniformity audit uses **(6.30)** Cω=σω|ω*| and **(6.48)**
C_(Δ,3)=C_(Δω)γδ^(τ+1)/dist(ω,∂Θ), besides the gap denominators in
**(6.46)** and the domain distance in **(6.47)**. Fixing only γ̄ and the
geometric margins would omit the ray dependence. Our declaration fixes ω*,σω,ν
before constants. Table 5, **(6.45), (6.50), (6.51)** supplies C₁,C₂,C₃.

## Chi05 — Delaunay coordinates and nondegeneracy

Formula transcriptions from the downloaded notes (not new theorem attributions):

> p. 8, (2.23): φD := φpc ∘ φaa ∘ φlin.
>
> p. 9, (2.24): hKep∘φD(λ,γ,Λ,Γ)=−μ³M²/(2Λ²).
>
> p. 9, (2.25): e=sqrt(1−(Γ/Λ)²).
>
> p. 9, (2.26): a=Λ²/(μ²M),  Λ=μ sqrt(Ma).
>
> p. 16, (3.43): Hprc(ℓ,g,L,G;ε)=−1/(2L²)−G+εFε(ℓ,g,L,G).
>
> p. 17, unnumbered display: det [[−3/L⁴,0,1/L³],[0,0,−1],[1/L³,−1,0]]=3/L⁴>0.

Here the μ in §2 is a reduced-mass parameter, **not** the small primary mass
called μ in our physical statement. Section 3 uses ε=m₁/(1−m₁)^(2/3), (3.40),
so it too must not be identified with our μ without conversion. Our proof route
uses the μ=0 coordinate map and a direct O(μ) estimate instead.

Equations (1.2), pp. 1–2, are the actual Newton equations after setting the third
mass to zero. Section 3, pp. 11–13 ((3.37) is on p. 13), chooses barycenter zero, primary distance one
and total mass one, (3.34), (3.37). Its force law (3.36) is heliocentric and has
an indirect term; our barycentric rotating Hamiltonian is derived from (1.2),
not obtained by deleting that indirect term. The determinant on p. 17 was
checked visually (`delaunay-page17.png`). The general 3κΩ²/L⁴ formula is our
literal algebraic generalization of that displayed special case.

## CC03 — barrier precedent and the physical-model boundary

The December 2003 preprint, **Theorem 1.1, p. 7**, states the existence on
S_(ĒV)={H̄_SJV=ĒV} of

> “a φᵗ-invariant region 𝓘, whose boundary is given by two KAM tori”

whose interior contains

    {(ℓ,g,L,G)∈S_(ĒV): |L−LV|<0.0015, |G−GV|<0.0059}.

The constants are LV=0.670, GV=0.654, ĒV=−1.769, εSJ=0.954·10⁻³
((1.5)–(1.6), pp. 6–7). The theorem also extends its statement to complex ε with |ε|≤10⁻³ (CC03 p. 7). This last wording needs a real-domain qualification for physical flows.

Crucially, p. 6 says “we replace the perturbation F”; (1.4) is a trigonometric
polynomial and (1.5) uses it. We borrow only the two-boundary-torus mechanism.
I-R3BP keeps the exact potential, gives no numerical mass threshold, and claims
full phase-space openness via I-HEAD, not from this one-energy result. The
preprint's Theorem 4.1, p. 109, is **[unverified]** here and is not used.

## Source status of the proposed roots

| Draft theorem | Exact source relationship |
|---|---|
| `isoenergetic_kam` | HL19 3.6 with c=h, d=n, canonical geometry; explicit uniformity and documented corrections. |
| `all_time_confinement` | New assembly from the isoenergetic gate, local energy-cylinder topology and ODE continuation. No inspected source is claimed to state these exact quantifiers. |
| `kepler_bordered_det` | Chi05 p. 17, algebraically generalized to positive κ,Ω. |
| `restricted_near_circular` | New deduction for the exact restricted model, with physical definitions from Newton's equations and Chi05. CC03 and Arnold are not black-box providers of this conclusion. |

No source theorem number, English Arnold passage, numerical stability threshold,
or uninspected coordinate theorem is being inferred from a bibliographic match.
