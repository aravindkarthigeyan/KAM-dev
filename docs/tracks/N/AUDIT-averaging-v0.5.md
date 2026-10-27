# Independent statement audit: N-AVERAGING v0.5

27 October 2026. **READY FOR OWNER.** All four declarations in the pinned
`.drafts/N/Averaging.lean` are **APPROVABLE**. No required Lean statement change
remains. F-NADD-2 and F-NADD-3 are closed at the primary-source and mathematical
proof-route audit level; F-NADD-7/8 remain passed. The maximum-error repair is
valid for this analytic specialization and does not change the contract.

This is an independent, refute-first statement audit, not owner approval,
freezing, or a completed provider proof. Both theorem drafts still depend on
`sorryAx`. The rank-to-volume estimates, Fourier envelopes, flow theory and
measurable stopping construction remain to be proved in Lean. Their status
must accompany the approval packet.

## 1. Scope, authority and input pins

Read AGENTS.md, PLAN.md, DECISIONS.md, TRACKS.md, the complete specific and
generic audit briefs, the archived track-K model audit, the N v0.3 audit and
v0.4 delta audit, and the current v0.5 statement/source/notes sections. Read
the frozen Nekhoroshev definitions and theorem surface, including D25's
partial-convex additions, and the reused K frequency/Hamiltonian definitions.
Those files were not edited or imported through a quarantined theorem anchor.
D22 adopts the milestone; D25 explicitly excluded these averaging declarations.
Exact-text approval is still required.

The complete primary AKN PDF was extracted locally. Read printed pp.3,
207–209, 217–218 and all of §6.1.9, pp.242–244. Read all four pages of the
Russian Neishtadt original, including its hypotheses and quantitative proof.
Visually inspected AKN p.243 and Nei76 pp.1295–1298; this matters because the
OCR drops mathematical expressions. The AKN chapter-6 page map is printed
page + 11 = PDF page, using one-based PDF pages. Printed p.3 is PDF p.16.

| Input | SHA-256 |
|---|---|
| `.drafts/N/Averaging.lean`, 116 lines | `6b8bf1941fd1c30f3d8ca1e81b304873d31959eae85809b52f39c9e6e132ff62` |
| AKN06 third-edition PDF | `77b7670103aa4d040ad724275356645ad8ee79c63b1dabf5a90fd803d67ba208` |
| Nei76 original PDF, pp.1295–1298 | `57459a2221141e0fb0fce2143009107b30ce39ceb08acff0a6d7b8cc150b98f6` |
| `docs/tracks/N/statement.md` | `f73137a6125d6c7f06714c62815ba8f0a4478f156ad5c2453e3bc7e1e05380a3` |
| `docs/tracks/N/sources.md` | `6f469882dda015fac021257f4a80105ae4041c4ef82b8a7e30fc08f5d96b21da` |
| `docs/tracks/N/notes.md` | `67078f83dd0c44fe66c62ff12c3332b5d0ad953cc914039a2dd6d54072c256ab` |

Observed checkout: `8bd4db5585d516456ccf869443df5ce0d80179fb`. Input hashes
govern this audit because unrelated work proceeds concurrently. Toolchain:
Lean v4.35.0, Mathlib v4.35.0, manifest revision
`56a005855ea17e0b0958f73ec801ae140b0a1679`.

## 2. Declaration verdicts and findings

| Declaration / draft lines | Verdict | Reason |
|---|---|---|
| `HasAveragingFrequencyRank`, 44–49 | APPROVABLE | Correct global alternative and intrinsic projective differential rank; derivatives are guarded at theorem uses. |
| `averagingError`, 54–57 | APPROVABLE | Literal supremum of the action error from the constant averaged action, with valid nonempty/bounded guards in the theorems. |
| `averaging_mean`, 65–84 | APPROVABLE | Actual Hamiltonian solution family; fixed-system constants; integrable mean of the maximum and correct absolute-volume Markov consequence. |
| `averaging_most`, 93–109 | APPROVABLE | Existence is a conclusion for good data, supported by the original good-set definition and the repaired stopping argument. |

