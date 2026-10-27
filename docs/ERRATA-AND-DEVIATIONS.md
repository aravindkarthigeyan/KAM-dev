# Errata and deviations

*Working record. It is rewritten from the findings ledger [`errata/ledger.json`](errata/ledger.json) as the
campaign proceeds, and verified entry by entry against the pinned PDFs by its writer and then by an independent
refute-first verifier before release. Until then every erratum below is a candidate, not a claim.*

**Policy.** An *erratum* is a defect in a pinned source: a typo, a wrong constant or sign, a missing hypothesis, a
statement false as printed, or a gap. A gap counts as an erratum only when a printed assertion is false; when we
supply a missing argument for a true step, that is a *deviation*. A *deviation* is a deliberate difference of the
formalization from the source: scope, conventions, reformulations, explicit parameter windows in place of "small
enough", proof supplements and different proof routes. Repairs of our own intermediate statements are neither.
Locations refer to the pinned versions listed in [`sources.json`](sources.json) (arXiv version or journal pages);
counts are of entries, not occurrences.

## Count

| Source | Errata | Deviations |
|---|---|---|
| Pos01 (Pöschel 2001, arXiv:0908.2234v1 = Version 1.3) | 2 candidates | 1 planned |
| HL19 (Haro–Luque 2019, arXiv:1711.05515v1) | 0 | 2 planned |

## Pos01

### Errata

1. **p. 29, Appendix A (author's footnote).** *Candidate, missing hypothesis.* The printed version (PSPUM 69)
   lacks the condition Kσ ≥ 1; the author's footnote in the pinned arXiv version says so, and the pinned text
   contains the condition. Effect: none on the pinned version; relevant only if the measure layer uses Appendix A.
2. **p. 23, choice of h₀ and K₀.** *Candidate, gap*, reported by Bounemoura (arXiv:2006.04453v1) and corrected in
   Koudjinan's thesis (arXiv:1904.13062v1). To be quoted and checked against the pinned PDF if the measure layer
   follows this proof.

### Deviations

1. **Whole proof.** *Different proof route (planned).* The tori come from an a-posteriori fixed-frequency KAM
   theorem applied at each Diophantine frequency, not from an iteration of symplectic transformations.

## HL19

### Errata

None found so far.

### Deviations

1. **§3.1.** *Convention (planned).* Estimates use weighted ℓ¹ Fourier(–Taylor) coefficient norms instead of sup
   norms on complex strips; hypotheses are stated for real-analytic functions and converted once.
2. **§2.** *Specialization (planned).* The general exact-symplectic setting with d-dimensional isotropic tori and
   first integrals is specialized to Lagrangian tori (d = n) for the standard symplectic form on Tⁿ × B, in
   coordinates (angles in ℝⁿ with ℤⁿ-periodicity).
