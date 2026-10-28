# I-5 independent audit 1

**Verdict: PASS WITH NOTES for package I-5 (`bpI:p7:shift-def`, `bpI:p7:shift`).**
No mathematical or proof-trust blocker found. The notes concern public API coverage and documentation.
This package introduces infrastructure, not a provider or frozen theorem seal. Consequently there is
no anchor-specific seal-ready verdict: provider/frozen-type equality and seal-body probes are **N/A**.
This report does not certify I-R3BP, I-HEAD, or any other downstream anchor.

## Scope and fixed inputs

- Auditor date: 2026-10-28; worktree `/root/code/KAM-inp-i5`.
- HEAD: `3b9358764ca8625f401fb7eaef5eed4b82f4d1a0`.
- Comparison ref `inp`: `e4f83bbbe1058bcf6a39a4ccae714fce1507f7af`.
- Reviewed `git diff inp...HEAD`: exactly one new file,
  `KAM/Iso/ShiftPotential.lean`, 696 insertions, no deletions.
- Read the package audit brief at `/root/code/KAM-inp/.drafts/briefs/inp-audit-package.md`,
  `AGENTS.md`, `docs/PLAN.md`, `docs/DECISIONS.md`, `docs/tracks/I/statement.md`, and the
  complete I-5 handoff and its AUDIT FOCUS.
- Mathematical authority for this package: `blueprint-I/parts/p7-delaunay.tex:356–392`;
  design: `docs/tracks/P/design/KEPLER-LEAN-DESIGN.md` §2.2, §7 row I-5, §7.1.
- Inspected the directly used frozen definitions `Radius`, `Primary1`, `Primary2`,
  `CollisionFree`, `PlaneSq`, `PlaneLength`, and the `RadiusSq` dependency, together with
  `KAM/Kepler/Plane.lean` and its project imports. No frozen theorem implements this package.
  The manifest contains no ShiftPotential/shiftF anchor. Frozen integrity was checked by lint.
- Source SHA256: `c0c8f13edda21cdc36c13f8cf8eba1a41f4f276e738bcd961757f87cd8ebd606`.
- Blueprint SHA256: `a3f650f5c2982ea6e5545efd4294c086103439908cfd2683ec3a836923a6521d`.
- Design SHA256: `ef91c316d0127ef9884c602810d58b816501524ed75e7d2923c0e92f736dfdf5`.

The user's exact worktree-local output path overrides the brief's generic main-worktree destination.
Only this report and temporary probes under this worktree's `.lake/abi-scratch/` were written.
No source, frozen file, manifest, generated root, or git state was edited.

## Declaration inventory and correspondence

Names below are in `KAM.Iso`; line numbers refer to the fixed HEAD source.

