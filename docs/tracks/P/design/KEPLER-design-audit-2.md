# Independent Kepler design audit 2

**Verdict: FAIL.** F1, F2, F4, F5, F6 and F7 are resolved at the design level. F3 now correctly subordinates the exact radius to a selected complex-domain radius, but its new geometric output is not retained in the choice predicate. Consequently `exact_positions_mem_shiftO` is not justified for the arbitrarily selected `exactDelta`; the admissibility predicate allows counterselections. The repair is local: include the geometric condition in the radius selection, then prove its existence from the source construction. The other new signatures, including the casts, transfer identities, fixed-Sun tube theorem and shared plane-length helpers, pass the checks below.

Marker: `dsgn-kep2`. Snapshot: branch `inp-design-kep`, commit **`d0ca71ddb8ba96ac40705cd40dde0783870a8589`**, audited in `/root/code/KAM-inp-design-kep`. Only this report was written persistently; source, design, signatures, frozen files, manifest and git state were not changed.

## Scope and pinned inputs

This is the requested second design audit, following the original audit brief and checking every F1–F7 resolution in Section 10 against the actual declarations. The round-1 statement/refutation method is retained. `A:L` means line L of `.drafts/design/KeplerSignatures.lean`; `P:L` means line L of `.drafts/design/KeplerSignaturesP.lean`; `D:L` means the design document. These locators refer to the hashes below. Proposed target repairs are report text, not implemented or approved Lean.

| Input | SHA256 |
|---|---|
| `docs/tracks/P/design/KEPLER-LEAN-DESIGN.md` | `eea14b35133977244d3d4f86511862ae2500accfb86dc27620f6fc8f8492f13f` |
| `.drafts/design/KeplerSignatures.lean` | `616309f5871b1ec9bf12e1ddcd19f18a4ef3cf794245d2b4f60d0e6ba5b9462b` |
| `.drafts/design/KeplerSignaturesP.lean` | `99c11c8828718807c2637b1e91b996988732ca781f6183841fb1648fe76737d3` |
| `.drafts/design/check_kepler.sh` | `89f4e31090c39d3cfb22d6fe510769d397d20e9b7d31cf8895a6a1121c1b5d05` |
| `manifest/frozen-anchors.json` | `95ab954c0479944c1a314487276da31c6bf1af8eebbfbd49e88c06cd01cf4cdf` |

All three Appendix A blocks match their named files exactly. The source/frozen/consumer files are unchanged from the round-1 commit `4e7b520c131acb97dbc7f86911e315be4a687e10`: the tracked diff to this commit contains only the design document. The prior source correspondence is therefore carried forward only for declarations mechanically shown unchanged; all new and modified declarations are reviewed here. Specifically: **363 unchanged, seven modified, 42 added, four removed**, giving **412 current declarations** (295 theorems, 113 definitions, four structures). The removed names are the draft `fastShift`, the old existential `complex_domain`, and the two renamed `iso_radius*` helpers. No frozen export was removed.

P13's proposed source file remains absent from this snapshot. General-n fixed-Sun applicability is checked against its plan and frozen predicates, not described as a completed P13 source audit. N3-8's reference draft in `/root/code/KAM-inp/.drafts/design/NPart3Signatures.lean` was read for the shared helper types; it still contains the old ODE-namespace declarations. Section 7.3 explicitly directs the future package to import the shared helpers and drop those copies. No implementation of `KAM/ODE/NewtonDefs.lean` was available in the audited checkout or the output checkout, so this report certifies the interface agreement, not a completed cross-branch landing.

## Resolution of the first audit

| Finding | Round-2 disposition | Evidence |
|---|---|---|
| F1 frozen `fastShift` | **PASS** | The duplicate definition is gone. The exact checker pipeline imports `KAM.Frozen.Planetary.Defs.FastShift`, and P:533–539 uses `{a:=n,b:=n}` explicitly. The cast lattice theorem P:630–633 uses the same frozen specialization. Combined elaboration succeeds with that definition present. |
| F2 complex derivatives | **PASS** | A:295–307 adds both complex vector derivatives, the quantitative `1-cosh(1)/4` lower bound, and the numerical helper. A:349–351 adds the eccentricity derivative. A:258–264 also gives the correctly signed generic implicit derivative equation. These are companions in the same KEP-3/4 families; the original bundles need not repeat them. |
| F3 selected radii | **PARTIAL; residual FAIL R2-1** | `ComplexDomainData` is an exact whitespace-normalized factorization of the old existential output; `complexDelta`/`complex_domain_spec` select and certify it. `exactDelta`/`exact_ham` now include `delta2<=complexDelta`. However, A:923 asserts shift-neighbourhood membership absent from the choice predicate at A:915–917. See the counterselection below. |
| F4 transfer and tube outputs | **PASS** | A:973–985 restores the exact radius, L/cross/a/e recovery and frozen physical-energy equality under the same original solution hypotheses. P:293–306 provides the finite-time fixed-Sun derivative clauses, NoCollision and origin-plus-planets PairBounds. The weaker original components are accurately described and remain usable. |
| F5 package/DAG mismatch | **PASS, with editorial notes R2-2** | Early `Kepler.Energy` removes the two late-definition dependencies; DelaunayChart imports DelaunaySymplectic and Newtonian.Tube imports Reconstruction. I-0 explicitly records integration of the determinant module from another branch. All 32 package waves recompute correctly and all 35 owned module paths are distinct. |
| F6 Fin carrier transport | **PASS** | P:482–497 defines a genuine continuous linear reindex equivalence and its form, field, measure and analytic API. P:622–633 supplies the same-carrier product chart. The direction of `Nat.mul_two n` is correct. The Cartesian-cylinder/full-position-lattice distinction is explicitly retained in D:594–599. |
| F7 applicable analytic route | **PASS** | The generic helper now assumes complete parameter space and analytic coefficient data; both finite-dimensional source instances supply these from coordinate projections. Joint analyticity uses analytic IFT plus strict-strip uniqueness, not the inapplicable one-variable uniform-limit theorem. Fresh proof probes establish the IFT shape, cosh estimate, and cast/field identity. |
| C6 coverage additions | **PASS except the selected-radius geometric output** | The mass local inverse and periodicity, frozen Hamiltonian-field consequence, arbitrary-real-k orbit reality, integral characterization of shiftF, Liouville primitive, witness uniqueness, time scaling and explicit Jacobian columns are now represented. Their types/formulas were checked against the source calculations. |
| Shared plane helpers | **PASS** | A:104/107/108, A:145–146 match the N3-8 norm/triangle/radius contract on the frozen physical length. Both radius identities elaborate with `rfl`; no supremum norm is silently used as planar Euclidean length. |

## R2-1 — HIGH: geometric admissibility is missing from the selected exact radius

Affected declarations: **`KAM.Iso.exactDelta` (A:916)** and **`KAM.Iso.exact_positions_mem_shiftO` (A:923)**. The first fails as the selection contract for the newly advertised geometric output; the second fails for that selected object. This does not refute `exact_ham`'s weaker output or the physical solution-transfer statements.

The source `stepI:p7:eh-delta` (`blueprint-I/parts/p7-delaunay.tex:412`) first chooses a sufficiently small radius so that **every complex position lies in the shift neighbourhood**, then obtains analyticity, the bound and the physical identity. The revised definition instead chooses an arbitrary witness of only

```lean
0 < δ ∧ δ ≤ complexDelta K ∧ ExactHamData K δ
```

and later asserts the geometric construction property for that arbitrary witness. A proof which constructs one sufficiently small radius and applies `Classical.choose` to the weaker existence statement cannot recover the stronger property of its original witness. The original F3 inequality is repaired, but this added theorem repeats that selection problem for another property. **My round-1 C3 proposal also omitted this condition from its choice predicate while suggesting a separate geometric output; that recommendation was insufficient and is corrected here.**

This is not merely a syntactic absence: the uniform F bound is very loose and does not characterize the small shell collar. The following counterselection separates the predicates, using rational outward bounds rather than relying on a sampled floating-point orbit.

Take the singleton safe set

```
K = { (L,G) = (1/2, sqrt(3)/4) }.
e = 1/2, rmin = 1/8, rhoMax = 3/8,
epsilon0 = 1/1024, mu2 = 1/2048,
shift-collar thickness = 1/2048,
delta1 = delta2 = 1/1000.
```

The following estimates verify that delta1 is a valid `ComplexDomainData` radius and delta2 satisfies the **existing** `ExactHamData`, even though it is not a geometric shift-collar radius:

1. In the complex action neighbourhood, `|L-1/2|, |G-sqrt(3)/4| < .001`, so `|L|>.499`, `|G|<.435`, and `|G²/L²-3/4|<.00651`. Thus the principal eccentricity root has positive-real radicand and differs from `1/2` by less than `.0066`. This is less than `keplerDeltaE(1/2) = 3*arcosh(7/6)/56 > .02`; its norm is below `.5066 < e2`. Also `delta1 < keplerDeltaK(1/2)/2 = arcosh(7/6)/32 > .01`, and the other numerical and real-cone clauses of `ComplexDomainData` hold. Analyticity and real agreement follow on this very same root/Kepler tube.
2. For any complex angles with imaginary parts less than `.001`, compare to their real parts and the singleton real actions. On the Kepler strip, the contraction derivative is bounded by `.5066*(7/6)<.592`. The anomaly displacement from that real orbit is therefore less than `(.001+.0066)/(1-.592)<.0187`. The explicit orbit-frame formula, `|L²-1/4|<.001001`, `|G/L-sqrt(3)/2|<.00375`, and `cosh(.0187)<1.001` bound the frame displacements by `.00784` and `.00587`. The complex rotation has operator norm below `1.002` and displacement from its real rotation below `.001002`. Consequently the physical position lies within **`.011`** in complex Euclidean length of a real orbit position whose radius lies in `[.125,.375]`.
3. For all `|mu|<mu2<.0005`, each displaced argument is within `.0115` of its corresponding real baseline. The real parts of the central and secondary bilinear squares are bounded below respectively by

   ```text
   .125² - .0115*(.0115 + 2*.125) = .01261775 > .012,
   .625² - .0115*(.0115 + 2*.625) = .37611775 > .376.
   ```

   The unshifted central square has the same positive lower bound. Thus all principal inverse roots are jointly analytic on the required domain. Differentiating the explicit shifted potential gives `|deriv_mu Psi|<400` there (use `|q_0+mu|<.3865`, central inverse square-root below 10 and inverse three-halves power below `.012^(-3/2)`, and the analogous secondary bound). Its integral divided-difference formula gives `|F|<400`. In contrast, the specified `exactCF` is at least `6/((1/1024)*(1/8)) = 49152`. Hence the uniform bound in `ExactHamData` holds with ample room. Periodicity, reality, the exact physical identity and inclusion of the safe real actions also hold on this domain. None requires membership in the much thinner shift collar.

Now take the **real** chart point

```
w = ((pi,0), (5009/10000, sqrt(3)/4)).
```

It belongs to `UDelta K (.001)` since its action distance is `.0009`. At apocentre its radius is exactly

```
r = L² + L*sqrt(L²-3/16),   L=5009/10000,
```

and `r>.377` (direct squaring), whereas every real point in the shell has radius at most `.375`. Its distance from **every** shell point is therefore greater than `.002 > 1/2048`. Thus this position is outside `shiftO`.

The two choice predicates permit `complexDelta K=.001` and `exactDelta K=.001`; the advertised geometric theorem excludes that permitted selection. Classical choice is not a “choose the small witness from this proof” operator. These estimates are a mathematical counterexample to the required predicate implication, not a Lean-kernel refutation of the present `sorry` declaration; the decimal constants above are terminating rationals with deliberately loose bounds. A numerical scratch computation was used only to check orientation (`r≈.377025013`), not as the admissibility proof.

### Corrected selection and output signatures

Retain the existing six-clause `ExactHamData`. Strengthen the **internal selection predicate**, without adding a geometric hypothesis to any source-facing theorem:

```lean
namespace KAM.Iso
open KAM KAM.Kepler KAM.Planetary Set

def ExactRadiusData (K : Set (Fin 2 → ℝ)) (δ : ℝ) : Prop :=
  0 < δ ∧ δ ≤ complexDelta K ∧ ExactHamData K δ ∧
    ∀ w ∈ UDelta K δ,
      (delaunayC K w).1 ∈ shiftO (kRmin K) (kRhoMax K) (exactEps K)

open scoped Classical in
noncomputable def exactDelta (K : Set (Fin 2 → ℝ)) : ℝ :=
  if h : ∃ δ : ℝ, ExactRadiusData K δ then h.choose else 0

theorem exact_radius_spec {K : Set (Fin 2 → ℝ)}
    (hK : SafeAction K) (hρ : kRhoMax K < 1) :
    ExactRadiusData K (exactDelta K) := by sorry

-- This type can stay unchanged once exactDelta uses the stronger selection predicate.
theorem exact_positions_mem_shiftO {K : Set (Fin 2 → ℝ)}
    (hK : SafeAction K) (hρ : kRhoMax K < 1) :
    ∀ w ∈ UDelta K (exactDelta K),
      (delaunayC K w).1 ∈ shiftO (kRmin K) (kRhoMax K) (exactEps K) := by sorry
end KAM.Iso
```

`exact_ham` can retain its current type as a consequence of this stronger specification. The source's compactness/uniform-continuity argument proves existence of `ExactRadiusData`; both radii still depend only on K. `ExactRadiusData` is a result predicate used in a choice and a theorem conclusion, not a standing input. Do **not** repair the theorem by requiring `ExactRadiusData`, an already-small radius, or the desired geometric inclusion as a premise from I8.

## Other new interfaces and consumer checks

**Complex-domain factorization: PASS.** Comparing the actual old and new bodies after whitespace normalization gives equality of every conjunct. The selected `complexDelta` includes positivity, the original numerical upper bound, positive real L, analytic principal eccentricity, uniform eccentricity proximity to every nearby safe point, the real cone, orbit-domain inclusion, holomorphy of the complex chart and real agreement. `complex_domain_spec` assumes only the original `SafeAction K`. Its output predicate is not smuggled into a theorem premise. The retained old D10 prose contradicts the actual repaired code but not its semantics (R2-2).

**KeplerData/IFT: PASS.** Its added `[CompleteSpace P]` and analytic coefficient fields are legitimate restrictions of an internal helper; neither source instance has acquired a new hypothesis. `P=ℂ×ℂ` and `P=ℂ×(Fin 2→ℂ)` are complete, and a, b, c in both instances are linear coordinate projections or zero. They are analytic without importing `KAM.Strip.Analytic`. Strict invariance places the fixed point in the open strip; the coefficient bound gives a nonzero scalar partial derivative. Analytic IFT plus uniqueness therefore glues the correct branch locally. `keplerSol_fderiv` has the correct signs: `G'*(1-a cos G-b sin G)=a' sin G-b' cos G+c'`. No inverse or analyticity conclusion is assumed as data. `kappa>=0` need not be an extra field: the contraction inequality implies it at every point of a nonempty parameter domain.

