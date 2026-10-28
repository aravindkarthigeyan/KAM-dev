# P4-11 prover handoff (branch k/p4-11, 5f931ac; merged with main, which has P4-9 and P4-10)

| Node | Declaration | File |
|---|---|---|
| bp:p4:good-actions (claim) | KAM.Head.good_actions | KAM/Head/GoodActions.lean |
| bp:p4:map-lipschitz | KAM.Head.map_lipschitz (map_lipschitz_of_lip, realDisp_lipschitz) | same |
| bp:p4:main-measure | KAM.Head.main_measure (measure_diff_le_of_displacement, measure_count_eq) | KAM/Head/MainMeasure.lean |

Prover: signatures verbatim. G3 only through hgc.g3, passed to preimage_measure. hne : B.Nonempty kept (unused) for literalness (design F1). measure_diff_le_of_displacement uses McShane, lipeo_half, lip_image_prod.
AUDIT FOCUS (design docs/campaign/design/PART4-LEAN-DESIGN.md): (1) the three statements = blueprint nodes, constants (Cmeas etc.) and carriers; (2) steps ml-size, ml-good, ml-mixed, mm-extension, mm-tori, mm-complement, mm-bad, mm-count are realized soundly — name the declaration for each; (3) GValid use limited to g3 via preimage_measure (and lip's g1b/g2 via lip); (4) hygiene.
