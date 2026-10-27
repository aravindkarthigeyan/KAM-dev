# Independent statement audit: track P D22 additions, v0.3

27 October 2026. **Audit complete; exact freeze approval requires changes.**
The four mathematical claims survive the counterexample checks below. No false
rate, hidden full-horizon slow-confinement premise, physical/averaged-model
confusion, or excess headline hypothesis was found. Two conclusion bundles are
not eligible as source-definition anchors under the statement-audit protocol:
inline their bodies in the source-facing theorem statements before freezing
(F-P-A1). This is a declaration-packaging finding, not a dynamical counterexample.
The N-to-P stopped interfaces now align, subject to the explicitly unpaid analytic
coordinate bridge in §6. No theorem has been proved by this audit.

## 1. Scope, authority and immutable inputs

Permission envelope: read sources, frozen definitions and drafts; create this
report and files only under `.drafts/P/audit-scratch/`; run serial targeted Lean
elaborations and required lint. No source repairs, freezing, manifest changes,
commits, pushes, generated-document changes or provider imports were authorized
or performed. The user supplied the permission envelope; no further approval
was needed to conduct the audit. The audit uses the `lean-statement-audit`
definition/binder checks and a focused tier-2 discovery/refutation/closeout pass.
The auditor did not write the input drafts. No subagents were used.

Base commit: `6e1e22a74f6090e3cf6215fa3831f20fdd5ddbe2`.
The shared checkout advanced concurrently to
`e1048adcabc24da7efd058edfd6cf7890b14fe68`; this auditor made no commit or
other state-changing git call. Every file in the P-input-v1/N-arrival-v1
snapshot was rehashed at closeout and remained unchanged.
All P line locators below refer to **P-input-v1**, the following exact draft.
The complete file/hash receipt is `../../../.drafts/P/audit-scratch/input-snapshot.json`.
The initial P snapshot was taken before classifying findings. Track N's additions
arrived during the audit and were separately pinned as **N-arrival-v1**; the P
draft and conclusions were then checked against that exact N declaration.

| Artifact | SHA-256 |
|---|---|
| `.drafts/P/Additions.lean` | `6df42966f8abbe33f7421752f74f18d3465e0d03f38d47e13696c297bca9c585` |
| `docs/tracks/P/statement.md` | `ea9439685c97f224c4ff0983ac6b8af1538ec6e6b680587a1ad72a870df15490` |
| `docs/tracks/P/sources.md` | `d6f4722851b878f0d67178bfd9dc4b17fd7635d4ed4622effe36290bcd336819` |
| `docs/tracks/P/notes.md` | `743d9d67868045fb1ff834554a07e8f8dbfbaad6dba666a47665b9fc5146b136` |
| `.drafts/N/Additions.lean` | `f7b3278008de764bf252d5aa02f43ac9234ac79cbb63b5191931e54e4dffbc5e` |
| Nek77 English PDF | `0bfe624cf108096badd7e27fc40ca800e2948b68dce2bf8b9c653e0eaec4def6` |
| LP17 arXiv v2 PDF | `6b3c7aad2c2bf69612c0e0a65a5409f40a03e330253f8b3880f8e53d40f09361` |
| FH24 arXiv v1 PDF | `379c8b41b53a1fd50cbc890cca06d646ccd93f5c0d5e0226d1303885d2df7cf7` |

Read in full: AGENTS.md, both launch/generic audit briefs, PLAN, DECISIONS,
TRACKS, the three research rounds, the P additions statement/source/notes, and
the model K audit (including its v0.2 correction). D14 and D17–D20 govern the
existing frozen surface; D22 adopts these milestones, **not** the pending exact
answers to Q-P-A1–A5. No pending recommendation is treated as an owner ruling.

Direct source inspection used `pdftotext -layout` on Nek77 pp. 14–15, 28–30,
55–59, 62–63; LP17 pp. 2, 4, 16–17; FH24v1 p. 6. Nek77 pp. 30 and 56 were
also rendered and viewed, including a higher-resolution check of (12.6), and
p. 15 was rendered and viewed for E-N-ADD-1.
LP17 p. 17 was rendered and viewed for the reported symbol typo. These local
PDFs, rather than summaries or later source versions, are the authority here.
The work does not depend on inaccessible Niederman text or a new web search.

The new drafts have no manifest IDs or frozen/provider identity. Reused frozen
definitions were bound to the current manifest, with all 79 definition-file
SHA-256 values independently checked. The resulting ID/path/export/state/ABI
receipt is `../../../.drafts/P/audit-scratch/frozen-definitions.json`.
The required anchor and ABI checks subsequently passed for all 94 anchors.

## 2. Findings and refutation dispositions