**Transfer and frozen physical predicates: PASS.** `transfer_identities` uses the original frozen `IsHamiltonianSolutionOn`, with its action-membership and differentiability clauses, and produces the literal frozen restricted subtype Hamiltonian equality. Its elements and radius equality use `periodOneMap` with actions divided by `2*pi`; no rescaling of time or energy is introduced. `fixed_in_tube` spells exactly the finite-time fixed equations with velocity `p/m`, an arbitrary real epsilon, collision exclusion and the origin at Sun index zero. With `J=univ`, its clauses package the frozen `IsFixedSolution`; pair bounds use `Fin.cons 0`, not barycentric positions. Existing moving reconstruction continues to distinguish the finite-time G-absorbed mass array from the all-time gravitational constant parameter.

**phaseCast and its product chart: PASS.** The body is the product of two `piCongrLeft` equivalences for `finCongr h`. A fresh Lean proof confirms its `Fin.cast h.symm` application formula. After eliminating `h:d=e`, it is literally the identity; the frozen Hamiltonian-vector-field equality holds by `rfl` even for a nondifferentiable H. Thus the absence of a differentiability premise on that particular cast lemma is correct. The volume and measurable-image targets likewise transport the same finite-dimensional ambient measure. `phaseCast_measurableEquiv` is a measurable-image theorem despite its name; no bundled measurable equivalence is assumed. `poincareProdCast` precomposes by `phaseCast (Nat.mul_two n)` from physical-size coordinates to block-size coordinates. The inverse cast on `fastShift` in its iff theorem has the correct direction. Physical body interleaving remains entirely inside `poincareProd`; the cast itself does not rearrange fast and slow variables as bodies.

**Explicit Jacobian columns: PASS.** The frame derivatives agree with direct differentiation: the fixed-u eccentricity derivative of `P_Y=k cos(u)/(L D)` is `cos(u)*(cos(u)-e)/(L D² k)`, while its u derivative is `-k sin(u)/(L D²)`. `orbitMapColumn` combines these with `u_ell=1/D`, `u_e=sin(u)/D`, rotation in g and the fixed-e L derivative. The Delaunay chain rule uses `e_L=G²/(L³e)`, `e_G=-G/(L²e)`. All reciprocals are guarded on `0<G<L`; the helper `fderiv_orbitMapR_basis` restricts to `0<e<1` and does not claim these singular columns at e=0. The Liouville primitive has the correct factor 2 and sign for the frozen form convention.

**Shared plane-length helpers: PASS.** The norms are ambient Pi sup norms; physical `planeLength` and `Iso.radius` remain square roots of the same sum of squares. The triangle inequality and the sharp sqrt(2) comparison are identical in mathematical type to the N3-8 draft. The `radius_eq_planeLength` and `radiusSq_eq_planeSq` bodies are `rfl`, as independently elaborated. Namespace ownership changes to `KAM.Kepler` are explicit, not a claim of definitional equality of theorem names. N3-8 must import this early module and qualify/open those names; none of these helper contracts needs a Kepler orbit, positive masses, or a Hamiltonian premise.

| Consumer | Result of recheck |
|---|---|
| I8 | Restored transfer identities and selected complex-domain controls have the correct frozen carriers. The physical exact Hamiltonian conclusions remain usable; R2-1 must be fixed to certify all exported targets for the chosen radius. No new assumption may be requested from I8. |
| P8/P11b | Complex/real Kepler derivatives, circular regularity, analytic IFT and energy/means interfaces remain applicable; source instances of the strengthened helper have explicit analytic coordinate coefficients. |
| P12 | Frozen fastShift is now integrated. The n=2 carriers reduce arithmetically; the general cast also exists. The design correctly retains the warning that full-position polar transport and `measure_chart_image` are not its Cartesian cylinder transport/measure argument. |
| P13 (planned) | General-n cast and fixed-Sun equations/assembly support the stated planned use. No source file is available to certify more. |
| P14a | Same-carrier cast and frozen finite-time reconstruction are compatible with general n. Physical element recovery is blockwise from `poincare_elements`; the two-planet D25 convenience theorem is not incorrectly substituted for arbitrary n. |
| P14b | Frozen secular/ellipse formulas unchanged; global continuity in the average theorem still matches the explicit source statement. P14b states that comparison is not used in its proofs. |
| N3-8 | The shared norm/length/radius types match. The design is acyclic if N imports the early Kepler.Plane package as directed. Cross-branch implementation/import replacement remains future work. |

## Package and import-DAG verdict

**PASS for the package dependency design, with the nonblocking documentation fixes below.** Parsed the Section-7 table: 32 packages, 35 distinct owned module paths, no ownership collisions. With I-0's explicitly preexisting wave 0, every other wave equals `1+max(waves of listed internal After packages)`; all comparisons pass. The two Part-1 gates are external prerequisites, not falsely claimed delivered by this design. The main chain has ten waves; P7-4 is correctly wave 4.

The important module-level checks are:

* Basic → Plane → Energy stays early. `kE`, `energyMK`, mass/strength definitions and regions do not depend on the orbit chart. Hence RestrictedHam and Newtonian.Models can state their energy identities at wave 2.
* DelaunayChart now follows DelaunaySymplectic (KEP-7 after KEP-6); Mass follows chart/symplectic/means (wave 6).
* Newtonian.Tube follows Reconstruction, as required by both tube solution corollaries.
* The phaseCast group is assigned to Basic even though it appears later in the signature continuation; its types/bodies depend only on frozen phase, form, field and ordinary linear/measure theory. Moving it to that module introduces no dependency on Poincare.Chart/Holomorphic.
* Poincare.D25's removed direct Means import is harmless: Product → Bijective → Symplectic → Mass → Means already provides it.
* I-0's determinant module is still an explicit integration prerequisite from `inp-w1gates`, not a file proved or independently certified here. A package cannot claim that prerequisite has landed merely because it is listed.

Every estimated module size is below 1500 (largest 900). These are estimates, not measured completed proofs. The two signature fragments are 994 and 690 lines; the scratch concatenation is a checking artifact, not a proposed production module. The explicit user-requested fragment/concatenation workflow was used; the P continuation is not claimed to be independently importable Lean.

### R2-2 — LOW: superseded prose remains

These do not require changing a mathematical signature:

* D:236 still says in D10 that `delta2<=delta1` is omitted and follows from the listed properties, although D20 and the actual definition now include it. Replace D10 with the repaired selected-radius description.
* D:616 still says phaseCast is “to be added”, although it is now designed. The phaseCast_analytic docstring P:496 mentions bodyVector transport, but its actual conclusion is analyticity; name/describe the actual output.
* D:665's “1.5431 fails by 1e-4” is not a true numerical statement: `cosh(1)≈1.543080635<1.5431`. The new helper with bound 1.55 is true and sufficient; distinguish an unsuccessful probe from a false inequality.
* The ownership table assigns the early mass/energy definitions to Energy, while some older node-table rows still call their module Mass. Treat the revised Section-6 ownership as authoritative and update the older rows. The “After = exactly DAG imports” wording also includes redundant package edges (e.g. I-2 lists KEP-1 though Conversion obtains Basic transitively via KeplerHamiltonian); these do not change waves or create a cycle.

## Definition and frozen-object verdicts

Frozen-object fidelity **PASS**: the FastShift redeclaration is removed; the new physical outputs use the frozen Hamiltonian, solution, body-vector and pair-bound predicates or the already specified literal bridges. `NearCircularWitness` is an exact factorization of the three existential witnesses' frozen conditions, not a substitute frozen set; unfolding the original `NearCircular` exposes precisely those witnesses. Uniqueness is a result, not an extra assumption about a NearCircular point.

Definitions **PASS except exactDelta's incomplete geometric selection contract**. `ComplexDomainData`/`ExactHamData` are transparently result predicates, never accepted as source-facing assumptions. `complexDelta` is admissible under SafeAction once its specification is proved. The radius is an existential auxiliary choice, not a uniquely defined physical observable; lack of uniqueness itself is not the finding. No global instance on bare Pi or matrix types is introduced, and no physical conclusion is drawn from a fallback branch. R2-1 concerns an additional property of a permitted non-default selection.

## Per-signature inventory

The table includes every current declaration. “Unchanged” means its entire statement/definition body, after comments and layout are removed, matches the round-1 object; it carries that audit's source role and bounded result. Changed/new rows were checked independently as described above. A PASS is a design/type/source-contract verdict, not proof certification. `regularKepler_complex`, `keplerEq_tube`, `transfer`, and `newton_in_tube` now pass as components of their completed source-facing families. Two FAIL rows refer to the single selection finding R2-1 and the corrected signatures above.

