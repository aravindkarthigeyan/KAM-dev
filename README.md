# KAM-dev — campaign HQ

Lean 4 + Mathlib formalization of the **Kolmogorov–Arnold–Moser theorem** in its positive-measure form:
for a nearly-integrable real-analytic Hamiltonian H(θ, I) = h(I) + f(θ, I) with a Kolmogorov-nondegenerate
h, most of phase space is filled by invariant Lagrangian tori that carry quasi-periodic motion with
Diophantine frequencies, as soon as f is small enough. Private repository; owner Scott Armstrong.

<!-- AUTO:updated -->
> **Last updated: 2026-10-27 13:34 UTC** (automatic: every 20 minutes and after every commit) · **estimated completion 7.2 %** · frozen statements proved: 0 / 0 · **0 lines of Lean** of an estimated ≈ 40,000
<!-- /AUTO:updated -->

## Overview

**The theorem (draft target; not yet frozen).** Let B ⊂ ℝⁿ be a bounded domain and h real-analytic on a complex
neighbourhood of B̄, with frequency map ∇h a diffeomorphism of B onto its image (det ∇²h ≠ 0). For every
κ > 0 there is ε₀ > 0 such that, for every f real-analytic on a fixed complex neighbourhood of Tⁿ × B̄ with
sup norm ≤ ε₀ there, the points of Tⁿ × B that lie on invariant tori of H = h + f have Lebesgue measure at
least (1 − κ)·|Tⁿ × B|. Each such torus is a real-analytic embedded Lagrangian torus close to {I = const}, and
the flow of H on it is conjugate to the linear flow θ ↦ θ + tω with a Diophantine frequency ω. Target
quantitative form: the complement has measure ≤ C·ε₀^a for an explicit a > 0 (owner question Q1). The exact
statement will be transcribed from the pinned sources, approved by the owner as Lean code, and frozen.

