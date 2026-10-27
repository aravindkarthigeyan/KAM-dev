# Track I — infrastructure, audit notes and Phase 0 handoff

2026-10-27. Phase 0 delivers exact proposed statements, not proofs or frozen
anchors. The common brief explicitly authorizes `sorry` in this untracked draft.
This task ran no state-changing git command, froze nothing and edited no other track.

## Deliverables and approach

1. `docs/tracks/I/sources.md`: four bibliographic records, local hashes, live
   arXiv/Crossref/author-page verification, exact HL19 transcription, inspected
   Delaunay formulas and the boundary of what CC03 and Arnold establish here.
2. `docs/tracks/I/statement.md`: I-G1, I-HEAD, I-KEPLER and I-R3BP; constants in
   explicit quantifier order; source/deviation mapping; five owner questions
   with recommendations already implemented in the draft.
3. `.drafts/I/Statements.lean`: 15 literal definitions and four proposed theorem
   declarations, 257 lines; namespace `KAM.Iso`. Untracked and ignored. This is
   the exact intended Lean text to review, not a prose promise of later statements.
4. `docs/tracks/I/notes.md`: this handoff, including remaining work and checks.

New source material and inspection receipts are under `sources/incoming-I/`.
It was created empty; existing `sources/pdf/`, `sources/SHA256SUMS`, registry,
frozen files, manifests, README, root imports and shared scripts were not edited
by this task. Other campaign agents and automated HQ updates were active; their
changes were left alone. The exact author-approved track-K definitions were read
and reused, and no provider or draft theorem anchor is imported into track I.

The central design choices are the **literal approximate bordered row DH(K)N**,
ray data fixed before constants, global genuine solutions with local uniqueness,
and an exact collision-free Cartesian restricted Hamiltonian. No torus barrier,
coordinate transformation, perturbative remainder estimate, confinement bound,
or global existence result is assumed as a premise of the roots.

## Proposed declaration inventory

| Declarations | Meaning and source |
|---|---|
| `extendedTorsion`, `extendedTorsionAverage`, `energyAverage` | HL19 (3.13)–(3.14); unchanged frozen T and N; period-one integrals. |
| `isoenergetic_kam` | I-G1, HL19 Theorem 3.6 with canonical d=n and c=H. |
| `borderedHessian` | Hessian/frequency border of the real integrable Hamiltonian; Chi05 p. 17, HL19 Remark 3.7. |
| `IsHamiltonianSolutionOn`, `all_time_confinement` | Literal ODE solution predicate and I-HEAD. The predicate includes differentiability of H at each visited point to guard `fderiv`. |
| `radiusSq`, `radius` | Physical sum-of-squares length, not the ambient max norm. |
| `primary₁`, `primary₂`, `CollisionFree` | Barycentric positions and positive physical collision distances. |
| `restrictedHamiltonian`, `restrictedVectorField`, `IsRestrictedSolutionOn` | Exact physical model and its genuine first-order equations on a collision-free subtype. |
| `NearCircular` | Actual Kepler energy/angular-momentum characterization of an open initial set; no inverse-coordinate witness choice. |
| `keplerBorder`, `kepler_bordered_det` | Literal positive-L matrix and its determinant/value-positivity gate. |
| `restricted_near_circular` | I-R3BP, a derived exact-model theorem, uniform in all initial points of the explicit open set. |

The upper-left block of `borderedHessian` has entry ∂_j(∂_i h_R); it is not
assumed symmetric as a premise. Symmetry follows from analyticity. The matrix
`keplerBorder` uses conventional 2π Delaunay actions; the period-one conversion
is recorded explicitly in statement.md.

## Guard and quantifier audit

- **Derivatives:** I-G1 assumes holomorphy on open D and Tρ with μ>0 domain
  inclusion; this guards H, X_H, K and, using nonzero Gram determinant, N and
  DN. I-HEAD assumes holomorphy on the open action neighborhood, guarding the
  real gradient and its derivative. The solution predicate explicitly asserts
  differentiability of H before its Hamilton field is used.
- **Integrals:** all real angles are strictly inside Tρ because 0<ρ∞<ρ.
  H∘K and each entry of the extended torsion are continuous on the compact
  [0,1]ⁿ cube. Thus the integrals in I-G1 cannot be the nonintegrable default.
  The Lean proofs of this implication remain infrastructure obligations;
  integrability is not added as an independent intermediate-result premise.
- **Inverse matrices:** I-G1 explicitly assumes `IsUnit` of every Gram
  determinant and of the averaged extended determinant before their inverse
  bounds. Nothing requires the unbordered torsion to be invertible.
