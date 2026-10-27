# P4-9 prover handoff (branch k/p4-9, 9cb8a67; merged with main)

| Node | Declaration (KAM.Head.) |
|---|---|
| bp:p4:real-torus | real_torus |
| step:p4:rt-analytic | rt_analytic |
| step:p4:rt-small | rt_small_complex, rt_small, angleReal_add_int |
| step:p4:rt-immersion | rt_immersion |
| step:p4:rt-embedding | rt_embedding (Mathlib Convex.norm_image_sub_le_of_norm_fderiv_le instead of bp:p1:ext-mvt) |
| step:p4:rt-lagrangian | rt_lagrangian, dotProduct_mulVec_lagrange |
| step:p4:rt-ode | rt_ode |
| step:p4:rt-cover | rt_cover |

Prover: Appendix A statement verbatim. Helpers stated for an abstract torus, instantiated at normTorus … ω; uses normalize, lagrangian, smallness, inverse_freq, Part 1 real-restriction lemmas. GValid used only to call normalize.
AUDIT FOCUS: (1) real_torus = blueprint bp:p4:real-torus (embedding, Lagrangian, invariance/ODE, cover); (2) each rt-* step sound; (3) GValid use only through normalize; (4) hygiene.