There are no blocking or major findings against the candidate types. The
following dispositions specify the remaining proof and ledger obligations.

| ID | Declaration | Severity | Finding and checked source evidence | Exact proposed Lean change / disposition |
|---|---|---|---|---|
| F-NAVG-1 / closes F-NADD-2 | Both theorems | note; closed | AKN p.243 (6.27) places `max` inside the initial-data integral. Its Thm 6.11 gives the full/projective rank alternatives; pp.208–209 give the standard and averaged equations. P.3 footnote 1 says functions are smooth; p.207 makes constants independent of ε. All relevant primary pages are now available and read. | None. Approve the fixed analytic Hamiltonian specialization, not an unsupported theorem uniform over later h or f. |
| F-NAVG-2 / closes F-NADD-3 | `averaging_most` | note; closed at statement/proof-route level | Nei76 p.1296 defines Φ(ρ,ε) using exact-solution existence throughout `0≤t≤ε⁻¹` and error ≤ρ. Thm 2 (8) bounds its complement. P.1298 explicitly includes trajectories reaching ∂G among bad data. | None. Retain the current existence conclusion and distinct theorem name. The former cutoff deduction is superseded. |
| F-NAVG-3 / E-NAVG-NEI-17 | Both theorem providers | note; source-proof defect requiring declared repair | Nei76 p.1298 (17) prints `sup_t z(t) = ∫_{U′} h`; p.1297 defines z as a fixed-time integral, whereas p.1295 (4) defines h by a pointwise time supremum. This equality is not a valid interchange. | None in either theorem type. Implement the direct integral-of-maximum proof in §5; do not cite (17) as an equality lemma. Keep the candidate erratum and repair visible in the approval packet. |
| F-NAVG-4 | Rank definition and providers | note; genuine provider obligation | AKN p.243 uses the intrinsic projective map; Nei76 p.1296 3° instead uses `ω₁≠0` and ratios. These are not one global chart assumption. | None. Prove the uniform transverse-resonance estimate on a compact interior region as in §5. Do not add `ω₁≠0` to the frozen candidate. |
| F-NAVG-5 / rechecks F-NADD-7 | Both measure conclusions | note; passed | AKN p.243 (6.28) is `meas E < c₁√ε/ρ`, followed by accuracy `c₁√ε/κ` outside volume κ. Nei76 p.1296 (8) has the same tolerance tradeoff. | None. These are absolute phase volumes. Preserve the order of ε, κ and η and the positive denominators. |
| F-NAVG-6 / rechecks F-NADD-8 | Error and mean theorem | note; passed | Nei76 p.1295 (4) and AKN p.243 use the maximum over a nonempty time window. Positive ε and bounded actual actions prevent the real-supremum fallback cases. | None. Guard future helper uses; do not treat the standalone total definition as meaningful on arbitrary unbounded families. |
| F-NAVG-7 | Supplied mean family | note; passed | Nei76 (1)–(3), pp.1295–1296, compare genuine solutions with matching initial actions. The frozen `IsSolutionOn` imposes actual derivatives and domain membership. | None. Smooth ODE uniqueness and dependence must establish regularity on K; no measurability of arbitrary values of Φ away from K is needed. |

The historical v0.4 delta §5 source hold is superseded for these candidates.
The earlier partial-convex verdict, source deviation and frozen interfaces
are not reopened.

## 3. Binder classification and constant order

Classification uses TYPING, SOURCE and STANDING. A STANDING restriction is an
explicit conservative scope choice in this candidate, not an already approved
owner ruling. No conclusion-shaped or EXCESS input was found.

The following covers every fixed binder of **each** theorem, identically.