- **Division and real powers:** γ>0 and ρ>0 guard I-G1 denominators and real
  powers. `keplerBorder` takes a positive-L subtype. Physical inverse distances
  use a `CollisionFree μ` subtype. In `NearCircular`, r>0 and a>0 precede the
  energy equality. Division by the constant 2 is harmless.
- **Square roots:** the only newly defined square root is of ∑qᵢ², which is
  nonnegative for every point of its carrier. No eccentricity square root,
  chosen anomaly, or extension by zero is used in the draft.
- **Constants:** I-G1 fixes n,τ,ρ,ρ∞,M,σK,σB,σT,μ,γ̄,σω,ν,ω* before the
  joint C₁,C₂,C₃, and before D,H,K,s,γ,e,E₀. I-HEAD fixes B,h,widths,B′,η
  before ε₀ and before f,ε,z₀. I-R3BP fixes its four annulus endpoints before
  μ₀,d,R and before μ,z₀. None is allowed to depend on the later perturbation.
- **No assumed stability:** local solution predicates specify only the phase
  domain, differentiability, and equations. Local agreement quantifies over
  every interval (a,b) containing zero; it assumes no action or radial bound.
- **Zero cases:** e=0, ε=0 and μ=0 are deliberately included. Non-strict gate
  closeness inequalities accommodate exact tori. The physical primary masses
  are positive when μ>0 and μ<μ₀≤1/2.
- **Source carriers:** the new formulas are literal derivatives, integrals,
  matrix blocks or Newtonian expressions; there are no `if`/`dite` defaults,
  arbitrary witness selections or theorem-shaped assumption bundles.
  Exhaustive sum-index pattern matching in a bordered matrix is its block
  definition, not a fallback branch.

## Infrastructure and sharing

| Consumer | Necessary work still to prove | Shared work |
|---|---|---|
| I-G1 | Border solve HL19 Lemma 6.1, pp. 46–47; energy correction; frequency-ray preservation; Lemma 6.2 and §6.3 iteration; uniform constant bounds including (6.30), (6.48). | K: strip analysis, Cauchy estimates, cohomological solution, approximate Lagrangian frame, matrix estimates, Newton convergence. |
| I-HEAD | Local inverse for energy/projective frequency under bordered nondegeneracy; two dense Diophantine directions bounding each local action; uniform I-G1 application over an energy window; graph property; separation inside an energy cylinder; finite cover; uniqueness and two-sided continuation. | K/N/P: analytic vector fields and real ODE interfaces. K's measure-of-union theorem is unnecessary. |
| I-KEPLER | Determinant calculation and derivative characterization of h(L,G); canonical angle/action rescaling. | P: Kepler energy, angular momentum and action normalization. |
| I-R3BP | Canonical barycentric rotation; analytic Delaunay coordinates away from e=0 and e=1; exact transformed Hamiltonian and O(μ) bounds on a common complex neighborhood; openness/nonemptiness/compact enclosure of the specified physical set; application of I-HEAD; transfer to physical/inertial equations and bounds. | P: physical Kepler coordinates and Newtonian force regularity. N: continuation and collision exclusion from a compact safe region. |

For I-HEAD, a fixed noncritical local energy chart suffices; global injectivity
of the frequency map is not needed. On the one-dimensional action energy curve,
isoenergetic nondegeneracy makes frequency direction a local coordinate.
Select two Diophantine directions on either side. Apply I-G1 at these fixed rays
for each nearby actual energy; no Whitney family or global Lipschitz parameter
theorem is required just to make barriers for each initial energy. A uniform
choice of constants over finitely many patches is required and must be proved.

For I-R3BP, the μ=0 chart gives h=−1/(2L²)−G. The exact μ-dependent potential
is an analytic perturbation on a fixed safe neighborhood, including the small
barycentric shifts of both primaries. Do not import the truncated CC03
Hamiltonian as its provider. The topology proof must enclose the whole initial
region across an interval of energies, not infer phase-space openness from
openness on one energy surface.

## Rough size and staging

These are uncertain engineering estimates, not a Mathlib inventory or a promise
of implementation readiness. Incremental costs assuming track K's shared analytic
and geometric infrastructure becomes available:

| Stage | Additional Lean lines |
|---|---:|
| Isoenergetic bordered solve, correction and uniform iteration | 3,000–6,000 |
| Local energy charts, two-torus barriers, ODE uniqueness/continuation | 3,000–6,000 |
| Kepler/Delaunay analytic canonical chart and exact model conversion | 5,000–9,000 |
| Physical initial set, perturbation estimates and final assembly | 2,000–4,000 |
| Total, with substantial overlap with N/P and uncertainty | 13,000–25,000 |

First freeze the reviewed surface, then isolate the bordered solve, then the
confinement topology/ODE layer, then the physical coordinate/application work.
Keep focused modules below 1500 lines and all builds targeted and serialized.
The determinant gate is small; the coordinate characterization is not.

