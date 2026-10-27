# Track N statement audit, v0.1

Independent, refute-first audit, 2026-10-27. Scope: all ten definitions and all three theorem
types in `.drafts/N/Statements.lean`, their actual frozen-definition dependencies, and the
cited source passages. Only this report and `.drafts/N/audit-scratch/` were written by this
audit. No draft, frozen file, manifest, provider, generated file, or other track was edited;
no state-changing git command was used.

## 1. Verdict and limits

**Overall: APPROVABLE WITH CHANGES to the source-gap/handoff record and author header.**
N-QC and N-ZERO are mathematically approvable as written. N-HEAD faithfully transcribes
BM11's classical endpoint with the approved changes, but its uniformity in the integrable
Hamiltonian has an additional, concrete source-dependency gap that the packet did not
identify. Unconditional truth/proof-route sign-off for that uniform statement is withheld.
This audit has **not** found a counterexample to any of the three drafted theorem types.
It has found and machine-checked counterexamples to two assertions used in the source's
proof. Those are different claims.

The exact recommendation is to preserve the theorem's approved quantifiers and record
F-N1 explicitly before presenting it as an approved source-backed target. Resolve F-N1,
F-N2 and F-N3 before accepting the proof route. In particular, **do not silently add a
complex derivative bound, a frequency lower bound, or a normal-form hypothesis** to the
existing theorem. The first would be a substantive new contract; the last would assume a
principal unpaid estimate. D18-Q3 expressly retains uniformity in h and f.

| Declaration, draft lines | Verdict | Reason |
|---|---|---|
| `actionBall`, 30 | APPROVABLE | Literal open maximum-norm ball. |
| `realActionDomain`, 33–34 | APPROVABLE | Real slice of the exact complex neighbourhood. |
| `complexDomain`, 37–38 | APPROVABLE | Period-one lift of BM11's domain. |
| `realPart`, 41–42 | APPROVABLE | Literal real restriction. |
| `IsAnalyticIntegrable`, 47–52 | APPROVABLE | Matches the analytic class; its bound on the value of h is existential, not uniform. |
| `IsStrictlyQuasiConvex`, 56–61 | APPROVABLE | Exact nonvanishing and transverse positive Hessian condition, with genuine derivatives. |
| `HasDerivativeBounds`, 66–70 | APPROVABLE | Exact **real**, coordinatewise derivatives through order three; do not read it as a complex bound. |
| `IsAnalyticPerturbation`, 75–83 | APPROVABLE | Exact analytic class with the D18-Q2 non-strict size convention. |
| `IsSolutionOn`, 88–92 | APPROVABLE | Actual Hamilton equations, including the differentiability guard. |
| `integrableOrbit`, 96–98 | APPROVABLE | Correct sign and coordinate order. |
| `quasiConvex_isoenergetic_derivative` / N-QC, 102–109 | APPROVABLE | Direct kernel proof; optional dimension generalization F-N4. |
| `zero_perturbation` / N-ZERO, 113–123 | APPROVABLE | Local vanishing of f gives the exact global integrable orbit. |
| `quasiConvex_nekhoroshev` / N-HEAD, 129–150 | APPROVABLE WITH CHANGES | No transcription or junk-value failure found; F-N1 is an unresolved quantitative source import. Approval here is not a certification that this import follows from the drafted hypotheses. |

All theorem bodies remain unproved drafts. Their `#print axioms` output includes `sorryAx`.
The two negative fixtures and nine semantic checks in this audit do not use `sorryAx`.
Owner approval of exact Lean text and freezing remain separate steps, as D18 specifies.

## 2. Pins and direct source inspection

The workspace changed concurrently. The audit began at
`f761a42ba22b80df8acdb7a5ccb762864b0d2363`; D18 and D19 arrived while it ran. I reread the
new rulings and compared the changed track-N mathematical statement. They change the
approval annotations, not the Lean draft. The draft hash below remained unchanged.

| Artifact | SHA-256 |
|---|---|
| `.drafts/N/Statements.lean` | `5d355931750abcade041a3ded28b12f99c981b4ed42ca8b4c7482173068a91cf` |
| `docs/tracks/N/statement.md`, after D18 annotations | `52ffa8e37846b6ec2e24114f73fb2ce39588c4e03b9e8d92adbee88d3486b417` |
| `docs/tracks/N/sources.md` | `ab9c56876198a47a958cf9fe3d83761eba547c8066a15b5957f6973c66e57056` |
| `docs/tracks/N/notes.md` | `e58a62420e5b8e75d422b4a53b2c36739df1b9554225d5ae117e2124e3178348` |
| `docs/DECISIONS.md`, through D19 | `2ea4d1ddafcad224a0706d8a926c8c4dac31dfe723fa0d2095dbe2b71fd85b44` |
| `docs/PLAN.md` | `3efa6ab0e8da45cf578fcd9c294f330d6db4372fed34c07729e9ba6f6e1fb71f` |
| `docs/TRACKS.md` | `5ff038ff37462540b8f79df01c57beb75ff7dd6f725de0a16d62afdbb0f456d8` |
| `sources/pdf/arxiv_1004.1014v2_BM_quasiconvex.pdf` | `90f0f6b3b3b183b8898f4e961f0127b3a143453f76645d960d3095fda5b9b818` |
| `sources/incoming-N/poschel1993_gdz.pdf` | `27568ec63af069ab6d6c02e0327aa2d822998be47888f20dea0c6418552dc869` |
| `sources/pdf/arxiv_1403.6776v1_GCB_steep.pdf` | `7b89f25ed0e1b4815df095bac4af5095bff9e205287a6822f39a77122d44b176` |

Read directly, rather than relying on the packet's transcriptions:

- **BM11 v2:** extracted pp. 1–2 and 4–14; visually checked pp. 4–5, 8–10, 12–13.
  The domain, QC(m), B(M), stable-constant definition, endpoint exponents and derivative
  computation agree with the packet. Printed page numbers equal PDF page numbers.
