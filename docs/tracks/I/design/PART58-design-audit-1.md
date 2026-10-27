# Independent design audit: I Parts 5 and 8

**Overall verdict: FAIL.** Two signatures are false on their declared carriers (`realHam_fderiv_bound`, `min_distance`). Two others are sound conditional helpers but cannot stand for the exact source-node contracts without wrappers (`separation_confined`, `confinement_prop`). The quarantine strategy can work: both provider types match the frozen types and acquire no new final premises. This is design evidence, not proof/seal approval.

Audit date: 2026-10-27. Worktree `/root/code/KAM-inp-design-i58`, branch `inp-design-i58`, commit `a61ae884c4da669b65f5402e0c090ca419c02b27`. Independent tier-2 refute-first audit. Authorized changes: this report; temporary module probes in `.lake/abi-scratch/`, removed. No mathematical source edits or state-changing git commands.

## Inputs and verification

| Pinned input | SHA256 |
|---|---|
| `docs/tracks/I/design/PART58-LEAN-DESIGN.md` (1752 lines) | `8ca23812af99fefdaaad9fddaeff07f9c946db1d020df7a52406962ac6559073` |
| `.drafts/design/IPart58Signatures.lean` (1155 lines) | `5de07dae4bfb179f0862b4f7a56308df5096f992587109426d60852dc45838e4` |
| `blueprint-I/parts/p3-iso-local-charts.tex` | `78f529636a4615405c7a5f74cfe143914d62a59be1f582adb5deecf451e83827` |
| `blueprint-I/parts/p5-confinement.tex` | `a98919a7c027932f4dd8e5435327cccb881110871a0980e900f3f6970c7fcda9` |
| `blueprint-I/parts/p8-r3bp.tex` | `69c7b6913a1f422a509d85d508984730b25aa818fec63fd297a42ee5463b8a0b` |
| Frozen `Iso/Theorems/AllTimeConfinement.lean` | `a34b694a41518bacffd88a22455d8242500d4c0fd7aba434906c0b510cbd91bc` |
| Frozen `Iso/Theorems/RestrictedNearCircular.lean` | `bafd9ad666bf857936ebfa5388861f0a2c22ffab011e122afef3f3b0e4a83373` |

Read the full design-audit brief, repository rules and plans/decisions, design and signatures, raw Parts 3/5/8, relevant statement/dependency records in `I-p3.nodes.md`, `I-p5.nodes.md`, `I-p8.nodes.md`, the frozen anchors and meaning-carrying definitions, and actual ODE/real-restriction APIs. Appendix A is byte-identical to the scratch file. Inventory: 94 theorems, 46 definitions, 2 abbreviations, 14 structures. Section U has 11 theorems, 14 definitions and one structure; the design proper has 130 named declarations (83 theorems, 32 definitions, 2 abbreviations, 13 structures).

Manifest identities: `iso.all_time_confinement.v1`, ABI `17ef8e0e953bbc3d0818b1ae5ddea79f637b1acfe7b9adf06e9fee74cad6907d`; `iso.restricted_near_circular.v1`, ABI `51ef78464ec9887a4af758841d92ff8ebd3a8b16d5455a50490c8df10bf6cc2e`. Both are DRAFT_SORRY. The guard passed; neither is a proved input yet.

- Ran **once**: `nice -n 5 lake env lean .drafts/design/IPart58Signatures.lean`. Exit 0; 96 diagnostics, all `declaration uses sorry`. No errors or other warnings. Both provider `rfl` examples elaborate. Proof irrelevance makes these type checks; they establish neither proof independence nor axiom cleanliness.
- A temporary module checked the Mathlib/ODE/strip names and proved the negative-length countermodel below without sorry; exit 0. One advertised API has the wrong domain dimension for the proposed use (F05).
- `scripts/lint_sources.sh`: exit 0; `check_lean_modules: PASS (243 Lean files, 0 comparator configurations)`, `FROZEN-ANCHOR GUARD OK`, `ABI HASHES OK (144 frozen declarations)`.
- No Lean library build, heartbeat/recursion/synthesis override, or bare-function/matrix instance. No theorem proof or `#print axioms` approval is claimed for sorry-bearing design stubs.

## Findings

| ID | Severity | Pinned scratch location | Finding, refutation and required repair |
|---|---|---|---|
| F01 | blocking | 395–399; design B4/P5-2 | `realHam_fderiv_bound` has BaseData for h and a bound on total `fderiv ℂ f`, but no differentiability premise for f. Take B=univ, s0=r0=1, h=0, eps=0, F1=1, `f(theta,I)=conj(I 0)`. Restriction to that coordinate shows it is nowhere complex differentiable, so total fderiv is zero and hD holds. Its real restriction is `I↦I 0`, with derivative norm 1, contradicting the asserted bound 0. Recovering holomorphy from hD fails because fderiv is total. Restore source holomorphy, preferably `hf : PerturbData ...`. |
| F02 | blocking | 822–826; design B1/D10 | `min_distance` assumes continuity and only `ell u=0 → u=0`, with no nonnegativity. Let X=R, iota=Fin 2, ell constantly -1, S the singleton configuration `(0,1)`. All premises hold, but positive delta cannot be ≤-1. The probe proved the essential countermodel. Add nonnegativity or positivity off zero. |
| F03 | major | 642–651, 663–673; design D8 | `bpI:p5:separation(c)` and `bpI:p5:confinement` do not assume `hinv : IsInvariantSet ... (graphSet Yp ∪ graphSet Ym)`. They prove/use it through `bpI:p5:invariance`. D8 says “the blueprint uses Lemma invariance as input”: that is a proof dependency, not a source premise. SepSetting omits actual torus parametrizations/invariance equations, so S alone cannot discharge hinv. Retain these types under distinct `_of_invariant` names; add source-facing wrappers consuming the named Part 3 torus output and graph identifications, and deriving hinv internally. The response “it is already proved earlier” confirms the wrapper repair, rather than licensing an extra source premise. |
| F04 | major dependency gate | 717–720, 750; design §§2,10.1 | `part3_tori` is a planned producer owned by a Part 3 design not yet delivered here. A name and sorry-backed assembly do not discharge ChartCover/ToriExistence. Keep `confinement_main_of_tori` CONDITIONAL and final providers unproved until the producer and permitted upstream seals land. No signature change needed for this explicitly conditional helper. |
| F05 | minor proof-plan applicability | design RealHam table/P5-2/§12.3 | `#check DifferentiableOn.contDiffOn` has domain `Set ℂ`, function `ℂ→E`. It cannot directly prove smoothness from holomorphy on `Fin 2→ℂ` or the phase product. Use the existing multivariable `KAM.holomorphic_analytic`/analyticity bridge (with a phase-product identification where needed), then analytic-to-smooth and real restriction. The smoothness signatures remain true. |
| F06 | minor upstream availability | design §10.2/import DAG | The cited Kepler design file is absent in this worktree and main checkout; located the current draft in `/root/code/KAM-inp-design-kep/`. Its `period_one` and `transfer` have larger conjunctions: U stubs are projections/repackagings, not literal upstream declarations. Deliver the “WANTED” extraction names or explicit adapters, pin the final upstream revision and compile the adapter before dispatch. Keep P8-2…5 upstream-gated. |

F01/F02 refute the proposed helpers, not the frozen theorems. F03 fails exact-node fidelity; it does not refute the useful conditional implication. No new defect of a pinned external mathematical source was established.

## Corrected signatures for the failures

These snippets use Appendix A's ambient section variables. They are proposed repairs, not edits applied to the design.

F01: retain the named Part 3 derivative-bound output and restore the source hypothesis on f:

```lean
theorem realHam_fderiv_bound
    (hb : BaseData B s₀ r₀ h) (hf : PerturbData B s₀ r₀ f ε) {F₁ : ℝ}
    (hD : ∀ z ∈ fractD B s₀ r₀, ‖fderiv ℂ f z‖ ≤ F₁ * ε)
    (φ : Fin 2 → ℝ) {I : Fin 2 → ℝ} (hI : I ∈ B) :
    DifferentiableAt ℝ (fun x : Fin 2 → ℝ => (f (toC φ, toC x)).re) I ∧
      ‖fderiv ℝ (fun x : Fin 2 → ℝ => (f (toC φ, toC x)).re) I‖ ≤ F₁ * ε
```

F02: the source's norm entails nonnegativity; this restores that property in the length generalization:

```lean
theorem min_distance {ι X : Type*} [Finite ι] [AddCommGroup X]
    [TopologicalSpace X] [IsTopologicalAddGroup X]
    (ℓ : X → ℝ) (hcont : Continuous ℓ) (hnonneg : ∀ u, 0 ≤ ℓ u)
    (hzero : ∀ u, ℓ u = 0 → u = 0)
    {S : Set (ι → X)} (hS : IsCompact S)
    (hsep : ∀ q ∈ S, ∀ i j, i ≠ j → q i ≠ q j) :
    ∃ δ : ℝ, 0 < δ ∧ ∀ q ∈ S, ∀ i j, i ≠ j → δ ≤ ℓ (q i - q j)
```

