# Track P additions v0.4: independent delta statement audit

27 October 2026. **READY FOR OWNER.** F-P-A1 is closed exactly by deletion of
both conclusion aliases and literal expansion at the four call sites. No other
mathematical change was found. All four changed theorem declarations are
**APPROVABLE** as statement proposals. No further P draft change is required
for the approval packet. This verdict is neither owner approval, permission to
freeze, nor proof closure: all four dynamical results remain unproved drafts.

## 1. Scope and pinned inputs

Read the delta brief, both underlying audit briefs, AGENTS.md, PLAN.md,
DECISIONS.md, TRACKS.md, the v0.3 P audit, current P statement/source/notes,
the three research rounds (round-3 corrections govern), the model K audit,
current N additions and N v0.3 audit, especially §6/F-NADD-4. The permission
boundary is one report plus scratch under `.drafts/P/audit-scratch/`. No input,
frozen file, manifest, ledger, generated file, or other report was edited.
No state-changing git operation or subagent was used.

| Input | SHA-256 |
|---|---|
| `.drafts/P/v0.3/Additions.lean` | `6df42966f8abbe33f7421752f74f18d3465e0d03f38d47e13696c297bca9c585` |
| `.drafts/P/Additions.lean` v0.4, 378 lines | `bf4b9d474e4c3fa32844af887f90851cb5bd026c101f2b5fc882b9169d5e72f0` |
| N initial input, v0.3, 194 lines | `f7b3278008de764bf252d5aa02f43ac9234ac79cbb63b5191931e54e4dffbc5e` |
| `.drafts/N/Additions.lean`, **v0.4 arrival**, 199 lines | `76ed6371a4e95b95bc275ab517d466f0c284d48027cc9ffe29b3d7bb3f355873` |
| `docs/tracks/P/statement.md` | `06d876320d40f7ae0cb5cdbe7e5b08a00b431125630079a2b3d3abcaac2e0b66` |
| `docs/tracks/P/notes.md` | `cf3ea109b25099ddc2945ee71264d48a5b569df333fcd0d2f00b4b0157cc2ac9` |
| `docs/tracks/P/sources.md` | `d6f4722851b878f0d67178bfd9dc4b17fd7635d4ed4622effe36290bcd336819` |

N changed to v0.4 during closeout. Its full revised text was reread and copied
byte-for-byte to scratch `N-v0.4-arrival.lean`; the interface below covers that
arrival as well as the earlier v0.3. No later revision is certified. P's source packet is byte-identical to the v0.3 audited
packet. The source PDF hashes were recomputed and match the v0.3 report:
Nek77 `0bfe624c…0eaec4def6`, LP17v2 `6b3c7aad…3d40f09361`,
FH24v1 `379c8b41…65d0226d1303885d2df7cf7` (full pins in P sources.md).
Direct local source rereading covered Nek77 pp.28–30, 55–56; LP17 pp.16–17;
and FH24v1 p.6. Nek77 p.56 was additionally viewed as a rendered page,
confirming the exponents and duplicate-half candidate. No network source or
later edition was substituted for a pin.

## 2. Exhaustive diff account and changed-declaration verdicts

The complete unified diff has exactly the following five hunks. Old/new line
numbers refer to the two pinned P files above.

| Unified hunk | Every change in that hunk |
|---|---|
| `@@ -18,7 +18,7 @@` | Only module-doc title `v0.3` → `v0.4`, old/new line 21. |
| `@@ -138,21 +138,6 @@` | Delete old lines 141–155: the doc comment, entire `AMDSafeOn` declaration and separating blank line. The surrounding stopped predicate and theorem comment are unchanged. |
| `@@ -164,7 +149,18 @@` | Old line 167 becomes new lines 152–163: expand `AMDSafeOn B mu (Set.Icc (-T) T) z`, adding grouping parentheses around its conjunction. The following AMD/action-drift conjunct remains outside that grouping. |
| `@@ -185,8 +181,23 @@` | Old lines 188–189 become new lines 184–200: expand `AMDSafeOn` with exactly the original exponential interval and trajectory. The separately quantified semimajor-axis bound is unchanged. |
| `@@ -290,49 +301,71 @@` | Delete old lines 293–321: the doc comment, entire `SecularBoxConclusion` and separating blank line. Expand the old applications at lines 328 and 335 into new lines 310–333 and 341–368 respectively. All context, theorem premises, placeholder bodies and final axiom-print commands remain unchanged. |