| ID | Declaration / anchor at P-input-v1 | Severity | Finding and evidence | Exact proposed change / close criterion |
|---|---|---|---|---|
| F-P-A1 | `AMDSafeOn`, line 142; `SecularBoxConclusion`, line 295; all four theorem conclusions | major; blocks source-definition approval | These are respectively a safety **result bundle** and an entire existential theorem conclusion. In particular line 296 begins `∃ w : ℝ → Phase (2 + 2)`. LP17 p. 16 (B.5), (B.8) defines the average and supports conservation; it does not define an object named by this existential conclusion. The applicable skill explicitly rejects a “theorem-shaped predicate” or “result bundle” as a source definition. | Replace each `AMDSafeOn B mu J z` occurrence in the two physical theorem conclusions by the full conjunction at lines 145–154. Replace each `SecularBoxConclusion saturn mu w0` occurrence in the two secular theorems by the full body at lines 296–320, with literal substitution of arguments. Do not freeze either alias as a mathematical source definition. They may remain non-anchor internal notation. No premise, bound, witness or rate changes. |
| F-P-A2 | N-to-P consumption, P lines 132–139 and 159–171 | note / unpaid proof work | The newly available N draft has the correct prefix-history implication and matching exponents. This removes the initial evidence-availability issue. A declaration name or an exponent equality does not construct the physical coordinate bridge. Nek77 p. 30 has arbitrary C and the window `min[C,T]`. | No P type change is required by the checked shapes. Supply the exact analytic representation, norm bound, fixed erosions, derivative transport and ±H instantiations listed in §6. Do not replace `hstop` by confinement on the full requested horizon. |
| F-P-A3 | P-EXP-SAFE documentation, statement.md Q-P-A1–A5 | note / approval boundary | The concrete separated-annulus region, normalization, interval restriction, raw average and rational box are documented adaptations/new deductions. D22 adopts milestones; exact texts remain unapproved. | Obtain exact owner approval after this audit and any successor text. No extra theorem hypothesis is proposed. |
| E-P-A-N77-2 | Nek77 p. 56, (12.6) | minor for these drafts; suspected source erratum | The rendered kinetic energy is `T = (1/2) Σ mᵢ (ẋᵢ²/2)`, containing two factors 1/2. The same page's (12.8) gives `Pᵢ=mᵢẋᵢ+mᵢΣmⱼẋⱼ`, which instead follows from `T=(1/2)Σmᵢẋᵢ²`. | No Lean edit. Record the duplicate half in the errata ledger after orchestrator review. Retain the literal frozen moving Hamiltonian, independently matching LP17 p. 2 (5)–(6). Do not silently transcribe (12.6) as though its printed factor were correct. |

**Adversarial disposition.** F-P-A1 was challenged by expanding the aliases:
their mathematics is explicit and no hypothesis is concealed by them. Thus this
finding is **only** the skill's source-definition eligibility failure; it is not
EXCESS, vacuity, a missing existence proof in a literal integral definition, or a
counterexample. Expansion removes the procedural defect without altering the
propositions. The alternative of approving them as independently sourced objects
does not meet that rule. F-P-A2 was rechecked when N arrived, rather than retaining
the stale claim that N was missing. E-P-A-N77-2 survived a fresh high-resolution
page inspection and differentiation of the two possible kinetic energies.
These refutation passes were performed by this auditor, not a second reviewer.

## 3. Verdict for every declaration

“APPROVABLE” is statement-level and conditional on ordinary owner approval;
it never means proved or frozen. For literal definitions, each APPROVABLE row has
BODY_MATCH=OK, PUBLIC_CARRIER=OK, WELL_DEFINEDNESS=N/A_LITERAL,
CHARACTERIZATION=N/A_LITERAL, CHOICE_INDEPENDENCE=N/A, DEFINITION_VERDICT=PASS.
No definition chooses a witness or uses a hand-written default branch.
The two excluded result aliases have the separate diagnostics below the table.

| Declaration (line) | Verdict | Body/source or mathematical check |
|---|---|---|
| `planeCross` (41) | APPROVABLE | Signed planar determinant; LP17 (9). |
| `keplerEnergy` (44) | APPROVABLE | LP17 (7), Gm₀=1, after the stated mass/momentum scaling. |
| `keplerAxis` (48) | APPROVABLE | `−m/(2E)`, physical use only at E<0 and m>0. |
| `keplerAction` (52) | APPROVABLE | `m√a`, physical radians; LP17 (10). |
| `keplerEccVector` (56) | APPROVABLE | Runge–Lenz expression; also matches LP17 p. 16 (A.1), with velocity p/m. |
| `totalMomentum` (64) | APPROVABLE | Angular, not linear, momentum; LP17 (9). Naming is explicit in its docstring. |
| `physicalAMD` (68) | APPROVABLE | `ΣΛ−J`; not asserted to be a full-system integral. |
| `ProgradeElliptic` (72) | APPROVABLE | Positive mass/radius, negative Kepler energy, positive signed angular momentum. |
| `LowAMDRegion` (77) | APPROVABLE | Literal strict action/deficit region, including circular data. |
| `AMDBox` (82) | APPROVABLE | Record of fixed geometric data, not a theorem witness. |
| `AMDBox.Admissible` (96) | APPROVABLE | Explicit geometric standing conditions; expanded in §4. |
| `IsMovingSolutionOn` (108) | APPROVABLE | Genuine frozen differentiability-guarded Hamilton equations plus collision exclusion. |
| `IsNewtonSolutionOn` (115) | APPROVABLE | Literal finite-interval version of frozen Newton equations at G=1. |
| `MovingUniqueOn` (125) | APPROVABLE | Agreement on overlap with open convex local intervals containing 0. |
| `StoppedActionBound` (132) | APPROVABLE as the D22 conditional-helper interface | Every finite [l,r] containing 0, including one-sided intervals; the estimate is restricted to its intersection with [−T,T]. Not a new source theorem proved by defining a Prop. |
| `AMDSafeOn` (142) | REJECT as a source-definition anchor | F-P-A1; its expanded conclusion is mathematically acceptable. |
| `amdConfinement` (159) | APPROVABLE WITH CHANGES | Inline the safety conclusion, F-P-A1. A distinctly conditional helper; no claim that `hstop` has already been paid. |
| `planetaryTimeExponent` (174) | APPROVABLE | Nek77 (12.4), fast planet count n. |
| `planetaryDriftExponent` (177) | APPROVABLE | Nek77 (12.5), b=3a/2. |
| `planetaryExponentialSafety` (182) | APPROVABLE WITH CHANGES | F-P-A1; otherwise source-faithful adaptation of Thm 12.3 plus the stated physical deductions. |
| `quarterTurn` (196) | APPROVABLE | Counterclockwise oriented quarter turn. |
| `orbitalUnit` (199) | APPROVABLE | Radian unit vector. |
| `secularGamma` (202) | APPROVABLE | Frozen oscillator action `(ξ²+η²)/2`; argument order is harmless by symmetry. |
| `secularAMD` (206) | APPROVABLE | Sum of the two nonnegative Γ. |
| `secularRoot` (209) | APPROVABLE | `1−Γ/Λ`; equals the positive elliptic root on the guarded chart. |
| `secularEccVector` (214) | APPROVABLE | Regular Cartesian eccentricity vector, norm squared `2Γ/Λ−Γ²/Λ²`. |
| `secularAxis` (219) | APPROVABLE | `(Λ/m)²` in the zero-coupling chart. |
| `keplerMeanLongitude` (224) | APPROVABLE | `F−k sin F+h cos F`; no inverse choice. |
| `longitudeJacobian` (228) | APPROVABLE | Its derivative `1−k cos F−h sin F`; positive on Γ<Λ. |
| `ellipsePosition` (233) | APPROVABLE | Regular rewriting of the prograde Kepler ellipse, including e=0. |
| `ellipseMomentum` (241) | APPROVABLE | Correct time derivative of that ellipse times m; independent algebra checks in §7. |
| `ellipsePhase` (249) | APPROVABLE | Inverse of frozen `bodyVector` indexing, same `finProdFinEquiv`. |
| `secularIntegrand` (257) | APPROVABLE | Entire frozen Hμ times the product Jacobian; indirect term retained. |
| `exactSecularHamiltonian` (264) | APPROVABLE | Literal LP17 (B.5) mean-angle integral under the stated change of variables; no picked chart/solution. |
| `SecularRegular` (269) | APPROVABLE | Explicit regular-domain guards; the box theorem concludes them. |
| `jupiterSaturnWeights` (280) | APPROVABLE | Literal weights (1,s). |
| `SecularInputBox` (284) | APPROVABLE | Nine explicit input clauses, no assumed regularity of the integral or assumed conservation. |
| `SecularBoxConclusion` (295) | REJECT as a source-definition anchor | F-P-A1; literal existential result bundle rather than a source object. |
| `secularBoxSafety` (325) | APPROVABLE WITH CHANGES | Inline the result bundle, F-P-A1. Underlying averaged-model assertion passes the checks below. |
| `secularBoxAtCitedMasses` (333) | APPROVABLE WITH CHANGES | Same expansion; exact mass membership and product verified. |