| Blueprint node | Declaration (line) | Verdict | Reason / note |
|---|---|---|---|
| shift-def / conventions | `vtheta` (44) | PASS | Literal complex bilinear quadratic form; no conjugation. |
| shift / conventions | `clen` (46) | PASS | Euclidean length on complex pairs; does not replace the ambient Pi norm. |
| shift-def | `e0` (48) | PASS | Literal vector `(1,0)`. |
| shift-def | `shiftW` (50) | PASS | Principal inverse square root of `vtheta q`. |
| shift-def | `shiftPsi` (52) | PASS | Both barycentric primary displacements and weights agree literally. |
| shift | `shiftF` (55) | PASS | Negative divided slope; derivative value at zero, with proved integral identification on the entire claimed domain. |
| shift-def | `shiftXi` (57) | PASS | All three positive-real-part tests; retains the baseline radicand. |
| shift | `ShiftConst` (63) | PASS | Exactly the six scalar source premises, without hidden analytic conclusions. |
| shift / constant choice | `shiftEps` (71) | PASS | Explicit sufficient choice depending only on the two shell radii. |
| shift | `shiftCstar` (72) | PASS | Exact minimum of the two source margins. |
| shift | `shiftCsh` (74) | PASS | Exactly `6 / (ε₀ * sqrt c_*)`. |
| shift | `shiftO` (76) | PASS | Euclidean tube of radius `ε₀/2` around the real closed shell. |
| shift / constant choice | `shiftConst_shiftEps` (245) | PASS | Proves admissibility from the three shell inequalities; no extra premise. |
| shift / sh-pos | `shift_domain` (266) | PASS WITH NOTES | Closed mass disc, all three lower bounds and positivity; see N1 about its docstring. |
| shift / sh-zero | `shift_value_zero` (364) | PASS | Correct positive indirect term `q₀ vtheta(q)^(-3/2)`; stronger q-domain than required (all `(q,0) ∈ Xi`). |
| shift / sh-div | `shift_mul_eq` (370) | PASS | Exact signed factor identity including zero. Source-domain premises are retained although unused. |
| shift / sh-div | `shift_holomorphic` (483) | PASS | Joint complex Fréchet differentiability on the product domain; no separate-holomorphy substitution. |
| shift / sh-div | `shiftF_eq_integral` (496) | PASS | Exact negative integral over `[0,1]`, including `μ=0`, with the complex derivative of Ψ. |
| shift / sh-bound, sh-div | `shift_bound` (542) | PASS | Exact source constant; maximum principle for the divided slope covers zero too. |
| shift / sh-real, shift-def | `shift_real` (639) | PASS | Collision freedom, physical values of w and Ψ, and reality of f; arbitrary momentum is typing data. |

All 20 handwritten public declarations are listed. Private lemmas were inspected as proof steps,
including the two private definitions classified below. Generated structure projections carry only
the six displayed scalar premises.

## Expanded binder audit

There are no project-specific instances or hidden section hypotheses. All functions have the required
`Fin 2 → ℝ` / `Fin 2 → ℂ` carriers. This table groups identical binder occurrences across the named
theorems; each row describes one binder or one expanded logical field, not an unexpanded bundle.
Abbreviations: E=`shiftConst_shiftEps`, D=`shift_domain`, Z=`shift_value_zero`,
M=`shift_mul_eq`, H=`shift_holomorphic`, I=`shiftF_eq_integral`, B=`shift_bound`, R=`shift_real`.

| Binder / expanded field | Occurrences | Bin | Source |
|---|---|---|---|
| `{rmin : ℝ}` | E,D,M,H,I,B,R | TYPING | Blueprint 365, shell parameter. |
| `{ρmax : ℝ}` | E,D,M,H,I,B,R | TYPING | Blueprint 365, shell parameter. |
| `{ε₀ : ℝ}` | D,M,H,I,B,R | TYPING | Blueprint 365, smallness parameter. |
| `{q : Fin 2 → ℂ}` | D,Z,M,I,B | TYPING | Blueprint 357,370. |
| `{q : Fin 2 → ℝ}` | R | TYPING | Blueprint 376, real slice. |
| `{μ : ℂ}` | D,M,I,B | TYPING | Blueprint 372–374. |
| `{μ : ℝ}` | R | TYPING | Blueprint 376, real slice. |
| `(p : Fin 2 → ℝ)` | R | TYPING | Frozen CollisionFree uses a phase pair; predicate independent of p. |
| `h0 : 0 < rmin` | E | SOURCE | Blueprint 365. |
| `h1 : rmin ≤ ρmax` | E | SOURCE | Blueprint 365. |
| `h2 : ρmax < 1` | E | SOURCE | Blueprint 365. |
| `h.rmin_pos : 0 < rmin` | D,M,H,I,B,R | SOURCE | Blueprint 365. |
| `h.rmin_le : rmin ≤ ρmax` | D,M,H,I,B,R | SOURCE | Blueprint 365. |
| `h.rho_lt : ρmax < 1` | D,M,H,I,B,R | SOURCE | Blueprint 365. |
| `h.eps_pos : 0 < ε₀` | D,M,H,I,B,R | SOURCE | Blueprint 365. |
| `h.h₁ : ε₀*(ε₀+2*ρmax) < rmin^2` | D,M,H,I,B,R | SOURCE | Blueprint 365. |
| `h.h₂ : ε₀*(ε₀+4) < (1-ρmax)^2` | D,M,H,I,B,R | SOURCE | Blueprint 365. |
| `hq : q ∈ shiftO rmin ρmax ε₀` | D,M,I,B | SOURCE | Blueprint 370,372–374; literal existential tube membership. |
| `hq : ofReal(q) ∈ shiftO rmin ρmax ε₀` | R | SOURCE | Blueprint 376. |
| `hμ : ‖μ‖ ≤ ε₀/2` | D | SOURCE | Blueprint 372, closed disc. |
| `hμ : ‖μ‖ < ε₀/2` | M,I,B | SOURCE | Blueprint 372–374, open disc. |
| `hμ : |μ| < ε₀/2` | R | SOURCE | Blueprint 376. |
| `hq.1 : 0 < (vtheta q).re` | Z | SOURCE | Blueprint 357,376,390; expanded Xi membership at zero. |
| `hq.2.1 : 0 < (vtheta(q+0•e0)).re` | Z | SOURCE | Same; duplicate first radicand retained literally. |
| `hq.2.2 : 0 < (vtheta(q-(1-0)•e0)).re` | Z | SOURCE | Same; shifted radicand. |

