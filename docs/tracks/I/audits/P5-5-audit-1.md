# P5-5 independent audit 1

**Verdict: PASS WITH NOTES for P5-5 (`energy_coordinate`); ready to integrate as the designed helper.** No material statement, proof, definition, or axiom defect found. This package supplies no provider and seals no frozen anchor. In particular, **I-HEAD remains FROZEN_UNPROVED**, not seal-ready on this package alone.

## Scope, authority, and snapshot

Audit date: 2026-10-28 UTC. Focused, refute-first correspondence/proof audit (tier 2), conducted independently of the prover. Authority: the package audit brief, this worktree's AGENTS.md, PLAN and DECISIONS, and `docs/tracks/I/audits/P5-5-handoff.md`. The user's explicit absolute report path overrides the brief's main-worktree destination. Only this report is retained; temporary Lean probes live in `.lake/abi-scratch/` and are deleted. No source repair, git mutation, or delegation.

Snapshot `frozen-v1`:

- HEAD: `5387f669b391c3b98e741988817ed0a41667870f`.
- `inp`: `738b078efc07a743392b02cbb09909b8697fcabc`.
- `git diff inp...HEAD`: exactly one new file, `KAM/Iso/Confinement/EnergyCoordinate.lean`, 124 insertions.
- Initially untracked: the supplied `P5-5-handoff.md`; preserved.

| Input | SHA-256 |
|---|---|
| `KAM/Iso/Confinement/EnergyCoordinate.lean` | `820da05cdec0525ca649dc153fefb0ef77868b4068d28805d2dd452dc4350020` |
| `KAM/Iso/Confinement/Setting.lean` | `09a93dee2c1e3d94b9d5fd3a9a5d3665937ea8dcef140270c4038e3c67239be2` |
| `KAM/Iso/Confinement/RealHam.lean` | `04d9b07067ab80f0091d38f5b1403766c95c2d9a2fdf16adc65028b853bf9450` |
| `blueprint-I/parts/p5-confinement.tex` | `a98919a7c027932f4dd8e5435327cccb881110871a0980e900f3f6970c7fcda9` |
| `docs/tracks/I/design/PART58-LEAN-DESIGN.md` | `2d4b0559c5247f6c89712e987ca3f3d7d9fa1a43f0f1117d265d40150f930a98` |

The source-facing target is blueprint `bpI:p5:energy-coordinate`, p5:119–125: “If H_R(φ,I₁)=H_R(φ,I₂) then I₁=I₂,” with Iᵢ=Φ⁻¹(eᵢ,m), both pairs in Q. Design §8.1 row P5-5, §9 P5-5 (410–413), and Appendix A (1163–1170) specify its Lean interface. The referenced untracked signature file is absent here; the tracked appendix supplies the exact declaration. Its signature, from `theorem energy_coordinate` to the proof delimiter, matches the implementation **byte for byte**.

Context anchor: manifest `iso.all_time_confinement.v1`, export `KAM.Iso.all_time_confinement`, state `DRAFT_SORRY`, path `KAM/Frozen/Iso/Theorems/AllTimeConfinement.lean`; ABI `17ef8e0e953bbc3d0818b1ae5ddea79f637b1acfe7b9adf06e9fee74cad6907d`. Its sole manifest-bound `by sorry` remains unchanged. The used literal definition `kam.realHamiltonian.v1` is SEALED; its file hash matches the manifest (`d2e526b9c26f37128281d928c668b6ae14c389f5ef63007634c1985e1ac6e2a4`). The frozen/manifest guards and all 144 ABI hashes pass.

## Declaration ledger and proof review

All names below are in `KAM.Iso.Confinement`; private declarations are included for proof coverage.

| Node | Declaration / lines | Verdict | Evidence |
|---|---|---|---|
| ec-reduce, values | private `realHamiltonian_eq_add`, 42–44 | PASS | Literal real part of a sum; no domain or reality assumption needed for this identity. |
| ec-reduce, inverse chart | private `realPart_Ψ`, 47–49 | PASS | Applies `Ψ_right` only after `Q_subset`; projecting the first component gives h_R(Ψ(e,m))=e. |
| ec-lip, derivative | private `hasDerivAt_fReal_Ψ`, 53–83 | PASS | C¹ on open V yields an actual derivative at every Q point, including endpoints; composition with e↦(e,m); Ψ(e,m)∈W⊆B; real perturbation derivative from `realHam_fderiv_bound hb hf hD`; both operator norms bounded, with ‖(1,0)‖=1. |
| energy-coordinate / ec-lip | public `energy_coordinate`, 87–120 | PASS WITH NOTES | Exact appendix signature, correct carriers, fixed common φ and m, equality of actions as conclusion. MVT on the entire energy Icc; contraction coefficient F₁εLΦ<1/2; no ε division. See scope note N1. |
| I-HEAD context | frozen `KAM.Iso.all_time_confinement` | FROZEN_UNPROVED | No provider or seal in the diff. No closure promotion. |

