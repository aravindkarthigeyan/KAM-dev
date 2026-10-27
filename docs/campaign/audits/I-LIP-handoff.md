# I-LIP prover handoff (branch k/lip, 1624829); all declarations in namespace KAM

| Graph node | Lean declaration | File |
|---|---|---|
| bp:p1:lip-image-product | lip_image_product (isometry + measure-preserving for Fin.append; aux appendMeasurableEquiv, hausdorffMeasure_prod_pi) | KAM/Measure/Lipschitz.lean |
| bp:p1:lip-image (image bound); step:p1:li-sum | lip_image (Fin d → ℝ), lip_image_prod (ℝⁿ×ℝⁿ, exponent 2n) | Lipschitz |
| bp:p1:lip-image (null preimages); step:p1:li-preimage | lip_preimage_null, lip_preimage_null_prod | Lipschitz |
| step:p1:li-product | lip_image_prod, lip_preimage_null_prod | Lipschitz |
| bp:p1:mcshane | mcshane (also mcshane_prod with target ℝⁿ×ℝⁿ) | KAM/Measure/McShane.lean |
| step:p1:mc-component / mc-components / mc-clamp | mcshane_component / mcshane_components / mcshane_clamp | McShane |
| bp:p1:lipeo-fixed | lipeo_fixed (any type) | KAM/Measure/Lipeo.lean |
| bp:p1:lipeo | lipeo (Fin d → ℝ), via lipeo_complete (any complete normed group) | Lipeo |
| step:p1:lipeo-bounds / lipeo-onto / lipeo-zero | lipeo_bounds / lipeo_onto / lipeo_zero | Lipeo |
| (constants used by Part 4) | lipeo_half: λ=1/2 gives forward 3/2, inverse 2 | Lipeo |

NOT proved as separate declarations: step:p1:li-cubes and step:p1:li-image. The prover used the route the blueprint mentions as an alternative (Mathlib: hausdorffMeasure_pi_real + LipschitzOnWith.hausdorffMeasure_image_le), so their content sits inside Mathlib. Audit question: does lip_image nevertheless state exactly bp:p1:lip-image (constant Λ^d, outer measure, max norm), and is the route sound?
Statement shapes: Lipschitz hypotheses are inequalities with real Λ (no sign hypothesis) except mcshane (0 ≤ Λ, as the blueprint); image bound: volume (F '' S) ≤ ENNReal.ofReal (Λ ^ d) * volume S; lip_image_product uses Fin (n + n) for ℝ^{2n}.