| Theorem | SOURCE count | TYPING count | STANDING | RULED | EXCESS |
|---|---:|---:|---:|---:|---:|
| E | 3 | 2 | 0 | 0 | 0 |
| D | 8 | 5 | 0 | 0 | 0 |
| Z | 3 | 1 | 0 | 0 | 0 |
| M | 8 | 5 | 0 | 0 | 0 |
| H | 6 | 3 | 0 | 0 | 0 |
| I | 8 | 5 | 0 | 0 | 0 |
| B | 8 | 5 | 0 | 0 | 0 |
| R | 8 | 6 | 0 | 0 | 0 |

Witnesses inside tube membership specify the source domain; they do not assume an estimate to be
proved. No differentiability, integrability, square-root branch identity, or holomorphy is a premise.
Constant dependence is correct: use E to substitute `ε₀=shiftEps rmin ρmax` before choosing q or μ.
The generic scalar lemmas also allow any source-admissible ε₀, as the source does.

## Definition audit and attempts to refute the analytic argument

All new definitions are literal formulas or literal predicates. There is no characterization-defined
choice object, selected witness family, or deferred well-definedness obligation.

| Definitions | Classification and whole-carrier check |
|---|---|
| `vtheta`, `clen`, `e0` | Literal polynomial, square root of sum of norm squares, and fixed vector on their entire carriers. |
| `shiftW`, `shiftPsi` | Literal principal-cpow formulas everywhere; analytic/physical claims are restricted to positive radicands. No alternative branch or fabricated physical value is used. |
| `shiftF` | Literal total divided-slope formula. At nonzero μ it is `(w-Ψ)/μ`; at zero it is `-deriv (shiftPsi q) 0`, not division-by-zero output. Its complete source characterization on O×D is proved, not postponed. |
| `shiftXi`, `shiftO`, `ShiftConst` | Literal domain predicates / source scalar premises. No proof obligation encoded as an input field. |
| `shiftEps`, `shiftCstar`, `shiftCsh` | Literal explicit formulas on all real parameters. Positive denominators and margins are proved under the source premises. Invalid parameter values do not enter analytic claims. |
| private `e0R` (172) | Literal real `(1,0)`; used only for the real geometry. |
| private `shiftFt` (386) | Literal rationalized formula on the full carrier. Its denominator is proved nonzero at every Xi point where it is used. |

For each row: **BODY_MATCH: OK; PUBLIC_CARRIER: OK; WELL_DEFINEDNESS: N/A_LITERAL;
CHARACTERIZATION: N/A_LITERAL; CHOICE_INDEPENDENCE: N/A; DEFINITION_VERDICT: PASS.**
For shiftF, although it is a literal formula, the additional source integral characterization is
also proved by `shiftF_eq_integral`.

