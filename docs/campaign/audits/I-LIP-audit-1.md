# I-LIP independent audit 1

Overall verdict: **PASS WITH NOTES**.

The five result nodes have faithful, sorry-free proofs. The Hausdorff-measure route is sound and explicitly permitted by the blueprint. There is no mathematical blocker to using the image estimate, McShane extension, or lipeomorphism results in Part 4. This verdict does **not** certify every step of the unused cube-cover route: `step:p1:li-cubes` has no corresponding proof here. See finding N1 before promoting graph coverage.

## Scope and identity

Audited on 2026-10-27 in `/root/code/KAM-w-lip`, branch `k/lip`, HEAD `16248291b0bf111f1354da3be4f02b6de8a3ac3f`. Comparison: `git diff main...HEAD`; main at inspection was `3dbc19a3c53a9e5428609b8632308c8131de745e`, merge base `d1c172a5b3c7af10ab2fbcbcc71ca9b84935468b`.

Read AGENTS.md, docs/PLAN.md, docs/DECISIONS.md, AUDIT-PACKAGE.md, I-LIP.md, PROVER-COMMON.md and I-LIP-handoff.md. Compared the actual source at `blueprint/parts/p1-analysis.tex:1111–1223` with every result and step in `docs/graph/K/DEPGRAPH.md:4251–4686`, and inspected all three new modules and their Mathlib dependencies. Applied the lean-statement-audit method. These are infrastructure declarations, not manifest-bound frozen exports; frozen sealing/provider identity tests are inapplicable.

The branch diff contains only three new Measure modules and the three generated root imports. No source or manifest repair was performed. The only persistent file written by this audit is this report. Existing untracked audit materials were left alone.

SHA-256 identities:

| File | SHA-256 |
| --- | --- |
| KAM/Measure/Lipschitz.lean | `75997ffe53cefd3813dcc40e7f1193b0d976b666f9f9af39503c6443351474a6` |
| KAM/Measure/McShane.lean | `5b213e3f958b23a71a8dba2a3027b798b05a328ceea0dc8cdcd9762b7ff5d7b3` |
| KAM/Measure/Lipeo.lean | `baf55baba08cd2f3fefa94c50e9363cb08114151a13215d8522e4bd1f1bc5a64` |
| blueprint/parts/p1-analysis.tex | `6f8eeb3339b3ec109a426e416b1cbc4c52e3bbcf5bc3a8e23c70b93dc6b2431e` |
| docs/graph/K/DEPGRAPH.md | `f2825f3a4cc15bcb19789977f644d6f7857d70eb1865adba5445e949a7377434` |

## Node inventory

All declaration names below are in namespace `KAM`. PASS applies to the stated mathematical contract, not a requirement to reproduce a particular proof script.

| Node | Lean declaration (file:line) | Verdict | Reason |
| --- | --- | --- | --- |
| bp:p1:lip-image-product | lip_image_product (Lipschitz:163) | PASS | Fin.append is an isometry and preserves product Lebesgue volume; n+n is 2n. |
| bp:p1:lip-image | lip_image (115), lip_preimage_null (125), lip_image_prod (198), lip_preimage_null_prod (208), all Lipschitz | PASS | Exact power, max norms, arbitrary sets, inverse Lipschitz premise, product conclusions. |
| step:p1:li-cubes | None | NOT CERTIFIED; BYPASSED | Neither the handoff nor code identifies a theorem with the countable closed-cube cover conclusion. Not needed by the permitted alternative route. |
| step:p1:li-image | lip_image (Lipschitz:115), by specialization | PASS WITH NOTE | Gives the outer-measure inequality on S ∩ Q, followed by monotonicity and cube volume. No separate cube-containment/infimum declaration; do not claim a literal formalization of that construction. |
| step:p1:li-sum | lip_image (Lipschitz:115) | PASS | Its final inequality is established by the alternative expressly authorized at blueprint:1151–1153. |
| step:p1:li-preimage | lip_preimage_null (Lipschitz:125) | PASS | Applies the image estimate to the inverse on N ∩ Φ(A); domain restriction A is retained. |
| step:p1:li-product | lip_image_prod (Lipschitz:198), lip_preimage_null_prod (208) | PASS | Product volume, product max norm, exponent 2*n. |
| bp:p1:mcshane | mcshane (McShane:94), mcshane_prod (106) | PASS | Same Λ, agreement on S, optional global β bound with β ≥ 0, no compactness/measurability premise. |
| step:p1:mc-component | mcshane_component (McShane:35) | PASS | Uses Mathlib's infimum extension, including its empty-domain case. |
| step:p1:mc-components | mcshane_components (McShane:48) | PASS | Coordinate extensions with the max norm give exactly Λ. |
| step:p1:mc-clamp | mcshane_clamp (McShane:71) | PASS | Explicit coordinate max/min clamp, agreement and bound proved. Extension U is the input produced by the preceding step. |
| bp:p1:lipeo-fixed | lipeo_fixed (Lipeo:36) | PASS, stronger carrier | Arbitrary type; bijectivity plus pointwise fixing implies equality of complement images. |
| bp:p1:lipeo | lipeo (Lipeo:151), lipeo_complete (122) | PASS | Bijection, both metric bounds, and complement equality; complete normed-group generalization is sound. |
| step:p1:lipeo-bounds | lipeo_bounds (Lipeo:57) | PASS | Both inequalities, injectivity and inverse bound with (1-lam)⁻¹. |
| step:p1:lipeo-onto | lipeo_onto (Lipeo:89) | PASS | Banach applied to y-G(x); no surjectivity premise. |
| step:p1:lipeo-zero | lipeo_zero (Lipeo:112) | PASS | Composes the proved bijection with lipeo_fixed. |
| Part 4 constant specialization | lipeo_half (Lipeo:133) | PASS | Exact forward constant 3/2 and inverse constant 2, including on the product carrier (compiled probe below). |

