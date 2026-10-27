# KAM-dev — campaign HQ

Lean 4 + Mathlib formalization of the **Kolmogorov–Arnold–Moser theorem** in its positive-measure form:
for a nearly-integrable real-analytic Hamiltonian H(θ, I) = h(I) + f(θ, I) with a Kolmogorov-nondegenerate
h, most of phase space is filled by invariant Lagrangian tori that carry quasi-periodic motion with
Diophantine frequencies, as soon as f is small enough. Public development repository; owner Scott Armstrong.

<!-- AUTO:updated -->
> **Last updated: 2026-10-27 14:35 UTC** (automatic: every 20 minutes and after every commit) · **estimated completion 12.6 %** · frozen statements proved: 0 / 0 · **0 lines of Lean** of an estimated ≈ 40,000
<!-- /AUTO:updated -->

## Overview

**The theorem (draft target; not yet frozen).** Let B ⊂ ℝⁿ be a bounded domain and h real-analytic on a complex
neighbourhood of B̄, with frequency map ∇h a diffeomorphism of B onto its image (det ∇²h ≠ 0). For every
κ > 0 there is ε₀ > 0 such that, for every f real-analytic on a fixed complex neighbourhood of Tⁿ × B̄ with
sup norm ≤ ε₀ there, the points of Tⁿ × B that lie on invariant tori of H = h + f have Lebesgue measure at
least (1 − κ)·|Tⁿ × B|. Each such torus is a real-analytic embedded Lagrangian torus close to {I = const}, and
the flow of H on it is conjugate to the linear flow θ ↦ θ + tω with a Diophantine frequency ω. Quantitative form
that the route delivers: the complement has measure ≤ C·ε^{1/4}, where ε = sup |f| (owner question Q1; the optimal
ε^{1/2} needs canonical-transformation methods). The exact statement will be transcribed from the pinned sources,
approved by the owner as Lean code, and frozen.