For `AMDSafeOn` and `SecularBoxConclusion` separately:
BODY_MATCH=FAIL **as a source-defined object** (the bespoke conjunction itself
agrees with statement.md); PUBLIC_CARRIER=OK; WELL_DEFINEDNESS=N/A_LITERAL;
CHARACTERIZATION=N/A_LITERAL; CHOICE_INDEPENDENCE=N/A;
DEFINITION_VERDICT=FAIL. This does not demand an existence theorem before
defining a literal integral or before stating any of the four theorems.

## 4. Binder classification, with recursive expansion

Bins: SOURCE = the cited mathematical input; STANDING = fixed physical/geometric
or model data, independently expanded below; TYPING = type/index/positive-radius
bookkeeping; RULED = the expressly adopted D22 conditional-helper or dimension
scope; EXCESS = any additional produced result smuggled in as a premise.
The fine geometric choices are standing data for the proposed specialization,
not a claim that Q-P-A1–A5 have already been approved. Numeric box conditions are
new explicitly stated data, not quotations of an LP17 theorem.

### `amdConfinement`

| Binder | Bin | Evidence / meaning |
|---|---|---|
| implicit `n : ℕ` | TYPING | Finite planet count. |
| `hn : 2 ≤ n` | RULED | D22 planar planetary milestone; matches Nek77 s≥2. |
| `B : AMDBox n` | STANDING | Fixed region, round 2 §2 and statement.md physical conventions. |
| `hB : B.Admissible` | STANDING | Fifteen geometric clauses B1–B15 below. |
| `mu : ℝ` | SOURCE | Planetary mass parameter, LP17 (4)–(7) after scaling. |
| `T : ℝ` | RULED | Prescribed finite duration of the D22 deterministic helper. |
| `delta : ℝ` | RULED | Prescribed allowed action displacement of that helper. |
| `hmu : 0 < mu` | SOURCE | Positive physical masses. |
| `hT : 0 < T` | TYPING | Nondegenerate certified interval. |
| `hdelta : 0 < delta` | TYPING | Positive displacement scale. |
| `hmargin` | STANDING | Two action collar conditions M1–M2 below, round 2 §2 lemma 5. |
| `hAMD` | STANDING | A₀+2nδ<A₁, same first-exit margin. |
| `z0` | SOURCE | Actual Cartesian initial datum. |
| `hz0` | STANDING | Seven initial-region clauses Z1–Z7 below. |
| `hstop` | RULED | The one expressly conditional analytic input of P-AMD-CONFINEMENT, D22 and round-3 correction. Full expansion S below. |

Top-level counts: SOURCE 3, STANDING 5, TYPING 3, RULED 4, EXCESS 0 (15 binders).
`hstop` is conclusion-shaped by design in this **separately named conditional
helper**. It is not allowed as a premise of P-EXP-SAFE and does not occur there.

### `planetaryExponentialSafety`

Existential constants occur after the first four binders. The five subsequent
universal inputs are still included in the audit.

| Binder | Bin | Evidence / meaning |
|---|---|---|
| implicit `n` | TYPING | Fast action/planet count. |
| `hn` | RULED | D22, n≥2. |
| `B` | STANDING | Same fixed physical geometry. |
| `hB` | STANDING | B1–B15, with no dynamical premise. |
| `mu` | SOURCE | Nek77 Thm 12.3, pp. 55–56. |
| `0 < mu` | SOURCE | Same source mass interval. |
| `mu < muStar` | SOURCE | Same asymptotic smallness condition. |
| `z0` | SOURCE | Every initial datum, Thm 12.3. |
| `z0 ∈ LowAMDRegion ...` | STANDING | Z1–Z7; sufficient low-AMD specialization of source domains. |