## Suspected source errata — report to the orchestrator

The ledger was not edited. The following are **CANDIDATE** entries pending an
independent source check; they are not assertions of a completed independent audit.

1. **HL19, p. 19, (3.16), strict zero-error bounds.** Printed:
   “‖K∞−K‖ρ∞ < C₂‖Ec‖ρ/(γ²ρ^(2τ))” and
   “|ω∞−ω| < C₃‖Ec‖ρ/(γ²ρ^(2τ))”. With Ec=0 both require a nonnegative
   norm to be strictly negative or strictly below zero. The hypotheses do not
   exclude exact tori. Proposed correction: ≤ in both bounds, or an explicit
   nonzero-error restriction. The draft chooses ≤. This extends the already
   recorded E-HL19-1 issue from (3.11) to (3.16). The printed symbols were
   checked visually in `hl19-page19.png`.
2. **HL19, p. 18, (3.12), invariance sign.** Printed:
   “Xh(K(θ)) = Lω K(θ)”. But p. 20, (4.1), defines
   “Lω := −∑ᵢ ωᵢ ∂/∂θᵢ”; (2.1), p. 7, and (3.14), p. 19, use
   Xh(K)=DKω. Proposed correction: Xh(K)=−LωK in (3.12).
   This is a source inconsistency, not permission to change the frozen
   invariance error. The draft follows (2.1)/(3.14). Page 18 was checked visually.
3. **HL19, p. 19, Remark 3.7, first equality.** Printed:
   “Dh(K(θ))N(θ) = Xh(K(θ))ᵀΩ(K(θ))N(θ)”.
   Section 2.2, p. 6, has ΩXh=(Dh)ᵀ. Transposition and Ωᵀ=−Ω give
   Dh=−XhᵀΩ. Thus the first right-hand side needs a minus sign.
   The next equality in the same printed line already has −ωᵀDKᵀΩN,
   and its final value ω̂ᵀ is consistent. Proposed correction: insert that
   minus sign; no correction to (3.13) or final (3.17). Checked visually.
4. **HL19, p. 59, Table 5 caption.** Printed: “Constants introduced in Section
   5.3 ... yields Theorem 3.6”. The table's labels are (6.45)–(6.51), and the
   isoenergetic convergence argument is §6.3, pp. 52–53. Proposed correction:
   “Section 6.3”. This locator typo has no statement effect; text extraction
   inspected, separate rendered-page verification still needed.
5. **CC03, p. 7, Theorem 1.1, complex-parameter wording.** The extension is
   stated for “any complex perturbative parameter” |ε|<10⁻³, while the
   theorem's region and flow are in a real phase space. A genuinely nonreal
   coefficient in a nonconstant real perturbation need not define a real
   vector field. Proposed clarification: restrict the physical-flow conclusion
   to real ε; specify separately what analytically continues for complex ε.
   This is a scope ambiguity, not a claim to have refuted a complex analytic
   continuation theorem. The rendered p. 7 was inspected. We do not use this
   complex extension.

No newly suspected mathematical defect was found in the inspected Chi05
nondegeneracy formula. CC03's truncation is explicit on p. 6, not a source error.
Arnold's original theorem text has not been audited, so no new erratum in it is
asserted. The generic higher-dimensional planetary issue is outside this track.

## Deliberate deviations and open decisions

- **D-I-G1-UNIFORM (proposed):** use fixed positive margins, γ̄, and fixed
  ω*,σω,ν before constants; pointwise operator bounds on open strips; combine
  derivative bounds into M and absorb transpose norm factors. Retain explicit
  half-margins as in track K. Source: HL19 H1–H5', Tables 4–5.
- **D-I-ENERGY (proposed):** state H(K∞)=E₀ pointwise on the complex strip,
  deriving it from invariance and the source's average constraint.
- **D-I-CONFINEMENT (proposed):** new two-degree-of-freedom assembly with local
  solution agreement. Nondegeneracy is imposed on the chosen real slice of
  B_r₀, obtainable by shrinking the common neighborhood. No positive-measure
  claim is used to obtain all-point confinement.
- **D-I-KEPLER (proposed):** state the determinant jointly with positivity;
  generalize Chi05's κ=Ω=1 formula to κ,Ω>0; rescale both angles and actions
  when using period-one analytic infrastructure.
- **D-I-PHYSICAL (proposed):** exact barycentric rotating Hamiltonian; fixed
  prograde interior annulus with 0<e₋<e₊<1/4; full phase-space openness;
  μ-independent region and uniform μ₀,d,R; include μ=0. This is a new
  small-mass theorem, not a numerical astronomical certificate or the CC03
  truncated-potential theorem.

