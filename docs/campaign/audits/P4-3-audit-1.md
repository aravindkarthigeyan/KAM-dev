# P4-3 independent audit 1

Overall verdict: **PASS WITH NOTES**. No blocking or major finding. One minor documentation correction.

## Scope and authority

Audited `KAM/Head/Parameters.lean` (502 lines) at HEAD
`bc2be451b3734844a5ee5f076702711b7671fc4e`, containing prover commit `01d438f`.
Read `AGENTS.md`, `docs/PLAN.md`, `docs/DECISIONS.md`, `AUDIT-PACKAGE.md`,
`P4-3.md`, its common briefs, the Part 4 design, and `P4-3-handoff.md`.
The handoff's AUDIT FOCUS overrides the generic main comparison:
`git diff k/p4-0...HEAD -- KAM/Head/Parameters.lean` is the scoped patch.
P4-0 definitions and unrelated merged packages are not independently certified here.
No Lean source, frozen anchor, manifest, generated file, or git state was changed.

Comparison caveat: `k/p4-0` resolves to `b830adee5a8d4e2f43c7a80d48774d8819a0df08`.
Git reports multiple merge bases and selects `735d9ea79cb80156eba15f37b13e3f3ae8b3e05c`;
`git merge-base --all k/p4-0 HEAD` also lists `86a798bb8742e01fd54ab6b609d919cb35d0ad8c`.
The requested scoped three-dot diff adds precisely this 502-line module. The broader diff includes
unrelated merged work; none is attributed to P4-3.

## Node coverage

| Node | Lean declaration | Verdict | Evidence |
|---|---|---|---|
| `bp:p4:parameters` (claims) | `KAM.Head.parameters` | PASS | `Parameters.lean:449–472`; blueprint `p4-measure.tex:406–438`; design Appendix A §7 (`PART4-LEAN-DESIGN.md:1168–1180`). Tuple side conditions, sigma differences, second-entry identity, and positivity agree. |
| `bp:p4:smallness` | `KAM.Head.smallness` | PASS | `Parameters.lean:475–500`; blueprint `p4-measure.tex:445–465`; design Appendix A §7 (`:1183` onward). All seven items and every subsidiary inequality are retained. |
| `step:p4:small-proof` (supporting step) | `KAM.Head.Parameters.smallness_s1` through `smallness_s7`, assembled by `KAM.Head.smallness` | PASS | `Parameters.lean:262–440`; minimum-entry reduction, monotonicity, and the dimension bound are proved rather than assumed. |

A Python comparison extracted each public signature from the module and Appendix A §7,
removed line comments, normalized whitespace, and asserted equality. Output:

```text
parameters: signature equals Appendix A section 7 (whitespace/comments normalized)
smallness: signature equals Appendix A section 7 (whitespace/comments normalized)
Prepared axiom probe for 47 declarations
```

## Statement and proof checks

`Data` expands to the standing HEAD inputs (dimension, strict tau threshold, positive widths,
open bounded B, holomorphy, reality, and nondegeneracy). These are source premises, not
conclusion-shaped hypotheses. The module docstring identifies Part 4 and its design.
The blueprint standing data are at `p4-measure.tex:138–147`.
The blueprint's nonempty B and boundary-layer witness are not required here: their omission
strengthens these arithmetic results. The hypotheses on f are likewise unnecessary.

`parameters` first takes `Data`, then quantifies over arbitrary `gc` satisfying only `gc.Pos`
for the gate-dependent positivity conclusions. `smallness` takes `Data`, `gc.Pos`, and exactly
`SA` (positive gamma at most one; nonnegative epsilon at most cStar times gamma to the fourth).
There is no `GValid`, gate theorem body, analytic estimate, or Part 4 conclusion hidden in a premise.
`gc.Pos` contains only positivity of the five G1/G2 constants; C3 is unused.
Using arbitrary positive constants is stronger than requiring the particular valid gate constants.

Constant dependence is unchanged: every imported constant has its design argument list, and none
of A0–A4, lambdaStar, cT, etaStar, or cStar takes f, epsilon, or gamma. This module introduces
no existential choice of a constant after epsilon or gamma. The literal gamma upper bound is 1;
its positivity is elementary and is not a missing substantive claim.

The following comparisons were made directly, rather than inferred from signature equality:

| Item | Blueprint / Lean comparison |
|---|---|
| s1 | epsilon at most 1 and Lplus F2 epsilon at most 1/2; second minimum entry rewritten using the proved identity at `:246–253`. |
| s2 | C11 F1 epsilon divided by gamma^4 (s/4)^(4 tau), at most 1/2. |
| s3 | Both etaStar strip thresholds, eta0 at most mu, and 16 n eta0 / s at most 1/2; none is dropped. |
| s4 | C12 A1 lambdaStar epsilon divided by gamma^4 (3s/32)^(4 tau), at most 1/2. |
| s5 | The entire sum 2 A0 + C22 A1 lambdaStar / (3s/32)^(2 tau), times epsilon/gamma^2, bounded by cG gamma^2 (s/16)^(2 tau). |
| s6 | (A3 LambdaG + A4) epsilon/gamma^4 at most 1/4. |
| s7 | eta0 at most gamma^2/2 and gamma^2/2 at most min(gamma,1)/2. |

