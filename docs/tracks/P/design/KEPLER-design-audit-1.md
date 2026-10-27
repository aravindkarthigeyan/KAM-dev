# Independent Kepler design audit 1

**Overall verdict: FAIL.** The draft elaborates, and the physical coordinate conventions and most mathematical targets are sound. It is not ready to distribute unchanged: it redeclares a frozen export, omits source conclusions, and its module DAG does not support the stated package order. These are design/interface failures, not a claim that the Kepler or Newtonian mathematics is false.

Reviewer/marker: `dsgn-kep`. Date: 2026-10-27. Audit directory: `/root/code/KAM-inp-design-kep`, branch `inp-design-kep`, HEAD `4e7b520c131acb97dbc7f86911e315be4a687e10`. The only persistent output of this audit is this report. No source, frozen file, manifest, design, signature, or git state was changed.

The audit follows the supplied design-audit brief, with the statement/binder and refutation checks of the statement-audit and manuscript-audit workflows. This is a design correspondence audit, not proof certification. `PASS` below means the specified target/body matches its indicated source role, or is a valid explicitly identified auxiliary statement; it does not certify its `sorry` body. A family can contain sound partial statements and still fail coverage of its advertised source result. The inventory includes **all 374 declarations: 264 theorems, 106 definitions, four structures**. Structure fields are reviewed with their enclosing declaration.

## Snapshot and evidence

| Input | SHA256 |
|---|---|
| `docs/tracks/P/design/KEPLER-LEAN-DESIGN.md` | `f0d2e8cac67852c865de87f8d7e68c41480b4bcd4838ff9a4c761363db400418` |
| `.drafts/design/KeplerSignatures.lean` | `38b82e2cf8e793ea12c92482d5bc37e5f6f57a30f9289639d10ab567104` |
| `blueprint-I/parts/p6-kepler.tex` | `b623ce5f8d2fc890834e5073dbc3c06701ac27ce7e5014efacadfb5107249bb6` |
| `blueprint-I/parts/p7-delaunay.tex` | `589325217120f60e9ceb4fbe17824548de2c7439837456226432bba286b542e9` |
| `blueprint-P/parts/p6-newtonian-models.tex` | `b6885887ba6dfd181e79925cb4584b4b5590d0debc3bc205a2c49aa86b634899` |
| `blueprint-P/parts/p7-kepler-poincare.tex` | `3a10ddf74067a3c7b54184a190710deaba3019c97d2e0d5e9a3773b889cc26ab` |
| `manifest/frozen-anchors.json` | `95ab954c0479944c1a314487276da31c6bf1af8eebbfbd49e88c06cd01cf4cdf` |

Appendix A is byte-for-byte the signatures file, including its final newline. Source line locators below are at this snapshot; `S` denotes the signatures file, `D` the design prose. Read the reviewed I packets `I-p67a.nodes.md` and `I-p7b.nodes.md` alongside the actual source. In particular the latter explicitly retains the exact-ham radius bound and the full transfer conclusion. Their exclusions of I means/scaling from the *I root closure* do not remove them from this audit's shared I/P scope. There is no `docs/graph/P/packets` directory at this snapshot or in the requested output checkout.

Consumer inspection covers I8; P8; P11a1/a2 and P11b; P12; P14a/b. **P13's source file is absent** in this worktree and the output checkout: `blueprint-P/PLAN.md:223` specifies a future `p13-fixed-assembly.tex`. Its intended requirements can be assessed against the frozen fixed-Sun predicates and that plan, but a line-by-line P13 source audit cannot be claimed. Main also has newer P11 preparation files absent from this audit branch; the audit does not silently substitute them for the pinned design snapshot.

## Findings, with refutation checks

### F1 — HIGH: a new definition collides with the frozen `fastShift`

S1326 defines `KAM.Planetary.fastShift` with only one dimension parameter. The frozen `KAM/Frozen/Planetary/Defs/FastShift.lean:38` already defines that exact export with `{a b : ℕ}` and exactly the same formula at `a=b=n`. The signatures omit that import, so standalone elaboration does not expose the collision. `IsCylinderTorus.lean:22` imports it; hence P12's frozen consumer environment necessarily encounters it. A minimal probe importing the frozen module and repeating the draft definition exits 1 with:

```text
error: `KAM.Planetary.fastShift` has already been declared
```

Refutation attempted: this is neither a namespace distinction nor a missing equality bridge; it is the identical fully qualified name with an incompatible generality. Import and reuse the frozen definition. The lattice theorem types remain mathematically correct after this repair, with `fastShift (a := n) (b := n) k`.

### F2 — MEDIUM: the two complex Kepler result families omit derivative conclusions

`bpI:p7:kepler-eq` at I7:112 explicitly has both `∂ℓ u` and `∂e u`. S311 supplies only the former; S295's bundle does not supply the latter. `bpP:p7:regular-kepler` at P7:104–106 says the three real derivative formulas also hold in the complex tube. S271 supplies only the lambda derivative; S190 is a **real** derivative and cannot substitute for the two missing complex derivatives. The source also retains `|J| ≥ 1 - cosh(1)/4 > 3/5`; S259 records only the final weaker bound.

Refutation attempted: joint holomorphy plus the equation can be differentiated to prove all these clauses, but that is additional mathematical work, not an already declared exact output. Add the companion targets below to KEP-4, or include them in the two bundle signatures. No change of hypotheses is necessary.

### F3 — MEDIUM: the chosen exact radius loses the link to the complex-domain witness

S776 faithfully packages clauses (i)–(iv), and S769 defines the **exact** displaced-primary perturbation, including the removable value at mu=0. S792 chooses from `∃ δ, 0 < δ ∧ ExactHamData K δ`; S796 proves precisely that property. This is not a conclusion-shaped premise: `exact_ham` assumes only safe compact actions and `rhoMax < 1` and must prove the existence needed to eliminate the fallback. Nor is an admissible radius supposed to be a uniquely defined physical observable. A noncanonical existential radius depending only on K is legitimate here.

The defect is narrower: the source I7:391–397 requires `0 < δ₂ ≤ δ₁`, with δ₁ satisfying `complex_domain`. D230/D10 says this omitted inequality “follows from the properties listed,” but no δ₁ is selected anywhere in the API. A result about `ExactHamData` cannot bound δ by an arbitrary independently chosen δ₁: valid complex-domain witnesses can always be shrunk. It also does not record holomorphy/agreement of `delaunayC` on the chosen neighbourhood, or that its positions lie in `shiftO`. Those are the source construction's domain controls, not merely the holomorphy of the composite F.

Refutation attempted: this does **not** establish that `period_one` is false. In fact its real-cone clause prevents a positive admissible ball from crossing either boundary `G=0` or `G=L`, and gives useful radius control; a min-L point bounds δ by L/3. Thus lack of an explicit `kLMin/2` bound alone is not a counterexample to the period-one conclusion. It still does not prove D10's claim about the selected complex-domain witness. Preserve a selected δ₁/spec and put the inequality in the choice predicate and admissibility theorem. All radius constants can still depend only on K.

### F4 — MEDIUM: `transfer` and `newton_in_tube` advertise more than their outputs

I7:448–450 and reviewed node `bpI:p7:transfer` include the radius **equality**, recovery of elements, and equality of the physical energy with `realHamiltonian`, as well as restricted-solution status and bounds. S834–842 gives only solution status and radius interval membership. The docstring still says “radius and energy along the orbit.” The missing outputs follow using `delaunay_elements`, `orbitMapR_radius`, and `period_one`, but must be provided within the package if this is the promised source-facing transfer API.

P6:240–242 expressly includes the analogous fixed-Sun statement. S1124 says “moving and fixed Sun,” whereas S1125 mentions only `movingHamiltonian` and `IsNewtonSolutionOn`. The fixed reconstruction and pair-bound lemmas are present, so the repair is a companion fixed-Sun tube corollary, not a new analytic argument.

Refutation attempted: I8's actual physical-solution use at I8:223 can apply the current weaker `transfer`; the energy omission is correspondence/coverage loss, not failure of that use. Likewise P12's moving-Sun use is supported. Neither fact supplies the advertised missing conclusions.

### F5 — HIGH for scheduling: the 31 packages do not implement the printed import DAG

The package count is correct: 10 KEP + 8 I + 6 P6 + 7 P7 = 31. The proposed modules are all individually below 1500 estimated lines. The following imports/ownership boundaries are inconsistent:

| Planned module/package | Missing dependency | Concrete witness and effect |
|---|---|---|
| `Kepler.DelaunayChart` / KEP-7 | `Kepler.DelaunaySymplectic` | Local analytic inverse uses S413's derivative equivalence. Package table lists KEP-6; DAG D358 lists only Orbit. |
| `Iso.RestrictedHam` / I-3, wave 2 | `Kepler.Orbit` / KEP-5, wave 3 | S643's type mentions `kE`, defined S336 in Orbit. Importing only Plane cannot even state it. Move this h0 clause later, or move the baseline energy definition earlier. |
| `Newtonian.Models` / P6-1, wave 2 | `Kepler.Mass` / KEP-10, wave 6 | S896's type mentions `energyMK`, defined S472 in Mass. Split early Kepler energy definitions from the late mass chart, or move this dictionary lemma to a later module. |
| `Newtonian.Tube` / P6-4 | `Newtonian.Reconstruction` | `newton_in_tube`'s planned proof calls reconstruction. Package table correctly lists P6-3; DAG lists only Barycentric and Plane. |

These four dependencies survive direct type/dependency inspection. Repair both the DAG and package table together, then recompute earliest waves; do not fix early statement dependencies by importing the whole late mass chart and retain the old wave claims. No genuine cyclic mathematical dependency was found after splitting early definitions; the printed schedule is nevertheless not executable as written. Also, `KAM/Iso/Kepler.lean` (credited to branch `inp-w1gates` by D5/D112) is absent from this checkout. The stated existing determinant provider must be integrated and imported, or its prerequisite must be scheduled explicitly; this audit did not independently certify another branch's proof.

### F6 — MEDIUM: heterogeneous dimensions are recognized but the consumer bridge is deferred

`poincareProd : Phase (n+n) → Phase (n*2)` is the correct block-to-body map; `IsSymplecticOn` handles these types directly. The draft's `planetBlock` uses frozen `fast/slow`, and the physical output uses `finProdFinEquiv.symm`, consistent with frozen `bodyVector`. No exchange of xi with eta was found. But the equal cardinalities are not definitional equality. A probe assigning a function on `Fin (n+n)` directly to one on `Fin (n*2)` fails with the expected type mismatch. D593 says `phaseCast` is “to be added”; there is no such signature or derivative/form/volume transport contract in Appendix A.

For literal `n=2` the numerals reduce, so this is **not** a P12 two-planet type counterexample. It matters for general-n P14a and the planned P13, and for same-carrier Part-1 APIs. Add the explicit canonical reindex equivalence and preservation API, or freeze the relevant Part-1 chart/field/transport APIs with heterogeneous dimensions. Merely writing `n*2 = n+n` in prose does not deliver a frozen solution or torus of the required type.

A separate consumer issue must not be hidden by this repair: P12:205 explicitly rejects applying the full-position-lattice Part-1 transport/measure lemmas to a Cartesian cylinder torus. It provides fast-lattice variants itself. Consequently S1142 `measure_chart_image` is sound as a full-lattice theorem but is **not** the P12 Cartesian measure interface. Polar lattice lemmas do not prove that an arbitrary frozen cylinder torus winds in every slow angle. The source already records this distinction; the design's consumer table must retain it.

### F7 — MEDIUM: a verified name is not a verified applicable theorem

The section-9 IFT, inverse, root, contraction, trig, determinant and measure/interval names were checked in Lean. The analytic IFT genuinely accepts `n : WithTop ℕ∞`, including omega; the core B5 route is valid. However:

* `Real.cosh_one_lt` in the KEP-4 proof plan does not exist. Use the alternate explicit `Real.cosh_eq` / exponential estimates already suggested in the design, with an actual numerical helper proved in the package.
* `TendstoLocallyUniformlyOn.differentiableOn` exists, but its domain is `U : Set ℂ` and `F : ι → ℂ → E`. KEP-3 claims joint holomorphy for arbitrary complex normed parameter space P, and its consumers have two/three complex parameters. It cannot be applied directly as described in D464. Provide a multivariable uniform-limit argument, or prove joint holomorphy by an appropriate implicit-function argument. If using the latter, the probed `ContDiffAt.implicitFunction` also requires complete parameter spaces; the generic KEP-3 signature does not assume `[CompleteSpace P]`. Do not silently add a stronger hypothesis to a source-facing instance.
* `KAM.holomorphic_analytic` and `KAM.analyticOnNhd_comp_realInclusion` are project declarations with `Fin m → ℂ` input. They require a product-to-Pi adapter for the chart signatures and an actual `KAM.Strip.Analytic` import in the packages that use them. `analyticOnNhd_of_differentiableOn` is in namespace `KAM`, not a root Mathlib name. The printed DAG currently has neither this project import nor a replacement route.

These are proof-plan/import gaps, not refutations of the holomorphy target. S243 remains a mathematically appropriate generic target; its proposed proof is not already supplied by the cited one-variable theorem.

## Frozen objects, hypotheses, definitions, and consumers

**Frozen-object verdict: FAIL only for the `fastShift` redeclaration; otherwise the inspected interfaces use the frozen objects or an explicit bridge.** In particular:

* `Phase d` is exactly the frozen product of two Pi types, with positions first. `planeLength` is `sqrt (sum squares)`, not the ambient Pi supremum norm. S107–108 retain the necessary sqrt(2) conversion. Physical body indices are `2*i+c`, not fast/slow blocks. S870's inverse packing and S872–873 are the right bridges.
* The frozen symplectic form is `Σ(v₂w₁-v₁w₂)`; frozen `hamiltonianVectorField` is `(∂p H,-∂q H)`. The chart identities use that same form on both sides. The Poincare slow coordinates are `(xi,eta)` and the oscillator polar chart uses `xi=sqrt(2R) sin psi`, `eta=sqrt(2R) cos psi`; S1388's argument order of frozen `assemble` implements precisely this. Neither a sign reversal nor a factor-two normalization error was found.
* `restrictedHamTotal` is bridged by S622 to the frozen subtype Hamiltonian. S628 is a genuine field equality on `CollisionFree`, and S630 includes both that guard and the frozen differentiability-guarded Hamiltonian solution predicate. I8 can therefore consume it; no assumption that total `fderiv` has its intended value at a primary collision is made.
* Moving reconstruction uses `IsNewtonSolutionOn (fun k => G * actualMasses ... k)` for finite time because that predicate absorbs G; the all-time version uses `IsNewtonSolution G (actualMasses ...)`. The D25 normalization S1030 uses `G=m0=1`. These distinctions are correct. `newton_to_moving` uses positive mu to divide the actual planet masses; forward reconstruction includes mu=0 and remains valid as a test-particle statement. Fixed reconstruction uses the actual frozen all-time fixed-Sun predicate; its finite-time output spells the four clauses out because no finite-time fixed predicate is imported.
* The two assembly signatures conclude the actual frozen Kolmogorov predicates, including Borel measurability, all complete orbits, barycentric/fixed Sun pair bounds and a physical torus. Their assumptions are the independent chart-level torus and tube input required by P6, not their own conclusion.