- **Pöschel 1993 journal scan:** visually checked printed pp. 188–192 and 205–207.
  PDF page 5 is printed p. 190; PDF pages 21–22 are printed pp. 206–207. Theorem 3 is
  on **printed p. 206**, with its continuation and proof on p. 207. This verifies an
  original locator that `sources.md` had correctly left unverified. It does not certify
  the whole proof of Pöschel's theorem.
- **GCB16 v1:** extracted pp. 2–5 and visually checked pp. 3–5, including the bars in
  the boundary-layer definition, the exponent products, and the `T/√ε` factor. N-STEEP
  is intentionally absent, consistent with the brief and D18-Q5.
- Read the archived track-K audit, including its distinction between a false drafted
  theorem and a source/proof obligation. Read all five frozen definitions imported by
  the N draft. No frozen theorem or provider is imported.

PDF text and rendered page evidence are retained under `.drafts/N/audit-scratch/`.
No new external source was substituted for a pinned PDF.

## 3. Findings

“Major” below can mean a source/proof-route gap, not necessarily a false drafted theorem.
The exact affected object and proposed action are distinguished in each row.

| ID | Declaration | Severity | Finding | Quoted source evidence and page | Exact proposed Lean change |
|---|---|---|---|---|---|
| F-N1 | N-HEAD; `HasDerivativeBounds` | **major; blocks proof-route sign-off** | BM11 imports an analytic resonant theorem whose uniform **complex** Hessian bound is not supplied by BM11's uniform **real** C³ bounds. The omitted bound cannot be recovered by simply shrinking to any fixed positive complex width; §4 gives an explicit family. | BM11 p. 4: “derivatives up to order 3 of h on B_s”; p. 8: “exactly the content of Theorem 3”; Pöschel p. 190: `sup_{I∈V_{r₀}P} ‖Q(I)‖ ≤ M < ∞`. | **None to the approved type.** Do not change line 136 to a stronger predicate. Record this as a new source gap. An optional, differently named theorem with `{Mcomplex : ℝ}` before `∃ C T c ε₀` and a complex-Hessian premise is described in §4, but requires a new ruling and is not a replacement for N-HEAD. |
| F-N2 | Source Lemma 3.3; N-QC boundary | **major source defect** | The uniform image-ball factor cannot be independent of every positive λ. The pointwise bijective derivative in N-QC is unaffected. | BM11 p. 9: “there exist stable constants ρ₀ and C”; “whose image contains the closed ball”. Stable dependence is defined on p. 5. | **None.** Keep N-QC's pointwise conclusion. A future quantitative provider must specify its basepoint and λ ranges and prove the required uniform bound. Do not add this source claim to N-QC. |
| F-N3 | Source restart in N-HEAD proof | **major proof gap** | Uniform small displacement does not preserve the same open inner ball for every initial point arbitrarily near its boundary. | BM11 p. 13: “taking ε₀ small enough we can ensure that I(t*) ∈ B(0,R/2)”. | **None to N-HEAD.** A separately proved resonant provider should allow starting actions in `actionBall n (3 * R / 4)`, with an explicit outer-domain margin; do not assume that provider as a new headline premise. |
| F-N4 | N-QC; optionally N-ZERO | minor usability | The packet advertises N-QC for track I, but `hn : 3 ≤ n` prevents the intended n = 2 use. The kernel proof is dimension independent. | BM11 p. 10 derivative proof uses only λ > 0, ω ≠ 0 and transverse positivity; track I in `docs/TRACKS.md` explicitly uses n = 2. | Optional: delete `(hn : 3 ≤ n)` from `quasiConvex_isoenergetic_derivative`; the theorem is valid even without a lower dimension bound (n = 0 has impossible premises). The same deletion is possible for `zero_perturbation`. Retain `hn` in N-HEAD under D17. |
| F-N5 | N-HEAD / N-ZERO | note; correctly handled | BM11's ε = 0 case has inconsistent-looking notation but empty hypotheses; the draft avoids a spurious finite time from totalized negative powers. | BM11 p. 5: `|f|_s < ε` alongside `0 ≤ ε ≤ ε₀`. | None. Keep `0 < ε →` at line 137 and the separate N-ZERO theorem, as D18-Q2 rules. |
| F-N6 | Source Lemma 3.5 proof | minor proof repair | Rationality of a normalized component does not by itself produce a **nonzero** resonance vector when the selected rational is ±1 and the maximizing coordinate is the same coordinate. | BM11 p. 12: `k′ = qe_i − pe_j`, followed by “since p and q are co-prime”. | No headline change. In the future arithmetic provider choose the rational in an interior subinterval of `(-1,1)`; prove `i ≠ j` and `k′ ≠ 0`. Halving the interval changes the harmless drift constant from 6 to 12. |
| F-N7 | Entire draft header | minor repository convention | The draft names only Scott; D15 names Scott Armstrong and Zohar Komargodski. | `docs/DECISIONS.md`, D15 (owner ruling; no PDF page). | Replace line 2 by `Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.` and line 4 by `Authors: Scott Armstrong, Zohar Komargodski`. No mathematical body change. |
| F-N8 | N-HEAD uniformity | note | Constants are correctly before h, f, ε, angles and initial actions. An h-dependent analytic bound cannot be hidden inside “stable”. | BM11 p. 5: “not on a particular choice of H”; D18-Q3. | None. Preserve lines 129–138 and keep F-N1 visible. |
| F-N9 | Audit/validation handoff | minor documentation | The old lint failure in `notes.md` is historical. The current guard excludes `.drafts/`, and the required lint now passes. Passing production lint does not check scratch drafts. | Current `scripts/check_frozen_anchors.py`, `project_files`, lines 157–160; no PDF source. | None. Update the handoff status after this audit, without rewriting its historical receipt. Audit scratch modules separately. |
| F-N10 | Non-vacuity examples | note | The centered quadratic is not an example for N-HEAD/N-QC on a ball containing zero: its frequency vanishes at zero. A shifted quadratic is an example. | BM11 p. 4: “the gradient map ∇h does not vanish”. | None. Use the concrete examples in §8; do not remove the nonvanishing clause. |