The source defines f on O×D, not on arbitrary complex collision/branch points. The design explicitly
chooses a total dslope representative. Lean's total `deriv`/`cpow` behavior outside the source domain
is not an assertion of a physical or analytic extension there. In particular, no integral identity
on all of Xi is claimed: Xi need not contain the full segment `(q,tμ)` merely from endpoint membership.
The proof supplies that segment condition from `ShiftConst`, tube membership, and the disc bound.
This distinction prevents off-domain default values from paying any theorem.

Independent refutation checks:

1. **Zero value / sign.** Differentiating Ψ at zero gives
   `-w - q₀*vtheta(q)^(-3/2) + vtheta(q-e0)^(-1/2)`.
   Negating gives exactly Z, including the positive indirect term. The private rationalized formula
   agrees at zero using nonzero square roots. No continuity assertion hides a missing zero case.
2. **Nonzero quotient.** Write a²=`vtheta(q+μe0)`, b²=`vtheta(q)` with principal roots.
   Their difference is `μ*(2q₀+μ)`. Rationalization yields
   `(2q₀+μ)/(a*b*(a+b)) + a⁻¹ - vtheta(q-(1-μ)e0)^(-1/2)`.
   Positive real parts of a and b ensure `a`, `b`, and `a+b` are nonzero.
   The algebraic identity and both zero/nonzero identifications are explicit at lines 391–439.
3. **Joint holomorphy.** Lines 441–481 differentiate functions of the full pair `(q,μ)`.
   Positive real parts place every radicand inside the slit plane; the rationalized denominator
   cannot vanish. Lines 483–491 transfer differentiability using equality on the domain.
   O is open (a union of translates of Euclidean balls; the finite-dimensional Pi topology agrees),
   so the stated DifferentiableOn is the source's holomorphy convention. This openness fact is not
   separately exported, and no proof in the package assumes it as a hypothesis.
4. **Integral.** Lines 496–526 establish all segment radicands, continuity of the complex derivative,
   and interval integrability. The real chain derivative is `(∂μΨ)(tμ)*μ`; FTC and cancellation
   are used only when μ≠0. The zero case is proved separately. No unproved parameter-integral
   differentiation theorem is needed by the alternative holomorphy route.
5. **Exact bound / constants.** The second scalar inequality plus the shell premises gives
   ε₀<1/4 (private lemma 163, independently probed). On the closed disc, the three inverse roots
   have norm at most `1/sqrt c_*`; the numerator is at most `3/sqrt c_*`.
   The divided slope is holomorphic near that disc, and the frontier radius is ε₀/2.
   Maximum modulus therefore gives `6/(ε₀ sqrt c_*)`, also at zero. No larger-radius estimate
   or unjustified bound at a singularity is used.
6. **Reality / physical potential.** Lines 626–634 identify both translated primary vectors.
   Real radicands are positive by D, so the complex principal powers equal real inverse lengths.
   R treats μ=0 separately and proves collision freedom for arbitrary momentum.

## Notes, suspected defects, and deviations

**N1 — documentation/public API, nonblocking.** `ShiftPotential.lean:264–270` advertises
`|ϑ^{-1/2}| ≤ c_*^{-1/2}` in the docstring of `shift_domain`, but its public type returns only
Xi membership, the three real-part bounds, and c_* positivity. The estimate is genuinely proved
by private `norm_cpow_neg_half_le` (528–535) and consumed three times in B (553–557).
Thus this is not an unpaid mathematical step or a contradiction of blueprint 372; it is a mismatch
between prose and this particular public export. A downstream user needing the standalone bounds
cannot obtain them by projection from D. Clarify the docstring or expose the existing consequence
in later authorized implementation work.

**N2 — scope of totalization, nonblocking.** The source's analytic objects live on their stated
domains; the design uses total Lean formulas. Do not cite these results as analytic/physical
statements at off-domain branch or collision points, or cite I as an identity on arbitrary Xi.
No such use occurs in this package.

**Route deviations:** the rationalized joint formula replaces the design's proposed dominated-integral
or Cauchy-formula route. The maximum principle for dslope realizes the source Schwarz bound.
Both are valid, preserve all constants/domains, and introduce no source-statement deviation.