**B3/dropped-hypothesis verdict: PASS.** For S914, the pair summands cancel for every q: total inverse and even length give `a_ji=-a_ij`, including zero separation. For S917/S924 positivity of masses is unnecessary: inverse masses are constant coefficients of quadratic polynomials, including coefficient zero at mass zero; `NoCollision` is correctly retained for differentiating the potential. S993–1004's algebraic equalities use the literal `Fin.cons` formulas, not cancellation of an unguarded total-mass denominator. The relative velocity formula retains `m0 ≠ 0` where the displayed reciprocal coefficient is rewritten. Positivity and mu≥0 remain on barycentre/momentum bounds and reconstruction where used. The unconditional `restrictedHamTotal_zero`, `keplerRotH_comp_div`, and split identities also survive their zero denominators under Lean's total field conventions. This does not license a physical trajectory at a collision.

**B6 quotient replacement: PASS as an interface family, with coverage additions needed for the mass chart.** Openness and forward analyticity are separately present. Periodicity/injectivity modulo the discrete lattice, onto the correct region, and analytic local inverses give the usual quotient chart property. A local partial homeomorphism's source can be restricted to the open chart domain, so lack of an explicit source-subset conjunct is not a counterexample. A global equality of its forward total function with the original chart is consistent with the local inverse theorem; it does not assert global injectivity. The mass-chart family lacks an explicit local-diffeomorphism output, despite S493's docstring claiming it. Its periodicity follows at once from the iff theorem but should be exported for the intended interface. See the supplemental signatures below.

**Definition verdict:** literal formula bodies and the four data structures PASS their intended roles. `KeplerData` has coefficient holomorphy and explicit numerical invariance/contraction inequalities, not a field asserting existence of the desired inverse; `ShiftConst`, `SafeAction`, and `AxisData` contain the source standing conditions. `ExactHamData` is openly a theorem-output predicate, not a standing assumption accepted by `exact_ham`, `period_one`, or `transfer`. It is acceptable as an internal radius-selection property; it is incomplete as the full source radius control (F3). No bare function/matrix instance is introduced. All choices/defaults must remain confined to this design's domain guards: real Kepler inverse under length<1, complex inverse under strip uniqueness proved by the contraction, exact radius under safe K and rhoMax<1. None of the target consumer statements obtains a physical conclusion from a default branch. Actual proofs must establish these specifications before exposing consumers; the current `sorry` elaboration is not such establishment.

The `dslope` definition of `shiftF` has the correct sign and removable value: at nonzero mu it is `(w-Psi)/mu`, and at zero it is `-deriv Psi 0`. To cover the literal source formula, export its integral representation as well. The arcosh/tube constants match the source formulas. The circular orbit identities/means correctly include e=0, while the noncircular Delaunay region and chart exclude it. The explicit inverse `poincareInv` chooses an argument representative only modulo the lambda lattice; it does not claim global continuity of `arg` across its cut.

| Consumer | Verdict and point of use |
|---|---|
| I8 | Core application PASS: near-circular image, exact real Hamiltonian, nondegeneracy and frozen restricted-solution transfer are in the right carriers. Preserve F3 radius construction and F4 full transfer output; prove positivity of mu2/CF from `SafeAction.ecc_bounds` and shift constants inside the package. |
| P8 | Core chart/split/real derivative/means and holomorphic-neighbourhood outputs PASS. Fields can be computed on the collision-free pullback. The generic chart-field theorem/adapters remain a Part-1 dependency; F7 is not resolved by names alone. |
| P11 | P11b's series construction can use the real Kepler equation and analytic inverse and the correct Poincare formula. P11a/a2 consume their analytic setup indirectly; no new Newtonian or quotient hypothesis appears there. |
| P12 | Block chart, fast lattice iff, circular-point formula, moving assembly and Newton reconstruction PASS once F1 is fixed. Do not use full-position polar transport/measure for its Cartesian cylinder tori (F6). |
| P13 | SOURCE UNAVAILABLE. The general-n frozen fixed-Sun reconstruction and assembly targets are appropriate. General-n casts/chart transport must be specified; no full source-consumer PASS is issued. |
| P14a | Physical finite-time D25 reconstruction PASS. General-n body/element identities can be proved blockwise from S1228 + `regionProd_one_iff`; the convenience D25 theorem S1446 is only n=2, so do not specialize the consumer itself to two planets. F1 and F6 must be resolved in the general-n integration. |
| P14b | The D25 formulas and ellipse-at-arbitrary-longitude bridge match the frozen definitions. **Do not FAIL S1459 for `Continuous φ`: P7:267 explicitly assumes that**, and P14b:43/55/211 expressly says the change-of-variable comparison is only a consistency check, unused by its proofs. Singular inverse-distance observables are only continuous on the separated orbit domain; for their average interpretation use a local-continuity companion (or a continuous extension on the compact orbit), not an unjustified global-continuity assertion. |

## Corrected signatures and missing interface targets

These are proposed target repairs, not edits or certified proofs. Snippets use the original signature file's imports and open declarations; their proof placeholders are displayed only as proposed types, and have not been independently elaborated as revised targets. When a correction is additive, retain the existing sound component and export the following companion in the **same owning package**; together they replace the incomplete advertised interface. Every FAIL row in the inventory refers to a correction here.

### C1 — reuse the frozen lattice definition (F1)

```lean
public import KAM.Frozen.Planetary.Defs.FastShift
-- Delete the draft `def KAM.Planetary.fastShift`; there is no replacement definition.
-- All draft occurrences in the n-planet API use the frozen specialization:
#check @KAM.Planetary.fastShift
-- In each n-planet theorem, write `fastShift (a := n) (b := n) k`.
```

### C2 — complete both complex Kepler outputs (F2)

```lean
namespace KAM.Kepler
-- Add to the output family of `regularKepler_complex`:
theorem fderiv_keplerLongC_vec
    {x : ℂ × (Fin 2 → ℂ)} (hx : x ∈ regularTube) :
    fderiv ℂ (fun v => keplerLongC (x.1, v)) x.2 (Pi.single 0 1) =
        Complex.sin (keplerLongC x) /
          (1 - x.2 0 * Complex.cos (keplerLongC x) - x.2 1 * Complex.sin (keplerLongC x)) ∧
    fderiv ℂ (fun v => keplerLongC (x.1, v)) x.2 (Pi.single 1 1) =
        -Complex.cos (keplerLongC x) /
          (1 - x.2 0 * Complex.cos (keplerLongC x) - x.2 1 * Complex.sin (keplerLongC x)) := by sorry

theorem regularKepler_jac_bound
    {x : ℂ × (Fin 2 → ℂ)} (hx : x ∈ regularTube) :
    1 - Real.cosh 1 / 4 ≤
      ‖1 - x.2 0 * Complex.cos (keplerLongC x) - x.2 1 * Complex.sin (keplerLongC x)‖ ∧
    (3 / 5 : ℝ) < 1 - Real.cosh 1 / 4 := by sorry

-- Add to the output family of `keplerEq_tube`:
theorem hasDerivAt_eccAnomC_ecc {e₁ : ℝ} (h0 : 0 < e₁) (h1 : e₁ < 1)
    {x : ℂ × ℂ} (hx : x ∈ keplerTube e₁) :
    HasDerivAt (fun e : ℂ => eccAnomC e₁ (x.1, e))
      (Complex.sin (eccAnomC e₁ x) /
        (1 - x.2 * Complex.cos (eccAnomC e₁ x))) x.2 := by sorry
end KAM.Kepler
```

### C3 — choose a radius subordinate to a specified complex domain (F3)

First factor the **entire current RHS of `complex_domain` following `∃ δ₁ : ℝ,`** into `ComplexDomainData K δ₁` (all its conjuncts, including positivity, numerical bounds, eccentricity control, domain inclusion, holomorphy and real agreement). This is an exact syntactic factorization, not a new hypothesis or a weaker replacement. Then the corrected choice and public target are:

```lean
namespace KAM.Iso
-- Exact factorization of the existing complex_domain output:
def ComplexDomainData (K : Set (Fin 2 → ℝ)) (δ₁ : ℝ) : Prop :=
  0 < δ₁ ∧ δ₁ ≤ min (keplerDeltaK (kEccMax K)) (min (kLMin K) (kGMin K)) / 2 ∧
      (∀ x ∈ actionNbhd K δ₁, x 0 ≠ 0 ∧ kLMin K / 2 < (x 0).re) ∧
      DifferentiableOn ℂ (fun x : Fin 2 → ℂ => eccC (x 0) (x 1)) (actionNbhd K δ₁) ∧
      (∀ x ∈ actionNbhd K δ₁, ∀ y ∈ K, ‖x - fun i => (y i : ℂ)‖ < δ₁ →
        ‖eccC (x 0) (x 1) - (eccOf (y 0) (y 1) : ℝ)‖ < keplerDeltaE (kEccMax K) ∧
        ‖eccC (x 0) (x 1)‖ < keplerE2 (kEccMax K)) ∧
      (∀ y : Fin 2 → ℝ, (fun i => (y i : ℂ)) ∈ actionNbhd K δ₁ → 0 < y 1 ∧ y 1 < y 0 ∧
        eccC (y 0) (y 1) = (eccOf (y 0) (y 1) : ℝ)) ∧
      (∀ w ∈ UDelta K δ₁, ![w.1 0, w.1 1, w.2 0, eccC (w.2 0) (w.2 1), w.2 1 / w.2 0] ∈
        orbitDomC (kEccMax K)) ∧
      DifferentiableOn ℂ (delaunayC K) (UDelta K δ₁) ∧
      (∀ w : Phase 2, phaseToC w ∈ UDelta K δ₁ → delaunayC K (phaseToC w) = phaseToC (delaunay w))

open scoped Classical in
noncomputable def complexDelta (K : Set (Fin 2 → ℝ)) : ℝ :=
  if h : ∃ δ₁ : ℝ, ComplexDomainData K δ₁ then h.choose else 0

theorem complex_domain_spec {K : Set (Fin 2 → ℝ)} (hK : SafeAction K) :
    ComplexDomainData K (complexDelta K) := by sorry

open scoped Classical in
noncomputable def exactDelta (K : Set (Fin 2 → ℝ)) : ℝ :=
  if h : ∃ δ : ℝ, 0 < δ ∧ δ ≤ complexDelta K ∧ ExactHamData K δ
  then h.choose else 0

theorem exact_ham {K : Set (Fin 2 → ℝ)}
    (hK : SafeAction K) (hρ : kRhoMax K < 1) :
    0 < exactDelta K ∧ exactDelta K ≤ complexDelta K ∧
      ExactHamData K (exactDelta K) := by sorry
end KAM.Iso
```

The choice theorem still proves admissibility; it does not accept it as a premise. `ExactHamData` retains its six original conjuncts. An additional useful construction output, paid by the same proof, is:

```lean
namespace KAM.Iso
theorem exact_positions_mem_shiftO {K : Set (Fin 2 → ℝ)}
    (hK : SafeAction K) (hρ : kRhoMax K < 1) :
    ∀ w ∈ UDelta K (exactDelta K),
      (delaunayC K w).1 ∈ shiftO (kRmin K) (kRhoMax K) (exactEps K) := by sorry
end KAM.Iso
```

### C4 — full transfer output (F4)

Retain `transfer`'s existing solution-and-bounds result and add the exact missing source output, with the same hypotheses:

```lean
namespace KAM.Iso
theorem transfer_identities {K : Set (Fin 2 → ℝ)}
    (hK : SafeAction K) (hρ : kRhoMax K < 1)
    {B : Set (Fin 2 → ℝ)} (hB : ∀ I ∈ B, (fun i => I i / (2 * Real.pi)) ∈ K)
    {μ : ℝ} (hμ : |μ| < exactMu2 K) {J : Set ℝ} {zt : ℝ → KAM.Planetary.Phase 2}
    (hz : IsHamiltonianSolutionOn
      (KAM.realHamiltonian (keplerRotH ((2 * Real.pi) ^ 2) (1 / (2 * Real.pi)))
        (tildeF K μ)) B J zt) :
    ∀ t ∈ J,
      let w := periodOneMap (zt t)
      let z := KAM.Kepler.delaunay w
      KAM.Planetary.planeLength z.1 = w.2 0 ^ 2 *
        (1 - KAM.Kepler.eccOf (w.2 0) (w.2 1) *
          Real.cos (KAM.Kepler.eccAnom (w.1 0) (KAM.Kepler.eccOf (w.2 0) (w.2 1)))) ∧
      KAM.Kepler.elemL z = w.2 0 ∧
      KAM.Planetary.planeCross z.1 z.2 = w.2 1 ∧
      KAM.Kepler.elemA z = w.2 0 ^ 2 ∧
      KAM.Kepler.elemEcc z = KAM.Kepler.eccOf (w.2 0) (w.2 1) ∧
      ∃ hcf : CollisionFree μ z,
        restrictedHamiltonian μ ⟨z, hcf⟩ =
          KAM.realHamiltonian (keplerRotH ((2 * Real.pi) ^ 2) (1 / (2 * Real.pi)))
            (tildeF K μ) (zt t) := by sorry
end KAM.Iso
```

### C5 — fixed-Sun tube corollary (F4)

The finite-time fixed equations are exactly the output of existing `reconstruction_fixed`; add this derivative-plus-bounds form rather than invent a parallel fixed solution predicate:

```lean
namespace KAM.Planetary
theorem fixed_in_tube {n : ℕ} {G m0 ε : ℝ} {m a : Fin n → ℝ} {γ A ζ : ℝ}
    (h : AxisData a γ A) (hζ : 0 < ζ) (hζ' : ζ ≤ γ / 6)
    (hG : 0 < G) (hm0 : 0 < m0) (hm : ∀ i, 0 < m i)
    {J : Set ℝ} {z : ℝ → Phase (n * 2)}
    (hz : ∀ t ∈ J, z t ∈ circularTube G m0 m a ζ ∧
      HasDerivAt z (KAM.hamiltonianVectorField (fixedHamiltonian G m0 m ε) (z t)) t) :
    (∀ t ∈ J, NoCollision (z t).1) ∧
    (∀ t ∈ J, ∀ i,
      HasDerivAt (fun s => bodyVector (z s).1 i) ((1 / m i) • bodyVector (z t).2 i) t ∧
      HasDerivAt (fun s => (1 / m i) • bodyVector (z s).2 i)
        ((-G * m0 / planeLength (bodyVector (z t).1 i) ^ 3) • bodyVector (z t).1 i +
          ε • ∑ j ∈ Finset.univ.filter (fun j => j ≠ i),
            (G * m j / planeLength (bodyVector (z t).1 j - bodyVector (z t).1 i) ^ 3) •
              (bodyVector (z t).1 j - bodyVector (z t).1 i)) t) ∧
    (∀ t ∈ J, PairBounds (tubeD γ) (tubeBigD γ A)
      (Fin.cons (0 : Fin 2 → ℝ) (fun i => bodyVector (z t).1 i))) := by sorry
end KAM.Planetary
```

### C6 — additional source/interface coverage (no assertion that the existing partial lemmas are false)

The following unrepresented outputs should be assigned before declaring “every result node is covered.” They are source conclusions or promised interfaces, not extra assumptions for the existing results.

```lean
namespace KAM.Kepler
-- bpP:p7:kepler(a): finish the B6 interface for the mass chart.
theorem delaunayMK_localDiffeo {m κ : ℝ} (hm : 0 < m) (hκ : 0 < κ)
    {w : KAM.Planetary.Phase 2} (hw : w ∈ deDom) :
    ∃ φ : OpenPartialHomeomorph (KAM.Planetary.Phase 2) (KAM.Planetary.Phase 2),
      w ∈ φ.source ∧ (φ : KAM.Planetary.Phase 2 → KAM.Planetary.Phase 2) = delaunayMK m κ ∧
      AnalyticOnNhd ℝ φ.symm φ.target := by sorry

theorem delaunayMK_periodic {m κ : ℝ} (hm : 0 < m) (hκ : 0 < κ)
    {w : KAM.Planetary.Phase 2} (hw : w ∈ deDom) (k k' : ℤ) :
    delaunayMK m κ (w.1 + ![2 * Real.pi * k, 2 * Real.pi * k'], w.2) =
      delaunayMK m κ w := by sorry

-- bpI:p7:symplectic: the source explicitly includes this field/curve consequence.
theorem delaunay_hamiltonianVectorField {H : KAM.Planetary.Phase 2 → ℝ}
    {w : KAM.Planetary.Phase 2} (hw : w ∈ deDom)
    (hH : DifferentiableAt ℝ H (delaunay w)) :
    fderiv ℝ delaunay w (KAM.hamiltonianVectorField (H ∘ delaunay) w) =
      KAM.hamiltonianVectorField H (delaunay w) := by sorry

-- bpI:p7:orbit-maps-e: reality for arbitrary real k and nonzero real L,
-- not just the principal k=sqrt(1-e^2), positive-L specialization S451.
theorem orbitMapC_real {e₁ : ℝ} (h0 : 0 < e₁) (h1 : e₁ < 1)
    {x : Fin 5 → ℝ} (hL : x 2 ≠ 0) (he : |x 3| ≤ e₁) :
    (∀ i, ((orbitMapC e₁ (fun j => (x j : ℂ))).1 i).im = 0) ∧
    (∀ i, ((orbitMapC e₁ (fun j => (x j : ℂ))).2 i).im = 0) := by sorry
end KAM.Kepler

namespace KAM.Iso
-- bpI:p7:shift: the literal integral characterization omitted from Appendix A.
theorem shiftF_eq_integral {rmin ρmax ε₀ : ℝ} (h : ShiftConst rmin ρmax ε₀)
    {q : Fin 2 → ℂ} (hq : q ∈ shiftO rmin ρmax ε₀)
    {μ : ℂ} (hμ : ‖μ‖ < ε₀ / 2) :
    shiftF q μ = -∫ t in (0 : ℝ)..1, deriv (shiftPsi q) ((t : ℂ) * μ) := by sorry
end KAM.Iso
```

Also retain the source's Liouville primitive identity for `delaunay` (not only its exterior derivative), the near-circular witness uniqueness clause, and the scaling time-change corollary when marking those **whole source nodes** implemented. These can be companions to the current sound components. S417 is a valid differentiability helper, but **does not specify a single explicit Jacobian column**: it only says `HasFDerivAt delaunay (fderiv ... ) w`. The claimed explicit-column decomposition in D478–485/KEP-6 must be designed and assigned separately, not counted as already present. P7 product h-analyticity and frequency/Hessian entries likewise need their chart-level wrappers; `hasDerivAt_nu` is the derivative of the displayed frequency, not itself an equality identifying it with the frozen Hamiltonian field.

For the general-n carrier bridge, a concrete minimum target is a `phaseCast (h : d=e) : Phase d ≃L[ℝ] Phase e` whose two components reindex by `Fin.cast h.symm`, with the following signature family; substitute `h = (Nat.mul_two n).symm` to turn a block source into the physical-size carrier as required. Do not mix this cast with the body permutation already performed by `poincareProd`.

```lean
-- Proposed API after defining the literal `Fin.cast` continuous linear equivalence:
theorem phaseCast_symplectic {d e : ℕ} (h : d = e) :
    KAM.Kepler.IsSymplecticOn 1 (phaseCast h) Set.univ := by sorry

theorem phaseCast_volume {d e : ℕ} (h : d = e) (A : Set (KAM.Planetary.Phase d)) :
    MeasureTheory.volume ((phaseCast h) '' A) = MeasureTheory.volume A := by sorry
```

A direct heterogeneous chart-field API can instead avoid intermediate casts; it still needs an equal-dimension witness, forward differentiability, and the source/target frozen forms. Freeze that choice with Part 1. Generic composition of `IsSymplecticOn` must carry differentiability assumptions (particularly when a scale is zero); the definition alone is a statement about total `fderiv`, not an unqualified chain rule.

## Per-signature inventory

Names are fully qualified; `L` is the line in Appendix A/signatures at the pinned hash. Labels identify the source role; “helper” means the declaration is an explicitly auxiliary component of that node, not an independent replacement for the whole source statement. Rows marked FAIL are the advertised incomplete interfaces or the frozen-name conflict, with corrections C1–C5 above. Missing companions in C6 and F5–F7 are additional package/coverage obligations and are not disguised as present declarations.


### KAM.Kepler