Refutation pass: checked (i) boundary points of closed Q against open-V differentiability; (ii) the full fixed-m segment remains in Q; (iii) both orders e₁≤e₂ and e₂≤e₁, since MVT is on the fixed full Icc; (iv) no total-`fderiv` zero fallback, because `hf.holo` supplies differentiability in RealHam; (v) ε=0 and arbitrary angle lifts; (vi) hidden assumptions in every structure field below; (vii) equality of points rather than only equality of energy labels. No counterexample or material mismatch survived these checks. Kernel replay checks the actual proof terms, including private helpers.

The proof uses exactly the relevant fields: `pc.LΦ_bound`, `hsm.lt_Phi`, and `p.Q_subset`, `isOpen_V`, `Ψ_contDiffOn`, `Ψ_mem`, `W_subset_B`, `Ψ_right`. Other fields are carried by the agreed reusable interface and are not used to smuggle energy injectivity. In particular no torus, separation, or confinement conclusion is assumed.

## Expanded binder audit

Bins: SOURCE = explicit local lemma premise; STANDING = source standing data, named earlier result supplied to this helper, or the agreed chart/constant interface; TYPING = carrier/parameter data; RULED and EXCESS = none. Bundles are expanded once, without counting their outer names again. Earlier results carried as STANDING here are dependencies of this helper, not new source hypotheses of I-HEAD. Their global production is outside this package.

References: S = p3:34–46 (`setting`); C = p3:52–60 (`constants`); P = p3:158–186 (`chart`, `patch`), p3:232ff (`patch-rays`); D = p3:274–287 (`hypothesis-d`); K = p5:64–88 (`patch-const`, `eps0`); E = p5:119–125 (`energy-coordinate`). Exact bundle bodies are `Setting.lean`:71–77, 92–100, 104–134, 158–182 in frozen-v1.

| Expanded binder / field | Bin | Source / meaning |
|---|---|---|
| B | TYPING | S: real action set |
| s₀ | TYPING | S: strip radius |
| r₀ | TYPING | S: action radius |
| h | TYPING | S: integrable Hamiltonian |
| f | TYPING | S: perturbation |
| ε | TYPING | S: size |
| η₁ | TYPING | C: patch scale |
| r | TYPING | K: tube radius |
| Lm | TYPING | K: slope bound |
| LΦ | TYPING | K: inverse derivative bound |
| κ | TYPING | K: slope margin |
| F₁ | TYPING | C: derivative constant |
| C_K | TYPING | C/K: torus constant |
| φ | TYPING | E: common real angle |
| e₁ | TYPING | E: first energy label |
| e₂ | TYPING | E: second energy label |
| m | TYPING | E: common slope |
| hb.hs | STANDING | S: s₀>0 |
| hb.hr | STANDING | S: r₀>0 |
| hb.holo | STANDING | S: holomorphy of h |
| hb.real | STANDING | S: reality of h |
| hf.holo | STANDING | S: holomorphy of f, used in derivative transfer |
| hf.periodic | STANDING | S: period-one perturbation |
| hf.real | STANDING | S: reality of f |
| hf.nonneg | STANDING | S: ε≥0 |
| hf.bound | STANDING | S: perturbation bound |
| p.c | TYPING | P: chart center |
| p.W | TYPING | P: chart domain |
| p.m | TYPING | P: slope coordinate |
| p.Ψ | TYPING | P: chart inverse |
| p.δE | TYPING | P: energy half-width |
| p.δm | TYPING | P: slope half-width |
| p.ρc | TYPING | P: covering radius |
| p.mPlus | TYPING | P: upper ray slope |
| p.mMinus | TYPING | P: lower ray slope |
| p.δE_pos | STANDING | P: positive energy width |
| p.δm_pos | STANDING | P: positive slope width |
| p.ρc_pos | STANDING | P: positive radius |
| p.isOpen_W | STANDING | P: open chart domain |
| p.W_subset_B | STANDING | P/S: chart inside B |
| p.W_subset_ball | STANDING | P1: chart size |
| p.hR_contDiffOn | STANDING | P: C¹ first coordinate |
| p.m_contDiffOn | STANDING | P: C¹ slope |
| p.isOpen_V | STANDING | P: open chart image |
| p.Ψ_contDiffOn | STANDING | P: C¹ inverse on image |
| p.Ψ_mem | STANDING | P: inverse lands in W |
| p.Ψ_left | STANDING | P: left inverse |
| p.Ψ_right | STANDING | P: right inverse, gives energy reduction |
| p.Q_subset | STANDING | P2: whole closed Q inside V |
| p.ρc_le | STANDING | P3: radius scale |
| p.ball_subset | STANDING | P3: covering ball inside W |
| p.ball_h | STANDING | P3: energy window |
| p.ball_m | STANDING | P3: slope window |
| p.mPlus_mem | STANDING | P: upper ray window |
| p.mMinus_mem | STANDING | P: lower ray window |
| pc.r_pos | STANDING | K: positive tube |
| pc.r_le_one | STANDING | K: radius≤1 |
| pc.thick_subset | STANDING | K: tube inside W |
| pc.Lm_ge | STANDING | K: Lm≥1 |
| pc.Lm_bound | STANDING | K: slope derivative bound |
| pc.LΦ_ge | STANDING | K: LΦ≥1 |
| pc.LΦ_bound | STANDING | K: inverse derivative bound on Q |
| pc.κ_pos | STANDING | K: positive margin |
| pc.κ_le_quarter | STANDING | K: quarter window |
| pc.κ_le_plus | STANDING | K: upper margin |
| pc.κ_le_minus | STANDING | K: lower margin |
| hsm.nonneg | STANDING | S/K: ε≥0 |
| hsm.le_one | STANDING | K: ε≤1 |
| hsm.lt_dE | STANDING | K: energy smallness |
| hsm.lt_rho | STANDING | K: angle smallness |
| hsm.lt_r | STANDING | K: tube smallness |
| hsm.lt_kappa | STANDING | K: slope smallness |
| hsm.lt_Phi | STANDING | K: 2 F₁ LΦ ε<1 |
| hD | STANDING | D: derivative estimate, explicit helper dependency |
| h₁ | SOURCE | E: (e₁,m)∈Q |
| h₂ | SOURCE | E: (e₂,m)∈Q |
| heq | SOURCE | E: equal perturbed energies |