Natural powers (gamma^2, gamma^4, deltaStar^2) and real powers (strip factors with exponent
2 tau or 4 tau) have the intended types. Positive strip factors justify replacing negative
real powers by division in s5. Only scalar real inequalities occur; no norm or carrier is
substituted. Endpoint epsilon = 0 and gamma = 1 are included; gamma = 0 is excluded by SA.

Proof inspection: `cStar_le_1` through `cStar_le_8` project the eight minimum entries in order;
`cStar_pos` checks positivity of every denominator. `mul_le_of_le_cStar` is an independently
proved ordered-field implication with explicit denominator positivity, not an assumed smallness
result. The eta0 bounds cancel gamma^2 only after proving it positive. For s3, `natCast_le_cT`
proves n ≤ cT from its formula, and `smallness_s3` uses s ≤ 1 and Lplus ≥ 1, consistently with
the blueprint proof at lines 463–465. No contradiction with the blueprint proof was found.

## Definition classification and imports

There are **no new `def`, `abbrev`, or `structure` declarations** in the audited module.
All 47 declarations are theorems. The namespace and section variables introduce no data.
The imported real constants, minimums, and arithmetic expressions are the P4-0 interface;
their full definition audit remains P4-0's responsibility. They are unfolded only for arithmetic
proofs here. No choice-based torus or inverse-frequency fallback is used by a proof.

The direct imports are `public import KAM.Head.Defs` and
`import Mathlib.Analysis.SpecialFunctions.Pow.Real`. No provider or frozen theorem is directly
imported. The axiom checks below also exclude dependence on a draft theorem's sorry axiom.
This is not a provider package; the frozen/provider exact-type probe is **not applicable**.
No frozen theorem is claimed sealed by this report.

## Independent checks

All Lean invocations were sequential, with `nice -n 5`; no resource override or clean build
was requested. Exact commands and observed outputs:

```text
$ nice -n 5 lake build KAM.Head.Parameters
Build completed successfully (2876 jobs).
[exit 0]

$ nice -n 5 lake env lean .lake/abi-scratch/P43Audit1.lean
[47 #print axioms results; exit 0]
```

The temporary probe imported `KAM.Head.Parameters` and issued `#print axioms` for every theorem
found by `^theorem (\w+)`: helpers in `KAM.Head.Parameters`, and both public results in `KAM.Head`.
Every one of the 47 output lines reported exactly `[propext, Classical.choice, Quot.sound]`.
In particular, the public output was:

```text
'KAM.Head.parameters' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.smallness' depends on axioms: [propext, Classical.choice, Quot.sound]
```

The probe was deleted after checking. This was Lean elaboration and axiom inspection, not a
separate leanchecker replay.

```text
$ wc -l KAM/Head/Parameters.lean
502 KAM/Head/Parameters.lean

$ rg -n '^(def|abbrev|structure) |set_option|\b(sorry|admit|axiom|unsafe|opaque|EuclideanSpace)\b' KAM/Head/Parameters.lean
[no output; exit 1: no matches]

$ git diff --check
[no output; exit 0]

$ git diff k/p4-0...HEAD -- KAM/Frozen manifest
warning: k/p4-0...HEAD: multiple merge bases, using 735d9ea79cb80156eba15f37b13e3f3ae8b3e05c
[no diff; exit 0]

$ git diff k/p4-0 HEAD -- KAM/Frozen manifest
[no output; exit 0]
```

The file has both author names and the copyright header, `module`, the public interface import,
a module docstring, and `@[expose] public section`. It is below the 1500-line cap.

```text
$ sh scripts/lint_sources.sh
check_lean_modules: PASS (249 Lean files, 0 comparator configurations)
FROZEN-ANCHOR GUARD OK
ABI HASHES OK (144 frozen declarations)
[exit 0]
```

## Findings, errata, and uncertainties

**Minor — inaccurate helper names in module documentation.**
`KAM/Head/Parameters.lean:33` says “`cStar_le_one`, ..., `cStar_le_last`”.
The actual names are `cStar_le_1` through `cStar_le_8` (`:169–211`).
Proposed fix: update those two docstring names. This affects discoverability only; all eight
inequalities exist and were axiom-checked. No source edit was made during this audit.

No blocking or major finding, suspected pinned-source erratum, or mathematical deviation was
identified in the scoped module. The gates' validity and the P4-0 definition contracts remain
outside this audit; positivity suffices for the two claims audited here. No external source PDF
claim is made. Only this report is the audit's persistent repository artifact.