No omitted hunk changes imports, namespace, exposure, retained definitions,
structure fields, proof bodies, theorem premises, witnesses, rates, numeric
bounds, binder explicitness or quantifier order. The new file has 33 definitions,
one structure and four theorems (38 declarations). All 34 retained non-theorem
commands compare identically after removing comments; all four theorem headers
up to their result-type colon compare identically. The receipt lists each name:
[delta-preservation.json](../../../.drafts/P/audit-scratch/delta-preservation.json).
The four current theorem blocks in statement.md also match the draft verbatim.

| Changed declaration / current locator | Verdict | Exact disposition |
|---|---|---|
| deleted `AMDSafeOn`, old 142 | APPROVABLE deletion | Its complete body is present in both former physical call sites. No result bundle remains proposed as a source definition. |
| `amdConfinement`, 144–167 | APPROVABLE | Substitute B, mu, `[−T,T]`, z literally. The existential z, initial equality, all four safety components, and final AMD/action bound have the same scopes. |
| `planetaryExponentialSafety`, 178–204 | APPROVABLE | Every interval occurrence uses the same `exp(c * mu ^ (-planetaryTimeExponent n))`. Constants remain before mu and z0; there is no new stopped-bound premise. |
| deleted `SecularBoxConclusion`, old 295 | APPROVABLE deletion | Its full existential, ODE, uniqueness and all-time geometry body is now explicit in both secular theorems. |
| `secularBoxSafety`, 307–334 | APPROVABLE | Literal saturn, mu, w0 substitution, including the same local-comparison uniqueness predicate. |
| `secularBoxAtCitedMasses`, 339–369 | APPROVABLE | Every saturn/mu occurrence is replaced by `476/1591` / `4773/5000000` with the original real type annotations; w0 and every numerical output bound remain unchanged. |

Independent kernel check:
[DeltaTypeEquality.lean](../../../.drafts/P/audit-scratch/DeltaTypeEquality.lean)
shares the exact retained definitions, reinstates the two old aliases solely in
scratch, and converts each old/new theorem type into a Prop-valued definition
with its original parameter telescope. Four named equalities of the complete
parameterized propositions are proved by literal `rfl`. Thus this checks
parameter types and full results, including every internal universal and
existential binder, rather than comparing only printed conclusion strings.
None of these checks uses a draft theorem or its placeholder proof.
Each equality reports only `[propext, Classical.choice, Quot.sound]`, without
`sorryAx`. F-P-A1 is **CLOSED**, with no mathematical deviation introduced.

## 3. Carry-forward verdicts and binder spot checks

All 33 retained definitions and AMDBox retain their v0.3 APPROVABLE verdicts;
there is no residual rejected definition. Their BODY_MATCH, PUBLIC_CARRIER,
literal well-definedness and choice diagnostics from the earlier audit are
unchanged. Deletion of the two result aliases removes their eligibility failure,
not a physical premise. Definitions including `StoppedActionBound`, the two
exponents, `exactSecularHamiltonian`, `SecularRegular`, and `SecularInputBox`
were directly reread rather than inferred from their names.

The binder classification in v0.3 §4 carries forward exactly. In that report's
SOURCE/STANDING/TYPING/RULED/EXCESS order:

| Theorem | Full outer input inventory spot-checked | Counts |
|---|---|---|
| `amdConfinement` | n, hn, B, hB; mu,T,delta and their positivity; hmargin,hAMD; z0,hz0; hstop | `3/5/3/4/0` (15) |
| `planetaryExponentialSafety` | n,hn,B,hB before existential constants; mu, positivity, smallness, z0, initial membership after them | `4/3/1/1/0` (9) |
| `secularBoxSafety` | saturn,mu,hsaturn,hmu,w0,hw0 | `4/2/0/0/0` (6) |
| `secularBoxAtCitedMasses` | w0,hw0 only | `1/1/0/0/0` (2) |

The bundled standing inputs are still precisely B1–B15, M1–M2, Z1–Z7 and
C1–C9 of that audit, with no inserted dynamics, regularity of an integral,
conservation law or analytic estimate. Expanded counts remain respectively
`3/26/3/4/0`, `4/23/1/1/0`, `4/11/0/0/0`, `1/9/0/0/0`.
The separately named conditional helper alone takes hstop. It tests each
finite `[l,r]` with l≤0≤r and l<r, including one-sided intervals; the bound
is only on `[l,r] ∩ [−T,T]`. Its internal 19 premise slots are unchanged.
No conclusion-shaped premise appears in either headline.