F-N1 is additional to E-N-BM-1..3 already in `notes.md`. The quantitative conversion
from transverse QC(m) to Pöschel's l,m condition, with a possible loss in m and a domain
shrink, is also a provider obligation: qualitative compactness for a fixed h does not
by itself prove the uniform dependence required here. This audit does not assert that
such a conversion is impossible, and it does not propose an extra frequency premise.

## 4. The newly exposed source import: real C³ does not bound complex Hessians

Pöschel's setup uses `V_{r₀}P ⊆ ℂⁿ`, defined on printed p. 189. His bound on printed
p. 190 is on this **complex** set, not just its real part `U_{r₀}P`. His Normal Form
Lemma on p. 192 requires

    r ≤ min(α/(p M K), r₀).

Thus the M in the normal-form radius is the complex Hessian bound. Theorem 3 on p. 206
inherits this setup and also uses the quantitative l,m condition, `r₀ ≤ 4l/m`, and
`A = 11M/m`. Neither changing finite-dimensional norms nor converting the Fourier norm
of f to a strip sup norm removes this dependence.

Here is a family showing that a routine analytic-bound upgrade from the draft's
hypotheses is impossible. Fix

    n = 3, R = s = 1, M = 6, m = 1/2,
    h_N(z) = 3z₀ + (z₀² + z₁² + z₂²)/2 + sin(Nz₁)/(4N³),   N = 1,2,3,....

These are entire, real on real points, continuous on the domain closure and bounded
there individually. On the real domain B_s = (-2,2)³:

- The zeroth component of the frequency is `3 + I₀ > 1`, so the gradient never vanishes.
- The Hessian is diagonal with entries `1, 1 - sin(NI₁)/(4N), 1`; it is bounded below
  by `3/4` times the Euclidean squared norm, hence by `m‖v‖∞²` even without restricting v.
- Every first partial is bounded by 6, every second partial by 5/4, and every third
  partial by 1/4. Mixed partials in the oscillatory term vanish. All B(M) bounds hold
  with the same M, independent of N.

For every fixed `0 < r < 1`, the complex point `z = (0, ir, 0)` is in the action
neighbourhood. At that point

    ∂₁²h_N(z) = 1 - i sinh(Nr)/(4N),
    ‖∂₁²h_N(z)‖ ≥ sinh(Nr)/(4N) → ∞.

The same obstruction persists on **any fixed positive smaller complex width**. The
existential A in `IsAnalyticIntegrable` is allowed to grow with N and supplies no uniform
substitute. The nonlinear dynamics of this family have not been shown to violate
N-HEAD; it refutes a proposed deduction of a missing source premise, not N-HEAD.

BM11's own printed theorem explicitly promises the uniformity of the draft, so this
is not a mistranscription by its author. It is a candidate omission in the quoted
dependency/proof. There are two legitimate next routes:

1. Prove the needed exponential normal form/stability estimate with constants controlled
   only by the existing n,R,s,M,m, using an argument that avoids the missing complex
   Hessian bound. This retains the approved N-HEAD contract.
2. Propose a **distinct strengthened-input theorem** to the owner. For example, insert
   `{Mcomplex : ℝ} (hMcomplex : 0 < Mcomplex)` before the existential constants and, after
   the analytic-integrable premise, use the exact additional premise

   ```lean
   (∀ z ∈ KAM.actionNbhd (actionBall n R) s,
     ‖fderiv ℂ (fderiv ℂ h) z‖ ≤ Mcomplex) →
   ```

   Call that theorem `quasiConvex_nekhoroshev_complexBound`, not
   `quasiConvex_nekhoroshev`. The operator norm is on the prescribed coordinate spaces;
   conversion to Pöschel's Euclidean norm costs dimension factors. This is a proposed
   contract fragment, **not an elaborated replacement or a proved sufficient package**:
   the l,m conversion and the other route repairs still need proof. D18 does not
   authorize substituting it for the uniform statement.

## 5. Refutations of the two previously flagged source steps

### 5.1 No inverse image-ball factor uniform over λ > 0

Take the single fixed Hamiltonian

    h(I) = 3I₀ + (I₀² + I₁² + I₂²)/2

with n = 3, R = s = 1, M = 6, m = 1. It satisfies every integrable hypothesis, including
nonvanishing frequency on (-2,2)³. The source map is

    Ψ(I, λ) = (3I₀ + Σ Iᵢ²/2, λ(I + 3e₀)).

Let ρ₀,C > 0 be any purported uniform constants. Set

    λ = C/8,   ρ = min(ρ₀/2, 1/2, C/16).

Then 0 < ρ < ρ₀, ρ < 1 and ρ < λ; the input ball stays inside B(0,1) × (0,∞).
Consider the output point obtained from Ψ(0,λ) by adding `(Cρ/2)e₁` to its frequency
component, with unchanged energy. It lies in the **open** output ball of radius Cρ
and has a nonzero frequency component along e₀.

For an input `(I,μ)` in that input ball, `|I₁| < ρ` and `|μ-λ| < ρ`, whence
`|μ| < C/4` and `|μI₁| < Cρ/4`. Its second frequency coordinate therefore cannot equal
Cρ/2. This refutes even open-ball coverage, hence also the printed closed-ball coverage.

Machine-checked in `SourceRefutations.lean` as `no_uniform_image_ball`. Its statement
is the negation of the uniform covering assertion for the displayed explicit polynomial
map, restricted to balls that stay in the domain. The calculus identification of this
polynomial map with Ψ_h, and the full analytic/QC membership of h, are established by
the displayed elementary calculation here, not claimed as additional Lean proofs.