F03: keep the old signatures as `separation_confined_of_invariant` and `confinement_prop_of_invariant`. For source-facing versions, carry the named output and its graph notation instead of hinv. Add the usual ambient parameters `Kp,Km : (Fin 2→ℂ)→(Fin 2→ℂ)×(Fin 2→ℂ)` and `ωp,ωm : Fin 2→ℝ`:

```lean
theorem separation_confined
    (S : SepSetting B s₀ r₀ h f ε η₁ F₁ C_K p r Lm LΦ κ E Yp Ym Ip Im)
    (Tp : TorusOutput h f ε C_K s₀ E Kp Ip ωp)
    (Tm : TorusOutput h f ε C_K s₀ E Km Im ωm)
    (hgp : Set.range (realRestriction Kp) = graphSet Yp)
    (hgm : Set.range (realRestriction Km) = graphSet Ym)
    {z₀ : P2} (hz₀ : ‖z₀.2 - p.c‖ < p.ρc)
    (hE : E = realHamiltonian h f z₀)
    {J : Set ℝ} (hJ : J.OrdConnected) (h0 : (0 : ℝ) ∈ J) {z : ℝ → P2}
    (hz : IsSolutionIn (hamiltonianVectorField (realHamiltonian h f))
      (Set.univ ×ˢ B) J z) (hz0 : z 0 = z₀) :
    ∀ t ∈ J, z t ∈ sepRegion p Yp Ym

theorem confinement_prop
    (S : SepSetting B s₀ r₀ h f ε η₁ F₁ C_K p r Lm LΦ κ E Yp Ym Ip Im)
    (Tp : TorusOutput h f ε C_K s₀ E Kp Ip ωp)
    (Tm : TorusOutput h f ε C_K s₀ E Km Im ωm)
    (hgp : Set.range (realRestriction Kp) = graphSet Yp)
    (hgm : Set.range (realRestriction Km) = graphSet Ym)
    (hB : IsOpen B) {z₀ : P2} (hz₀ : ‖z₀.2 - p.c‖ < p.ρc)
    (hE : E = realHamiltonian h f z₀) {Tm' Tp' : EReal} {z : ℝ → P2}
    (hz : IsMaximalSolution (hamiltonianVectorField (realHamiltonian h f))
      (Set.univ ×ˢ B) z₀ Tm' Tp' z) :
    Tm' = ⊥ ∧ Tp' = ⊤ ∧ (∀ t, z t ∈ sepRegion p Yp Ym) ∧
      (∀ t, (z t).2 ∈ p.K) ∧ ∀ t, ‖(z t).2 - z₀.2‖ < η₁ / 2
```

The graph equalities express exactly the standing notation of `sec-graph/sec-sep`. Recover real torus membership in B from GraphData.near/base_mem, PatchConst.thick_subset and Smallness.lt_r, apply `torus_invariant` to Tp/Tm and take the union **inside the proof**. A bundle of this complete named output is an alternative. Merely putting hinv into SepSetting and calling it typing data does not repair the source contract.

## Signature ledger

PASS means faithful type/body or a sound, explicitly identified helper/projection at design level; it does not mean proved. All 130 in-scope named declarations have a row. U's 26 stubs are listed separately. Blueprint labels in tables omit the `bpI:` prefix unless explicitly otherwise.