**Pinned-source/blueprint errata:** none found in the audited shift definition, statement, and proof.
The source explicitly labels the construction “ours; adapts, rather than repairs, Chi05”. This audit
does not independently re-audit Chi05 or unrelated blueprint propositions. The stale phase-0 prose
in `docs/tracks/I/statement.md` is superseded by decisions D19–D20 and the manifest; no frozen
statement was repaired or reinterpreted here. The handoff's claim of verbatim extraction from
`KeplerSignatures.lean:778–840` was not used as authority; that draft file was unavailable at the
searched locations. Correspondence was checked directly against the tracked blueprint and design.

## Mechanical verification

All Lean-related invocations were sequential, with `LEAN_NUM_THREADS=1` and `nice -n 5`.
The targeted build used the mandated compile gate. Lint's internal ABI probe was allowed to finish
before starting the independent probe. No resource-budget override was introduced or used.

Targeted build:

```text
LEAN_NUM_THREADS=1 /mnt/HC_Volume_106379410/orchestrator-tools/inp_lake_build.sh /root/code/KAM-inp-i5 KAM.Iso.ShiftPotential
[inp-gate] slot 1 acquired 00:39:18 for KAM.Iso.ShiftPotential
Build completed successfully (9090 jobs).
exit 0
```

This was a normal targeted build using the existing overlay, not a clean library rebuild.

Lint:

```text
LEAN_NUM_THREADS=1 nice -n 5 sh scripts/lint_sources.sh
KAM.lean is out of date; run scripts/gen_root_imports.py
check_lean_modules: PASS (263 Lean files, 0 comparator configurations)
FROZEN-ANCHOR GUARD OK
ABI HASHES OK (144 frozen declarations)
exit 1
```

The sole failure is precisely the brief's allowed stale-generated-root exception. The root was
not regenerated. No forbidden proof escapes, resource overrides, overlong files, or module violations
were reported. The new file has 696 total lines and maximum line length 100.

Independent temporary probe:

```text
LEAN_NUM_THREADS=1 nice -n 5 lake env lean .lake/abi-scratch/I5Audit1.lean
'KAM.Iso.shiftConst_shiftEps' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.shift_domain' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.shift_value_zero' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.shift_mul_eq' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.shift_holomorphic' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.shiftF_eq_integral' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.shift_bound' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.shift_real' depends on axioms: [propext, Classical.choice, Quot.sound]
exit 0
```

The probe imported `KAM.Iso.ShiftPotential`, ran `#print axioms` for each of those eight exports,
and elaborated seven additional examples: the derivative value at zero; the unrestricted nonzero
quotient; ε₀<1/4 from the expanded scalar premises; admissibility of the explicit min/16 choice;
joint holomorphy on the full product; the exact integral type; and the bound with the c_* minimum
and constant 6 unfolded. All passed at default resource limits. The probe is deleted after checking.

Additional read-only checks:

```text
git diff --check inp...HEAD
[no output; exit 0]
git diff inp...HEAD -- KAM/Frozen manifest KAM.lean README.md
[empty; exit 0]
```

A recursive scan of all project import edges reachable from `KAM.Iso.ShiftPotential` visited
44 modules and found zero provider or frozen-theorem imports. It therefore cannot import a
DRAFT_SORRY anchor indirectly. No new theorem depends on sorryAx, as independently shown above.

Kernel replay (one invocation, the sole new lemma module; no provider exists for this package):

```text
LEAN_NUM_THREADS=1 nice -n 5 lake env leanchecker --verbose KAM.Iso.ShiftPotential
replaying KAM.Iso.ShiftPotential
exit 0
```

Closeout: all eight public theorems passed axiom inspection; kernel replay and the targeted build
passed; lint passed modulo the explicitly allowed generated-root exception; protected paths are
unchanged. No repair was performed. N1–N2 bound the public documentation and off-domain use of
these results. There is no outstanding mathematical uncertainty in the audited shift package;
downstream assembly and unrelated source claims remain outside this audit.