**Route** (decision D2). No canonical changes of variables and no action-angle normal forms:
1. **A-posteriori KAM at fixed frequency** ([HL19, Thm 3.1](https://arxiv.org/abs/1711.05515v1) with d = n;
   cross-checked against [GJLV05](https://doi.org/10.1088/0951-7715/18/2/020)). An approximately invariant
   torus with small error and a nondegenerate torsion lies near a true invariant torus. The proof is a Newton
   method on the torus embedding: matrix identities from the approximate Lagrangian property, constant-coefficient
   cohomological equations, Neumann-series inverses.
2. **One torus per Diophantine frequency.** Apply 1 to the unperturbed torus (θ, (∇h)⁻¹ω) of the nearly-integrable
   system; the invariance error is the size of the perturbation.
3. **Measure.** Local uniqueness gives Lipschitz dependence of the tori on the frequency. The union of tori is then
   the image of a map Lipschitz-close to the bi-Lipschitz unperturbed map, on the Diophantine set, whose complement
   has measure O(γ).
4. **Framework.** Internally everything is coefficient arithmetic in weighted ℓ¹ Fourier(–Taylor) norms
   ‖f‖ = Σ |f̂ₖₘ| e^{|k|s} r^{|m|} (a Banach algebra: derivative, composition and cohomological estimates are
   termwise). Hypotheses are stated for real-analytic functions and converted once at the interface.

**How the campaign works.** The statements we must prove are fixed first. The headline theorem, a few gate
theorems and the definitions they use are written in Lean, approved by the owner line by line, and frozen: one
declaration per file, hashed in [`manifest/frozen-anchors.json`](manifest/frozen-anchors.json), never edited.
Each frozen theorem starts with the proof `sorry`. Agents prove it in a separate provider module, and the
orchestrator *seals* it: the `sorry` becomes `by exact Provider.<name>`, and the checks (hashes, axioms, kernel
replay, build) run again. A result counts as formalized only when its frozen statement is sealed.

---

## At a glance

<!-- AUTO:progress -->
### Estimated completion: **7.2 %**

`██░░░░░░░░░░░░░░░░░░░░░░░` 7.2 %

| Part of the project | Items | Weight | Done | Completion |
|---|---|---|---|---|
| Statement and planning | 8 | 26 | 4.2 | `██░░░░░░░░` 16 % |
| Campaign infrastructure | 4 | 5 | 2.1 | `████░░░░░░` 42 % |
| Analytic infrastructure | 8 | 24 | 0.0 | `░░░░░░░░░░` 0 % |
| A-posteriori KAM at fixed frequency | 4 | 20 | 0.0 | `░░░░░░░░░░` 0 % |
| Measure of the invariant tori | 5 | 12 | 0.0 | `░░░░░░░░░░` 0 % |
| **Total** | 29 | 87 | 6.3 | **7.2 %** |

**How this is estimated.** The project is divided into 29 work items: the planning deliverables, the campaign infrastructure, and every node of the proof map below. Each item is weighted by its difficulty (low 1, moderate 2, high 4, very high 8); each sealed frozen statement adds 1. An item counts with the fraction of it that is done: for a Lean item, the fraction proved on `main`; for a planning item, the lead's assessment. Item assessment last reviewed: **2026-10-27 15:30 UTC**. The percentage is recomputed automatically; it measures done work, so the high-weight proof items dominate what is left. File: [`docs/campaign/progress.json`](docs/campaign/progress.json).

<details><summary>All work items with their weight and status</summary>

| ID | Item | Difficulty | Done | Note |
|---|---|---|---|---|
| S.SURVEY | Literature survey: candidate sources, prior formal work, Mathlib inventory | M | ✅ 100 % | three research reports (2026-10-27): sources, warm-ups and norms, prior formalizations |
| S.SOURCES | Pinned source library: PDFs with SHA-256, bibliographic data checked against arXiv and Crossref | L | 🟨 80 % | 42 PDFs pinned in sources/SHA256SUMS; per-paper summaries still to write |
| S.ROUTE | Route verdict for the measure layer (a-posteriori KAM + Lipschitz dependence on the frequency) | H | 🟨 30 % | source-pinning research running |
| S.STMT | Mathematical statement of the headline theorem and the gate theorems, with owner rulings | M | ⬜ 0 % |  |
| S.LEAN | Exact Lean statements (headline + gates): independent audit, owner approval, freeze | H | ⬜ 0 % |  |
| S.BP | Blueprint: every proof step written out against the pinned sources | VH | ⬜ 0 % |  |
| S.GRAPH | Source-level dependency graph anchored to the frozen statements | H | ⬜ 0 % |  |
| S.ERRATA | Errata and deviations ledger for every formalized source (continuous) | L | 🟨 20 % | ledger opened; literature-reported candidates imported |
| I.REPO | Repository: toolchain v4.35.0, Mathlib v4.35.0, module-system checks, source lint | L | 🟨 90 % | skeleton builds; first commit pending |
| I.HQ | Campaign HQ: this README, generator, 20-minute cron and post-commit hook | L | 🟨 80 % |  |
| I.GUARDS | Freeze machinery: manifest, anchor guard, quarantine, kernel replay, mutation suite | M | 🟨 20 % | anchor guard and module checker copied from the skills |
| I.BUILD | Shared build snapshot for worktrees and machine-wide compile gate | L | ⬜ 0 % |  |
| F.ALG | Weighted ℓ¹ Fourier algebra on ℤⁿ: Banach algebra, exp, derivatives, averages | H | ⬜ 0 % |  |
| F.FT | Fourier–Taylor algebra in (angles, actions); Cauchy estimates in the actions | H | ⬜ 0 % |  |
| F.COMP | Composition f∘(id+u) and Taylor remainders in the weighted norms | H | ⬜ 0 % |  |
| F.MAT | Matrix-valued functions: products, Neumann-series inverses, averages | M | ⬜ 0 % |  |
| F.BRIDGE | Bridge between real-analytic functions on complex strips and coefficient spaces | H | ⬜ 0 % |  |
| F.DIOPH | Diophantine vectors; cohomological equation with Rüssmann's exponent | M | ⬜ 0 % |  |
| F.NEWTON | Abstract Newton/KAM convergence on a scale of analytic spaces | M | ⬜ 0 % |  |
| F.HAM | Hamiltonian vector fields in coordinates; invariant tori; quasi-periodic orbits as ODE solutions | M | ⬜ 0 % |  |
| K.GEOM | Approximate Lagrangian property, adapted symplectic frame, torsion matrix | H | ⬜ 0 % |  |
| K.STEP | Newton step: reduction of the linearized equation, cohomological equations, estimates | VH | ⬜ 0 % |  |
| K.ITER | Iteration and convergence: the a-posteriori existence theorem | H | ⬜ 0 % |  |
| K.UNIQ | Local uniqueness of the invariant torus modulo phase | H | ⬜ 0 % |  |
| M.APPLY | Invariant torus for every Diophantine frequency of a nearly-integrable Hamiltonian | M | ⬜ 0 % |  |
| M.LIP | Lipschitz dependence of the tori on the frequency | H | ⬜ 0 % |  |
| M.DMEAS | Measure of the non-Diophantine frequencies | M | ⬜ 0 % |  |
| M.IMAGE | Measure of images under maps Lipschitz-close to a bi-Lipschitz map | M | ⬜ 0 % |  |
| M.ASSEMBLY | Assembly of the headline theorem | M | ⬜ 0 % |  |

</details>
<!-- /AUTO:progress -->

<!-- AUTO:size -->
### Size of the formalization

| | Lines of Lean |
|---|---|
| On `main` now | **0** (0 excluding blank lines and comments) · **+0** since 2026-10-27 13:33 UTC |
| Written on agent branches, not yet landed | 0 |
| **Estimated total at completion** | **≈ 40,000** |
| Estimated still to write | ≈ 40,000 |

**How the size is estimated.** The estimate is a planning figure (infrastructure ≈ 12k, a-posteriori theorem ≈ 15k, measure layer ≈ 8k, interfaces ≈ 5k lines); it switches to a rate-based estimate once 8 weight units of Lean work are done. History of all counts: [`docs/campaign/history.csv`](docs/campaign/history.csv).
<!-- /AUTO:size -->

<!-- AUTO:glance -->
*Generated 2026-10-27 13:34 UTC from `main` at `229b4e1` by `scripts/hq-status.py`.*

**Current phase:** Phase 0: sources and statements. Headline chosen by the owner (positive-measure KAM for nearly-integrable real-analytic Hamiltonians); route chosen (a-posteriori KAM without action-angle changes of variables, weighted ℓ¹ norms); pinning the source for the measure layer; next: mathematical statement, then exact Lean statements for approval.

**Frozen statements proved: 0 / 0** · frozen definitions: 0

**Lean on `main`:** 0 modules · 0 lines · 0 theorems · `sorry` outside frozen anchors: 0 files · `axiom` declarations: 0

```text
DRAFT_ANCHORS: 0
UNREGISTERED_SORRIES: 0
DRAFT_IMPORT_VIOLATIONS: 0 (frozen-anchor guard, run at every landing)
SEALED: 0 / 0
```
<!-- /AUTO:glance -->

## Phases

| Phase | Content | Status |
|---|---|---|
| 0 | Survey, pinned sources, route verdict, mathematical statement, exact Lean statements approved and frozen | **in progress** |
| 1 | Blueprint (every step written out against the pinned sources), source-level dependency graph, gate statements | not started |
| 2 | Proof campaign: infrastructure, a-posteriori KAM, measure layer, assembly | not started |
| 3 | Clean-up, elaboration test, errata and deviations record, public release | not started |

## What we are formalizing: the frozen statements

<!-- AUTO:statements -->
*No statement is frozen yet.* The headline theorem and the gate theorems are being transcribed from the pinned sources; each will appear here once the owner has approved its exact Lean text and it is frozen.
<!-- /AUTO:statements -->

## The proof map

The planned dependency chain; arrows point from a result to what uses it. **Green**: proved. **Blue**: proved
conditionally on the nodes pointing into it. **Amber**: in progress. **Grey**: not started. **Yellow**: the
headline theorem. Node states are maintained in [`docs/campaign/campaign.json`](docs/campaign/campaign.json); the
plan behind them is [`docs/PLAN.md`](docs/PLAN.md).

<!-- AUTO:graph -->
```mermaid
flowchart BT
  classDef done fill:#c8e6c9,stroke:#2e7d32,color:#000
  classDef conditional fill:#bbdefb,stroke:#1565c0,color:#000
  classDef progress fill:#ffe0b2,stroke:#ef6c00,color:#000
  classDef todo fill:#eeeeee,stroke:#757575,color:#000
  classDef anchor fill:#fff9c4,stroke:#f9a825,color:#000,stroke-width:3px
  ALG["Weighted ℓ¹ Fourier–Taylor algebras<br/>products, derivatives, composition"]:::todo
  DIOPH["Diophantine vectors<br/>cohomological equation"]:::todo
  NEWTON["Newton convergence<br/>on analytic scales"]:::todo
  BRIDGE["Real-analytic functions ↔<br/>coefficient spaces"]:::todo
  GEOM["Approximate Lagrangian geometry<br/>frame and torsion"]:::todo
  APOST["A-posteriori KAM at fixed frequency<br/>[HL19, Thm 3.1]; [GJLV05]"]:::todo
  UNIQ["Local uniqueness<br/>modulo phase"]:::todo
  APPLY["A torus for every Diophantine ω<br/>near (θ, (∇h)⁻¹ω)"]:::todo
  LIP["Lipschitz dependence<br/>on the frequency"]:::todo
  DMEAS["Measure of the<br/>non-Diophantine frequencies"]:::todo
  IMAGE["Measure of images of<br/>near-bi-Lipschitz maps"]:::todo
  HEAD["Headline: positive-measure KAM<br/>for nearly-integrable H = h + f"]:::anchor
  ALG --> DIOPH
  ALG --> GEOM
  ALG --> APOST
  DIOPH --> APOST
  NEWTON --> APOST
  GEOM --> APOST
  DIOPH --> UNIQ
  GEOM --> UNIQ
  BRIDGE --> APPLY
  APOST --> APPLY
  APOST --> LIP
  UNIQ --> LIP
  APPLY --> LIP
  APPLY --> HEAD
  LIP --> HEAD
  DMEAS --> HEAD
  IMAGE --> HEAD
```
<!-- /AUTO:graph -->

## What is formalized so far

<!-- AUTO:areas -->
| Area | Content | Modules | Lines | Theorems |
|---|---|---|---|---|
| [`KAM/Frozen/`](KAM/Frozen) | Owner-approved frozen statements and definitions (one per file, manifest-bound) | 0 | 0 | 0 |
| `KAM/Fourier/` *(not created yet)* | Weighted ℓ¹ Fourier and Fourier–Taylor algebras, composition, Cauchy estimates | 0 | 0 | 0 |
| `KAM/Diophantine/` *(not created yet)* | Diophantine vectors, cohomological equation, measure of the Diophantine set | 0 | 0 | 0 |
| `KAM/Newton/` *(not created yet)* | Abstract Newton/KAM convergence on analytic scales | 0 | 0 | 0 |
| `KAM/Hamiltonian/` *(not created yet)* | Hamiltonian vector fields in coordinates, invariant tori, quasi-periodic orbits | 0 | 0 | 0 |
| `KAM/APosteriori/` *(not created yet)* | A-posteriori KAM theorem at fixed frequency and local uniqueness | 0 | 0 | 0 |
| `KAM/Measure/` *(not created yet)* | Lipschitz dependence on the frequency and the measure of the union of tori | 0 | 0 | 0 |
| `KAM/Provider/` *(not created yet)* | One provider module per frozen theorem, where its proof is assembled | 0 | 0 | 0 |
<!-- /AUTO:areas -->

## What the agents are doing now

Live state from [`docs/campaign/campaign.json`](docs/campaign/campaign.json), the agents' tmux sessions and their
branches. Rules for agents: [`AGENTS.md`](AGENTS.md). Builds:
- **Cap:** one targeted `nice -n 5 lake build <Module>` per agent at a time; never the whole library on a branch.
- **Reuse:** worktrees get a copy-on-write overlay on a snapshot of `main`'s build; nothing is rebuilt from scratch.

<!-- AUTO:workers -->
| Agent | Kind | Model | Account | State | Assignment | Branch | Unlanded commits |
|---|---|---|---|---|---|---|---|
| **orchestrator** | lead | Claude Opus 5.5 | claude-1 | 🔄 active | Campaign lead: sources, statements, assignments, landings, owner questions, this README | — | — |
| **measure-source** | research subagent | Claude Opus 5.5 | claude-1 | 🔄 running | Pin the source(s) for the measure layer and check the Lipschitz-in-frequency route | — | — |
<!-- /AUTO:workers -->

### Recent changes on `main`

<!-- AUTO:landed -->
| When (UTC) | Commit | Change |
|---|---|---|
| 2026-10-27 13:33 | `980b703` | Set up the KAM campaign: Lean project, sources, HQ and ledgers |
<!-- /AUTO:landed -->

## Decisions

Full text: [`docs/DECISIONS.md`](docs/DECISIONS.md).

- **D1** Headline: the positive-measure KAM theorem for nearly-integrable real-analytic Hamiltonians on
  Tⁿ × B, general h (Kolmogorov nondegenerate). *(Scott, 2026-10-27)*
- **D2** Route: a-posteriori KAM at fixed frequency (parameterization method, no action-angle changes of
  variables), one torus per Diophantine frequency, measure via Lipschitz dependence on the frequency.
  Weighted ℓ¹ Fourier(–Taylor) norms internally; flows, not maps; coordinates on ℝⁿ with ℤⁿ-periodicity, not
  manifolds. *(Scott accepted the orchestrator's recommendation, 2026-10-27)*
- **D3** Independent development; the existing Lean formalization of Arnold's 1963 theorem (below) is a
  reference, not a dependency. *(Scott, 2026-10-27)*
- **D4** Toolchain `leanprover/lean4:v4.35.0`, Mathlib `v4.35.0` (Palomar's minimum is `v4.35.0-rc2`).
- **D5** Frozen-anchor workflow: statements frozen before proofs; one declaration per frozen file; sealing by
  `by exact Provider.<name>`; Lean module system everywhere.
- **D6** This README is regenerated at least every 20 minutes and after every commit; an errata and deviations
  ledger is kept for every formalized source. *(Scott, 2026-10-27)*

## Owner questions (open)

| | Question | Recommendation |
|---|---|---|
| Q1 | Should the frozen headline carry an explicit rate, meas(complement) ≤ C·ε^a, or only the qualitative (1 − κ) form? | Explicit rate, if the route delivers it at little extra cost; otherwise the qualitative form plus a separate rate theorem. Decided after the measure-layer source is pinned. |
| Q2 | Angle period: 1 (Tⁿ = ℝⁿ/ℤⁿ, as in HL19, FHL17 and Mathlib's `UnitAddTorus`) or 2π (as in Pöschel, Arnold)? | Period 1. |
| Q3 | What must the conclusion say about each torus: invariance with the linear flow and a Diophantine frequency (minimum); also Lagrangian, real-analytic embedding, closeness to the unperturbed torus? | All of them; the Lagrangian property comes for free in the a-posteriori framework. |
| Q4 | Gate theorems to freeze besides the headline: the fixed-frequency a-posteriori theorem, local uniqueness, measure of the Diophantine set? | Freeze the a-posteriori theorem and the Diophantine-measure theorem as gates; keep the rest internal. |

## Errata and deviations

Ledger: [`docs/errata/ledger.json`](docs/errata/ledger.json); reader-facing record (written from the ledger,
verified independently before release): [`docs/ERRATA-AND-DEVIATIONS.md`](docs/ERRATA-AND-DEVIATIONS.md). Every
source we formalize gets entries for its errata (defects in the pinned text) and for our deviations from it
(conventions, reformulations, proof routes). Candidates imported from the literature stay `CANDIDATE` until checked
against the pinned PDF.

<!-- AUTO:errata -->
| Source | Errata (by status) | Deviations (by status) |
|---|---|---|
| HL19 | 0 | 2 planned |
| Pos01 | 2 candidate | 1 planned |

<details><summary>All ledger entries</summary>

| ID | Type | Source | Location | Claim | Status |
|---|---|---|---|---|---|
| E-Pos01-1 | erratum | Pos01 | p. 29 (arXiv v1.3), footnote to the proof of Lemma A.3 / estimates of Appendix A | missing hypothesis: the condition Kσ ≥ 1 is missing in the printed version; the author's own footnote in arXiv v1.3 says so and the pinned arXiv version contains it | CANDIDATE |
| E-Pos01-2 | erratum | Pos01 | p. 23 (arXiv v1.3), choice of h₀ and K₀ in the proof of the main theorem | reported flaw in the choice of h₀, K₀ (Bounemoura, arXiv:2006.04453, 'Some remarks on the Classical KAM Theorem, following Pöschel'); corrected in Koudjinan's thesis | CANDIDATE |
| D-ROUTE-1 | deviation | Pos01 | whole proof | Proof route: the tori are obtained from an a-posteriori fixed-frequency KAM theorem (parameterization method, no canonical changes of variables) applied at each Diophantine frequency, not by Pöschel's iteration of symplectic transformations | PLANNED |
| D-NORM-1 | deviation | HL19 | §3.1 (analytic functions and norms) | Estimates are carried out in weighted ℓ¹ Fourier(–Taylor) coefficient norms instead of sup norms on complex strips; hypotheses are stated for real-analytic functions and converted once at the interface | PLANNED |
| D-COORD-1 | deviation | HL19 | §2 (Hamiltonian systems and invariant tori) | Phase space Tⁿ × B is represented in coordinates: angles in ℝⁿ with ℤⁿ-periodicity, actions in an open set of ℝⁿ (no manifold structure, no general symplectic form) | PLANNED |

</details>
<!-- /AUTO:errata -->

## Papers

Pinned PDFs live in `sources/pdf/` (kept out of git); their SHA-256 hashes are in
[`sources/SHA256SUMS`](sources/SHA256SUMS). arXiv versions were read from the pinned PDFs; DOIs come from the arXiv
API or exact Crossref title matches. Registry: [`docs/sources.json`](docs/sources.json).

<!-- AUTO:papers -->
| Key | Reference | arXiv | DOI | Role |
|---|---|---|---|---|
| HL19 | A. Haro, A. Luque, *A-posteriori KAM theory with optimal estimates for partially integrable systems*, J. Differential Equations (2019) | [1711.05515v1](https://arxiv.org/abs/1711.05515v1) | [10.1016/j.jde.2018.08.003](https://doi.org/10.1016/j.jde.2018.08.003) | Primary for the fixed-frequency a-posteriori theorem: Thm 3.1 (§3.2) with d = n, explicit constants in App. B |
| GJLV05 | R. de la Llave, A. González, À. Jorba, J. Villanueva, *KAM theory without action-angle variables*, Nonlinearity 18 (2005) 855–895 | — | [10.1088/0951-7715/18/2/020](https://doi.org/10.1088/0951-7715/18/2/020) | A-posteriori theorem for flows (Thm 5) and maps (Thm 1); local uniqueness; cross-check of the Newton step |
| Pos01 | J. Pöschel, *A lecture on the classical KAM theorem*, Proc. Symp. Pure Math. 69 (2001) 707–732 | [0908.2234v1](https://arxiv.org/abs/0908.2234v1) | — | Measure layer (Thm A, App. B) and measure of Diophantine vectors (§1); pinned arXiv text is Version 1.3 (2009) |
| FHL17 | J.-Ll. Figueras, A. Haro, A. Luque, *Rigorous computer assisted application of KAM theory: a modern approach*, Found. Comput. Math. 17 (2017) | [1601.00084v1](https://arxiv.org/abs/1601.00084v1) | [10.1007/s10208-016-9339-3](https://doi.org/10.1007/s10208-016-9339-3) | Explicit a-posteriori constants (Thm 2.5, maps); measure of Diophantine vectors (§4.1); Rüssmann estimates (§4.2) |
| CK21 | L. Chierchia, C. E. Koudjinan, *V. I. Arnold's "global" KAM theorem and geometric measure estimates*, Regul. Chaotic Dyn. 26 (2021) | [2010.13243v1](https://arxiv.org/abs/2010.13243v1) | [10.1134/S1560354721010044](https://doi.org/10.1134/S1560354721010044) | Explicit measure estimates (cross-check of exponents and constants) |
| BC17 | L. Biasco, L. Chierchia, *Explicit estimates on the measure of primary KAM tori*, Ann. Mat. Pura Appl. (2018) | [1612.01903v1](https://arxiv.org/abs/1612.01903v1) | [10.1007/s10231-017-0678-8](https://doi.org/10.1007/s10231-017-0678-8) | Explicit measure estimates (cross-check) |
| Sal04 | D. A. Salamon, *The Kolmogorov–Arnold–Moser theorem*, Math. Phys. Electron. J. 10 (2004), Paper 3 | — | — | Single-torus theorem with explicit constants (Thm 1); cross-check |
| Chi03 | L. Chierchia, *KAM lectures*, in: Dynamical Systems Part I, Pubbl. Cent. Ric. Mat. Ennio De Giorgi, SNS Pisa (2003) 1–56 | — | — | Configuration-space a-posteriori theorem (Thm 6) and weighted Fourier norms (App. B); scanned two-up PDF |
| CF24 | L. Chierchia, I. Fascitiello, *Nineteen fifty-four: Kolmogorov's new "metrical approach" to Hamiltonian dynamics*, Regul. Chaotic Dyn. (2024) | [2402.00178v1](https://arxiv.org/abs/2402.00178v1) | [10.1134/S1560354724550021](https://doi.org/10.1134/S1560354724550021) | Faithful restatement of Kolmogorov's 1954 theorems (statement fidelity) |
| Bou20 | A. Bounemoura, *Some remarks on the classical KAM theorem, following Pöschel*, arXiv preprint (2020) | [2006.04453v1](https://arxiv.org/abs/2006.04453v1) | — | Reported flaw in Pos01 (ledger E-Pos01-2) |
| Kou19 | C. E. Koudjinan, *Quantitative KAM normal forms and sharp measure estimates*, PhD thesis, Roma Tre (2019) | [1904.13062v1](https://arxiv.org/abs/1904.13062v1) | — | Corrected version of Pöschel's argument; sharp measure estimates |
| Arn63 | V. I. Arnold, *Proof of a theorem of A. N. Kolmogorov on the invariance of quasi-periodic motions under small perturbations of the Hamiltonian*, Russian Math. Surveys 18(5) (1963) 9–36 | — | [10.1070/RM1963v018n05ABEH004130](https://doi.org/10.1070/RM1963v018n05ABEH004130) | Original positive-measure theorem (not downloaded) |
| Kol54 | A. N. Kolmogorov, *On the conservation of conditionally periodic motions under small perturbation of the Hamiltonian*, Dokl. Akad. Nauk SSSR 98 (1954) 527–530 | — | — | Original theorem (restated in CF24; not downloaded) |
<!-- /AUTO:papers -->

## Prior and related formal work

- **arnold1963-kam** ([GitHub](https://github.com/ybq1415926-droid/arnold1963-kam), Lean 4, v1.0.0, 2026-10-08):
  Arnold's 1963 theorem (positive-measure family of invariant tori), about 17.8k lines, no `sorry`; frequencies
  non-resonant rather than Diophantine, no explicit measure estimate; reviewed only by its author. Method: Arnold's
  scheme with generating functions and sup norms.
- **PlasmaLean** ([GitHub](https://github.com/siddhartha-gadgil/PlasmaLean)): a-posteriori, explicit-constant KAM
  for one magnetic field-line flow on T², with computer-assisted certificates; weighted ℓ¹(ℤ²) algebra.
- **lean-eval** `kam_invariant_curve`: the 1-D twist-map invariant curve; several accepted AI-prover solutions
  (June–September 2026).
- **Grad-Conjecture** ([GitHub](https://github.com/lukasliehr/Grad-Conjecture)): reusable Nash–Moser iteration
  components (no packaged theorem; no licence file).
- **TauCeti** ([GitHub](https://github.com/TauCetiProject/TauCeti)): symplectic geometry and Hamiltonian flows on
  top of Mathlib.

## Repository layout

| Path | Content |
|---|---|
| `KAM/Frozen/` | owner-approved frozen statements and definitions (one per file; `by sorry` until sealed) |
| `KAM/Provider/` | one provider module per frozen theorem, where its proof is assembled |
| `KAM/` (rest) | the library: infrastructure and proofs, one folder per area (table above) |
| `KAM.lean` | root file importing every module (generated by `scripts/gen_root_imports.py`) |
| `manifest/frozen-anchors.json` | hashes, provenance and state of every frozen declaration |
| `docs/PLAN.md` | the mathematical plan: theorem chain, framework, Lean design |
| `docs/DECISIONS.md` | owner rulings and orchestrator decisions |
| `docs/errata/` | findings ledger (errata and deviations) |
| `docs/campaign/` | `campaign.json` (phase, agents, proof map), `progress.json` (work items), `history.csv` |
| `docs/sources.json`, `sources/` | pinned papers (registry, hashes; PDFs local only) |
| `scripts/` | `lint_sources.sh` (all source checks), `hq-status.py` / `hq-update.sh` (this README), checkers |

## Rules for Lean code

1. Every `.lean` file is a Lean module; `python3 scripts/check_lean_modules.py --root .` passes.
2. Never `set_option maxHeartbeats` (or any heartbeat or recursion override); no file over 1500 lines; no `axiom`;
   `sorry` only as the manifest-bound body of a frozen statement.
3. Ambient spaces are `Fin n → ℝ` and `Fin n → ℂ` (indices `Fin n → ℤ`); never `EuclideanSpace`.
4. Frozen files are read-only. A theorem is proved in its provider module and sealed by changing only the anchor's
   proof body to `by exact KAM.Provider.<name>`; no production module imports a draft anchor.
5. No conclusion-shaped hypotheses: every step from the source premises to the conclusion is proved, not assumed.
6. `scripts/lint_sources.sh` (also `lake lint`) and `lake build` pass before anything lands on `main`.

---
*Live sections generated by [`scripts/hq-status.py`](scripts/hq-status.py) from
[`docs/campaign/campaign.json`](docs/campaign/campaign.json), [`docs/campaign/progress.json`](docs/campaign/progress.json),
the ledger, the manifest, git and the agents' terminals. Edit the static text here and the JSON files; never edit
a section between `AUTO` markers by hand.*