| Binder | Classification and justification |
|---|---|
| `{n : ℕ}` | TYPING: action and angle coordinate dimension. |
| `hn : 2 ≤ n` | STANDING: multifrequency Hamiltonian scope. The source's more general unequal-dimension setting is not claimed. |
| `R s : ℝ` | SOURCE domain/regularity data, specialized to the frozen uniform complex tube. |
| `hR : 0 < R`, `hs : 0 < s` | TYPING/standing positivity; ensures a genuine open action domain and analytic neighborhood. |
| `h`, `f` | SOURCE objects under the analytic Hamiltonian specialization, fixed before constants. f is scalar, not the source's vector-valued slow field. |
| `hh : IsAnalyticIntegrable R s h` | SOURCE smooth integrable field, with STANDING holomorphic extension, reality, finite complex bound and boundary continuity. Its explicit real C³ guard is redundant under local holomorphy. |
| `hf : IsAnalyticPerturbation R s 1 f` | SOURCE periodic smooth perturbation; STANDING analytic, real, norm-one scalar specialization. Expanded: nonnegative size 1; holomorphy on the open tube; continuity on its closure; period-one angles; reality on real points; bound ‖f‖≤1. |
| `hrank` | SOURCE: AKN Thm 6.11's two global rank alternatives; expanded in §4. |
| `K` | SOURCE fixed initial set, on the real phase lift. |
| `hK : IsCompact K` | SOURCE: AKN Cor. 6.1, p.243; also supplies finite volume and finitely many period cells. |
| `hKI : ∀ x ∈ K, x.2 ∈ actionBall n (R/2)` | STANDING fixed collar discharging SOURCE averaged-orbit continuability, AKN Rem. 6.4 pp.217–218 and Nei76 4°, p.1296. It concerns initial actions, not future perturbed confinement. |

The remaining binders in **`averaging_mean`** are:

| Binder / clause | Classification |
|---|---|
| `∃ A ε₀`, `0<A`, `0<ε₀` | OUTPUT, after all fixed data above. |
| `∀ ε`, `0<ε`, `ε≤ε₀` | SOURCE small parameter; positivity guards the window and square root. A weak threshold endpoint is obtained by choosing ε₀ strictly below the source threshold. |
| `∀ Φ` | TYPING/SOURCE supplied exact-solution family, after constants. |
| `∀ x∈K, Φ x 0=x ∧ IsSolutionOn Hε B(R) [0,1/ε] (Φ x)` | SOURCE matching initial conditions and actual solution data for the mean expression. No error estimate or exceptional set is assumed. Local existence alone is not misrepresented as this full-window premise. |
| `IntegrableOn`, mean bound | OUTPUT. |
| `∀ κ`, `0<κ` | SOURCE arbitrary positive exceptional-volume budget, after constants, ε and Φ. |
| `∃ E`, measurable, `E⊆K`, volume bound | OUTPUT; E may depend on ε,Φ,κ. |
| `∀ x∈K\E`, `∀ t∈[0,1/ε]`, error bound | OUTPUT quantifiers, not premises on the fixed system. |

The remaining binders in **`averaging_most`** are:

| Binder / clause | Classification |
|---|---|
| `∃ A ε₀ η₀`, all positive, `η₀≤R/4` | OUTPUT; the chosen tolerance collar may be much smaller. |
| `∀ ε`, `0<ε`, `ε≤ε₀` | SOURCE small positive parameter. |
| `∀ η`, `0<η`, `η≤η₀` | SOURCE tolerance restricted to a fixed collar, as in Nei76 Thm 2. |
| `∃ E`, measurable, `E⊆K`, `volume E≤A√ε/η` | OUTPUT; a single E is chosen before every good x and time. |
| `∀ x∈K\E`, `∃ z` | OUTPUT, actual trajectory existence for every good datum. |
| `z 0=x`, `IsSolutionOn Hε B(R) [0,1/ε] z`, `∀t` drift bound | OUTPUT. No supplied-family, long-time existence, or future-confinement input occurs. |

In particular the order is fixed `n,R,s,h,f,K` and their hypotheses, then
`A,ε₀` (also η₀ for most), then ε and tolerances/families. The rank lower bound
and all finite derivative bounds on an interior compact region may depend on
the fixed h,f. No complex derivative control is inferred uniformly from mere
real bounds over a later family: the F-N1 error is absent. The normalization
‖f‖≤1 does not assert that A is uniform over all such f.