Counts: SOURCE 4, STANDING 3, TYPING 1, RULED 1, EXCESS 0 (9 inputs).
`muStar,c,C` and their positivity are existential outputs, not premises.

### `secularBoxSafety` and `secularBoxAtCitedMasses`

| Theorem / binder | Bin | Evidence / meaning |
|---|---|---|
| safety: `saturn` | SOURCE | Fixed positive planetary weight, LP17 §2.1. |
| safety: `mu` | SOURCE | Fixed planetary mass parameter in the literal Hμ. |
| safety: `hsaturn` | STANDING | Explicit interval [29/100,31/100], round 2 §3; two endpoint inequalities. |
| safety: `hmu` | SOURCE | Positive planetary mass. |
| safety: `w0` | SOURCE | Arbitrary initial point of the specified secular Hamiltonian. |
| safety: `hw0` | STANDING | C1–C9 below, the chosen illustrative box. |
| cited masses: `w0` | SOURCE | Same arbitrary initial point. |
| cited masses: `hw0` | STANDING | C1–C9 at s=476/1591, FH24v1 §4 p. 6. |

Safety counts: SOURCE 4, STANDING 2, TYPING 0, RULED 0, EXCESS 0 (6 inputs).
Cited-masses counts: SOURCE 1, STANDING 1, TYPING 0, RULED 0, EXCESS 0 (2 inputs).
All function-space, finite-index, topology and measure instances are canonical
fixed instances; no extra instance hypothesis is abstracted by these theorems.

### Expansion of every bundled standing premise

Each row is one logical input, with its displayed finite-index universal
quantifiers; indices themselves are TYPING. There is no hidden flow, estimate,
analytic norm, coordinate map, integrability theorem or conservation premise.

| ID | Expanded input | Bin | Source / standing locator |
|---|---|---|---|
| B1 | ∀i, 0<B.mass i | STANDING | LP17 §2.1 positive masses; fixed geometry. |
| B2 | ∀i, 0<B.lower i | STANDING | Round 2 §2 positive action box. |
| B3 | ∀i, lower i<innerLower i | STANDING | Same nested boxes. |
| B4 | ∀i, innerLower i<innerUpper i | STANDING | Same nonempty initial box. |
| B5 | ∀i, innerUpper i<upper i | STANDING | Same outer margin. |
| B6 | 0<ecc | STANDING | Fixed eccentricity ceiling. |
| B7 | ecc<1 | STANDING | Elliptic ceiling, LP17 (10)–(11). |
| B8 | 0<initialAMD | STANDING | Round 2 §2 positive initial allowance. |
| B9 | initialAMD<outerAMD | STANDING | Same strict slow collar. |
| B10 | ∀i, outerAMD<lower i·(1−√(1−ecc²)) | STANDING | LP17 AMD plus round 2 §2 per-planet estimate. |
| B11 | 0<distance | STANDING | Chosen separation scale. |
| B12 | 0<radius | STANDING | Chosen radius bound. |
| B13 | ∀i, distance≤(lower i/mass i)²(1−ecc) | STANDING | Perihelion sufficient bound. |
| B14 | ∀i, (upper i/mass i)²(1+ecc)≤radius | STANDING | Aphelion sufficient bound. |
| B15 | ∀i j, i<j → (upper i/mass i)²(1+ecc)+distance≤(lower j/mass j)²(1−ecc) | STANDING | Radial separation; LP17 (26), stronger sufficient geometry. |
| M1 | ∀i, lower i+2δ<innerLower i | STANDING | Round 2 §2 first-exit collar. |
| M2 | ∀i, innerUpper i+2δ<upper i | STANDING | Same. |
| Z1 | ∀i, 0<mass i | STANDING | ProgradeElliptic; repeats B1, no additional result. |
| Z2 | ∀i, 0<|qᵢ|₂ | STANDING | Physical Kepler domain, LP17 (7). |
| Z3 | ∀i, Eᵢ<0 | STANDING | Elliptic Kepler domain. |
| Z4 | ∀i, qᵢ×pᵢ>0 | STANDING | Chosen planar prograde component. |
| Z5 | ∀i, innerLower i<Λᵢ | STANDING | Initial action box. |
| Z6 | ∀i, Λᵢ<innerUpper i | STANDING | Initial action box. |
| Z7 | ΣΛᵢ−J<initialAMD | STANDING | Low initial deficit, LP17 (11). |
| C1 | ∀i, 0<Λᵢ | STANDING | Positive secular actions. |
| C2 | ∀i, 0≤Γᵢ | STANDING | Literal oscillator square sum; redundant but true. |
| C3 | ∀i, Γᵢ<Λᵢ | STANDING | Prograde elliptic chart. |
| C4 | 103/20≤aJ | STANDING | Round 2 §3 fixed input box. |
| C5 | aJ≤21/4 | STANDING | Same. |
| C6 | 189/20≤aS | STANDING | Same. |
| C7 | aS≤193/20 | STANDING | Same. |
| C8 | eJ≤3/50 | STANDING | Same. |
| C9 | eS≤7/100 | STANDING | Same. |

After replacing the bundled standing premises by these rows (and splitting
hsaturn and hmargin), the four tables count respectively 36, 29, 15 and 10
outer logical inputs: SOURCE/STANDING/TYPING/RULED/EXCESS =
`3/26/3/4/0`, `4/23/1/1/0`, `4/11/0/0/0`, `1/9/0/0/0`.
`hAMD` remains its one displayed standing inequality.

### S: complete stopped-input contract, including its own premise binders

This expands the single RULED `hstop`, rather than misclassifying its internal
local-solution hypotheses as additional assumptions of a physical headline.