## Statement and premise audit

All dimensions are unrestricted naturals, a valid strengthening of the standing positive-dimensional setting. Finite function spaces and products use their standard max norms, not a Euclidean norm. No constants are existentially chosen with extra dependence: Λ and lam are given, and the conclusions use precisely their displayed algebraic expressions. The McShane witness is chosen after the map and Λ, and the clamped witness after β and its source bound.

Using ambient total maps constrained only on S or A faithfully represents the source maps on subsets: a map on a subtype can be extended arbitrarily off its domain into these inhabited real vector spaces; its image and all relevant hypotheses depend only on its restriction. No off-domain value is used in an estimate. Likewise, an inverse-null-set preimage is correctly `A ∩ Φ ⁻¹' N`, not the unrestricted preimage of an arbitrary ambient extension.

Here is the five-bin inventory of the source-facing root declarations, including implicit and instance binders. TYPING includes dimensions and ambient structure; SOURCE includes source objects and logical assumptions. No project-owned premise bundle occurs. Each row is one outer binder; variables quantified inside hF/hinv/hφ/hG are exactly the source pairs of points, with their displayed membership restrictions.

| Declaration | Binder | Bin | Source |
| --- | --- | --- | --- |
| lip_image_product | n | TYPING | blueprint:1116–1119 |
| lip_image | d | TYPING | 1123 |
| lip_image | S | SOURCE | 1123 |
| lip_image | F | SOURCE | 1123 |
| lip_image | Λ | SOURCE | 1123 |
| lip_image | hF | SOURCE | 1123, inequality for all x,y in S |
| lip_preimage_null | d | TYPING | 1124 |
| lip_preimage_null | A | SOURCE | 1124 |
| lip_preimage_null | Φ | SOURCE | 1124 |
| lip_preimage_null | Λ | SOURCE | 1124, inverse constant made explicit at 1156 |
| lip_preimage_null | hinj | SOURCE | 1124 |
| lip_preimage_null | hinv | SOURCE | 1124, expanded inverse condition at 1156 |
| lip_preimage_null | N | SOURCE | 1125 |
| lip_preimage_null | hN | SOURCE | 1125 |
| mcshane | X | TYPING | 1167 |
| mcshane | PseudoMetricSpace X | TYPING | 1167, stronger ambient generality |
| mcshane | S | SOURCE | 1167 |
| mcshane | d | TYPING | 1167 |
| mcshane | Λ | SOURCE | 1167, 1172 |
| mcshane | hΛ | SOURCE | 1172 explicitly assumes Λ ≥ 0 |
| mcshane | φ | SOURCE | 1167 |
| mcshane | hφ | SOURCE | 1172–1173 |
| lipeo_fixed | α | TYPING | 1195, generalized from ℝᵈ |
| lipeo_fixed | Ψ | SOURCE | 1195 |
| lipeo_fixed | hΨ | SOURCE | 1195, expands to Injective Ψ ∧ Surjective Ψ |
| lipeo_fixed | Z | SOURCE | 1195 |
| lipeo_fixed | hZ | SOURCE | 1195 |
| lipeo | d | TYPING | 1202 |
| lipeo | lam | SOURCE | 1202 |
| lipeo | hlam | SOURCE | 1202 |
| lipeo | G | SOURCE | 1202 |
| lipeo | hG | SOURCE | 1202, all x,y |