| File:line | Lean name | Source label / role | Verdict | Round-2 check | Reason |
|---|---|---|---|---|---|
| A:90 | `KAM.Kepler.rot` | `bpP:p6:plane / bpI:p7:sec-ext` | PASS | unchanged | Unchanged: Frozen planar algebra/norm or rotation/calculus helper; physical length retained. |
| A:94 | `KAM.Kepler.ex` | `bpP:p6:plane / bpI:p7:sec-ext` | PASS | unchanged | Unchanged: Frozen planar algebra/norm or rotation/calculus helper; physical length retained. |
| A:96 | `KAM.Kepler.planeSq_eq_planeDot` | `bpP:p6:plane / bpI:p7:sec-ext` | PASS | unchanged | Unchanged: Frozen planar algebra/norm or rotation/calculus helper; physical length retained. |
| A:97 | `KAM.Kepler.planeLength_sq` | `bpP:p6:plane / bpI:p7:sec-ext` | PASS | unchanged | Unchanged: Frozen planar algebra/norm or rotation/calculus helper; physical length retained. |
| A:98 | `KAM.Kepler.planeLength_nonneg` | `bpP:p6:plane / bpI:p7:sec-ext` | PASS | unchanged | Unchanged: Frozen planar algebra/norm or rotation/calculus helper; physical length retained. |
| A:99 | `KAM.Kepler.planeLength_eq_zero_iff` | `bpP:p6:plane / bpI:p7:sec-ext` | PASS | unchanged | Unchanged: Frozen planar algebra/norm or rotation/calculus helper; physical length retained. |
| A:100 | `KAM.Kepler.planeLength_pos_iff` | `bpP:p6:plane / bpI:p7:sec-ext` | PASS | unchanged | Unchanged: Frozen planar algebra/norm or rotation/calculus helper; physical length retained. |
| A:101 | `KAM.Kepler.planeLength_neg` | `bpP:p6:plane / bpI:p7:sec-ext` | PASS | unchanged | Unchanged: Frozen planar algebra/norm or rotation/calculus helper; physical length retained. |
| A:102 | `KAM.Kepler.planeLength_sub_comm` | `bpP:p6:plane / bpI:p7:sec-ext` | PASS | unchanged | Unchanged: Frozen planar algebra/norm or rotation/calculus helper; physical length retained. |
| A:103 | `KAM.Kepler.planeLength_smul` | `bpP:p6:plane / bpI:p7:sec-ext` | PASS | unchanged | Unchanged: Frozen planar algebra/norm or rotation/calculus helper; physical length retained. |
| A:104 | `KAM.Kepler.abs_planeDot_le` | `bpP:p6:plane / bpI:p7:sec-ext` | PASS | unchanged | Unchanged: Frozen planar algebra/norm or rotation/calculus helper; physical length retained. |
| A:105 | `KAM.Kepler.planeLength_add_le` | `bpP:p6:plane / bpI:p7:sec-ext` | PASS | unchanged | Unchanged: Frozen planar algebra/norm or rotation/calculus helper; physical length retained. |
| A:106 | `KAM.Kepler.abs_planeLength_sub_le` | `bpP:p6:plane / bpI:p7:sec-ext` | PASS | unchanged | Unchanged: Frozen planar algebra/norm or rotation/calculus helper; physical length retained. |
| A:108 | `KAM.Kepler.norm_le_planeLength` | `bpP:p6:plane / bpI:p7:sec-ext` | PASS | unchanged | Unchanged: Frozen planar algebra/norm or rotation/calculus helper; physical length retained. |
| A:109 | `KAM.Kepler.planeLength_le_sqrt_two_mul_norm` | `bpP:p6:plane / bpI:p7:sec-ext` | PASS | unchanged | Unchanged: Frozen planar algebra/norm or rotation/calculus helper; physical length retained. |
| A:111 | `KAM.Kepler.planeSq_mul_planeSq` | `bpP:p6:plane / bpI:p7:sec-ext` | PASS | unchanged | Unchanged: Frozen planar algebra/norm or rotation/calculus helper; physical length retained. |
| A:114 | `KAM.Kepler.eq_of_planeDot_planeCross_eq` | `bpP:p6:plane / bpI:p7:sec-ext` | PASS | unchanged | Unchanged: Frozen planar algebra/norm or rotation/calculus helper; physical length retained. |
| A:117 | `KAM.Kepler.planeLength_rot` | `bpP:p6:plane / bpI:p7:sec-ext` | PASS | unchanged | Unchanged: Frozen planar algebra/norm or rotation/calculus helper; physical length retained. |
| A:118 | `KAM.Kepler.planeDot_rot` | `bpP:p6:plane / bpI:p7:sec-ext` | PASS | unchanged | Unchanged: Frozen planar algebra/norm or rotation/calculus helper; physical length retained. |
| A:119 | `KAM.Kepler.planeCross_rot` | `bpP:p6:plane / bpI:p7:sec-ext` | PASS | unchanged | Unchanged: Frozen planar algebra/norm or rotation/calculus helper; physical length retained. |
| A:120 | `KAM.Kepler.rot_rot` | `bpP:p6:plane / bpI:p7:sec-ext` | PASS | unchanged | Unchanged: Frozen planar algebra/norm or rotation/calculus helper; physical length retained. |
| A:121 | `KAM.Kepler.rot_two_pi_int` | `bpP:p6:plane / bpI:p7:sec-ext` | PASS | unchanged | Unchanged: Frozen planar algebra/norm or rotation/calculus helper; physical length retained. |
| A:122 | `KAM.Kepler.rot_quarterTurn` | `bpP:p6:plane / bpI:p7:sec-ext` | PASS | unchanged | Unchanged: Frozen planar algebra/norm or rotation/calculus helper; physical length retained. |
| A:123 | `KAM.Kepler.rot_ex` | `bpP:p6:plane / bpI:p7:sec-ext` | PASS | unchanged | Unchanged: Frozen planar algebra/norm or rotation/calculus helper; physical length retained. |
| A:125 | `KAM.Kepler.exists_rot_eq` | `bpP:p6:plane / bpI:p7:sec-ext` | PASS | unchanged | Unchanged: Frozen planar algebra/norm or rotation/calculus helper; physical length retained. |
| A:128 | `KAM.Kepler.analyticAt_planeLength` | `bpP:p6:plane / bpI:p7:sec-ext` | PASS | unchanged | Unchanged: Frozen planar algebra/norm or rotation/calculus helper; physical length retained. |
| A:129 | `KAM.Kepler.analyticAt_inv_planeLength` | `bpP:p6:plane / bpI:p7:sec-ext` | PASS | unchanged | Unchanged: Frozen planar algebra/norm or rotation/calculus helper; physical length retained. |
| A:131 | `KAM.Kepler.analyticAt_inv_cube_smul` | `bpP:p6:plane / bpI:p7:sec-ext` | PASS | unchanged | Unchanged: Frozen planar algebra/norm or rotation/calculus helper; physical length retained. |
| A:134 | `KAM.Kepler.hasFDerivAt_planeLength` | `bpP:p6:plane / bpI:p7:sec-ext` | PASS | unchanged | Unchanged: Frozen planar algebra/norm or rotation/calculus helper; physical length retained. |
| A:138 | `KAM.Kepler.hasFDerivAt_inv_planeLength` | `bpP:p6:plane / bpI:p7:sec-ext` | PASS | unchanged | Unchanged: Frozen planar algebra/norm or rotation/calculus helper; physical length retained. |
| A:145 | `KAM.Kepler.radius_eq_planeLength` | `bpP:p6:plane / bpI:p7:sec-ext` | PASS | new | Exact frozen radius/length bridge for N3-8; rfl body independently elaborates. |
| A:146 | `KAM.Kepler.radiusSq_eq_planeSq` | `bpP:p6:plane / bpI:p7:sec-ext` | PASS | new | Exact frozen squared-radius bridge; rfl body independently elaborates. |
| A:155 | `KAM.Kepler.keplerPhi` | `bpP:p7:regular-kepler(a); bpP:p7:d25(b)` | PASS | unchanged | Unchanged: Regular real inverse equation/derivative or explicit frozen longitude bridge; guarded by length<1 where needed. |
| A:158 | `KAM.Kepler.keplerJac` | `bpP:p7:regular-kepler(a); bpP:p7:d25(b)` | PASS | unchanged | Unchanged: Regular real inverse equation/derivative or explicit frozen longitude bridge; guarded by length<1 where needed. |
| A:160 | `KAM.Kepler.keplerMeanLongitude_eq` | `bpP:p7:regular-kepler(a); bpP:p7:d25(b)` | PASS | unchanged | Unchanged: Regular real inverse equation/derivative or explicit frozen longitude bridge; guarded by length<1 where needed. |
| A:162 | `KAM.Kepler.longitudeJacobian_eq` | `bpP:p7:regular-kepler(a); bpP:p7:d25(b)` | PASS | unchanged | Unchanged: Regular real inverse equation/derivative or explicit frozen longitude bridge; guarded by length<1 where needed. |
| A:165 | `KAM.Kepler.hasDerivAt_keplerPhi` | `bpP:p7:regular-kepler(a); bpP:p7:d25(b)` | PASS | unchanged | Unchanged: Regular real inverse equation/derivative or explicit frozen longitude bridge; guarded by length<1 where needed. |
| A:166 | `KAM.Kepler.keplerPhi_shift` | `bpP:p7:regular-kepler(a); bpP:p7:d25(b)` | PASS | unchanged | Unchanged: Regular real inverse equation/derivative or explicit frozen longitude bridge; guarded by length<1 where needed. |
| A:167 | `KAM.Kepler.keplerPhi_zero` | `bpP:p7:regular-kepler(a); bpP:p7:d25(b)` | PASS | unchanged | Unchanged: Regular real inverse equation/derivative or explicit frozen longitude bridge; guarded by length<1 where needed. |
| A:168 | `KAM.Kepler.keplerJac_ge` | `bpP:p7:regular-kepler(a); bpP:p7:d25(b)` | PASS | unchanged | Unchanged: Regular real inverse equation/derivative or explicit frozen longitude bridge; guarded by length<1 where needed. |
| A:169 | `KAM.Kepler.keplerJac_pos` | `bpP:p7:regular-kepler(a); bpP:p7:d25(b)` | PASS | unchanged | Unchanged: Regular real inverse equation/derivative or explicit frozen longitude bridge; guarded by length<1 where needed. |
| A:170 | `KAM.Kepler.keplerPhi_strictMono` | `bpP:p7:regular-kepler(a); bpP:p7:d25(b)` | PASS | unchanged | Unchanged: Regular real inverse equation/derivative or explicit frozen longitude bridge; guarded by length<1 where needed. |
| A:171 | `KAM.Kepler.keplerPhi_bijective` | `bpP:p7:regular-kepler(a); bpP:p7:d25(b)` | PASS | unchanged | Unchanged: Regular real inverse equation/derivative or explicit frozen longitude bridge; guarded by length<1 where needed. |
| A:175 | `KAM.Kepler.keplerLong` | `bpP:p7:regular-kepler(a); bpP:p7:d25(b)` | PASS | unchanged | Unchanged: Unique real inverse on length<1; default off that domain is never used by guarded consumers. |
| A:179 | `KAM.Kepler.keplerPhi_keplerLong` | `bpP:p7:regular-kepler(a); bpP:p7:d25(b)` | PASS | unchanged | Unchanged: Regular real inverse equation/derivative or explicit frozen longitude bridge; guarded by length<1 where needed. |
| A:181 | `KAM.Kepler.keplerLong_unique` | `bpP:p7:regular-kepler(a); bpP:p7:d25(b)` | PASS | unchanged | Unchanged: Regular real inverse equation/derivative or explicit frozen longitude bridge; guarded by length<1 where needed. |
| A:183 | `KAM.Kepler.keplerLong_shift` | `bpP:p7:regular-kepler(a); bpP:p7:d25(b)` | PASS | unchanged | Unchanged: Regular real inverse equation/derivative or explicit frozen longitude bridge; guarded by length<1 where needed. |
| A:185 | `KAM.Kepler.keplerLong_zero_vec` | `bpP:p7:regular-kepler(a); bpP:p7:d25(b)` | PASS | unchanged | Unchanged: Regular real inverse equation/derivative or explicit frozen longitude bridge; guarded by length<1 where needed. |
| A:188 | `KAM.Kepler.analyticOnNhd_keplerLong` | `bpP:p7:regular-kepler(a); bpP:p7:d25(b)` | PASS | unchanged | Unchanged: Regular real inverse equation/derivative or explicit frozen longitude bridge; guarded by length<1 where needed. |
| A:190 | `KAM.Kepler.hasDerivAt_keplerLong_lambda` | `bpP:p7:regular-kepler(a); bpP:p7:d25(b)` | PASS | unchanged | Unchanged: Regular real inverse equation/derivative or explicit frozen longitude bridge; guarded by length<1 where needed. |
| A:193 | `KAM.Kepler.fderiv_keplerLong_vec` | `bpP:p7:regular-kepler(a); bpP:p7:d25(b)` | PASS | unchanged | Unchanged: Regular real inverse equation/derivative or explicit frozen longitude bridge; guarded by length<1 where needed. |
| A:200 | `KAM.Kepler.eccAnom` | `bpI:p7:kepler-eq(c)` | PASS | unchanged | Unchanged: Real anomaly specialization; absolute eccentricity<1, with signed-e analyticity. |
| A:202 | `KAM.Kepler.planeLength_eccVec` | `bpI:p7:kepler-eq(c)` | PASS | unchanged | Unchanged: Real anomaly specialization; absolute eccentricity<1, with signed-e analyticity. |
| A:204 | `KAM.Kepler.eccAnom_eq` | `bpI:p7:kepler-eq(c)` | PASS | unchanged | Unchanged: Real anomaly specialization; absolute eccentricity<1, with signed-e analyticity. |
| A:205 | `KAM.Kepler.analyticOnNhd_eccAnom` | `bpI:p7:kepler-eq(c)` | PASS | unchanged | Unchanged: Real anomaly specialization; absolute eccentricity<1, with signed-e analyticity. |
| A:206 | `KAM.Kepler.eccAnom_zero_left` | `bpI:p7:kepler-eq(c)` | PASS | unchanged | Unchanged: Real anomaly specialization; absolute eccentricity<1, with signed-e analyticity. |
| A:207 | `KAM.Kepler.eccAnom_two_pi` | `bpI:p7:kepler-eq(c)` | PASS | unchanged | Unchanged: Real anomaly specialization; absolute eccentricity<1, with signed-e analyticity. |
| A:208 | `KAM.Kepler.eccAnom_zero_ecc` | `bpI:p7:kepler-eq(c)` | PASS | unchanged | Unchanged: Real anomaly specialization; absolute eccentricity<1, with signed-e analyticity. |
| A:209 | `KAM.Kepler.hasDerivAt_eccAnom` | `bpI:p7:kepler-eq(c)` | PASS | unchanged | Unchanged: Real anomaly specialization; absolute eccentricity<1, with signed-e analyticity. |
| A:211 | `KAM.Kepler.strictMono_eccAnom` | `bpI:p7:kepler-eq(c)` | PASS | unchanged | Unchanged: Real anomaly specialization; absolute eccentricity<1, with signed-e analyticity. |
| A:213 | `KAM.Kepler.keplerLong_eq_add_eccAnom` | `bpP:p7:regular-kepler(c)` | PASS | unchanged | Unchanged: Correct radian longitude/anomaly relation for positive eccentricity. |
| A:219 | `KAM.Kepler.keplerOp` | `bpI:p7:kepler-eq; bpP:p7:regular-kepler(b) (helper)` | PASS | unchanged | Unchanged: Scalar contraction operator/specification; quantitative coefficient data, no assumed source conclusion. |
| A:223 | `KAM.Kepler.KeplerData` | `bpI:p7:kepler-eq; bpP:p7:regular-kepler(b) (helper)` | PASS | modified | Analytic coefficients and complete P support IFT; coordinate instances discharge these internally, not as new source hypotheses. |
| A:237 | `KAM.Kepler.keplerSol` | `bpI:p7:kepler-eq; bpP:p7:regular-kepler(b) (helper)` | PASS | unchanged | Unchanged: Strip-unique inverse selected when it exists; actual instances must discharge existence/uniqueness before use. |
| A:245 | `KAM.Kepler.keplerSol_spec` | `bpI:p7:kepler-eq; bpP:p7:regular-kepler(b) (helper)` | PASS | modified | Generic helper restricted consistently to complete analytic coefficient data; both source instances remain available. |
| A:250 | `KAM.Kepler.keplerSol_analyticOnNhd` | `bpI:p7:kepler-eq / bpP:p7:regular-kepler (helper)` | PASS | new | Analytic-IFT route valid with complete P, analytic coefficient data and strict invariance. |
| A:253 | `KAM.Kepler.keplerSol_differentiableOn` | `bpI:p7:kepler-eq; bpP:p7:regular-kepler(b) (helper)` | PASS | modified | Derivative corollary of new analytic helper; finite-dimensional source instances supply data. |
| A:258 | `KAM.Kepler.keplerSol_fderiv` | `bpI:p7:kepler-eq / bpP:p7:regular-kepler (helper)` | PASS | new | Correct differentiated equation; nonzero scalar denominator follows from contraction data. |
| A:265 | `KAM.Kepler.keplerSol_real` | `bpI:p7:kepler-eq; bpP:p7:regular-kepler(b) (helper)` | PASS | unchanged | Unchanged: Valid auxiliary conjugation/uniqueness implication; hex is redundant with huniq, not a source-result replacement. |
| A:269 | `KAM.Kepler.keplerSol_shift` | `bpI:p7:kepler-eq; bpP:p7:regular-kepler(b) (helper)` | PASS | unchanged | Unchanged: Valid auxiliary uniqueness/translation implication; source instances prove uniqueness via the contraction. |
| A:273 | `KAM.Kepler.regularTube` | `bpP:p7:regular-kepler(b)` | PASS | unchanged | Unchanged: Correct regular complex tube/solution or guarded real/periodic/lambda-derivative component. |
| A:275 | `KAM.Kepler.keplerLongC` | `bpP:p7:regular-kepler(b)` | PASS | unchanged | Unchanged: Correct regular complex tube/solution or guarded real/periodic/lambda-derivative component. |
| A:277 | `KAM.Kepler.regularKepler_complex` | `bpP:p7:regular-kepler(b)` | PASS | same type; completed family | Unchanged component now completed by new complex vector derivatives and quantitative Jacobian companion. |
| A:283 | `KAM.Kepler.keplerLongC_ofReal` | `bpP:p7:regular-kepler(b)` | PASS | unchanged | Unchanged: Correct regular complex tube/solution or guarded real/periodic/lambda-derivative component. |
| A:286 | `KAM.Kepler.keplerLongC_shift` | `bpP:p7:regular-kepler(b)` | PASS | unchanged | Unchanged: Correct regular complex tube/solution or guarded real/periodic/lambda-derivative component. |
| A:289 | `KAM.Kepler.hasDerivAt_keplerLongC_lambda` | `bpP:p7:regular-kepler(b)` | PASS | unchanged | Unchanged: Correct regular complex tube/solution or guarded real/periodic/lambda-derivative component. |
| A:295 | `KAM.Kepler.fderiv_keplerLongC_vec` | `bpP:p7:regular-kepler(b)` | PASS | new | Correct complex vector derivatives sin(F)/J and -cos(F)/J. |
| A:302 | `KAM.Kepler.regularKepler_jac_bound` | `bpP:p7:regular-kepler(b)` | PASS | new | Restores source quantitative Jacobian bound and its strict 3/5 comparison. |
| A:307 | `KAM.Kepler.cosh_one_lt` | `bpP:p7:regular-kepler(b) (helper)` | PASS | new | True sufficient bound cosh(1)<1.55; fresh sorry-free numerical probe passes. |
| A:312 | `KAM.Kepler.keplerE2` | `bpI:p7:kepler-eq` | PASS | unchanged | Unchanged: Matches arcosh thin-tube constants, strip specification, bounds or guarded anomaly component. |
| A:313 | `KAM.Kepler.keplerTheta` | `bpI:p7:kepler-eq` | PASS | unchanged | Unchanged: Matches arcosh thin-tube constants, strip specification, bounds or guarded anomaly component. |
| A:314 | `KAM.Kepler.keplerY0` | `bpI:p7:kepler-eq` | PASS | unchanged | Unchanged: Matches arcosh thin-tube constants, strip specification, bounds or guarded anomaly component. |
| A:315 | `KAM.Kepler.keplerDeltaK` | `bpI:p7:kepler-eq` | PASS | unchanged | Unchanged: Matches arcosh thin-tube constants, strip specification, bounds or guarded anomaly component. |
| A:316 | `KAM.Kepler.keplerDeltaE` | `bpI:p7:kepler-eq` | PASS | unchanged | Unchanged: Matches arcosh thin-tube constants, strip specification, bounds or guarded anomaly component. |
| A:319 | `KAM.Kepler.keplerTube` | `bpI:p7:kepler-eq` | PASS | unchanged | Unchanged: Matches arcosh thin-tube constants, strip specification, bounds or guarded anomaly component. |
| A:323 | `KAM.Kepler.eccAnomC` | `bpI:p7:kepler-eq` | PASS | unchanged | Unchanged: Matches arcosh thin-tube constants, strip specification, bounds or guarded anomaly component. |
| A:325 | `KAM.Kepler.keplerConstants_pos` | `bpI:p7:kepler-eq` | PASS | unchanged | Unchanged: Matches arcosh thin-tube constants, strip specification, bounds or guarded anomaly component. |
| A:329 | `KAM.Kepler.keplerEq_tube` | `bpI:p7:kepler-eq` | PASS | same type; completed family | Unchanged component now completed by the new complex eccentricity derivative. |
| A:338 | `KAM.Kepler.keplerTube_real_points` | `bpI:p7:kepler-eq` | PASS | unchanged | Unchanged: Matches arcosh thin-tube constants, strip specification, bounds or guarded anomaly component. |
| A:340 | `KAM.Kepler.eccAnomC_periodic` | `bpI:p7:kepler-eq` | PASS | unchanged | Unchanged: Matches arcosh thin-tube constants, strip specification, bounds or guarded anomaly component. |
| A:343 | `KAM.Kepler.eccAnomC_zero_ecc` | `bpI:p7:kepler-eq` | PASS | unchanged | Unchanged: Matches arcosh thin-tube constants, strip specification, bounds or guarded anomaly component. |
| A:345 | `KAM.Kepler.hasDerivAt_eccAnomC_ell` | `bpI:p7:kepler-eq` | PASS | unchanged | Unchanged: Matches arcosh thin-tube constants, strip specification, bounds or guarded anomaly component. |
| A:349 | `KAM.Kepler.hasDerivAt_eccAnomC_ecc` | `bpI:p7:kepler-eq(b)` | PASS | new | Correct missing complex eccentricity derivative on the original thin tube. |
| A:362 | `KAM.Kepler.IsSymplecticOn` | `bpI:p7:symplectic / bpP:p1:chart (helper)` | PASS | unchanged | Unchanged: Literal frozen-form pullback equality, heterogeneous dimensions allowed; composition API must supply differentiability. |
| A:367 | `KAM.Kepler.IsSymplecticOn.comp` | `bpP:p1:chart (helper)` | PASS | new | Correct product of conformal factors with explicit differentiability and MapsTo chain-rule inputs. |
| A:373 | `KAM.Kepler.phaseToC` | `bpI:p7:symplectic / bpP:p1:chart (helper)` | PASS | unchanged | Unchanged: Uses frozen form on source/target Pi products; complexification is entrywise. |
| A:377 | `KAM.Kepler.eccOf` | `bpI:p7:orbit-maps` | PASS | unchanged | Unchanged: Literal ellipse/orbit chart formula; cone and eccentricity conventions match. |
| A:380 | `KAM.Kepler.kE` | `bpI:p7:orbit-maps` | PASS | unchanged | Unchanged: Literal ellipse/orbit chart formula; cone and eccentricity conventions match. |
| A:383 | `KAM.Kepler.orbitFrame` | `bpI:p7:orbit-maps` | PASS | unchanged | Unchanged: Literal ellipse/orbit chart formula; cone and eccentricity conventions match. |
| A:388 | `KAM.Kepler.orbitMapR` | `bpI:p7:orbit-maps` | PASS | unchanged | Unchanged: Literal ellipse/orbit chart formula; cone and eccentricity conventions match. |
| A:392 | `KAM.Kepler.deDom` | `bpI:p7:orbit-maps` | PASS | unchanged | Unchanged: Literal ellipse/orbit chart formula; cone and eccentricity conventions match. |
| A:395 | `KAM.Kepler.delaunay` | `bpI:p7:orbit-maps` | PASS | unchanged | Unchanged: Literal ellipse/orbit chart formula; cone and eccentricity conventions match. |
| A:398 | `KAM.Kepler.keplerRegion` | `bpI:p7:elements / bpI:p7:orbit-maps` | PASS | unchanged | Unchanged: Correct noncircular prograde region, elements or open-domain helper. |
| A:402 | `KAM.Kepler.elemL` | `bpI:p7:elements / bpI:p7:orbit-maps` | PASS | unchanged | Unchanged: Correct noncircular prograde region, elements or open-domain helper. |
| A:403 | `KAM.Kepler.elemA` | `bpI:p7:elements / bpI:p7:orbit-maps` | PASS | unchanged | Unchanged: Correct noncircular prograde region, elements or open-domain helper. |
| A:404 | `KAM.Kepler.elemEcc` | `bpI:p7:elements / bpI:p7:orbit-maps` | PASS | unchanged | Unchanged: Correct noncircular prograde region, elements or open-domain helper. |
| A:406 | `KAM.Kepler.isOpen_keplerRegion` | `bpI:p7:elements / bpI:p7:orbit-maps` | PASS | unchanged | Unchanged: Correct noncircular prograde region, elements or open-domain helper. |
| A:407 | `KAM.Kepler.isOpen_deDom` | `bpI:p7:elements / bpI:p7:orbit-maps` | PASS | unchanged | Unchanged: Correct noncircular prograde region, elements or open-domain helper. |
| A:412 | `KAM.Kepler.orbitMapR_radius` | `bpI:p7:orbit-identities; bpI:p7:circular` | PASS | unchanged | Unchanged: Correct orbit-frame identity/analyticity, including e=0 without asserting noncircular membership. |
| A:414 | `KAM.Kepler.orbitMapR_radius_bounds` | `bpI:p7:orbit-identities; bpI:p7:circular` | PASS | unchanged | Unchanged: Correct orbit-frame identity/analyticity, including e=0 without asserting noncircular membership. |
| A:417 | `KAM.Kepler.orbitMapR_speed_sq` | `bpI:p7:orbit-identities; bpI:p7:circular` | PASS | unchanged | Unchanged: Correct orbit-frame identity/analyticity, including e=0 without asserting noncircular membership. |
| A:420 | `KAM.Kepler.orbitMapR_cross` | `bpI:p7:orbit-identities; bpI:p7:circular` | PASS | unchanged | Unchanged: Correct orbit-frame identity/analyticity, including e=0 without asserting noncircular membership. |
| A:422 | `KAM.Kepler.orbitMapR_dot` | `bpI:p7:orbit-identities; bpI:p7:circular` | PASS | unchanged | Unchanged: Correct orbit-frame identity/analyticity, including e=0 without asserting noncircular membership. |
| A:424 | `KAM.Kepler.orbitMapR_energy` | `bpI:p7:orbit-identities; bpI:p7:circular` | PASS | unchanged | Unchanged: Correct orbit-frame identity/analyticity, including e=0 without asserting noncircular membership. |
| A:427 | `KAM.Kepler.orbitMapR_radial` | `bpI:p7:orbit-identities; bpI:p7:circular` | PASS | unchanged | Unchanged: Correct orbit-frame identity/analyticity, including e=0 without asserting noncircular membership. |
| A:432 | `KAM.Kepler.orbitMapR_periodic` | `bpI:p7:orbit-identities; bpI:p7:circular` | PASS | unchanged | Unchanged: Correct orbit-frame identity/analyticity, including e=0 without asserting noncircular membership. |
| A:434 | `KAM.Kepler.analyticOnNhd_orbitMapR` | `bpI:p7:orbit-identities; bpI:p7:circular` | PASS | unchanged | Unchanged: Correct orbit-frame identity/analyticity, including e=0 without asserting noncircular membership. |
| A:440 | `KAM.Kepler.delaunay_mem_region` | `bpI:p7:orbit-identities / bpI:p7:chart` | PASS | unchanged | Unchanged: Guarded noncircular Delaunay elements, domain or analytic helper. |
| A:441 | `KAM.Kepler.delaunay_elements` | `bpI:p7:orbit-identities / bpI:p7:chart` | PASS | unchanged | Unchanged: Guarded noncircular Delaunay elements, domain or analytic helper. |
| A:444 | `KAM.Kepler.orbitMapR_eq_delaunay` | `bpI:p7:orbit-identities / bpI:p7:chart` | PASS | unchanged | Unchanged: Guarded noncircular Delaunay elements, domain or analytic helper. |
| A:446 | `KAM.Kepler.analyticOnNhd_delaunay` | `bpI:p7:orbit-identities / bpI:p7:chart` | PASS | unchanged | Unchanged: Guarded noncircular Delaunay elements, domain or analytic helper. |
| A:447 | `KAM.Kepler.eccOf_mem_Ioo` | `bpI:p7:orbit-identities / bpI:p7:chart` | PASS | unchanged | Unchanged: Guarded noncircular Delaunay elements, domain or analytic helper. |
| A:451 | `KAM.Kepler.delaunay_hamiltonian` | `bpI:p7:h0` | PASS | unchanged | Unchanged: Correct rotating Kepler Hamiltonian, energy minus angular momentum. |
| A:455 | `KAM.Kepler.delaunayGen` | `bpI:p7:symplectic` | PASS | new | Correct primitive 2*L*e*sin(u). |
| A:457 | `KAM.Kepler.delaunay_liouville` | `bpI:p7:symplectic` | PASS | new | Correct pullback p*dq=L*dell+G*dg+d(2Le sin u). |
| A:461 | `KAM.Kepler.delaunay_hamiltonianVectorField` | `bpI:p7:symplectic` | PASS | new | Correct field naturality for frozen H, with differentiability at the physical image. |
| A:470 | `KAM.Kepler.orbitMapColumn` | `bpI:p7:symplectic (helper)` | PASS | new | Explicit frame derivative algebra and anomaly-chain terms checked; off-domain total values unused. |
| A:484 | `KAM.Kepler.fderiv_orbitMapR_basis` | `bpI:p7:symplectic (helper)` | PASS | new | Correct intermediate columns on 0<e<1; no singular column asserted at e=0. |
| A:488 | `KAM.Kepler.fderiv_delaunay_basis` | `bpI:p7:symplectic (helper)` | PASS | new | Correct four columns and derivatives through e(L,G); e denominators guarded by noncircular cone. |
| A:501 | `KAM.Kepler.delaunay_symplectic` | `bpI:p7:symplectic` | PASS | unchanged | Unchanged: Frozen-form symplecticity/invertibility or differentiability helper; see C6 for missing primitive/field interface. |
| A:502 | `KAM.Kepler.delaunay_fderiv_equiv` | `bpI:p7:symplectic` | PASS | unchanged | Unchanged: Frozen-form symplecticity/invertibility or differentiability helper; see C6 for missing primitive/field interface. |
| A:506 | `KAM.Kepler.delaunay_hasFDerivAt` | `bpI:p7:symplectic` | PASS | same type; completed family | Valid differentiability helper; actual explicit columns are now separately present and reviewed. |
| A:511 | `KAM.Kepler.delaunay_periodic` | `bpI:p7:chart` | PASS | unchanged | Unchanged: B6 component: lattice, onto or local analytic inverse; combined with forward analyticity is adequate. |
| A:513 | `KAM.Kepler.delaunay_eq_iff` | `bpI:p7:chart` | PASS | unchanged | Unchanged: B6 component: lattice, onto or local analytic inverse; combined with forward analyticity is adequate. |
| A:516 | `KAM.Kepler.keplerRegion_subset_image` | `bpI:p7:chart` | PASS | unchanged | Unchanged: B6 component: lattice, onto or local analytic inverse; combined with forward analyticity is adequate. |
| A:517 | `KAM.Kepler.delaunay_localDiffeo` | `bpI:p7:chart` | PASS | unchanged | Unchanged: B6 component: lattice, onto or local analytic inverse; combined with forward analyticity is adequate. |
| A:522 | `KAM.Kepler.orbitMapC` | `bpI:p7:orbit-maps-e` | PASS | unchanged | Unchanged: Correct holomorphic five-parameter formula/domain or component; generalized real-k output still needed (C6). |
| A:531 | `KAM.Kepler.orbitDomC` | `bpI:p7:orbit-maps-e` | PASS | unchanged | Unchanged: Correct holomorphic five-parameter formula/domain or component; generalized real-k output still needed (C6). |
| A:535 | `KAM.Kepler.orbitMapC_differentiableOn` | `bpI:p7:orbit-maps-e` | PASS | unchanged | Unchanged: Correct holomorphic five-parameter formula/domain or component; generalized real-k output still needed (C6). |
| A:537 | `KAM.Kepler.orbitMapC_periodic` | `bpI:p7:orbit-maps-e` | PASS | unchanged | Unchanged: Correct holomorphic five-parameter formula/domain or component; generalized real-k output still needed (C6). |
| A:541 | `KAM.Kepler.orbitMapC_real` | `bpI:p7:orbit-maps-e` | PASS | new | Reality for arbitrary real k, nonzero real L, and the original real eccentricity interval. |
| A:544 | `KAM.Kepler.orbitMapC_ofReal` | `bpI:p7:orbit-maps-e` | PASS | unchanged | Unchanged: Correct holomorphic five-parameter formula/domain or component; generalized real-k output still needed (C6). |
| A:548 | `KAM.Kepler.orbitDomC_mem_ofReal` | `bpI:p7:orbit-maps-e` | PASS | unchanged | Unchanged: Correct holomorphic five-parameter formula/domain or component; generalized real-k output still needed (C6). |
| A:553 | `KAM.Kepler.orbitMapR_mean_inv_radius` | `bpI:p7:means; bpI:p7:circular` | PASS | unchanged | Unchanged: Correct mean-anomaly averages and circular endpoint with physical planar length. |
| A:555 | `KAM.Kepler.orbitMapR_mean_speed_sq` | `bpI:p7:means; bpI:p7:circular` | PASS | unchanged | Unchanged: Correct mean-anomaly averages and circular endpoint with physical planar length. |
| A:557 | `KAM.Kepler.orbitMapR_mean_radius` | `bpI:p7:means; bpI:p7:circular` | PASS | unchanged | Unchanged: Correct mean-anomaly averages and circular endpoint with physical planar length. |
| A:563 | `KAM.Kepler.scaleMK` | `bpI:p7:scaling; bpP:p7:kepler-data` | PASS | unchanged | Unchanged: Correct mass/strength dictionary, conformal factor m and total explicit formulas. |
| A:565 | `KAM.Kepler.energyMK` | `bpI:p7:scaling; bpP:p7:kepler-data` | PASS | unchanged | Unchanged: Correct mass/strength dictionary, conformal factor m and total explicit formulas. |
| A:566 | `KAM.Kepler.axisMK` | `bpI:p7:scaling; bpP:p7:kepler-data` | PASS | unchanged | Unchanged: Correct mass/strength dictionary, conformal factor m and total explicit formulas. |
| A:567 | `KAM.Kepler.actionMK` | `bpI:p7:scaling; bpP:p7:kepler-data` | PASS | unchanged | Unchanged: Correct mass/strength dictionary, conformal factor m and total explicit formulas. |
| A:569 | `KAM.Kepler.regionMK` | `bpI:p7:scaling; bpP:p7:kepler-data` | PASS | unchanged | Unchanged: Correct mass/strength dictionary, conformal factor m and total explicit formulas. |
| A:572 | `KAM.Kepler.delaunayMK` | `bpI:p7:scaling; bpP:p7:kepler-data` | PASS | unchanged | Unchanged: Correct mass/strength dictionary, conformal factor m and total explicit formulas. |
| A:574 | `KAM.Kepler.isOpen_regionMK` | `bpI:p7:scaling; bpP:p7:kepler-data` | PASS | unchanged | Unchanged: Correct mass/strength dictionary, conformal factor m and total explicit formulas. |
| A:575 | `KAM.Kepler.scaleMK_energy` | `bpI:p7:scaling; bpP:p7:kepler-data` | PASS | unchanged | Unchanged: Correct mass/strength dictionary, conformal factor m and total explicit formulas. |
| A:577 | `KAM.Kepler.scaleMK_cross` | `bpI:p7:scaling; bpP:p7:kepler-data` | PASS | unchanged | Unchanged: Correct mass/strength dictionary, conformal factor m and total explicit formulas. |
| A:579 | `KAM.Kepler.scaleMK_symplectic` | `bpI:p7:scaling; bpP:p7:kepler-data` | PASS | unchanged | Unchanged: Correct mass/strength dictionary, conformal factor m and total explicit formulas. |
| A:580 | `KAM.Kepler.scaleMK_bijective` | `bpI:p7:scaling; bpP:p7:kepler-data` | PASS | unchanged | Unchanged: Correct mass/strength dictionary, conformal factor m and total explicit formulas. |
| A:582 | `KAM.Kepler.cross_le_action` | `bpP:p7:range` | PASS | unchanged | Unchanged: Correct pointwise range/equality characterization under prograde bound-region guard. |
| A:584 | `KAM.Kepler.cross_eq_action_iff` | `bpP:p7:range` | PASS | unchanged | Unchanged: Correct pointwise range/equality characterization under prograde bound-region guard. |
| A:588 | `KAM.Kepler.delaunayMK_symplectic` | `bpP:p7:kepler` | PASS | unchanged | Unchanged: Correct mass Delaunay component; means include circular endpoint; missing mass local inverse is C6. |
| A:589 | `KAM.Kepler.analyticOnNhd_delaunayMK` | `bpP:p7:kepler` | PASS | unchanged | Unchanged: Correct mass Delaunay component; means include circular endpoint; missing mass local inverse is C6. |
| A:590 | `KAM.Kepler.delaunayMK_image` | `bpP:p7:kepler` | PASS | unchanged | Unchanged: Correct mass Delaunay component; means include circular endpoint; missing mass local inverse is C6. |
| A:592 | `KAM.Kepler.delaunayMK_eq_iff` | `bpP:p7:kepler` | PASS | unchanged | Unchanged: Correct mass Delaunay component; means include circular endpoint; missing mass local inverse is C6. |
| A:596 | `KAM.Kepler.delaunayMK_localDiffeo` | `bpP:p7:kepler(a)` | PASS | new | Completes B6 mass-chart family with analytic local inverse under original guards. |
| A:599 | `KAM.Kepler.delaunayMK_periodic` | `bpP:p7:kepler(a)` | PASS | new | Both radian integer-angle periods with positive mass/strength and chart guard. |
| A:602 | `KAM.Kepler.delaunayMK_identities` | `bpP:p7:kepler` | PASS | unchanged | Unchanged: Correct mass Delaunay component; means include circular endpoint; missing mass local inverse is C6. |
| A:609 | `KAM.Kepler.delaunayMK_position` | `bpP:p7:kepler` | PASS | unchanged | Unchanged: Correct mass Delaunay component; means include circular endpoint; missing mass local inverse is C6. |
| A:613 | `KAM.Kepler.hasDerivAt_keplerEnergy_action` | `bpP:p7:kepler` | PASS | unchanged | Unchanged: Correct mass Delaunay component; means include circular endpoint; missing mass local inverse is C6. |
| A:616 | `KAM.Kepler.delaunayMK_means` | `bpP:p7:kepler` | PASS | unchanged | Unchanged: Correct mass Delaunay component; means include circular endpoint; missing mass local inverse is C6. |
| A:623 | `KAM.Kepler.energyMK_eq_mul_energy` | `bpI:p7:scaling` | PASS | unchanged | Unchanged: Correct mass dictionary or frozen-field naturality for the linear strength scaling. |
| A:627 | `KAM.Kepler.scaleMK_flow` | `bpI:p7:scaling` | PASS | new | Correct kappa-squared time change; genuine differentiable energy and pointwise ODE data retained. |
| A:632 | `KAM.Kepler.scaleMK_hamiltonianVectorField` | `bpI:p7:scaling` | PASS | unchanged | Unchanged: Correct mass dictionary or frozen-field naturality for the linear strength scaling. |
| A:650 | `KAM.Iso.keplerRotH` | `bpI:p6:kep-ham / bpI:p6:kep-border` | PASS | unchanged | Unchanged: Literal complex Kepler Hamiltonian or reindex helper; reality extends through total division. |
| A:653 | `KAM.Iso.finThreeEquivSumUnit` | `bpI:p6:kep-ham / bpI:p6:kep-border` | PASS | unchanged | Unchanged: Literal complex Kepler Hamiltonian or reindex helper; reality extends through total division. |
| A:656 | `KAM.Iso.differentiableOn_keplerRotH` | `bpI:p6:kep-ham / bpI:p6:kep-border` | PASS | unchanged | Unchanged: Literal complex Kepler Hamiltonian or reindex helper; reality extends through total division. |
| A:657 | `KAM.Iso.keplerRotH_real` | `bpI:p6:kep-ham / bpI:p6:kep-border` | PASS | unchanged | Unchanged: Literal complex Kepler Hamiltonian or reindex helper; reality extends through total division. |
| A:661 | `KAM.Iso.frequencyMap_keplerRotH` | `bpI:p6:kep-border` | PASS | unchanged | Unchanged: Correct frozen frequency/bordered-Hessian entries and determinant; positivity of first action retained. |
| A:663 | `KAM.Iso.fderiv_frequencyMap_keplerRotH` | `bpI:p6:kep-border` | PASS | unchanged | Unchanged: Correct frozen frequency/bordered-Hessian entries and determinant; positivity of first action retained. |
| A:666 | `KAM.Iso.borderedHessian_keplerRotH` | `bpI:p6:kep-border` | PASS | unchanged | Unchanged: Correct frozen frequency/bordered-Hessian entries and determinant; positivity of first action retained. |
| A:669 | `KAM.Iso.det_borderedHessian_keplerRotH` | `bpI:p6:kep-border` | PASS | unchanged | Unchanged: Correct frozen frequency/bordered-Hessian entries and determinant; positivity of first action retained. |
| A:673 | `KAM.Iso.periodOneMap` | `bpI:p6:conversion-map` | PASS | unchanged | Unchanged: Angles multiply by 2pi and actions divide by 2pi; both real and complex carriers. |
| A:674 | `KAM.Iso.periodOneMapC` | `bpI:p6:conversion-map` | PASS | unchanged | Unchanged: Angles multiply by 2pi and actions divide by 2pi; both real and complex carriers. |
| A:678 | `KAM.Iso.periodOneMap_symplectic` | `bpI:p6:conversion` | PASS | unchanged | Unchanged: Correct symplectic/field/curve or converted Hamiltonian/frequency/matrix identity. |
| A:679 | `KAM.Iso.periodOneMap_hamiltonianVectorField` | `bpI:p6:conversion` | PASS | unchanged | Unchanged: Correct symplectic/field/curve or converted Hamiltonian/frequency/matrix identity. |
| A:682 | `KAM.Iso.periodOneMap_hasDerivAt_iff` | `bpI:p6:conversion` | PASS | unchanged | Unchanged: Correct symplectic/field/curve or converted Hamiltonian/frequency/matrix identity. |
| A:688 | `KAM.Iso.keplerRotH_comp_div` | `bpI:p6:conversion` | PASS | unchanged | Unchanged: Unconditional total-field identity; at I0=0 the Kepler reciprocal term is zero on both sides (linear term remains). |
| A:691 | `KAM.Iso.frequencyMap_comp_div` | `bpI:p6:conversion` | PASS | unchanged | Unchanged: Correct symplectic/field/curve or converted Hamiltonian/frequency/matrix identity. |
| A:697 | `KAM.Iso.keplerBorder_conversion` | `bpI:p6:conversion` | PASS | unchanged | Unchanged: Correct symplectic/field/curve or converted Hamiltonian/frequency/matrix identity. |
| A:701 | `KAM.Iso.borderedHessian_conversion` | `bpI:p6:conversion` | PASS | unchanged | Unchanged: Correct symplectic/field/curve or converted Hamiltonian/frequency/matrix identity. |
| A:708 | `KAM.Iso.nondeg_period_one` | `bpI:p6:nondeg` | PASS | unchanged | Unchanged: Action-neighbourhood guard ensures positive real first action and nondegeneracy. |
| A:724 | `KAM.Iso.restrictedHamTotal` | `bpI:p7:ham-eq` | PASS | unchanged | Unchanged: Literal total extension with explicit frozen subtype/field/solution bridge and collision guard. |
| A:728 | `KAM.Iso.restrictedHamiltonian_eq` | `bpI:p7:ham-eq` | PASS | unchanged | Unchanged: Literal total extension with explicit frozen subtype/field/solution bridge and collision guard. |
| A:730 | `KAM.Iso.isOpen_collisionFree` | `bpI:p7:ham-eq` | PASS | unchanged | Unchanged: Literal total extension with explicit frozen subtype/field/solution bridge and collision guard. |
| A:732 | `KAM.Iso.analyticOnNhd_restrictedHamTotal` | `bpI:p7:ham-eq` | PASS | unchanged | Unchanged: Literal total extension with explicit frozen subtype/field/solution bridge and collision guard. |
| A:734 | `KAM.Iso.restrictedVectorField_eq_hamiltonian` | `bpI:p7:ham-eq` | PASS | unchanged | Unchanged: Literal total extension with explicit frozen subtype/field/solution bridge and collision guard. |
| A:736 | `KAM.Iso.isRestrictedSolutionOn_iff` | `bpI:p7:ham-eq` | PASS | unchanged | Unchanged: Literal total extension with explicit frozen subtype/field/solution bridge and collision guard. |
| A:740 | `KAM.Iso.restricted_newton_iff` | `bpI:p7:newton` | PASS | unchanged | Unchanged: Pointwise inertial/rotating equivalence uses independent velocity and two-sided derivatives. |
| A:749 | `KAM.Iso.restrictedHamTotal_zero` | `bpI:p7:h0` | PASS | unchanged | Unchanged: Total mu=0 identity holds, including the zero-coefficient secondary term. |
| A:752 | `KAM.Iso.NearCircularWitness` | `bpI:p7:near-circular` | PASS | new | Literal frozen existential witness conditions, with all positivity and strict bounds retained. |
| A:756 | `KAM.Iso.nearCircular_witness_unique` | `bpI:p7:near-circular` | PASS | new | Correct unique r/a/e witnesses and identification with physical radius and elements. |
| A:761 | `KAM.Iso.nearCircular_eq` | `bpI:p7:near-circular` | PASS | unchanged | Unchanged: Frozen set equality/image/open/nonempty component; witness uniqueness needs companion for full node. |
| A:764 | `KAM.Iso.nearCircular_eq_image` | `bpI:p7:near-circular` | PASS | unchanged | Unchanged: Frozen set equality/image/open/nonempty component; witness uniqueness needs companion for full node. |
| A:768 | `KAM.Iso.isOpen_nearCircular` | `bpI:p7:near-circular` | PASS | unchanged | Unchanged: Frozen set equality/image/open/nonempty component; witness uniqueness needs companion for full node. |
| A:769 | `KAM.Iso.nearCircular_nonempty_iff` | `bpI:p7:near-circular` | PASS | unchanged | Unchanged: Frozen set equality/image/open/nonempty component; witness uniqueness needs companion for full node. |
| A:778 | `KAM.Iso.vtheta` | `bpI:p7:shift-def` | PASS | unchanged | Unchanged: Correct principal-branch potential and signed divided difference, with explicit positivity domain. |
| A:780 | `KAM.Iso.clen` | `bpI:p7:shift-def` | PASS | unchanged | Unchanged: Correct principal-branch potential and signed divided difference, with explicit positivity domain. |
| A:782 | `KAM.Iso.e0` | `bpI:p7:shift-def` | PASS | unchanged | Unchanged: Correct principal-branch potential and signed divided difference, with explicit positivity domain. |
| A:784 | `KAM.Iso.shiftW` | `bpI:p7:shift-def` | PASS | unchanged | Unchanged: Correct principal-branch potential and signed divided difference, with explicit positivity domain. |
| A:786 | `KAM.Iso.shiftPsi` | `bpI:p7:shift-def` | PASS | unchanged | Unchanged: Correct principal-branch potential and signed divided difference, with explicit positivity domain. |
| A:789 | `KAM.Iso.shiftF` | `bpI:p7:shift-def` | PASS | unchanged | Unchanged: Correct principal-branch potential and signed divided difference, with explicit positivity domain. |
| A:791 | `KAM.Iso.shiftXi` | `bpI:p7:shift-def` | PASS | unchanged | Unchanged: Correct principal-branch potential and signed divided difference, with explicit positivity domain. |
| A:795 | `KAM.Iso.ShiftConst` | `bpI:p7:shift` | PASS | unchanged | Unchanged: Exactly source shell/sign/smallness conditions; no analyticity or exactness conclusion is assumed. |
| A:803 | `KAM.Iso.shiftEps` | `bpI:p7:shift` | PASS | unchanged | Unchanged: Source smallness/constants or guarded analytic/exact/bound/real component; integral identity is C6. |
| A:804 | `KAM.Iso.shiftCstar` | `bpI:p7:shift` | PASS | unchanged | Unchanged: Source smallness/constants or guarded analytic/exact/bound/real component; integral identity is C6. |
| A:805 | `KAM.Iso.shiftCsh` | `bpI:p7:shift` | PASS | unchanged | Unchanged: Source smallness/constants or guarded analytic/exact/bound/real component; integral identity is C6. |
| A:807 | `KAM.Iso.shiftO` | `bpI:p7:shift` | PASS | unchanged | Unchanged: Source smallness/constants or guarded analytic/exact/bound/real component; integral identity is C6. |
| A:810 | `KAM.Iso.shiftConst_shiftEps` | `bpI:p7:shift` | PASS | unchanged | Unchanged: Source smallness/constants or guarded analytic/exact/bound/real component; integral identity is C6. |
| A:813 | `KAM.Iso.shiftF_eq_integral` | `bpI:p7:shift` | PASS | new | Correct negative integral of the mu derivative along t*mu, including the removable value. |
| A:816 | `KAM.Iso.shift_domain` | `bpI:p7:shift` | PASS | unchanged | Unchanged: Source smallness/constants or guarded analytic/exact/bound/real component; integral identity is C6. |
| A:821 | `KAM.Iso.shift_holomorphic` | `bpI:p7:shift` | PASS | unchanged | Unchanged: Source smallness/constants or guarded analytic/exact/bound/real component; integral identity is C6. |
| A:824 | `KAM.Iso.shift_mul_eq` | `bpI:p7:shift` | PASS | unchanged | Unchanged: Source smallness/constants or guarded analytic/exact/bound/real component; integral identity is C6. |
| A:827 | `KAM.Iso.shift_bound` | `bpI:p7:shift` | PASS | unchanged | Unchanged: Source smallness/constants or guarded analytic/exact/bound/real component; integral identity is C6. |
| A:830 | `KAM.Iso.shift_value_zero` | `bpI:p7:shift` | PASS | unchanged | Unchanged: Source smallness/constants or guarded analytic/exact/bound/real component; integral identity is C6. |
| A:833 | `KAM.Iso.shift_real` | `bpI:p7:shift` | PASS | unchanged | Unchanged: Source smallness/constants or guarded analytic/exact/bound/real component; integral identity is C6. |
| A:846 | `KAM.Iso.SafeAction` | `bpI:p7:sec-complex / bpI:p7:complex-domain` | PASS | unchanged | Unchanged: Exactly compact, nonempty actions in 0<G<L; independent standing data. |
| A:851 | `KAM.Iso.kEccMin` | `bpI:p7:sec-complex / bpI:p7:complex-domain` | PASS | unchanged | Unchanged: Compact safe-action data, extrema, principal eccentricity and complex chart formulas. |
| A:852 | `KAM.Iso.kEccMax` | `bpI:p7:sec-complex / bpI:p7:complex-domain` | PASS | unchanged | Unchanged: Compact safe-action data, extrema, principal eccentricity and complex chart formulas. |
| A:853 | `KAM.Iso.kLMin` | `bpI:p7:sec-complex / bpI:p7:complex-domain` | PASS | unchanged | Unchanged: Compact safe-action data, extrema, principal eccentricity and complex chart formulas. |
| A:854 | `KAM.Iso.kGMin` | `bpI:p7:sec-complex / bpI:p7:complex-domain` | PASS | unchanged | Unchanged: Compact safe-action data, extrema, principal eccentricity and complex chart formulas. |
| A:855 | `KAM.Iso.kRmin` | `bpI:p7:sec-complex / bpI:p7:complex-domain` | PASS | unchanged | Unchanged: Compact safe-action data, extrema, principal eccentricity and complex chart formulas. |
| A:856 | `KAM.Iso.kRhoMax` | `bpI:p7:sec-complex / bpI:p7:complex-domain` | PASS | unchanged | Unchanged: Compact safe-action data, extrema, principal eccentricity and complex chart formulas. |
| A:858 | `KAM.Iso.SafeAction.ecc_bounds` | `bpI:p7:sec-complex / bpI:p7:complex-domain` | PASS | unchanged | Unchanged: Compact safe-action data, extrema, principal eccentricity and complex chart formulas. |
| A:862 | `KAM.Iso.eccC` | `bpI:p7:sec-complex / bpI:p7:complex-domain` | PASS | unchanged | Unchanged: Compact safe-action data, extrema, principal eccentricity and complex chart formulas. |
| A:864 | `KAM.Iso.UDelta` | `bpI:p7:sec-complex / bpI:p7:complex-domain` | PASS | unchanged | Unchanged: Compact safe-action data, extrema, principal eccentricity and complex chart formulas. |
| A:867 | `KAM.Iso.delaunayC` | `bpI:p7:sec-complex / bpI:p7:complex-domain` | PASS | unchanged | Unchanged: Compact safe-action data, extrema, principal eccentricity and complex chart formulas. |
| A:871 | `KAM.Iso.ComplexDomainData` | `bpI:p7:complex-domain` | PASS | new | Exact normalized factorization of all original radius/domain/holomorphy/real-agreement conjuncts. |
| A:886 | `KAM.Iso.complexDelta` | `bpI:p7:complex-domain` | PASS | new | Chooses a radius with the complete ComplexDomainData predicate; only specification supplies admissibility. |
| A:890 | `KAM.Iso.complex_domain_spec` | `bpI:p7:complex-domain` | PASS | new | Proves chosen-radius data from SafeAction alone; no output-shaped premise. |
| A:893 | `KAM.Iso.exactF` | `bpI:p7:exact-ham` | PASS | unchanged | Unchanged: Exact displaced-primary perturbation or selection/output definition; admissibility must be proved, not assumed. |
| A:895 | `KAM.Iso.exactEps` | `bpI:p7:exact-ham` | PASS | unchanged | Unchanged: Exact displaced-primary perturbation or selection/output definition; admissibility must be proved, not assumed. |
| A:896 | `KAM.Iso.exactMu2` | `bpI:p7:exact-ham` | PASS | unchanged | Unchanged: Exact displaced-primary perturbation or selection/output definition; admissibility must be proved, not assumed. |
| A:897 | `KAM.Iso.exactCF` | `bpI:p7:exact-ham` | PASS | unchanged | Unchanged: Exact displaced-primary perturbation or selection/output definition; admissibility must be proved, not assumed. |
| A:900 | `KAM.Iso.ExactHamData` | `bpI:p7:exact-ham` | PASS | unchanged | Unchanged: Correct explicit output predicate for clauses (i)-(iv), not an accepted theorem premise; radius relation still missing (F3). |
| A:916 | `KAM.Iso.exactDelta` | `bpI:p7:exact-ham` | FAIL | modified | R2-1: selection certifies the bound and ExactHamData, but not the newly promised shift-neighbourhood inclusion. |
| A:920 | `KAM.Iso.exact_ham` | `bpI:p7:exact-ham` | PASS | modified | The original F3 subordination bound is now explicit; this weaker output is valid, but does not imply the geometric companion. |
| A:923 | `KAM.Iso.exact_positions_mem_shiftO` | `stepI:p7:eh-delta` | FAIL | new | R2-1: geometric inclusion is not a property of every radius allowed by the present choice predicate. |
| A:931 | `KAM.Iso.tildeF` | `bpI:p7:period-one` | PASS | unchanged | Unchanged: Correct exact mu-weighted perturbation under symplectic period-one conversion. |
| A:935 | `KAM.Iso.delaunay_periodOne_symplectic` | `bpI:p7:period-one(d)` | PASS | unchanged | Unchanged: Correct factor-one composition on the pullback of the noncircular cone. |
| A:939 | `KAM.Iso.period_one` | `bpI:p7:period-one` | PASS | unchanged | Unchanged: Correct frozen strip/action-neighbourhood, real Hamiltonian and periodicity output; no admissibility premise. |
| A:961 | `KAM.Iso.transfer` | `bpI:p7:transfer` | PASS | same type; completed family | Unchanged solution/bounds component now completed by transfer_identities; no energy claim left unpaid in the family. |
| A:973 | `KAM.Iso.transfer_identities` | `bpI:p7:transfer` | PASS | new | Restores radius equality, all elements, and frozen physical energy with original solution inputs. |
| A:987 | `KAM.Iso.nondeg_exact` | `bpI:p7:nondeg` | PASS | unchanged | Unchanged: Correct determinant value and positive action on the chosen real action neighbourhood. |
| P:26 | `KAM.Planetary.collisionFreeDomain` | `bpP:p6:domain / bpP:p6:ext-chain` | PASS | unchanged | Unchanged: Frozen collision domain and inverse body packing or analytic/differentiability helper. |
| P:29 | `KAM.Planetary.ofBodies` | `bpP:p6:domain / bpP:p6:ext-chain` | PASS | unchanged | Unchanged: Frozen collision domain and inverse body packing or analytic/differentiability helper. |
| P:31 | `KAM.Planetary.bodyVector_ofBodies` | `bpP:p6:domain / bpP:p6:ext-chain` | PASS | unchanged | Unchanged: Frozen collision domain and inverse body packing or analytic/differentiability helper. |
| P:32 | `KAM.Planetary.ofBodies_bodyVector` | `bpP:p6:domain / bpP:p6:ext-chain` | PASS | unchanged | Unchanged: Frozen collision domain and inverse body packing or analytic/differentiability helper. |
| P:36 | `KAM.Planetary.isOpen_collisionFreeDomain` | `bpP:p6:domain / bpP:p6:ext-chain` | PASS | unchanged | Unchanged: Frozen collision domain and inverse body packing or analytic/differentiability helper. |
| P:37 | `KAM.Planetary.analyticOnNhd_movingHamiltonian` | `bpP:p6:domain / bpP:p6:ext-chain` | PASS | unchanged | Unchanged: Frozen collision domain and inverse body packing or analytic/differentiability helper. |
| P:39 | `KAM.Planetary.analyticOnNhd_fixedHamiltonian` | `bpP:p6:domain / bpP:p6:ext-chain` | PASS | unchanged | Unchanged: Frozen collision domain and inverse body packing or analytic/differentiability helper. |
| P:41 | `KAM.Planetary.differentiableAt_movingHamiltonian` | `bpP:p6:domain / bpP:p6:ext-chain` | PASS | unchanged | Unchanged: Frozen collision domain and inverse body packing or analytic/differentiability helper. |
| P:43 | `KAM.Planetary.differentiableAt_fixedHamiltonian` | `bpP:p6:domain / bpP:p6:ext-chain` | PASS | unchanged | Unchanged: Frozen collision domain and inverse body packing or analytic/differentiability helper. |
| P:47 | `KAM.Planetary.keplerPart` | `bpP:p6:split / bpP:p6:kepler-part` | PASS | unchanged | Unchanged: Exact frozen moving/fixed split and coupling-independent perturbations; algebra valid by totality. |
| P:49 | `KAM.Planetary.pairPotential` | `bpP:p6:split / bpP:p6:kepler-part` | PASS | unchanged | Unchanged: Exact frozen moving/fixed split and coupling-independent perturbations; algebra valid by totality. |
| P:51 | `KAM.Planetary.fMov` | `bpP:p6:split / bpP:p6:kepler-part` | PASS | unchanged | Unchanged: Exact frozen moving/fixed split and coupling-independent perturbations; algebra valid by totality. |
| P:53 | `KAM.Planetary.fFix` | `bpP:p6:split / bpP:p6:kepler-part` | PASS | unchanged | Unchanged: Exact frozen moving/fixed split and coupling-independent perturbations; algebra valid by totality. |
| P:55 | `KAM.Planetary.keplerPart_eq_sum` | `bpP:p6:split / bpP:p6:kepler-part` | PASS | unchanged | Unchanged: Exact frozen moving/fixed split and coupling-independent perturbations; algebra valid by totality. |
| P:58 | `KAM.Planetary.movingHamiltonian_split` | `bpP:p6:split / bpP:p6:kepler-part` | PASS | unchanged | Unchanged: Exact frozen moving/fixed split and coupling-independent perturbations; algebra valid by totality. |
| P:60 | `KAM.Planetary.fixedHamiltonian_split` | `bpP:p6:split / bpP:p6:kepler-part` | PASS | unchanged | Unchanged: Exact frozen moving/fixed split and coupling-independent perturbations; algebra valid by totality. |
| P:62 | `KAM.Planetary.moving_sub_fixed` | `bpP:p6:split / bpP:p6:kepler-part` | PASS | unchanged | Unchanged: Exact frozen moving/fixed split and coupling-independent perturbations; algebra valid by totality. |
| P:64 | `KAM.Planetary.analyticOnNhd_fMov` | `bpP:p6:split / bpP:p6:kepler-part` | PASS | unchanged | Unchanged: Exact frozen moving/fixed split and coupling-independent perturbations; algebra valid by totality. |
| P:65 | `KAM.Planetary.analyticOnNhd_fFix` | `bpP:p6:split / bpP:p6:kepler-part` | PASS | unchanged | Unchanged: Exact frozen moving/fixed split and coupling-independent perturbations; algebra valid by totality. |
| P:68 | `KAM.Planetary.gKernel` | `bpP:p6:action-reaction` | PASS | unchanged | Unchanged: Literal force kernels; unconditional antisymmetric cancellation is valid (B3). |
| P:69 | `KAM.Planetary.fKernel` | `bpP:p6:action-reaction` | PASS | unchanged | Unchanged: Literal force kernels; unconditional antisymmetric cancellation is valid (B3). |
| P:73 | `KAM.Planetary.sum_mass_smul_fKernel` | `bpP:p6:action-reaction` | PASS | unchanged | Unchanged: Literal force kernels; unconditional antisymmetric cancellation is valid (B3). |
| P:76 | `KAM.Planetary.hamiltonianVectorField_moving` | `bpP:p6:hamilton-eqs` | PASS | unchanged | Unchanged: Frozen total field evaluated only on NoCollision; dropping mass positivity is valid. |
| P:83 | `KAM.Planetary.hamiltonianVectorField_fixed` | `bpP:p6:hamilton-eqs` | PASS | unchanged | Unchanged: Frozen total field evaluated only on NoCollision; dropping mass positivity is valid. |
| P:91 | `KAM.Planetary.hasDerivAt_bodyVector` | `bpP:p6:hamilton-eqs` | PASS | unchanged | Unchanged: Frozen total field evaluated only on NoCollision; dropping mass positivity is valid. |
| P:101 | `KAM.Planetary.nbodyHamiltonian` | `bpP:p6:nbody / bpP:p6:reduction` | PASS | unchanged | Unchanged: Correct actual-momentum Hamiltonian or linear heliocentric coordinate formula. |
| P:107 | `KAM.Planetary.helioMap` | `bpP:p6:nbody / bpP:p6:reduction` | PASS | unchanged | Unchanged: Correct actual-momentum Hamiltonian or linear heliocentric coordinate formula. |
| P:110 | `KAM.Planetary.helioInv` | `bpP:p6:nbody / bpP:p6:reduction` | PASS | unchanged | Unchanged: Correct actual-momentum Hamiltonian or linear heliocentric coordinate formula. |
| P:115 | `KAM.Planetary.helioMap_helioInv` | `bpP:p6:reduction` | PASS | unchanged | Unchanged: Correct inverse/pairing/Hamiltonian or finite-time zero-momentum Newton-to-moving component. |
| P:116 | `KAM.Planetary.helioInv_helioMap` | `bpP:p6:reduction` | PASS | unchanged | Unchanged: Correct inverse/pairing/Hamiltonian or finite-time zero-momentum Newton-to-moving component. |
| P:117 | `KAM.Planetary.helioMap_symplectic` | `bpP:p6:reduction` | PASS | unchanged | Unchanged: Correct inverse/pairing/Hamiltonian or finite-time zero-momentum Newton-to-moving component. |
| P:118 | `KAM.Planetary.helioMap_pairing` | `bpP:p6:reduction` | PASS | unchanged | Unchanged: Correct inverse/pairing/Hamiltonian or finite-time zero-momentum Newton-to-moving component. |
| P:123 | `KAM.Planetary.nbodyHamiltonian_helio` | `bpP:p6:reduction` | PASS | unchanged | Unchanged: Correct inverse/pairing/Hamiltonian or finite-time zero-momentum Newton-to-moving component. |
| P:130 | `KAM.Planetary.nbodyHamiltonian_helio_zero_momentum` | `bpP:p6:reduction` | PASS | unchanged | Unchanged: Correct inverse/pairing/Hamiltonian or finite-time zero-momentum Newton-to-moving component. |
| P:138 | `KAM.Planetary.newton_to_moving` | `bpP:p6:reduction` | PASS | unchanged | Unchanged: Correct inverse/pairing/Hamiltonian or finite-time zero-momentum Newton-to-moving component. |
| P:152 | `KAM.Planetary.barycentricPositions_succ_sub_zero` | `bpP:p6:bary-algebra` | PASS | unchanged | Unchanged: Literal frozen barycentric identities; nonzero/positive denominator guards retained where used. |
| P:154 | `KAM.Planetary.barycentricPositions_succ_sub_succ` | `bpP:p6:bary-algebra` | PASS | unchanged | Unchanged: Literal frozen barycentric identities; nonzero/positive denominator guards retained where used. |
| P:157 | `KAM.Planetary.barycentricPositions_zero` | `bpP:p6:bary-algebra` | PASS | unchanged | Unchanged: Literal frozen barycentric identities; nonzero/positive denominator guards retained where used. |
| P:159 | `KAM.Planetary.barycentricVelocities_zero` | `bpP:p6:bary-algebra` | PASS | unchanged | Unchanged: Literal frozen barycentric identities; nonzero/positive denominator guards retained where used. |
| P:161 | `KAM.Planetary.barycentricVelocities_succ` | `bpP:p6:bary-algebra` | PASS | unchanged | Unchanged: Literal frozen barycentric identities; nonzero/positive denominator guards retained where used. |
| P:163 | `KAM.Planetary.barycentricVelocities_succ_sub_zero` | `bpP:p6:bary-algebra` | PASS | unchanged | Unchanged: Literal frozen barycentric identities; nonzero/positive denominator guards retained where used. |
| P:166 | `KAM.Planetary.sum_actualMasses_smul_barycentricPositions` | `bpP:p6:bary-algebra` | PASS | unchanged | Unchanged: Literal frozen barycentric identities; nonzero/positive denominator guards retained where used. |
| P:168 | `KAM.Planetary.sum_actualMasses_smul_barycentricVelocities` | `bpP:p6:bary-algebra` | PASS | unchanged | Unchanged: Literal frozen barycentric identities; nonzero/positive denominator guards retained where used. |
| P:170 | `KAM.Planetary.planeLength_barycentricPositions_zero_le` | `bpP:p6:bary-algebra` | PASS | unchanged | Unchanged: Literal frozen barycentric identities; nonzero/positive denominator guards retained where used. |
| P:175 | `KAM.Planetary.reconstruction` | `bpP:p6:reconstruction / bpP:p6:units` | PASS | unchanged | Unchanged: Correct frozen finite/all-time Newton predicate; general G absorbed only for finite-time mass array. |
| P:182 | `KAM.Planetary.reconstruction_all_time` | `bpP:p6:reconstruction / bpP:p6:units` | PASS | unchanged | Unchanged: Correct frozen finite/all-time Newton predicate; general G absorbed only for finite-time mass array. |
| P:189 | `KAM.Planetary.isNewtonSolutionOn_of_isMovingSolutionOn` | `bpP:p6:reconstruction / bpP:p6:units` | PASS | unchanged | Unchanged: Correct frozen finite/all-time Newton predicate; general G absorbed only for finite-time mass array. |
| P:195 | `KAM.Planetary.reconstruction_fixed` | `bpP:p6:reconstruction-fixed` | PASS | unchanged | Unchanged: Correct finite-time clauses or frozen all-time fixed-centre equations; arbitrary epsilon allowed. |
| P:206 | `KAM.Planetary.reconstruction_fixed_all_time` | `bpP:p6:reconstruction-fixed` | PASS | unchanged | Unchanged: Correct finite-time clauses or frozen all-time fixed-centre equations; arbitrary epsilon allowed. |
| P:212 | `KAM.Planetary.orbit_transfer_moving` | `bpP:p6:orbit-transfer` | PASS | unchanged | Unchanged: Consumes actual frozen physical torus flow and NoCollision, yields actual complete physical solutions. |
| P:218 | `KAM.Planetary.orbit_transfer_fixed` | `bpP:p6:orbit-transfer` | PASS | unchanged | Unchanged: Consumes actual frozen physical torus flow and NoCollision, yields actual complete physical solutions. |
| P:232 | `KAM.Planetary.AxisData` | `bpP:p6:tube-constants` | PASS | unchanged | Unchanged: Explicit positive axis/gap lower bound and axis upper bound; canonical axes-only witness exported separately. |
| P:238 | `KAM.Planetary.axisMax` | `bpP:p6:tube-constants` | PASS | unchanged | Unchanged: Axes/gaps bounds with canonical axes-only choice; n=1 handled without empty pair minimum. |
| P:239 | `KAM.Planetary.axisGap` | `bpP:p6:tube-constants` | PASS | unchanged | Unchanged: Axes/gaps bounds with canonical axes-only choice; n=1 handled without empty pair minimum. |
| P:241 | `KAM.Planetary.axisData_canonical` | `bpP:p6:tube-constants` | PASS | unchanged | Unchanged: Axes/gaps bounds with canonical axes-only choice; n=1 handled without empty pair minimum. |
| P:245 | `KAM.Planetary.tubeRadius` | `bpP:p6:tube-constants` | PASS | unchanged | Unchanged: Axes/gaps bounds with canonical axes-only choice; n=1 handled without empty pair minimum. |
| P:246 | `KAM.Planetary.tubeD` | `bpP:p6:tube-constants` | PASS | unchanged | Unchanged: Axes/gaps bounds with canonical axes-only choice; n=1 handled without empty pair minimum. |
| P:247 | `KAM.Planetary.tubeBigD` | `bpP:p6:tube-constants` | PASS | unchanged | Unchanged: Axes/gaps bounds with canonical axes-only choice; n=1 handled without empty pair minimum. |
| P:249 | `KAM.Planetary.tubeRadius_pos` | `bpP:p6:tube-constants` | PASS | unchanged | Unchanged: Axes/gaps bounds with canonical axes-only choice; n=1 handled without empty pair minimum. |
| P:250 | `KAM.Planetary.tubeD_lt_tubeBigD` | `bpP:p6:tube-constants` | PASS | unchanged | Unchanged: Axes/gaps bounds with canonical axes-only choice; n=1 handled without empty pair minimum. |
| P:254 | `KAM.Planetary.circularTube_mono` | `bpP:p6:tube-geometry` | PASS | unchanged | Unchanged: Correct max-norm to Euclidean sqrt(2) estimates and coupling-independent physical pair bounds. |
| P:257 | `KAM.Planetary.circularTube_euclidean` | `bpP:p6:tube-geometry` | PASS | unchanged | Unchanged: Correct max-norm to Euclidean sqrt(2) estimates and coupling-independent physical pair bounds. |
| P:262 | `KAM.Planetary.circularTube_distances` | `bpP:p6:tube-geometry` | PASS | unchanged | Unchanged: Correct max-norm to Euclidean sqrt(2) estimates and coupling-independent physical pair bounds. |
| P:268 | `KAM.Planetary.circularTube_pair_bounds` | `bpP:p6:tube-geometry` | PASS | unchanged | Unchanged: Correct max-norm to Euclidean sqrt(2) estimates and coupling-independent physical pair bounds. |
| P:274 | `KAM.Planetary.circularTube_pairBounds_barycentric` | `bpP:p6:tube-geometry` | PASS | unchanged | Unchanged: Correct max-norm to Euclidean sqrt(2) estimates and coupling-independent physical pair bounds. |
| P:278 | `KAM.Planetary.circularTube_pairBounds_fixed` | `bpP:p6:tube-geometry` | PASS | unchanged | Unchanged: Correct max-norm to Euclidean sqrt(2) estimates and coupling-independent physical pair bounds. |
| P:284 | `KAM.Planetary.newton_in_tube` | `bpP:p6:newton-in-tube` | PASS | same type; completed family | Unchanged moving-Sun component now completed by fixed_in_tube; docstring correctly narrowed. |
| P:293 | `KAM.Planetary.fixed_in_tube` | `bpP:p6:newton-in-tube` | PASS | new | Correct fixed-Sun finite-time companion, physical velocities and Sun-at-origin bounds. |
| P:308 | `KAM.Planetary.circularTube_norm_lt` | `bpP:p6:measure-positive(a)` | PASS | unchanged | Unchanged: Bounded physical tube and finite volume; empty-dimensional case causes no false bound. |
| P:311 | `KAM.Planetary.volume_lt_top_of_subset_circularTube` | `bpP:p6:measure-positive(a)` | PASS | unchanged | Unchanged: Bounded physical tube and finite volume; empty-dimensional case causes no false bound. |
| P:316 | `KAM.Planetary.measure_chart_image` | `bpP:p6:measure-positive(b) / bpP:p1:liouville-lattice` | PASS | unchanged | Unchanged: Correct Borel full-position-lattice image interface; not the Cartesian P12 transport variant (F6). |
| P:328 | `KAM.Planetary.movingKolmogorovSet_of_tube` | `bpP:p6:movkol-assembly` | PASS | unchanged | Unchanged: Concludes the literal frozen moving Kolmogorov predicate from source independent torus/tube data. |
| P:335 | `KAM.Planetary.fixedKolmogorovSet_of_tube` | `bpP:p6:fixkol-assembly` | PASS | unchanged | Unchanged: Concludes the literal frozen fixed Kolmogorov predicate; fixed origin and complete orbits retained. |
| P:357 | `KAM.Planetary.poincareGamma` | `bpP:p7:poincare-def` | PASS | unchanged | Unchanged: Correct regular chart formula/order and physical denominators, with explicit domain guards. |
| P:358 | `KAM.Planetary.poincareK` | `bpP:p7:poincare-def` | PASS | unchanged | Unchanged: Correct regular chart formula/order and physical denominators, with explicit domain guards. |
| P:360 | `KAM.Planetary.poincareV` | `bpP:p7:poincare-def` | PASS | unchanged | Unchanged: Correct regular chart formula/order and physical denominators, with explicit domain guards. |
| P:363 | `KAM.Planetary.poincareF` | `bpP:p7:poincare-def` | PASS | unchanged | Unchanged: Correct regular chart formula/order and physical denominators, with explicit domain guards. |
| P:366 | `KAM.Planetary.poincare` | `bpP:p7:poincare-def` | PASS | unchanged | Unchanged: Correct regular chart formula/order and physical denominators, with explicit domain guards. |
| P:375 | `KAM.Planetary.poincareDom` | `bpP:p7:poincare-def` | PASS | unchanged | Unchanged: Correct regular chart formula/order and physical denominators, with explicit domain guards. |
| P:377 | `KAM.Planetary.isOpen_poincareDom` | `bpP:p7:poincare-def` | PASS | unchanged | Unchanged: Correct regular chart formula/order and physical denominators, with explicit domain guards. |
| P:380 | `KAM.Planetary.poincare_facts` | `bpP:p7:o-facts` | PASS | unchanged | Unchanged: Correct nonnegative Gamma, positive root/Jacobian, eccentricity-vector and polar identities. |
| P:385 | `KAM.Planetary.poincare_facts_polar` | `bpP:p7:o-facts` | PASS | unchanged | Unchanged: Correct nonnegative Gamma, positive root/Jacobian, eccentricity-vector and polar identities. |
| P:391 | `KAM.Planetary.analyticOnNhd_poincareF` | `bpP:p7:poincare(a,b)` | PASS | unchanged | Unchanged: Correct analyticity, radian periodicity or positive-Gamma Delaunay relation. |
| P:392 | `KAM.Planetary.analyticOnNhd_poincare` | `bpP:p7:poincare(a,b)` | PASS | unchanged | Unchanged: Correct analyticity, radian periodicity or positive-Gamma Delaunay relation. |
| P:393 | `KAM.Planetary.poincare_periodic` | `bpP:p7:poincare(a,b)` | PASS | unchanged | Unchanged: Correct analyticity, radian periodicity or positive-Gamma Delaunay relation. |
| P:396 | `KAM.Planetary.poincare_eq_delaunayMK` | `bpP:p7:poincare(a,b)` | PASS | unchanged | Unchanged: Correct analyticity, radian periodicity or positive-Gamma Delaunay relation. |
| P:400 | `KAM.Planetary.poincare_symplectic` | `bpP:p7:poincare(c,d)` | PASS | unchanged | Unchanged: Correct frozen symplectic factor one and physical mass/strength/LRL elements. |
| P:402 | `KAM.Planetary.poincare_elements` | `bpP:p7:poincare(c,d)` | PASS | unchanged | Unchanged: Correct frozen symplectic factor one and physical mass/strength/LRL elements. |
| P:411 | `KAM.Planetary.poincare_image` | `bpP:p7:poincare(e)` | PASS | unchanged | Unchanged: B6 onto/mod-lattice/local-inverse family; explicit arg representative has only modulo-lattice inverse claim. |
| P:412 | `KAM.Planetary.poincare_eq_iff` | `bpP:p7:poincare(e)` | PASS | unchanged | Unchanged: B6 onto/mod-lattice/local-inverse family; explicit arg representative has only modulo-lattice inverse claim. |
| P:415 | `KAM.Planetary.poincare_localDiffeo` | `bpP:p7:poincare(e)` | PASS | unchanged | Unchanged: B6 onto/mod-lattice/local-inverse family; explicit arg representative has only modulo-lattice inverse claim. |
| P:420 | `KAM.Planetary.poincareInv` | `bpP:p7:poincare(e)` | PASS | unchanged | Unchanged: Explicit representative using arg; inverse theorem asserts modulo lattice, not continuity through the argument cut. |
| P:430 | `KAM.Planetary.poincareInv_poincare` | `bpP:p7:poincare(e)` | PASS | unchanged | Unchanged: B6 onto/mod-lattice/local-inverse family; explicit arg representative has only modulo-lattice inverse claim. |
| P:432 | `KAM.Planetary.poincare_poincareInv` | `bpP:p7:poincare(e)` | PASS | unchanged | Unchanged: B6 onto/mod-lattice/local-inverse family; explicit arg representative has only modulo-lattice inverse claim. |
| P:435 | `KAM.Planetary.poincare_circular` | `bpP:p7:poincare(f)` | PASS | unchanged | Unchanged: Correct circular radius and canonical momentum at positive action. |
| P:440 | `KAM.Planetary.poincare_means` | `bpP:p7:kepler(c) / bpP:p7:average` | PASS | unchanged | Unchanged: Correct transported means with circular endpoint. |
| P:449 | `KAM.Planetary.poincareGammaC` | `bpP:p7:holomorphic` | PASS | unchanged | Unchanged: Correct bilinear complex formulas, principal roots and uniform small-e neighbourhood; real agreement guarded. |
| P:450 | `KAM.Planetary.poincareVC` | `bpP:p7:holomorphic` | PASS | unchanged | Unchanged: Correct bilinear complex formulas, principal roots and uniform small-e neighbourhood; real agreement guarded. |
| P:453 | `KAM.Planetary.poincareC` | `bpP:p7:holomorphic` | PASS | unchanged | Unchanged: Correct bilinear complex formulas, principal roots and uniform small-e neighbourhood; real agreement guarded. |
| P:462 | `KAM.Planetary.poincareNbhd` | `bpP:p7:holomorphic` | PASS | unchanged | Unchanged: Correct bilinear complex formulas, principal roots and uniform small-e neighbourhood; real agreement guarded. |
| P:465 | `KAM.Planetary.poincare_holomorphic` | `bpP:p7:holomorphic` | PASS | unchanged | Unchanged: Correct bilinear complex formulas, principal roots and uniform small-e neighbourhood; real agreement guarded. |
| P:482 | `KAM.Planetary.phaseCast` | `bpP:p7:product-chart (adapter)` | PASS | new | Literal canonical Fin.cast reindexing of both position and momentum; no body permutation. |
| P:486 | `KAM.Planetary.phaseCast_apply` | `bpP:p7:product-chart (adapter)` | PASS | new | Correct inverse index direction; sorry-free subst/rfl probe passes. |
| P:488 | `KAM.Planetary.phaseCast_symm` | `bpP:p7:product-chart (adapter)` | PASS | new | Inverse cast is cast by the symmetric equality. |
| P:489 | `KAM.Planetary.phaseCast_symplectic` | `bpP:p7:product-chart (adapter)` | PASS | new | Same canonical index permutation in both blocks preserves frozen form with factor one. |
| P:490 | `KAM.Planetary.phaseCast_hamiltonianVectorField` | `bpP:p7:product-chart (adapter)` | PASS | new | Frozen-field identity holds for every H; after eliminating h the probe closes by rfl. |
| P:492 | `KAM.Planetary.phaseCast_volume` | `bpP:p7:product-chart (adapter)` | PASS | new | Canonical equal-size reindex preserves actual ambient volume, for arbitrary sets. |
| P:494 | `KAM.Planetary.phaseCast_measurableEquiv` | `bpP:p7:product-chart (adapter)` | PASS | new | Correct Borel-image property of the reindex equivalence, despite theorem naming. |
| P:497 | `KAM.Planetary.phaseCast_analytic` | `bpP:p7:product-chart (adapter)` | PASS | new | Continuous linear equivalence is real analytic everywhere. |
| P:506 | `KAM.Planetary.planetBlock` | `bpP:p7:product-def / bpP:p7:d25(d)` | PASS | unchanged | Unchanged: Correct fast/slow-to-body product definitions or domain bridge, except frozen name conflict flagged below. |
| P:510 | `KAM.Planetary.poincareProd` | `bpP:p7:product-def / bpP:p7:d25(d)` | PASS | unchanged | Unchanged: Correct fast/slow-to-body product definitions or domain bridge, except frozen name conflict flagged below. |
| P:515 | `KAM.Planetary.poincareProdDom` | `bpP:p7:product-def / bpP:p7:d25(d)` | PASS | unchanged | Unchanged: Correct fast/slow-to-body product definitions or domain bridge, except frozen name conflict flagged below. |
| P:517 | `KAM.Planetary.hProd` | `bpP:p7:product-def / bpP:p7:d25(d)` | PASS | unchanged | Unchanged: Correct fast/slow-to-body product definitions or domain bridge, except frozen name conflict flagged below. |
| P:519 | `KAM.Planetary.regionProd` | `bpP:p7:product-def / bpP:p7:d25(d)` | PASS | unchanged | Unchanged: Correct fast/slow-to-body product definitions or domain bridge, except frozen name conflict flagged below. |
| P:524 | `KAM.Planetary.isOpen_poincareProdDom` | `bpP:p7:product-def / bpP:p7:d25(d)` | PASS | unchanged | Unchanged: Correct fast/slow-to-body product definitions or domain bridge, except frozen name conflict flagged below. |
| P:525 | `KAM.Planetary.regionProd_one_iff` | `bpP:p7:product-def / bpP:p7:d25(d)` | PASS | unchanged | Unchanged: Correct fast/slow-to-body product definitions or domain bridge, except frozen name conflict flagged below. |
| P:529 | `KAM.Planetary.poincareProd_symplectic` | `bpP:p7:product-chart(a)` | PASS | unchanged | Unchanged: Correct heterogeneous block product symplectic/analytic/lattice/onto/local-inverse component. |
| P:531 | `KAM.Planetary.analyticOnNhd_poincareProd` | `bpP:p7:product-chart(a)` | PASS | unchanged | Unchanged: Correct heterogeneous block product symplectic/analytic/lattice/onto/local-inverse component. |
| P:533 | `KAM.Planetary.poincareProd_lattice` | `bpP:p7:product-chart(a)` | PASS | modified | Frozen fastShift is explicitly specialized to a=b=n; correct lattice/domain invariance. |
| P:536 | `KAM.Planetary.poincareProd_eq_iff` | `bpP:p7:product-chart(a)` | PASS | modified | Frozen fastShift replaces draft export without changing physical lattice meaning. |
| P:539 | `KAM.Planetary.poincareProd_image` | `bpP:p7:product-chart(a)` | PASS | unchanged | Unchanged: Correct heterogeneous block product symplectic/analytic/lattice/onto/local-inverse component. |
| P:541 | `KAM.Planetary.poincareProd_localDiffeo` | `bpP:p7:product-chart(a)` | PASS | unchanged | Unchanged: Correct heterogeneous block product symplectic/analytic/lattice/onto/local-inverse component. |
| P:546 | `KAM.Planetary.keplerPart_poincareProd` | `bpP:p7:product-chart(b)` | PASS | unchanged | Unchanged: Correct pulled-back energy or derivative of displayed frequency; frozen field identification needs wrapper. |
| P:548 | `KAM.Planetary.hasDerivAt_nu` | `bpP:p7:product-chart(b)` | PASS | unchanged | Unchanged: Correct pulled-back energy or derivative of displayed frequency; frozen field identification needs wrapper. |
| P:551 | `KAM.Planetary.movingHamiltonian_poincareProd` | `bpP:p7:product-chart(c)` | PASS | unchanged | Unchanged: Exact frozen model composition or analytic collision-free pullback; coupling-independent perturbation. |
| P:555 | `KAM.Planetary.fixedHamiltonian_poincareProd` | `bpP:p7:product-chart(c)` | PASS | unchanged | Unchanged: Exact frozen model composition or analytic collision-free pullback; coupling-independent perturbation. |
| P:559 | `KAM.Planetary.isOpen_poincareProd_preimage` | `bpP:p7:product-chart(c)` | PASS | unchanged | Unchanged: Exact frozen model composition or analytic collision-free pullback; coupling-independent perturbation. |
| P:561 | `KAM.Planetary.analyticOnNhd_fMov_poincareProd` | `bpP:p7:product-chart(c)` | PASS | unchanged | Unchanged: Exact frozen model composition or analytic collision-free pullback; coupling-independent perturbation. |
| P:564 | `KAM.Planetary.analyticOnNhd_fFix_poincareProd` | `bpP:p7:product-chart(c)` | PASS | unchanged | Unchanged: Exact frozen model composition or analytic collision-free pullback; coupling-independent perturbation. |
| P:569 | `KAM.Planetary.circularPoint_eq_poincareProd` | `bpP:p7:tube` | PASS | unchanged | Unchanged: Correct literal circular point and uniform small physical tube preimage controls. |
| P:574 | `KAM.Planetary.tube_in_chart` | `bpP:p7:tube` | PASS | unchanged | Unchanged: Correct literal circular point and uniform small physical tube preimage controls. |
| P:583 | `KAM.Planetary.polarDom` | `bpP:p7:lattice / bpP:p1:period-convert` | PASS | unchanged | Unchanged: Correct sin-position/cos-momentum polar chart, domain/lattice and period-one conformal factor 2pi. |
| P:584 | `KAM.Planetary.polarMap` | `bpP:p7:lattice / bpP:p1:period-convert` | PASS | unchanged | Unchanged: Correct sin-position/cos-momentum polar chart, domain/lattice and period-one conformal factor 2pi. |
| P:588 | `KAM.Planetary.fullShift` | `bpP:p7:lattice / bpP:p1:period-convert` | PASS | unchanged | Unchanged: Correct sin-position/cos-momentum polar chart, domain/lattice and period-one conformal factor 2pi. |
| P:590 | `KAM.Planetary.angleScale` | `bpP:p7:lattice / bpP:p1:period-convert` | PASS | unchanged | Unchanged: Correct sin-position/cos-momentum polar chart, domain/lattice and period-one conformal factor 2pi. |
| P:592 | `KAM.Planetary.polarMap_symplectic` | `bpP:p7:lattice / bpP:p1:period-convert` | PASS | unchanged | Unchanged: Correct sin-position/cos-momentum polar chart, domain/lattice and period-one conformal factor 2pi. |
| P:593 | `KAM.Planetary.analyticOnNhd_polarMap` | `bpP:p7:lattice / bpP:p1:period-convert` | PASS | unchanged | Unchanged: Correct sin-position/cos-momentum polar chart, domain/lattice and period-one conformal factor 2pi. |
| P:594 | `KAM.Planetary.polarMap_mapsTo` | `bpP:p7:lattice / bpP:p1:period-convert` | PASS | unchanged | Unchanged: Correct sin-position/cos-momentum polar chart, domain/lattice and period-one conformal factor 2pi. |
| P:595 | `KAM.Planetary.polarDom_shift` | `bpP:p7:lattice / bpP:p1:period-convert` | PASS | unchanged | Unchanged: Correct sin-position/cos-momentum polar chart, domain/lattice and period-one conformal factor 2pi. |
| P:597 | `KAM.Planetary.poincareProd_polar_symplectic` | `bpP:p7:lattice / bpP:p1:period-convert` | PASS | unchanged | Unchanged: Correct sin-position/cos-momentum polar chart, domain/lattice and period-one conformal factor 2pi. |
| P:599 | `KAM.Planetary.poincareProd_polar_lattice` | `bpP:p7:lattice / bpP:p1:period-convert` | PASS | unchanged | Unchanged: Correct sin-position/cos-momentum polar chart, domain/lattice and period-one conformal factor 2pi. |
| P:604 | `KAM.Planetary.poincareProd_polar_periodOne_symplectic` | `bpP:p7:lattice / bpP:p1:period-convert` | PASS | unchanged | Unchanged: Correct sin-position/cos-momentum polar chart, domain/lattice and period-one conformal factor 2pi. |
| P:607 | `KAM.Planetary.poincareProd_polar_periodOne_lattice` | `bpP:p7:lattice / bpP:p1:period-convert` | PASS | unchanged | Unchanged: Correct sin-position/cos-momentum polar chart, domain/lattice and period-one conformal factor 2pi. |
| P:615 | `KAM.Planetary.polar_hamiltonian_split` | `bpP:p7:lattice / bpP:p1:period-convert` | PASS | unchanged | Unchanged: Correct sin-position/cos-momentum polar chart, domain/lattice and period-one conformal factor 2pi. |
| P:622 | `KAM.Planetary.poincareProdCast` | `bpP:p7:product-chart(a) (adapter)` | PASS | new | Precomposition direction n*2 to n+n is correct by Nat.mul_two n. |
| P:624 | `KAM.Planetary.poincareProdCastDom` | `bpP:p7:product-chart(a) (adapter)` | PASS | new | Exact pullback of the source chart domain. |
| P:625 | `KAM.Planetary.poincareProdCast_symplectic` | `bpP:p7:product-chart(a) (adapter)` | PASS | new | Same-carrier factor-one chart consumes the heterogeneous product and cast identities. |
| P:627 | `KAM.Planetary.analyticOnNhd_poincareProdCast` | `bpP:p7:product-chart(a) (adapter)` | PASS | new | Composition of real-analytic product chart with canonical linear cast. |
| P:629 | `KAM.Planetary.isOpen_poincareProdCastDom` | `bpP:p7:product-chart(a) (adapter)` | PASS | new | Correct open preimage under the continuous cast. |
| P:630 | `KAM.Planetary.poincareProdCast_eq_iff` | `bpP:p7:product-chart(a) (adapter)` | PASS | new | Correct inverse cast of frozen fast lattice; positions and actions stay in their proper blocks. |
| P:640 | `KAM.Planetary.secularGamma_eq` | `bpP:p7:d25` | PASS | unchanged | Unchanged: Explicit frozen secular/ellipse/physical-element bridge at kappa=1, two planets where frozen definitions require it. |
| P:641 | `KAM.Planetary.secularRoot_eq` | `bpP:p7:d25` | PASS | unchanged | Unchanged: Explicit frozen secular/ellipse/physical-element bridge at kappa=1, two planets where frozen definitions require it. |
| P:642 | `KAM.Planetary.secularEccVector_eq` | `bpP:p7:d25` | PASS | unchanged | Unchanged: Explicit frozen secular/ellipse/physical-element bridge at kappa=1, two planets where frozen definitions require it. |
| P:644 | `KAM.Planetary.secularAxis_eq` | `bpP:p7:d25` | PASS | unchanged | Unchanged: Explicit frozen secular/ellipse/physical-element bridge at kappa=1, two planets where frozen definitions require it. |
| P:648 | `KAM.Planetary.ellipsePhase_eq_poincareProd` | `bpP:p7:d25` | PASS | unchanged | Unchanged: Explicit frozen secular/ellipse/physical-element bridge at kappa=1, two planets where frozen definitions require it. |
| P:653 | `KAM.Planetary.ellipsePhase_eq_poincareProd_self` | `bpP:p7:d25` | PASS | unchanged | Unchanged: Explicit frozen secular/ellipse/physical-element bridge at kappa=1, two planets where frozen definitions require it. |
| P:657 | `KAM.Planetary.keplerFunctions_poincareProd` | `bpP:p7:d25` | PASS | unchanged | Unchanged: Explicit frozen secular/ellipse/physical-element bridge at kappa=1, two planets where frozen definitions require it. |
| P:666 | `KAM.Planetary.exists_poincareProd_of_progradeElliptic` | `bpP:p7:d25` | PASS | unchanged | Unchanged: Explicit frozen secular/ellipse/physical-element bridge at kappa=1, two planets where frozen definitions require it. |
| P:670 | `KAM.Planetary.average_via_eccentric_longitude` | `bpP:p7:average` | PASS | unchanged | Unchanged: Matches explicit global-continuity source premise; correct one-angle substitution with other anomalies fixed. |
| P:678 | `KAM.Planetary.poincareProd_means` | `bpP:p7:average / bpP:p7:kepler(c)` | PASS | unchanged | Unchanged: General-n physical means; correct circular endpoint and mass/strength constants. |

