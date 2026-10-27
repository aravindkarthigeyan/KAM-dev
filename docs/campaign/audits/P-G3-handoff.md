# P-G3 prover handoff (branch k/g3, 49d32df)

| Graph node | Lean declaration | File |
|---|---|---|
| bp:p4:lattice-count | KAM.Measure.lattice_count (also card_l1Sphere_le) | KAM/Measure/Lattice.lean |
| step:p4:count-projection | KAM.Measure.card_l1Sphere_succ_le (with card_fibre_le_two) | Lattice |
| bp:p4:lattice-sum | KAM.Measure.lattice_sum (summable and tsum ≤ S) | Lattice |
| step:p4:latsum-shells | KAM.Measure.sum_finset_le (with sum_sphere_le) | Lattice |
| step:p4:latsum-integral | KAM.Measure.tsum_rpow_neg_le (partial sums sum_range_rpow_neg_le) | Lattice |
| bp:p4:slab | KAM.Measure.slab_measure_le | KAM/Measure/Slab.lean |
| step:p4:slab-coordinate | KAM.Measure.exists_dominant_coord | Slab |
| step:p4:slab-fubini | KAM.Measure.volume_slab_le_of_coord | Slab |
| step:p4:g3-n0 | KAM.Provider.isDiophantine_of_dim_zero | KAM/Provider/VolumeNotDiophantineLe.lean |
| step:p4:g3-cube | KAM.Provider.exists_cube_superset | Provider |
| step:p4:g3-union | KAM.Provider.not_diophantine_subset_iUnion | Provider |
| step:p4:g3-sum | KAM.Provider.volume_not_diophantine_le_of_cube | Provider |
| bp:p0:g3 (frozen KAM.volume_not_diophantine_le) | KAM.Provider.volume_not_diophantine_le | Provider |

Prover notes: lattice sets use Set.ncard over {k : Fin n → ℤ | ∑ |k i| = m}; the lattice sum is over {k // k ≠ 0} with exponent -τ-1; latsum-integral is stated for the ℕ-indexed series (m = 0 term is 0); the cube is Set.pi univ (Icc (-R) R) and KAM.Measure.cube/slab are defeq helpers; n = 0 via Subsingleton with C = 0.