| Scratch line | Lean declaration | Blueprint label | Verdict | Reason |
|---|---|---|---|---|
| 190 | `KAM.Iso.Confinement.toC` (abbrev) | `p3:setting / p3:constants; p5:sec-real` | PASS | Literal carrier/formula; frozen objects used underneath. |
| 195 | `KAM.Iso.Confinement.realAct` (def) | `p3:setting / p3:constants; p5:sec-real` | PASS | Literal carrier/formula; frozen objects used underneath. |
| 198 | `KAM.Iso.Confinement.realPart` (def) | `p3:setting / p3:constants; p5:sec-real` | PASS | Literal carrier/formula; frozen objects used underneath. |
| 201 | `KAM.Iso.Confinement.totalH` (def) | `p3:setting / p3:constants; p5:sec-real` | PASS | Literal carrier/formula; frozen objects used underneath. |
| 205 | `KAM.Iso.Confinement.rhoInf` (def) | `p3:setting / p3:constants; p5:sec-real` | PASS | Literal carrier/formula; frozen objects used underneath. |
| 208 | `KAM.Iso.Confinement.fractD` (def) | `p3:setting / p3:constants; p5:sec-real` | PASS | Literal carrier/formula; frozen objects used underneath. |
| 212 | `KAM.Iso.Confinement.BaseData` (structure) | `p3:setting; p0:head` | PASS | Expanded source premises, not a new assumption class. |
| 220 | `KAM.Iso.Confinement.HeadData` (structure) | `p3:setting; p0:head` | PASS | Expanded source premises, not a new assumption class. |
| 233 | `KAM.Iso.Confinement.PerturbData` (structure) | `p3:setting; p0:head` | PASS | Expanded source premises, not a new assumption class. |
| 245 | `KAM.Iso.Confinement.EnergyPatch` (structure) | `p3:chart / patch / patch-rays` | PASS | Projection of named chart output; inverse identities only on guarded image. |
| 279 | `KAM.Iso.Confinement.EnergyPatch.Q` (def) | `p5:sec-patch / patch-const` | PASS | Correct chart preimages, compactness and bound envelopes; D1 replaces exact extrema by sufficient bounds. |
| 283 | `KAM.Iso.Confinement.EnergyPatch.O` (def) | `p5:sec-patch / patch-const` | PASS | Correct chart preimages, compactness and bound envelopes; D1 replaces exact extrema by sufficient bounds. |
| 287 | `KAM.Iso.Confinement.EnergyPatch.Omega` (def) | `p5:sec-patch / patch-const` | PASS | Correct chart preimages, compactness and bound envelopes; D1 replaces exact extrema by sufficient bounds. |
| 291 | `KAM.Iso.Confinement.EnergyPatch.K` (def) | `p5:sec-patch / patch-const` | PASS | Correct chart preimages, compactness and bound envelopes; D1 replaces exact extrema by sufficient bounds. |
| 296 | `KAM.Iso.Confinement.PatchConst` (structure) | `p5:sec-patch / patch-const` | PASS | Correct chart preimages, compactness and bound envelopes; D1 replaces exact extrema by sufficient bounds. |
| 310 | `KAM.Iso.Confinement.Smallness` (structure) | `p5:eps0` | PASS | Finite-family threshold precedes f, eps, z0; zero eps included. |
| 320 | `KAM.Iso.Confinement.EnergyPatch.isCompact_K` (theorem) | `p5:sec-patch / patch-const` | PASS | Correct chart preimages, compactness and bound envelopes; D1 replaces exact extrema by sufficient bounds. |
| 322 | `KAM.Iso.Confinement.EnergyPatch.K_eq_image` (theorem) | `p5:sec-patch / patch-const` | PASS | Correct chart preimages, compactness and bound envelopes; D1 replaces exact extrema by sufficient bounds. |
| 324 | `KAM.Iso.Confinement.EnergyPatch.isOpen_Omega` (theorem) | `p5:sec-patch / patch-const` | PASS | Correct chart preimages, compactness and bound envelopes; D1 replaces exact extrema by sufficient bounds. |
| 326 | `KAM.Iso.Confinement.EnergyPatch.Omega_subset_K` (theorem) | `p5:sec-patch / patch-const` | PASS | Correct chart preimages, compactness and bound envelopes; D1 replaces exact extrema by sufficient bounds. |
| 329 | `KAM.Iso.Confinement.patchConst_exists` (theorem) | `p5:sec-patch / patch-const` | PASS | Correct chart preimages, compactness and bound envelopes; D1 replaces exact extrema by sufficient bounds. |
| 333 | `KAM.Iso.Confinement.exists_eps0` (theorem) | `p5:eps0` | PASS | Finite-family threshold precedes f, eps, z0; zero eps included. |
| 340 | `KAM.Iso.Confinement.P2` (abbrev) | `p3:setting / p3:constants; p5:sec-real` | PASS | Literal carrier/formula; frozen objects used underneath. |
| 349 | `KAM.Iso.Confinement.isOpen_realAct` (theorem) | `p5:real-ham / p3:constants` | PASS | Open neighborhood and real inclusion; positive radii supplied. |
| 351 | `KAM.Iso.Confinement.subset_realAct` (theorem) | `p5:real-ham / p3:constants` | PASS | Open neighborhood and real inclusion; positive radii supplied. |
| 354 | `KAM.Iso.Confinement.toC_pair_mem_fractD` (theorem) | `p5:real-ham / p3:constants` | PASS | Open neighborhood and real inclusion; positive radii supplied. |
| 358 | `KAM.Iso.Confinement.realHam_eq` (theorem) | `p5:real-ham` | PASS | Correct values, real/complex field bridge and actual frozen predicate; see F05 for proof API. |
| 363 | `KAM.Iso.Confinement.realHam_contDiffOn` (theorem) | `p5:real-ham` | PASS | Correct values, real/complex field bridge and actual frozen predicate; see F05 for proof API. |
| 367 | `KAM.Iso.Confinement.realHam_periodic` (theorem) | `p5:real-ham` | PASS | Correct values, real/complex field bridge and actual frozen predicate; see F05 for proof API. |
| 372 | `KAM.Iso.Confinement.realHam_field_eq` (theorem) | `p5:real-ham` | PASS | Correct values, real/complex field bridge and actual frozen predicate; see F05 for proof API. |
| 378 | `KAM.Iso.Confinement.realHam_field_contDiffOn` (theorem) | `p5:real-ham` | PASS | Correct values, real/complex field bridge and actual frozen predicate; see F05 for proof API. |
| 382 | `KAM.Iso.Confinement.realHam_field_periodic` (theorem) | `p5:real-ham` | PASS | Correct values, real/complex field bridge and actual frozen predicate; see F05 for proof API. |
| 388 | `KAM.Iso.Confinement.realHam_solution_iff` (theorem) | `p5:real-ham` | PASS | Correct values, real/complex field bridge and actual frozen predicate; see F05 for proof API. |
| 395 | `KAM.Iso.Confinement.realHam_fderiv_bound` (theorem) | `p5:real-ham(d)` | FAIL | FAIL F01: differentiability of f missing; total fderiv bound is insufficient. |
| 402 | `KAM.Iso.Confinement.realHam_sub_le` (theorem) | `p5:real-ham` | PASS | Correct values, real/complex field bridge and actual frozen predicate; see F05 for proof API. |
| 406 | `KAM.Iso.Confinement.realHam_energy_const` (theorem) | `p5:sp-barrier / hd-uniq; N:p3:ham-energy / gen-uniqueness` | PASS | Correct ODE helper; interval and frozen solution guards retained. |
| 413 | `KAM.Iso.Confinement.realHam_unique` (theorem) | `p5:sp-barrier / hd-uniq; N:p3:ham-energy / gen-uniqueness` | PASS | Correct ODE helper; interval and frozen solution guards retained. |
| 426 | `KAM.Iso.Confinement.TorusOutput` (structure) | `p3:T1–T4; p5:sec-graph` | PASS | Named Part 3 projection; full source torus output is stronger. |
| 446 | `KAM.Iso.Confinement.torus_phase_sub_lipschitz` (theorem) | `p5:graph` | PASS | Correct contraction/graph/position projections, with explicit smallness or patch guards. |
| 451 | `KAM.Iso.Confinement.torus_phase_bijective` (theorem) | `p5:graph` | PASS | Correct contraction/graph/position projections, with explicit smallness or patch guards. |
| 458 | `KAM.Iso.Confinement.torus_phase_inv` (theorem) | `p5:graph` | PASS | Correct contraction/graph/position projections, with explicit smallness or patch guards. |
| 466 | `KAM.Iso.Confinement.torus_graph` (theorem) | `p5:graph` | PASS | Correct contraction/graph/position projections, with explicit smallness or patch guards. |
| 474 | `KAM.Iso.Confinement.torus_graph_mem` (theorem) | `p5:graph` | PASS | Correct contraction/graph/position projections, with explicit smallness or patch guards. |
| 480 | `KAM.Iso.Confinement.torus_graph_energy_close` (theorem) | `p5:graph` | PASS | Correct contraction/graph/position projections, with explicit smallness or patch guards. |
| 496 | `KAM.Iso.Confinement.torus_flow` (theorem) | `p5:invariance` | PASS | hmem is the real-action membership component of named output T6, also constructible by graph_mem; no assumed invariance. |
| 504 | `KAM.Iso.Confinement.torus_invariant` (theorem) | `p5:invariance` | PASS | hmem is the real-action membership component of named output T6, also constructible by graph_mem; no assumed invariance. |
| 521 | `KAM.Iso.Confinement.energy_coordinate` (theorem) | `p5:energy-coordinate` | PASS | Sound helper under standing patch/smallness and named Part 3 derivative bound; uses genuine holomorphy from hf. |
| 535 | `KAM.Iso.Confinement.GraphData` (structure) | `p5:sec-graph / sec-sep` | PASS | Standing notation for the already constructed graph plus Part 3 base point; not arbitrary source typing. |
| 549 | `KAM.Iso.Confinement.slope_close` (theorem) | `p5:mu` | PASS | Segment stays in closed thickening; windows and continuity follow from graph and constants. |
| 555 | `KAM.Iso.Confinement.slope_window_plus` (theorem) | `p5:mu` | PASS | Segment stays in closed thickening; windows and continuity follow from graph and constants. |
| 562 | `KAM.Iso.Confinement.slope_window_minus` (theorem) | `p5:mu` | PASS | Segment stays in closed thickening; windows and continuity follow from graph and constants. |
| 569 | `KAM.Iso.Confinement.slope_continuous` (theorem) | `p5:mu` | PASS | Segment stays in closed thickening; windows and continuity follow from graph and constants. |
| 584 | `KAM.Iso.Confinement.SepSetting` (structure) | `p5:sec-sep` | PASS | Explicit standing graph/patch data; does not itself assert invariant graphs or confinement. |
| 597 | `KAM.Iso.Confinement.graphSet` (def) | `p5:sec-sep` | PASS | Literal sets, with chart-domain membership included. |
| 600 | `KAM.Iso.Confinement.levelSet` (def) | `p5:sec-sep` | PASS | Literal sets, with chart-domain membership included. |
| 603 | `KAM.Iso.Confinement.sepRegion` (def) | `p5:sec-sep` | PASS | Literal sets, with chart-domain membership included. |
| 614 | `KAM.Iso.Confinement.separation_isOpen` (theorem) | `p5:separation(a,b)` | PASS | Correct graph-coordinate/energy boundary statements under stated standing data. |
| 618 | `KAM.Iso.Confinement.separation_init` (theorem) | `p5:separation(a,b)` | PASS | Correct graph-coordinate/energy boundary statements under stated standing data. |
| 623 | `KAM.Iso.Confinement.separation_closure` (theorem) | `p5:separation(a,b)` | PASS | Correct graph-coordinate/energy boundary statements under stated standing data. |
| 628 | `KAM.Iso.Confinement.separation_window` (theorem) | `p5:separation(a,b)` | PASS | Correct graph-coordinate/energy boundary statements under stated standing data. |
| 634 | `KAM.Iso.Confinement.separation_boundary` (theorem) | `p5:separation(a,b)` | PASS | Correct graph-coordinate/energy boundary statements under stated standing data. |
| 642 | `KAM.Iso.Confinement.separation_confined` (theorem) | `p5:separation(c)` | FAIL | FAIL F03 as source node: extra produced invariance premise; sound conditional helper only. |
| 663 | `KAM.Iso.Confinement.confinement_prop` (theorem) | `p5:confinement` | FAIL | FAIL F03 as source node: extra produced invariance premise; maximal solution is a legitimate source premise. |
| 686 | `KAM.Iso.Confinement.ChartCover` (structure) | `p3:cover / patch-rays / hypothesis-d` | PASS | Named upstream result bundle; producer must discharge it, not a final theorem premise. |
| 700 | `KAM.Iso.Confinement.ToriExistence` (structure) | `p3:tori (projection), cover, uniform` | PASS | Required upstream producer interface, conditional on later implementation/seal; F04. |
| 717 | `KAM.Iso.Confinement.part3_tori` (theorem) | `p3:tori (projection), cover, uniform` | PASS | Required upstream producer interface, conditional on later implementation/seal; F04. |
| 732 | `KAM.Iso.Confinement.confinement_main_of_tori` (theorem) | `p5:hd-eps / hd-fix / hd-sol / hd-uniq` | PASS | Distinct conditional helper; output bundles are discharged in provider-only confinement_main. |
| 750 | `KAM.Iso.Confinement.confinement_main` (theorem) | `p0:head / p5:hd-*` | PASS | Exact packed source premises and conclusion; producer call remains unproved, F04. |
| 774 | `KAM.Iso.Collision.radius_add_le` (theorem) | `p8:x-norm / shell-exclusion` | PASS | Actual frozen Euclidean radius; no ambient norm substitution. |
| 776 | `KAM.Iso.Collision.radius_neg` (theorem) | `p8:x-norm / shell-exclusion` | PASS | Actual frozen Euclidean radius; no ambient norm substitution. |
| 778 | `KAM.Iso.Collision.radius_eq_zero_iff` (theorem) | `p8:x-norm / shell-exclusion` | PASS | Actual frozen Euclidean radius; no ambient norm substitution. |
| 780 | `KAM.Iso.Collision.continuous_radius` (theorem) | `p8:x-norm / shell-exclusion` | PASS | Actual frozen Euclidean radius; no ambient norm substitution. |
| 783 | `KAM.Iso.Collision.exclusionMu` (def) | `p8:collision-exclusion` | PASS | Sound length generalization. Compact version derives nonnegativity from evenness/subadditivity. |
| 785 | `KAM.Iso.Collision.exclusionMu_pos` (theorem) | `p8:collision-exclusion` | PASS | Sound length generalization. Compact version derives nonnegativity from evenness/subadditivity. |
| 790 | `KAM.Iso.Collision.collision_exclusion_quant` (theorem) | `p8:collision-exclusion` | PASS | Sound length generalization. Compact version derives nonnegativity from evenness/subadditivity. |
| 799 | `KAM.Iso.Collision.collision_exclusion_compact` (theorem) | `p8:collision-exclusion` | PASS | Sound length generalization. Compact version derives nonnegativity from evenness/subadditivity. |
| 810 | `KAM.Iso.Collision.shell_exclusion` (theorem) | `p8:shell-exclusion` | PASS | Frozen primaries/radius/CollisionFree; positive shell and abs(mu) threshold retained. |
| 816 | `KAM.Iso.Collision.shell_collisionFree` (theorem) | `p8:shell-exclusion` | PASS | Frozen primaries/radius/CollisionFree; positive shell and abs(mu) threshold retained. |
| 822 | `KAM.Iso.Collision.min_distance` (theorem) | `p8:min-distance` | FAIL | FAIL F02: abstract length can be negative. |
| 837 | `KAM.Iso.R3bp.R3bpParams` (structure) | `p0:r3bp / p8:A` | PASS | Six source conditions; broader region data are a valid strengthening of topology helpers. |
| 847 | `KAM.Iso.R3bp.RegionParams` (structure) | `p0:r3bp / p8:A` | PASS | Six source conditions; broader region data are a valid strengthening of topology helpers. |
| 854 | `KAM.Iso.R3bp.R3bpParams.region` (theorem) | `p0:r3bp / p8:A` | PASS | Six source conditions; broader region data are a valid strengthening of topology helpers. |
| 858 | `KAM.Iso.R3bp.kappa` (def) | `p8:e-vs-k / A` | PASS | Literal square-root and region formulas; whole-carrier formulas never used without guards for identities. |
| 861 | `KAM.Iso.R3bp.actionRegion` (def) | `p8:e-vs-k / A` | PASS | Literal square-root and region formulas; whole-carrier formulas never used without guards for identities. |
| 866 | `KAM.Iso.R3bp.actionRegionCl` (def) | `p8:e-vs-k / A` | PASS | Literal square-root and region formulas; whole-carrier formulas never used without guards for identities. |
| 871 | `KAM.Iso.R3bp.eccOf_mem_Ioo_iff` (theorem) | `p8:e-vs-k / x-cont` | PASS | Positive L and cone guards; endpoint e-prime=0 is correctly permitted. |
| 876 | `KAM.Iso.R3bp.eccOf_mem_Icc_iff` (theorem) | `p8:e-vs-k / x-cont` | PASS | Positive L and cone guards; endpoint e-prime=0 is correctly permitted. |
| 880 | `KAM.Iso.R3bp.kappa_strictAntiOn` (theorem) | `p8:e-vs-k / x-cont` | PASS | Positive L and cone guards; endpoint e-prime=0 is correctly permitted. |
| 883 | `KAM.Iso.R3bp.actionRegionCl_subset_cone` (theorem) | `p8:A / topology(a)` | PASS | Correct inequalities, closed bounded region and cone guards; broader parameter-free topology claims remain true. |
| 887 | `KAM.Iso.R3bp.isOpen_actionRegion` (theorem) | `p8:A / topology(a)` | PASS | Correct inequalities, closed bounded region and cone guards; broader parameter-free topology claims remain true. |
| 889 | `KAM.Iso.R3bp.isCompact_actionRegionCl` (theorem) | `p8:A / topology(a)` | PASS | Correct inequalities, closed bounded region and cone guards; broader parameter-free topology claims remain true. |
| 891 | `KAM.Iso.R3bp.closure_actionRegion_subset` (theorem) | `p8:A / topology(a)` | PASS | Correct inequalities, closed bounded region and cone guards; broader parameter-free topology claims remain true. |
| 895 | `KAM.Iso.R3bp.mem_actionRegion_iff` (theorem) | `p8:A / topology(a)` | PASS | Correct inequalities, closed bounded region and cone guards; broader parameter-free topology claims remain true. |
| 901 | `KAM.Iso.R3bp.nearCircular_eq_image_region` (theorem) | `p8:topology(b–d)` | PASS | Actual NearCircular; depends on gated Kepler equivalence. Constructive nonempty midpoint witness available. |
| 905 | `KAM.Iso.R3bp.exists_delaunay_preimage` (theorem) | `p8:topology(b–d)` | PASS | Actual NearCircular; depends on gated Kepler equivalence. Constructive nonempty midpoint witness available. |
| 910 | `KAM.Iso.R3bp.isOpen_nearCircular_region` (theorem) | `p8:topology(b–d)` | PASS | Actual NearCircular; depends on gated Kepler equivalence. Constructive nonempty midpoint witness available. |
| 914 | `KAM.Iso.R3bp.nearCircular_nonempty` (theorem) | `p8:topology(b–d)` | PASS | Actual NearCircular; depends on gated Kepler equivalence. Constructive nonempty midpoint witness available. |
| 923 | `KAM.Iso.R3bp.safeT` (def) | `p8:safe / safe-region` | PASS | Correct formulas/inclusions and fixed-parameter radii; extrema guarded by SafeAction. |
| 924 | `KAM.Iso.R3bp.safeAminus` (def) | `p8:safe / safe-region` | PASS | Correct formulas/inclusions and fixed-parameter radii; extrema guarded by SafeAction. |
| 925 | `KAM.Iso.R3bp.safeAplus` (def) | `p8:safe / safe-region` | PASS | Correct formulas/inclusions and fixed-parameter radii; extrema guarded by SafeAction. |
| 926 | `KAM.Iso.R3bp.safeEminus` (def) | `p8:safe / safe-region` | PASS | Correct formulas/inclusions and fixed-parameter radii; extrema guarded by SafeAction. |
| 927 | `KAM.Iso.R3bp.safeEplus` (def) | `p8:safe / safe-region` | PASS | Correct formulas/inclusions and fixed-parameter radii; extrema guarded by SafeAction. |
| 930 | `KAM.Iso.R3bp.safeU` (def) | `p8:safe / safe-region` | PASS | Correct formulas/inclusions and fixed-parameter radii; extrema guarded by SafeAction. |
| 934 | `KAM.Iso.R3bp.safeK` (def) | `p8:safe / safe-region` | PASS | Correct formulas/inclusions and fixed-parameter radii; extrema guarded by SafeAction. |
| 938 | `KAM.Iso.R3bp.safeB` (def) | `p8:safe / safe-region` | PASS | Correct formulas/inclusions and fixed-parameter radii; extrema guarded by SafeAction. |
| 942 | `KAM.Iso.R3bp.safeB'` (def) | `p8:safe / safe-region` | PASS | Correct formulas/inclusions and fixed-parameter radii; extrema guarded by SafeAction. |
| 945 | `KAM.Iso.R3bp.safeT_pos` (theorem) | `p8:safe / safe-region` | PASS | Correct formulas/inclusions and fixed-parameter radii; extrema guarded by SafeAction. |
| 947 | `KAM.Iso.R3bp.safe_regionParams` (theorem) | `p8:safe / safe-region` | PASS | Correct formulas/inclusions and fixed-parameter radii; extrema guarded by SafeAction. |
| 952 | `KAM.Iso.R3bp.safe_inclusions` (theorem) | `p8:safe / safe-region` | PASS | Correct formulas/inclusions and fixed-parameter radii; extrema guarded by SafeAction. |
| 957 | `KAM.Iso.R3bp.safe_elements` (theorem) | `p8:safe / safe-region` | PASS | Correct formulas/inclusions and fixed-parameter radii; extrema guarded by SafeAction. |
| 963 | `KAM.Iso.R3bp.safe_radii` (theorem) | `p8:safe / safe-region` | PASS | Correct formulas/inclusions and fixed-parameter radii; extrema guarded by SafeAction. |
| 969 | `KAM.Iso.R3bp.kRmin_le` (theorem) | `p8:safe / safe-region` | PASS | Correct formulas/inclusions and fixed-parameter radii; extrema guarded by SafeAction. |
| 972 | `KAM.Iso.R3bp.le_kRhoMax` (theorem) | `p8:safe / safe-region` | PASS | Correct formulas/inclusions and fixed-parameter radii; extrema guarded by SafeAction. |
| 977 | `KAM.Iso.R3bp.safe_domain` (theorem) | `p8:safe / safe-region` | PASS | Correct formulas/inclusions and fixed-parameter radii; extrema guarded by SafeAction. |
| 994 | `KAM.Iso.R3bp.r3bpH` (def) | `p8:head-data` | PASS | Frozen HeadData/PerturbData match; Kepler projection/adapters gated, F06. |
| 997 | `KAM.Iso.R3bp.r3bpS₀` (def) | `p8:head-data` | PASS | Frozen HeadData/PerturbData match; Kepler projection/adapters gated, F06. |
| 998 | `KAM.Iso.R3bp.r3bpR₀` (def) | `p8:head-data` | PASS | Frozen HeadData/PerturbData match; Kepler projection/adapters gated, F06. |
| 1001 | `KAM.Iso.R3bp.r3bp_headData` (theorem) | `p8:head-data` | PASS | Frozen HeadData/PerturbData match; Kepler projection/adapters gated, F06. |
| 1007 | `KAM.Iso.R3bp.r3bp_perturbData` (theorem) | `p8:head-data` | PASS | Frozen HeadData/PerturbData match; Kepler projection/adapters gated, F06. |
| 1013 | `KAM.Iso.R3bp.shellNu` (def) | `p8:constants / pf-small` | PASS | D2 conservative threshold preserves root conclusion; handles CF=0. |
| 1017 | `KAM.Iso.R3bp.r3bpMu0` (def) | `p8:constants / pf-small` | PASS | D2 conservative threshold preserves root conclusion; handles CF=0. |
| 1021 | `KAM.Iso.R3bp.r3bpD` (def) | `p8:constants / pf-small` | PASS | D2 conservative threshold preserves root conclusion; handles CF=0. |
| 1024 | `KAM.Iso.R3bp.r3bpR` (def) | `p8:constants / pf-small` | PASS | D2 conservative threshold preserves root conclusion; handles CF=0. |
| 1027 | `KAM.Iso.R3bp.r3bp_constants_pos` (theorem) | `p8:constants / pf-small` | PASS | D2 conservative threshold preserves root conclusion; handles CF=0. |
| 1032 | `KAM.Iso.R3bp.r3bp_small` (theorem) | `p8:constants / pf-small` | PASS | D2 conservative threshold preserves root conclusion; handles CF=0. |
| 1038 | `KAM.Iso.R3bp.delaunay_orbit_bounds` (theorem) | `p8:bounds` | PASS | Actual radius/momentum bounds with positive rmin; energy identity is a required upstream output. |
| 1048 | `KAM.Iso.R3bp.r3bp_core` (theorem) | `p8:pf-coord / pf-sol / pf-bounds / pf-dist` | PASS | Explicit conditional transport helper. Global solution is the named I-HEAD output, supplied in provider only. |
| 1064 | `KAM.Iso.R3bp.restricted_unique` (theorem) | `p8:pf-uniq` | PASS | Physical uniqueness on collision-free domain, no Delaunay confinement of competitor. |
| 1082 | `KAM.Provider.Iso.all_time_confinement` (theorem) | `p0:head` | PASS | Provider type equals frozen type; packed source binders consumed by confinement_main. |
| 1115 | `KAM.Provider.Iso.restricted_near_circular` (theorem) | `p0:r3bp` | PASS | Provider type equals frozen type; supplies global-solution premise with I-HEAD output. |