Counts: TYPING 26; STANDING 48; SOURCE 3; RULED 0; EXCESS 0; total 77 expanded entries. No instance binders or hidden typeclass assumptions are added. Constants are universally supplied patch/data constants, with no existential choice after φ, e₁, e₂ or m. The helper does not claim their uniform production.

## Definitions and semantic dependencies

New `def` / `abbrev` / `structure`: **none**. The local `set S` is exactly the closed energy Icc, not a new public definition. `choose! d` selects a derivative from the already proved existence at each point of S; only its proved derivative and norm properties on S are consumed. It defines no source-facing global object.

Reviewed unchanged dependency meanings: `toC` is coordinatewise inclusion; `realPart` is Re h∘ι; `realHamiltonian` is Re(h+f); `fractD` is T_(min(s₀,1)/2)×B_(r₀/2); `rhoInf` is min(s₀,1)/8; `EnergyPatch.Q` is precisely Icc×Icc. Patch inverse values are used only in Q⊆V; global values outside V are irrelevant to the entire declared theorem domain. No junk-value branch is used. Bundles contain the chart, regularity and quantitative premises above, not energy injectivity.

For this unchanged literal definition surface: BODY_MATCH OK; PUBLIC_CARRIER OK (total real-part formulas, and inverse restricted by Q); WELL_DEFINEDNESS N/A_LITERAL; CHARACTERIZATION N/A_LITERAL; CHOICE_INDEPENDENCE N/A for exported definitions. No new definition requires a separate characterization theorem.

## Notes, suspected defects, and limits

**N1 — scope note, not a material contract defect.** p5:120 says “ε≤min{1,1/(2F₁LΦ)}”; the Lean helper takes the full `Smallness` interface, in particular the strict `2*F₁*LΦ*ε<1`, plus other global smallness bounds irrelevant to this local proof. Thus this is not a standalone formalization covering every endpoint of that isolated displayed non-strict condition. Refutation of a proposed blocker: p5:88 explicitly states “In the sequel ε<ε₀ (so every listed bound holds ... strictly),” and the exact design appendix deliberately uses this same bundle. P5-5 changes neither the audited signature nor its consumers' standing domain. Its full intended Part 5 applicability passes. The mathematical argument also works with coefficient≤1/2, but that broader wrapper is not exported or certified here. No silent repair requested or made.