| Internal binder/input | Bin | Justification |
|---|---|---|
| `l : ℝ` | TYPING | Local left endpoint. |
| `r : ℝ` | TYPING | Local right endpoint. |
| `z : ℝ → Phase (n*2)` | TYPING | Supplied candidate segment. |
| `l ≤ 0` | TYPING | Initial time in segment. |
| `0 ≤ r` | TYPING | Initial time in segment. |
| `l < r` | TYPING | Positive segment length; [0,r] and [l,0] allowed. |
| `z 0=z0` | SOURCE | Source local solution through initial point. |
| ∀t∈[l,r], `(z t).2∈univ` | TYPING | Frozen action-domain slot, tautological here. |
| ∀t∈[l,r], `DifferentiableAt ℝ Hμ (z t)` | STANDING | Genuine physical vector field, collision-free domain. |
| ∀t∈[l,r], `HasDerivAt z (X_Hμ (z t)) t` | SOURCE | Literal actual Hamilton equations, Nek77 §4.3.C. |
| ∀t∈[l,r], ∀i, `0<|qᵢ(t)|₂` | STANDING | Local collision-free physical chart. |
| ∀t∈[l,r], ∀i≠j, `0<|qᵢ(t)−qⱼ(t)|₂` | STANDING | Same, planet pairs. |
| ∀t∈[l,r], ∀i, `0<mᵢ` | STANDING | Outer ProgradeElliptic, Z1. |
| ∀t∈[l,r], ∀i, `0<|qᵢ(t)|₂` | STANDING | Outer ProgradeElliptic, Z2, redundant. |
| ∀t∈[l,r], ∀i, `Eᵢ(t)<0` | STANDING | Outer ellipticity, Z3. |
| ∀t∈[l,r], ∀i, `qᵢ(t)×pᵢ(t)>0` | STANDING | Outer prograde component, Z4. |
| ∀t∈[l,r], ∀i, `lower i<Λᵢ(t)` | STANDING | Outer box, Z5 with lower. |
| ∀t∈[l,r], ∀i, `Λᵢ(t)<upper i` | STANDING | Outer box, Z6 with upper. |
| ∀t∈[l,r], `A(t)<outerAMD` | STANDING | Outer slow-domain test, Z7 with outerAMD. |

Counts within this conditional contract: SOURCE 2, STANDING 10, TYPING 7,
RULED 0, EXCESS 0 (19 premise slots). Its conclusion quantifies `t` and `i`
(TYPING) with `t∈[l,r]∩[−T,T]` (the output window), and bounds the literal
action difference by δ. Those are output quantifiers, not new premises.
No segment is assumed to last until T. Restricting every tested segment to the
outer domain is the stopped interface, not the conclusion of P-EXP-SAFE.

## 5. Source fidelity and truth checks

### Physical system, first exit and constants

Expanding the frozen moving Hamiltonian at G=m₀=1 gives exactly

    Σ (|pᵢ|₂²/(2mᵢ) − mᵢ/|qᵢ|₂)
      + μ (|Σpᵢ|₂²/2 − Σᵢ<ⱼ mᵢmⱼ/|qᵢ−qⱼ|₂).

This was also checked in Lean for two planets with arbitrary q,p,m,μ. It
includes the self and cross indirect kinetic terms. Scaling actual momenta
by μ and the Hamiltonian by μ leaves the time variable unchanged. Frozen
barycentric velocities are `V₀=−μΣpᵢ` and `Vᵢ=pᵢ/mᵢ`; differentiating the
frozen barycentric positions using `q̇ᵢ=pᵢ/mᵢ+μΣpⱼ` gives these same velocities.
The acceleration reconstruction is the Newton force at actual masses
`(1,μm₁,…,μmₙ)`. No frozen definition is being reinterpreted as a heliocentric
velocity or as a fixed-Sun problem.

On ProgradeElliptic, let r=|q|₂, v=p/m and L=q×p. Direct Kepler identities give
`e²=1+2E L²/m³`, `a=−m/(2E)>0`, `L=Λ√(1−e²)>0`, and
`a(1−e)≤r≤a(1+e)`. The energy-angular-momentum identity also gives e²≥0;
these imply e<1. Thus AMD has nonnegative per-planet summands. On the low-AMD
region B10 bounds each e strictly below the stipulated ceiling. All-pairs
annulus ordering supplies separation independently of the phases.

Rotational invariance of every term of the actual Hμ gives **exact** constancy
of J=Σq×p. Consequently `A(t)−A(0)=Σ(Λᵢ(t)−Λᵢ(0))`, so the stopped estimate
gives `A(t)<A₀+nδ<A₁`. Both signs of every action displacement are allowed.
The action collars improve the outer inequalities by at least δ, and the AMD
collar improves by at least nδ. The closure of the improved region is compact
in Cartesian phase space, away from collisions, E=0, zero radius and zero
signed individual angular momentum. Bounded velocity and local uniqueness
there give continuation, including the endpoints. There is no maximum-norm
substitution in the gravitational potential or force.

Nek77 p. 56 (12.4) gives `a=2/(6s²−3s+14)`, and (12.5) gives `b=3a/2`.
At n=2 these are **1/16 and 3/32**, checked in Lean, not 1/4. Its literal
time is `(C₁μ)⁻¹ exp((C₁μ)⁻ᵃ)`. Choosing positive `c<C₁⁻ᵃ` and shrinking
μ* yields the requested smaller horizon. For n≥2, 0<b<1, so an O(μ)
coordinate correction is absorbed in Cμᵇ at sufficiently small μ. This changes
constants, not the exponent. Negative time follows from the sign-reversed
Hamiltonian stopped theorem, or the reversible physical system; no prograde
time-reversal assumption is inserted into the statement.

