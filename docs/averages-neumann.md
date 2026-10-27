# Periodic averages and Neumann estimates

Package **I-STRIP-4** proves `bp:p1:averages` and `bp:p1:neumann` from
`blueprint/parts/p1-analysis.tex`, as well as the real-torus variant
`bp:p1:averages-real`. These are infrastructure results for the KAM iteration;
the frozen theorem anchors are still unproved.

## Averages

`KAM/Strip/Averages.lean` defines `KAM.torusAverage` as the Bochner integral on
the closed unit cube in `Fin n → ℝ`. Its volume is one, including when `n = 0`.
This is exactly the domain and normalization in the frozen `torsionAverage`:
each entry of that matrix is definitionally a `torusAverage` of the corresponding
torsion entry.

The main results, all in namespace `KAM`, are:

| Result | Meaning |
|---|---|
| `torusAverage_coordinate_eq_zero` | A continuously differentiable real-domain function periodic in coordinate `i` has a mean-zero derivative in that coordinate. |
| `torusAverage_direction_eq_zero` | If all coordinates are periodic, every constant real directional derivative has zero average. |
| `torusAverage_fderiv_eq_zero` | The same result using `ContDiff ℝ 1` and `fderiv ℝ`. |
| `torusAverage_complex_coordinate_eq_zero` | A holomorphic function on the frozen complex strip has a mean-zero coordinate derivative when periodic in that coordinate. |
| `torusAverage_complex_direction_eq_zero` | The corresponding result for every constant complex direction. |
| `norm_torusAverage_le_of_strip_bound` | A bound `‖f z‖ ≤ A` on the strip bounds the norm of its average by `A`. |

The real-domain results take a derivative and its continuity, exactly as in the
real-torus source statement. The holomorphic results assume only
`DifferentiableOn ℂ f (complexStrip n ρ)`, positive width, and period-one translation
identities. Derivative continuity follows from `KAM.Strip.Regularity` and is not an
extra premise. Boundedness is unnecessary for the zero-average identities.

The proof separates one coordinate using a measure-preserving finite-product
equivalence. Fubini reduces its derivative integral to one dimension. The fundamental
theorem of calculus gives the difference of the endpoint values; periodicity makes
it zero. Integration commutes with evaluation of continuous linear maps, so a basis
decomposition gives the statement in every constant direction. Restricting the
complex derivative to real scalars connects the holomorphic and real-domain results.

The targets can be complete real normed spaces; the complex statements additionally
use a compatible complex normed-space structure and second-countable topology. These
conditions hold for the scalar, finite vector, and finite matrix targets in the project.

## Neumann estimates

`KAM/Matrix/Neumann.lean` uses `Matrix.Norms.Operator`: the maximum row sum, not the
elementwise matrix norm. `matrix_opNorm_le_iff_rows` converts the explicit row-sum
bounds in the frozen statements to this norm.

For an invertible matrix `A`, the assumption `‖A⁻¹‖ * ‖Δ‖ ≤ 1 / 2` gives:

```
IsUnit (A + Δ)
‖(A + Δ)⁻¹‖       ≤ 2 * ‖A⁻¹‖
‖(A + Δ)⁻¹ - A⁻¹‖ ≤ 2 * ‖A⁻¹‖ ^ 2 * ‖Δ‖.
```

The exported matrix lemmas are `matrix_isUnit_add_of_inv_norm_mul_le_half`,
`matrix_norm_inv_add_le`, and `matrix_norm_inv_add_sub_inv_le`.
`matrix_neumann_uniform` applies them to matrix-valued functions on any set:
pointwise inverse and perturbation bounds `B` and `ε`, with `B * ε ≤ 1 / 2`, give
uniform bounds `2 * B` and `2 * B ^ 2 * ε`. The set may be a frozen complex strip.
Matrix invertibility also converts from a nonzero determinant through Mathlib's
`Matrix.isUnit_iff_isUnit_det`.

The proof first uses a convergent geometric series to show that `1 + A⁻¹Δ` is a unit,
and hence that `A + Δ` is a unit. The resolvent identity then bounds its inverse by
solving `‖(A + Δ)⁻¹‖ ≤ ‖A⁻¹‖ + (1/2) * ‖(A + Δ)⁻¹‖`. Applying that bound to the
same identity gives the inverse-difference estimate. The underlying lemmas work in
any complete normed ring without assuming that the identity has norm one; therefore
the matrix specialization also covers zero-dimensional matrices.

## Validation and scope

Build each module separately with `nice -n 5 lake build KAM.Strip.Averages` and
`nice -n 5 lake build KAM.Matrix.Neumann`. Both build at default resource limits.
Run `scripts/lint_sources.sh` for module, source, and frozen ABI guards.
The audit checks all 20 exported theorems with `#print axioms`, and checks the
frozen torsion-average normalization, matrix-valued holomorphic functions,
determinant and row-sum inputs on a strip, and the empty-matrix case.

No frozen file, manifest entry, provider, or theorem anchor is changed. No source
erratum was found in this package. The implementation generalizes the source to
normed targets and complete normed rings, and drops boundedness where the proof does
not need it. There is no change to the source constants or conclusion, and no
conclusion-shaped assumption. Translation invariance of averages, Fourier decay,
and the function-space cohomological equation are separate work.