**N2 — hygiene note.** Generated `KAM.lean` is stale, the brief's explicitly permitted lint exception; it is not edited here.

No newly suspected pinned-source error, blueprint contradiction, or mathematical deviation was found. This is an original blueprint lemma, not a new direct assertion about an external paper. The earlier documented need for `hf.holo` is respected at the call site (53–68). Upstream chart/derivative production and the full I-HEAD proof are not re-audited or closed by this local package. Track statement prose still labels itself a draft; manifest D20 state is authoritative for the frozen anchor.

## Verification receipts

Commands run in `/root/code/KAM-inp-p55`. Audit-owned Lean invocations were serialized. The targeted build used the required compile gate; no clean, update, cache fetch, package edit, resource override, or source mutation was performed.

1. `LEAN_NUM_THREADS=1 /mnt/HC_Volume_106379410/orchestrator-tools/inp_lake_build.sh /root/code/KAM-inp-p55 KAM.Iso.Confinement.EnergyCoordinate`

   Gate runs `nice -n 5 lake build`. Exit 0. Output: `[inp-gate] slot 2 acquired 01:11:43 for KAM.Iso.Confinement.EnergyCoordinate`; `Build completed successfully (2945 jobs).` Only a replayed existing warning in `KAM/ODE/Exit.lean:36:0` about an unused section variable `[NormedSpace ℝ E]` in `gen_exit` was printed. No new-module warning or heartbeat failure.

2. Signature comparison by Python extraction: `APPENDIX_SIGNATURE_BYTE_MATCH: True`.

   Probe `.lake/abi-scratch/P55Audit.lean` imported only `KAM.Iso.Confinement.EnergyCoordinate`, copied the appendix declaration under `P55Audit.appendix_energy_coordinate`, and supplied exactly all explicit binders in order:

   ```lean
   by exact KAM.Iso.Confinement.energy_coordinate hb hf p pc hsm hD φ h₁ h₂ heq
   ```

   `LEAN_NUM_THREADS=1 nice -n 5 lake env lean .lake/abi-scratch/P55Audit.lean` exited 0 with:

   ```text
   'KAM.Iso.Confinement.energy_coordinate' depends on axioms: [propext, Classical.choice, Quot.sound]
   'P55Audit.appendix_energy_coordinate' depends on axioms: [propext, Classical.choice, Quot.sound]
   ```

   This verifies the exact helper type and explicit-argument assembly. Provider/frozen-type and frozen seal-body probes are **N/A: no provider in this package**. The draft frozen theorem is not used as a proof dependency.

3. `LEAN_NUM_THREADS=1 nice -n 5 lake env leanchecker --verbose KAM.Iso.Confinement.EnergyCoordinate`

   Exit 0; output `replaying KAM.Iso.Confinement.EnergyCoordinate`. This is the one new lemma module, including all private proof declarations.

4. `LEAN_NUM_THREADS=1 nice -n 5 sh scripts/lint_sources.sh`

   Exit 1 solely for the allowed generated-root exception. Complete output:

   ```text
   KAM.lean is out of date; run scripts/gen_root_imports.py
   check_lean_modules: PASS (309 Lean files, 0 comparator configurations)
   FROZEN-ANCHOR GUARD OK
   ABI HASHES OK (144 frozen declarations)
   ```

5. `git diff inp...HEAD -- KAM/Frozen manifest KAM.lean README.md`: empty output, exit 0. `git diff --check inp...HEAD`: empty output, exit 0. Module has 124 total lines, copyright, `module`, `public import`, module docstring and `@[expose] public noncomputable section`. Token census for sorry/admit/axiom/unsafe/opaque/EuclideanSpace and resource overrides: empty. One public theorem; no new definitions. Only import: `KAM.Iso.Confinement.RealHam`; no provider or frozen theorem import in the new module. Standard-only axiom closure independently rules out a transitive sorry dependency.

Audit execution deviation: the first lint invocation was `sh scripts/lint_sources.sh`, without explicitly exporting `LEAN_NUM_THREADS=1` or `nice` for its internal ABI Lean invocation. It completed; the lint was repeated above under both required settings, with no other audit-owned Lean job running. This does not alter the code verdict; the initial command did not meet the requested invocation discipline.

## Closeout

All four new proof declarations reviewed; all new public theorem axioms checked; exact design-type assembly compiled; kernel replay passed; lint disposition recorded; protected paths unchanged. No accepted repair or open material finding. The retained deliverable is this report alone. No root theorem closure is claimed.