**Route** (decision D2). No canonical changes of variables and no action-angle normal forms:
1. **A-posteriori KAM at fixed frequency** ([HL19, Thm 3.1](https://arxiv.org/abs/1711.05515v1) with d = n;
   cross-checked against [GJLV05](https://doi.org/10.1088/0951-7715/18/2/020)). An approximately invariant
   torus with small error and a nondegenerate torsion lies near a true invariant torus. The proof is a Newton
   method on the torus embedding: matrix identities from the approximate Lagrangian property, constant-coefficient
   cohomological equations, Neumann-series inverses.
2. **One torus per Diophantine frequency.** Apply 1 to the unperturbed torus (θ, (∇h)⁻¹ω) of the nearly-integrable
   system; the invariance error is the size of the perturbation.
3. **Measure.** Local uniqueness for flows, which no source states (we prove it, adapting
   [GJLV05](https://doi.org/10.1088/0951-7715/18/2/020) Thm 2), and re-application of step 1 at nearby
   frequencies ([CCdlL13](https://doi.org/10.1016/j.jde.2013.05.001), Cor. 29–30) make the tori depend on the
   frequency with Lipschitz defect O(ε/γ⁴). A McShane extension ([Pos01](https://arxiv.org/abs/0908.2234v1),
   Prop. 1–2 and App. B) turns this into a lipeomorphism. The complement of the tori is then the image of the
   non-Diophantine set, of measure O(γ). Taking γ ~ ε^{1/4} gives the rate.
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
### Estimated completion: **12.6 %**

`███░░░░░░░░░░░░░░░░░░░░░░` 12.6 %

| Part of the project | Items | Weight | Done | Completion |
|---|---|---|---|---|
| Statement and planning | 8 | 26 | 9.3 | `████░░░░░░` 36 % |
| Campaign infrastructure | 4 | 5 | 2.1 | `████░░░░░░` 42 % |
| Analytic infrastructure | 8 | 24 | 0.0 | `░░░░░░░░░░` 0 % |
| A-posteriori KAM at fixed frequency | 4 | 24 | 0.0 | `░░░░░░░░░░` 0 % |
| Measure of the invariant tori | 5 | 12 | 0.0 | `░░░░░░░░░░` 0 % |
| **Total** | 29 | 91 | 11.4 | **12.6 %** |

**How this is estimated.** The project is divided into 29 work items: the planning deliverables, the campaign infrastructure, and every node of the proof map below. Each item is weighted by its difficulty (low 1, moderate 2, high 4, very high 8); each sealed frozen statement adds 1. An item counts with the fraction of it that is done: for a Lean item, the fraction proved on `main`; for a planning item, the lead's assessment. Item assessment last reviewed: **2026-10-27 14:45 UTC**. The percentage is recomputed automatically; it measures done work, so the high-weight proof items dominate what is left. File: [`docs/campaign/progress.json`](docs/campaign/progress.json).

<details><summary>All work items with their weight and status</summary>

| ID | Item | Difficulty | Done | Note |
|---|---|---|---|---|
| S.SURVEY | Literature survey: candidate sources, prior formal work, Mathlib inventory | M | ✅ 100 % | three research reports (2026-10-27): sources, warm-ups and norms, prior formalizations |
| S.SOURCES | Pinned source library: PDFs with SHA-256, bibliographic data checked against arXiv and Crossref | L | 🟨 85 % | 50 PDFs pinned in sources/SHA256SUMS; 20 in the registry; per-paper summaries still to write |
| S.ROUTE | Route verdict for the measure layer (a-posteriori KAM + Lipschitz dependence on the frequency) | H | 🟨 90 % | verdict: route works; rate ε^{1/4}; flow local uniqueness must be proved by us (no published version) |
| S.STMT | Mathematical statement of the headline theorem and the gate theorems, with owner rulings | M | 🟨 70 % | docs/statement.md draft 0.1; rulings Q1–Q5 in |
| S.LEAN | Exact Lean statements (headline + gates): independent audit, owner approval, freeze | H | 🟨 30 % | exact drafts elaborate (5 theorems, 19 definitions); independent audit running |
| S.BP | Blueprint: every proof step written out against the pinned sources | VH | ⬜ 0 % |  |
| S.GRAPH | Source-level dependency graph anchored to the frozen statements | H | ⬜ 0 % |  |
| S.ERRATA | Errata and deviations ledger for every formalized source (continuous) | L | 🟨 30 % | ledger: 8 candidate errata, 6 planned deviations |
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
| K.UNIQ | Local uniqueness modulo phase for flows (no published version: adapt GJLV05 Thm 2, §6, §8) | VH | ⬜ 0 % |  |
| M.APPLY | Invariant torus for every Diophantine frequency of a nearly-integrable Hamiltonian | M | ⬜ 0 % |  |
| M.LIP | Lipschitz dependence of the tori on the frequency (re-application; defect O(ε/γ⁴)) | H | ⬜ 0 % |  |
| M.DMEAS | Measure of the non-Diophantine frequencies | M | ⬜ 0 % |  |
| M.IMAGE | McShane extension of F̂ − id and the lipeomorphism: the complement is the image of the complement | M | ⬜ 0 % |  |
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
*Generated 2026-10-27 14:35 UTC from `main` at `4db4826` by `scripts/hq-status.py`.*

**Current phase:** Phase 0: statements. Owner rulings Q1–Q5 recorded (D9); mathematical statement draft 0.1 in docs/statement.md; exact Lean drafts of the headline (rate and qualitative), G1 (a-posteriori), G2 (local uniqueness for flows), G3 (Diophantine measure) and 19 definitions elaborate against Mathlib; independent refute-first statement audit running; then owner approval and freeze.

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
  UNIQ["Local uniqueness for flows<br/>(to be proved: adapt GJLV05 Thm 2)"]:::todo
  APPLY["A torus for every Diophantine ω<br/>near (θ, (∇h)⁻¹ω)"]:::todo
  LIP["Lipschitz in ω: defect O(ε/γ⁴)<br/>[CCdlL13, Cor. 29–30]"]:::todo
  DMEAS["Measure of the<br/>non-Diophantine frequencies [Pos01 §1d]"]:::todo
  IMAGE["McShane extension, lipeomorphism<br/>[Pos01, Prop. 1–2, App. B]"]:::todo
  HEAD["Headline: positive-measure KAM<br/>complement ≤ C·ε^{1/4}"]:::anchor
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
| **statement-audit** | audit subagent | Claude Opus 5.5 | claude-1 | 🔄 running | Refute-first audit of the drafted Lean statements against HL19, Pos01, GJLV05 and the rulings | — | — |

**Queued:** Owner approval of the exact Lean statements, then freeze (manifest, DRAFT_SORRY anchors)
<!-- /AUTO:workers -->

### Recent changes on `main`

<!-- AUTO:landed -->
| When (UTC) | Commit | Change |
|---|---|---|
| 2026-10-27 14:35 | `4db4826` | Record D10: the errata ledger stays public |
| 2026-10-27 14:32 | `80d65f4` | HQ: statement drafts elaborate; independent audit running |
| 2026-10-27 14:28 | `227e9b6` | Make the repository public; record rulings Q1-Q5; add statement draft 0.1 |
| 2026-10-27 13:45 | `3b36d0e` | Pin the measure-layer sources and record the route verdict |
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
- **D7** Hosting: public GitHub repository `scottnarmstrong/KAM-dev` (source PDFs stay out of git). *(Scott)*
- **D8** Route verdict: rate ε^{1/4}; local uniqueness for flows is proved by us; Lipschitz dependence by
  re-application (CCdlL13); measure step by McShane extension (Pos01). *(orchestrator, 2026-10-27; revisable)*

## Owner questions

All answered: Scott accepted the recommendations on Q1–Q5 (2026-10-27), recorded as D9 in
[`docs/DECISIONS.md`](docs/DECISIONS.md).

| | Question | Ruling |
|---|---|---|
| Q1 | Rate in the frozen headline? | Yes: meas(complement) ≤ C·ε^{1/4}; the qualitative (1 − κ) form, with no boundary condition, is a corollary. |
| Q2 | Angle period? | 1: Tⁿ = ℝⁿ/ℤⁿ. |
| Q3 | Content of "invariant torus"? | Invariant, carrying the linear flow with a Diophantine frequency; Lagrangian; real-analytic embedding; close to the unperturbed torus. |
| Q4 | Gates besides the headline? | The fixed-frequency a-posteriori theorem, local uniqueness for flows, and the measure of the Diophantine set. |
| Q5 | Standing assumptions? | n ≥ 2; B bounded with regular boundary (rate form only); ∇h bi-Lipschitz on B̄; h + f real-analytic on a uniform complex neighbourhood. |

## Errata and deviations

Ledger: [`docs/errata/ledger.json`](docs/errata/ledger.json); reader-facing record (written from the ledger,
verified independently before release): [`docs/ERRATA-AND-DEVIATIONS.md`](docs/ERRATA-AND-DEVIATIONS.md). Every
source we formalize gets entries for its errata (defects in the pinned text) and for our deviations from it
(conventions, reformulations, proof routes). Candidates imported from the literature stay `CANDIDATE` until checked
against the pinned PDF.

<!-- AUTO:errata -->
| Source | Errata (by status) | Deviations (by status) |
|---|---|---|
| CCdlL13 | 1 candidate | 1 planned |
| FdlLS09 | 2 candidate | 0 |
| GJLV05 | 2 candidate | 1 planned |
| HL19 | 0 | 2 planned |
| Pos01 | 3 candidate | 2 planned |

<details><summary>All ledger entries</summary>

| ID | Type | Source | Location | Claim | Status |
|---|---|---|---|---|---|
| E-Pos01-1 | erratum | Pos01 | p. 29 (arXiv v1.3), footnote to Lemma A.2 | missing hypothesis: the condition Kσ ≥ 1 is missing in the printed version; the author's own footnote in arXiv v1.3 says so and the pinned arXiv version contains it | CANDIDATE |
| E-Pos01-2 | erratum | Pos01 | p. 23 (arXiv v1.3), choice of h₀ and K₀ in the proof of Theorem A | the choices of h₀ and K₀ violate h₀ ≤ α(2K₀^ν)⁻¹ (Bou20, footnote 1); Kou19 Rem. 2.1.5(4), p. 28: 'Theorem A and B are not valid for ν = τ+1' with that proof; Bou20 restores Theorem A as stated by Rüssmann approximation and a linear scheme | CANDIDATE |
| E-Pos01-3 | erratum | Pos01 | p. 13 (arXiv v1.3), measure statement after Theorem A | should be the measure of (Ω ∖ Ωα) × Tⁿ | CANDIDATE |
| E-GJLV05-1 | erratum | GJLV05 | p. 862, Theorem 3 (closeness bound) | presumably cγ^{−2}δ^{−2σ}, as in Theorems 1 and 5 | CANDIDATE |
| E-GJLV05-2 | erratum | GJLV05 | p. 865, Theorem 5 | ρ₀ is not defined in the statement (presumably ρ) | CANDIDATE |
| E-FdlLS09-1 | erratum | FdlLS09 | p. 13, Theorem 3.14 | δ is introduced but unused; the bound presumably involves δ | CANDIDATE |
| E-FdlLS09-2 | erratum | FdlLS09 | §7.1, pp. 42–43 | a bi-Lipschitz map ω ↦ K_ω into a function space does not by itself give a Lipschitz inverse of (θ, ω) ↦ K_ω(θ); the measure conclusion needs the argument we supply (D-LIP-1, D-MEAS-1) | CANDIDATE |
| E-CCdlL13-1 | erratum | CCdlL13 | pp. 31–32 (preprint mp_arc 11-188) | the two pages describe ℓ = 2 inconsistently | CANDIDATE |
| D-ROUTE-1 | deviation | Pos01 | whole proof | Proof route: the tori are obtained from an a-posteriori fixed-frequency KAM theorem (parameterization method, no canonical changes of variables) applied at each Diophantine frequency, not by Pöschel's iteration of symplectic transformations | PLANNED |
| D-MEAS-1 | deviation | Pos01 | Theorem (p. 6), Prop. 1–2 (p. 11) | Rate: our route proves meas(complement) ≤ C·ε^{1/4} (γ ~ ε^{1/4}), not Pöschel's O(√ε); the measure step applies the McShane extension of App. B to F̂ − id in frequency coordinates | PLANNED |
| D-NORM-1 | deviation | HL19 | §3.1 (analytic functions and norms) | Estimates are carried out in weighted ℓ¹ Fourier(–Taylor) coefficient norms instead of sup norms on complex strips; hypotheses are stated for real-analytic functions and converted once at the interface | PLANNED |
| D-COORD-1 | deviation | HL19 | §2 (Hamiltonian systems and invariant tori) | Phase space Tⁿ × B is represented in coordinates: angles in ℝⁿ with ℤⁿ-periodicity, actions in an open set of ℝⁿ (no manifold structure, no general symplectic form) | PLANNED |
| D-UNIQ-1 | deviation | GJLV05 | Theorem 2 (maps), §6, §8 | Proof supplement: local uniqueness modulo phase for flows. No published statement exists in this framework (GJLV05 Rem. 7: 'We do not formulate such a theorem'; HL19 Rem. 3.5 asserts it without proof). We prove it by adapting the map proof of GJLV05 §6 with the flow reducibility of §8 and Prop. 18, directly for flows (not through the time-one map, which needs map-Diophantine frequencies). | PLANNED |
| D-LIP-1 | deviation | CCdlL13 | Cor. 29–30 | Lipschitz dependence on the frequency by re-applying the a-posteriori theorem at a nearby frequency (CCdlL13 template), with the error estimate ‖E′‖ ≲ (ε + ‖K_ω − K⁰_ω‖_{C¹})·∣ω − ω′∣ and Lipschitz defect O(ε/γ⁴) | PLANNED |

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
| GJLV05 | R. de la Llave, A. González, À. Jorba, J. Villanueva, *KAM theory without action-angle variables*, Nonlinearity 18 (2005) 855–895 | — | [10.1088/0951-7715/18/2/020](https://doi.org/10.1088/0951-7715/18/2/020) | A-posteriori theorem for flows (Thm 5, p. 865) and maps (Thm 1); local uniqueness for maps (Thm 2, p. 862; proof §6, pp. 883–885), the template for our flow version; automatic Lagrangian property (Lemma 19 / Prop. 18) |
| CCdlL13 | R. Calleja, A. Celletti, R. de la Llave, *A KAM theory for conformally symplectic systems: efficient algorithms and their validation*, J. Differential Equations 255 (2013) 978–1049 | — | [10.1016/j.jde.2013.05.001](https://doi.org/10.1016/j.jde.2013.05.001) | Lipschitz dependence on the frequency by re-applying the a-posteriori theorem (Cor. 29–30, normalization (5.3)); pinned preprint mp_arc 11-188 |
| Pos01 | J. Pöschel, *A lecture on the classical KAM theorem*, Proc. Symp. Pure Math. 69 (2001) 707–732 | [0908.2234v1](https://arxiv.org/abs/0908.2234v1) | — | Measure assembly: Prop. 1–2 (p. 11) with the Lipschitz (McShane) extension of App. B (p. 31); measure of Diophantine vectors (§1d, p. 5); pinned arXiv text is Version 1.3 (2009) |
| BC17 | L. Biasco, L. Chierchia, *Explicit estimates on the measure of primary KAM tori*, Ann. Mat. Pura Appl. (2018) | [1612.01903v1](https://arxiv.org/abs/1612.01903v1) | [10.1007/s10231-017-0678-8](https://doi.org/10.1007/s10231-017-0678-8) | Measure assembly in phase space: §6.5–6.6, Lemmas 5–6 (arXiv pp. 15–18) |
| FHL17 | J.-Ll. Figueras, A. Haro, A. Luque, *Rigorous computer assisted application of KAM theory: a modern approach*, Found. Comput. Math. 17 (2017) | [1601.00084v1](https://arxiv.org/abs/1601.00084v1) | [10.1007/s10208-016-9339-3](https://doi.org/10.1007/s10208-016-9339-3) | Explicit a-posteriori constants (Thm 2.5, maps); measure of Diophantine vectors (§4.1); Rüssmann estimates (§4.2) |
| FdlLS09 | E. Fontich, R. de la Llave, Y. Sire, *Construction of invariant whiskered tori by a parameterization method. Part I: Maps and flows in finite dimensions*, J. Differential Equations 246 (2009) 3136–3213 | [0903.0311v1](https://arxiv.org/abs/0903.0311v1) | [10.1016/j.jde.2009.01.037](https://doi.org/10.1016/j.jde.2009.01.037) | Local uniqueness (Thm 3.14) and dependence on the frequency (§7.1) |
| Vil17 | J. Villanueva, *A new approach to the parameterization method for Lagrangian tori of Hamiltonian systems*, J. Nonlinear Sci. 27 (2017) 495–530 | — | [10.1007/s00332-016-9342-5](https://doi.org/10.1007/s00332-016-9342-5) | Sharper a-posteriori theorem (Thm 2.6) with split error terms; pinned author copy |
| CK21 | L. Chierchia, C. E. Koudjinan, *V. I. Arnold's "global" KAM theorem and geometric measure estimates*, Regul. Chaotic Dyn. 26 (2021) | [2010.13243v1](https://arxiv.org/abs/2010.13243v1) | [10.1134/S1560354721010044](https://doi.org/10.1134/S1560354721010044) | Explicit measure estimates (cross-check of exponents and constants) |
| Sal04 | D. A. Salamon, *The Kolmogorov–Arnold–Moser theorem*, Math. Phys. Electron. J. 10 (2004), Paper 3 | — | — | Single-torus theorem with explicit constants (Thm 1); cross-check |
| Chi03 | L. Chierchia, *KAM lectures*, in: Dynamical Systems Part I, Pubbl. Cent. Ric. Mat. Ennio De Giorgi, SNS Pisa (2003) 1–56 | — | — | Configuration-space a-posteriori theorem (Thm 6) and weighted Fourier norms (App. B); scanned two-up PDF |
| CF24 | L. Chierchia, I. Fascitiello, *Nineteen fifty-four: Kolmogorov's new "metrical approach" to Hamiltonian dynamics*, Regul. Chaotic Dyn. (2024) | [2402.00178v1](https://arxiv.org/abs/2402.00178v1) | [10.1134/S1560354724550021](https://doi.org/10.1134/S1560354724550021) | Faithful restatement of Kolmogorov's 1954 theorems (statement fidelity) |
| Vil08 | J. Villanueva, *Kolmogorov theorem revisited*, J. Differential Equations 244 (2008) 2251–2276 | — | [10.1016/j.jde.2008.02.010](https://doi.org/10.1016/j.jde.2008.02.010) | Benchmarks γ ~ ε^{1/2} and action displacement O(ε/γ) (canonical route) |
| FHL20 | J.-Ll. Figueras, A. Haro, A. Luque, *Effective bounds for the measure of rotations*, Nonlinearity 33 (2020) 700–741 | [1806.05517v1](https://arxiv.org/abs/1806.05517v1) | [10.1088/1361-6544/ab500d](https://doi.org/10.1088/1361-6544/ab500d) | Lipschitz tracking through the Newton scheme (Lemma 2.2, Thm 4.1); one-dimensional template |
| Bou20b | A. Bounemoura, *Positive measure of KAM tori for finitely differentiable Hamiltonians*, J. Éc. polytech. Math. 7 (2020) 1113–1132 | [1812.03067v2](https://arxiv.org/abs/1812.03067v2) | [10.5802/jep.137](https://doi.org/10.5802/jep.137) | Graph-Lipschitz viewpoint for the measure step (Thm B) |
| Bou20 | A. Bounemoura, *Some remarks on the classical KAM theorem, following Pöschel*, arXiv preprint (2020) | [2006.04453v1](https://arxiv.org/abs/2006.04453v1) | — | Reported flaw in Pos01 (ledger E-Pos01-2) |
| Kou19 | C. E. Koudjinan, *Quantitative KAM normal forms and sharp measure estimates*, PhD thesis, Roma Tre (2019) | [1904.13062v1](https://arxiv.org/abs/1904.13062v1) | — | Corrected version of Pöschel's argument; sharp measure estimates |
| Vano02 | J. Vano, *A Whitney–Zehnder implicit function theorem*, PhD thesis, University of Texas at Austin (2002) | — | — | Abstract Whitney-regularity implicit function theorem (mp_arc 02-276) |
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