### Section U: upstream interfaces, not proofs of this package

| Line | Name | Interface verdict |
|---|---|---|
| 64 | `KAM.Kepler.eccOf` (def) | PASS as proposed upstream interface; no proof imported from this stub. |
| 67 | `KAM.Kepler.deDom` (def) | PASS as proposed upstream interface; no proof imported from this stub. |
| 70 | `KAM.Kepler.delaunay` (def) | PASS as explicitly omitted upstream body; not an audited definition implementation. |
| 72 | `KAM.Kepler.eccOf_mem_Ioo` (theorem) | PASS as proposed upstream interface; no proof imported from this stub. |
| 74 | `KAM.Kepler.nearCircular_eq_image` (theorem) | PASS as proposed upstream interface; no proof imported from this stub. |
| 79 | `KAM.Kepler.isOpen_nearCircular` (theorem) | PASS as proposed upstream interface; no proof imported from this stub. |
| 83 | `KAM.Kepler.kE` (def) | PASS as proposed upstream interface; no proof imported from this stub. |
| 87 | `KAM.Kepler.delaunay_energy` (theorem) | PASS as proposed upstream interface; no proof imported from this stub. |
| 90 | `KAM.Kepler.delaunay_radius_bounds` (theorem) | PASS as proposed upstream interface; no proof imported from this stub. |
| 101 | `KAM.Iso.SafeAction` (structure) | PASS as proposed upstream interface; no proof imported from this stub. |
| 106 | `KAM.Iso.kRmin` (def) | PASS as proposed upstream interface; no proof imported from this stub. |
| 107 | `KAM.Iso.kRhoMax` (def) | PASS as proposed upstream interface; no proof imported from this stub. |
| 110 | `KAM.Iso.keplerRotH` (def) | PASS as proposed upstream interface; no proof imported from this stub. |
| 113 | `KAM.Iso.periodOneMap` (def) | PASS as proposed upstream interface; no proof imported from this stub. |
| 116 | `KAM.Iso.exactDelta` (def) | PASS as explicitly omitted upstream body; not an audited definition implementation. |
| 117 | `KAM.Iso.exactMu2` (def) | PASS as explicitly omitted upstream body; not an audited definition implementation. |
| 118 | `KAM.Iso.exactCF` (def) | PASS as explicitly omitted upstream body; not an audited definition implementation. |
| 119 | `KAM.Iso.tildeF` (def) | PASS as explicitly omitted upstream body; not an audited definition implementation. |
| 123 | `KAM.Iso.exactDelta_pos` (theorem) | PASS as proposed upstream interface; no proof imported from this stub. |
| 126 | `KAM.Iso.exactMu2_pos` (theorem) | PASS as proposed upstream interface; no proof imported from this stub. |
| 130 | `KAM.Iso.period_one` (theorem) | PASS as a projection/repackaging; compile adapter to actual larger upstream result, F06. |
| 147 | `KAM.Iso.nondeg_exact` (theorem) | PASS as proposed upstream interface; no proof imported from this stub. |
| 154 | `KAM.Iso.transfer` (theorem) | PASS as a projection/repackaging; compile adapter to actual larger upstream result, F06. |
| 166 | `KAM.ODE.restrictedDomain` (def) | PASS as proposed upstream interface; no proof imported from this stub. |
| 169 | `KAM.ODE.restrictedField` (def) | PASS as proposed upstream interface; no proof imported from this stub. |
| 175 | `KAM.ODE.restricted_reduction` (theorem) | PASS as proposed upstream interface; no proof imported from this stub. |