Totals for these 32 outer binders: SOURCE 24, TYPING 8, STANDING 0, RULED 0, EXCESS 0. Universals and implications for β and Z inside the conclusions are source clauses, not added theorem inputs.

The product variants duplicate the same source premises. `mcshane_component` and `mcshane_components` have only the component/extension source premises. `mcshane_clamp` explicitly receives U, its Lipschitz bound and agreement on S, and the source bound on φ; these are appropriate inputs for the named clamping step, and mcshane supplies U in its proof. `lipeo_bounds`, `lipeo_onto`, `lipeo_zero` and `lipeo_half` assume exactly the corresponding Lipschitz/smallness/zero-set premises; their normed-group and completeness instances are typing data for their stated generalizations. The half specialization supplies lam < 1 internally.

The generic `measure_image_le_of_hausdorffMeasure_eq` and preimage helper explicitly assume a measure μ, a metric/Borel carrier, and the equality μH[d]=μ. They are conditional helpers with distinct names, not substitutes for an unconditional result. The finite-dimensional exports discharge that equality using Mathlib or the proved product equality. There is no hidden assumed measure bound or inverse existence.

## Handoff audit question: Hausdorff route

**Yes:** `lip_image` states the full `bp:p1:lip-image` image conclusion, with exactly Λ^d, outer measure, and the max norm. Together with the other three exports, the complete image/preimage/product node passes.

The actual dependency chain is:

1. Mathlib `MeasureTheory/Measure/Hausdorff.lean:889–890`: `hausdorffMeasure_pi_real` is an equality of measures on finite Pi real space, with no multiplicative dimensional normalization.
2. The same file:734–736: `LipschitzOnWith.hausdorffMeasure_image_le` applies to arbitrary s and f, with d ≥ 0 and factor `(K : ℝ≥0∞)^d`; no measurable-set assumption.
3. Lipschitz:53–82 instantiates d with a natural dimension, rewrites the real power to a natural power, and converts the nonnegative real Λ to NNReal. This gives exactly `ENNReal.ofReal (Λ ^ d) * volume S`.
4. The Λ < 0 branch is proved separately, not silently excluded: the pairwise inequality forces S to be a subsingleton. For positive dimension its image has measure zero by the zero-Lipschitz estimate. Dimension zero is handled separately. No sign premise was added to lip_image.
5. The product identification (Lipschitz:138–192) transports both metric and volume. It uses an actual measurable equivalence and its measure-preserving property; measure evaluation on arbitrary image sets is justified via the equivalence, not an unjustified measurable-image assumption.
6. The inverse is `Function.invFunOn Φ A`, used only on Φ(A), with its left-inverse identity proved from InjOn. An arbitrary extension elsewhere cannot affect the null-image argument.

The graph's summation node expressly mentions this alternative at blueprint:1151–1153. Thus replacing the cube proof does not violate the requested proof-fidelity test. It does not, however, prove the separate existence-of-cube-covers proposition just by proving the final inequality.

## Definition classification

The only new global `def` is `appendMeasurableEquiv` (Lipschitz:138–140). No new abbrev or structure occurs. Its body is the composition of the inverse sum-Pi/product-Pi equivalence with index reindexing by finSumFinEquiv. `appendMeasurableEquiv_apply` proves its literal Fin.append formula on every input; `lip_image_product` proves the needed metric and measure properties. There is no piecewise fallback, junk value, or assumption packaged as a definition.

BODY_MATCH: OK. PUBLIC_CARRIER: OK. WELL_DEFINEDNESS: N/A_LITERAL. CHARACTERIZATION: N/A_LITERAL (the application equation was nevertheless checked). CHOICE_INDEPENDENCE: N/A. DEFINITION_VERDICT: PASS.

Local constructions were also inspected: the inverse outside Φ(A) is harmless and never consumed there; the empty-domain McShane zero extension is the source-prescribed case (Mathlib Lipschitz:314–315); nonempty component extensions use the source infimum formula (317 onwards); the clamped map is exactly max(-β,min(β,U_j)); the Banach contraction is y-G(x). None changes an exported source object by a fallback.

## Checks and exact outputs

Checks were serialized. No heartbeat, recursion or synthesis override was used. No clean, dependency modification, full-library rebuild, provider import, or frozen-theorem import was performed by this audit.