F-P-A2 remains an unpaid proof obligation, sharpened by the collar construction
below. F-P-A3 remains the owner-approval boundary, not a remaining request to
revise the Lean propositions: Q-P-A1–A5 still require the owner's decisions.
D22 adopts milestones; D20 approves earlier statements, not these additions.
The earlier audit's physical/model distinction, all-data quantifiers, explicit
adaptations and absence of a realistic-mass full-system certificate all survive.

## 4. Cross-track interface: N v0.4 arrival and F-NADD-4

The checked N theorem is `partialConvex_nekhoroshev`, lines 94–124 in the
pinned N v0.4 arrival. Its stopped output is unchanged from v0.3. With its
parameter renamed ν, its actual output is

    for every C>0 and supplied genuine solution on [0,C],
    I(0) ∈ innerCore G (ν^b),
    for t ∈ [0,min(C,ν⁻¹ exp(ν⁻ᵃ))],
      (for every u ∈ [0,t], slow(z(u)) ∈ innerCore D (ν^b))
      implies ‖I(t)−I(0)‖∞ ≤ ν^b/2.

This has the necessary stopped-history shape. It is not an unconditional slow
confinement statement. In particular the sentence in P v0.3 §6 saying outer
membership is sufficient must be read with the **larger-domain collar lemmas**;
it is false as a direct inference into the erosion of the same open domain.
F-NADD-4 is not closed by alias expansion or by comparing exponent names.

The required application is exactly the construction in N audit §6:

1. Use n fast actions and k=n slow pairs, transport `Fin (n+n)` to
   `Fin (n*2)`, and construct the regular canonical chart including circular
   points. Prove that its fast actions equal these physical `keplerAction`s,
   with derivative and time transport for the actual moving Hamiltonian.
2. Enlarge the **whole outer** action box slightly to a positive convex open
   G, and choose Aplus>outerAMD and
   `D = {(ξ,η) | (1/2) Σᵢ(ξᵢ²+ηᵢ²) < Aplus}`. Choose enlargements small
   enough to retain positive ellipticity and radial separation. The strict
   AMD-to-eccentricity margin and positive original distance permit this.
   In max norm the closed slow ball at outerAMD has a fixed positive collar
   in D; the closed outer action box has a fixed positive collar in G.
   The v0.4 N input additionally requires an open convex G′ and
   `∀ I ∈ G, Metric.closedBall I ρ ⊆ G′`. Choose a further fixed positive
   enlargement G′ and a sufficiently small common ρ, retaining the separated
   analytic geometry on G′ × D. Holomorphy, realness, complex C²/Hessian bounds,
   definite fast data and normalized perturbation are now all required on
   G′ (with the stated complex neighborhoods), not merely G.
   Shrinking ν then puts every tested outer-region trajectory in the required
   erosions. No future confinement assumption is used.
3. Prove a common complex tube and bound B₀≥1 for the unscaled perturbation
   Hpert. Use ν=B₀ μphys and P=Hpert/B₀, so
   `hK + μphys Hpert = hK + ν P`. The N threshold is chosen after the complex
   Hessian and domain data. For `hK=−Σmᵢ³/(2Λᵢ²)`, frequency is
   `mᵢ³/Λᵢ³` and Hessian is diagonal `−3mᵢ³/Λᵢ⁴`; positive action bounds
   give uniform nonzero frequency, one concave sign and complex Hessian bounds.
4. Restrict to the queried prefix for t>0 and use the reversed solution of
   −H for t<0; at t=0 drift is zero. Intersect the two thresholds. Coordinate
   drift is at most δ=ν^b/2. This handles l=0 and r=0 as well as two-sided
   test intervals, without a preselected global flow.
5. The explicit exponents agree: a=2/(6n²−3n+14), b=3a/2. For ν≤1 and
   0<c≤B₀^(−a), `exp(c μphys^(−a)) ≤ ν⁻¹ exp(ν^(−a))`. Shrink μ* to
   fit both fixed analytic collars, the two action gaps and the AMD margin.
   Convert action drift to axis drift using `aᵢ=Λᵢ²/mᵢ²` on that fixed box.

**Interface verdict:** compatible after these explicit unpaid lemmas; no P
signature change required. N cannot discharge arbitrary hstop at arbitrary
mu,T,delta in the conditional helper. Its application is for the small-mass
choices available inside the existential constants of P-EXP-SAFE.