| L | Lean name | Blueprint label / role | Verdict | Reason |
|---|---|---|---|---|
| 89 | `KAM.Kepler.rot` | `bpP:p6:plane / bpI:p7:sec-ext` | PASS | Frozen planar algebra/norm or rotation/calculus helper; physical length retained. |
| 93 | `KAM.Kepler.ex` | `bpP:p6:plane / bpI:p7:sec-ext` | PASS | Frozen planar algebra/norm or rotation/calculus helper; physical length retained. |
| 95 | `KAM.Kepler.planeSq_eq_planeDot` | `bpP:p6:plane / bpI:p7:sec-ext` | PASS | Frozen planar algebra/norm or rotation/calculus helper; physical length retained. |
| 96 | `KAM.Kepler.planeLength_sq` | `bpP:p6:plane / bpI:p7:sec-ext` | PASS | Frozen planar algebra/norm or rotation/calculus helper; physical length retained. |
| 97 | `KAM.Kepler.planeLength_nonneg` | `bpP:p6:plane / bpI:p7:sec-ext` | PASS | Frozen planar algebra/norm or rotation/calculus helper; physical length retained. |
| 98 | `KAM.Kepler.planeLength_eq_zero_iff` | `bpP:p6:plane / bpI:p7:sec-ext` | PASS | Frozen planar algebra/norm or rotation/calculus helper; physical length retained. |
| 99 | `KAM.Kepler.planeLength_pos_iff` | `bpP:p6:plane / bpI:p7:sec-ext` | PASS | Frozen planar algebra/norm or rotation/calculus helper; physical length retained. |
| 100 | `KAM.Kepler.planeLength_neg` | `bpP:p6:plane / bpI:p7:sec-ext` | PASS | Frozen planar algebra/norm or rotation/calculus helper; physical length retained. |
| 101 | `KAM.Kepler.planeLength_sub_comm` | `bpP:p6:plane / bpI:p7:sec-ext` | PASS | Frozen planar algebra/norm or rotation/calculus helper; physical length retained. |
| 102 | `KAM.Kepler.planeLength_smul` | `bpP:p6:plane / bpI:p7:sec-ext` | PASS | Frozen planar algebra/norm or rotation/calculus helper; physical length retained. |
| 103 | `KAM.Kepler.abs_planeDot_le` | `bpP:p6:plane / bpI:p7:sec-ext` | PASS | Frozen planar algebra/norm or rotation/calculus helper; physical length retained. |
| 104 | `KAM.Kepler.planeLength_add_le` | `bpP:p6:plane / bpI:p7:sec-ext` | PASS | Frozen planar algebra/norm or rotation/calculus helper; physical length retained. |
| 105 | `KAM.Kepler.abs_planeLength_sub_le` | `bpP:p6:plane / bpI:p7:sec-ext` | PASS | Frozen planar algebra/norm or rotation/calculus helper; physical length retained. |
| 107 | `KAM.Kepler.norm_le_planeLength` | `bpP:p6:plane / bpI:p7:sec-ext` | PASS | Frozen planar algebra/norm or rotation/calculus helper; physical length retained. |
| 108 | `KAM.Kepler.planeLength_le_sqrt_two_mul_norm` | `bpP:p6:plane / bpI:p7:sec-ext` | PASS | Frozen planar algebra/norm or rotation/calculus helper; physical length retained. |
| 110 | `KAM.Kepler.planeSq_mul_planeSq` | `bpP:p6:plane / bpI:p7:sec-ext` | PASS | Frozen planar algebra/norm or rotation/calculus helper; physical length retained. |
| 113 | `KAM.Kepler.eq_of_planeDot_planeCross_eq` | `bpP:p6:plane / bpI:p7:sec-ext` | PASS | Frozen planar algebra/norm or rotation/calculus helper; physical length retained. |
| 116 | `KAM.Kepler.planeLength_rot` | `bpP:p6:plane / bpI:p7:sec-ext` | PASS | Frozen planar algebra/norm or rotation/calculus helper; physical length retained. |
| 117 | `KAM.Kepler.planeDot_rot` | `bpP:p6:plane / bpI:p7:sec-ext` | PASS | Frozen planar algebra/norm or rotation/calculus helper; physical length retained. |
| 118 | `KAM.Kepler.planeCross_rot` | `bpP:p6:plane / bpI:p7:sec-ext` | PASS | Frozen planar algebra/norm or rotation/calculus helper; physical length retained. |
| 119 | `KAM.Kepler.rot_rot` | `bpP:p6:plane / bpI:p7:sec-ext` | PASS | Frozen planar algebra/norm or rotation/calculus helper; physical length retained. |
| 120 | `KAM.Kepler.rot_two_pi_int` | `bpP:p6:plane / bpI:p7:sec-ext` | PASS | Frozen planar algebra/norm or rotation/calculus helper; physical length retained. |
| 121 | `KAM.Kepler.rot_quarterTurn` | `bpP:p6:plane / bpI:p7:sec-ext` | PASS | Frozen planar algebra/norm or rotation/calculus helper; physical length retained. |
| 122 | `KAM.Kepler.rot_ex` | `bpP:p6:plane / bpI:p7:sec-ext` | PASS | Frozen planar algebra/norm or rotation/calculus helper; physical length retained. |
| 124 | `KAM.Kepler.exists_rot_eq` | `bpP:p6:plane / bpI:p7:sec-ext` | PASS | Frozen planar algebra/norm or rotation/calculus helper; physical length retained. |
| 127 | `KAM.Kepler.analyticAt_planeLength` | `bpP:p6:plane / bpI:p7:sec-ext` | PASS | Frozen planar algebra/norm or rotation/calculus helper; physical length retained. |
| 128 | `KAM.Kepler.analyticAt_inv_planeLength` | `bpP:p6:plane / bpI:p7:sec-ext` | PASS | Frozen planar algebra/norm or rotation/calculus helper; physical length retained. |
| 130 | `KAM.Kepler.analyticAt_inv_cube_smul` | `bpP:p6:plane / bpI:p7:sec-ext` | PASS | Frozen planar algebra/norm or rotation/calculus helper; physical length retained. |
| 133 | `KAM.Kepler.hasFDerivAt_planeLength` | `bpP:p6:plane / bpI:p7:sec-ext` | PASS | Frozen planar algebra/norm or rotation/calculus helper; physical length retained. |
| 137 | `KAM.Kepler.hasFDerivAt_inv_planeLength` | `bpP:p6:plane / bpI:p7:sec-ext` | PASS | Frozen planar algebra/norm or rotation/calculus helper; physical length retained. |
| 142 | `KAM.Kepler.iso_radius_eq` | `bpP:p6:plane / bpI:p7:sec-ext` | PASS | Frozen planar algebra/norm or rotation/calculus helper; physical length retained. |
| 143 | `KAM.Kepler.iso_radiusSq_eq` | `bpP:p6:plane / bpI:p7:sec-ext` | PASS | Frozen planar algebra/norm or rotation/calculus helper; physical length retained. |
| 152 | `KAM.Kepler.keplerPhi` | `bpP:p7:regular-kepler(a); bpP:p7:d25(b)` | PASS | Regular real inverse equation/derivative or explicit frozen longitude bridge; guarded by length<1 where needed. |
| 155 | `KAM.Kepler.keplerJac` | `bpP:p7:regular-kepler(a); bpP:p7:d25(b)` | PASS | Regular real inverse equation/derivative or explicit frozen longitude bridge; guarded by length<1 where needed. |
| 157 | `KAM.Kepler.keplerMeanLongitude_eq` | `bpP:p7:regular-kepler(a); bpP:p7:d25(b)` | PASS | Regular real inverse equation/derivative or explicit frozen longitude bridge; guarded by length<1 where needed. |
| 159 | `KAM.Kepler.longitudeJacobian_eq` | `bpP:p7:regular-kepler(a); bpP:p7:d25(b)` | PASS | Regular real inverse equation/derivative or explicit frozen longitude bridge; guarded by length<1 where needed. |
| 162 | `KAM.Kepler.hasDerivAt_keplerPhi` | `bpP:p7:regular-kepler(a); bpP:p7:d25(b)` | PASS | Regular real inverse equation/derivative or explicit frozen longitude bridge; guarded by length<1 where needed. |
| 163 | `KAM.Kepler.keplerPhi_shift` | `bpP:p7:regular-kepler(a); bpP:p7:d25(b)` | PASS | Regular real inverse equation/derivative or explicit frozen longitude bridge; guarded by length<1 where needed. |
| 164 | `KAM.Kepler.keplerPhi_zero` | `bpP:p7:regular-kepler(a); bpP:p7:d25(b)` | PASS | Regular real inverse equation/derivative or explicit frozen longitude bridge; guarded by length<1 where needed. |
| 165 | `KAM.Kepler.keplerJac_ge` | `bpP:p7:regular-kepler(a); bpP:p7:d25(b)` | PASS | Regular real inverse equation/derivative or explicit frozen longitude bridge; guarded by length<1 where needed. |
| 166 | `KAM.Kepler.keplerJac_pos` | `bpP:p7:regular-kepler(a); bpP:p7:d25(b)` | PASS | Regular real inverse equation/derivative or explicit frozen longitude bridge; guarded by length<1 where needed. |
| 167 | `KAM.Kepler.keplerPhi_strictMono` | `bpP:p7:regular-kepler(a); bpP:p7:d25(b)` | PASS | Regular real inverse equation/derivative or explicit frozen longitude bridge; guarded by length<1 where needed. |
| 168 | `KAM.Kepler.keplerPhi_bijective` | `bpP:p7:regular-kepler(a); bpP:p7:d25(b)` | PASS | Regular real inverse equation/derivative or explicit frozen longitude bridge; guarded by length<1 where needed. |
| 172 | `KAM.Kepler.keplerLong` | `bpP:p7:regular-kepler(a); bpP:p7:d25(b)` | PASS | Unique real inverse on length<1; default off that domain is never used by guarded consumers. |
| 176 | `KAM.Kepler.keplerPhi_keplerLong` | `bpP:p7:regular-kepler(a); bpP:p7:d25(b)` | PASS | Regular real inverse equation/derivative or explicit frozen longitude bridge; guarded by length<1 where needed. |
| 178 | `KAM.Kepler.keplerLong_unique` | `bpP:p7:regular-kepler(a); bpP:p7:d25(b)` | PASS | Regular real inverse equation/derivative or explicit frozen longitude bridge; guarded by length<1 where needed. |
| 180 | `KAM.Kepler.keplerLong_shift` | `bpP:p7:regular-kepler(a); bpP:p7:d25(b)` | PASS | Regular real inverse equation/derivative or explicit frozen longitude bridge; guarded by length<1 where needed. |
| 182 | `KAM.Kepler.keplerLong_zero_vec` | `bpP:p7:regular-kepler(a); bpP:p7:d25(b)` | PASS | Regular real inverse equation/derivative or explicit frozen longitude bridge; guarded by length<1 where needed. |
| 185 | `KAM.Kepler.analyticOnNhd_keplerLong` | `bpP:p7:regular-kepler(a); bpP:p7:d25(b)` | PASS | Regular real inverse equation/derivative or explicit frozen longitude bridge; guarded by length<1 where needed. |
| 187 | `KAM.Kepler.hasDerivAt_keplerLong_lambda` | `bpP:p7:regular-kepler(a); bpP:p7:d25(b)` | PASS | Regular real inverse equation/derivative or explicit frozen longitude bridge; guarded by length<1 where needed. |
| 190 | `KAM.Kepler.fderiv_keplerLong_vec` | `bpP:p7:regular-kepler(a); bpP:p7:d25(b)` | PASS | Regular real inverse equation/derivative or explicit frozen longitude bridge; guarded by length<1 where needed. |
| 197 | `KAM.Kepler.eccAnom` | `bpI:p7:kepler-eq(c)` | PASS | Real anomaly specialization; absolute eccentricity<1, with signed-e analyticity. |
| 199 | `KAM.Kepler.planeLength_eccVec` | `bpI:p7:kepler-eq(c)` | PASS | Real anomaly specialization; absolute eccentricity<1, with signed-e analyticity. |
| 201 | `KAM.Kepler.eccAnom_eq` | `bpI:p7:kepler-eq(c)` | PASS | Real anomaly specialization; absolute eccentricity<1, with signed-e analyticity. |
| 202 | `KAM.Kepler.analyticOnNhd_eccAnom` | `bpI:p7:kepler-eq(c)` | PASS | Real anomaly specialization; absolute eccentricity<1, with signed-e analyticity. |
| 203 | `KAM.Kepler.eccAnom_zero_left` | `bpI:p7:kepler-eq(c)` | PASS | Real anomaly specialization; absolute eccentricity<1, with signed-e analyticity. |
| 204 | `KAM.Kepler.eccAnom_two_pi` | `bpI:p7:kepler-eq(c)` | PASS | Real anomaly specialization; absolute eccentricity<1, with signed-e analyticity. |
| 205 | `KAM.Kepler.eccAnom_zero_ecc` | `bpI:p7:kepler-eq(c)` | PASS | Real anomaly specialization; absolute eccentricity<1, with signed-e analyticity. |
| 206 | `KAM.Kepler.hasDerivAt_eccAnom` | `bpI:p7:kepler-eq(c)` | PASS | Real anomaly specialization; absolute eccentricity<1, with signed-e analyticity. |
| 208 | `KAM.Kepler.strictMono_eccAnom` | `bpI:p7:kepler-eq(c)` | PASS | Real anomaly specialization; absolute eccentricity<1, with signed-e analyticity. |
| 210 | `KAM.Kepler.keplerLong_eq_add_eccAnom` | `bpP:p7:regular-kepler(c)` | PASS | Correct radian longitude/anomaly relation for positive eccentricity. |
| 216 | `KAM.Kepler.keplerOp` | `bpI:p7:kepler-eq; bpP:p7:regular-kepler(b) (helper)` | PASS | Scalar contraction operator/specification; quantitative coefficient data, no assumed source conclusion. |
| 220 | `KAM.Kepler.KeplerData` | `bpI:p7:kepler-eq; bpP:p7:regular-kepler(b) (helper)` | PASS | All fields are coefficient/strip/contraction data; no fixed point or holomorphic solution is assumed. |
| 234 | `KAM.Kepler.keplerSol` | `bpI:p7:kepler-eq; bpP:p7:regular-kepler(b) (helper)` | PASS | Strip-unique inverse selected when it exists; actual instances must discharge existence/uniqueness before use. |
| 238 | `KAM.Kepler.keplerSol_spec` | `bpI:p7:kepler-eq; bpP:p7:regular-kepler(b) (helper)` | PASS | Scalar contraction operator/specification; quantitative coefficient data, no assumed source conclusion. |
| 243 | `KAM.Kepler.keplerSol_differentiableOn` | `bpI:p7:kepler-eq; bpP:p7:regular-kepler(b) (helper)` | PASS | Scalar contraction operator/specification; quantitative coefficient data, no assumed source conclusion. |
| 247 | `KAM.Kepler.keplerSol_real` | `bpI:p7:kepler-eq; bpP:p7:regular-kepler(b) (helper)` | PASS | Valid auxiliary conjugation/uniqueness implication; hex is redundant with huniq, not a source-result replacement. |
| 251 | `KAM.Kepler.keplerSol_shift` | `bpI:p7:kepler-eq; bpP:p7:regular-kepler(b) (helper)` | PASS | Valid auxiliary uniqueness/translation implication; source instances prove uniqueness via the contraction. |
| 255 | `KAM.Kepler.regularTube` | `bpP:p7:regular-kepler(b)` | PASS | Correct regular complex tube/solution or guarded real/periodic/lambda-derivative component. |
| 257 | `KAM.Kepler.keplerLongC` | `bpP:p7:regular-kepler(b)` | PASS | Correct regular complex tube/solution or guarded real/periodic/lambda-derivative component. |
| 259 | `KAM.Kepler.regularKepler_complex` | `bpP:p7:regular-kepler(b)` | FAIL | FAIL: advertised full complex result omits vector derivatives and quantitative Jacobian bound; add C2 companions. |
| 265 | `KAM.Kepler.keplerLongC_ofReal` | `bpP:p7:regular-kepler(b)` | PASS | Correct regular complex tube/solution or guarded real/periodic/lambda-derivative component. |
| 268 | `KAM.Kepler.keplerLongC_shift` | `bpP:p7:regular-kepler(b)` | PASS | Correct regular complex tube/solution or guarded real/periodic/lambda-derivative component. |
| 271 | `KAM.Kepler.hasDerivAt_keplerLongC_lambda` | `bpP:p7:regular-kepler(b)` | PASS | Correct regular complex tube/solution or guarded real/periodic/lambda-derivative component. |
| 278 | `KAM.Kepler.keplerE2` | `bpI:p7:kepler-eq` | PASS | Matches arcosh thin-tube constants, strip specification, bounds or guarded anomaly component. |
| 279 | `KAM.Kepler.keplerTheta` | `bpI:p7:kepler-eq` | PASS | Matches arcosh thin-tube constants, strip specification, bounds or guarded anomaly component. |
| 280 | `KAM.Kepler.keplerY0` | `bpI:p7:kepler-eq` | PASS | Matches arcosh thin-tube constants, strip specification, bounds or guarded anomaly component. |
| 281 | `KAM.Kepler.keplerDeltaK` | `bpI:p7:kepler-eq` | PASS | Matches arcosh thin-tube constants, strip specification, bounds or guarded anomaly component. |
| 282 | `KAM.Kepler.keplerDeltaE` | `bpI:p7:kepler-eq` | PASS | Matches arcosh thin-tube constants, strip specification, bounds or guarded anomaly component. |
| 285 | `KAM.Kepler.keplerTube` | `bpI:p7:kepler-eq` | PASS | Matches arcosh thin-tube constants, strip specification, bounds or guarded anomaly component. |
| 289 | `KAM.Kepler.eccAnomC` | `bpI:p7:kepler-eq` | PASS | Matches arcosh thin-tube constants, strip specification, bounds or guarded anomaly component. |
| 291 | `KAM.Kepler.keplerConstants_pos` | `bpI:p7:kepler-eq` | PASS | Matches arcosh thin-tube constants, strip specification, bounds or guarded anomaly component. |
| 295 | `KAM.Kepler.keplerEq_tube` | `bpI:p7:kepler-eq` | FAIL | FAIL: family omits the complex eccentricity derivative explicitly required by the source; add C2 companion. |
| 304 | `KAM.Kepler.keplerTube_real_points` | `bpI:p7:kepler-eq` | PASS | Matches arcosh thin-tube constants, strip specification, bounds or guarded anomaly component. |
| 306 | `KAM.Kepler.eccAnomC_periodic` | `bpI:p7:kepler-eq` | PASS | Matches arcosh thin-tube constants, strip specification, bounds or guarded anomaly component. |
| 309 | `KAM.Kepler.eccAnomC_zero_ecc` | `bpI:p7:kepler-eq` | PASS | Matches arcosh thin-tube constants, strip specification, bounds or guarded anomaly component. |
| 311 | `KAM.Kepler.hasDerivAt_eccAnomC_ell` | `bpI:p7:kepler-eq` | PASS | Matches arcosh thin-tube constants, strip specification, bounds or guarded anomaly component. |
| 324 | `KAM.Kepler.IsSymplecticOn` | `bpI:p7:symplectic / bpP:p1:chart (helper)` | PASS | Literal frozen-form pullback equality, heterogeneous dimensions allowed; composition API must supply differentiability. |
| 329 | `KAM.Kepler.phaseToC` | `bpI:p7:symplectic / bpP:p1:chart (helper)` | PASS | Uses frozen form on source/target Pi products; complexification is entrywise. |
| 333 | `KAM.Kepler.eccOf` | `bpI:p7:orbit-maps` | PASS | Literal ellipse/orbit chart formula; cone and eccentricity conventions match. |
| 336 | `KAM.Kepler.kE` | `bpI:p7:orbit-maps` | PASS | Literal ellipse/orbit chart formula; cone and eccentricity conventions match. |
| 339 | `KAM.Kepler.orbitFrame` | `bpI:p7:orbit-maps` | PASS | Literal ellipse/orbit chart formula; cone and eccentricity conventions match. |
| 344 | `KAM.Kepler.orbitMapR` | `bpI:p7:orbit-maps` | PASS | Literal ellipse/orbit chart formula; cone and eccentricity conventions match. |
| 348 | `KAM.Kepler.deDom` | `bpI:p7:orbit-maps` | PASS | Literal ellipse/orbit chart formula; cone and eccentricity conventions match. |
| 351 | `KAM.Kepler.delaunay` | `bpI:p7:orbit-maps` | PASS | Literal ellipse/orbit chart formula; cone and eccentricity conventions match. |
| 354 | `KAM.Kepler.keplerRegion` | `bpI:p7:elements / bpI:p7:orbit-maps` | PASS | Correct noncircular prograde region, elements or open-domain helper. |
| 358 | `KAM.Kepler.elemL` | `bpI:p7:elements / bpI:p7:orbit-maps` | PASS | Correct noncircular prograde region, elements or open-domain helper. |
| 359 | `KAM.Kepler.elemA` | `bpI:p7:elements / bpI:p7:orbit-maps` | PASS | Correct noncircular prograde region, elements or open-domain helper. |
| 360 | `KAM.Kepler.elemEcc` | `bpI:p7:elements / bpI:p7:orbit-maps` | PASS | Correct noncircular prograde region, elements or open-domain helper. |
| 362 | `KAM.Kepler.isOpen_keplerRegion` | `bpI:p7:elements / bpI:p7:orbit-maps` | PASS | Correct noncircular prograde region, elements or open-domain helper. |
| 363 | `KAM.Kepler.isOpen_deDom` | `bpI:p7:elements / bpI:p7:orbit-maps` | PASS | Correct noncircular prograde region, elements or open-domain helper. |
| 368 | `KAM.Kepler.orbitMapR_radius` | `bpI:p7:orbit-identities; bpI:p7:circular` | PASS | Correct orbit-frame identity/analyticity, including e=0 without asserting noncircular membership. |
| 370 | `KAM.Kepler.orbitMapR_radius_bounds` | `bpI:p7:orbit-identities; bpI:p7:circular` | PASS | Correct orbit-frame identity/analyticity, including e=0 without asserting noncircular membership. |
| 373 | `KAM.Kepler.orbitMapR_speed_sq` | `bpI:p7:orbit-identities; bpI:p7:circular` | PASS | Correct orbit-frame identity/analyticity, including e=0 without asserting noncircular membership. |
| 376 | `KAM.Kepler.orbitMapR_cross` | `bpI:p7:orbit-identities; bpI:p7:circular` | PASS | Correct orbit-frame identity/analyticity, including e=0 without asserting noncircular membership. |
| 378 | `KAM.Kepler.orbitMapR_dot` | `bpI:p7:orbit-identities; bpI:p7:circular` | PASS | Correct orbit-frame identity/analyticity, including e=0 without asserting noncircular membership. |
| 380 | `KAM.Kepler.orbitMapR_energy` | `bpI:p7:orbit-identities; bpI:p7:circular` | PASS | Correct orbit-frame identity/analyticity, including e=0 without asserting noncircular membership. |
| 383 | `KAM.Kepler.orbitMapR_radial` | `bpI:p7:orbit-identities; bpI:p7:circular` | PASS | Correct orbit-frame identity/analyticity, including e=0 without asserting noncircular membership. |
| 388 | `KAM.Kepler.orbitMapR_periodic` | `bpI:p7:orbit-identities; bpI:p7:circular` | PASS | Correct orbit-frame identity/analyticity, including e=0 without asserting noncircular membership. |
| 390 | `KAM.Kepler.analyticOnNhd_orbitMapR` | `bpI:p7:orbit-identities; bpI:p7:circular` | PASS | Correct orbit-frame identity/analyticity, including e=0 without asserting noncircular membership. |
| 396 | `KAM.Kepler.delaunay_mem_region` | `bpI:p7:orbit-identities / bpI:p7:chart` | PASS | Guarded noncircular Delaunay elements, domain or analytic helper. |
| 397 | `KAM.Kepler.delaunay_elements` | `bpI:p7:orbit-identities / bpI:p7:chart` | PASS | Guarded noncircular Delaunay elements, domain or analytic helper. |
| 400 | `KAM.Kepler.orbitMapR_eq_delaunay` | `bpI:p7:orbit-identities / bpI:p7:chart` | PASS | Guarded noncircular Delaunay elements, domain or analytic helper. |
| 402 | `KAM.Kepler.analyticOnNhd_delaunay` | `bpI:p7:orbit-identities / bpI:p7:chart` | PASS | Guarded noncircular Delaunay elements, domain or analytic helper. |
| 403 | `KAM.Kepler.eccOf_mem_Ioo` | `bpI:p7:orbit-identities / bpI:p7:chart` | PASS | Guarded noncircular Delaunay elements, domain or analytic helper. |
| 407 | `KAM.Kepler.delaunay_hamiltonian` | `bpI:p7:h0` | PASS | Correct rotating Kepler Hamiltonian, energy minus angular momentum. |
| 412 | `KAM.Kepler.delaunay_symplectic` | `bpI:p7:symplectic` | PASS | Frozen-form symplecticity/invertibility or differentiability helper; see C6 for missing primitive/field interface. |
| 413 | `KAM.Kepler.delaunay_fderiv_equiv` | `bpI:p7:symplectic` | PASS | Frozen-form symplecticity/invertibility or differentiability helper; see C6 for missing primitive/field interface. |
| 417 | `KAM.Kepler.delaunay_hasFDerivAt` | `bpI:p7:symplectic` | PASS | True differentiability helper, but not the promised explicit Jacobian columns; KEP-6 decomposition remains to specify. |
| 422 | `KAM.Kepler.delaunay_periodic` | `bpI:p7:chart` | PASS | B6 component: lattice, onto or local analytic inverse; combined with forward analyticity is adequate. |
| 424 | `KAM.Kepler.delaunay_eq_iff` | `bpI:p7:chart` | PASS | B6 component: lattice, onto or local analytic inverse; combined with forward analyticity is adequate. |
| 427 | `KAM.Kepler.keplerRegion_subset_image` | `bpI:p7:chart` | PASS | B6 component: lattice, onto or local analytic inverse; combined with forward analyticity is adequate. |
| 428 | `KAM.Kepler.delaunay_localDiffeo` | `bpI:p7:chart` | PASS | B6 component: lattice, onto or local analytic inverse; combined with forward analyticity is adequate. |
| 433 | `KAM.Kepler.orbitMapC` | `bpI:p7:orbit-maps-e` | PASS | Correct holomorphic five-parameter formula/domain or component; generalized real-k output still needed (C6). |
| 442 | `KAM.Kepler.orbitDomC` | `bpI:p7:orbit-maps-e` | PASS | Correct holomorphic five-parameter formula/domain or component; generalized real-k output still needed (C6). |
| 446 | `KAM.Kepler.orbitMapC_differentiableOn` | `bpI:p7:orbit-maps-e` | PASS | Correct holomorphic five-parameter formula/domain or component; generalized real-k output still needed (C6). |
| 448 | `KAM.Kepler.orbitMapC_periodic` | `bpI:p7:orbit-maps-e` | PASS | Correct holomorphic five-parameter formula/domain or component; generalized real-k output still needed (C6). |
| 451 | `KAM.Kepler.orbitMapC_ofReal` | `bpI:p7:orbit-maps-e` | PASS | Correct holomorphic five-parameter formula/domain or component; generalized real-k output still needed (C6). |
| 455 | `KAM.Kepler.orbitDomC_mem_ofReal` | `bpI:p7:orbit-maps-e` | PASS | Correct holomorphic five-parameter formula/domain or component; generalized real-k output still needed (C6). |
| 460 | `KAM.Kepler.orbitMapR_mean_inv_radius` | `bpI:p7:means; bpI:p7:circular` | PASS | Correct mean-anomaly averages and circular endpoint with physical planar length. |
| 462 | `KAM.Kepler.orbitMapR_mean_speed_sq` | `bpI:p7:means; bpI:p7:circular` | PASS | Correct mean-anomaly averages and circular endpoint with physical planar length. |
| 464 | `KAM.Kepler.orbitMapR_mean_radius` | `bpI:p7:means; bpI:p7:circular` | PASS | Correct mean-anomaly averages and circular endpoint with physical planar length. |
| 470 | `KAM.Kepler.scaleMK` | `bpI:p7:scaling; bpP:p7:kepler-data` | PASS | Correct mass/strength dictionary, conformal factor m and total explicit formulas. |
| 472 | `KAM.Kepler.energyMK` | `bpI:p7:scaling; bpP:p7:kepler-data` | PASS | Correct mass/strength dictionary, conformal factor m and total explicit formulas. |
| 473 | `KAM.Kepler.axisMK` | `bpI:p7:scaling; bpP:p7:kepler-data` | PASS | Correct mass/strength dictionary, conformal factor m and total explicit formulas. |
| 474 | `KAM.Kepler.actionMK` | `bpI:p7:scaling; bpP:p7:kepler-data` | PASS | Correct mass/strength dictionary, conformal factor m and total explicit formulas. |
| 476 | `KAM.Kepler.regionMK` | `bpI:p7:scaling; bpP:p7:kepler-data` | PASS | Correct mass/strength dictionary, conformal factor m and total explicit formulas. |
| 479 | `KAM.Kepler.delaunayMK` | `bpI:p7:scaling; bpP:p7:kepler-data` | PASS | Correct mass/strength dictionary, conformal factor m and total explicit formulas. |
| 481 | `KAM.Kepler.isOpen_regionMK` | `bpI:p7:scaling; bpP:p7:kepler-data` | PASS | Correct mass/strength dictionary, conformal factor m and total explicit formulas. |
| 482 | `KAM.Kepler.scaleMK_energy` | `bpI:p7:scaling; bpP:p7:kepler-data` | PASS | Correct mass/strength dictionary, conformal factor m and total explicit formulas. |
| 484 | `KAM.Kepler.scaleMK_cross` | `bpI:p7:scaling; bpP:p7:kepler-data` | PASS | Correct mass/strength dictionary, conformal factor m and total explicit formulas. |
| 486 | `KAM.Kepler.scaleMK_symplectic` | `bpI:p7:scaling; bpP:p7:kepler-data` | PASS | Correct mass/strength dictionary, conformal factor m and total explicit formulas. |
| 487 | `KAM.Kepler.scaleMK_bijective` | `bpI:p7:scaling; bpP:p7:kepler-data` | PASS | Correct mass/strength dictionary, conformal factor m and total explicit formulas. |
| 489 | `KAM.Kepler.cross_le_action` | `bpP:p7:range` | PASS | Correct pointwise range/equality characterization under prograde bound-region guard. |
| 491 | `KAM.Kepler.cross_eq_action_iff` | `bpP:p7:range` | PASS | Correct pointwise range/equality characterization under prograde bound-region guard. |
| 495 | `KAM.Kepler.delaunayMK_symplectic` | `bpP:p7:kepler` | PASS | Correct mass Delaunay component; means include circular endpoint; missing mass local inverse is C6. |
| 496 | `KAM.Kepler.analyticOnNhd_delaunayMK` | `bpP:p7:kepler` | PASS | Correct mass Delaunay component; means include circular endpoint; missing mass local inverse is C6. |
| 497 | `KAM.Kepler.delaunayMK_image` | `bpP:p7:kepler` | PASS | Correct mass Delaunay component; means include circular endpoint; missing mass local inverse is C6. |
| 499 | `KAM.Kepler.delaunayMK_eq_iff` | `bpP:p7:kepler` | PASS | Correct mass Delaunay component; means include circular endpoint; missing mass local inverse is C6. |
| 503 | `KAM.Kepler.delaunayMK_identities` | `bpP:p7:kepler` | PASS | Correct mass Delaunay component; means include circular endpoint; missing mass local inverse is C6. |
| 510 | `KAM.Kepler.delaunayMK_position` | `bpP:p7:kepler` | PASS | Correct mass Delaunay component; means include circular endpoint; missing mass local inverse is C6. |
| 514 | `KAM.Kepler.hasDerivAt_keplerEnergy_action` | `bpP:p7:kepler` | PASS | Correct mass Delaunay component; means include circular endpoint; missing mass local inverse is C6. |
| 517 | `KAM.Kepler.delaunayMK_means` | `bpP:p7:kepler` | PASS | Correct mass Delaunay component; means include circular endpoint; missing mass local inverse is C6. |
| 524 | `KAM.Kepler.energyMK_eq_mul_energy` | `bpI:p7:scaling` | PASS | Correct mass dictionary or frozen-field naturality for the linear strength scaling. |
| 526 | `KAM.Kepler.scaleMK_hamiltonianVectorField` | `bpI:p7:scaling` | PASS | Correct mass dictionary or frozen-field naturality for the linear strength scaling. |