Open work after Phase 0: independent mathematical/source/binder audit; owner
answers to the five questions in statement.md; proof of every theorem and
infrastructure item above; future definitions of Delaunay coordinate maps only
with proved existence/uniqueness and complete characterization, never arbitrary
chosen branches. Exact circularity and exterior or retrograde initial regions
are possible successors, not concealed claims of this draft. The uninspected
Arnold theorem passage remains explicitly [unverified].

## Validation receipt

All Lean invocations were sequential `nice -n 5 lake env lean` commands at
default resource limits. No library-wide build or clean was run. Because the
only Lean deliverable is the untracked draft, the common brief's exact direct
elaboration command is the targeted check; no tracked Lake module was changed.

Final direct check:

```text
$ nice -n 5 lake env lean .drafts/I/Statements.lean
.drafts/I/Statements.lean:66:8: warning: declaration uses `sorry`
.drafts/I/Statements.lean:133:8: warning: declaration uses `sorry`
.drafts/I/Statements.lean:226:8: warning: declaration uses `sorry`
.drafts/I/Statements.lean:235:8: warning: declaration uses `sorry`
exit 0
```

These are exactly the four authorized theorem placeholders; there are no other
warnings or errors. All definition bodies elaborate without `sorry`.

Repository lint was run as required, with this exact result:

```text
$ scripts/lint_sources.sh
check_lean_modules: PASS (40 Lean files, 0 comparator configurations)
FROZEN-ANCHOR GUARD FAILED:
- unauthorized `sorry` outside manifest-listed DRAFT proof region: .drafts/P/Statements.lean
- unauthorized `sorry` outside manifest-listed DRAFT proof region: .drafts/P/Statements.lean
- unauthorized `sorry` outside manifest-listed DRAFT proof region: .drafts/P/Statements.lean
- unauthorized `sorry` outside manifest-listed DRAFT proof region: .drafts/N/Statements.lean
- unauthorized `sorry` outside manifest-listed DRAFT proof region: .drafts/N/Statements.lean
- unauthorized `sorry` outside manifest-listed DRAFT proof region: .drafts/N/Statements.lean
- unauthorized `sorry` outside manifest-listed DRAFT proof region: .drafts/I/Statements.lean
- unauthorized `sorry` outside manifest-listed DRAFT proof region: .drafts/I/Statements.lean
- unauthorized `sorry` outside manifest-listed DRAFT proof region: .drafts/I/Statements.lean
- unauthorized `sorry` outside manifest-listed DRAFT proof region: .drafts/I/Statements.lean
ABI HASHES OK (25 frozen declarations)
exit 1
```

This is a mismatch between the global guard and the explicit Phase 0 brief
allowing untracked statement drafts. It is **not a lint PASS**. We do not remove
the requested drafts, edit the guard, or edit other tracks to conceal it. The
orchestrator should reconcile the guard with the Phase 0 workflow separately.
The authorized draft exception suffices for the four Phase 0 deliverables; it
does not authorize any production proof to depend on `sorry`.

Static draft checks: 257 lines, no line over 100 characters, 15 definitions,
four theorem declarations and four theorem-body `sorry` occurrences; no provider
or frozen-theorem imports, resource overrides, `if`/`dite`, or `Classical.choose`.
`git check-ignore .drafts/I/Statements.lean` prints that path; `git ls-files`
for it is empty. `git diff --check` exits 0 with no output. The docs were also checked directly for whitespace/conflict markers. During
this task another campaign process made the three Markdown paths tracked; this
task did not stage or commit them. The Lean draft remains ignored and untracked.

A second elaboration fed the identical source, with only `#print axioms` commands
inserted before the namespace closes, to:

```text
nice -n 5 lake env lean -DautoImplicit=false -DrelaxedAutoImplicit=false --stdin
exit 0
```

It emitted the same four `sorry` warnings and no other warnings. Every one of
the 15 definitions printed exactly `[propext, Classical.choice, Quot.sound]`.
The main results printed:

```text
'KAM.Iso.isoenergetic_kam' depends on axioms: [propext, sorryAx, Classical.choice, Quot.sound]
'KAM.Iso.all_time_confinement' depends on axioms: [propext, sorryAx, Classical.choice, Quot.sound]
'KAM.Iso.kepler_bordered_det' depends on axioms: [propext, sorryAx, Classical.choice, Quot.sound]
'KAM.Iso.restricted_near_circular' depends on axioms: [propext, sorryAx, Classical.choice, Quot.sound]
```

No axiom-print commands were left in the deliverable. These receipts verify
well-typed exact statements and placeholder isolation; they do not verify the
mathematical truth of the unproved theorems. In particular, no root is sealed.

All four deliverables are complete for Phase 0 owner/orchestrator review. The
remaining approval, independent audit, global-guard reconciliation and proof
work are explicitly identified above.