The source B(α,β,γ) domains are not literally the entire AMDBox. Near each
point of the compact closure of the initial region, take narrow source axis
intervals and γ below its angular momentum. Strict AMD and radial slack put γ
above the collision threshold γ₀. A finite subcover gives uniform constants;
the O(μ) barycentric/heliocentric-canonical element comparison is on a larger
compact region. Nek77 pp. 58–59, Lemmas 12.4.C–E, and pp. 62–63 supply the
coordinate/continuation route. These are adaptations requiring proof, not
additional theorem hypotheses or a claim that the source literally states our
Cartesian conclusion. Nothing here shows the realistic μ is below μ*.

### Literal secular model and quantifiers

The argument order of frozen `assemble` is `(I,phi,p,q)` and its result is
`(phi,q;I,p)`. Substitution into `secularAverage` therefore really produces
`(λ,ξ;Λ,η)` with the slow slots in the order advertised. Four Lean projection
checks verify this, and another checks the exact double-integral normalization.
λ is a radian angle conjugate to Λ. Period-one θ requires conjugate action
2πΛ; it cannot retain Λ unchanged.

On Λ>0 and 0≤Γ<Λ, put s=1−Γ/Λ>0 and v=secularEccVector. Then
`|v|₂²=1−s²<1`. The eccentric-longitude map is strictly monotone with
`dλ/dF=1−v·u(F)>0`. Rewriting the ordinary ellipse in a rotated frame yields
the two displayed q,p formulas; the momentum coefficient `m²/Λ` and the
positive Jacobian denominator are correct. Independent symbolic polynomial
checks verify the radius `a(1−v·u(F))`, angular momentum `Λs`, and energy
`−m/(2a)`. The q,p chart's full symplectic/change-of-variables proof remains
provider work; it is not replaced by these algebra checks. The sign is
consistent with the rotation generator `ΣΛ−ΣΓ` in the frozen Hamiltonian
convention, including circular points.

The exact weighted F-integral is the **unweighted λ-average** by substitution,
not a truncation of Hμ. LP17 p. 16 (B.5) fixes `(2π)⁻²`; (B.8) supports the
commutation of averaging with the angular-momentum bracket. Independence of λ
fixes Λ and rotational invariance fixes ΣΓ. The protected box provides an
open analytic neighborhood of every reconstructed phase configuration. Thus
integrability and differentiability are conclusions to prove from the box;
no unguarded zero-valued Bochner integral or fderiv is being accepted instead.

The exact rational checks give

    ΛJ<23/10,  ΛS<97/100,  ΛJ,ΛS>87/100,
    A<16373/2500000<957/100000,
    eᵢ<3/20,
    radius ≥1751/400, radius ≤4439/400, radial gap ≥399/200.

The Sun-planet lower radius exceeds 399/200, and the triangle inequality bounds
each pair above by 4439/200. Barycentric translation preserves all these
pair differences, for **any μ>0**. The fast actions and total Γ are constant,
so the slow coordinates stay in a compact protected set. The lifted λ may
grow, but the vector field is periodic/independent in λ and bounded on the
protected quotient; bounded angle speeds give an all-time lifted solution.
Large μ changes those speeds, not the conservation-based confinement argument.

FH24v1 p. 6 supplies the two decimal **model** masses. Exactly
`(4773/5000000)(476/1591)=357/1250000`, and 476/1591 lies in the displayed
Saturn-weight interval. No observational uncertainty, physical-year
conversion, averaged-to-Newton trajectory theorem, or single-torus certificate
is used or claimed.

Every physical headline quantifies over **every** datum in its specified
region. No exceptional-set or probability quantifier is hidden or needed.
The secular theorem is explicitly an actual solution of its **averaged**
Hamiltonian, whereas the full-system theorems include literal finite-interval
Newton equations. Those are different, correctly stated model claims.

## 6. Exact N-to-P compatibility and the first unpaid bridge

The checked N export is `KAM.Nekhoroshev.partialConvex_nekhoroshev` in
N-arrival-v1. Its conclusion is, writing ε for its parameter to distinguish it
from physical μ,

    ∀ C>0, ∀ actual solution w on [0,C],
      I(0)∈innerCore G εᵇ →
      ∀ t∈[0,min(C, ε⁻¹ exp(ε⁻ᵃ))],
        (∀ u∈[0,t], slow(w(u))∈innerCore D εᵇ) →
        ‖I(t)−I(0)‖∞≤εᵇ/2.

Thus P's test on an arbitrary [l,r] lying in its **outer** LowAMDRegion is
sufficient. It does not require an assumption of slow survival on [0,T].
Apply N on [0,r] and, separately, to −H on [0,−l]. The t=0 case is immediate.
N's extra requirement that fast actions remain in G on the supplied segment
is furnished by P's outer action box on that segment, not by the desired
whole-horizon conclusion. Choose N's n=number of planets and k=n slow pairs;
its n≥2 and k≥1 conditions include the two-planet case. Both sides use the
same `(fast angles,slow positions;fast actions,slow momenta)` order. N's
`degenerateHamiltonian` and period-2π `fastShift` have their frozen meanings.
N's `IsSolutionOn` and the reused Iso ODE predicate have identical derivative
semantics; only the explicit momentum-domain slot must be supplied.

N's rate definitions are equal to P's rates (one by `rfl`, one by `ring`,
checked in scratch). The N threshold is chosen **after** G,D,ρ,g,m,Mcomplex,h,
holomorphy, complex C², realness, the complex Hessian bound and definite-fast
data. There is no F-N1 uniform-complex-bound omission in that ordering.
N allows either global Hessian sign. For the literal fixed Kepler h,

    h(Λ)=−Σmᵢ³/(2Λᵢ²),
    ∂ᵢh=mᵢ³/Λᵢ³,  D²h=diag(−3mᵢ³/Λᵢ⁴),

