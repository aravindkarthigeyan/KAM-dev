# P5-0 prover handoff (branch inp-p50, 6564ca8; offloaded package run by the main orchestrator)

File: KAM/Iso/Confinement/Setting.lean (271 lines). Definitions and structures only (no theorems):
defs toC, realAct, realPart, totalH, rhoInf, fractD, P2, EnergyPatch.Q/O/Omega/K, graphSet, levelSet, sepRegion;
structures BaseData, HeadData, PerturbData, EnergyPatch, PatchConst, Smallness, TorusOutput, GraphData, SepSetting, ChartCover, ToriExistence.
Prover: declarations + docstrings copied from /root/code/KAM-inp-design-i58/.drafts/design/IPart58Signatures.lean (diffed identical); section-A theorems left to P5-1/P5-2/Part 3. KAM.lean not regenerated (sub-orchestrator does it), so lint's "KAM.lean out of date" is expected.
AUDIT FOCUS (design docs/tracks/I/design/PART58-LEAN-DESIGN.md + audits PART58-design-audit-{1,2}.md): (1) every definition/structure verbatim from the signature file and the intended blueprint-I Part 5 object on its whole carrier (no junk value relied on); (2) structures are typing/standing data only — no field is a hard proof step or a conclusion-shaped hypothesis (AGENTS.md rule 6); (3) imports: no frozen THEOREM, no provider; (4) hygiene (axioms, no sorry/set_option, module form).