Three unnamed examples also PASS as type-level checks: real inclusion rfl, and both provider/frozen proof equalities. They are not mathematical producer proofs.

## Quarantine, expanded premises and consumers

**Quarantine verdict: viable as an explicitly conditional architecture, not closure.** `BaseData`, `HeadData` and `PerturbData` pack genuine frozen source premises. `EnergyPatch` abstracts the named Part 3 chart/ray construction, rather than asserting confinement. `TorusOutput` projects T1–T4; omitting the Diophantine/nonzero-frequency and unused T5/T6 information makes its consumers stronger, and does not make a needed conclusion false. `ToriExistence` is a projection of the named upstream result, not an alternative proof of the full T1–T7 proposition. Part 3 must still establish its complete own source contract.

The source explicitly says in `bpI:p5:sec-graph`: “Fix ... the output of Proposition ... p3:tori”; `sec-sep` says “Keep the notation” of that section. Consequently TorusOutput and graph notation are legitimate standing inputs for those downstream lemmas. GraphData carries the graph lemma's established notation/properties and the Part 3 base points. It is not pure type formation: its `continuous`, `near`, `energy`, `base_mem`, `base_slope` fields are mathematical facts with named provenance. Calling every such structure “typing data” is inaccurate, but using it as that exact standing output is legitimate.

`ChartCover.dbound` is `bpI:p3:hypothesis-d`, not a free assumption about all f. `confinement_main_of_tori` has a distinct conditional name, so it may consume ChartCover/ToriExistence while quarantined. The source-facing `confinement_main` has only HeadData and must obtain both bundles by applying `part3_tori` in its proof, in the provider module. The planned producer has precisely the same source HeadData plus the source nonempty-B' branch. Its witness order fixes eta1,F1,patches,eps1,CK before f,eps,I0,E. Nothing depends on the later perturbation or initial condition.