## 4. Definitions, actual dynamics and junk-value checks

For nonzero ω, let L=Dω. The differential of its projective class has image
`(range L + span ω)/span ω`. It has rank n−1 exactly when
`range L + span ω = ℝⁿ`, equivalently surjectivity of `(v,c)↦Lv+cω`.
The draft separately requires ω≠0 in that branch, with no chart division.
The disjunction is outside the universal point quantifier, correctly
requiring a global alternative. The full-rank branch correctly permits a
zero frequency. Analyticity on an open neighborhood makes both fderiv calls
genuine. As a standalone predicate on arbitrary h or empty U it has the
usual off-locus/vacuity limitations; neither is exploitable under theorem inputs.

The frozen real Hamiltonian and vector field are literally
`Hε(θ,I)=Re(h(I)+εf(θ,I))` and `(∂I Hε,−∂θ Hε)`.
Put φ=2πθ and Ω=2πω. In the source's standard system the slow field is
`a(I,φ)=−∂θ f(φ/(2π),I)` and the angular correction is
`b(I,φ)=2π∂I f(φ/(2π),I)`. No time rescaling occurs. Periodicity gives
average(a)=0, so the averaged action is exactly J(t)=I₀, the object subtracted
in `averagingError`. This theorem does not compare against a drifting averaged
angle or claim closeness of the angular coordinates.

`IsSolutionOn` requires at every time: action membership in B(R), actual
`DifferentiableAt Hε`, and `HasDerivAt z (X_Hε (z t)) t`. Thus neither a junk
zero fderiv nor an arbitrary non-solution curve suffices. Holomorphy on the
positive-width tube implies local real smoothness and local Lipschitzness of
the vector field on the whole real domain. Two-sided derivatives at endpoints
are supplied by local extension beyond those endpoints. Values of z outside
the asserted interval otherwise have no dynamical meaning.

For ε>0, 0 belongs to [0,1/ε], so the supremum image is nonempty. Along a
supplied mean solution, action norms are <R and initial norms <R/2; the
maximum-norm action error is bounded by 3R/2. Continuity in time on the compact
interval gives an attained maximum; consequently sSup is the intended real
value and is nonnegative. The scratch check verifies nonemptiness, boundedness,
the pointwise-to-supremum inequality and zero error for constant actions.
There is no division by zero, negative sqrt argument, inverse matrix, or
off-locus iterated derivative in these candidate uses.

Although Φ has no global regularity premise, on K it agrees with the unique
smooth local flow. For each x∈K its full-window trajectory is a compact subset
of the open domain, so nearby initial data also admit solutions over that
fixed window with continuous dependence. The maximum error is therefore
continuous relative to K. K is compact and measurable, so the real error is
integrable on K and its strict superlevel sets within K are measurable. No
measurability assumption on arbitrary values of Φ outside K is required.
`ENNReal.ofReal` does not hide negative error or a failed real integral.

All volume bounds are **absolute unnormalized real phase volume**. Lifted
compact angular windows meet finitely many integer translates of the unit
cell; restrict the torus estimate to each cell and sum. Cell boundaries are
null. The radian conversion contributes a fixed Jacobian, absorbed into A.
Neither arbitrary-shaped K nor null/empty K causes a problem. Markov at
`A√ε/κ` yields volume ≤κ, with error ≤that threshold off the strict superlevel
set, for every κ>0. For fixed η>0 the most-theorem bad volume tends to zero;
this is not a claim that a single fixed full-measure set works for all ε.
Taking η proportional to ε^(1/4) balances error and exceptional volume. It
does not give O(√ε) for both at once.

## 5. Independent check of the maximum-error and existence repair

**The source defect is real.** A two-point initial space with continuous
nonnegative errors `e₁(t)=t`, `e₂(t)=1−t` on [0,1] has fixed-time integral 1
but integral of individual maxima 2. Thus even continuous errors do not
justify Nei76 (17). A scratch arithmetic check also verifies the two-time
max/sum counterexample. This refutes the general interchange, not the
dynamical theorem.