The source's **pointwise** derivative remains bijective for each λ > 0. The counterexample
does not refute N-QC, which intentionally omits uniform inverse radii. In the later source
proof λ is specialized to `1/‖ω(I)‖∞`; a corrected argument must analyze that family
directly. A counterexample using unrestricted λ does not settle the specialized family.

### 5.2 No uniform displacement margin within the same inner ball

For any η > 0 put `r = min(η/4,1/4)`, `x = 1/2-r`, and `d = 2r`. Then

    |x| < 1/2,   |d| < η,   |x+d| > 1/2.

Machine-checked as `no_uniform_same_inner_ball_margin`. Embedding this scalar example
in one coordinate gives the same assertion in the source's maximum-norm action ball.
This is a refutation of the displacement-to-membership implication used at the restart,
not a constructed drifting Hamiltonian solution or a refutation of Theorem 2.1.

Shrinking ε₀ uniformly yields membership in the **larger** ball B(0,3R/4); it cannot
yield membership in the original B(0,R/2) for all I₀ there. The proposed resonant-provider
domain change in F-N3 pays the correct remaining outer margin. N-HEAD's conclusion
`C ε₀ᵇ ≤ R/4` is useful but does not prove this provider or repair its hypotheses.

## 6. Every theorem binder, including nested conclusion binders

Bins: **SOURCE**, **STANDING**, **TYPING**, **RULED**, **EXCESS**. Existential witnesses
and tests internal to a conclusion are explicitly labelled **CONCLUSION**; they are not
additional assumptions of the theorem. There are **no EXCESS binders**. D17 governs the
headline dimension; the common packet's n ≥ 3 convention is a standing restriction for
the gates, not a proof of their cross-track usability.

### N-QC: `quasiConvex_isoenergetic_derivative`

| Binder | Classification | Exact justification |
|---|---|---|
| `{n : ℕ}` | TYPING | Dimension of coordinate spaces. |
| `hn : 3 ≤ n` | STANDING | Selected track-N scope; unnecessary for this gate, F-N4. |
| `{U : Set (Fin n → ℝ)}` | SOURCE, local generalization | BM11 p. 9 uses B. Its pointwise proof p. 10 needs only a neighbourhood of I; an arbitrary open U is a strengthening, not an extra premise. |
| `{h : (Fin n → ℂ) → ℂ}` | SOURCE/TYPING | Encodes the real C² function by `realPart h`; no holomorphic extension is assumed or needed for this gate. |
| `{m : ℝ}` | SOURCE | QC(m), BM11 p. 4. |
| `hqc : IsStrictlyQuasiConvex U h m` | SOURCE + TYPING | m > 0, genuine C² Hessian on an open set, nonzero gradient, exact transverse lower bound. It is not a bijectivity premise. |
| `{I : Fin n → ℝ}`, `hI : I ∈ U` | SOURCE | Base point of Lemma 3.3. In particular U cannot be empty in an application. |
| `{lam : ℝ}`, `hlam : 0 < lam` | SOURCE | `λ₀ ∈ ℝ⁺_*`, BM11 pp. 9–10. |
| `p` in the lambda under `fderiv` | TYPING, CONCLUSION | Variable of the displayed Ψ map; not universally assumed data. |

Expanded predicate binders: I ranges over U; v ranges over all real vectors; the dot-product
equality selects exactly the transverse vectors. The positivity, openness and C² clauses
are source/regularity data. No invertibility or local inverse is assumed.

### N-ZERO: `zero_perturbation`

| Binder | Classification | Exact justification |
|---|---|---|
| `{n : ℕ}` | TYPING | Coordinate dimension. |
| `hn : 3 ≤ n` | STANDING | Packet scope; this gate also works in other dimensions. |
| `{R s : ℝ}`, `hR : 0 < R`, `hs : 0 < s` | SOURCE | BM11 p. 4 domain parameters and positive analytic width. |
| `{h : (Fin n → ℂ) → ℂ}` | SOURCE/TYPING | Integrable Hamiltonian. |
| `hh : IsAnalyticIntegrable R s h` | SOURCE + TYPING | Source analytic class; explicit real C³ is redundant on the open real slice. No QC or derivative-size assumption is inserted. |
| `{f : (Fin n → ℂ) × (Fin n → ℂ) → ℂ}` | SOURCE/TYPING | Perturbation on lifted phase space. |
| `hf : IsAnalyticPerturbation R s 0 f` | RULED + SOURCE | D18-Q2 size-zero supplement; analyticity/periodicity/realness remain the source class. The size clause forces local zero. |
| `θ₀ I₀ : Fin n → ℝ` | SOURCE/TYPING | Every initial angle and initial action. |
| `hI : I₀ ∈ actionBall n (R / 2)` | SOURCE | The same inner initial domain as BM11 p. 5; avoids boundary issues. |
| `t : ℝ` in the last conjunct | TYPING, CONCLUSION | All-time constancy of the actions, not an input confinement assumption. |

The implicit quantifiers over t in `IsSolutionOn ... Set.univ` are also conclusions. This
theorem is an explicit supplement from the integrable equations, not a misattributed
numbered BM11 theorem. Its source-derived extra analytic assumptions are permitted even
though a much weaker differentiability-only integrable-orbit theorem could be proved.

### N-HEAD: `quasiConvex_nekhoroshev`

