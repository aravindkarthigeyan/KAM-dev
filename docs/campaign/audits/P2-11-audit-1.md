# P2-11 independent audit 1

Overall verdict: **PASS**.

Audited branch `k/p2-11`, commit `95063cc`, against `main` using
`git diff main...HEAD`. Scope: the schedule definitions, all claims and helpers in
`KAM/Apost/Schedule.lean`, the four package graph nodes, and the generated root-import addition.
The pre-existing untracked `P2-11-handoff.md` was treated as input and left untouched.

## Node verdicts

All declaration names below are in `KAM.Apost`.

| Node | Lean declaration | Verdict | Evidence |
|---|---|---|---|
| `bp:p2:schedule` | `deltaSeq`, `rSeq`, `epsSeq`, `dSeq`; `schedule` | PASS | Definitions at Schedule.lean:47–63 are the explicit blueprint formulas; claims at :114–128 retain every inequality and recurrence. Blueprint p2-aposteriori.tex:935–947. |
| `bp:p2:error-decay` | `error_decay` | PASS | Schedule.lean:298–320 retains both error inequalities, both weighted inequalities for real `j`, and summability plus the sum bound on the exact stated ranges. Blueprint :952–957. |
| `step:p2:ed-errors` | `epsSeq_succ_eq`, `epsSeq_le_q_pow`, `error_decay_eps` | PASS | Schedule.lean:149–214 proves the transformed recurrence, applies `KAM.quadratic_iteration_linear`, and uses `q ≤ 1` for the second inequality. Blueprint :960–964. The handoff's `epsSeq_le_q_pow` alone covers the first error inequality; `error_decay_eps` completes the node. |
| `step:p2:ed-sums` | `error_decay_weighted`, `error_decay_sum` | PASS | Schedule.lean:216–290 proves the pointwise comparison, geometric summability, and sum bound using ratio at most 1/2. Blueprint :966–968. |

## Statement and proof fidelity

Compared directly with blueprint/parts/p2-aposteriori.tex:56–69, :80–107,
:935–969; graph contracts in docs/graph/K/DEPGRAPH.md:7421–7523; and Appendix A
of docs/campaign/design/PART23-LEAN-DESIGN.md:1276–1327.
All four definition bodies and both main theorem signatures are text-identical to
Appendix A (checked by Python extraction and equality assertions).

`Params` supplies precisely the standing numerical premises: `2 ≤ n`,
`n - 1 ≤ τ`, and positivity of `M, σK, σB, σT` (Standing.lean:40–47).
There are no Hamiltonian, torus, frequency, analytic, or final-estimate premises
hidden in it. The error theorem quantifies `ρ, ρinf, γ, e` after the fixed numerical
parameters, then all natural `s` and real `j` as required. Constants are inherited
unchanged from Constants.lean and gain no dependence on `s`, `j`, or `e`.
Everything here is scalar real arithmetic; no norm or carrier substitution occurs.

`schedule` needs only `0 < ρinf < ρ`, which is stronger than the blueprint claim
because the unused `γ, e` premises are absent. Its proof uses
`8 * delta0 ≤ ρ - ρinf`, positivity of `deltaSeq`, and the explicit radius identity.
The main error theorem retains the unused `hρinf` for signature fidelity.
The helpers `error_decay_weighted` and `error_decay_sum` omit `0 ≤ j` and prove
stronger statements for every real `j` below the stated upper bound; the public
assembly retains the blueprint's lower bound.

No conclusion-shaped hypothesis was found. The argument passed to the Part 1
iteration theorem is proved by `epsSeq_succ_eq`; nonnegativity is proved by
induction in `epsSeq_nonneg`. `q_eq` is a ring identity. The series proof explicitly
establishes summability before comparing tsums, so it does not exploit the
zero value assigned to a nonsummable tsum. This follows the blueprint route,
with no contradictory fact or unproved hard step assumed.

## Definition classification and whole-carrier check

These are all new definitions; there are no new abbreviations or structures.

| Definition | Classification and total behavior |
|---|---|
| `deltaSeq` | Explicit real sequence `(1/2)^s * delta0`; intended dyadic loss for every natural index. |
| `rSeq` | Explicit real radius sequence `ρ - 8 * delta0 * (1 - (1/2)^s)` for all real input widths. |
| `epsSeq` | Primitive recursion on naturals with initial value `e` and exactly the specified quadratic update. No conditional branches or selected witnesses. |
| `dSeq` | Explicit real quotient `C_DK * epsSeq / (γ² * deltaSeq^a)`; no additional cases. |

