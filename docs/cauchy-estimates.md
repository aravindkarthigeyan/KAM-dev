# Cauchy estimates and holomorphic regularity

Package **I-STRIP-1** implements `bp:p1:cauchy-strip` and `bp:p1:cauchy-open` from
`blueprint/parts/p1-analysis.tex`. It is analytic infrastructure for the frozen theorems;
it does not seal a theorem anchor.

## Interface

All names below are in namespace `KAM`. Holomorphy is exactly `DifferentiableOn ℂ f U`.
The strip is the frozen `complexStrip n ρ`. Bounds are pointwise inequalities, with no
supremum or Fourier-space assumptions. Strip domains use `Fin n → ℂ` with the sup norm,
so closed balls are closed polydiscs. Open-domain higher estimates allow any finite-dimensional
complex normed source, including the frozen angle/action product `(Fin n → ℂ) × (Fin n → ℂ)`.

| Module | Main results |
|---|---|
| `KAM/Strip/Cauchy.lean` | `norm_fderiv_le_of_closedBall`, `norm_coordinate_fderiv_le_of_closedBall`, `norm_fderiv_le_of_mem_complexStrip`, `norm_coordinate_fderiv_le_of_mem_complexStrip` |
| `KAM/Strip/Regularity.lean` | `differentiableOn_fderiv_of_isOpen`, `contDiffOn_nat_of_differentiableOn`, `contDiffOn_infty_of_differentiableOn` |
| `KAM/Strip/HigherCauchy.lean` | `norm_iteratedFDeriv_two_le_of_closedBall`, `norm_iteratedFDeriv_three_le_of_closedBall`, and their `..._of_mem_complexStrip` versions |

For `δ > 0`, a bound `‖f w‖ ≤ A` on a closed polydisc contained in an open holomorphic
domain gives

```
‖Df(z)‖   ≤ A / δ
‖D²f(z)‖  ≤ 4 * A / δ²
‖D³f(z)‖  ≤ 32 * A / δ³.
```

The derivative norms are continuous linear/multilinear operator norms. The first bound
also bounds each coordinate derivative. It is stronger than the blueprint's `n A / δ`
estimate for the full derivative when `n ≥ 1`; in dimension zero the derivative is zero.
For strips, these bounds hold at every point of `complexStrip n (ρ - δ)` from a bound on
`complexStrip n ρ`. The hypotheses do not require periodicity.

First-order estimates allow any complex normed target. Higher regularity and mixed
second/third derivatives use a complete, second-countable complex normed target; these
are automatic for the project's scalar, finite vector, and finite matrix spaces.
The first-order estimate also allows any complex normed source space.
For matrix targets, import `Mathlib.Analysis.Matrix.Normed` and open the scope
`Matrix.Norms.Operator` to select the row-sum operator norm used in the blueprint.

The separate `norm_iteratedDeriv_line_le_...` lemmas bound the one-variable restriction
to every unit complex direction by `j! * A / δ^j` at all orders. These are distinguished
from the full mixed Fréchet derivatives above.

## Proof

1. Restrict to a unit complex line and apply Mathlib's one-variable Cauchy estimate.
   Taking the operator norm gives `A / δ` directly.
2. A coordinate derivative is a Cauchy circle integral with the point as a parameter.
   The first-order estimate bounds the derivative of the integrand uniformly on a
   smaller ball. Measurability of `fderiv` supplies the remaining hypothesis for
   differentiation under the integral; continuity of `fderiv` is not assumed.
3. Reassemble the coordinate derivatives using `ContinuousLinearEquiv.piRing`. Compact
   closed polydiscs supply local boundedness from continuity. This proves that `fderiv`
   is holomorphic on the original open set. Induction gives complex smoothness; a continuous
   linear coordinate equivalence transfers it to any finite-dimensional complex source.
4. Apply Cauchy again on nested half-radius polydiscs to obtain the constants `4` and `32`.
   They are explicit and nonoptimal, as permitted by the blueprint's `c(m,j)`.

## Audit and scope

The targeted build is `nice -n 5 lake build KAM.Strip.HigherCauchy`, which checks all three
modules. Run `scripts/lint_sources.sh` after building the frozen modules needed by its
ABI checker. Audit the exported results using `#print axioms`; they use only
`propext`, `Classical.choice`, and `Quot.sound`.

There are no extra differentiability assumptions, proof placeholders, resource-budget
overrides, or imports of frozen theorem anchors/providers in this package. The frozen
definition files and manifest remain unchanged. No suspected source erratum was found.
Implementation differences are the stronger first-order operator bound, explicit
nonoptimal higher-order constants, and splitting the package across three small modules.

The remaining Fourier/sup-norm bridge and cohomological equation on strips belong to
I-STRIP-2 and I-STRIP-3. The five frozen theorem anchors remain unproved.

Validation on 2026-10-27 (Lean 4.35.0, pinned Mathlib 4.35.0):

- `nice -n 5 lake build KAM.Strip.HigherCauchy`: passed, no warnings in the new modules.
- `nice -n 5 lake build` on integrated `main`: passed, 2882 jobs. The only proof-placeholder
  warnings are the five existing, manifest-authorized frozen theorem bodies.
- `scripts/lint_sources.sh`: passed; module check, frozen-anchor guard, and all 25 ABI hashes.
- `lake env lean AuditCauchy.lean`: all 23 exported results have precisely the standard
  dependencies listed above. Compatibility examples also elaborate for the frozen
  angle/action product domain and matrix targets with `Matrix.Norms.Operator`.
- Frozen source and manifest diff against the starting upstream revision: empty.

Two small tooling fixes let collaborator checkouts run the required checks: the HQ generator
falls back to recorded worker state when `tmux` is unavailable, and source lint counts Unicode
characters using Python instead of platform-dependent `awk` byte lengths. Boundary checks
accept 100 characters and reject 101 for both ASCII and Unicode, retaining the import/URL
exemptions. Neither fix changes the frozen statements or their guards.