`r3bp_core` has no existential global solution in its premises: inside its conclusion it universally quantifies an arbitrary zt through the constructed Delaunay preimage, then gives a conditional physical transport. This is exactly the named output of `bpI:p8:pf-head`, with the frozen `IsHamiltonianSolutionOn` predicate, B and univ. Its distinct helper name matters. The R3BP provider obtains that actual zt from the frozen I-HEAD theorem, supplies `hzt0,hzt`, and consumes the transport output. It does not assume a solution in the final theorem. All constants precede mu,z0,zt. I-HEAD's numerical confinement and its uniqueness output are deliberately discarded, as the blueprint explicitly permits; physical uniqueness is established separately.

F03 is the exception to this clean accounting: an earlier **Part 5 theorem** is moved to a premise of a signature directly assigned the source separation/confinement node. It is not a Part 3 output field, source assumption, or owner ruling. Distinct conditional helpers plus the wrappers above restore the source-facing surface.

### Five-bin accounting of the provider binders

SOURCE = literal frozen source premise; STANDING = exact named source output in a conditional consumer; TYPING = carrier/object/time binder. RULED and EXCESS counts for the final provider types are both zero. Each grouped carrier row spells out its constituent binders; logical inputs have individual rows. Root counts, including quantified time-membership guards: I-HEAD has 24 SOURCE inputs (12 outer, 6 perturbation/smallness, 1 initial membership, 5 local-uniqueness guards) and 13 TYPING binders; I-R3BP has 14 SOURCE inputs (6 outer, 3 per-orbit guards, 5 local-uniqueness guards) and 10 TYPING binders. STANDING/RULED/EXCESS counts at both roots are zero. Existential output facts are conclusions, not new premises.

| Provider binder | Bin | Actual consumption |
|---|---|---|
| I-HEAD `B` | TYPING | HeadData and all action domains. |
| `hB` | SOURCE | HeadData.isOpen; maximal existence and periodic continuation. |
| `hBb` | SOURCE | HeadData.bounded; Part 3 compact estimates/cover construction. |
| `hBne` | SOURCE | HeadData.nonempty; upstream data/complex neighborhood estimates. |
| `s₀`, `r₀` | TYPING | Frozen strip and action neighborhoods, unchanged. |
| `hs` | SOURCE | BaseData.hs; real strip inclusion and positive rhoInf. |
| `hr` | SOURCE | BaseData.hr; B inside realAct and positive action margins. |
| `h` | TYPING | Actual complex Hamiltonian. |
| `hh` | SOURCE | BaseData.holo; smooth real restriction and upstream chart construction. |
| `hhreal` | SOURCE | BaseData.real; true real/complex value and field identities. |
| `hiso` | SOURCE | HeadData.iso; Part 3 energy chart and uniform torus construction. |
| `B'` | TYPING | Initial action domain and cover of its closure. |
| `hB'` | SOURCE | HeadData.isOpen'; forwarded unchanged. No mathematical use required downstream: the stronger closure-only statement suffices. Do not pretend a projection is used where it is not. |
| `hcompact` | SOURCE | HeadData.compact; finite patch cover. |
| `hinside` | SOURCE | HeadData.inside; compact margin and initial membership in B. |
| `η` | TYPING | Confinement tolerance fixed before f. |
| `hη` | SOURCE | HeadData.hη; positive eta1≤eta and final strict displacement. |
| `f`, `ε` | TYPING | Actual frozen complex function and nonnegative size. |
| `hf` (f holomorphic) | SOURCE | PerturbData.holo; real regularity, fields, Part 3 estimates. |
| `hper` | SOURCE | PerturbData.periodic; vector field periodicity and continuation. |
| `hreal` | SOURCE | PerturbData.real; real restriction identities. |
| `h0` (0≤eps) | SOURCE | PerturbData.nonneg; Smallness, zero-size branch included. |
| `hε` (eps<eps0) | SOURCE | Passed separately to H; uniform torus threshold and Smallness. |
| `hbd` | SOURCE | PerturbData.bound; energy error and Cauchy estimates. |
| `z₀` | TYPING | Arbitrary lifted initial point. |
| `hz₀` | SOURCE | Passed to H; its action belongs to B'⊆closure B'. |
| `a`, `b`, `y` | TYPING | Arbitrary local solution comparator. |
| `a<0` | SOURCE | Interval includes time zero. |
| `0<b` | SOURCE | Same. |
| `y 0=z₀` | SOURCE | Initial equality for uniqueness. |
| local frozen solution predicate | SOURCE | realHam_solution_iff then ODE uniqueness; no confinement premise on y. |
| local `t∈Ioo a b` | SOURCE | Restriction of EqOn conclusion. |
| I-R3BP `aMinus,aPlus,eMinus,ePlus` | TYPING | Exact four real parameters, implicitness/order unchanged. |
| `ha` | SOURCE | R3bpParams.ha; positive L and safe lower radius. |
| `haa` | SOURCE | R3bpParams.haa; nonempty original action interval. |
| `he` | SOURCE | R3bpParams.he; positive eccentricity margin. |
| `hee` | SOURCE | R3bpParams.hee; nonempty eccentricity interval. |
| `heSmall` | SOURCE | R3bpParams.heSmall; enlarged ePlus<3/8 and enlargement arithmetic. |
| `hinner` | SOURCE | R3bpParams.hinner; safeT>0, rhoMax<1, analytic domain and secondary distance. |
| `μ`, `z₀` | TYPING | Selected only after mu0,d,R. |
| `0≤μ` | SOURCE | PerturbData.nonneg, abs(mu)=mu. |
| `μ<μ₀` | SOURCE | Perturbation smallness, analytic threshold and shell exclusion. |
| `hz₀` | SOURCE | Actual NearCircular predicate; Delaunay preimage. |
| `a,b,y` | TYPING | Arbitrary physical comparator, no chart assumption. |
| `a<0` | SOURCE | Physical uniqueness interval. |
| `0<b` | SOURCE | Same. |
| `y 0=z₀` | SOURCE | Composed with hz0.symm to compare y and z. |
| physical local solution predicate | SOURCE | restricted_unique via restricted_reduction; actual collision-free field. |

For both providers the final `t` is TYPING and `t∈Ioo a b` is a SOURCE guard. These counts are bookkeeping, not a claim that every retained source condition is logically necessary. Every frozen binder is forwarded; hB' is redundant for the proposed proof, and B'/closure hypotheses are not dropped from the final type.

### Expanded structure-field provenance

The following table names every field rather than accepting a Prop bundle as a black box. “STANDING” is relative to a consumer whose source explicitly fixes the named output. At the root, each result bundle must instead be **produced in the proof**. It is never an additional SOURCE premise of a provider.