| Binder | Classification | Exact justification |
|---|---|---|
| `{n : ℕ}` | TYPING | Dimension. |
| `hn : 3 ≤ n` | RULED | D17; BM11 discusses n ≥ 3 on p. 2 but does not add this line to Theorem 2.1. |
| `{R s : ℝ}`, `hR : 0 < R`, `hs : 0 < s` | SOURCE | Fixed geometric parameters, BM11 p. 4. |
| `{M m : ℝ}`, `hM : 0 < M`, `hm : 0 < m` | SOURCE | Fixed B(M), QC(m) constants, BM11 p. 4. Their repeated positivity in predicates is harmless. |
| `∃ C T c ε₀ : ℝ` | SOURCE, CONCLUSION | Positive stable constants c₁,c₂,c₃,ε₀, BM11 p. 5. They depend only on earlier parameters. |
| `0 < C`, `0 < T`, `0 < c`, `0 < ε₀` | SOURCE, CONCLUSION | Stable means positive. |
| `C * ε₀ ^ (1/(2*n)) ≤ R/4` | RULED, CONCLUSION | D18-Q4; achievable by decreasing ε₀ after C is fixed. |
| `h`, `f`, `ε` following `∀` | SOURCE/TYPING | The Hamiltonian system C(M,m,ε), quantified after the constants. D18-Q3 expressly retains uniformity in h. |
| `IsAnalyticIntegrable R s h` | SOURCE + TYPING | h ∈ A_s(D), BM11 p. 5; real regularity guard. |
| `IsStrictlyQuasiConvex (realActionDomain n R s) h m` | SOURCE + TYPING | Literal QC(m) on the real B_s, BM11 p. 4. |
| `HasDerivativeBounds (realActionDomain n R s) h M` | SOURCE + TYPING | Literal real B(M), BM11 p. 4; F-N1 must not be concealed in its interpretation. |
| `IsAnalyticPerturbation R s ε f` | SOURCE + RULED | Source analytic perturbation; D18-Q2 changes strict supremum size to pointwise ≤ε. |
| `0 < ε` | RULED | D18-Q2 separates zero and guards negative powers. |
| `ε ≤ ε₀` | SOURCE | Smallness threshold, BM11 p. 5. |
| `θ₀ I₀ : Fin n → ℝ` | SOURCE/TYPING | Every angle/action, explicit in the proof on BM11 p. 13. |
| `I₀ ∈ actionBall n (R/2)` | SOURCE | Initial action domain, BM11 p. 5. |
| `∃ z : ℝ → ...`, `z 0 = (θ₀,I₀)` | RULED, CONCLUSION | D18-Q4 genuine solution existence with prescribed initial data. |
| `IsSolutionOn ... (Set.Icc (-Lε) Lε) z` | RULED/SOURCE, CONCLUSION | Closed advertised time interval, actual Hamilton equations; source theorem p. 5 and maximal existence p. 13. |
| `∀ t : ℝ`, `|t| ≤ Lε → ...` | SOURCE, CONCLUSION | Endpoint stability estimate at every time in the window. |
| `∀ (L : ℝ) (y : ℝ → ...)` | RULED, CONCLUSION | D18-Q4 agreement with every competing solution. |
| `0 ≤ L`, `L ≤ Lε`, `y 0 = (θ₀,I₀)`, `IsSolutionOn ... (Icc (-L) L) y` | TYPING/SOURCE, CONCLUSION tests | These select competitors for the uniqueness conclusion; they are not assumed to obtain z or its bound. |
| `∀ t ∈ Set.Icc (-L) L, y t = z t` | RULED, CONCLUSION | Ordinary ODE uniqueness on the selected interval. |

Here `Lε = T * Real.exp (c * ε ^ (-(1/(2*n))))`. Quantifier order is exactly

    n,R,s,M,m → C,T,c,ε₀ → h,f,ε → θ₀,I₀ → z → time tests and competitor tests.

The analytic predicates' expanded binders are all source or typing data: complex points
range over the specified domains; integer shifts express period one; real points impose
realness; k = 1,2,3 and ordered coordinate lists express B(M); the A inside
`IsAnalyticIntegrable` is an individual finite value bound. No normal form, resonance
covering, inverse radius, long-time trajectory, or desired drift estimate is a premise.

## 7. Definition and junk-value audit

The ten definitions in `Semantics.lean` are byte-identical to the draft, including their
docstrings. The theorem declarations were not copied or imported into that file.

| Definition | Body/carrier audit | Off-locus and boundary audit |
|---|---|---|
| `actionBall` | On `Fin n → ℝ`, the inherited norm is the maximum norm, not a Euclidean norm. `Metric.ball 0 R` is open. | Theorems require R > 0; n ≥ 3 makes the intended nontrivial coordinate space explicit. |
| `realActionDomain` | `∃ J ∈ B, ‖I_complex-J_complex‖ < s` is exactly distance < s for nonempty B. On real points with R,s > 0 it is the ball of radius R+s. | It is an open preimage under the continuous real-to-complex embedding. This turns local `ContDiffOn` into genuine ambient differentiability. |
| `complexDomain` | `complexStrip ×ˢ actionNbhd`; scalar complex modulus inside the coordinate maximum. The angle strip imposes a bound on each imaginary part. | s > 0 includes every real angle. Integer shifts preserve the domain. Unbounded real angle lifts are deliberate. |
| `realPart` | Same real function that the frozen `frequencyMap` differentiates; checked by `rfl`. | Off-domain values of the total h do not affect derivatives at interior points. No arbitrary choice/default branch. |
| `IsAnalyticIntegrable` | Holomorphic, boundary-continuous, bounded on the open domain, real on real actions, real C³. Boundary boundedness follows by continuity and compactness of the action closure. | Explicit C³ is redundant, not a conclusion-shaped assumption. The existential value bound A is not a uniform complex derivative bound. |
| `IsStrictlyQuasiConvex` | Euclidean dot product for orthogonality, maximum norm on the lower bound, positive Hessian sign. The nested `fderiv` evaluates the bilinear Hessian on `(v,v)`. | Open U and C² guard the ambient first and second derivatives at every tested I. Nonzero frequency excludes constant h. U = ∅ is harmless: N-QC separately requires I ∈ U. |
| `HasDerivativeBounds` | Ordered lists enumerate all coordinate partials of orders 1–3, including repetitions; no k! factor and no operator-norm substitution. C³ symmetry identifies equivalent multi-indices. | Open U and C³ ensure `iteratedFDeriv` is genuine. `1 ≤ k ≤ 3` excludes order zero and requests no unavailable higher derivatives. |
| `IsAnalyticPerturbation` | Period one in the angle variables, real at real points, exact sup-size condition with ≤. For ε > 0 use source size 2ε. | Explicit `0 ≤ ε` excludes negative-size vacuity. At ε = 0, norm ≤ 0 forces f = 0 throughout the open domain, not merely on the real slice. |
| `IsSolutionOn` | For each visited time: action in U, differentiability of actual H, then derivative equal to the frozen field `(∂_I H, -∂_θ H)`. | Arbitrary fake curves cannot use the off-differentiability value of `fderiv`. Empty J is vacuous as a definition, but N-HEAD's interval has positive length and N-ZERO uses all time. |
| `integrableOrbit` | `(θ₀+tω(I₀), I₀)` has the correct plus sign and constant action. | In N-ZERO the initial action is inside the open analytic domain, so ω(I₀) is genuine. Its other uses here assert only algebraic orbit values. |

