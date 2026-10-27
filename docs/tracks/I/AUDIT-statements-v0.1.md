# Track I statement audit, v0.1

**Declaration verdict: APPROVABLE for all four theorem types and all fifteen definition bodies.**
No false draft statement, excess mathematical premise, unguarded junk-value use, or incompatible
track-K definition was found. The package has minor attribution and source-transcription corrections
listed below. This is a statement audit, not approval by the owner of the exact Lean text and not a
proof of the three substantial analytic/dynamical theorems. All four original theorem bodies still
use `sorry`. The exact Kepler determinant conclusion was independently proved in audit scratch.

Auditor: independent of the draft author; 2026-10-27. Scope: `.drafts/I/Statements.lean`, its
mathematical specification and source notes, the reused frozen definition closure, and the cited
source pages. Method: tier-2 correspondence audit, with separate source reconstruction, binder/body
inspection, attempted counterexamples, and a final refutation pass. The refutation pass was performed
by this auditor; no second-agent review or completed analytic proof audit is claimed.

## 1. Permission, snapshots and status

The user and `.drafts/briefs/track-audit.md` authorize this report, scratch files below
`.drafts/I/audit-scratch/`, direct draft elaboration and the required lint. No other source was edited;
no state-changing git command was run. In particular, no frozen file, manifest, ledger, README or root
import file was changed. The pre-existing change to `blueprint/parts/p2-aposteriori.tex` was left alone.

The applicable hard rules include, verbatim:

1. **Never use `set_option maxHeartbeats`** (or any heartbeat-budget override). A default-heartbeat elaboration
   failure is a design signal to refactor or split the proof, not something to mask with a larger budget. If a
   proof will not elaborate at default heartbeats, report it as a design signal.
2. **No Lean file may exceed 1500 lines of code.** When a file approaches the cap, split it into focused modules,
   preserving public import paths as cheap facades.

`audit-I-v1` was recorded before findings at commit
`f9ec180af1f003c81fc168f55ca7f06466ea48b9`; its full manifest is
`.drafts/I/audit-scratch/snapshot.json`. During this audit, another campaign process committed D19,
the owner's answers to track-I Q1–Q5, and annotated `statement.md`. I inspected the exact diff and
recorded `audit-I-v2` at `b1e726e77464fa4ed73ba6565728ab33a30b6058` in
`snapshot-v2.json`, with `snapshot-v2.diff`. **No Lean draft, source PDF or frozen anchor changed.**
The binder tables below incorporate D19; the exact Lean text still awaits the approval specified in D19.

All draft line references below refer to these identical 257 draft lines in both snapshots.

| Input | SHA-256 at audit-I-v2 |
|---|---|
| `.drafts/I/Statements.lean` | `bbadf0edc974cf7f6592b5f90393a773160c5f74af6066ecbbbc16124aa92d47` |
| `docs/tracks/I/statement.md` | `060e16321cf4c51b6bf2219d5c4c542e6a5678807b16de0f25f6fdec979ea3ae` |
| `docs/tracks/I/sources.md` | `ef1b73d81a8025023171f83bdbbad699360779344fd0739b3597a3989dbbb3cd` |
| `docs/tracks/I/notes.md` | `dd809a493524656077f5fb6e16f79aad7c92bfe237f5f3eb734be63cb865c98e` |
| `docs/DECISIONS.md` | `2ea4d1ddafcad224a0706d8a926c8c4dac31dfe723fa0d2095dbe2b71fd85b44` |
| `manifest/frozen-anchors.json` | `9610e7ca4f1bcb324113ffdc8dc19c8828833203cb9974fd4fb5a24d8b2594af` |
| HL19, `sources/pdf/arxiv_1711.05515.pdf` | `ed457633b5c4f0412b7f2c81c3818ef88829dee3420b97864e42223b77eb5241` |
| Chi05, `sources/incoming-I/chierchia-delaunay.pdf` | `31ed844d0916b4b76c02f1da07051f36bfade0338db0b060ec4fa6eab688fe1a` |
| CC03, `sources/incoming-I/cc07.pdf` | `ddab68a2b4f7ffe0fa3808fd5ec554531ab0609557b2445b0e6e3f5cba5bd2e2` |

The complete scratch manifests also pin AGENTS, PLAN, TRACKS, the audit brief, the background Arnold
PDF and every frozen file. The twenty frozen definition file hashes match their manifest entries;
repository lint independently reports all 25 elaborated ABI hashes matching. The reused definition
bodies were read, not inferred from their names or the old audit.