positive lower frequency, negative definiteness and a complex Hessian bound
follow on a sufficiently small enlargement of a fixed positive action box.
They must be proved there; no real derivative bound is substituted for the
complex bound. The complex-strip/max-norm conventions change constants, not
the planet count or exponents.

The still-unpaid bridge must actually construct and prove all of the following:

1. A circular-regular analytic canonical Kepler/Poincaré coordinate map for the
   literal moving Hμ, with time and fast actions transported exactly.
2. Fixed larger G,D and a complex width ρ, whose inner cores contain the entire
   physical outer box after mapping. The slow domain can be an AMD ball, not
   necessarily a product of independent per-planet disks. Choose the larger
   domain so every independent combination of allowed fast/slow variables
   remains separated; merely checking a non-product image is insufficient.
3. A fixed K≥1 with the full perturbation bounded by Kμ on that complex
   domain, and the realness/periodicity hypotheses of `IsPartialPerturbation`.
   Use ε=Kμ and the value-norm form permitted by Nek77 Remark 4.5.A.
4. Exact transport of Hamiltonian solutions, their differentiability guards
   and their lifts, on **each tested finite segment**. Do this for both H and
   −H and take the smaller threshold. Use erosion margins only on the segment
   under test. No global flow or whole-horizon slow confinement is an input.
5. For sufficiently small physical μ, select
   `delta=(Kμ)ᵇ/2` and `T=exp(cμ⁻ᵃ)` with
   `T≤(Kμ)⁻¹exp((Kμ)⁻ᵃ)`. Shrink μ* to fit the fixed fast/slow erosions and
   both action/AMD collars. The max-norm action estimate implies every scalar
   action inequality in `StoppedActionBound`.

If a different μ-dependent chart is used, its action comparison errors must be
added to δ and its time transport proved, rather than assumed. Once the five
items are proved, N supplies **exactly** `hstop` and the deterministic helper
closes the physical bootstrap. This audit verifies compatible statement shapes
and exponent identities; it does **not** claim a Lean term constructing the
unimplemented analytic bridge from current library providers. No N-HEAD-C
substitution (wrong degeneracy and n≥3 scope) is permitted. The broader truth
audit of N's averaging additions is outside this report.

## 7. Junk values, non-vacuity and attempted refutations

| Potential failure | Guard / result |
|---|---|
| Zero mass, zero radius, E=0, negative sqrt input | Physical use has m>0, r>0, E<0. Actions therefore have positive square-root arguments. ProgradeElliptic rules out zero signed angular momentum. |
| Totalized reciprocal in the barycentric map | `1+μΣm>0` for positive masses and μ. |
| Totalized derivatives at singularities | Iso's predicate requires genuine differentiability at every visited point; full physical solutions also exclude collisions. Secular conclusions include `SecularRegular` at every visited point. |
| Bochner integral default zero | The input box gives strict radial separation for all phases; the compact integral is integrable and locally analytic there. Integrability is explicitly in the conclusion, not a hidden premise. |
| Γ=0 / circular initial data | Regular formulas require no perihelion inverse; Γ=0 gives v=0, Jacobian 1, q=a·u and p=(m²/Λ)·Ju. |
| Γ near Λ | The input eccentricity ceilings and positive Λ exclude the singular limit; conservation retains a strict stronger margin. |
| μ=0 or negative real powers | Both rate theorems' physical uses require μ>0. μ=0 is not silently included in a negative rpow. |
| Closed certified endpoints | HasDerivAt is two-sided. Local continuation on the protected open physical region extends the solution slightly past both endpoints; this is stronger than a mere within-interval derivative and is attainable. |
| Unbounded lifted angles | No conclusion bounds the lifts. Periodicity and bounded speeds suffice for completeness. |
| Arbitrary far inertial origin | Bounds are on relative positions in the reconstructed center-of-mass frame. |
| Sign-coherent action drift / initial data near a box boundary | The factor-two collars leave strict action and AMD room even when all action changes have the worst sign. |
| Restricted massless asteroid / μ-dependent hierarchical counterexample | Positive fixed weights and fixed B exclude those families; constants are not advertised as uniform in vanishing weights or moving boxes. |

**Natural physical data.** For two equal weights, choose lower=(9/10,14/5),
innerLower=(19/20,29/10), innerUpper=(21/20,31/10), upper=(11/10,16/5),
ecc=1/10, initialAMD=1/1000, outerAMD=1/500, distance=1/10, radius=12.
These satisfy every admissibility inequality: the smallest AMD threshold is
`(9/10)(1−√(99/100))>1/500`. Take circular Cartesian data q₁=(1,0),
p₁=(0,1), q₂=(9,0), p₂=(0,1/3). Then actions=(1,3), AMD=0 and the
initial region has an open neighborhood around that point. It is nonempty
for every positive μ. For the deterministic helper take δ=1/10000; all
action and AMD collars hold. A uniform bound on `dΛ/dt` on the compact outer
region gives `hstop` for sufficiently small positive T, for every tested
solution segment by integrating that derivative bound. This is a standard
local ODE non-vacuity argument, not a formally proved exponential estimate.

**Natural secular data.** Choose s=3/10 (or 476/1591), μ>0 arbitrary, axes
aJ=26/5 and aS=191/20, Λᵢ=mᵢ√aᵢ, and ξ=η=0. All nine input clauses hold
for any lifted mean longitudes. Strict axis/eccentricity slack also gives a
nonempty open family. This is an actual illustrative model box, with no
assertion that every observation lies in it.

No mathematical counterexample survived these tests; hence no Lean proof of
a negated source theorem is claimed. Scratch proofs instead verify exact
normalizations, coordinate projections, algebra and the one-sided stopped
application. Missing future analytic/ODE proofs remain proof obligations,
not theorems certified by numerical experiments.

## 8. Errata and declared adaptations for the orchestrator

