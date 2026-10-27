# I-P4A prover handoff (branch k/p4a, 60b9a1d); namespace KAM.Head; files KAM/Head/

| Graph node | Lean declaration | File |
|---|---|---|
| bp:p4:h-bounded, step:p4:hbdd-compact, step:p4:hbdd-continuity | h_bounded, isCompact_hbddCompact, bddAbove_norm_image_of_isCompact (+ hBound, norm_le_hBound, isLUB_hBound) | HBounded.lean |
| bp:p4:matrix-norms, step:p4:mn-rowsum | matrix_norms_cor bundles (i)-(v); parts norm_frameL0, norm_frameL0_transpose, norm_frameN0, norm_frameN0_transpose, dotℂ_omegaZero, omegaZeroMatrix_transpose_mul_self, ofReal_symplecticForm, norm_matrixAverage_le | MatrixNorms.lean |
| bp:p4:phase-average | angleDisplacement, phaseAverage, IsNormalized, phaseShift + continuous_angleDisplacement_ofReal, angleDisplacement_ofReal_im, ofReal_phaseAverage_eq_integral (+_vec) | PhaseAverage.lean |
| bp:p4:cover-mono, step:p4:cm-proof | kamCover_mono | CoverMono.lean |
| bp:p4:dyadic-approx, dy-exhaust, dy-open, dy-layer | dyadic_approx; exists_dyadicUnion_diff_le, volume_diff_dyadicInterior_le, volume_layer_dyadicInterior_le | DyadicApprox.lean, DyadicBoxes.lean |
| bp:p4:data | Lplus, CBplus, stripWidth, deltaStar, muParam, domainD, domainD', cauchyConst, cbar, unperturbedTorus, hbold (cbar_eq = 32) | Data.lean |

AUDIT QUESTIONS:
1. `0 < n` added to dyadic_approx (false at n = 0 in Lean since infDist x ∅ = 0) and to matrix-norms (iii) norm-1 claims. Covered by Part 0's standing n ≥ 2?
2. Item (v) uses the entrywise matrixAverage (same shape as the frozen torsionAverage; torsionAverage_eq_matrixAverage is rfl) instead of a Bochner integral in the operator-norm matrix space. Faithful?
3. phaseAverage defined coordinatewise via torusAverage; h-bounded stated as BddAbove (hBound = sSup, 0 for empty B); cauchyConst defined as 1, 4, 32. Check each definition against the blueprint (no junk value relied on).
4. dyadic-approx layer bound proved via 2n slabs per cube instead of the blueprint's ℓⁿ − (ℓ−2t)₊ⁿ ≤ 2ntℓⁿ⁻¹; same constant C = 2nNℓⁿ⁻¹. Statement unchanged?
5. bp:p4:data: every constant and domain exactly as Part 4 L154 defines it?