| Field | Bin at standing-output consumer | Exact source / producer |
|---|---|---|
| `BaseData.hs` | SOURCE | `p3:setting / frozen I-HEAD` |
| `BaseData.hr` | SOURCE | `p3:setting / frozen I-HEAD` |
| `BaseData.holo` | SOURCE | `p3:setting / frozen I-HEAD` |
| `BaseData.real` | SOURCE | `p3:setting / frozen I-HEAD` |
| `HeadData.isOpen` | SOURCE | `p3:setting / frozen I-HEAD; includes BaseData inheritance` |
| `HeadData.bounded` | SOURCE | `p3:setting / frozen I-HEAD; includes BaseData inheritance` |
| `HeadData.nonempty` | SOURCE | `p3:setting / frozen I-HEAD; includes BaseData inheritance` |
| `HeadData.iso` | SOURCE | `p3:setting / frozen I-HEAD; includes BaseData inheritance` |
| `HeadData.isOpen'` | SOURCE | `p3:setting / frozen I-HEAD; includes BaseData inheritance` |
| `HeadData.compact` | SOURCE | `p3:setting / frozen I-HEAD; includes BaseData inheritance` |
| `HeadData.inside` | SOURCE | `p3:setting / frozen I-HEAD; includes BaseData inheritance` |
| `HeadData.hη` | SOURCE | `p3:setting / frozen I-HEAD; includes BaseData inheritance` |
| `PerturbData.holo` | SOURCE | `p3:setting / frozen perturbation binders` |
| `PerturbData.periodic` | SOURCE | `p3:setting / frozen perturbation binders` |
| `PerturbData.real` | SOURCE | `p3:setting / frozen perturbation binders` |
| `PerturbData.nonneg` | SOURCE | `p3:setting / frozen perturbation binders` |
| `PerturbData.bound` | SOURCE | `p3:setting / frozen perturbation binders` |
| `EnergyPatch.c` | TYPING (named chart data) | `p3:chart, P1–P3, patch-rays` |
| `EnergyPatch.W` | TYPING (named chart data) | `p3:chart, P1–P3, patch-rays` |
| `EnergyPatch.m` | TYPING (named chart data) | `p3:chart, P1–P3, patch-rays` |
| `EnergyPatch.Ψ` | TYPING (named chart data) | `p3:chart, P1–P3, patch-rays` |
| `EnergyPatch.δE` | TYPING (named chart data) | `p3:chart, P1–P3, patch-rays` |
| `EnergyPatch.δm` | TYPING (named chart data) | `p3:chart, P1–P3, patch-rays` |
| `EnergyPatch.ρc` | TYPING (named chart data) | `p3:chart, P1–P3, patch-rays` |
| `EnergyPatch.mPlus` | TYPING (named chart data) | `p3:chart, P1–P3, patch-rays` |
| `EnergyPatch.mMinus` | TYPING (named chart data) | `p3:chart, P1–P3, patch-rays` |
| `EnergyPatch.δE_pos` | STANDING | `p3:chart, P1–P3, patch-rays` |
| `EnergyPatch.δm_pos` | STANDING | `p3:chart, P1–P3, patch-rays` |
| `EnergyPatch.ρc_pos` | STANDING | `p3:chart, P1–P3, patch-rays` |
| `EnergyPatch.isOpen_W` | STANDING | `p3:chart, P1–P3, patch-rays` |
| `EnergyPatch.W_subset_B` | STANDING | `p3:chart, P1–P3, patch-rays` |
| `EnergyPatch.W_subset_ball` | STANDING | `p3:chart, P1–P3, patch-rays` |
| `EnergyPatch.hR_contDiffOn` | STANDING | `p3:chart, P1–P3, patch-rays` |
| `EnergyPatch.m_contDiffOn` | STANDING | `p3:chart, P1–P3, patch-rays` |
| `EnergyPatch.isOpen_V` | STANDING | `p3:chart, P1–P3, patch-rays` |
| `EnergyPatch.Ψ_contDiffOn` | STANDING | `p3:chart, P1–P3, patch-rays` |
| `EnergyPatch.Ψ_mem` | STANDING | `p3:chart, P1–P3, patch-rays` |
| `EnergyPatch.Ψ_left` | STANDING | `p3:chart, P1–P3, patch-rays` |
| `EnergyPatch.Ψ_right` | STANDING | `p3:chart, P1–P3, patch-rays` |
| `EnergyPatch.Q_subset` | STANDING | `p3:chart, P1–P3, patch-rays` |
| `EnergyPatch.ρc_le` | STANDING | `p3:chart, P1–P3, patch-rays` |
| `EnergyPatch.ball_subset` | STANDING | `p3:chart, P1–P3, patch-rays` |
| `EnergyPatch.ball_h` | STANDING | `p3:chart, P1–P3, patch-rays` |
| `EnergyPatch.ball_m` | STANDING | `p3:chart, P1–P3, patch-rays` |
| `EnergyPatch.mPlus_mem` | STANDING | `p3:chart, P1–P3, patch-rays` |
| `EnergyPatch.mMinus_mem` | STANDING | `p3:chart, P1–P3, patch-rays` |
| `PatchConst.r_pos` | STANDING | `p5:patch-const; produced by patchConst_exists` |
| `PatchConst.r_le_one` | STANDING | `p5:patch-const; produced by patchConst_exists` |
| `PatchConst.thick_subset` | STANDING | `p5:patch-const; produced by patchConst_exists` |
| `PatchConst.Lm_ge` | STANDING | `p5:patch-const; produced by patchConst_exists` |
| `PatchConst.Lm_bound` | STANDING | `p5:patch-const; produced by patchConst_exists` |
| `PatchConst.LΦ_ge` | STANDING | `p5:patch-const; produced by patchConst_exists` |
| `PatchConst.LΦ_bound` | STANDING | `p5:patch-const; produced by patchConst_exists` |
| `PatchConst.κ_pos` | STANDING | `p5:patch-const; produced by patchConst_exists` |
| `PatchConst.κ_le_quarter` | STANDING | `p5:patch-const; produced by patchConst_exists` |
| `PatchConst.κ_le_plus` | STANDING | `p5:patch-const; produced by patchConst_exists` |
| `PatchConst.κ_le_minus` | STANDING | `p5:patch-const; produced by patchConst_exists` |
| `Smallness.nonneg` | STANDING | `p5:eps0; produced by exists_eps0` |
| `Smallness.le_one` | STANDING | `p5:eps0; produced by exists_eps0` |
| `Smallness.lt_dE` | STANDING | `p5:eps0; produced by exists_eps0` |
| `Smallness.lt_rho` | STANDING | `p5:eps0; produced by exists_eps0` |
| `Smallness.lt_r` | STANDING | `p5:eps0; produced by exists_eps0` |
| `Smallness.lt_kappa` | STANDING | `p5:eps0; produced by exists_eps0` |
| `Smallness.lt_Phi` | STANDING | `p5:eps0; produced by exists_eps0` |
| `TorusOutput.holo` | STANDING | `p3:T1–T4` |
| `TorusOutput.primary` | STANDING | `p3:T1–T4` |
| `TorusOutput.real` | STANDING | `p3:T1–T4` |
| `TorusOutput.invariant` | STANDING | `p3:T1–T4` |
| `TorusOutput.energy` | STANDING | `p3:T1–T4` |
| `TorusOutput.close` | STANDING | `p3:T1–T4` |
| `TorusOutput.du` | STANDING | `p3:T1–T4` |
| `TorusOutput.dv` | STANDING | `p3:T1–T4` |
| `GraphData.continuous` | STANDING | `p5:graph and sec-sep notation; p3:T7 base point` |
| `GraphData.near` | STANDING | `p5:graph and sec-sep notation; p3:T7 base point` |
| `GraphData.energy` | STANDING | `p5:graph and sec-sep notation; p3:T7 base point` |
| `GraphData.base_mem` | STANDING | `p5:graph and sec-sep notation; p3:T7 base point` |
| `GraphData.base_slope` | STANDING | `p5:graph and sec-sep notation; p3:T7 base point` |
| `SepSetting.base` | STANDING | `p5:sec-sep; recursively expand its BaseData/PerturbData/PatchConst/Smallness/GraphData fields` |
| `SepSetting.perturb` | STANDING | `p5:sec-sep; recursively expand its BaseData/PerturbData/PatchConst/Smallness/GraphData fields` |
| `SepSetting.dbound` | STANDING | `p5:sec-sep; recursively expand its BaseData/PerturbData/PatchConst/Smallness/GraphData fields` |
| `SepSetting.pconst` | STANDING | `p5:sec-sep; recursively expand its BaseData/PerturbData/PatchConst/Smallness/GraphData fields` |
| `SepSetting.small` | STANDING | `p5:sec-sep; recursively expand its BaseData/PerturbData/PatchConst/Smallness/GraphData fields` |
| `SepSetting.plus` | STANDING | `p5:sec-sep; recursively expand its BaseData/PerturbData/PatchConst/Smallness/GraphData fields` |
| `SepSetting.minus` | STANDING | `p5:sec-sep; recursively expand its BaseData/PerturbData/PatchConst/Smallness/GraphData fields` |
| `ChartCover.finite` | STANDING | `p3:cover, patch-rays, hypothesis-d; producer part3_tori` |
| `ChartCover.cover` | STANDING | `p3:cover, patch-rays, hypothesis-d; producer part3_tori` |
| `ChartCover.η₁_pos` | STANDING | `p3:cover, patch-rays, hypothesis-d; producer part3_tori` |
| `ChartCover.η₁_le` | STANDING | `p3:cover, patch-rays, hypothesis-d; producer part3_tori` |
| `ChartCover.F₁_pos` | STANDING | `p3:cover, patch-rays, hypothesis-d; producer part3_tori` |
| `ChartCover.dbound` | STANDING | `p3:cover, patch-rays, hypothesis-d; producer part3_tori` |
| `ToriExistence.ε₁_pos` | STANDING | `p3:uniform/tori projection; producer part3_tori` |
| `ToriExistence.ε₁_le_one` | STANDING | `p3:uniform/tori projection; producer part3_tori` |
| `ToriExistence.CK_pos` | STANDING | `p3:uniform/tori projection; producer part3_tori` |
| `ToriExistence.tori` | STANDING | `p3:uniform/tori projection; producer part3_tori` |
| `R3bpParams.ha` | SOURCE | `six frozen I-R3BP binders` |
| `R3bpParams.haa` | SOURCE | `six frozen I-R3BP binders` |
| `R3bpParams.he` | SOURCE | `six frozen I-R3BP binders` |
| `R3bpParams.hee` | SOURCE | `six frozen I-R3BP binders` |
| `R3bpParams.heSmall` | SOURCE | `six frozen I-R3BP binders` |
| `R3bpParams.hinner` | SOURCE | `six frozen I-R3BP binders` |
| `RegionParams.ha` | STANDING | `p8:A parameters (broader topology premise)` |
| `RegionParams.haa` | STANDING | `p8:A parameters (broader topology premise)` |
| `RegionParams.he` | STANDING | `p8:A parameters (broader topology premise)` |
| `RegionParams.hee` | STANDING | `p8:A parameters (broader topology premise)` |
| `RegionParams.he1` | STANDING | `p8:A parameters (broader topology premise)` |