No ledger or source was edited. Carry forward these directly checked defects:

| ID / locator | Literal evidence | Why / proposed interpretation |
|---|---|---|
| E-P-A-N77-1, p. 56 vs p. 58 | `12.3.A` vs `12.4.A` | Same compactness lemma is printed with the former label and cited with the latter. Use page/title plus the printed label; numbering only. |
| E-P-A-N77-2, p. 56 (12.6) | `T=(1/2)Σmᵢ(ẋᵢ²/2)` | Duplicate half, independently contradicted by the printed momentum formula (12.8). Remove one half only in an explicitly recorded erratum; do not mutate the pin. |
| E-N-ADD-1, p. 15 §1.18, already noted in N's source packet | “the perturbation H−H₀ becomes small” | In the context of bodies approaching one another, the reciprocal-distance interaction becomes large. Read as “ceases to be small”; not used as an analytic assumption. Text layer and rendered page checked here. |
| E-P-A-LP17-1, p. 17 between (B.9)–(B.10) | `{F,H₀}=0` | F is unintroduced in that argument; K is the integral and the surrounding brackets use K. Rendered-page verified. Read K. The draft only needs the earlier (B.5), (B.8) and direct rotational invariance. |

The p. 15 item remains a suspected defect, not a newly adopted correction.
The source's later §1.19 historical
wording is not needed for any mathematical contract audited here.

Retained deviations/adaptations D-P-A1–A4 are explicit: planar prograde fixed
separated annuli with G=m₀=1; canonical element transfer; a smaller symmetric
time window and explicit uniqueness/Newton/relative-distance conclusions;
the eccentric-longitude representation of the exact mean-angle integral;
and a new elementary rational averaged-model specialization at cited decimal
parameters. They do not claim novelty for Nek77's all-data theorem or upgrade
the secular model to a realistic-mass full-system certificate. F-P-A1 proposes
only conclusion expansion; no mathematical deviation was introduced by this
auditor. Exact choices still await the owner's Phase-0 approval.

## 9. Verification receipt and closeout

Lean hard rules (verbatim):

1. Never use `set_option maxHeartbeats` (or any heartbeat-budget override). A default-heartbeat elaboration failure is a design signal to refactor or split the proof, not something to mask with a larger budget. If a proof will not elaborate at default heartbeats, report it as a design signal.
2. No Lean file may exceed 1500 lines of code.

Commands ran in `/root/code/KAM-inp`, at default Lean resource budgets,
with one targeted Lean elaboration at a time:

```text
$ nice -n 5 lake env lean .drafts/P/Additions.lean
.drafts/P/Additions.lean:159:8: warning: declaration uses `sorry`
.drafts/P/Additions.lean:182:8: warning: declaration uses `sorry`
.drafts/P/Additions.lean:325:8: warning: declaration uses `sorry`
.drafts/P/Additions.lean:333:8: warning: declaration uses `sorry`
exit 0
```

Each of the four draft main results printed exactly
`[propext, sorryAx, Classical.choice, Quot.sound]` as its axiom dependencies.
That is DRAFT/UNAPPROVED/UNPROVED, not proof closure. Their source fidelity is
mathematically acceptable subject to F-P-A1's surface change; draft-placeholder
allowance PASS under the task-specific additions brief. They have no frozen
anchor state. Four theorem placeholders do not authorize any library sorry.

```text
$ nice -n 5 lake env lean .drafts/P/audit-scratch/DefinitionsChecks.lean
#print axioms for each of the 35 copied P definitions:
  [propext, Classical.choice, Quot.sound]
exit 0; no errors, warnings or sorryAx

$ python3 .drafts/P/audit-scratch/check_arithmetic.py
PASS: 15 exact rational comparisons
PASS: radius, angular momentum and Kepler-energy algebra modulo ellipse identities
exit 0

$ scripts/lint_sources.sh
check_lean_modules: PASS (124 Lean files, 0 comparator configurations)
FROZEN-ANCHOR GUARD OK
ABI HASHES OK (94 frozen declarations)
exit 0
```

The scratch module was generated from the pinned P draft by removing only the
four theorem commands/axiom-print commands, turning residual doc comments into
ordinary comments, and appending checks. All 35 definition commands plus the
AMDBox structure were mechanically compared with the draft after masking
comments/whitespace: identical. It additionally contains the two exact N
exponent formulas for the compatibility checks. P draft: 345 lines, four
theorem-body sorry tokens; scratch: below 1500 lines, no sorry. All declaration
axiom checks are for the exact copied definitions, not invented substitutes.
Early scratch-only projection/doc-comment errors were corrected; the original
P draft itself elaborated without errors. No heartbeat or recursion/synthesis
budget was changed.

The required direct draft elaboration is the targeted build for this untracked
artifact; no changed library module exists to pass to `lake build`. There was
no whole-project build, clean, update or cache fetch. Lint excludes `.drafts/`,
so a separate code-masked sweep checked forbidden proof escapes/resource
commands and file lengths. The lint/import machinery changed a tracked Python
bytecode cache; its exact HEAD bytes were restored using read-only `git show`,
leaving no cache change at that check. Concurrent `blueprint-I/`, `blueprint-N/`
and later `blueprint-P/` files were observed and left untouched.

Audit closeout: all 40 declarations classified (35 definitions, one structure,
four theorems); every theorem's premises expanded; source exponents, norm and
time scaling checked; 15 rational comparisons independently reproduced;
physical/averaged-model and all-data quantifiers checked; frozen reuse checked;
N-to-P shape checked against its separately pinned arrival; axiom status
reported; findings and suspected errata handed off. No mathematical repair,
owner approval, N proof audit, coordinate-bridge implementation, physical-year
certificate, or theorem proof closure is claimed. **The audit report is
complete; source-definition freeze eligibility remains blocked by F-P-A1.**
