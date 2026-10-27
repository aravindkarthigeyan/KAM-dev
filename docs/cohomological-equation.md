# Verified Fourier cohomological solver

The coefficient-space part of the DIOPH node is implemented in
[`KAM/Diophantine/Cohomological.lean`](../KAM/Diophantine/Cohomological.lean).
The definitions use period-one angles, integer indices `Fin n → ℤ`, and the
weighted coefficient norm from [the Fourier convention note](fourier-conventions.md).

For a frequency vector satisfying

\[
  |k\cdot\omega|\ge \gamma/|k|_1^\tau\quad(k\ne0),
  \qquad \gamma>0,\quad\tau\ge0,
\]

define `solve ω a` by

\[
  u_0=0,\qquad u_k=\frac{a_k}{2\pi i\,k\cdot\omega}\quad(k\ne0).
\]

`existsUnique_cohomological` proves that these are the unique zero-average
coefficients solving `ω · ∂u = a - average a`. If `a` is summable at coefficient
radius `s`, then for every `δ > 0`, `u` is summable at `s - δ` and

\[
  \|u\|_{s-\delta}\le C(\gamma,\tau,\delta)\|a\|_s,
  \qquad
  C(\gamma,\tau,\delta)=\frac{1}{2\pi\gamma}
    \left(\frac{\tau}{e\delta}\right)^\tau.
\]

The exponent is an arbitrary real number, not an integer. The `τ = 0` case is
included, with the factor raised to zero equal to one. The scalar decay estimate
is proved in [`ExponentialDecay.lean`](../KAM/Fourier/ExponentialDecay.lean).
No positive lower bound on `s - δ` is needed for the coefficient statement;
analytic applications will choose positive geometric strip widths.

## Frequency dependence

[`FrequencyDependence.lean`](../KAM/Diophantine/FrequencyDependence.lean) proves
the exact identity

\[
  R_\omega a-R_\nu a
    =R_\omega\bigl((\nu-\omega)\cdot\partial(R_\nu a)\bigr),
\]

where `R_ω` denotes `solve ω`. It also proves the directional derivative bound
using the sup norm on frequency vectors. Combining the three operators with
three positive radius losses yields summability and a quantitative difference
bound. Splitting a total loss `δ` into thirds gives

\[
 \|R_\omega a-R_\nu a\|_{s-\delta}
 \le \frac{2\pi}{e(\delta/3)}C(\gamma,\tau,\delta/3)^2
    \|\nu-\omega\|_\infty\|a\|_s
\]

when both frequencies satisfy the same Diophantine condition. This is the
theorem `weightedNorm_solve_sub_solve_thirds_le`. It controls the linear solver;
the nonlinear Lipschitz dependence of KAM tori remains a separate proof.

## Algebra and reality

[`SolverAlgebra.lean`](../KAM/Diophantine/SolverAlgebra.lean) packages the solver
as a complex linear map and proves both inverse identities modulo the average.
It also proves that conjugate symmetry `a(-k) = conjugate(a(k))` is preserved
by coordinate differentiation and by the solver. This is the coefficient
condition needed for real-valued functions.

## Source relationship and remaining work

[HL19 §4.1, equations (4.1)-(4.2)](https://arxiv.org/pdf/1711.05515v1#page=20)
uses the operator `L_ω = -ω · ∂`, so its inverse has the opposite sign. Our
positive-sign convention was already specified in `docs/PLAN.md`; the norm
estimate is unchanged by the sign. HL19's Lemma 4.1 is a result in analytic
sup norms. The theorems here prove the corresponding weighted coefficient
estimates directly; they do not yet establish that analytic-function theorem.

Remaining work includes the Fourier-to-function bridge, the full weighted
Fourier algebra, nonlinear Newton corrections, and the frozen theorem interfaces.
No frozen statement is sealed by these infrastructure results, and no source
erratum is asserted.

## Verification

The five new modules contain 36 proved lemmas/theorems. They compile under Lean
4.35.0 and the pinned Mathlib 4.35.0 at the default resource limits. Kernel replay
with `--trust=0` and `#print axioms` checks every new theorem; each uses only
`propext`, `Classical.choice`, and `Quot.sound`.

Targeted builds:

```sh
nice -n 5 lake build KAM.Diophantine.FrequencyDependence
nice -n 5 lake build KAM.Diophantine.SolverAlgebra
scripts/lint_sources.sh
```