Additional totalized-operation checks:

- In N-HEAD, `2*(n:ℝ) > 0`, `a = 1/(2*n) > 0`, and ε > 0. No `1/0`, negative
  base or zero-base negative-power interpretation is used. The exponent and time-window
  identities are checked in Lean. Time positivity alone would not detect a zero-ε
  loophole, so the positive-ε premise is checked separately in the theorem type.
- ε₀ > 0 guards the smallness-margin power. The interval `Icc (-Lε) Lε` agrees with
  `|t| ≤ Lε`; the two spellings are machine-checked equivalent.
- No matrix inverse, determinant inverse, square root, Bochner integral, or choice of
  a witness appears in these ten bodies. A classical finite-dimensional bijectivity
  proof for N-QC will not require a totalized matrix inverse.
- `HasDerivAt` at closed endpoints is an ordinary two-sided derivative. It is stronger
  than a one-sided ODE assertion, but attainable: the action margin permits local
  continuation past each endpoint. Curves can then be extended as total functions.
- At L = 0, the uniqueness clause only asserts equality at the common initial point;
  for L > 0 it is ordinary uniqueness of a smooth vector field. No assertion is made
  about a competing total curve outside its solution interval.
- All reused frozen definitions have the intended coordinate order and signs, and are
  used without changing their carriers. No quarantined anchor/provider enters the draft.

## 8. Truth tests, non-vacuity and genuine dynamics

**N-QC.** Write ω = ∇h(I) and A = D²h(I). C² on an open neighbourhood identifies the
draft's actual derivative with

    (v,u) ↦ (ω·v, uω + λAv).

If this is zero, pair the second component with v and use the first component:
`0 = λ v·Av ≥ λm‖v‖∞²`. Thus v = 0, and uω = 0 implies u = 0 because ω ≠ 0.
The domain and codomain both have dimension n+1, so injectivity implies bijectivity.
This proves the precise mathematical claim without any uniform inverse-radius premise.

**N-ZERO.** The norm-zero hypothesis forces f to vanish on an open complex neighbourhood
of every real phase point whose action is in B. Its real restriction and all first
derivatives vanish locally. The actual Hamiltonian therefore has field `(ω(I),0)` there.
Differentiating the displayed affine curve gives this field for every real t. Its action
remains I₀ ∈ B(0,R/2) ⊂ B for all t. Neither nonvanishing frequency nor QC is needed.

**N-HEAD.** The chosen exponents satisfy

    δ(n-1) = 1/(2n),
    1/(2(n-1)) - δ = 1/(2n),     δ = 1/(2n(n-1)).

These identities are checked in Lean. For ε > 0, the size conversion uses source
parameter 2ε and gives `C = c₁2ᵇ`, `T = c₂`, `c = c₃2⁻ᵃ`, with the source smallness
threshold halved. Decreasing ε₀ gives `Cε₀ᵇ ≤ R/4`. If a provider proves only a strict
time interval, decrease T as well before claiming the closed interval. These are valid
constant adjustments, not changes in the requested exponents or dependence.

The remaining source gap is precisely §4, not an exponent calculation. This audit does
not infer a uniform complex bound from mere holomorphy, and does not certify a uniformly
valid exponential remainder under the current premises.

**Natural data satisfying the hypotheses.** Use n = 3, R = s = 1, m = 1, M = 6 and

    h(z) = 3z₀ + (z₀²+z₁²+z₂²)/2,
    f(θ,I) = [ε/(2 cosh(2π))] cos(2πθ₀),    ε ≥ 0.

On B_s = (-2,2)³, the frequency is `I+3e₀`, whose zeroth component exceeds 1;
the Hessian is the identity and every third partial is zero. First partials are bounded
by 5, second partials by 1. The Hessian quadratic form is `Σvᵢ² ≥ ‖v‖∞²`.
The functions are entire and real on the real slice. The complex action closure has
coordinate moduli at most 2, so h has a finite bound, for instance 12. On the angle
strip, `|cos(2πθ₀)| ≤ cosh(2π)`, giving `‖f‖ ≤ ε/2 ≤ ε`. Periodicity is exactly one.
Every initial action in B(0,1/2), every real initial angle, and any λ > 0 are available.
Thus all three theorem hypothesis packages have natural models. Once N-HEAD's positive
ε₀ is chosen, take any ε in `(0,ε₀]` in this family.

The centered quadratic `ΣIᵢ²/2` is **not** an N-HEAD/N-QC witness on this domain, because
its gradient vanishes at zero. That fact is machine-checked. It **is** a valid N-ZERO
example: that theorem deliberately omits QC. No claim is made that every arbitrary
positive tuple M,m admits a Hamiltonian; some parameter classes can be empty without
making the theorem universally vacuous.