### KAM.Iso

| L | Lean name | Blueprint label / role | Verdict | Reason |
|---|---|---|---|---|
| 544 | `KAM.Iso.keplerRotH` | `bpI:p6:kep-ham / bpI:p6:kep-border` | PASS | Literal complex Kepler Hamiltonian or reindex helper; reality extends through total division. |
| 547 | `KAM.Iso.finThreeEquivSumUnit` | `bpI:p6:kep-ham / bpI:p6:kep-border` | PASS | Literal complex Kepler Hamiltonian or reindex helper; reality extends through total division. |
| 550 | `KAM.Iso.differentiableOn_keplerRotH` | `bpI:p6:kep-ham / bpI:p6:kep-border` | PASS | Literal complex Kepler Hamiltonian or reindex helper; reality extends through total division. |
| 551 | `KAM.Iso.keplerRotH_real` | `bpI:p6:kep-ham / bpI:p6:kep-border` | PASS | Literal complex Kepler Hamiltonian or reindex helper; reality extends through total division. |
| 555 | `KAM.Iso.frequencyMap_keplerRotH` | `bpI:p6:kep-border` | PASS | Correct frozen frequency/bordered-Hessian entries and determinant; positivity of first action retained. |
| 557 | `KAM.Iso.fderiv_frequencyMap_keplerRotH` | `bpI:p6:kep-border` | PASS | Correct frozen frequency/bordered-Hessian entries and determinant; positivity of first action retained. |
| 560 | `KAM.Iso.borderedHessian_keplerRotH` | `bpI:p6:kep-border` | PASS | Correct frozen frequency/bordered-Hessian entries and determinant; positivity of first action retained. |
| 563 | `KAM.Iso.det_borderedHessian_keplerRotH` | `bpI:p6:kep-border` | PASS | Correct frozen frequency/bordered-Hessian entries and determinant; positivity of first action retained. |
| 567 | `KAM.Iso.periodOneMap` | `bpI:p6:conversion-map` | PASS | Angles multiply by 2pi and actions divide by 2pi; both real and complex carriers. |
| 568 | `KAM.Iso.periodOneMapC` | `bpI:p6:conversion-map` | PASS | Angles multiply by 2pi and actions divide by 2pi; both real and complex carriers. |
| 572 | `KAM.Iso.periodOneMap_symplectic` | `bpI:p6:conversion` | PASS | Correct symplectic/field/curve or converted Hamiltonian/frequency/matrix identity. |
| 573 | `KAM.Iso.periodOneMap_hamiltonianVectorField` | `bpI:p6:conversion` | PASS | Correct symplectic/field/curve or converted Hamiltonian/frequency/matrix identity. |
| 576 | `KAM.Iso.periodOneMap_hasDerivAt_iff` | `bpI:p6:conversion` | PASS | Correct symplectic/field/curve or converted Hamiltonian/frequency/matrix identity. |
| 582 | `KAM.Iso.keplerRotH_comp_div` | `bpI:p6:conversion` | PASS | Unconditional total-field identity; at I0=0 the Kepler reciprocal term is zero on both sides (linear term remains). |
| 585 | `KAM.Iso.frequencyMap_comp_div` | `bpI:p6:conversion` | PASS | Correct symplectic/field/curve or converted Hamiltonian/frequency/matrix identity. |
| 591 | `KAM.Iso.keplerBorder_conversion` | `bpI:p6:conversion` | PASS | Correct symplectic/field/curve or converted Hamiltonian/frequency/matrix identity. |
| 595 | `KAM.Iso.borderedHessian_conversion` | `bpI:p6:conversion` | PASS | Correct symplectic/field/curve or converted Hamiltonian/frequency/matrix identity. |
| 602 | `KAM.Iso.nondeg_period_one` | `bpI:p6:nondeg` | PASS | Action-neighbourhood guard ensures positive real first action and nondegeneracy. |
| 618 | `KAM.Iso.restrictedHamTotal` | `bpI:p7:ham-eq` | PASS | Literal total extension with explicit frozen subtype/field/solution bridge and collision guard. |
| 622 | `KAM.Iso.restrictedHamiltonian_eq` | `bpI:p7:ham-eq` | PASS | Literal total extension with explicit frozen subtype/field/solution bridge and collision guard. |
| 624 | `KAM.Iso.isOpen_collisionFree` | `bpI:p7:ham-eq` | PASS | Literal total extension with explicit frozen subtype/field/solution bridge and collision guard. |
| 626 | `KAM.Iso.analyticOnNhd_restrictedHamTotal` | `bpI:p7:ham-eq` | PASS | Literal total extension with explicit frozen subtype/field/solution bridge and collision guard. |
| 628 | `KAM.Iso.restrictedVectorField_eq_hamiltonian` | `bpI:p7:ham-eq` | PASS | Literal total extension with explicit frozen subtype/field/solution bridge and collision guard. |
| 630 | `KAM.Iso.isRestrictedSolutionOn_iff` | `bpI:p7:ham-eq` | PASS | Literal total extension with explicit frozen subtype/field/solution bridge and collision guard. |
| 634 | `KAM.Iso.restricted_newton_iff` | `bpI:p7:newton` | PASS | Pointwise inertial/rotating equivalence uses independent velocity and two-sided derivatives. |
| 643 | `KAM.Iso.restrictedHamTotal_zero` | `bpI:p7:h0` | PASS | Total mu=0 identity holds, including the zero-coefficient secondary term. |
| 646 | `KAM.Iso.nearCircular_eq` | `bpI:p7:near-circular` | PASS | Frozen set equality/image/open/nonempty component; witness uniqueness needs companion for full node. |
| 649 | `KAM.Iso.nearCircular_eq_image` | `bpI:p7:near-circular` | PASS | Frozen set equality/image/open/nonempty component; witness uniqueness needs companion for full node. |
| 653 | `KAM.Iso.isOpen_nearCircular` | `bpI:p7:near-circular` | PASS | Frozen set equality/image/open/nonempty component; witness uniqueness needs companion for full node. |
| 654 | `KAM.Iso.nearCircular_nonempty_iff` | `bpI:p7:near-circular` | PASS | Frozen set equality/image/open/nonempty component; witness uniqueness needs companion for full node. |
| 663 | `KAM.Iso.vtheta` | `bpI:p7:shift-def` | PASS | Correct principal-branch potential and signed divided difference, with explicit positivity domain. |
| 665 | `KAM.Iso.clen` | `bpI:p7:shift-def` | PASS | Correct principal-branch potential and signed divided difference, with explicit positivity domain. |
| 667 | `KAM.Iso.e0` | `bpI:p7:shift-def` | PASS | Correct principal-branch potential and signed divided difference, with explicit positivity domain. |
| 669 | `KAM.Iso.shiftW` | `bpI:p7:shift-def` | PASS | Correct principal-branch potential and signed divided difference, with explicit positivity domain. |
| 671 | `KAM.Iso.shiftPsi` | `bpI:p7:shift-def` | PASS | Correct principal-branch potential and signed divided difference, with explicit positivity domain. |
| 674 | `KAM.Iso.shiftF` | `bpI:p7:shift-def` | PASS | Correct principal-branch potential and signed divided difference, with explicit positivity domain. |
| 676 | `KAM.Iso.shiftXi` | `bpI:p7:shift-def` | PASS | Correct principal-branch potential and signed divided difference, with explicit positivity domain. |
| 680 | `KAM.Iso.ShiftConst` | `bpI:p7:shift` | PASS | Exactly source shell/sign/smallness conditions; no analyticity or exactness conclusion is assumed. |
| 688 | `KAM.Iso.shiftEps` | `bpI:p7:shift` | PASS | Source smallness/constants or guarded analytic/exact/bound/real component; integral identity is C6. |
| 689 | `KAM.Iso.shiftCstar` | `bpI:p7:shift` | PASS | Source smallness/constants or guarded analytic/exact/bound/real component; integral identity is C6. |
| 690 | `KAM.Iso.shiftCsh` | `bpI:p7:shift` | PASS | Source smallness/constants or guarded analytic/exact/bound/real component; integral identity is C6. |
| 692 | `KAM.Iso.shiftO` | `bpI:p7:shift` | PASS | Source smallness/constants or guarded analytic/exact/bound/real component; integral identity is C6. |
| 695 | `KAM.Iso.shiftConst_shiftEps` | `bpI:p7:shift` | PASS | Source smallness/constants or guarded analytic/exact/bound/real component; integral identity is C6. |
| 698 | `KAM.Iso.shift_domain` | `bpI:p7:shift` | PASS | Source smallness/constants or guarded analytic/exact/bound/real component; integral identity is C6. |
| 703 | `KAM.Iso.shift_holomorphic` | `bpI:p7:shift` | PASS | Source smallness/constants or guarded analytic/exact/bound/real component; integral identity is C6. |
| 706 | `KAM.Iso.shift_mul_eq` | `bpI:p7:shift` | PASS | Source smallness/constants or guarded analytic/exact/bound/real component; integral identity is C6. |
| 709 | `KAM.Iso.shift_bound` | `bpI:p7:shift` | PASS | Source smallness/constants or guarded analytic/exact/bound/real component; integral identity is C6. |
| 712 | `KAM.Iso.shift_value_zero` | `bpI:p7:shift` | PASS | Source smallness/constants or guarded analytic/exact/bound/real component; integral identity is C6. |
| 715 | `KAM.Iso.shift_real` | `bpI:p7:shift` | PASS | Source smallness/constants or guarded analytic/exact/bound/real component; integral identity is C6. |
| 728 | `KAM.Iso.SafeAction` | `bpI:p7:sec-complex / bpI:p7:complex-domain` | PASS | Exactly compact, nonempty actions in 0<G<L; independent standing data. |
| 733 | `KAM.Iso.kEccMin` | `bpI:p7:sec-complex / bpI:p7:complex-domain` | PASS | Compact safe-action data, extrema, principal eccentricity and complex chart formulas. |
| 734 | `KAM.Iso.kEccMax` | `bpI:p7:sec-complex / bpI:p7:complex-domain` | PASS | Compact safe-action data, extrema, principal eccentricity and complex chart formulas. |
| 735 | `KAM.Iso.kLMin` | `bpI:p7:sec-complex / bpI:p7:complex-domain` | PASS | Compact safe-action data, extrema, principal eccentricity and complex chart formulas. |
| 736 | `KAM.Iso.kGMin` | `bpI:p7:sec-complex / bpI:p7:complex-domain` | PASS | Compact safe-action data, extrema, principal eccentricity and complex chart formulas. |
| 737 | `KAM.Iso.kRmin` | `bpI:p7:sec-complex / bpI:p7:complex-domain` | PASS | Compact safe-action data, extrema, principal eccentricity and complex chart formulas. |
| 738 | `KAM.Iso.kRhoMax` | `bpI:p7:sec-complex / bpI:p7:complex-domain` | PASS | Compact safe-action data, extrema, principal eccentricity and complex chart formulas. |
| 740 | `KAM.Iso.SafeAction.ecc_bounds` | `bpI:p7:sec-complex / bpI:p7:complex-domain` | PASS | Compact safe-action data, extrema, principal eccentricity and complex chart formulas. |
| 744 | `KAM.Iso.eccC` | `bpI:p7:sec-complex / bpI:p7:complex-domain` | PASS | Compact safe-action data, extrema, principal eccentricity and complex chart formulas. |
| 746 | `KAM.Iso.UDelta` | `bpI:p7:sec-complex / bpI:p7:complex-domain` | PASS | Compact safe-action data, extrema, principal eccentricity and complex chart formulas. |
| 749 | `KAM.Iso.delaunayC` | `bpI:p7:sec-complex / bpI:p7:complex-domain` | PASS | Compact safe-action data, extrema, principal eccentricity and complex chart formulas. |
| 754 | `KAM.Iso.complex_domain` | `bpI:p7:complex-domain` | PASS | Uniform complex-domain controls with every nearby safe point, a valid strengthening of nearest-point wording. |
| 769 | `KAM.Iso.exactF` | `bpI:p7:exact-ham` | PASS | Exact displaced-primary perturbation or selection/output definition; admissibility must be proved, not assumed. |
| 771 | `KAM.Iso.exactEps` | `bpI:p7:exact-ham` | PASS | Exact displaced-primary perturbation or selection/output definition; admissibility must be proved, not assumed. |
| 772 | `KAM.Iso.exactMu2` | `bpI:p7:exact-ham` | PASS | Exact displaced-primary perturbation or selection/output definition; admissibility must be proved, not assumed. |
| 773 | `KAM.Iso.exactCF` | `bpI:p7:exact-ham` | PASS | Exact displaced-primary perturbation or selection/output definition; admissibility must be proved, not assumed. |
| 776 | `KAM.Iso.ExactHamData` | `bpI:p7:exact-ham` | PASS | Correct explicit output predicate for clauses (i)-(iv), not an accepted theorem premise; radius relation still missing (F3). |
| 792 | `KAM.Iso.exactDelta` | `bpI:p7:exact-ham` | FAIL | FAIL: choice predicate does not subordinate radius to a selected complex-domain witness; use C3. |
| 796 | `KAM.Iso.exact_ham` | `bpI:p7:exact-ham` | FAIL | FAIL: full radius conclusion delta2<=delta1 absent; add selected-witness bound as in C3. |
| 804 | `KAM.Iso.tildeF` | `bpI:p7:period-one` | PASS | Correct exact mu-weighted perturbation under symplectic period-one conversion. |
| 808 | `KAM.Iso.delaunay_periodOne_symplectic` | `bpI:p7:period-one(d)` | PASS | Correct factor-one composition on the pullback of the noncircular cone. |
| 812 | `KAM.Iso.period_one` | `bpI:p7:period-one` | PASS | Correct frozen strip/action-neighbourhood, real Hamiltonian and periodicity output; no admissibility premise. |
| 834 | `KAM.Iso.transfer` | `bpI:p7:transfer` | FAIL | FAIL: full source radius equality, elements and physical-energy agreement are omitted; add C4. |
| 845 | `KAM.Iso.nondeg_exact` | `bpI:p7:nondeg` | PASS | Correct determinant value and positive action on the chosen real action neighbourhood. |

