# Parts 2/3 (G1, G2) packages: common part

Read `docs/campaign/briefs/PROVER-COMMON.md` first: its hard rules, repository rules and handoff all apply. This
file adds the rules specific to the Part 2/3 design.

- **The design is binding:** `docs/campaign/design/PART23-LEAN-DESIGN.md`. Two independent audits passed it
  (`docs/campaign/audits/DESIGN-P23-P2-audit-1.md`, `-P3-audit-1.md`).
  - Read §0–§2 (decisions, carriers, conventions, standing data, constants, solution operator), §4 (modules) and
    your package's row in §5.
  - Your package's declarations are the ones in **Appendix A** that belong to your modules. Copy each signature
    **verbatim** into the module the design names, then replace `sorry` with a proof.
  - **Never change a signature.** If one looks wrong or unprovable, stop on it and report with evidence. The
    orchestrator decides, after a statement audit.
  - Helper lemmas are fine (distinct names, same modules or `…/Internal` modules). The design's binding conventions
    apply to them too: max norms; the row-sum operator norm via `open scoped Matrix.Norms.Operator`; entrywise
    matrix integrability; `0 < r` explicit; coordinatewise periodicity; `IsUnit det`.
- **Part 1 inputs** are listed in the design §5. Everything listed for main and for `k/zmap` is now on main, so
  import it.
  - Inputs marked **I-STRIP-3** (Zohar's cohomological equation) or **I-P1C** (Taylor, increments) may not exist yet.
    Prove everything that does not need them, and report what is blocked.
  - Never state a missing Part 1 result as a hypothesis of your theorem (rule 6).
- **Elaboration.** These modules are heavy. Follow the design §7.1 levers: per-item helper lemmas, block lemmas,
  constant inequalities proved once, no large `simp` on `Fin n ⊕ Fin n` products. A default-heartbeat failure is a
  design signal: report it, never override.