`sh scripts/lint_sources.sh` exited 0, output:

```text
check_lean_modules: PASS (178 Lean files, 0 comparator configurations)
FROZEN-ANCHOR GUARD OK
ABI HASHES OK (140 frozen declarations)
```

Targeted builds, each exit 0:

```text
$ nice -n 5 lake build KAM.Measure.Lipschitz
Build completed successfully (2610 jobs).
$ nice -n 5 lake build KAM.Measure.McShane
Build completed successfully (1593 jobs).
$ nice -n 5 lake build KAM.Measure.Lipeo
Build completed successfully (1737 jobs).
```

These are Lake's reported job totals, including cached dependencies, not claims that those many files were freshly rebuilt.

```text
$ git diff --check main...HEAD
[no output; exit 0]
$ git diff main...HEAD -- KAM/Frozen manifest
[no output; exit 0]
$ rg -n 'KAM\.(Provider|Frozen)|set_option|\b(sorry|admit|axiom|unsafe|opaque|EuclideanSpace)\b' KAM/Measure
[no matches; exit 1]
$ wc -l KAM/Measure/*.lean
  159 KAM/Measure/Lipeo.lean
  218 KAM/Measure/Lipschitz.lean
  136 KAM/Measure/McShane.lean
  513 total
```

All three modules have the required copyright, module command, appropriate imports, module docstring, and exposed public section. Root imports are exactly the three generated entries and the root-generation check passes. Frozen/manifest branch diff is empty; the guard and ABI checks pass against this checkout's manifest.

Provider exact-type probe: **N/A**, this is an infrastructure package with no provider or frozen theorem to seal.

A transient probe at `.lake/abi-scratch/I-LIP-audit-1.lean` applied the independently reconstructed image, preimage, McShane, fixing-set, lipeomorphism and product half-constant types and checked the definition equation. Its final invocation was:

```text
nice -n 5 lake env lean .lake/abi-scratch/I-LIP-audit-1.lean
```

Final exit 0; all seven applications elaborated without errors or warnings. The first attempt had an auditor probe syntax error from naming a binder with reserved token λ; renaming that binder to lam fixed the probe. No package source was changed. The final probe, reproduced below, was deleted after checking.

Each `#print axioms` query in this probe printed `[propext, Classical.choice, Quot.sound]`, except `KAM.lipeo_fixed`, which printed `[propext, Quot.sound]`. Thus all 25 new declarations, including auxiliary results and the definition, have permitted axiom closure; no sorryAx or project axiom occurs.

## Findings and limits

**N1 — minor, graph coverage/provenance.** Lipschitz:22–23 and the handoff say that both omitted steps' content is inside the Mathlib lemma. The displayed signature at Mathlib Hausdorff:734–736 is an image-measure bound, not a theorem asserting the closed-cube covers required by graph:4309–4334 / blueprint:1133–1140. That cover-existence node is not independently certified here. The image-of-cube *inequality* is a specialization of the proved lip_image followed by measure monotonicity and cube volume; its particular infimum/cube construction is not formalized. Proposed fix: describe these nodes as bypassed by the blueprint-authorized alternative route, identify the actual Mathlib dependencies, and leave li-cubes unproved unless a matching cube-cover declaration is supplied. Do not mark it proved solely from the package verdict. This does not block the five source-facing results.

No blocking or major mathematical findings. No suspected defect in a pinned external source was found; no source correction or mathematical deviation was introduced. The proof-route substitution and stronger carriers are explicit and permitted. This report certifies the scoped infrastructure, not frozen-anchor sealing, downstream Part 4 assembly, or root closure. The alternative-route graph bookkeeping remains an orchestrator action; no graph or handoff was edited.

## Reproducible final probe