## Verification receipts and closeout

* Standalone: `nice -n 5 lake env lean .drafts/design/KeplerSignatures.lean` — **exit 0**, 173 diagnostics, all `declaration uses sorry`.
* Combined: reproduced the **exact two sed commands** from `check_kepler.sh`, directing the generated file to `.lake/abi-scratch/` as required by the audit brief, then `nice -n 5 lake env lean <that scratch file>` — **exit 0**, exactly **293 diagnostics**, all `declaration uses sorry`; no error or other warning. A preliminary Python construction matched the marker text inside the P-file header's example rather than the start-of-line marker and made an invalid scratch file; it was discarded and is not the checker receipt or a finding against the design.
* Applicability probe: **exit 0**, no `sorry`. It printed seven current Mathlib declarations/types and proved the generic complete-P complex analytic IFT local-solution shape, `cosh(1)<1.55`, the literal phaseCast application formula, the cast's frozen-field identity for arbitrary H, and the radius bridge. `Convex.norm_image_sub_le_of_norm_hasDerivWithin_le`, `ContinuousLinearMap.isUnit_iff_bijective`, and both implicit-function field names used by the new plan exist with the required scalar/complete-space shapes.
* `nice -n 5 sh scripts/lint_sources.sh` — **exit 0**: `check_lean_modules: PASS (221 Lean files, 0 comparator configurations)`; `FROZEN-ANCHOR GUARD OK`; `ABI HASHES OK (144 frozen declarations)`.
* Package-table arithmetic: **32/32 waves agree**, **35 distinct owned module paths**, no duplicate ownership. Old/new declaration inventory: **412/412 classified**, **410 PASS**, **two FAIL** associated with one residual selection defect.
* All audit-owned Lean processes were serialized. No resource override or library rebuild was used. No production module was edited; there is no new main-result proof or `#print axioms` certification. Of the 295 theorem declarations, 293 still explicitly contain draft `sorry`; the two radius identities are `rfl`. Elaboration does not certify the physical results.
* Input hashes were rechecked at closeout, scratch files were removed, and the report was checked for trailing whitespace. No suspected defect of a frozen declaration or new pinned-source erratum was established. R2-1 is a design choice-contract defect, also correcting an insufficiency of this auditor's round-1 proposed repair; R2-2 is stale design prose.

Required closeout: strengthen the radius selection as above, prove its full admissibility from the existing source construction, and recheck the affected specification/projections. No change to source-facing physical premises is needed. The other F1–F7 corrections and shared interfaces need not be reopened merely because this local selection repair remains.

READY dsgn-kep2