**Rank-to-volume translation.** Work on the compact maximum-norm box
G=closedBall(0,3R/4), strictly inside B(R). In the projective branch the
adjoint of the augmented map is injective, so compactness gives λ>0 with
`|DΩ(I)ᵀe|²+|e·Ω(I)|²≥λ²` for all unit e and I∈G. In the full-rank branch
the first term already has a positive lower bound. Thus the scalar resonance
function `e·Ω` has uniformly nonzero gradient whenever its value is small.
A finite cover of G times the unit sphere by transverse coordinate boxes,
and one-dimensional change of variables within each box, gives

    volume{I∈G : |k·Ω(I)|≤u} ≤ C u/|k|,     k≠0,

for small normalized thresholds; larger thresholds follow by a trivial
finite-volume bound. The boxes can be chosen in a neighborhood of G using
openness and continuity. No trajectory is required to stay in one projective
chart. This supplies the required intrinsic replacement for Nei76's ratio chart.

**Envelope estimates.** Let q=k·Ω and θκ be the reciprocal regularization
from the notes. Transverse integration of its actual piecewise bounds gives
`∫|θκ(q)|≤C(1+|logκ|+log(1+|k|))/|k|` and
`∫|θκ′(q)|≤C/(|k|κ)`; constants can be enlarged for |k|≥1 and the
nonresonant portion. The logarithmic |k| term allows the range of q to grow
with |k|; it is harmless under analytic Fourier decay. Differentiating
`a_k θκ(q)` introduces D a_k and
`θκ′(q)Dq`, with `|Dq|≤C|k|`. Uniform analytic Fourier decay of a and D a
on a smaller strip therefore gives, uniformly in truncation,

    ∫G Wκ ≤ C(1+|logκ|),       ∫G Bκ ≤ C/κ,
    ∫G supφ |a−Dφwκ·Ω| ≤ Cκ,
    ∫G supφ |Dφwκ| ≤ C(1+|logκ|).

Here the residual has only the truncated Fourier tail and modes within
`|q|≤κ`, bounded by the slab estimate. The extra |k| in Dφwκ is controlled
by Fourier decay. These are consequences of the explicit construction, not
an exchange of sup and integral in Lemma 1 (11). For our analytic class the
needed uniform weighted sums converge; this audit does not assert the same
extra regularity for every minimally smooth generalization of Nei76.

**Time maximum.** Since Wκ is a finite sum of norms of smooth coefficients,
its variation along any action curve is bounded by the integral of Bκ times
the action speed. Differentiating the norms at their zeros is unnecessary.
For a measurable cohort C with genuine trajectories in G through T≤1/ε,

    sup_{t≤T}|wκ(I(t),φ(t))|
      ≤ Wκ(I₀) + ε C_a ∫₀ᵀ Bκ(I(u)) du.

The fixed-time flow is injective and preserves Hamiltonian volume; the
bounded-distortion argument of Nei76 (15) would also suffice. Integrating
this pointwise inequality and using Tonelli gives an upper bound
`C(1+|logκ|+κ⁻¹)`. In the corrector identity this term is multiplied by ε.
Taking the time maximum before integrating the other terms gives

    M_C(t) ≤ εL₀∫₀ᵗ M_C(u)du
                + C[κ + ε/κ + ε(1+|logκ|)],
    M_C(t) = ∫C sup_{u≤t}|I(u)−J(u)|.

The residual contributes Cκ; the corrector derivative terms contribute
Cε/κ and Cε(1+|logκ|). Here a₀=0, so L₀ can even be zero. Gronwall over
T≤1/ε has a uniformly bounded factor. Choose κ=√ε with ε₀<1/16; then
every term is O(√ε). This verifies the proposed repair's scaling and its
control of the correct maximum, without any extra public premise.