N's v0.4 explicitly adopts an enlarged-tube definite-Hessian adaptation of
Lemma 10.6 and the Thm 4.4 proof, rather than claiming literal global source
steepness at boundary centres (the v0.3 F-NADD-1 issue). Its two AKN theorems
are now explicitly DEFERRED for F-NADD-2/3. These changes do not alter P's
required stopped output or exponents, but do add the G′ obligations above.
This P delta audit does not independently close F-NADD-1 or certify N's
revised source/proof justification or approval packet. P's independently sourced
Thm 12.3 statement target can be owner-ready while this proposed provider route
remains unpaid. No N theorem is imported or assumed by the P headline.

## 5. Fresh refute-first pass

No additional mathematical counterexample or excess premise was found.
The following tests concern the actual four theorem statements after expansion.

- **Physical helper:** positive masses, negative Kepler energy and positive
  angular momentum guard the axis/action/eccentricity formulas. The strict
  action and AMD collars prevent a first exit even for sign-coherent drift.
  The identity AMD=ΣΛ−J and exact conservation of J control AMD; AMD itself
  is not claimed to be a full-system integral. Eccentricity stays below a
  fixed number less than one, so loss of prograde ellipticity cannot precede
  those collars. Fixed radius and separation bound momenta and yield compact
  continuation. Endpoint `HasDerivAt` is two-sided; a slightly extended local
  solution supplies it, and is not contradicted by a closed certified interval.
- **Physical exponential theorem:** mu>0 guards real negative powers, n≥2
  gives positive exponents, and constants precede every mu and initial datum.
  The bound is for all data in a fixed nonempty region, with no exceptional
  set. Nek77 Thm 12.3 pp.55–56 supplies the all-data small-mass result;
  the symmetric shorter horizon, heliocentric element transfer, uniqueness,
  continuation and explicit Newton geometry remain stated deductions. No
  optimized `1/(2n)` rate or actual-mass threshold is asserted.
- **Secular family:** positive Λ, 0≤Γ<Λ prevent negative-root/division junk;
  `|e|²=2Γ/Λ−(Γ/Λ)²<1` makes the longitude Jacobian positive. The raw
  full weighted eccentric-longitude integral includes the indirect kinetic
  term and frozen `(2π)⁻²` normalization. LP17 p.16 (B.5),(B.8) supports
  mean-angle averaging and the conservation mechanism. Differentiability and
  integrability are conclusions, including at circular data; a junk zero
  Bochner integral or off-locus fderiv does not establish them. Constant fast
  actions and total Γ bound slow coordinates; lifted angles need not be
  bounded. Arbitrarily large positive mu changes speed, not this compact
  averaged-model confinement argument.
- **Cited masses:** exact arithmetic gives
  `(4773/5000000)(476/1591)=357/1250000`, with `476/1591` strictly inside
  `[29/100,31/100]`. These are the two decimal model masses on FH24v1 p.6,
  in the Jupiter-normalized parametrization. No physical-year claim or
  Newtonian conclusion is added to the averaged theorem.

The 15 exact rational comparisons and independent ellipse identities in the
existing audit arithmetic script were rerun: all pass. In particular
A<16373/2500000<957/100000, e<3/20, radial bounds 1751/400 and 4439/400,
and gap 399/200 retain their strict/weak directions. Barycentric translation
preserves relative distances for every mu>0; its denominator is positive.
The frozen ODE predicate explicitly guards DifferentiableAt. Its Set.univ
momentum slot does not remove that guard or create a fake Newton solution.

Non-vacuity checks retain the explicit natural data of v0.3 §7: equal weights,
separated action intervals around (1,3), circular q=((1,0),(9,0)) and
p=((0,1),(0,1/3)), with small positive AMD allowances and collars; and secular
axes 26/5,191/20 with Γ=0 and saturn=3/10 or 476/1591. Small neighborhoods
also satisfy the strict geometric conditions. The conditional hstop is locally
available on short intervals by bounded action derivatives on the compact
outer region; this is a mathematical consistency check, not a Lean proof of
an exponential bound. No false-theorem refutation is claimed.

## 6. Suspected errata and adaptations

No ledger was edited; the orchestrator retains responsibility for recording
candidates. No new suspected source defect was found. Carry forward all four
items from the previous audit, without silently repairing a pin:

| Candidate / locator | Printed text | Issue / delta-audit status |
|---|---|---|
| E-P-A-N77-1, Nek77 pp.56,58 | `12.3.A` / `12.4.A` | Compactness-lemma cross-reference mismatch; p.56 label reread, p.58 verification inherited from v0.3. |
| E-P-A-N77-2, Nek77 p.56 (12.6), compare (12.8) | `T=(1/2)Σmᵢ(ẋᵢ²/2)` | Duplicate half contradicts the printed momentum derivative; both formulas visually reconfirmed. The frozen Hamiltonian independently matches LP17 (5)–(6). |
| E-N-ADD-1, Nek77 p.15 §1.18 | “the perturbation H−H₀ becomes small” | Close approaches enlarge reciprocal-distance interaction; candidate “ceases to be small.” This pass inherits the prior rendered-page verification and does not adopt a correction. |
| E-P-A-LP17-1, LP17 p.17 between (B.9),(B.10) | `{F,H₀}=0` | Unintroduced F in the K-integral argument; likely K. Text reread; unnecessary for the raw-average conservation proof. |

D-P-A1–A4 remain explicit adaptations: normalized planar separated-annulus
scope; coordinate/time/continuation and physical-geometry deductions;
eccentric-longitude realization of the exact average; and the new rational
averaged-model box and mass specialization. This delta audit introduces no
mathematical deviation. Their exact scope still awaits owner approval.

## 7. Verification and handoff receipt

Lean hard rules (verbatim):

1. **Never use `set_option maxHeartbeats`** (or any heartbeat-budget override). A default-heartbeat elaboration failure is a design signal to refactor or split the proof, not something to mask with a larger budget. If a proof will not elaborate at default heartbeats, report it as a design signal.
2. **No Lean file may exceed 1500 lines of code.** When a file approaches the cap, split it into focused modules, preserving public import paths as cheap facades.

Actual checks in `/root/code/KAM-inp`:

```text
$ nice -n 5 lake env lean .drafts/P/Additions.lean
warning: declaration uses `sorry` at 144:8, 178:8, 307:8, 339:8
Each of amdConfinement, planetaryExponentialSafety, secularBoxSafety,
secularBoxAtCitedMasses depends on:
  [propext, sorryAx, Classical.choice, Quot.sound]
exit 0; no other warnings or errors

$ nice -n 5 lake env lean .drafts/P/audit-scratch/DeltaTypeEquality.lean
Four *_type_eq declarations proved by rfl, each with axioms:
  [propext, Classical.choice, Quot.sound]
exit 0; only unused-parameter linter warnings; no sorryAx

$ python3 .drafts/P/audit-scratch/check_arithmetic.py
PASS: 15 exact rational comparisons
PASS: radius, angular momentum and Kepler-energy algebra modulo ellipse identities
exit 0

$ PYTHONDONTWRITEBYTECODE=1 scripts/lint_sources.sh
check_lean_modules: PASS (124 Lean files, 0 comparator configurations)
FROZEN-ANCHOR GUARD OK
ABI HASHES OK (94 frozen declarations)
exit 0

$ git diff --check
exit 0; no output
```

The direct draft elaboration is the targeted build for this ignored statement
artifact; no library module was changed and no whole-library build was run.
Only one direct draft/scratch elaboration was launched at a time. Lint includes
its own ABI checker. A separate code-masked check found 378 draft lines,
exactly four theorem-body placeholders, no remaining alias names, forbidden
proof escapes, forbidden ambient types or resource overrides. Scratch is 403
lines with no placeholders. An initial scratch generator split a result colon
at a line-wrapped type annotation in the cited-mass conclusion; that scratch-only
parse error was corrected and all four independent equalities then passed.
No input change or resource override was involved.

Authored files: this report; scratch `DeltaTypeEquality.lean`,
`delta-preservation.json`, `delta-type-equality.log`, and the byte-identical
N v0.4 arrival snapshot. Existing arithmetic
scratch was executed without editing. Unrelated shared-checkout blueprint
changes and concurrent commits were observed and left untouched. P was rehashed unchanged; the N v0.4 arrival was hashed and pinned after
elaboration, superseding the initial N v0.3 interface check. The last observed checkout was
`8de8c6c2ca031be15cf37bae1854e0877bc01820`; this audit is bound to the file
hashes rather than assuming the shared branch stayed fixed.

**Final disposition: READY FOR OWNER for the exact pinned P v0.4 packet.**
F-P-A1 is closed; F-P-A2 and F-NADD-4 remain explicit provider obligations;
F-P-A3 and Q-P-A1–A5 remain the ordinary owner-approval boundary. No required
P statement revision remains, and no theorem or external provider is certified
proved by this audit.