### KAM.Planetary

| L | Lean name | Blueprint label / role | Verdict | Reason |
|---|---|---|---|---|
| 867 | `KAM.Planetary.collisionFreeDomain` | `bpP:p6:domain / bpP:p6:ext-chain` | PASS | Frozen collision domain and inverse body packing or analytic/differentiability helper. |
| 870 | `KAM.Planetary.ofBodies` | `bpP:p6:domain / bpP:p6:ext-chain` | PASS | Frozen collision domain and inverse body packing or analytic/differentiability helper. |
| 872 | `KAM.Planetary.bodyVector_ofBodies` | `bpP:p6:domain / bpP:p6:ext-chain` | PASS | Frozen collision domain and inverse body packing or analytic/differentiability helper. |
| 873 | `KAM.Planetary.ofBodies_bodyVector` | `bpP:p6:domain / bpP:p6:ext-chain` | PASS | Frozen collision domain and inverse body packing or analytic/differentiability helper. |
| 877 | `KAM.Planetary.isOpen_collisionFreeDomain` | `bpP:p6:domain / bpP:p6:ext-chain` | PASS | Frozen collision domain and inverse body packing or analytic/differentiability helper. |
| 878 | `KAM.Planetary.analyticOnNhd_movingHamiltonian` | `bpP:p6:domain / bpP:p6:ext-chain` | PASS | Frozen collision domain and inverse body packing or analytic/differentiability helper. |
| 880 | `KAM.Planetary.analyticOnNhd_fixedHamiltonian` | `bpP:p6:domain / bpP:p6:ext-chain` | PASS | Frozen collision domain and inverse body packing or analytic/differentiability helper. |
| 882 | `KAM.Planetary.differentiableAt_movingHamiltonian` | `bpP:p6:domain / bpP:p6:ext-chain` | PASS | Frozen collision domain and inverse body packing or analytic/differentiability helper. |
| 884 | `KAM.Planetary.differentiableAt_fixedHamiltonian` | `bpP:p6:domain / bpP:p6:ext-chain` | PASS | Frozen collision domain and inverse body packing or analytic/differentiability helper. |
| 888 | `KAM.Planetary.keplerPart` | `bpP:p6:split / bpP:p6:kepler-part` | PASS | Exact frozen moving/fixed split and coupling-independent perturbations; algebra valid by totality. |
| 890 | `KAM.Planetary.pairPotential` | `bpP:p6:split / bpP:p6:kepler-part` | PASS | Exact frozen moving/fixed split and coupling-independent perturbations; algebra valid by totality. |
| 892 | `KAM.Planetary.fMov` | `bpP:p6:split / bpP:p6:kepler-part` | PASS | Exact frozen moving/fixed split and coupling-independent perturbations; algebra valid by totality. |
| 894 | `KAM.Planetary.fFix` | `bpP:p6:split / bpP:p6:kepler-part` | PASS | Exact frozen moving/fixed split and coupling-independent perturbations; algebra valid by totality. |
| 896 | `KAM.Planetary.keplerPart_eq_sum` | `bpP:p6:split / bpP:p6:kepler-part` | PASS | Exact frozen moving/fixed split and coupling-independent perturbations; algebra valid by totality. |
| 899 | `KAM.Planetary.movingHamiltonian_split` | `bpP:p6:split / bpP:p6:kepler-part` | PASS | Exact frozen moving/fixed split and coupling-independent perturbations; algebra valid by totality. |
| 901 | `KAM.Planetary.fixedHamiltonian_split` | `bpP:p6:split / bpP:p6:kepler-part` | PASS | Exact frozen moving/fixed split and coupling-independent perturbations; algebra valid by totality. |
| 903 | `KAM.Planetary.moving_sub_fixed` | `bpP:p6:split / bpP:p6:kepler-part` | PASS | Exact frozen moving/fixed split and coupling-independent perturbations; algebra valid by totality. |
| 905 | `KAM.Planetary.analyticOnNhd_fMov` | `bpP:p6:split / bpP:p6:kepler-part` | PASS | Exact frozen moving/fixed split and coupling-independent perturbations; algebra valid by totality. |
| 906 | `KAM.Planetary.analyticOnNhd_fFix` | `bpP:p6:split / bpP:p6:kepler-part` | PASS | Exact frozen moving/fixed split and coupling-independent perturbations; algebra valid by totality. |
| 909 | `KAM.Planetary.gKernel` | `bpP:p6:action-reaction` | PASS | Literal force kernels; unconditional antisymmetric cancellation is valid (B3). |
| 910 | `KAM.Planetary.fKernel` | `bpP:p6:action-reaction` | PASS | Literal force kernels; unconditional antisymmetric cancellation is valid (B3). |
| 914 | `KAM.Planetary.sum_mass_smul_fKernel` | `bpP:p6:action-reaction` | PASS | Literal force kernels; unconditional antisymmetric cancellation is valid (B3). |
| 917 | `KAM.Planetary.hamiltonianVectorField_moving` | `bpP:p6:hamilton-eqs` | PASS | Frozen total field evaluated only on NoCollision; dropping mass positivity is valid. |
| 924 | `KAM.Planetary.hamiltonianVectorField_fixed` | `bpP:p6:hamilton-eqs` | PASS | Frozen total field evaluated only on NoCollision; dropping mass positivity is valid. |
| 932 | `KAM.Planetary.hasDerivAt_bodyVector` | `bpP:p6:hamilton-eqs` | PASS | Frozen total field evaluated only on NoCollision; dropping mass positivity is valid. |
| 942 | `KAM.Planetary.nbodyHamiltonian` | `bpP:p6:nbody / bpP:p6:reduction` | PASS | Correct actual-momentum Hamiltonian or linear heliocentric coordinate formula. |
| 948 | `KAM.Planetary.helioMap` | `bpP:p6:nbody / bpP:p6:reduction` | PASS | Correct actual-momentum Hamiltonian or linear heliocentric coordinate formula. |
| 951 | `KAM.Planetary.helioInv` | `bpP:p6:nbody / bpP:p6:reduction` | PASS | Correct actual-momentum Hamiltonian or linear heliocentric coordinate formula. |
| 956 | `KAM.Planetary.helioMap_helioInv` | `bpP:p6:reduction` | PASS | Correct inverse/pairing/Hamiltonian or finite-time zero-momentum Newton-to-moving component. |
| 957 | `KAM.Planetary.helioInv_helioMap` | `bpP:p6:reduction` | PASS | Correct inverse/pairing/Hamiltonian or finite-time zero-momentum Newton-to-moving component. |
| 958 | `KAM.Planetary.helioMap_symplectic` | `bpP:p6:reduction` | PASS | Correct inverse/pairing/Hamiltonian or finite-time zero-momentum Newton-to-moving component. |
| 959 | `KAM.Planetary.helioMap_pairing` | `bpP:p6:reduction` | PASS | Correct inverse/pairing/Hamiltonian or finite-time zero-momentum Newton-to-moving component. |
| 964 | `KAM.Planetary.nbodyHamiltonian_helio` | `bpP:p6:reduction` | PASS | Correct inverse/pairing/Hamiltonian or finite-time zero-momentum Newton-to-moving component. |
| 971 | `KAM.Planetary.nbodyHamiltonian_helio_zero_momentum` | `bpP:p6:reduction` | PASS | Correct inverse/pairing/Hamiltonian or finite-time zero-momentum Newton-to-moving component. |
| 979 | `KAM.Planetary.newton_to_moving` | `bpP:p6:reduction` | PASS | Correct inverse/pairing/Hamiltonian or finite-time zero-momentum Newton-to-moving component. |
| 993 | `KAM.Planetary.barycentricPositions_succ_sub_zero` | `bpP:p6:bary-algebra` | PASS | Literal frozen barycentric identities; nonzero/positive denominator guards retained where used. |
| 995 | `KAM.Planetary.barycentricPositions_succ_sub_succ` | `bpP:p6:bary-algebra` | PASS | Literal frozen barycentric identities; nonzero/positive denominator guards retained where used. |
| 998 | `KAM.Planetary.barycentricPositions_zero` | `bpP:p6:bary-algebra` | PASS | Literal frozen barycentric identities; nonzero/positive denominator guards retained where used. |
| 1000 | `KAM.Planetary.barycentricVelocities_zero` | `bpP:p6:bary-algebra` | PASS | Literal frozen barycentric identities; nonzero/positive denominator guards retained where used. |
| 1002 | `KAM.Planetary.barycentricVelocities_succ` | `bpP:p6:bary-algebra` | PASS | Literal frozen barycentric identities; nonzero/positive denominator guards retained where used. |
| 1004 | `KAM.Planetary.barycentricVelocities_succ_sub_zero` | `bpP:p6:bary-algebra` | PASS | Literal frozen barycentric identities; nonzero/positive denominator guards retained where used. |
| 1007 | `KAM.Planetary.sum_actualMasses_smul_barycentricPositions` | `bpP:p6:bary-algebra` | PASS | Literal frozen barycentric identities; nonzero/positive denominator guards retained where used. |
| 1009 | `KAM.Planetary.sum_actualMasses_smul_barycentricVelocities` | `bpP:p6:bary-algebra` | PASS | Literal frozen barycentric identities; nonzero/positive denominator guards retained where used. |
| 1011 | `KAM.Planetary.planeLength_barycentricPositions_zero_le` | `bpP:p6:bary-algebra` | PASS | Literal frozen barycentric identities; nonzero/positive denominator guards retained where used. |
| 1016 | `KAM.Planetary.reconstruction` | `bpP:p6:reconstruction / bpP:p6:units` | PASS | Correct frozen finite/all-time Newton predicate; general G absorbed only for finite-time mass array. |
| 1023 | `KAM.Planetary.reconstruction_all_time` | `bpP:p6:reconstruction / bpP:p6:units` | PASS | Correct frozen finite/all-time Newton predicate; general G absorbed only for finite-time mass array. |
| 1030 | `KAM.Planetary.isNewtonSolutionOn_of_isMovingSolutionOn` | `bpP:p6:reconstruction / bpP:p6:units` | PASS | Correct frozen finite/all-time Newton predicate; general G absorbed only for finite-time mass array. |
| 1036 | `KAM.Planetary.reconstruction_fixed` | `bpP:p6:reconstruction-fixed` | PASS | Correct finite-time clauses or frozen all-time fixed-centre equations; arbitrary epsilon allowed. |
| 1047 | `KAM.Planetary.reconstruction_fixed_all_time` | `bpP:p6:reconstruction-fixed` | PASS | Correct finite-time clauses or frozen all-time fixed-centre equations; arbitrary epsilon allowed. |
| 1053 | `KAM.Planetary.orbit_transfer_moving` | `bpP:p6:orbit-transfer` | PASS | Consumes actual frozen physical torus flow and NoCollision, yields actual complete physical solutions. |
| 1059 | `KAM.Planetary.orbit_transfer_fixed` | `bpP:p6:orbit-transfer` | PASS | Consumes actual frozen physical torus flow and NoCollision, yields actual complete physical solutions. |
| 1073 | `KAM.Planetary.AxisData` | `bpP:p6:tube-constants` | PASS | Explicit positive axis/gap lower bound and axis upper bound; canonical axes-only witness exported separately. |
| 1079 | `KAM.Planetary.axisMax` | `bpP:p6:tube-constants` | PASS | Axes/gaps bounds with canonical axes-only choice; n=1 handled without empty pair minimum. |
| 1080 | `KAM.Planetary.axisGap` | `bpP:p6:tube-constants` | PASS | Axes/gaps bounds with canonical axes-only choice; n=1 handled without empty pair minimum. |
| 1082 | `KAM.Planetary.axisData_canonical` | `bpP:p6:tube-constants` | PASS | Axes/gaps bounds with canonical axes-only choice; n=1 handled without empty pair minimum. |
| 1086 | `KAM.Planetary.tubeRadius` | `bpP:p6:tube-constants` | PASS | Axes/gaps bounds with canonical axes-only choice; n=1 handled without empty pair minimum. |
| 1087 | `KAM.Planetary.tubeD` | `bpP:p6:tube-constants` | PASS | Axes/gaps bounds with canonical axes-only choice; n=1 handled without empty pair minimum. |
| 1088 | `KAM.Planetary.tubeBigD` | `bpP:p6:tube-constants` | PASS | Axes/gaps bounds with canonical axes-only choice; n=1 handled without empty pair minimum. |
| 1090 | `KAM.Planetary.tubeRadius_pos` | `bpP:p6:tube-constants` | PASS | Axes/gaps bounds with canonical axes-only choice; n=1 handled without empty pair minimum. |
| 1091 | `KAM.Planetary.tubeD_lt_tubeBigD` | `bpP:p6:tube-constants` | PASS | Axes/gaps bounds with canonical axes-only choice; n=1 handled without empty pair minimum. |
| 1095 | `KAM.Planetary.circularTube_mono` | `bpP:p6:tube-geometry` | PASS | Correct max-norm to Euclidean sqrt(2) estimates and coupling-independent physical pair bounds. |
| 1098 | `KAM.Planetary.circularTube_euclidean` | `bpP:p6:tube-geometry` | PASS | Correct max-norm to Euclidean sqrt(2) estimates and coupling-independent physical pair bounds. |
| 1103 | `KAM.Planetary.circularTube_distances` | `bpP:p6:tube-geometry` | PASS | Correct max-norm to Euclidean sqrt(2) estimates and coupling-independent physical pair bounds. |
| 1109 | `KAM.Planetary.circularTube_pair_bounds` | `bpP:p6:tube-geometry` | PASS | Correct max-norm to Euclidean sqrt(2) estimates and coupling-independent physical pair bounds. |
| 1115 | `KAM.Planetary.circularTube_pairBounds_barycentric` | `bpP:p6:tube-geometry` | PASS | Correct max-norm to Euclidean sqrt(2) estimates and coupling-independent physical pair bounds. |
| 1119 | `KAM.Planetary.circularTube_pairBounds_fixed` | `bpP:p6:tube-geometry` | PASS | Correct max-norm to Euclidean sqrt(2) estimates and coupling-independent physical pair bounds. |
| 1125 | `KAM.Planetary.newton_in_tube` | `bpP:p6:newton-in-tube` | FAIL | FAIL: advertised moving-and-fixed interface contains only moving-Sun case; add C5. |
| 1134 | `KAM.Planetary.circularTube_norm_lt` | `bpP:p6:measure-positive(a)` | PASS | Bounded physical tube and finite volume; empty-dimensional case causes no false bound. |
| 1137 | `KAM.Planetary.volume_lt_top_of_subset_circularTube` | `bpP:p6:measure-positive(a)` | PASS | Bounded physical tube and finite volume; empty-dimensional case causes no false bound. |
| 1142 | `KAM.Planetary.measure_chart_image` | `bpP:p6:measure-positive(b) / bpP:p1:liouville-lattice` | PASS | Correct Borel full-position-lattice image interface; not the Cartesian P12 transport variant (F6). |
| 1154 | `KAM.Planetary.movingKolmogorovSet_of_tube` | `bpP:p6:movkol-assembly` | PASS | Concludes the literal frozen moving Kolmogorov predicate from source independent torus/tube data. |
| 1161 | `KAM.Planetary.fixedKolmogorovSet_of_tube` | `bpP:p6:fixkol-assembly` | PASS | Concludes the literal frozen fixed Kolmogorov predicate; fixed origin and complete orbits retained. |
| 1183 | `KAM.Planetary.poincareGamma` | `bpP:p7:poincare-def` | PASS | Correct regular chart formula/order and physical denominators, with explicit domain guards. |
| 1184 | `KAM.Planetary.poincareK` | `bpP:p7:poincare-def` | PASS | Correct regular chart formula/order and physical denominators, with explicit domain guards. |
| 1186 | `KAM.Planetary.poincareV` | `bpP:p7:poincare-def` | PASS | Correct regular chart formula/order and physical denominators, with explicit domain guards. |
| 1189 | `KAM.Planetary.poincareF` | `bpP:p7:poincare-def` | PASS | Correct regular chart formula/order and physical denominators, with explicit domain guards. |
| 1192 | `KAM.Planetary.poincare` | `bpP:p7:poincare-def` | PASS | Correct regular chart formula/order and physical denominators, with explicit domain guards. |
| 1201 | `KAM.Planetary.poincareDom` | `bpP:p7:poincare-def` | PASS | Correct regular chart formula/order and physical denominators, with explicit domain guards. |
| 1203 | `KAM.Planetary.isOpen_poincareDom` | `bpP:p7:poincare-def` | PASS | Correct regular chart formula/order and physical denominators, with explicit domain guards. |
| 1206 | `KAM.Planetary.poincare_facts` | `bpP:p7:o-facts` | PASS | Correct nonnegative Gamma, positive root/Jacobian, eccentricity-vector and polar identities. |
| 1211 | `KAM.Planetary.poincare_facts_polar` | `bpP:p7:o-facts` | PASS | Correct nonnegative Gamma, positive root/Jacobian, eccentricity-vector and polar identities. |
| 1217 | `KAM.Planetary.analyticOnNhd_poincareF` | `bpP:p7:poincare(a,b)` | PASS | Correct analyticity, radian periodicity or positive-Gamma Delaunay relation. |
| 1218 | `KAM.Planetary.analyticOnNhd_poincare` | `bpP:p7:poincare(a,b)` | PASS | Correct analyticity, radian periodicity or positive-Gamma Delaunay relation. |
| 1219 | `KAM.Planetary.poincare_periodic` | `bpP:p7:poincare(a,b)` | PASS | Correct analyticity, radian periodicity or positive-Gamma Delaunay relation. |
| 1222 | `KAM.Planetary.poincare_eq_delaunayMK` | `bpP:p7:poincare(a,b)` | PASS | Correct analyticity, radian periodicity or positive-Gamma Delaunay relation. |
| 1226 | `KAM.Planetary.poincare_symplectic` | `bpP:p7:poincare(c,d)` | PASS | Correct frozen symplectic factor one and physical mass/strength/LRL elements. |
| 1228 | `KAM.Planetary.poincare_elements` | `bpP:p7:poincare(c,d)` | PASS | Correct frozen symplectic factor one and physical mass/strength/LRL elements. |
| 1237 | `KAM.Planetary.poincare_image` | `bpP:p7:poincare(e)` | PASS | B6 onto/mod-lattice/local-inverse family; explicit arg representative has only modulo-lattice inverse claim. |
| 1238 | `KAM.Planetary.poincare_eq_iff` | `bpP:p7:poincare(e)` | PASS | B6 onto/mod-lattice/local-inverse family; explicit arg representative has only modulo-lattice inverse claim. |
| 1241 | `KAM.Planetary.poincare_localDiffeo` | `bpP:p7:poincare(e)` | PASS | B6 onto/mod-lattice/local-inverse family; explicit arg representative has only modulo-lattice inverse claim. |
| 1246 | `KAM.Planetary.poincareInv` | `bpP:p7:poincare(e)` | PASS | Explicit representative using arg; inverse theorem asserts modulo lattice, not continuity through the argument cut. |
| 1256 | `KAM.Planetary.poincareInv_poincare` | `bpP:p7:poincare(e)` | PASS | B6 onto/mod-lattice/local-inverse family; explicit arg representative has only modulo-lattice inverse claim. |
| 1258 | `KAM.Planetary.poincare_poincareInv` | `bpP:p7:poincare(e)` | PASS | B6 onto/mod-lattice/local-inverse family; explicit arg representative has only modulo-lattice inverse claim. |
| 1261 | `KAM.Planetary.poincare_circular` | `bpP:p7:poincare(f)` | PASS | Correct circular radius and canonical momentum at positive action. |
| 1266 | `KAM.Planetary.poincare_means` | `bpP:p7:kepler(c) / bpP:p7:average` | PASS | Correct transported means with circular endpoint. |
| 1275 | `KAM.Planetary.poincareGammaC` | `bpP:p7:holomorphic` | PASS | Correct bilinear complex formulas, principal roots and uniform small-e neighbourhood; real agreement guarded. |
| 1276 | `KAM.Planetary.poincareVC` | `bpP:p7:holomorphic` | PASS | Correct bilinear complex formulas, principal roots and uniform small-e neighbourhood; real agreement guarded. |
| 1279 | `KAM.Planetary.poincareC` | `bpP:p7:holomorphic` | PASS | Correct bilinear complex formulas, principal roots and uniform small-e neighbourhood; real agreement guarded. |
| 1288 | `KAM.Planetary.poincareNbhd` | `bpP:p7:holomorphic` | PASS | Correct bilinear complex formulas, principal roots and uniform small-e neighbourhood; real agreement guarded. |
| 1291 | `KAM.Planetary.poincare_holomorphic` | `bpP:p7:holomorphic` | PASS | Correct bilinear complex formulas, principal roots and uniform small-e neighbourhood; real agreement guarded. |
| 1310 | `KAM.Planetary.planetBlock` | `bpP:p7:product-def / bpP:p7:d25(d)` | PASS | Correct fast/slow-to-body product definitions or domain bridge, except frozen name conflict flagged below. |
| 1314 | `KAM.Planetary.poincareProd` | `bpP:p7:product-def / bpP:p7:d25(d)` | PASS | Correct fast/slow-to-body product definitions or domain bridge, except frozen name conflict flagged below. |
| 1319 | `KAM.Planetary.poincareProdDom` | `bpP:p7:product-def / bpP:p7:d25(d)` | PASS | Correct fast/slow-to-body product definitions or domain bridge, except frozen name conflict flagged below. |
| 1321 | `KAM.Planetary.hProd` | `bpP:p7:product-def / bpP:p7:d25(d)` | PASS | Correct fast/slow-to-body product definitions or domain bridge, except frozen name conflict flagged below. |
| 1323 | `KAM.Planetary.regionProd` | `bpP:p7:product-def / bpP:p7:d25(d)` | PASS | Correct fast/slow-to-body product definitions or domain bridge, except frozen name conflict flagged below. |
| 1326 | `KAM.Planetary.fastShift` | `bpP:p7:product-def / bpP:p7:d25(d)` | FAIL | FAIL: duplicates the existing frozen fully qualified export; delete and import frozen definition (C1). |
| 1328 | `KAM.Planetary.isOpen_poincareProdDom` | `bpP:p7:product-def / bpP:p7:d25(d)` | PASS | Correct fast/slow-to-body product definitions or domain bridge, except frozen name conflict flagged below. |
| 1329 | `KAM.Planetary.regionProd_one_iff` | `bpP:p7:product-def / bpP:p7:d25(d)` | PASS | Correct fast/slow-to-body product definitions or domain bridge, except frozen name conflict flagged below. |
| 1333 | `KAM.Planetary.poincareProd_symplectic` | `bpP:p7:product-chart(a)` | PASS | Correct heterogeneous block product symplectic/analytic/lattice/onto/local-inverse component. |
| 1335 | `KAM.Planetary.analyticOnNhd_poincareProd` | `bpP:p7:product-chart(a)` | PASS | Correct heterogeneous block product symplectic/analytic/lattice/onto/local-inverse component. |
| 1337 | `KAM.Planetary.poincareProd_lattice` | `bpP:p7:product-chart(a)` | PASS | Correct heterogeneous block product symplectic/analytic/lattice/onto/local-inverse component. |
| 1340 | `KAM.Planetary.poincareProd_eq_iff` | `bpP:p7:product-chart(a)` | PASS | Correct heterogeneous block product symplectic/analytic/lattice/onto/local-inverse component. |
| 1343 | `KAM.Planetary.poincareProd_image` | `bpP:p7:product-chart(a)` | PASS | Correct heterogeneous block product symplectic/analytic/lattice/onto/local-inverse component. |
| 1345 | `KAM.Planetary.poincareProd_localDiffeo` | `bpP:p7:product-chart(a)` | PASS | Correct heterogeneous block product symplectic/analytic/lattice/onto/local-inverse component. |
| 1350 | `KAM.Planetary.keplerPart_poincareProd` | `bpP:p7:product-chart(b)` | PASS | Correct pulled-back energy or derivative of displayed frequency; frozen field identification needs wrapper. |
| 1352 | `KAM.Planetary.hasDerivAt_nu` | `bpP:p7:product-chart(b)` | PASS | Correct pulled-back energy or derivative of displayed frequency; frozen field identification needs wrapper. |
| 1355 | `KAM.Planetary.movingHamiltonian_poincareProd` | `bpP:p7:product-chart(c)` | PASS | Exact frozen model composition or analytic collision-free pullback; coupling-independent perturbation. |
| 1359 | `KAM.Planetary.fixedHamiltonian_poincareProd` | `bpP:p7:product-chart(c)` | PASS | Exact frozen model composition or analytic collision-free pullback; coupling-independent perturbation. |
| 1363 | `KAM.Planetary.isOpen_poincareProd_preimage` | `bpP:p7:product-chart(c)` | PASS | Exact frozen model composition or analytic collision-free pullback; coupling-independent perturbation. |
| 1365 | `KAM.Planetary.analyticOnNhd_fMov_poincareProd` | `bpP:p7:product-chart(c)` | PASS | Exact frozen model composition or analytic collision-free pullback; coupling-independent perturbation. |
| 1368 | `KAM.Planetary.analyticOnNhd_fFix_poincareProd` | `bpP:p7:product-chart(c)` | PASS | Exact frozen model composition or analytic collision-free pullback; coupling-independent perturbation. |
| 1373 | `KAM.Planetary.circularPoint_eq_poincareProd` | `bpP:p7:tube` | PASS | Correct literal circular point and uniform small physical tube preimage controls. |
| 1378 | `KAM.Planetary.tube_in_chart` | `bpP:p7:tube` | PASS | Correct literal circular point and uniform small physical tube preimage controls. |
| 1387 | `KAM.Planetary.polarDom` | `bpP:p7:lattice / bpP:p1:period-convert` | PASS | Correct sin-position/cos-momentum polar chart, domain/lattice and period-one conformal factor 2pi. |
| 1388 | `KAM.Planetary.polarMap` | `bpP:p7:lattice / bpP:p1:period-convert` | PASS | Correct sin-position/cos-momentum polar chart, domain/lattice and period-one conformal factor 2pi. |
| 1392 | `KAM.Planetary.fullShift` | `bpP:p7:lattice / bpP:p1:period-convert` | PASS | Correct sin-position/cos-momentum polar chart, domain/lattice and period-one conformal factor 2pi. |
| 1394 | `KAM.Planetary.angleScale` | `bpP:p7:lattice / bpP:p1:period-convert` | PASS | Correct sin-position/cos-momentum polar chart, domain/lattice and period-one conformal factor 2pi. |
| 1396 | `KAM.Planetary.polarMap_symplectic` | `bpP:p7:lattice / bpP:p1:period-convert` | PASS | Correct sin-position/cos-momentum polar chart, domain/lattice and period-one conformal factor 2pi. |
| 1397 | `KAM.Planetary.analyticOnNhd_polarMap` | `bpP:p7:lattice / bpP:p1:period-convert` | PASS | Correct sin-position/cos-momentum polar chart, domain/lattice and period-one conformal factor 2pi. |
| 1398 | `KAM.Planetary.polarMap_mapsTo` | `bpP:p7:lattice / bpP:p1:period-convert` | PASS | Correct sin-position/cos-momentum polar chart, domain/lattice and period-one conformal factor 2pi. |
| 1399 | `KAM.Planetary.polarDom_shift` | `bpP:p7:lattice / bpP:p1:period-convert` | PASS | Correct sin-position/cos-momentum polar chart, domain/lattice and period-one conformal factor 2pi. |
| 1401 | `KAM.Planetary.poincareProd_polar_symplectic` | `bpP:p7:lattice / bpP:p1:period-convert` | PASS | Correct sin-position/cos-momentum polar chart, domain/lattice and period-one conformal factor 2pi. |
| 1403 | `KAM.Planetary.poincareProd_polar_lattice` | `bpP:p7:lattice / bpP:p1:period-convert` | PASS | Correct sin-position/cos-momentum polar chart, domain/lattice and period-one conformal factor 2pi. |
| 1408 | `KAM.Planetary.poincareProd_polar_periodOne_symplectic` | `bpP:p7:lattice / bpP:p1:period-convert` | PASS | Correct sin-position/cos-momentum polar chart, domain/lattice and period-one conformal factor 2pi. |
| 1411 | `KAM.Planetary.poincareProd_polar_periodOne_lattice` | `bpP:p7:lattice / bpP:p1:period-convert` | PASS | Correct sin-position/cos-momentum polar chart, domain/lattice and period-one conformal factor 2pi. |
| 1419 | `KAM.Planetary.polar_hamiltonian_split` | `bpP:p7:lattice / bpP:p1:period-convert` | PASS | Correct sin-position/cos-momentum polar chart, domain/lattice and period-one conformal factor 2pi. |
| 1429 | `KAM.Planetary.secularGamma_eq` | `bpP:p7:d25` | PASS | Explicit frozen secular/ellipse/physical-element bridge at kappa=1, two planets where frozen definitions require it. |
| 1430 | `KAM.Planetary.secularRoot_eq` | `bpP:p7:d25` | PASS | Explicit frozen secular/ellipse/physical-element bridge at kappa=1, two planets where frozen definitions require it. |
| 1431 | `KAM.Planetary.secularEccVector_eq` | `bpP:p7:d25` | PASS | Explicit frozen secular/ellipse/physical-element bridge at kappa=1, two planets where frozen definitions require it. |
| 1433 | `KAM.Planetary.secularAxis_eq` | `bpP:p7:d25` | PASS | Explicit frozen secular/ellipse/physical-element bridge at kappa=1, two planets where frozen definitions require it. |
| 1437 | `KAM.Planetary.ellipsePhase_eq_poincareProd` | `bpP:p7:d25` | PASS | Explicit frozen secular/ellipse/physical-element bridge at kappa=1, two planets where frozen definitions require it. |
| 1442 | `KAM.Planetary.ellipsePhase_eq_poincareProd_self` | `bpP:p7:d25` | PASS | Explicit frozen secular/ellipse/physical-element bridge at kappa=1, two planets where frozen definitions require it. |
| 1446 | `KAM.Planetary.keplerFunctions_poincareProd` | `bpP:p7:d25` | PASS | Explicit frozen secular/ellipse/physical-element bridge at kappa=1, two planets where frozen definitions require it. |
| 1455 | `KAM.Planetary.exists_poincareProd_of_progradeElliptic` | `bpP:p7:d25` | PASS | Explicit frozen secular/ellipse/physical-element bridge at kappa=1, two planets where frozen definitions require it. |
| 1459 | `KAM.Planetary.average_via_eccentric_longitude` | `bpP:p7:average` | PASS | Matches explicit global-continuity source premise; correct one-angle substitution with other anomalies fixed. |
| 1467 | `KAM.Planetary.poincareProd_means` | `bpP:p7:average / bpP:p7:kepler(c)` | PASS | General-n physical means; correct circular endpoint and mass/strength constants. |

