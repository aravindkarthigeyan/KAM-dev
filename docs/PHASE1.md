# Phase 1: blueprint and dependency graph

The goal is a reviewed, source-level dependency graph anchored to the five frozen theorems, from which proof work is
assigned. The graph is extracted, by the `build-proof-dependency-graph` procedure, from a line-addressable blueprint.
The pinned sources are PDFs, and parts of the route are ours, so the blueprint comes first.

## Blueprint

Directory `blueprint/` (LaTeX; build with `latexmk -pdf blueprint.tex`). Every result has a label `bp:<part>:<slug>`.
Every substantive proof step is a `\proofstep{…}` with a label `step:<part>:<slug>`. Pinned sources are cited by key
and page (see `docs/sources.json`). Unproved bridges are marked `\sourcegap{…}`.

| Part | Content | Writer | Status |
|---|---|---|---|
| p0 | Conventions; the frozen definitions and theorems in mathematical form | orchestrator | written |
| p1 | Analysis on strips: Cauchy estimates, Fourier coefficients, cohomological equation, Neumann series | orchestrator (interface); writer later | interface fixed |
| p2 | G1: HL19 §4–5 and App. B for d = n, canonical structure, primary tori, uniform constants | Opus agent `bp-g1` | being written |
| p3 | G2: local uniqueness for flows (ours; GJLV05 §6, §8 adapted) | Opus agent `bp-g2` | being written |
| p4 | G3; the torus at each Diophantine frequency; stability of H2–H4; Lipschitz dependence; McShane extension and measure; HEAD; HEAD-Q | Opus agent `bp-meas` | being written |

Each part gets an independent refute-first review before graph extraction.

## Dependency graph

After the parts are reviewed:
1. Coverage inventory of `blueprint/parts/*.tex`.
2. Extraction by part-sized slices, with Sonnet workers at low effort and the orchestrator as the single writer.
3. Per-node review and one global adversarial review.
4. Lint with `proof_depgraph.py`, then publish `docs/depgraph/DEPGRAPH.md` and its dashboard.

## Infrastructure in parallel

Packages in [`campaign/PACKAGES.md`](campaign/PACKAGES.md). The `I-STRIP` packages implement the Part 1 interface and
may start now.