```lean
import KAM.Measure.Lipschitz
import KAM.Measure.McShane
import KAM.Measure.Lipeo
open MeasureTheory Set Function

example {d : ℕ} {S : Set (Fin d → ℝ)} {F : (Fin d → ℝ) → (Fin d → ℝ)} {Λ : ℝ}
    (h : ∀ x ∈ S, ∀ y ∈ S, ‖F x - F y‖ ≤ Λ * ‖x - y‖) :
    volume (F '' S) ≤ ENNReal.ofReal (Λ ^ d) * volume S := KAM.lip_image h

example {d : ℕ} {A : Set (Fin d → ℝ)} {Φ : (Fin d → ℝ) → (Fin d → ℝ)}
    {Λ : ℝ} (hi : InjOn Φ A)
    (h : ∀ x ∈ A, ∀ y ∈ A, ‖x - y‖ ≤ Λ * ‖Φ x - Φ y‖)
    {N : Set (Fin d → ℝ)} (hN : volume N = 0) :
    volume (A ∩ Φ ⁻¹' N) = 0 := KAM.lip_preimage_null hi h hN

example {X : Type*} [MetricSpace X] {S : Set X} {d : ℕ} {Λ β : ℝ}
    (hΛ : 0 ≤ Λ) {φ : X → Fin d → ℝ}
    (hφ : ∀ x ∈ S, ∀ y ∈ S, ‖φ x - φ y‖ ≤ Λ * dist x y)
    (hβ : 0 ≤ β) (hb : ∀ x ∈ S, ‖φ x‖ ≤ β) :
    ∃ Φ : X → Fin d → ℝ, (∀ x y, ‖Φ x - Φ y‖ ≤ Λ * dist x y) ∧
      (∀ x ∈ S, Φ x = φ x) ∧ ∀ x, ‖Φ x‖ ≤ β :=
  (KAM.mcshane hΛ hφ).2 β hβ hb

example {α : Type*} {Ψ : α → α} (hb : Bijective Ψ) {Z : Set α}
    (hz : ∀ x ∈ Z, Ψ x = x) : Ψ '' Zᶜ = Zᶜ := KAM.lipeo_fixed hb hz

example {d : ℕ} {lam : ℝ} (hlam : lam < 1) {G : (Fin d → ℝ) → (Fin d → ℝ)}
    (h : ∀ x y, ‖G x - G y‖ ≤ lam * ‖x - y‖) :
    Bijective (fun x => x + G x) ∧
      (∀ x y, (1 - lam) * ‖x - y‖ ≤ ‖(x + G x) - (y + G y)‖ ∧
        ‖(x + G x) - (y + G y)‖ ≤ (1 + lam) * ‖x - y‖) ∧
      ∀ Z : Set (Fin d → ℝ), (∀ x ∈ Z, G x = 0) →
        (fun x => x + G x) '' Zᶜ = Zᶜ := KAM.lipeo hlam h

example {n : ℕ} {G : ((Fin n → ℝ) × (Fin n → ℝ)) → ((Fin n → ℝ) × (Fin n → ℝ))}
    (h : ∀ x y, ‖G x - G y‖ ≤ (1 / 2 : ℝ) * ‖x - y‖) :
    Bijective (fun x => x + G x) ∧
      (∀ x y, ‖(x + G x) - (y + G y)‖ ≤ (3 / 2 : ℝ) * ‖x - y‖) ∧
      (∀ x y, ‖x - y‖ ≤ 2 * ‖(x + G x) - (y + G y)‖) ∧
      ∀ Z : Set ((Fin n → ℝ) × (Fin n → ℝ)), (∀ x ∈ Z, G x = 0) →
        (fun x => x + G x) '' Zᶜ = Zᶜ := KAM.lipeo_half h

example (n : ℕ) (p : (Fin n → ℝ) × (Fin n → ℝ)) :
    KAM.appendMeasurableEquiv n p = Fin.append p.1 p.2 :=
  KAM.appendMeasurableEquiv_apply n p

#print axioms KAM.measure_image_le_of_hausdorffMeasure_eq
#print axioms KAM.measure_preimage_eq_zero_of_hausdorffMeasure_eq
#print axioms KAM.lip_image
#print axioms KAM.lip_preimage_null
#print axioms KAM.appendMeasurableEquiv
#print axioms KAM.appendMeasurableEquiv_apply
#print axioms KAM.measurePreserving_appendMeasurableEquiv
#print axioms KAM.lip_image_product
#print axioms KAM.volume_image_appendMeasurableEquiv
#print axioms KAM.hausdorffMeasure_prod_pi
#print axioms KAM.lip_image_prod
#print axioms KAM.lip_preimage_null_prod
#print axioms KAM.mcshane_component
#print axioms KAM.mcshane_components
#print axioms KAM.abs_clamp_sub_clamp_le
#print axioms KAM.mcshane_clamp
#print axioms KAM.mcshane
#print axioms KAM.mcshane_prod
#print axioms KAM.lipeo_fixed
#print axioms KAM.lipeo_bounds
#print axioms KAM.lipeo_onto
#print axioms KAM.lipeo_zero
#print axioms KAM.lipeo_complete
#print axioms KAM.lipeo_half
#print axioms KAM.lipeo
```