## Verification and closeout

* `nice -n 5 lake env lean .drafts/design/KeplerSignatures.lean` was run once: exit 0; exactly 264 diagnostics, all `declaration uses sorry`; zero other diagnostics. The untracked file is exactly Appendix A. This is elaboration, not proof or axiom closure.
* Section-9/proof-plan name probes checked actual printed types. The first probe had 59 checks and one missing name (`Real.cosh_one_lt`). The additional probe confirmed product adapters are needed and that the project analytic theorem requires namespace qualification. An intentionally tested unrelated guess (`Complex.continuousAt_of_differentiableAt`) also failed; it is not cited by the design and is not a finding against it.
* Negative integration probes reproduced the frozen `fastShift` duplicate export and the generic `Fin (n+n)`/`Fin (n*2)` type mismatch. Their nonzero exits are the expected evidence, not failures of the original standalone elaboration.
* `scripts/lint_sources.sh`: exit 0; `check_lean_modules: PASS (221 Lean files, 0 comparator configurations)`, `FROZEN-ANCHOR GUARD OK`, `ABI HASHES OK (144 frozen declarations)`.
* No module implementation was edited, so no targeted module build or `#print axioms` claim for proved main results is appropriate. All 264 audited theorem bodies are explicitly draft `sorry`; many definitions depend on draft specifications. Nothing in this report promotes them to proved or frozen-ready status.
* Persistent output is restricted to this report. Scratch probes/logs were removed after their evidence was transcribed. No Lean resource override was used and audit-owned Lean invocations were serialized.

Inventory closeout: 374/374 declarations classified; 367 PASS, seven FAIL. The outstanding acceptance conditions are F1 frozen-name reuse, F2/C6 source-output coverage, F3 controlled radius selection, F4 full transfer/tube interface, F5 executable package DAG, F6 assigned general-n consumer transport, and F7 an applicable joint-holomorphy proof route. P13 source availability remains an explicit audit limit. No new defect in a frozen physical predicate or pinned mathematical source was established; the reportable defects are in this design and its asserted coverage/dependencies. Existing source errata/deviations listed in the blueprint were not independently re-audited against the underlying PDFs.

READY dsgn-kep