**Continuation and physical meaning.** On real actions inside B, Cauchy estimates for f
give uniform derivative bounds using its sup bound and the positive width s. B(M)
bounds the real derivatives of h. Periodicity and these estimates bound the lifted angle
velocity; an angle lift cannot run to infinity in finite time while actions stay in the
compact interior tube. The claimed action estimate gives

    ‖I(t)‖∞ ≤ ‖I₀‖∞ + Cεᵇ < R/2 + R/4 = 3R/4.

Local existence and uniqueness for the actual smooth Hamiltonian field then give
continuation to, and slightly beyond, the finite endpoints. This supplies the extra
ODE clauses once the drift estimate is proved. For a one-sided proof, negative time can
be handled by reflecting the angles, `H'(θ,I)=H(-θ,I)`, preserving h and QC; simply
replacing h by -h would reverse the selected positive Hessian condition.

N-HEAD asserts finite exponential-time stability, not all-time stability for positive
ε. N-ZERO asserts genuine all-time dynamics. Neither claims collision exclusion,
Newtonian escape exclusion, or applicability to a singular planetary potential. There
is no physical proxy standing in for Hamilton's equations.

## 9. Downstream contracts and errata handoff

The first major analytic obligation is a resonant normal form with an exponentially
small remainder and explicit domain/displacement bounds, **uniform in the exact class
of h stated here**. Existing weighted Fourier estimates do not establish this. Before
the normal form can be imported from Pöschel, its complex Hessian and quantitative QC
premises must be supplied with the required dependence; F-N1 rules out one tempting
shortcut. Source-fidelity of BM11's printed endpoint is not payment of that obligation.

Other required providers remain: primitive lattice/rank geometry, resonance coverage,
energy confinement, a correctly uniform inverse statement at normalized frequencies,
resonant restart on a larger inner ball, and ODE continuation. N-QC supplies only
pointwise nonsingularity. It supplies no inverse norm, image-ball radius or global
injectivity of the frequency map. Its n ≥ 3 restriction should be removed before
claiming it serves the n = 2 consumer in track I.

Report the following to the orchestrator's ledger; this audit did not edit that ledger:

| Candidate | Literal location/evidence | Assessment and correction |
|---|---|---|
| E-N-BM-1 (existing) | BM11 p. 5: `|f|_s < ε`, `0 ≤ ε ≤ ε₀`, and a negative power of ε in time. | Verified: ε = 0 has empty hypotheses. The draft's positive-size theorem plus zero supplement is the correct explicit treatment, not a positive-ε counterexample. |
| E-N-BM-2 (existing) | BM11 p. 9, Lemma 3.3: uniform “stable constants ρ₀ and C”; image centre printed `Ψ_h(I₀)`. | The unrestricted λ-uniform covering assertion is refuted in §5.1; the centre also omits λ₀. Retain pointwise inverse theorem and explicitly quantify any restricted uniform version. |
| E-N-BM-3 (existing) | BM11 p. 13: same-inner-ball restart quoted in F-N3. | The displacement implication is refuted in §5.2. Supply a larger-inner-ball resonant contract. |
| E-N-BM-4 (new proposal) | BM11 p. 8: “exactly the content of Theorem 3”; compare BM11 p. 4 with Pöschel p. 190, `sup_{I∈V_{r₀}P} ‖Q(I)‖ ≤ M`. | Missing uniform complex analytic input in this cited dependency. The family in §4 proves non-implication from real B(M). This is not a proved counterexample to BM11 Theorem 2.1. |
| E-N-BM-5 (new proposal) | BM11 p. 12: `k′ = qe_i − pe_j`, and primitivity deduced from coprimality. | Need `k′ ≠ 0`; ±1 with i=j can give zero. Select a strictly interior rational and adjust stable numerical constants. The printed `k′ ∈ ℤ` also needs `ℤⁿ`. |
| E-N-GCB-1 (existing, deferred source) | GCB16 p. 4: `0 ≤ ε < ε₀`, time `T/√ε exp(c/εᵃ)`. | Zero requires an integrable all-time convention or a separate statement. No N-STEEP Lean claim was made. |
| E-N-GCB-2 (existing, deferred source) | GCB16 p. 3: “α₁ = ··· = αₙ = 1”; its steepness data immediately below end at n−1. | Verified index typo; replace αₙ by α_{n−1}. |
| E-N-GCB-3 (new proposal, deferred source) | GCB16 p. 3, footnote 5: `|u| = Σ_i |u₁|`. | The summand must be `|uᵢ|` for the intended ℓ¹ norm. With the printed constant subscript this is not a norm for n > 1. No selected theorem uses that typo. |
| E-N-POS-1 (new proposal, explanatory sentence only) | Pöschel p. 190: “For the symmetric operator Q this norm amounts to the spectral radius norm.” | Valid on the real slice, but not for a general complex symmetric Hessian on `V_{r₀}P`. The symmetric matrix `[[i,1],[1,-i]]` is nonzero and squares to zero, so spectral radius is zero while operator norm is positive. Restrict the sentence to real points or retain the singular-value/operator norm. The actual operator-norm hypothesis in the preceding display is unambiguous. |

The new analytic-gap family and the matrix observation are mathematical calculations
in this report, not Lean refutations of N-HEAD. No erratum is claimed for unread portions
of the original Lochak source. Pöschel's source norm is Euclidean, its angles have period
2π, and its perturbation norm is Fourier weighted; translations to the current period-one
maximum-norm framework need explicit dimension and 2π factors, not new theorem premises.
The frequency-neighbourhood reading used by BM11 is supported by Pöschel's paragraph
on printed p. 207 beginning “Incidentally”; it is not itself a newly alleged gap.