All parameter arguments are unrestricted in the definitions. Outside the source's
positive-width/positive-γ regime they retain the same algebraic expressions,
using Lean's standard total real division and real powers. In particular a zero
denominator is totalized by the field operation, not by a custom fallback.
No theorem exploits these off-regime values: the decay proof establishes
positive `γ` and positive losses and their real powers. The initial-error-zero
case is admitted, as in the source; the natural exponent `2^0 - 1 = 0` yields the
correct initial bound even when `q = 0`.

The scratch probe additionally checked five premise-free `rfl` examples for
`deltaSeq`, `rSeq`, `epsSeq` at zero and successor, and `dSeq`, over arbitrary
arguments. All elaborated without diagnostics.

## Hygiene and exact checks

Checks were serialized; no resource overrides were used. No source, frozen file,
manifest, generated file, or git state was changed by this audit. The only
persistent audit artifact is this report. Scratch probe files were removed.

1. `git diff --stat main...HEAD` (exit 0):

   ```text
    KAM.lean                |   1 +
    KAM/Apost/Schedule.lean | 324 ++++++++++++++++++++++++++++++++++++++++++++++++
    2 files changed, 325 insertions(+)
   ```

   The root diff is exactly `public import KAM.Apost.Schedule`; the generator's
   check in lint passes. No evidence of a manual root-file edit is inferred.

2. `git diff main...HEAD -- KAM/Frozen manifest` (exit 0): empty output.
   `git diff --check main...HEAD` (exit 0): empty output.

3. `nice -n 5 lake build KAM.Apost.Schedule` (exit 0):

   ```text
   Build completed successfully (2873 jobs).
   ```

   This was the targeted build against the existing worktree snapshot, with no
   clean, cache fetch, or root-library rebuild command.

4. `sh scripts/lint_sources.sh` (exit 0), complete output:

   ```text
   check_lean_modules: PASS (215 Lean files, 0 comparator configurations)
   FROZEN-ANCHOR GUARD OK
   ABI HASHES OK (144 frozen declarations)
   ```

   The new Lean file has 324 physical lines, below the 1500-line cap. Its copyright,
   `module`, interface imports, module docstring, and exposed public section are
   present. Lint found no forbidden proof escapes, resource overrides, oversized
   files, carrier violations, or root/manifest/module inconsistencies.

5. `nice -n 5 lake env lean .lake/abi-scratch/P211Audit.lean` (exit 0).
   Probe: `import KAM.Apost.Schedule`, followed by `#print axioms KAM.Apost.<name>`
   for every theorem declared in Schedule.lean, and the five `rfl` examples above.
   Complete output:

```text
'KAM.Apost.deltaSeq_zero' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.deltaSeq_pos' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.deltaSeq_le_delta0' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.deltaSeq_succ' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.deltaSeq_rpow' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.rSeq_zero' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.rSeq_eq' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.rSeq_succ' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.schedule' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.epsSeq_zero' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.epsSeq_nonneg' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.epsSeq_succ_eq' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.q_eq' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.epsSeq_le_q_pow' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.q_nonneg' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.error_decay_eps' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.error_decay_weighted' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.error_decay_sum' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.error_decay' depends on axioms: [propext, Classical.choice, Quot.sound]
```

Provider exact-type probe: **not applicable**. P2-11 is an infrastructure package
with no provider or frozen theorem export. It imports Constants and the permitted
Part 1 Iteration module; no provider or frozen theorem shortcut is introduced.

## Findings, errata, deviations, and limits

No blocking, major, or minor defect found; no fix proposed.
No suspected blueprint erratum or package-introduced mathematical deviation was
identified. The helper statements strengthened by dropping unnecessary premises
are described above. The graph still says `NOT_STARTED` for these nodes in this
snapshot; updating campaign status is outside this report-only assignment.

This audit independently checked the blueprint contracts and the package proof
sources, build, lint, and axiom closure. It does not claim a new comparison against
the pinned HL19 PDF or an independent kernel replay; the handoff's replay claim
was not reused as independently established evidence. No remaining uncertainty
about the scoped package contracts was found.