**Continuation and bad data.** Take initial source actions in
G₁=closedBall(0,R/2), and ρ₁=R/8. The constant averaged action stays at
least R/4 from ∂G, hence satisfies Nei76 4° and AKN Remark 6.4. Choose
η₀≤R/32, so η≤η₀ implies the source's strict η<ρ₁/2.

For a surviving cohort through τ with error ≤ρ₁/2, bounded action speed
extends the actual solutions inside G for an additional
`δ=ρ₁/(4 C_a ε)`; zero action speed is handled separately. Angular speed
is bounded on G times the torus, preventing finite-time escape of its real
lift. Truncate each step at 1/ε. There are at most
`ceil(4 C_a/ρ₁)+1` steps, independently of ε. Apply the corrected cohort
mean-of-maximum estimate and Markov on each extension. The union of losses
has volume O(√ε), and the final surviving cohort has integral maximum
O(√ε). Smooth local flow dependence gives measurable surviving and exit sets.

Putting all coarse bad data and surviving trajectories of error >η in E
yields `volume E≤C√ε+C√ε/η≤A√ε/η`, after enlarging A using the fixed η₀.
Every datum outside E has an actual full-window solution and drift ≤η.
Failed continuability is included in E, rather than assumed away.

For the mean theorem, split K into these source-good and source-bad data.
The supplied Φ agrees with the source trajectory on the good part by
uniqueness. On the bad part its maximum-norm error is bounded by 3R/2,
while that part has volume O(√ε). Thus the full mean over K is O(√ε).
This is the required additional argument for the mean theorem's outer domain
B(R), since the source proof works in the smaller compact G.

These calculations close the specific mathematical proof-route objection.
They are not Lean implementations of transversality, Fourier decay, Tonelli,
flow/Jacobian estimates, or measurable cohorts. Those remain substantial
provider obligations, with no conclusion-shaped hypotheses permitted.

## 6. Non-vacuity, contract preservation and downstream limits

For every n≥2 and R,s>0, take `h(I)=½∑j Ij²` as a complex polynomial.
It satisfies the frozen analytic/reality/boundedness predicates on the bounded
action tube; ω(I)=I and Dω=id, even at I=0. Take f=0 and a nonempty compact
product of an angular box and an action box inside B(R/2). The actual family
`(θ+tI,I)` satisfies the full-window premise and has zero drafted error.
Thus neither rank nor actual existence is vacuous, including at resonant data.

For nonzero perturbations one can use
`f(θ,I)=d cos(2πθ₁)/cosh(2πs)` with sufficiently small fixed d>0.
It is real, periodic, holomorphic, continuous on the closure and norm ≤1.
Choosing also `2πd<R/4` bounds total action displacement over 1/ε by R/4,
so compact initial actions in B(R/4) give genuine full-window solutions in
B(R). The projective-only branch is also nonempty: take
`h(I)=I₁+½∑j≠1 Ij²`, whose frequency is `(1,I₂,…,In)` and whose augmented
map is onto although Dω has rank n−1. These are mathematical examples;
full analytic-predicate proofs for the examples were not implemented here.

Both complete theorem contracts were separately reconstructed as Prop-valued
definitions from the current v0.4 `Additions.lean` and the pinned v0.5 draft.
Lean proves their equality by literal `rfl`, including every hypothesis and
conclusion. The only carrier rewrite is unfolding the frozen
`KAM.Planetary.Phase` abbreviation to its explicit real product. The two
definition bodies also match after that carrier expansion. Consequently
the proof repair is not a hidden change in hypotheses, conclusion or quantifiers.

This is local finite-time averaging. It supplies no exponential interval,
all-time stability, collision exclusion, actual-mass certificate, relative
probability bound, or fixed common good set across all ε. Reuse of frozen
analytic/ODE definitions is consistent with N-PARTIAL-CONVEX, but neither
averaging theorem seals or strengthens that separate frozen theorem.

## 7. Errata, deviations, checks and handoff