Deviations D-N-1..7 remain as recorded in `statement.md`, with the owner shape rulings
D17–D18 now in effect. This audit introduces no change to a source law or a theorem
type. Its suggested optional dimension generalization and any future complex-bound
variant must be labelled separately. N-STEEP deferral is authorized and is not a missing
deliverable in this audit.

## 10. Validation and reproducibility

Run from `/root/code/KAM`, with only one Lean invocation active at a time and no budget
override. Scratch proofs were developed at default settings; ordinary elaboration
errors were repaired, and final successful outputs are the receipts below. No
heartbeat failure was masked. The source-refutation module has 104 lines; the semantic
module is below 200 lines; the audited draft has 158 lines.

Hard rules retained verbatim:

> Never use `set_option maxHeartbeats` (or any heartbeat-budget override). A
> default-heartbeat elaboration failure is a design signal to refactor or split the
> proof, not something to mask with a larger budget. If a proof will not elaborate at
> default heartbeats, report it as a design signal.
>
> No Lean file may exceed 1500 lines of code.

### Draft elaboration and axioms

Command: `nice -n 5 lake env lean .drafts/N/Statements.lean` — exit 0.

```text
.drafts/N/Statements.lean:102:8: warning: declaration uses `sorry`
.drafts/N/Statements.lean:113:8: warning: declaration uses `sorry`
.drafts/N/Statements.lean:129:8: warning: declaration uses `sorry`
'KAM.Nekhoroshev.quasiConvex_isoenergetic_derivative' depends on axioms: [propext,
 sorryAx,
 Classical.choice,
 Quot.sound]
'KAM.Nekhoroshev.zero_perturbation' depends on axioms: [propext, sorryAx, Classical.choice, Quot.sound]
'KAM.Nekhoroshev.quasiConvex_nekhoroshev' depends on axioms: [propext, sorryAx, Classical.choice, Quot.sound]
```

### Source refutations

Command: `nice -n 5 lake env lean .drafts/N/audit-scratch/SourceRefutations.lean` — exit 0,
no warnings or errors.

```text
'KAM.Nekhoroshev.Audit.no_uniform_image_ball' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Nekhoroshev.Audit.no_uniform_same_inner_ball_margin' depends on axioms: [propext, Classical.choice, Quot.sound]
```

### Semantic checks

Command: `nice -n 5 lake env lean .drafts/N/audit-scratch/Semantics.lean` — exit 0,
no warnings or errors. Exact output (also saved in `audit-scratch/semantics-output.txt`):

```text
'KAM.Nekhoroshev.Audit.frequency_realPart' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Nekhoroshev.Audit.zero_on_domain' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Nekhoroshev.Audit.solution_guard' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Nekhoroshev.Audit.time_window' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Nekhoroshev.Audit.endpoint_exponents' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Nekhoroshev.Audit.time_scale_pos' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Nekhoroshev.Audit.exponent_pos' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Nekhoroshev.Audit.orbit_values' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Nekhoroshev.Audit.centered_quadratic_has_critical_point' depends on axioms: [propext, Classical.choice, Quot.sound]
```

These checks cover the real gradient identity, norm-zero perturbations, the solution
differentiability guard, time windows, endpoint exponents, positivity, orbit values, and
the centered quadratic's critical point. No draft theorem is imported or assumed.

### Targeted build and production lint

Command: `nice -n 5 lake build KAM.Frozen.Defs.HamiltonianVectorField` — exit 0.
This is a targeted build of the reused dynamics dependency, using the existing cache,
not a whole-library build. Output:

```text
Build completed successfully (1951 jobs).
```

Command: `scripts/lint_sources.sh` — exit 0. Output:

```text
check_lean_modules: PASS (40 Lean files, 0 comparator configurations)
FROZEN-ANCHOR GUARD OK
ABI HASHES OK (25 frozen declarations)
```

The historical `.drafts` guard rejection in `notes.md` does not describe the current
guard. Its current exclusion of `.drafts/` also means production lint is **not** a
scratch-proof validation; the direct elaborations and separate static checks are needed.

`git diff --check` passed without output. The ten copied definitions/docstrings were
compared byte for byte by a Python assertion and passed. Final report/scratch whitespace,
line-cap, prohibited-token, and pin checks are recorded below. Other agents' concurrent
changes are outside this audit's ownership and were not reverted or included as audit work.

Command: `python3 .drafts/N/audit-scratch/check-audit.py` — exit 0. Output:

```text
PASS module/static checks: .drafts/N/audit-scratch/Semantics.lean (185 lines)
PASS module/static checks: .drafts/N/audit-scratch/SourceRefutations.lean (104 lines)
PASS report whitespace/control characters
PASS ten copied definitions and docstrings byte-identical
PASS final pin: .drafts/N/Statements.lean
PASS final pin: docs/tracks/N/statement.md
PASS final pin: docs/tracks/N/sources.md
PASS final pin: docs/tracks/N/notes.md
PASS final pin: docs/DECISIONS.md
a76a24c469f119701c2e0c6aad314a8023568d0768db41b3439a60b77a6fe047 .drafts/N/audit-scratch/Semantics.lean
b9dcde785abe00e6af96308039ab8601d05c9fc00e3bf4970c041087c5a7345c .drafts/N/audit-scratch/SourceRefutations.lean
```

The final scoped `git diff --check -- docs/tracks/N/AUDIT-statements-v0.1.md` also exits
0 without output. Because this new report is untracked, the direct whitespace check
above is the check that actually covers its contents.

Deliverables: this report; `Semantics.lean`; `SourceRefutations.lean`; the read-only
checker and semantic output receipt; local PDF extracts and page images in the scratch
directory. The audit is complete. The unresolved mathematical issue is F-N1's exact
uniform analytic dependency, with the other source repairs and uncertainties explicitly
bounded above; no requested file or binder audit is deferred.