The [HL19 arXiv v1 record](https://arxiv.org/abs/1711.05515v1) independently confirms the version and
59-page identity. The author-hosted Chi05 URL returned HTTP 502 to the web tool; the available local
PDF matches the pin and was read directly. No remote replacement was used. Fresh `pdftotext` output
and fresh page renderings were generated from the pinned local PDFs into audit scratch. HL19 printed
and PDF page numbers agree. The CC03 references are to the December 2003 preprint, not the 2007
journal pagination. Arnold is historical background and supplies no theorem used in this audit.

For the four original theorem declarations:

```text
DECLARATION_FIDELITY: PASS (with documented adaptations and D19)
MANIFEST_STATE: UNFROZEN_DRAFT; no track-I anchor exists
PROOF_STATUS: UNPROVED; each original theorem depends on sorryAx
PRODUCTION_AVAILABILITY: NONE
```

The draft-stage permission is not a production `DRAFT_SORRY` manifest entry. The scratch determinant
proof does not seal, replace or change the original declaration.

## 2. Verdict for every declaration

Names are in `KAM.Iso`. Definition verdict details are in §5.

| Declaration | Draft line | Verdict | Reason / boundary |
|---|---:|---|---|
| `extendedTorsion` | 39 | APPROVABLE | Literal HL19 (3.13), with the actual approximate energy row. |
| `extendedTorsionAverage` | 50 | APPROVABLE | Entrywise period-one average; integrability follows at every theorem use. |
| `energyAverage` | 58 | APPROVABLE | Literal average in (3.14). |
| `isoenergetic_kam` | 66 | APPROVABLE | Correct uniform quantifiers and D19 margins; see §§4, 6, 9. |
| `borderedHessian` | 114 | APPROVABLE | Hessian and frequency of the real restriction, with correct indices and signs. |
| `IsHamiltonianSolutionOn` | 124 | APPROVABLE | Actual differential equation and differentiability guard; no assumed confinement. |
| `all_time_confinement` | 133 | APPROVABLE | True qualitative two-degree-of-freedom confinement surface; proof is substantial and new. |
| `radiusSq` | 164 | APPROVABLE | Sum of two squares, not ambient max-norm squared. |
| `radius` | 167 | APPROVABLE | Nonnegative Euclidean length. |
| `primary₁` | 171 | APPROVABLE | Barycentric primary of mass `1-μ`. |
| `primary₂` | 174 | APPROVABLE | Barycentric primary of mass `μ`. |
| `CollisionFree` | 178 | APPROVABLE | Both genuine physical distances are positive. |
| `restrictedHamiltonian` | 183 | APPROVABLE | Exact Newtonian potential and correct rotating-frame term. |
| `restrictedVectorField` | 190 | APPROVABLE | Exactly the Hamilton equations of the displayed physical Hamiltonian. |
| `IsRestrictedSolutionOn` | 200 | APPROVABLE | Collision-free solutions of the exact field, with full time derivative. |
| `NearCircular` | 209 | APPROVABLE | Literal orbital-element relations with positive radii, semimajor axes and eccentricities. |
| `keplerBorder` | 219 | APPROVABLE | Literal matrix on the positive-L carrier. |
| `kepler_bordered_det` | 226 | APPROVABLE | Exact conjunction independently proved in Lean scratch without `sorry`. |
| `restricted_near_circular` | 235 | APPROVABLE | Exact-model small-mass application; uniformity follows from a compact safe enclosure. |

There are **zero blocking or major findings against these declaration types/bodies**. The author
header needs the minor correction F-I-01. All original proofs remain open; APPROVABLE must not be read
as PROVED or as permission to import an unavailable anchor.

## 3. Findings table

The severity in this table is relative to the draft package. Source defects, including some false
printed estimates, are recorded separately in §9 with precise evidence and refutation status.

| ID | Declaration / artifact | Severity | Finding and evidence | Exact proposed Lean change |
|---|---|---|---|---|
| F-I-01 | Draft header, lines 2–4 | minor | Only Scott Armstrong is named. D15 says the repository's authors are Scott Armstrong and Zohar Komargodski; D16 confirms the same header convention. This is an attribution defect, not a theorem defect. | Change line 2 to `Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.` and line 4 to `Authors: Scott Armstrong, Zohar Komargodski`. Do not change any declaration. |
| F-I-02 | `sources.md`, `notes.md` | minor | CC03 p. 7 prints `\|ε\| ≤ 10⁻³`, whereas these notes report `<`. Also HL19 (2.1) is printed on p. 6, and Chi05 (3.37) is on p. 13; the notes place them at p. 7 and pp. 11–12 respectively. Verified against the pinned pages. | None. Correct the source transcriptions/locators only. No change to `μ < μ₀` in I-R3BP: that is our theorem, not this CC03 claim. |
| F-I-03 | I-G1 frequency estimate | note | HL19 (3.16), p. 19, has `γ²ρ^(2τ)`; (6.51), p. 53, has `γρ^τ` with the named Table-5 constant. They cannot be identified literally. The current quantifier order permits a uniform conversion (§6). | None. In the provider use a fresh constant, e.g. `C₃ := A₃ * γbar * ρ ^ τ`, after bounding the proof's coefficient by `A₃`. Do not claim the same printed Table-5 `C₃`. |
| F-I-04 | I-G1 source adaptation | note | HL19 p. 14 uses sums of component suprema; H2–H3, p. 17, include closed-strip regularity. The draft uses pointwise operator/row-sum bounds on an open strip. Dimensional factors and a fixed intermediate strip are required; source constants cannot be copied verbatim. | None. Derive the converted bounds and the requested half-margins in the provider. D19-Q1 and track-K D-G1-1 support the chosen uniform surface. |
| F-I-05 | I-HEAD proof route | note | CC03 p. 7 has a region whose boundary consists of two KAM tori, on one energy level of a different Hamiltonian. This does not itself prove I-HEAD. The required local energy cylinder, graph property, uniform energy window and ODE continuation are genuinely additional work (§7). | None. Prove these ingredients, without adding them as hypotheses to `all_time_confinement`. |
| F-I-06 | I-R3BP proof route | note | CC03 p. 6 explicitly says “we replace the perturbation F”; its polynomial (1.4) is not the exact restricted potential. Chi05 (3.40) uses a different mass/perturbation normalization. The draft correctly avoids both substitutions. | None. Prove the canonical coordinate change and an `O(μ)` estimate for the actual displayed Cartesian Hamiltonian on one fixed complex neighborhood. |
| F-I-07 | Prior validation receipt | note | `notes.md` records an earlier lint failure. The fresh audit invocation exits 0: module check PASS, frozen guard OK, all 25 ABI hashes OK. The earlier receipt is historical, not a current failure. | None. Keep the fresh receipt in this report; do not edit guards or other tracks. |

F-I-01 and F-I-02 survived direct comparison with D15/D16 and the rendered source. The possible
mathematical objections behind F-I-03–06 were tested against the draft's actual guards and are not
counterexamples. The following are explicitly *not* findings: omission of a globally injective
frequency map; absence of a regular-boundary assumption; use of lifted unbounded angles; inclusion
of zero perturbation or zero small-primary mass; lack of a physical mass-ratio number; and use of a
nonintegrable/singular total operation outside its guarded theorem domain.

## 4. Binder classification

Bins: **SOURCE**, **STANDING**, **TYPING**, **RULED**, **EXCESS**. SOURCE includes an equivalent
quantitative presentation of an actual source premise; its deviations are stated explicitly.
STANDING denotes the specified analytic/model setting of our new I-HEAD/I-R3BP theorem, checked
here, rather than pretending those new theorems were printed in HL19 or CC03. RULED cites actual D19
or other owner decisions, never an unanswered proposal. No stability estimate, barrier, coordinate
existence theorem, perturbation-remainder estimate or global solution is smuggled into an assumption.

Rows split conjunctions and the project-owned predicates. Local quantified variables inside a row
are shown in its text; they are typing binders, not additional hypotheses. Witness and conclusion
quantifiers are inventoried separately, so they are not incorrectly counted as source premises.
There are no hidden instance or section-variable inputs to the four theorem commands; the explicit
`autoImplicit=false`, `relaxedAutoImplicit=false` elaboration also passed.

### 4.1 I-G1: outer and universally quantified data

| ID | Binder | Bin | Evidence |
|---|---|---|---|
| G01 | `{n : ℕ}` | TYPING | Dimension of the canonical spaces. |
| G02 | `hn : 2 ≤ n` | SOURCE | HL19 Thm 3.1, p. 16, `2 ≤ d ≤ n`; Rem. 3.2 sets d=n. |
| G03 | `{τ : ℝ}` | SOURCE | HL19 H5′, p. 19. |
| G04 | `hτ : n - 1 ≤ τ` | SOURCE | H5′, same page. |
| G05 | `{ρ : ℝ}` | SOURCE | Initial strip, H2, p. 17. |
| G06 | `{ρinf : ℝ}` | SOURCE | Thm 3.6, p. 19. |
| G07 | `hρinf : 0 < ρinf` | SOURCE | `0 < ρ∞ < ρ`, p. 19. |
| G08 | `hρinfρ : ρinf < ρ` | SOURCE | Same. |
| G09 | `{M : ℝ}` | SOURCE | Uniform majorant for H1 and H1′, pp. 17–18. |
| G10 | `{σK : ℝ}` | SOURCE | H2 derivative bound, p. 17. |
| G11 | `{σB : ℝ}` | SOURCE | H3 inverse-Gram bound, p. 17. |
| G12 | `{σT : ℝ}` | SOURCE | H4′ extended inverse bound, p. 19. |
| G13 | `{μ : ℝ}` | RULED | D19-Q1 uniform geometric and norm gaps. |
| G14 | `{γbar : ℝ}` | RULED | D19-Q1. |
| G15 | `{σω : ℝ}` | SOURCE | H5′ ray endpoint, p. 19; fixed early per D19-Q1. |
| G16 | `{ν : ℝ}` | RULED | D19-Q1 endpoint-distance margin. |
| G17 | `hM : 0 < M` | TYPING | Positive norm majorant. |
| G18 | `hσK : 0 < σK` | TYPING | Positive norm majorant. |
| G19 | `hσB : 0 < σB` | TYPING | Positive norm majorant. |
| G20 | `hσT : 0 < σT` | TYPING | Positive norm majorant. |
| G21 | `hμ : 0 < μ` | RULED | Positive D19-Q1 margin. |
| G22 | `hγbar : 0 < γbar` | RULED | Positive D19-Q1 upper bound. |
| G23 | `hσω : 1 < σω` | SOURCE | H5′ literally. |
| G24 | `hν : 0 < ν` | RULED | Positive D19-Q1 endpoint margin. |
| G25 | `ωstar : Fin n → ℝ` | SOURCE | H5′; fixed before constants by D19-Q1. |
| G26 | `hωstar : ωstar ≠ 0` | TYPING | Nonzero direction of the ray; already follows from later positive-γ Diophantine premise. It does not demand a further result. |
| G27 | `D : Set (ℂⁿ × ℂⁿ)` | SOURCE | H1 complex domain. |
| G28 | `H : ℂⁿ × ℂⁿ → ℂ` | SOURCE | Hamiltonian, with c=H in Rem. 3.7. |
| G29 | `K : ℂⁿ → ℂⁿ × ℂⁿ` | SOURCE | Approximate parameterization, H2. |
| G30 | `s : ℝ` | SOURCE | Ray parameter in H5′. |
| G31 | `γ : ℝ` | SOURCE | H5′. |
| G32 | `e : ℝ` | TYPING | A real majorant for the max norm of the total error (3.14). |
| G33 | `E₀ : ℝ` | SOURCE | The prescribed real first-integral value c₀, p. 18. |

### 4.2 I-G1: every logical premise, expanded

| ID | Premise | Bin | Evidence |
|---|---|---|---|
| G34 | `IsOpen D` | SOURCE | H1 analytic complex domain. |
| G35 | `∀ z∈D, ∀ k:ℤⁿ, (z.1+k,z.2)∈D` | STANDING | HL19 Rem. 2.3, p. 7, toroidal ambient domain. |
| G36 | `DifferentiableOn ℂ H D` | SOURCE | H1 holomorphy. |
| G37 | `∀ z∈D, ∀ k:ℤⁿ, H(z.1+k,z.2)=H z` | STANDING | Rem. 2.3, angle period one. |
| G38 | Real θ,I with complexification in D imply `(H(θ,I)).im=0` | SOURCE | Real Hamiltonian and its analytic extension, H1. |
| G39 | `∀ z∈D, ‖fderiv ℂ H z‖ ≤ M` | SOURCE | H1 `‖Dh‖ ≤ c_(h,1)`, p. 17. |
| G40 | `∀ z∈D, ‖X_H z‖ ≤ M` | SOURCE | H1 `c_(Xh,0)`. |
| G41 | `∀ z∈D, ‖DX_H z‖ ≤ M` | SOURCE | H1 `c_(Xh,1)`. |
| G42 | `∀ z∈D, ‖D²X_H z‖ ≤ M` | SOURCE | H1 `c_(Xh,2)`. |
| G43 | `∀ z∈D, ‖D²H z‖ ≤ M` | SOURCE | H1′ with c=H, p. 18. |
| G44 | `DifferentiableOn ℂ K (complexStrip n ρ)` | SOURCE | H2, with open-strip adaptation. |
| G45 | `IsPrimaryOnStrip`: `∀ θ∈Tρ, ∀ k:ℤⁿ, K(θ+k)=Kθ+(k,0)` | STANDING | Rem. 2.3; exact frozen definition. |
| G46 | `IsRealOnReals`: for every real θ, Kθ is the complexification of a real phase point | SOURCE | H2 real analytic parameterization. The real phase point is an existential witness, not an extra assumed function. |
| G47 | `∀ θ∈Tρ, ball(Kθ,μ) ⊆ D` | RULED | H2 domain margin quantified by D19-Q1. |
| G48 | `∀ θ∈Tρ, ‖DKθ‖ ≤ σK-μ` | RULED | H2 norm gap quantified by D19-Q1. |
| G49 | `∀ θ∈Tρ, IsUnit (gramMatrix K θ).det` | SOURCE | H3 and the inverse in (3.4). |
| G50 | `∀ θ∈Tρ, ∀ i, ∑j ‖(gramMatrix K θ)⁻¹ i j‖ ≤ σB-μ` | RULED | H3 gap, D19-Q1; actual row-sum norm. |
| G51 | `IsUnit (extendedTorsionAverage H K (s • ωstar)).det` | SOURCE | H4′ invertibility of the average, p. 19. |
| G52 | `∀ i, ∑j ‖(extendedTorsionAverage …)⁻¹ i j‖ ≤ σT-μ` | RULED | H4′ gap, D19-Q1. |
| G53 | `1 < s` | SOURCE | H5′. |
| G54 | `s < σω` | SOURCE | H5′. |
| G55 | `ν ≤ (s-1)*‖ωstar‖` | RULED | D19-Q1; lower endpoint distance in (6.48). |
| G56 | `ν ≤ (σω-s)*‖ωstar‖` | RULED | D19-Q1; upper endpoint distance. |
| G57 | `0 < γ` | SOURCE | H5′. |
| G58 | `γ ≤ γbar` | RULED | D19-Q1 uniformization. |
| G59 | `IsDiophantine γ τ ωstar`: for every nonzero k:ℤⁿ, `γ/(∑i \|kᵢ\|)^τ ≤ \|∑i kᵢω*ᵢ\|` | SOURCE | HL19 (3.1), p. 14, H5′. No factor 2π belongs in this definition. |
| G60 | `0 ≤ e` | TYPING | Nonnegative norm majorant. |
| G61 | `∀ θ∈Tρ, ‖X_H(Kθ)-DKθ(sω*)‖ ≤ e` | SOURCE | Invariance component of (3.14). |
| G62 | `‖⟨H∘K⟩-(E₀:ℂ)‖ ≤ e` | SOURCE | Energy component of (3.14). |
| G63 | `C₁*e/(γ^4*ρ^(4τ)) < 1` | SOURCE | (3.15), p. 19. |

The five H1 conjuncts and the two Gram conjuncts are separately classified above. The project
definitions inside them expand to genuine derivatives, bilinear Gram products, inverse matrices,
the normal frame, and the entrywise border average; their entire bodies are audited in §5. They
hide no extra assumptions. Local z, θ, I, k, i, j binders merely range over the displayed carriers;
membership/nonzero antecedents restrict the domain of the relevant universal condition.

The quantifier order is

```text
n τ ρ ρinf M σK σB σT μ γbar σω ν ωstar, their guards
  → ∃ C₁ C₂ C₃ > 0,
      ∀ D H K s γ e E₀, G34–G63 → ∃ Kinf sinf, conclusion.
```

The conclusion witnesses are `Kinf` and `sinf`. Every θ in its analytic, domain, derivative,
invariance, pointwise-energy and closeness clauses is quantified on `Tρinf`; the frequency estimate
is a scalar conjunction outside that quantifier. No γ, H, K, e or E₀ can affect the already-chosen
constants. No conclusion condition is reused as an assumption.

### 4.3 I-HEAD: every input binder and premise

| ID | Binder / premise | Bin | Evidence |
|---|---|---|---|
| H01 | `B : Set (Fin 2 → ℝ)` | STANDING | Track-I two-degree-of-freedom action domain, TRACKS / statement I-HEAD. |
| H02 | `hB : IsOpen B` | STANDING | Analytic Hamiltonian domain. |
| H03 | `hBb : IsBounded B` | STANDING | Stated bounded action domain; no regular boundary required. |
| H04 | `hBne : B.Nonempty` | STANDING | Nonempty action domain; it asserts no dynamical conclusion. |
| H05 | `{s₀ : ℝ}` | STANDING | Fixed common complex angle width. |
| H06 | `{r₀ : ℝ}` | STANDING | Fixed common action neighborhood. |
| H07 | `hs : 0 < s₀` | TYPING | Positive width. |
| H08 | `hr : 0 < r₀` | TYPING | Positive width. |
| H09 | `h : (Fin 2 → ℂ) → ℂ` | STANDING | Integrable Hamiltonian. |
| H10 | `hh : DifferentiableOn ℂ h (actionNbhd B r₀)` | STANDING | Fixed analytic neighborhood. |
| H11 | `hhreal`: h is real at every real point in that neighborhood | STANDING | Real Hamiltonian. |
| H12 | `hiso`: for every real I in that neighborhood, `(borderedHessian h I).det ≠ 0` | RULED | D19-Q3; isoenergetic criterion HL19 (3.17), Chi05 p. 17. It is not ordinary Hessian invertibility. |
| H13 | `B' : Set (Fin 2 → ℝ)` | STANDING | Initial action set. |
| H14 | `hB' : IsOpen B'` | STANDING | The stated relatively compact initial domain. |
| H15 | `hcompact : IsCompact (closure B')` | STANDING | `B′ ⋐ B`, TRACKS I-HEAD. |
| H16 | `hinside : closure B' ⊆ B` | STANDING | Same; an initial-domain margin, not orbit confinement. |
| H17 | `{η : ℝ}` | STANDING | Requested displacement tolerance. |
| H18 | `hη : 0 < η` | TYPING | Positive tolerance. |
| H19 | `f : ℂ²×ℂ² → ℂ` | STANDING | Arbitrary perturbation chosen after ε₀. |
| H20 | `ε : ℝ` | TYPING | Perturbation-size majorant. |
| H21 | `DifferentiableOn ℂ f (T_s₀ × B_r₀)` | STANDING | Analytic perturbation. |
| H22 | For every z in that product and k:ℤ², `f(z.1+k,z.2)=f z` | STANDING | Period-one Hamiltonian, shared convention. |
| H23 | For all real θ,I with I in B_r₀, `(f(θ,I)).im=0` | STANDING | Real perturbation. Real θ automatically lies in T_s₀. |
| H24 | `0 ≤ ε` | TYPING | Nonnegative size, including ε=0. |
| H25 | `ε < ε₀` | STANDING | Smallness in the new qualitative stability statement. |
| H26 | `∀ z∈T_s₀×B_r₀, ‖f z‖ ≤ ε` | STANDING | Uniform analytic size. |
| H27 | `z₀ : ℝ²×ℝ²` | TYPING | Arbitrary initial phase point. |
| H28 | `z₀.2 ∈ B'` | STANDING | Initial domain only; no hypothesis about its orbit. |

`actionNbhd` expands to `∃ J∈B, ‖I-Jℂ‖<r₀`. `borderedHessian` expands to the Hessian/frequency
border of `I ↦ Re h(Iℂ)`. `realHamiltonian h f` expands to `Re(h(Iℂ)+f(θℂ,Iℂ))`.
These are body definitions, not theorem-shaped assumption packages.

Witness order: `∃ ε₀>0` is after H01–H18 and before H19–H28; the global function `z` is chosen
after the perturbation and initial point. The universal local-solution comparison is part of the
conclusion, not an existence premise. Its binders and expanded antecedents are:

| ID | Conditional conclusion binder / antecedent | Bin | Evidence |
|---|---|---|---|
| HC01 | `a : ℝ` | TYPING | Left endpoint of an arbitrary comparison interval. |
| HC02 | `b : ℝ` | TYPING | Right endpoint. |
| HC03 | `y : ℝ → ℝ²×ℝ²` | TYPING | Arbitrary comparison curve. |
| HC04 | `a < 0` | RULED | D19-Q2 local-solution agreement through time zero. |
| HC05 | `0 < b` | RULED | Same. |
| HC06 | `y 0 = z₀` | RULED | Same initial point, D19-Q2. |
| HC07 | For every t∈(a,b), `(y t).2 ∈ B` | STANDING | Phase domain of a local solution; no η bound. |
| HC08 | For every t∈(a,b), `DifferentiableAt ℝ (realHamiltonian h f) (y t)` | TYPING | Guard for the actual Hamiltonian derivative; also implied by the domain and holomorphy. |
| HC09 | For every t∈(a,b), `HasDerivAt y (X_H(y t)) t` | STANDING | Actual ODE premise defining a local solution. |

The resulting conclusion is `∀ t∈(a,b), y t=z t`. Its t and interval-membership binders are
typing/domain binders. The exhibited z satisfies the same three expanded solution clauses on
`Set.univ`, and additionally the displacement bound. There is no `IsMaximal` assumption, no
assumed long lifespan, and no confinement bound on y.

### 4.4 I-KEPLER

| ID | Binder / field | Bin | Evidence |
|---|---|---|---|
| K01 | `{κ : ℝ}` | STANDING | Positive Kepler coefficient in the stated generalization of Chi05 p. 17. |
| K02 | `{Ω : ℝ}` | STANDING | Positive rotation speed, same generalization. |
| K03 | `hκ : 0 < κ` | STANDING | Physical coefficient and determinant positivity; D19-Q5 accepts the gate shape. |
| K04 | `hΩ : 0 < Ω` | STANDING | Positive orientation/speed; no Hessian invertibility premise. |
| K05 | `L : {L:ℝ // 0<L}` | TYPING | Positive-action subtype. |
| K06 | Expanded subtype field `L.property : 0 < L.val` | SOURCE | Chi05 p. 9, `0 < Γ < Λ`, and p. 17, `0 < G < L`. |

The conclusion is the joint exact value and strict positivity; there are no existential constants,
G-parameter, inverse-Hessian assumption or hidden derivative-characterization assumption. The
algebraic theorem does not claim that a coordinate change has already been constructed.

### 4.5 I-R3BP

| ID | Binder / premise | Bin | Evidence |
|---|---|---|---|
| R01 | `{aMinus : ℝ}` | STANDING | Fixed lower semimajor-axis endpoint. |
| R02 | `{aPlus : ℝ}` | STANDING | Fixed upper endpoint. |
| R03 | `{eMinus : ℝ}` | STANDING | Fixed lower eccentricity endpoint. |
| R04 | `{ePlus : ℝ}` | STANDING | Fixed upper endpoint. |
| R05 | `ha : 0 < aMinus` | RULED | D19-Q4's explicit annulus. |
| R06 | `haa : aMinus < aPlus` | RULED | Same, nonempty semimajor-axis interval. |
| R07 | `he : 0 < eMinus` | RULED | Same, avoids circular-coordinate singularity. |
| R08 | `hee : eMinus < ePlus` | RULED | Same, nonempty eccentricity interval. |
| R09 | `heSmall : ePlus < 1/4` | RULED | D19-Q4; not claimed as a sharp source threshold. |
| R10 | `hinner : aPlus*(1+ePlus) < 1` | RULED | D19-Q4; margin inside the secondary orbit. |
| R11 | `μ : ℝ` | TYPING | Small-primary mass fraction, quantified after all uniform constants. |
| R12 | `0 ≤ μ` | STANDING | Nonnegative masses, including the limiting μ=0 model. |
| R13 | `μ < μ₀` | STANDING | Small-mass conclusion of the proposed application. |
| R14 | `z₀ : ℝ²×ℝ²` | TYPING | Arbitrary physical initial point. |
| R15 | `z₀ ∈ NearCircular aMinus aPlus eMinus ePlus` | RULED | D19-Q4 initial region; expansion immediately below. |

The membership premise R15 has exactly the following content, with existential scalar witnesses
r,a,e. It does not assert that a Delaunay inverse, KAM torus, stable orbit, or coordinate map exists.

| ID | Expanded membership field | Bin | Evidence |
|---|---|---|---|
| RN01 | Witness `r : ℝ` | TYPING | Positive physical radius, not a chosen branch. |
| RN02 | Witness `a : ℝ` | TYPING | Semimajor-axis scalar. |
| RN03 | Witness `e : ℝ` | TYPING | Eccentricity scalar. |
| RN04 | `0 < r` | TYPING | Excludes inverse-radius junk. |
| RN05 | `r² = radiusSq z₀.1` | SOURCE | Physical Euclidean length. |
| RN06 | `0 < a` | TYPING | Elliptic Kepler semimajor axis; excludes division by zero. |
| RN07 | `0 < e` | RULED | D19-Q4, away from exact circularity. |
| RN08 | `e < 1` | SOURCE | Elliptic orbits, Chi05 (2.25), p. 9. |
| RN09 | `aMinus < a` | RULED | D19-Q4 region. |
| RN10 | `a < aPlus` | RULED | Same. |
| RN11 | `eMinus < e` | RULED | Same. |
| RN12 | `e < ePlus` | RULED | Same. |
| RN13 | `radiusSq p/2 - 1/r = -1/(2*a)` | SOURCE | Chi05 (2.24), (2.26), p. 9, in unit reference mass. |
| RN14 | `0 < q₀*p₁-q₁*p₀` | RULED | Prograde restriction, D19-Q4; Chi05 positive angular momentum, p. 9. |
| RN15 | `(q₀*p₁-q₁*p₀)² = a*(1-e²)` | SOURCE | Chi05 (2.25)–(2.26). |

`IsOpen U` and `U.Nonempty` are conclusions, not assumptions. The witnesses μ₀,d,R and their
positivity/μ₀≤1/2 bounds occur after R01–R10 and before μ,z₀. They are uniform over the entire
initial region and over 0≤μ<μ₀. The global curve z is chosen afterwards. Its comparisons have:

| ID | Conditional conclusion binder / antecedent | Bin | Evidence |
|---|---|---|---|
| RC01 | `a : ℝ` | TYPING | Comparison interval endpoint; unrelated to orbital semimajor axis. |
| RC02 | `b : ℝ` | TYPING | Comparison interval endpoint. |
| RC03 | `y : ℝ → ℝ²×ℝ²` | TYPING | Arbitrary comparison curve. |
| RC04 | `a < 0` | RULED | D19-Q2. |
| RC05 | `0 < b` | RULED | D19-Q2. |
| RC06 | `y 0 = z₀` | RULED | Same initial point, D19-Q2. |
| RC07 | For every t∈(a,b), `0 < radius((y t).1-primary₁ μ)` | STANDING | First collision excluded in the physical solution domain. |
| RC08 | For every t∈(a,b), `0 < radius((y t).1-primary₂ μ)` | STANDING | Second collision excluded. |
| RC09 | For every t∈(a,b), `HasDerivAt y (restrictedVectorField μ ⟨y t,hz⟩) t` | STANDING | Exact ODE, not an averaged or truncated one. |

The `hz` in `IsRestrictedSolutionOn` is an existential proof of the two collision-free conditions.
The vector field depends only on the subtype's value, not on which proof is used. t and t∈(a,b)
are local typing/domain binders. Equality with z is the conclusion. The global distance and
position/momentum bounds are separate conclusions; none is assumed for y.

Binder counts are recorded in §10 after mechanical counting of these uniquely labelled rows.
Wrapper R15 and its RN expansion are reported separately to avoid double counting.

## 5. Definition bodies, carriers and guarded total operations

All fifteen definitions are literal formulas or literal domain/solution predicates. None defines a
characterization-selected object. Thus for **each** row below:

```text
WELL_DEFINEDNESS: N/A_LITERAL
CHARACTERIZATION: N/A_LITERAL
CHOICE_INDEPENDENCE: N/A
```

No author-written `if`/`dite`, arbitrary `Classical.choose`, theorem-shaped assumption bundle, or
invented physical collision value occurs. Literal derivative/integral formulas are total as in the
approved track-K surface; their names do not assert off-domain regularity. All source-facing uses
are checked below. The physical Hamiltonian and field additionally restrict their public carrier
to the collision-free subtype, rather than extending Newton's equations through collisions.

| Definition | Complete body/source comparison | BODY_MATCH | PUBLIC_CARRIER | DEFINITION_VERDICT |
|---|---|---|---|---|
| `extendedTorsion` | Upper block is frozen `torsion`; right column ω; bottom row `DH(K)N`; bottom-right 0. This is (3.13), not (3.17) at an approximate torus. `Fin n ⊕ Unit` adds exactly one row and column. | OK | OK | PASS |
| `extendedTorsionAverage` | Each entry is integrated over the real unit cube; volume one, period one. | OK | OK | PASS |
| `energyAverage` | Integral of H evaluated at K of real complexified angles; exactly (3.14). | OK | OK | PASS |
| `borderedHessian` | Entry (a,b) is `∂_b(∂_a Re h)`; both border entries are `∂_a Re h`; bottom-right zero. Symmetry is a consequence of analyticity, not a premise. | OK | OK | PASS |
| `IsHamiltonianSolutionOn` | For each time in J: action in B, H differentiable at z(t), and full `HasDerivAt` with the actual frozen Hamiltonian field. For arbitrary nonopen J this definition asks for the full derivative; the theorems use only open intervals or univ. | OK | OK | PASS |
| `radiusSq` | `∑ i:Fin 2, q i ^ 2`; nonnegative everywhere. | OK | OK | PASS |
| `radius` | `Real.sqrt (radiusSq q)`; genuine Euclidean length. | OK | OK | PASS |
| `primary₁` | `![-μ,0]`, mass 1−μ; barycenter zero and separation one. | OK | OK | PASS |
| `primary₂` | `![1-μ,0]`, mass μ. | OK | OK | PASS |
| `CollisionFree` | Both displayed Euclidean distances positive, independent of momentum. | OK | OK | PASS |
| `restrictedHamiltonian` | Kinetic term `∑pᵢ²/2`, rotating term `q₁p₀-q₀p₁`, and the two exact inverse-distance potentials, on the correct subtype. | OK | OK | PASS |
| `restrictedVectorField` | `(p₀+q₁,p₁-q₀)` and `(p₁,-p₀)` minus both mass-weighted inverse-cube force vectors. Direct differentiation verifies every sign and power. | OK | OK | PASS |
| `IsRestrictedSolutionOn` | At each t, a proof of collision freedom and `HasDerivAt` for that exact field. Proof irrelevance gives independence of hz. | OK | OK | PASS |
| `NearCircular` | Positive r, a and 0<e<1, strict endpoint conditions, elliptic energy, positive angular momentum, and squared angular momentum relation. Unique positive r,a,e follow algebraically; this existential set predicate makes no choice. | OK | OK | PASS |
| `keplerBorder` | Hessian/frequency border for `-κ/(2L²)-ΩG`; all inverses have L>0. | OK | OK | PASS |

Reused frozen closure: `complexStrip`, `actionNbhd`, `frequencyMap`, `realHamiltonian`, the real and
complex Hamiltonian fields, `IsDiophantine`, `IsPrimaryOnStrip`, `IsRealOnReals`, `invarianceError`,
`dotℂ`, `omegaZero`, `gramMatrix`, `normalFrame`, `torsion`, and `torsionAverage`. The last is an
imported facade dependency even though the new average uses its own bordered integrand. Their
formulas are compatible with the source convention Ω₀(a,b)=(-b,a), X_H=(H_I,-H_θ), and bilinear
transpose, not Hermitian conjugation. In particular a flat torus has N=(0,id) and T=h''.

| Potential junk | Actual guard and attempted failure |
|---|---|
| `fderiv H`, derivatives of X_H, `iteratedFDeriv` | I-G1: holomorphy on open D and ball inclusion put every evaluation point inside D. Finite-dimensional holomorphy supplies all derivatives. I-HEAD: open action neighborhood and positive widths give a genuine real analytic H at every solution point. |
| `fderiv K` and `DN[ω]` | Holomorphy on the open strip, and unit Gram determinant there, make N holomorphic locally. No differentiation across an unguarded singular Gram matrix occurs. |
| Singular matrix inverse | Both inverse uses have separate unit-determinant hypotheses. A zero inverse at a singular matrix cannot satisfy those hypotheses. Non-Hermitian complex Gram invertibility is explicitly assumed. |
| Bochner-integral default | Positive strip width contains every real angle. H∘K and the border entries are continuous on the compact real cube. The inverse-Gram condition also holds in neighborhoods of that cube. Hence all these integrands are integrable. |
| `γ^4`, real `ρ^(4τ)` and `ρ^(2τ)` | γ>0; ρ>ρinf>0. No division by zero or negative rpow base is available. |
| h'' and ∇h at real actions | h is holomorphic on the entire open complex neighborhood in H10; the real evaluation point belongs to it in H12. Off-domain total fderiv values do not certify nondegeneracy. |
| `Real.sqrt` of a negative number | The only sqrt is applied to a sum of two squares. |
| Physical inverse distance | Collision-free subtype supplies strictly positive distances, including their cubes. The theorem also proves a uniform positive lower bound for the exhibited global solution. |
| Orbital inverse r or a | Both are explicitly positive in `NearCircular`; energy is strictly negative. |
| ε=0 / μ=0 / e=0 | No negative powers of ε or μ appear. e=0 uses non-strict closeness; ε=0 yields integrable straight-line angles and constant actions; μ=0 is the collision-free rotating Kepler reference system. |
| Empty or degenerate domains | I-G1's ball premises and positive-width strip exclude empty D. I-HEAD allows empty B′, a legitimate trivial case, but also admits nonempty natural examples. I-R3BP asserts and actually has a nonempty open set. |

## 6. I-G1 uniformity, truth and non-vacuity

The source proof gives the required finite family of constants after fixing n,τ and an intermediate
strip, with dependence on H1 bounds, frame bounds, inverse bounds, all norm gaps, domain distance,
the ray bound `Cω=σω‖ωstar‖` in (6.30), and endpoint distance in (6.48). The draft fixes all these
before C₁,C₂,C₃. In particular ν is a lower bound for the two endpoint distances; it must not be
interpreted as distance to the ambient boundary of a line segment in ℝⁿ. The auxiliary error
parameter also called ν in Lemma 6.2 can be fixed internally; it need not be identified with the
draft's endpoint-margin variable.

All source coefficient norms can be bounded by finite dimension-dependent multiples of the
draft's norms. For example the source sum-of-entry-supremum norm of an m-column matrix is at most
m times the supremum of its pointwise row-sum norm. Transposes are controlled by dimensions as
well. Enlarge the source σ-bounds and M consistently, keeping positive gaps. Restrict first to a
fixed strip strictly between ρinf and ρ, so the closed-strip hypotheses follow from the draft's
open-strip hypotheses. These changes affect constants depending on already-fixed data only.

The constants in the iteration have positive powers of γ after extracting the explicit small
divisors; use γ≤γbar to take uniform majorants. Even independently of this bound, fixing ωstar
prevents the old track-K counterexample from sending the ray direction's size to infinity after
the constants: the Diophantine condition tested at coordinate vectors bounds γ by ‖ωstar‖.
The explicit γbar is nevertheless legitimate under D19 and convenient for the chosen presentation.

The frequency estimate from (6.51), with a uniform coefficient A₃, is

```text
‖ω∞-ω‖ ≤ A₃ e/(γ ρ^τ)
         = (A₃ γ ρ^τ)e/(γ²ρ^(2τ))
         ≤ (A₃ γbar ρ^τ)e/(γ²ρ^(2τ)).
```

Here ρ>0 gives `(ρ^τ)^2=ρ^(2τ)`. The algebraic denominator conversion was checked in scratch.
Thus the **draft's existential C₃ is valid**, although it is not literally the Table-5 constant.

The requested μ/2 image and derivative margins follow by doing the construction on another fixed
intermediate strip, then applying a Cauchy estimate to K∞−K on Tρinf. Increasing C₁ makes
`e/γ² ≤ γbar² ρ^(4τ)/C₁` small enough for both margins. This uses constants already fixed by the
statement. At e=0 take K∞=K and sinf=s. Invariance makes H∘K constant on the real torus because
the frequency is nonresonant; its value is E₀ by the average constraint. Holomorphic uniqueness
extends the equality to the complex strip. The same reasoning gives the pointwise energy
conclusion in the nonzero-error case. The draft does not impose a false phase normalization.

**Non-vacuity, including exact input tori.** Take n=2, τ=1, ρ=1, ρinf=1/2,
ωstar=(1,√2), s=2, σω=3, ν=1/2, γ=1/2, γbar=1. The elementary identity
`|m+n√2| |m-n√2|=|m²-2n²|≥1` proves the required Diophantine bound. Put
H(θ,I)=(I₀²+I₁²)/2, K(θ)=(θ,2ωstar), E₀=6, e=0. Choose D with angle imaginary
width 2 and action max-norm radius 10, μ=1/2, M=100, σK=σB=3, σT=100. DK and
the Gram inverse have norm 1. The extended average is `[[id,ω],[ωᵀ,0]]`, with determinant
`-‖ω‖₂²=-12`, and its inverse has bounded row sums far below σT−μ. All derivative and domain
bounds hold. Smallness is zero regardless of the chosen C₁. This also validates the source
zero-error objection in §9 on genuine admissible data. Sufficiently small periodic cosine
perturbations on this bounded-width domain give nonzero-error examples with the same strict
margins; smallness is obtained by reducing the amplitude after the constants are chosen.

## 7. New confinement and physical statements

### I-HEAD

The crucial local map can be made explicit. At an action I with one frequency component, say
ω₂, nonzero, use `(h_R(I), ω₁(I)/ω₂(I))`. For a symmetric Hessian A in dimension two,

```text
det D(h_R, ω₁/ω₂)
  = det [[A,ω],[ωᵀ,0]] / ω₂².
```

The bordered determinant also forces ω≠0. Thus a genuine analytic inverse exists locally, without
assuming the full frequency map is injective. Near the compact set closure B′ choose finitely many
such patches, with smaller patches whose closures lie inside the larger ones. On each unperturbed
energy curve choose two Diophantine directions strictly to either side of the smaller patch.
One may choose τ>1 for these directions; I-G1 admits that choice. The initial frequencies as energy
varies in a sufficiently small interval lie on fixed positive rays with uniform endpoint margins.
All derivative, inverse and distance bounds are uniform on the corresponding compact sets.

For the perturbed initial energy E=H(z₀), use I-G1 with that E as its prescribed energy. Uniform
Cauchy estimates on a smaller strip make the resulting parameterizations graphs over the angle
torus. Since ∂H/∂I₂ stays nonzero in the patch, the actual energy surface is an energy cylinder
over the remaining action coordinate. The two invariant graphs are ordered, remain on opposite
sides of the initial point, and bound a compact annulus inside that cylinder. They separate there;
an arbitrary embedded torus in an arbitrary three-manifold would not suffice.

Choose the larger patch's action diameter below η and its closure inside B. Uniqueness prevents
an orbit from crossing either boundary torus. The vector field is smooth and bounded on the
periodic angle quotient times this compact action enclosure, so solutions continue in both time
directions. Lifted angles can wind without bound as |t|→∞, but bounded velocity prevents finite-time
blowup. Finite covering gives one ε₀, independent of f,ε,z₀. Standard local ODE uniqueness on the
connected comparison interval gives exactly the final y=z clause. It also covers comparison
solutions that were not assumed confined.

This is a mathematical justification of the statement's scope and uniformity, not a completed Lean
proof of the local-chart, graph, separation or continuation lemmas. Those are the first substantial
unpaid proof obligations after I-G1, and must remain conclusions to prove, not new root premises.

**Non-vacuity.** For h(I)=(I₀²+I₁²)/2, choose B=(1,2)², B′=(5/4,7/4)², r₀=1/4 and any s₀>0.
On the real slice of B_r₀ both coordinates are positive and the bordered determinant is
`-(I₀²+I₁²)`, so it never vanishes. At ε=0 the exact global orbit is `(θ₀+tI₀,I₀)`, with displacement
zero for every η>0. Small normalized cosine perturbations provide nonzero analytic perturbations
within the stated size bound. A ball containing I=0 would **not** be a valid quadratic example;
the h_iso premise deliberately excludes the zero-frequency critical point.

### I-KEPLER and I-R3BP

The determinant expansion is `3κΩ²/L⁴`; the ordinary Hessian is singular and never inverted. The
scratch proof establishes the exact value and positivity with only standard foundations.

For the physical equations, let J(q₀,q₁)=(-q₁,q₀). Direct differentiation of the displayed
Hamiltonian gives

```text
q̇=p-Jq,
ṗ=-Jp-(1-μ)(q-primary₁ μ)/r₁³-μ(q-primary₂ μ)/r₂³.
```

With Q=R(t)q and P=R(t)p, where R′=RJ, differentiation gives Q̇=P and exactly the two-primary
Newton force for Ṗ. Hence p is inertial momentum expressed in rotating axes; it is not q̇.
Rotation preserves the physical radius. The collision and escape conclusions therefore concern
the actual Newtonian motion. No physical conclusion is obtained from an arbitrary fallback
Hamiltonian value or from a solution of an averaged/truncated system.

The `NearCircular` predicate is genuinely open and nonempty. On its locus, r=|q|₂,
E=|p|₂²/2−1/r<0, a=−1/(2E), and e is the positive square root of `1+2Eℓ²`, with
ℓ=q₀p₁−q₁p₀>0. All inequalities selecting a and e are strict and the square-root argument is
strictly positive, so these continuous formulas exhibit an open subset of full four-dimensional
phase space. Conversely they recover the existential formula, without choosing a Delaunay angle.
For any admissible endpoints choose interior a,e and take

```text
q=(a(1-e),0),  p=(0, sqrt((1+e)/(a(1-e)))).
```

These give r=a(1−e)>0, energy −1/(2a), and ℓ²=a(1−e²)>0. A fully rational instance is checked
in Lean: endpoints `(1/2,2/3,1/16,3/16)`, point `q=(1/2,0), p=(0,3/2)`, witnesses
`r=1/2,a=4/7,e=1/8`. All six endpoint restrictions hold.

Uniformity over the whole open set is not lost at its boundary. In its closure, a and e remain in
compact positive intervals away from e=0,1. The energy and angular momentum identities give

```text
(r-a)² ≤ a²e²,
aMinus(1-ePlus) ≤ r ≤ aPlus(1+ePlus) < 1,
|p\|₂² ≤ 2/[aMinus(1-ePlus)].
```

Thus the closure is compact and separated from the origin and the unit secondary orbit. Enlarge
the action annulus slightly, preserving every strict safety margin. The μ=0 Delaunay coordinates
are analytic and canonical on this annulus away from e=0,1; periodic angle charts supply a common
complex neighborhood. Pulling back the **exact barycentric** Hamiltonian gives h plus an analytic
O(μ) perturbation there: both denominators are uniformly separated from zero, and the two primary
positions vary smoothly with μ. Apply I-HEAD with η smaller than the enlargement margin. The
resulting compact physical enclosure supplies d,R uniformly in μ and the initial point, after
reducing μ₀≤1/2. At μ=0 the entire enclosure remains away from the zero-mass secondary as required
by the chosen solution predicate. This extra excluded point causes no loss on this annulus.

For period-one coordinates the canonical rescaling is θ=(ℓ,g)/(2π), J=2π(L,G), yielding
`h₁(J)=-κ(2π)²/(2J₁²)-ΩJ₂/(2π)`. Its bordered determinant is `3κΩ²/J₁⁴`.
Rescaling only angles would be wrong; the draft's mathematical notes correctly rescale actions too.

The existence/canonicity and full coverage of these Delaunay charts, their complex neighborhoods,
and the exact perturbation estimate are still substantial infrastructure to prove. None appears
as an unproved premise of I-R3BP. Neither CC03's numerical model nor an uninspected Arnold theorem
is being used as a black-box proof of this new result.

## 8. Refutation pass

The following attacks were made against the exact draft rather than a repaired statement.

| Attack | Result |
|---|---|
| Scale ω and γ after C₁ as in the track-K counterexample | Excluded: ωstar and σω are fixed before constants; γ≤γbar is explicit. |
| Prescribe a different energy while E=0 | Allowed, but its discrepancy enters e through the separate energy-average bound. The iteration must use E_c, not just E. |
| Set e=0 and demand strict positive closeness | Not present: both draft estimates use ≤. Exact K∞=K, sinf=s works. |
| Use an approximate torus to replace DH(K)N by ωᵀ | Not present: draft line 45 is the exact derivative row, checked by `rfl`. |
| Singular inverse, nonintegrable average or nondifferentiable total derivative | Excluded at every theorem use by the guards in §5. |
| Exploit empty B′ or impossible numerical margins to make every theorem vacuous | Such parameter choices can make an implication trivial, but the explicit natural nonempty examples in §§6–7 satisfy all premises. |
| Make h quadratic at I=0 | Fails h_iso, as it should; a box away from zero is a valid witness. |
| Use nonseparating tori to defeat I-HEAD | The proof must use a local energy cylinder with ordered graphs; the inverse-map identity supplies it. No global-topology assumption is being inferred. |
| Let lifted angles escape in finite time | Bounded periodic vector field on the compact enclosure rules this out. No bound on the lifted position for all time is asserted. |
| Interpret the physical momentum as rotating velocity | Direct differentiation and rotation give the stated canonical momentum convention. |
| Reach a collision through 1/0=0 or sqrt of a negative value | The subtype and sum-of-squares length exclude this. |
| Let initial points approach the boundary of U and destroy uniform μ₀,d,R | The closed endpoint intervals retain strictly positive radial/secondary/circularity margins. |
| Infer an open full phase-space set from CC03's single-energy region | Not done. `NearCircular` itself is open; I-HEAD ranges over an energy interval and all initial points. |
| Transfer the printed source C₃ or proof estimates without checking their errors | Rejected as a proof method; see E-I-06 and E-I-07 below. The existential draft statement survives. |

There is no Lean proof of a negation of an original draft theorem because no such counterexample
was found. The scratch strict-zero-error theorem refutes the corresponding *printed source*
inequality, not the corrected draft. The source-proof counterexamples below are mathematical
calculations, not claimed machine-checked full HL19 instances.

## 9. Suspected source errata and deviations for the orchestrator

The public ledger was **not edited**. These IDs are local audit IDs for reconciliation. Page images
were freshly rendered from the pinned PDFs and inspected. “Verified” below means the printed text
and the given mathematical check were verified by this audit; it does not claim that the authors
have issued an erratum or that the orchestrator has accepted a ledger entry.

| ID | Source location and quoted/formula evidence | Assessment and refutation status | Proposed correction / exact Lean effect |
|---|---|---|---|
| E-I-01 | HL19 p. 19, (3.16): `‖K∞−K‖ < C₂‖E_c‖/(γ²ρ^(2τ))`, and the analogous strict frequency inequality. | Verified defect at E_c=0. Admissible exact input tori are exhibited in §6. A nonnegative norm cannot be <0; scratch proves that fact. Extends the existing (3.11) erratum. | Use ≤, as the draft already does at lines 108–109. No Lean change. D19-Q5's source-review condition is satisfied for this correction. |
| E-I-02 | HL19 p. 18, (3.12): `X_h(K)=L_ω K`; p. 20, (4.1): `L_ω=-Σωᵢ∂ᵢ`. | Verified sign inconsistency with (2.1), p. 6, and (3.14), p. 19. An exact integrable torus with nonzero ω separates the two signs. | Replace RHS by `-L_ω K`. Keep frozen `invarianceError=X_H(K)-DKω`; no Lean change. |
| E-I-03 | HL19 p. 19, Rem. 3.7: `Dh(K)N=X_h(K)ᵀΩ(K)N`, followed by `-ωᵀDKᵀΩN`. | Verified missing minus in the first equality. From ΩX_h=(Dh)ᵀ and Ωᵀ=−Ω, `Dh=-X_hᵀΩ`. The final row ωᵀ is correct. | Insert a minus before the first `X_hᵀΩN`. Keep literal (3.13) in the draft; no Lean change. |
| E-I-04 | HL19 p. 59, Table 5 caption: “Section 5.3”. | Verified locator typo: its formulas are (6.45)–(6.51), from §6.3. | Replace by “Section 6.3”; no Lean change. |
| E-I-05 | HL19 p. 19, H5′: `dist(ω,∂Θ)>0` for Θ={sω*:1<s<σω}⊂ℝⁿ. | Convention ambiguity, resolved by a direct topology check: for n≥2 the ambient interior is empty, and every ω∈Θ lies in the ambient boundary, giving distance zero. Relative boundary in the line gives the intended two endpoints. | Specify relative/endpoint boundary. Draft lines 94 explicitly use endpoint distances, so no Lean change. |
| E-I-06 | HL19 p. 53, (6.51): frequency bound with denominator `γρ^τ`, followed by “thus obtaining the estimates in (3.16)”; p. 19 prints denominator `γ²ρ^(2τ)` with the same C₃. | Verified normalization mismatch, not a refutation of an existentially rescaled theorem. No hypothesis γρ^τ≤1 appears in the statement. A changed constant is necessary for a general literal implication. | Change one displayed denominator or rename/rescale the constant. The draft is valid with the uniform rescaling in §6; no declaration change. |
| E-I-07 | HL19 p. 49 (6.33), p. 50 (6.36), p. 51 (6.44) use `‖E‖_ρ` on their RHS, although (6.29), (6.43) use `‖E_c‖_ρ`. | Verified wrong error quantity. E=0 with a nonzero prescribed-energy discrepancy can produce nonzero corrections and a changed extended inverse. Explicit refutation calculations below; this is not merely a suspicion from notation. | Replace each affected RHS `‖E‖_ρ` by `‖E_c‖_ρ`. The root already bounds both components, so no Lean change. Provider proofs must not cite the smaller-error estimates as printed. |
| E-I-08 | HL19 p. 52, convergence line: `‖E_(c,s)‖ < a₁^(-4τs)‖E_c‖ → 0 when s → 0`. | Verified limit-index typo: iteration number tends to infinity. Also the nearby reference to the “eight term in (6.15)” points to a two-inequality display; the eight-term maximum is (6.16). | `s → ∞`; reference (6.16) for the eighth term. No Lean change. |
| E-I-09 | Chi05 pp. 13–14, (3.38)–(3.39): phase domain `(x^(2),X^(2))∈ℝ²\{0}×ℝ²`, while the potential contains `1/\|x^(2)-x_circ^(1)(t)\|`. | Verified missing second collision exclusion in the printed domain. At x^(2)=x_circ^(1)(t), the point is nonzero but the potential is singular when the secondary mass is positive. Page 17's unrestricted positive-cone phase-space description likewise needs the collision-free restriction for the perturbed problem. | Exclude the secondary collision too. Draft `CollisionFree` and the subtypes already do so; no Lean change. |
| E-I-10 | CC03 p. 7, Thm 1.1: “any complex perturbative parameter” with `\|ε\|≤10⁻³`, after a real phase-space invariant-region assertion. | **UNREFUTED-TENTATIVE scope ambiguity**, as in the draft notes. A nonreal multiplier of the real, nonconstant H₁ generally does not give a real vector field. However “a similar statement” could intend a complexified phase space; this audit does not refute that interpretation. Not used by track I. | Clarify the complexified objects or restrict the physical-flow statement to real ε. No Lean change and no blocker. |

For E-I-07 there are two explicit checks. First take the exact flat torus K=(θ,0) for
`H(θ,I)=ω·I+(1+a cos(2πθ₀))|I|₂²/2`, with nonresonant ω, small nonzero a and energy discrepancy
E^ω=e≠0. Then E=0, T(θ)=(1+a cos(2πθ₀))id, ⟨T⟩=id, and the bordered average is invertible.
The linearized energy solve gives `ξ₀^N=-eω/|ω|₂²`, `ξ^ω=e/|ω|₂²`. Consequently
`L_ω ξ^L=-(T-id)ξ₀^N` is nonzero; so is L_ωΔK. The RHS in each of (6.33), (6.36) would be zero.
The displayed source hypotheses permit arbitrarily small nonzero e, so smallness does not rescue
the assertion. Replacing E by E_c does.

Second take `H(I)=|I|₂²/2`, K=(θ,ω), E=0 and E^ω=e≠0. The correction is
`Inew=ωnew=(1-e/|ω|₂²)ω`. The extended inverse of `[[id,ω],[ωᵀ,0]]` has bottom-right entry
`-1/|ω|₂²`; after correction it is `-1/[(1-e/|ω|₂²)²|ω|₂²]`, which differs for sufficiently small
positive e. Thus the LHS of (6.44) is positive while its printed RHS vanishes. All torus, ray,
gap and domain conditions can be given strict margins, and e can be arbitrarily small.

The source-defect review therefore accepts the draft's ≤ and sign corrections under D19-Q5,
but also adds the error-quantity and denominator issues that must be carried into the proof plan.
It does **not** silently repair the paper or claim the whole proof has been audited.

Deliberate deviations requiring preservation in the campaign record:

1. Canonical d=n, c=H specialization; primary lifts with period one and max-norm coordinates.
2. Open-strip pointwise operator bounds, finite-dimensional norm conversion, explicit fixed
   geometric/ray/γ margins and strengthened conclusion half-margins (D19-Q1).
3. Non-strict zero-error bounds; pointwise complex-strip energy equality derived from the source
   average constraint; rescaled frequency constant as in §6.
4. A new qualitative two-degree-of-freedom confinement theorem with genuine global solutions and
   local agreement, rather than a verbatim CC03 theorem (D19-Q2–Q3).
5. Positive κ,Ω generalization of the literal Kepler determinant; simultaneous angle/action
   rescaling when connecting to the period-one infrastructure (D19-Q5).
6. Exact barycentric rotating physical model, a fixed prograde interior open annulus, uniform
   small-mass bounds including μ=0, and no numerical astronomical threshold (D19-Q4).

No deviation to a mathematical declaration was introduced by this audit.

## 10. Checks and closeout

The required targeted compilation is direct elaboration of the untracked draft and scratch module,
as specified by the audit brief; no tracked Lake module was edited. No library build, clean,
Mathlib rebuild or resource override was performed. All Lean invocations were sequential and
used `nice -n 5`. The scratch module has the required copyright/module/import/docstring/public
section structure, and copies all fifteen definition commands literally from the draft.

```text
$ nice -n 5 lake env lean .drafts/I/Statements.lean
.drafts/I/Statements.lean:66:8: warning: declaration uses `sorry`
.drafts/I/Statements.lean:133:8: warning: declaration uses `sorry`
.drafts/I/Statements.lean:226:8: warning: declaration uses `sorry`
.drafts/I/Statements.lean:235:8: warning: declaration uses `sorry`
exit 0

$ nice -n 5 lake env lean .drafts/I/audit-scratch/Semantics.lean
exit 0; no warnings or errors; #print axioms output only

$ nice -n 5 lake env lean -DautoImplicit=false -DrelaxedAutoImplicit=false --stdin
# exact original source, followed by four #print axioms commands
exit 0; 5.394 s; exactly the same four sorry warnings

$ nice -n 5 scripts/lint_sources.sh
check_lean_modules: PASS (40 Lean files, 0 comparator configurations)
FROZEN-ANCHOR GUARD OK
ABI HASHES OK (25 frozen declarations)
exit 0; 9.998 s
```

Main original theorem axioms, independently rerun:

```text
'KAM.Iso.isoenergetic_kam' depends on axioms: [propext, sorryAx, Classical.choice, Quot.sound]
'KAM.Iso.all_time_confinement' depends on axioms: [propext, sorryAx, Classical.choice, Quot.sound]
'KAM.Iso.kepler_bordered_det' depends on axioms: [propext, sorryAx, Classical.choice, Quot.sound]
'KAM.Iso.restricted_near_circular' depends on axioms: [propext, sorryAx, Classical.choice, Quot.sound]
```

All fifteen copied definitions and all six scratch checks print exactly
`[propext, Classical.choice, Quot.sound]`, with **no `sorryAx`**. The checks are
`audit_kepler_bordered_det`, `audit_nearCircular_inhabited`, `audit_annulus_guards`,
`audit_strict_zero_error_impossible`, `audit_extended_lower_row`, and
`audit_frequency_denominator`. An initial scratch attempt failed to simplify matrix entries and
to expose the subtype positivity witness; this was fixed locally, without changing the copied
definition or any resource budget. Only the final clean receipt is used as evidence.

Evidence files: `snapshot.json`, `snapshot-v2.json`, `snapshot-v2.diff`, `Semantics.lean`,
`elaboration.log`, `semantics.log`, `axioms.log`, `lint.log`, fresh PDF extracts and source-page PNGs,
all under `.drafts/I/audit-scratch/`. The only non-scratch deliverable is this report.

The binder rows were mechanically counted (receipt: `binder-counts.json`):

| Scope | Rows | SOURCE | STANDING | TYPING | RULED | EXCESS |
|---|---:|---:|---:|---:|---:|---:|
| G01–G63, I-G1 | 63 | 39 | 3 | 8 | 13 | 0 |
| H01–H28, I-HEAD inputs | 28 | 0 | 21 | 6 | 1 | 0 |
| HC01–HC09, its conditional comparison | 9 | 0 | 2 | 4 | 3 | 0 |
| K01–K06, I-KEPLER including subtype field | 6 | 1 | 4 | 1 | 0 | 0 |
| R01–R15, I-R3BP inputs including membership wrapper | 15 | 0 | 6 | 2 | 7 | 0 |
| RN01–RN15, expansion of R15, including existential witness carriers | 15 | 4 | 0 | 5 | 6 | 0 |
| RC01–RC09, its conditional comparison | 9 | 0 | 3 | 3 | 3 | 0 |

These count semantic input rows, with compound conjunctions split and local typing binders displayed
inside their rows, rather than claiming to count Lean kernel Π nodes. The RN expansion replaces R15
when counting expanded premises; it must not be added to an unexpanded root total.

Final static receipt (`static-checks.log`):

```text
Literal definition commands: 15/15 byte-identical between original draft and scratch
Original draft: 257 lines
Scratch Semantics.lean: 215 lines
Scratch SHA-256: 5e4fbda474b438886122facf946b371168e468f97af77aeb71689c6e0bed3b88
Audited input drift since audit-I-v2: []
git diff --check: exit 0, no output
Owned artifact whitespace/conflict check: PASS
```

The final scratch source contains no proof escape, no draft theorem copy, no resource override,
and no provider/frozen-theorem import. The definition-copy comparison initially encountered an
adjacent docstring without a separating blank line; inserting that blank line made the exact
command-boundary check succeed. This was an audit-harness formatting issue, not definition drift.

**Audit closeout:** all 19 declarations classified; all theorem input and conditional-comparison
binders inventoried; definitions and imported semantic closure inspected; source pages and
quantifier dependencies checked; junk/zero/boundary/physical cases examined; independent scratch
checks and fresh lint complete. E-I-10 remains explicitly tentative and unused. The unresolved
work is exact-text owner approval, ledger reconciliation and implementation of the analytic,
topological, coordinate and ODE proofs. None prevents completion of this statement audit; none is
being advertised as completed proof work.