Inheritance expands HeadData with all four BaseData fields; nested SepSetting fields expand recursively through the rows above. ChartCover/ToriExistence are not “mere typing”: they contain mathematical output. No field assumes graph separation, global extension, restricted existence or any final frozen conclusion. The extra `hinv` binder of F03 is EXCESS when the current signatures are presented as the exact source nodes (one EXCESS per such theorem); as a clearly distinguished conditional helper it is an allowed dependency input, not source-node closure.

`hmem` in torus_flow/torus_invariant is precisely the membership component of Part 3 T6 (or the already proved graph_mem result). Likewise hD in energy_coordinate is the named hypothesis-d output, not an invented estimate. The maximal-solution premise of confinement_prop is explicitly present in its blueprint proposition. These refutation attempts do **not** produce additional findings.

## B1, B2, definitions and physical normalization

**B1: partially correct design, failed min-distance generalization.** On `Fin 2→R`, ambient norm is max norm, whereas frozen `radius = sqrt(sum_i q_i^2)` is Euclidean. The design correctly avoids replacing radius by the ambient norm. Quantitative collision exclusion needs only subadditivity and evenness to prove its inequality; positivity/definiteness is not needed there. For the compact version those assumptions themselves imply nonnegativity: `ell(0)≤2ell(0)` gives ell(0)≥0, and `ell(0)≤ell(u)+ell(-u)=2ell(u)` gives ell(u)≥0. Combined with definiteness and disjointness this gives positive minima. Thus the counterexample to min_distance does **not** refute collision_exclusion_compact. The latter also treats empty S and m=0 vacuously and correctly. `min_distance` lacks both the triangle/evenness assumptions that would imply positivity and an explicit positivity condition: F02 is real. A corrected abstract length signature applies to the actual frozen radius and to track P's planeLength without changing either norm instance.

**B2: safe conservative threshold, not a blueprint error.** The raw blueprint `bpI:p8:constants`, item (2), explicitly says `C_F=6/(eps_sh sqrt(c_*))>0`, and its totality paragraph explicitly cites that positivity. It is not missing from the source. The design's change to `epsH/(|CF|+1)` is a documented smaller-threshold departure, suitable for the frozen theorem's existential constants. The denominator is always positive, so CF=0 is harmless. From `0≤mu` and `mu<epsH/(|CF|+1)`:

`mu*CF ≤ mu*|CF| ≤ mu*(|CF|+1) < epsH`.

This proof handles CF=0; the draft proof-plan chain using a strict multiplication by |CF| must not be used in that case. Nonnegativity of `mu*CF` for PerturbData follows at the current mu from the upstream norm bound at a point in the nonempty domain (at mu=0 the product is zero); no artificial CF>0 premise is needed. Positivity of mu0, d, R uses positive exactMu2, safe radii and epsH. The choice order is parameters → enlarged domain → analytic constants → epsH from I-HEAD → mu0,d,R → mu,z0. It matches the frozen quantifiers.

The action region formulas, safe enlargement, period-one map, realPart/realAct/totalH, graph/level/separation sets and constants have literal total formulas. Square roots/inverses are used for identities only on the guarded cone/safe domains. EnergyPatch's Ψ is used with its inverse identities only on the chart image containing Q; arbitrary off-image values do not enter a proof. `exclusionMu` explicitly treats c=0 and never relies on a totalized division by zero. No choice/fallback is introduced in an in-scope definition; the exactDelta choice is an **upstream** body and was not re-audited here. No global norm instance is introduced.

In-scope literal-definition audit: BODY_MATCH OK (with the explicitly documented conservative threshold departure); PUBLIC_CARRIER OK; WELL_DEFINEDNESS and CHARACTERIZATION N/A_LITERAL; CHOICE_INDEPENDENCE N/A. Structures are separately audited output/premise bundles, not physical definitions. F02 is a theorem about an insufficiently specified length, not a defective body of frozen radius.

The safe-region arithmetic checks: t≤1/8, ePlus<1/4 imply `t(2+ePlus)+t²≤3t`; the other branch of t gives `3t aPlus≤(1-rho*)/2`. Hence enlarged rhoMax≤(1+rho*)/2<1. Safe ePlus<3/8; rmin>0. `R=sqrt(2/rmin)>1>rhoMax`. Shell exclusion uses absolute mu and the actual barycentric primaries; zero mu is included. Delaunay momentum bounds use the Kepler energy identity, with positive L and positive radius; no ambient max-norm bound is substituted for radius.

## Frozen-object, consumer and package verdicts

**Frozen-object verdict: PASS at type/interface level.** All physical solution claims use `KAM.Iso.IsHamiltonianSolutionOn`, `KAM.Iso.IsRestrictedSolutionOn`, actual `realHamiltonian`, frozen radius/primaries/CollisionFree, and frozen NearCircular. No parallel solution predicate is assumed equal. The local restrictedField is the same total formula as frozen restrictedVectorField on its subtype; the N3-8 restricted_reduction signature matches its design. It is an upstream theorem to prove, not an extra equality assumption. Uniqueness of an arbitrary physical competitor does not assume it stays in a Delaunay chart or safe action region.

Both providers' carrier types, implicit parameters, strict/non-strict signs, binder order, existential constant order and final uniqueness clauses agree with the frozen anchors. All I-HEAD binders are packed/forwarded; the R3BP provider consumes all six parameter inequalities through R3bpParams, produces HeadData, applies actual I-HEAD, supplies PerturbData and its strict threshold, obtains a real global solution and supplies it to r3bp_core. F01/F02 show why type-equal provider glue against sorry stubs is insufficient to approve the package.

**Consumer verdict: FAIL pending F01–F03 and upstream discharge.** After those repairs the signatures have the right carriers for the Part 5 main assembly and Part 8 transport. Cross-track search found the explicit citation in `blueprint-P/parts/p6-newtonian-models.tex:237`: collision-exclusion/min-distance are described there but **not needed** by its current Parts 12–13 proof (explicit tube constants replace them). They must nevertheless be correct shared results. No active N consumer of these I p5/p8 labels was found. I Part 8 is the active I-HEAD consumer; it needs exactly global solution plus action-domain membership, not the discarded numerical confinement/uniqueness output. Part 5 uses N's existing barrier/maximal/continuation/Hamiltonian bridges at their actual carrier and interval types.

**Package verdict: PASS WITH FIXES as dependency planning, not approval to prove false signatures.** The proposed DAG is acyclic: Setting defines the output vocabulary; Part 3 may construct it; only the I-HEAD provider imports Part 3's final sealed-dependent result. R3BP foundational modules import only Setting from Part 5; its final provider may import I-HEAD **after sealing**. No production module may import an unsealed I-HEAD, its provider, or the frozen I-R3BP anchor; scratch imports used only for type checks must be removed from real modules. Current signatures are a draft-only exception, not production hygiene. Dependencies marked “WANTED” and N3-8 remain gates.

Every planned module is estimated below 1500 lines (largest 800, with a stated split). The count of proof packages is consistent: ten P5 packages plus six P8 packages, plus two provider packages. The stated 6-wave/4-wave schedules respect the displayed dependencies. New exact-node wrappers for F03 need explicit package ownership, and the separation/main proofs should be split at the documented helper boundaries if default-heartbeat elaboration fails. No resource-budget increase is authorized.

Mathlib checks covered compact extrema/thickenings, continuous derivative, mean-value bounds, contraction fixed point, inverse Lipschitz estimate, frontier/closure, closed bounded compactness, scalar homeomorphism, bounded images, conditional extrema, square-root guards and finite sums. ODE checks covered gen_maximal/gen_uniqueness/gen_barrier/gen_continuation_periodic/ham_reduction; strip checks covered hamiltonian_real/real_restriction/realRestriction_fderiv. The dimensional mismatch F05 survived checking the actual elaborated type. The existing general `KAM.analyticOnNhd_of_differentiableOn` in `KAM/Strip/AnalyticTaylor.lean` is an available repair route.

## Closeout

Do not dispatch the affected theorem targets until F01/F02 are corrected and F03 has exact source-facing wrappers. Re-elaborate the revised signatures and both provider assemblies; re-audit changed signatures and any renamed node mappings. Preserve the explicit upstream gates and quarantine boundaries. This audit does not certify any proof body, axiom closure, real-module import graph or eventual line count. No frozen-statement defect was found, and no frozen file was changed.

READY dsgn-i58