**For the orchestrator's ledger:** retain E-NAVG-NEI-17 as a candidate
source-proof defect. Exact location: Nei76 p.1298 (17), quoted equality
`sup z(t)=∫_{U′}h dI⁰dφ⁰`, compared with p.1297's definition of z and
p.1295 (4)'s definition of h. Only `sup∫≤∫sup` is automatic; the strict
two-point example in §5 shows why equality needs justification. The
Fourier-envelope argument is the explicit repair. No counterexample to
Nei76's theorem or AKN's statement is claimed. No AKN mathematical erratum
was identified.

Regularization caution: Nei76 p.1298 calls its piecewise θ smooth
(“гладкая”). The displayed cubic has matching first derivatives at ±κ,
but at +κ its inner second derivative is −6/κ³ and the outer one is
2/κ³. It is C¹, not C². First derivatives suffice here; use that regularity
or an explicit smooth interpolation. This is a checked implementation
caution, not an additional assertion about the author's intended finite
smoothness convention.

Retain the documented deviations D-NAVG-1–3: fixed analytic Hamiltonian
specialization; period-one/max-norm/lifted compact-set transport; intrinsic
rank geometry in place of a single global chart; and the corrected
integral-of-maximum and exit-cohort proof. This audit introduced no change to
those conventions or to any candidate statement. No ledger file was edited.

Checks were serialized at default Lean resource budgets. For the ignored
statement and scratch modules, direct `lake env lean` is the targeted
elaboration check; no library module was changed and no full library build,
clean, cache fetch or resource override was requested.

```text
$ nice -n 5 lake env lean .drafts/N/Averaging.lean
.drafts/N/Averaging.lean:65:8: warning: declaration uses `sorry`
.drafts/N/Averaging.lean:93:8: warning: declaration uses `sorry`
'KAM.Nekhoroshev.averaging_mean' depends on axioms:
  [propext, sorryAx, Classical.choice, Quot.sound]
'KAM.Nekhoroshev.averaging_most' depends on axioms:
  [propext, sorryAx, Classical.choice, Quot.sound]
exit 0

$ nice -n 5 lake env lean .drafts/N/audit-scratch-avg/Semantics.lean
error_nonempty, error_bddAbove, instantaneous_le_error, constant_error,
maxima_do_not_commute_with_sum:
  [propext, Classical.choice, Quot.sound]
exit 0; no warnings or errors

$ nice -n 5 lake env lean .drafts/N/audit-scratch-avg/Preservation.lean
averaging_mean_preserved, averaging_most_preserved:
  [propext, Classical.choice, Quot.sound]
exit 0; unused-variable warnings on the restated Prop definitions only

$ PYTHONDONTWRITEBYTECODE=1 scripts/lint_sources.sh
check_lean_modules: PASS (180 Lean files, 0 comparator configurations)
FROZEN-ANCHOR GUARD OK
ABI HASHES OK (140 frozen declarations)
exit 0

$ git diff --check
exit 0; no output
```

The initial scratch boundedness proof used an addition lemma with the wrong
argument order; it was replaced by the norm inequality and linear arithmetic.
The final Semantics receipt above is placeholder-free. Production lint
excludes `.drafts`; the draft's two explicitly requested statement placeholders
were not promoted to production or treated as proof closure. All authored
scratch Lean files have module headers, public imports/sections, exposed
definitions and fewer than 1500 lines. No quarantined provider/theorem import,
axiom declaration, admit, unsafe, opaque or resource override was added.

Files authored: this report, and only scratch under
`.drafts/N/audit-scratch-avg/`: `Semantics.lean`, `Preservation.lean`, the
three elaboration logs, `lint.log`, `contract-comparison.json`, AKN text
extractions and page render, and Nei76 text extraction and four page renders.
No draft, frozen file, manifest, generated file, other report or git state
was changed by the auditor. Unrelated concurrent blueprint edits were left alone.

**Approval-packet verdict: READY FOR OWNER.** No required candidate-text
revision remains. Exact owner approval must cover the fixed analytic
specialization and constant order, both theorem names including the local
existence conclusion, and the explicitly declared source-proof repair.
Provider proofs remain unpaid; the two audited theorem drafts retain sorryAx.
