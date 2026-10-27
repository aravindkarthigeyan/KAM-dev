# N3-4 / N3-5 independent package audit 1

Overall: **PASS WITH NOTES**. N3-4 Existence: **PASS**. N3-5 Uniqueness, exit and barriers: **PASS WITH NOTES** (one harmless unused-section-variable warning). There is no provider or frozen anchor in this package; provider identity, seal-body and per-anchor readiness are not applicable. No mathematical, signature or axiom defect was found.

Auditor: independent Codex reviewer. Worktree `/root/code/KAM-inp-n3w2a`, branch `inp-n3w2a`, HEAD `d708d5619427d38f5475bdd7e93e29df541c7c1c`; package commits `70cac7c2a025a4f54270820886d407e72e1287bb` and `d708d56`. Actual pre-package base: `9b45d20e309a23d8818532272ab2cffa7facf724` (the parent of 70cac7c).

`git diff inp...HEAD` is empty because inp already contains this branch. Therefore the substantive review also used `git diff 9b45d20..HEAD`: exactly the three requested files, 447 added lines (200 / 89 / 158). Both `git diff inp...HEAD -- KAM/Frozen manifest KAM.lean README.md` and the same command against `9b45d20..HEAD` are empty. Worktree status was clean before and after the audit.

Binding authority: `docs/tracks/N/design/PART3-LEAN-DESIGN.md`, Appendix A D/E/H, plus its sections 3–5 (D1/D2/D4/D10/D11 and B1/B2). Read the audit brief in full, AGENTS.md, PLAN.md, DECISIONS.md, track-N statement, the raw Part 3 statements/proofs, all three implementation files, and their project-owned Basic/Lipschitz dependencies. Those dependencies import no frozen theorem/definition or provider, so there is no frozen semantic dependency to substitute for this generic ODE audit.

## Declaration fidelity

All 11 public theorem headers are whitespace-normalized copies of the corresponding Appendix A headers. Independently reconstructed theorem copies from Appendix A elaborate using the implementation exports; `Lean.Meta.isDefEq` on each complete elaborated type then passed, including universe count, implicitness, instance binders, binder order and proposition. The two definitions also have identical headers and literal defining equations checked by `rfl` / `Iff.rfl` over their full carriers.

| Blueprint node | Lean declaration and locator | Verdict | Reason |
|---|---|---|---|
| bpN:p3:ext-pl, Part 3 L31–40 | `KAM.ODE.picard_lindelof_ball` — `KAM/ODE/Existence.lean:37` | PASS | Exact Appendix A D; B1 makes the ball bound and initial time explicit; no LT-smallness premise. |
| bpN:p3:gen-short (forward helper), Part 3 L173–183 | `KAM.ODE.gen_short_forward` — `KAM/ODE/Existence.lean:59` | PASS | Exact D; arbitrary total F, raw two-sided derivatives, no regularity or pre-assumed confinement. |
| bpN:p3:gen-short, Part 3 L173–183 | `KAM.ODE.gen_short` — `KAM/ODE/Existence.lean:120` | PASS | Exact D; bound plus closed-ball membership, in both time directions; reversal uses Basic with W=univ and no C1 premise. |
| bpN:p3:gen-uniform-exist, Part 3 L185–197 | `KAM.ODE.gen_uniform_exist` — `KAM/ODE/Existence.lean:149` | PASS | Exact D; strict confinement and actual solution on the explicit open time window; D4 drops unused C1/open assumptions. |
| bpN:p3:gen-local, Part 3 L199–207 | `KAM.ODE.gen_local` — `KAM/ODE/Existence.lean:179` | PASS | Exact D; compact-set epsilon precedes every x0 and t0; both local clauses retained. |
| bpN:p3:gen-uniqueness, Part 3 L211–224 | `KAM.ODE.gen_uniqueness` — `KAM/ODE/Uniqueness.lean:50` | PASS | Exact E; arbitrary order-connected intervals and agreement at any t0; no confinement, global Lipschitz, boundedness or completeness premise. |
| bpN:p3:gen-uniqueness (intersection), Part 3 L211–224 | `KAM.ODE.gen_uniqueness_inter` — `KAM/ODE/Uniqueness.lean:80` | PASS | Exact E; equality on the whole intersection, with t0 in both intervals. |
| bpN:p3:gen-exit (definition), Part 3 L328–340 | `KAM.ODE.exitSet` — `KAM/ODE/Exit.lean:32` | PASS | Exact Appendix A H header and literal body on every J,z,V. |
| bpN:p3:gen-exit, Part 3 L328–352 | `KAM.ODE.gen_exit` — `KAM/ODE/Exit.lean:36` | PASS | Exact H; actual least positive exit time in J, frontier membership, safe prefix and exact supremum formula. D10 uses continuity alone. |
| bpN:p3:gen-invariant, Part 3 L354–358 | `KAM.ODE.IsInvariantSet` — `KAM/ODE/Exit.lean:107` | PASS | Exact H header/body; quantifies all intervals and genuine solutions, propagating membership from any visited time in either direction. |
| bpN:p3:gen-invariant (equilibria), Part 3 L354–358 | `KAM.ODE.isInvariantSet_equilibria` — `KAM/ODE/Exit.lean:112` | PASS | Exact H; uses proved uniqueness against the constant solution at the visited equilibrium. |
| bpN:p3:gen-invariant (binary union), Part 3 L354–358 | `KAM.ODE.isInvariantSet_union` — `KAM/ODE/Exit.lean:123` | PASS | Exact H; binary union of invariant sets. The raw parenthetical arbitrary-union/first-integral observations are not additional Appendix A exports. |
| bpN:p3:gen-barrier, Part 3 L360–369 | `KAM.ODE.gen_barrier` — `KAM/ODE/Exit.lean:140` | PASS | Exact H; whole-J confinement in both directions, with invariant S and initial nonmembership. D4/D11 require neither C1 nor a separate -F invariance premise. |
| gen-uniqueness proof, L226–232 | private `lipschitz_on_images` — Uniqueness.lean:33 | PASS | Constructs K and L from the compact images and gen_lip; no Lipschitz bound is assumed. |
| gen-barrier proof, L365–369 | private `barrier_forward` — Exit.lean:132 | PASS | Explicitly conditional internal helper. Its no-frontier-crossing hypothesis is proved as hno by gen_barrier from hG/hbd/hS/hz0S, then supplied for both time directions. It does not stand in for a source theorem. |

The abstract ambient spaces generalize the finite-dimensional blueprint convention. Completeness is required only by Picard–Lindelof/uniform existence; ProperSpace supplies the compact uniform-data construction for local existence. Uniqueness needs neither. Two-sided derivatives at interval endpoints are preserved; only the Picard–Lindelof auxiliary conclusion uses HasDerivWithinAt on its closed construction interval, followed by an explicit neighbourhood conversion on the interior.

## Binder audit

Bins below are SOURCE, STANDING, TYPING, RULED, EXCESS. Each explicit/implicit/instance prefix binder has its own row, including each name in a grouped binder. E and its mathematical structures are typing data; arbitrary objects explicitly quantified in the source are SOURCE. RULED is the user-designated binding B1 correction, not an inferred new owner ruling. STANDING and EXCESS counts are zero. No bundled premise conceals a produced proof obligation. The conclusion foralls retain the same binder order by the elaborated identity check; witness scope is checked in the declaration table.

| Declaration | Binder | Bin | Source/design attachment |
|---|---|---|---|
| picard_lindelof_ball | `E : Type u` | TYPING | Part 3 L14–23; design sections 0–3; only instances retained in the actual type are counted. |
| picard_lindelof_ball | `[NormedAddCommGroup E]` | TYPING | Part 3 L14–23; design sections 0–3; only instances retained in the actual type are counted. |
| picard_lindelof_ball | `[NormedSpace ℝ E]` | TYPING | Part 3 L14–23; design sections 0–3; only instances retained in the actual type are counted. |
| picard_lindelof_ball | `CompleteSpace E` | TYPING | Part 3 L31–40; Appendix A D |
| picard_lindelof_ball | `F : E → E` | SOURCE | Part 3 L31–40; Appendix A D |
| picard_lindelof_ball | `x : E` | SOURCE | Part 3 L31–40; Appendix A D |
| picard_lindelof_ball | `a : ℝ` | SOURCE | Part 3 L31–40; Appendix A D |
| picard_lindelof_ball | `M : ℝ` | SOURCE | Part 3 L31–40; Appendix A D |
| picard_lindelof_ball | `T : ℝ` | SOURCE | Part 3 L31–40; Appendix A D |
| picard_lindelof_ball | `t₀ : ℝ` | RULED | Part 3 L31–40; Appendix A D / B1 |
| picard_lindelof_ball | `L : ℝ≥0` | SOURCE | Part 3 L31–40; Appendix A D |
| picard_lindelof_ball | `ha : 0 ≤ a` | SOURCE | Part 3 L31–40; Appendix A D |
| picard_lindelof_ball | `hM : 0 ≤ M` | SOURCE | Part 3 L31–40; Appendix A D |
| picard_lindelof_ball | `hT : 0 ≤ T` | SOURCE | Part 3 L31–40; Appendix A D |
| picard_lindelof_ball | `hF : ∀ y ∈ closedBall x a, ‖F y‖ ≤ M` | RULED | Part 3 L31–40; Appendix A D / B1 |
| picard_lindelof_ball | `hL : LipschitzOnWith L F (closedBall x a)` | SOURCE | Part 3 L31–40; Appendix A D |
| picard_lindelof_ball | `hMT : M * T ≤ a` | SOURCE | Part 3 L31–40; Appendix A D |
| gen_short_forward | `E : Type u` | TYPING | Part 3 L14–23; design sections 0–3; only instances retained in the actual type are counted. |
| gen_short_forward | `[NormedAddCommGroup E]` | TYPING | Part 3 L14–23; design sections 0–3; only instances retained in the actual type are counted. |
| gen_short_forward | `[NormedSpace ℝ E]` | TYPING | Part 3 L14–23; design sections 0–3; only instances retained in the actual type are counted. |
| gen_short_forward | `F : E → E` | SOURCE | Part 3 L173–183; Appendix A D |
| gen_short_forward | `J : Set ℝ` | SOURCE | Part 3 L173–183; Appendix A D |
| gen_short_forward | `hJ : J.OrdConnected` | SOURCE | Part 3 L173–183; Appendix A D |
| gen_short_forward | `t₀ : ℝ` | SOURCE | Part 3 L173–183; Appendix A D |
| gen_short_forward | `ht₀ : t₀ ∈ J` | SOURCE | Part 3 L173–183; Appendix A D |
| gen_short_forward | `α : ℝ → E` | SOURCE | Part 3 L173–183; Appendix A D |
| gen_short_forward | `x : E` | SOURCE | Part 3 L173–183; Appendix A D |
| gen_short_forward | `δ : ℝ` | SOURCE | Part 3 L173–183; Appendix A D |
| gen_short_forward | `M : ℝ` | SOURCE | Part 3 L173–183; Appendix A D |
| gen_short_forward | `hα₀ : α t₀ = x` | SOURCE | Part 3 L173–183; Appendix A D |
| gen_short_forward | `hα : ∀ t ∈ J, HasDerivAt α (F (α t)) t` | SOURCE | Part 3 L173–183; Appendix A D |
| gen_short_forward | `hM : 0 < M` | SOURCE | Part 3 L173–183; Appendix A D |
| gen_short_forward | `hF : ∀ y ∈ closedBall x δ, ‖F y‖ ≤ M` | SOURCE | Part 3 L173–183; Appendix A D |
| gen_short | `E : Type u` | TYPING | Part 3 L14–23; design sections 0–3; only instances retained in the actual type are counted. |
| gen_short | `[NormedAddCommGroup E]` | TYPING | Part 3 L14–23; design sections 0–3; only instances retained in the actual type are counted. |
| gen_short | `[NormedSpace ℝ E]` | TYPING | Part 3 L14–23; design sections 0–3; only instances retained in the actual type are counted. |
| gen_short | `F : E → E` | SOURCE | Part 3 L173–183; Appendix A D |
| gen_short | `J : Set ℝ` | SOURCE | Part 3 L173–183; Appendix A D |
| gen_short | `hJ : J.OrdConnected` | SOURCE | Part 3 L173–183; Appendix A D |
| gen_short | `t₀ : ℝ` | SOURCE | Part 3 L173–183; Appendix A D |
| gen_short | `ht₀ : t₀ ∈ J` | SOURCE | Part 3 L173–183; Appendix A D |
| gen_short | `α : ℝ → E` | SOURCE | Part 3 L173–183; Appendix A D |
| gen_short | `x : E` | SOURCE | Part 3 L173–183; Appendix A D |
| gen_short | `δ : ℝ` | SOURCE | Part 3 L173–183; Appendix A D |
| gen_short | `M : ℝ` | SOURCE | Part 3 L173–183; Appendix A D |
| gen_short | `hα₀ : α t₀ = x` | SOURCE | Part 3 L173–183; Appendix A D |
| gen_short | `hα : ∀ t ∈ J, HasDerivAt α (F (α t)) t` | SOURCE | Part 3 L173–183; Appendix A D |
| gen_short | `hM : 0 < M` | SOURCE | Part 3 L173–183; Appendix A D |
| gen_short | `hF : ∀ y ∈ closedBall x δ, ‖F y‖ ≤ M` | SOURCE | Part 3 L173–183; Appendix A D |
| gen_uniform_exist | `E : Type u` | TYPING | Part 3 L14–23; design sections 0–3; only instances retained in the actual type are counted. |
| gen_uniform_exist | `[NormedAddCommGroup E]` | TYPING | Part 3 L14–23; design sections 0–3; only instances retained in the actual type are counted. |
| gen_uniform_exist | `[NormedSpace ℝ E]` | TYPING | Part 3 L14–23; design sections 0–3; only instances retained in the actual type are counted. |
| gen_uniform_exist | `CompleteSpace E` | TYPING | Part 3 L185–197; Appendix A D |
| gen_uniform_exist | `F : E → E` | SOURCE | Part 3 L185–197; Appendix A D |
| gen_uniform_exist | `W : Set E` | SOURCE | Part 3 L185–197; Appendix A D |
| gen_uniform_exist | `Φ : Set E` | SOURCE | Part 3 L185–197; Appendix A D |
| gen_uniform_exist | `δ : ℝ` | SOURCE | Part 3 L185–197; Appendix A D |
| gen_uniform_exist | `M : ℝ` | SOURCE | Part 3 L185–197; Appendix A D |
| gen_uniform_exist | `L : ℝ≥0` | SOURCE | Part 3 L185–197; Appendix A D |
| gen_uniform_exist | `hΦ : UniformData F W Φ δ M L` | SOURCE | Part 3 L185–197; Appendix A D |
| gen_local | `E : Type u` | TYPING | Part 3 L14–23; design sections 0–3; only instances retained in the actual type are counted. |
| gen_local | `[NormedAddCommGroup E]` | TYPING | Part 3 L14–23; design sections 0–3; only instances retained in the actual type are counted. |
| gen_local | `[NormedSpace ℝ E]` | TYPING | Part 3 L14–23; design sections 0–3; only instances retained in the actual type are counted. |
| gen_local | `ProperSpace E` | TYPING | Part 3 L199–207; Appendix A D |
| gen_local | `F : E → E` | SOURCE | Part 3 L199–207; Appendix A D |
| gen_local | `W : Set E` | SOURCE | Part 3 L199–207; Appendix A D |
| gen_local | `hW : IsOpen W` | SOURCE | Part 3 L199–207; Appendix A D |
| gen_local | `hF : ContDiffOn ℝ 1 F W` | SOURCE | Part 3 L199–207; Appendix A D |
| gen_uniqueness | `E : Type u` | TYPING | Part 3 L14–23; design sections 0–3; only instances retained in the actual type are counted. |
| gen_uniqueness | `[NormedAddCommGroup E]` | TYPING | Part 3 L14–23; design sections 0–3; only instances retained in the actual type are counted. |
| gen_uniqueness | `[NormedSpace ℝ E]` | TYPING | Part 3 L14–23; design sections 0–3; only instances retained in the actual type are counted. |
| gen_uniqueness | `F : E → E` | SOURCE | Part 3 L211–224; Appendix A E |
| gen_uniqueness | `W : Set E` | SOURCE | Part 3 L211–224; Appendix A E |
| gen_uniqueness | `hW : IsOpen W` | SOURCE | Part 3 L211–224; Appendix A E |
| gen_uniqueness | `hF : ContDiffOn ℝ 1 F W` | SOURCE | Part 3 L211–224; Appendix A E |
| gen_uniqueness | `J : Set ℝ` | SOURCE | Part 3 L211–224; Appendix A E |
| gen_uniqueness | `hJ : J.OrdConnected` | SOURCE | Part 3 L211–224; Appendix A E |
| gen_uniqueness | `t₀ : ℝ` | SOURCE | Part 3 L211–224; Appendix A E |
| gen_uniqueness | `ht₀ : t₀ ∈ J` | SOURCE | Part 3 L211–224; Appendix A E |
| gen_uniqueness | `y₁ : ℝ → E` | SOURCE | Part 3 L211–224; Appendix A E |
| gen_uniqueness | `y₂ : ℝ → E` | SOURCE | Part 3 L211–224; Appendix A E |
| gen_uniqueness | `h₁ : IsSolutionIn F W J y₁` | SOURCE | Part 3 L211–224; Appendix A E |
| gen_uniqueness | `h₂ : IsSolutionIn F W J y₂` | SOURCE | Part 3 L211–224; Appendix A E |
| gen_uniqueness | `h : y₁ t₀ = y₂ t₀` | SOURCE | Part 3 L211–224; Appendix A E |
| gen_uniqueness_inter | `E : Type u` | TYPING | Part 3 L14–23; design sections 0–3; only instances retained in the actual type are counted. |
| gen_uniqueness_inter | `[NormedAddCommGroup E]` | TYPING | Part 3 L14–23; design sections 0–3; only instances retained in the actual type are counted. |
| gen_uniqueness_inter | `[NormedSpace ℝ E]` | TYPING | Part 3 L14–23; design sections 0–3; only instances retained in the actual type are counted. |
| gen_uniqueness_inter | `F : E → E` | SOURCE | Part 3 L211–224; Appendix A E |
| gen_uniqueness_inter | `W : Set E` | SOURCE | Part 3 L211–224; Appendix A E |
| gen_uniqueness_inter | `hW : IsOpen W` | SOURCE | Part 3 L211–224; Appendix A E |
| gen_uniqueness_inter | `hF : ContDiffOn ℝ 1 F W` | SOURCE | Part 3 L211–224; Appendix A E |
| gen_uniqueness_inter | `J₁ : Set ℝ` | SOURCE | Part 3 L211–224; Appendix A E |
| gen_uniqueness_inter | `J₂ : Set ℝ` | SOURCE | Part 3 L211–224; Appendix A E |
| gen_uniqueness_inter | `hJ₁ : J₁.OrdConnected` | SOURCE | Part 3 L211–224; Appendix A E |
| gen_uniqueness_inter | `hJ₂ : J₂.OrdConnected` | SOURCE | Part 3 L211–224; Appendix A E |
| gen_uniqueness_inter | `t₀ : ℝ` | SOURCE | Part 3 L211–224; Appendix A E |
| gen_uniqueness_inter | `ht₀ : t₀ ∈ J₁ ∩ J₂` | SOURCE | Part 3 L211–224; Appendix A E |
| gen_uniqueness_inter | `y₁ : ℝ → E` | SOURCE | Part 3 L211–224; Appendix A E |
| gen_uniqueness_inter | `y₂ : ℝ → E` | SOURCE | Part 3 L211–224; Appendix A E |
| gen_uniqueness_inter | `h₁ : IsSolutionIn F W J₁ y₁` | SOURCE | Part 3 L211–224; Appendix A E |
| gen_uniqueness_inter | `h₂ : IsSolutionIn F W J₂ y₂` | SOURCE | Part 3 L211–224; Appendix A E |
| gen_uniqueness_inter | `h : y₁ t₀ = y₂ t₀` | SOURCE | Part 3 L211–224; Appendix A E |
| exitSet | `E : Type u` | TYPING | Part 3 L14–23; design sections 0–3; only instances retained in the actual type are counted. |
| exitSet | `J : Set ℝ` | SOURCE | Part 3 L328–340; Appendix A H |
| exitSet | `z : ℝ → E` | SOURCE | Part 3 L328–340; Appendix A H |
| exitSet | `V : Set E` | SOURCE | Part 3 L328–340; Appendix A H |
| gen_exit | `E : Type u` | TYPING | Part 3 L14–23; design sections 0–3; only instances retained in the actual type are counted. |
| gen_exit | `[NormedAddCommGroup E]` | TYPING | Part 3 L14–23; design sections 0–3; only instances retained in the actual type are counted. |
| gen_exit | `J : Set ℝ` | SOURCE | Part 3 L328–352; Appendix A H |
| gen_exit | `hJ : J.OrdConnected` | SOURCE | Part 3 L328–352; Appendix A H |
| gen_exit | `h0 : (0 : ℝ) ∈ J` | SOURCE | Part 3 L328–352; Appendix A H |
| gen_exit | `z : ℝ → E` | SOURCE | Part 3 L328–352; Appendix A H |
| gen_exit | `hz : ContinuousOn z J` | SOURCE | Part 3 L328–352; Appendix A H |
| gen_exit | `V : Set E` | SOURCE | Part 3 L328–352; Appendix A H |
| gen_exit | `hV : IsOpen V` | SOURCE | Part 3 L328–352; Appendix A H |
| gen_exit | `hz0 : z 0 ∈ V` | SOURCE | Part 3 L328–352; Appendix A H |
| IsInvariantSet | `E : Type u` | TYPING | Part 3 L14–23; design sections 0–3; only instances retained in the actual type are counted. |
| IsInvariantSet | `[NormedAddCommGroup E]` | TYPING | Part 3 L14–23; design sections 0–3; only instances retained in the actual type are counted. |
| IsInvariantSet | `[NormedSpace ℝ E]` | TYPING | Part 3 L14–23; design sections 0–3; only instances retained in the actual type are counted. |
| IsInvariantSet | `F : E → E` | SOURCE | Part 3 L354–358; Appendix A H |
| IsInvariantSet | `W : Set E` | SOURCE | Part 3 L354–358; Appendix A H |
| IsInvariantSet | `S : Set E` | SOURCE | Part 3 L354–358; Appendix A H |
| isInvariantSet_equilibria | `E : Type u` | TYPING | Part 3 L14–23; design sections 0–3; only instances retained in the actual type are counted. |
| isInvariantSet_equilibria | `[NormedAddCommGroup E]` | TYPING | Part 3 L14–23; design sections 0–3; only instances retained in the actual type are counted. |
| isInvariantSet_equilibria | `[NormedSpace ℝ E]` | TYPING | Part 3 L14–23; design sections 0–3; only instances retained in the actual type are counted. |
| isInvariantSet_equilibria | `F : E → E` | SOURCE | Part 3 L354–358; Appendix A H |
| isInvariantSet_equilibria | `W : Set E` | SOURCE | Part 3 L354–358; Appendix A H |
| isInvariantSet_equilibria | `hW : IsOpen W` | SOURCE | Part 3 L354–358; Appendix A H |
| isInvariantSet_equilibria | `hF : ContDiffOn ℝ 1 F W` | SOURCE | Part 3 L354–358; Appendix A H |
| isInvariantSet_union | `E : Type u` | TYPING | Part 3 L14–23; design sections 0–3; only instances retained in the actual type are counted. |
| isInvariantSet_union | `[NormedAddCommGroup E]` | TYPING | Part 3 L14–23; design sections 0–3; only instances retained in the actual type are counted. |
| isInvariantSet_union | `[NormedSpace ℝ E]` | TYPING | Part 3 L14–23; design sections 0–3; only instances retained in the actual type are counted. |
| isInvariantSet_union | `F : E → E` | SOURCE | Part 3 L354–358; Appendix A H |
| isInvariantSet_union | `W : Set E` | SOURCE | Part 3 L354–358; Appendix A H |
| isInvariantSet_union | `S : Set E` | SOURCE | Part 3 L354–358; Appendix A H |
| isInvariantSet_union | `S' : Set E` | SOURCE | Part 3 L354–358; Appendix A H |
| isInvariantSet_union | `hS : IsInvariantSet F W S` | SOURCE | Part 3 L354–358; Appendix A H |
| isInvariantSet_union | `hS' : IsInvariantSet F W S'` | SOURCE | Part 3 L354–358; Appendix A H |
| gen_barrier | `E : Type u` | TYPING | Part 3 L14–23; design sections 0–3; only instances retained in the actual type are counted. |
| gen_barrier | `[NormedAddCommGroup E]` | TYPING | Part 3 L14–23; design sections 0–3; only instances retained in the actual type are counted. |
| gen_barrier | `[NormedSpace ℝ E]` | TYPING | Part 3 L14–23; design sections 0–3; only instances retained in the actual type are counted. |
| gen_barrier | `F : E → E` | SOURCE | Part 3 L360–369; Appendix A H |
| gen_barrier | `W : Set E` | SOURCE | Part 3 L360–369; Appendix A H |
| gen_barrier | `J : Set ℝ` | SOURCE | Part 3 L360–369; Appendix A H |
| gen_barrier | `hJ : J.OrdConnected` | SOURCE | Part 3 L360–369; Appendix A H |
| gen_barrier | `h0 : (0 : ℝ) ∈ J` | SOURCE | Part 3 L360–369; Appendix A H |
| gen_barrier | `z : ℝ → E` | SOURCE | Part 3 L360–369; Appendix A H |
| gen_barrier | `hz : IsSolutionIn F W J z` | SOURCE | Part 3 L360–369; Appendix A H |
| gen_barrier | `V : Set E` | SOURCE | Part 3 L360–369; Appendix A H |
| gen_barrier | `hV : IsOpen V` | SOURCE | Part 3 L360–369; Appendix A H |
| gen_barrier | `hz0 : z 0 ∈ V` | SOURCE | Part 3 L360–369; Appendix A H |
| gen_barrier | `G : Set E` | SOURCE | Part 3 L360–369; Appendix A H |
| gen_barrier | `S : Set E` | SOURCE | Part 3 L360–369; Appendix A H |
| gen_barrier | `hG : z '' J ⊆ G` | SOURCE | Part 3 L360–369; Appendix A H |
| gen_barrier | `hS : IsInvariantSet F W S` | SOURCE | Part 3 L360–369; Appendix A H |
| gen_barrier | `hbd : frontier V ∩ G ⊆ S` | SOURCE | Part 3 L360–369; Appendix A H |
| gen_barrier | `hz0S : z 0 ∉ S` | SOURCE | Part 3 L360–369; Appendix A H |

Expanded project predicates (these are the complete logical clauses, with their quantifiers; no omitted fields):

| Premise | Expansion | Bin | Attachment |
|---|---|---|---|
| gen_uniform_exist.hΦ.delta_pos | `0 < δ` | SOURCE | Part 3 L136–141 |
| gen_uniform_exist.hΦ.M_nonneg | `0 ≤ M` | SOURCE | Part 3 L136–141 |
| gen_uniform_exist.hΦ.closedBall_subset | `∀ x ∈ Φ, closedBall x δ ⊆ W` | SOURCE | Part 3 L136–141 |
| gen_uniform_exist.hΦ.norm_le | `∀ x ∈ Φ, ∀ y ∈ closedBall x δ, ‖F y‖ ≤ M` | SOURCE | Part 3 L136–141 |
| gen_uniform_exist.hΦ.lipschitz | `∀ x ∈ Φ, LipschitzOnWith L F (closedBall x δ)` | SOURCE | Part 3 L136–141 |
| gen_uniqueness.h₁.domain | `∀ t ∈ J, y₁ t ∈ W` | SOURCE | Part 3 L87–91, L211–224 |
| gen_uniqueness.h₁.derivative | `∀ t ∈ J, HasDerivAt y₁ (F (y₁ t)) t` | SOURCE | Part 3 L87–91, L211–224 |
| gen_uniqueness.h₂.domain | `∀ t ∈ J, y₂ t ∈ W` | SOURCE | Part 3 L87–91, L211–224 |
| gen_uniqueness.h₂.derivative | `∀ t ∈ J, HasDerivAt y₂ (F (y₂ t)) t` | SOURCE | Part 3 L87–91, L211–224 |
| gen_uniqueness_inter.h₁.domain | `∀ t ∈ J₁, y₁ t ∈ W` | SOURCE | Part 3 L87–91, L211–224 |
| gen_uniqueness_inter.h₁.derivative | `∀ t ∈ J₁, HasDerivAt y₁ (F (y₁ t)) t` | SOURCE | Part 3 L87–91, L211–224 |
| gen_uniqueness_inter.h₂.domain | `∀ t ∈ J₂, y₂ t ∈ W` | SOURCE | Part 3 L87–91, L211–224 |
| gen_uniqueness_inter.h₂.derivative | `∀ t ∈ J₂, HasDerivAt y₂ (F (y₂ t)) t` | SOURCE | Part 3 L87–91, L211–224 |
| gen_barrier.hz.domain | `∀ t ∈ J, z t ∈ W` | SOURCE | Part 3 L87–91, L360–369 |
| gen_barrier.hz.derivative | `∀ t ∈ J, HasDerivAt z (F (z t)) t` | SOURCE | Part 3 L87–91, L360–369 |
| gen_barrier.hS | `∀ (J′ : Set ℝ) (y : ℝ → E), J′.OrdConnected → (∀ u ∈ J′, y u ∈ W ∧ HasDerivAt y (F (y u)) u) → ∀ t₁ ∈ J′, y t₁ ∈ S → ∀ t ∈ J′, y t ∈ S` | SOURCE | Part 3 L354–358, L360–369 |
| isInvariantSet_union.hS | `∀ (J′ : Set ℝ) (y : ℝ → E), J′.OrdConnected → (∀ u ∈ J′, y u ∈ W ∧ HasDerivAt y (F (y u)) u) → ∀ t₁ ∈ J′, y t₁ ∈ S → ∀ t ∈ J′, y t ∈ S` | SOURCE | Part 3 L354–358, L360–369 |
| isInvariantSet_union.hS' | `∀ (J′ : Set ℝ) (y : ℝ → E), J′.OrdConnected → (∀ u ∈ J′, y u ∈ W ∧ HasDerivAt y (F (y u)) u) → ∀ t₁ ∈ J′, y t₁ ∈ S′ → ∀ t ∈ J′, y t ∈ S′` | SOURCE | Part 3 L354–358, L360–369 |

Prefix-binder inventory counts: SOURCE=116, STANDING=0, TYPING=39, RULED=2, EXCESS=0. The 18 expansion rows are a separate leaf-clause inventory (all SOURCE), not double-counted in the prefix counts. Nonnegativity of L is encoded by ℝ≥0, exactly as in the design/source convention.

## Definition classification

`exitSet` (Exit.lean:32): literal set formula `{t | t ∈ J ∧ 0 ≤ t ∧ z t ∉ V}`. It is meaningful for arbitrary J,z,V, without assuming interval membership or existence of an exit time. No infimum/default time is exported; gen_exit constructs a least exit only in the nonempty branch.

```text
BODY_MATCH: OK
PUBLIC_CARRIER: OK
WELL_DEFINEDNESS: N/A_LITERAL
CHARACTERIZATION: N/A_LITERAL
CHOICE_INDEPENDENCE: N/A
DEFINITION_VERDICT: PASS
```

`IsInvariantSet` (Exit.lean:107): literal source predicate, quantified over every order-connected interval and every genuine solution in W. It imposes no artificial S-subset-W restriction and claims nothing about values of a curve outside its interval.

```text
BODY_MATCH: OK
PUBLIC_CARRIER: OK
WELL_DEFINEDNESS: N/A_LITERAL
CHARACTERIZATION: N/A_LITERAL
CHOICE_INDEPENDENCE: N/A
DEFINITION_VERDICT: PASS
```

There are no other new def/abbrev/structure declarations. Inspected dependencies IsSolutionIn and UniformData literally expand as recorded above; their bodies contain no fallback branches, hidden confinement premise or theorem-shaped result field.

## Proof/consumption checks

- picard_lindelof_ball supplies every IsPicardLindelof field from the ball bound and local Lipschitz hypothesis, with r=0, nonnegative NNReal conversions and MT≤a. Neither global boundedness nor small LT is assumed.
- gen_short_forward proves its confinement bootstrap using continuity and a derivative bound only after it has established that the short segment lies in the ball. Reversal in gen_short uses the already-proved Basic symmetry on W=univ; no regularity premise is smuggled in. If δ≤0, the queried time-window premise is impossible, as in design B2.
- gen_uniform_exist obtains the raw closed-interval Picard–Lindelof curve, converts derivatives on the open interior, and proves the strict bound before using UniformData.closedBall_subset to enter W. gen_local constructs uniform data on compact K, choosing epsilon before x0,t0; the singleton clause follows.
- gen_uniqueness constructs the compact union of two solution images on the closed segment joining t0 to t, derives its W membership and a Lipschitz constant via gen_lip, and applies the right/left Mathlib uniqueness lemmas. No global constant is required.
- gen_exit minimizes the closed exit set intersected with a compact segment [0,a] for an actual a in the exit set. It proves global leastness, positivity, frontier membership by a left closure limit, and both inequalities of the stated supremum identity. It handles arbitrary interval endpoints without treating the whole exit set as compact.
- gen_barrier proves no visited frontier point can exist, using source invariance on the original solution to return membership to time 0. The backward argument reverses only the continuous path; no independently assumed invariance for -F is needed.

These are actual applications in the checked implementations, not graph reachability claims. No provider, frozen theorem, draft theorem or new custom axiom enters the import closure.

## Hygiene and independent validation

Commands below ran sequentially; every Lean build/check used nice -n 5. The single requested leanchecker invocation used LEAN_NUM_THREADS=2. No resource override, source repair, state-changing git, package update, cache fetch, clean or broad rebuild was performed.

Targeted build:

```sh
LEAN_NUM_THREADS=2 /mnt/HC_Volume_106379410/orchestrator-tools/inp_lake_build.sh /root/code/KAM-inp-n3w2a KAM.ODE.Existence KAM.ODE.Uniqueness KAM.ODE.Exit
```

```text
[inp-gate] slot 1 acquired 21:55:51 for KAM.ODE.Existence KAM.ODE.Uniqueness KAM.ODE.Exit
⚠ [2843/2843] Replayed KAM.ODE.Exit
warning: KAM/ODE/Exit.lean:36:0: automatically included section variable(s) unused in theorem `KAM.ODE.gen_exit`:
  [NormedSpace ℝ E]
consider restructuring your `variable` declarations so that the variables are not in scope or explicitly omit them:
  omit [NormedSpace ℝ E] in theorem ...
Build completed successfully (2843 jobs).
exit: 0
```

The 2843 jobs are Lake snapshot replay/up-to-date accounting; this command targeted only the three package modules. The suggested linter-disable option was not used. The unused instance is omitted from the elaborated gen_exit type in both Appendix A and implementation, so it causes no signature drift.

Signature/definition/axiom probe:

```sh
LEAN_NUM_THREADS=2 nice -n 5 lake env lean .lake/abi-scratch/N345Audit.lean
```

The transient probe copied Appendix A D/E/H theorem headers into namespace AuditN345 (proofs supplied solely by the matching KAM.ODE exports), compared the complete ConstInfo.type terms with Lean.Meta.isDefEq, checked the two literal defining equations, and issued #print axioms for each of the 11 original public theorem names. Probe sha256: `675462a38cc11d1a61061bfdedf9f0f2e10790784eb074d9a12341e77bdae0c9`. No copied sorry or guessed substitute statement was used.

```text
SIGNATURE_IDENTITY KAM.ODE.picard_lindelof_ball: PASS
'KAM.ODE.picard_lindelof_ball' depends on axioms: [propext, Classical.choice, Quot.sound]
SIGNATURE_IDENTITY KAM.ODE.gen_short_forward: PASS
'KAM.ODE.gen_short_forward' depends on axioms: [propext, Classical.choice, Quot.sound]
SIGNATURE_IDENTITY KAM.ODE.gen_short: PASS
'KAM.ODE.gen_short' depends on axioms: [propext, Classical.choice, Quot.sound]
SIGNATURE_IDENTITY KAM.ODE.gen_uniform_exist: PASS
'KAM.ODE.gen_uniform_exist' depends on axioms: [propext, Classical.choice, Quot.sound]
SIGNATURE_IDENTITY KAM.ODE.gen_local: PASS
'KAM.ODE.gen_local' depends on axioms: [propext, Classical.choice, Quot.sound]
SIGNATURE_IDENTITY KAM.ODE.gen_uniqueness: PASS
'KAM.ODE.gen_uniqueness' depends on axioms: [propext, Classical.choice, Quot.sound]
SIGNATURE_IDENTITY KAM.ODE.gen_uniqueness_inter: PASS
'KAM.ODE.gen_uniqueness_inter' depends on axioms: [propext, Classical.choice, Quot.sound]
SIGNATURE_IDENTITY KAM.ODE.gen_exit: PASS
'KAM.ODE.gen_exit' depends on axioms: [propext, Classical.choice, Quot.sound]
SIGNATURE_IDENTITY KAM.ODE.isInvariantSet_equilibria: PASS
'KAM.ODE.isInvariantSet_equilibria' depends on axioms: [propext, Classical.choice, Quot.sound]
SIGNATURE_IDENTITY KAM.ODE.isInvariantSet_union: PASS
'KAM.ODE.isInvariantSet_union' depends on axioms: [propext, Classical.choice, Quot.sound]
SIGNATURE_IDENTITY KAM.ODE.gen_barrier: PASS
'KAM.ODE.gen_barrier' depends on axioms: [propext, Classical.choice, Quot.sound]
SIGNATURE_AXIOM_PROBE_EXIT=0
```

Exactly one kernel replay:

```sh
LEAN_NUM_THREADS=2 nice -n 5 lake env leanchecker --verbose KAM.ODE.Existence KAM.ODE.Uniqueness KAM.ODE.Exit
```

```text
replaying KAM.ODE.Exit
replaying KAM.ODE.Uniqueness
replaying KAM.ODE.Existence
LEANCHECKER_EXIT=0
```

Source lint:

```sh
sh scripts/lint_sources.sh
```

```text
KAM.lean is out of date; run scripts/gen_root_imports.py
check_lean_modules: PASS (239 Lean files, 0 comparator configurations)
FROZEN-ANCHOR GUARD OK
ABI HASHES OK (144 frozen declarations)
LINT_EXIT=1
```

The sole lint failure is the brief-exempt generated KAM.lean freshness check. The module checker, frozen-anchor guard and all 144 frozen ABI hashes pass. KAM.lean was not regenerated or edited.

`rg -n "\b(sorry|admit|axiom|unsafe|opaque)\b|set_option|EuclideanSpace|KAM\.(Provider|Frozen)"` on the three changed files produced no matches. The public import/header/docstring/exposed-section convention holds. Total file lengths are 200, 89 and 158, all below 1500. `git diff --check 9b45d20..HEAD -- <the three files>` exits 0 with no output.

## Suspected blueprint/source defects and deviations

1. Existing design issue B1, Part 3 L31–40, ext-pl: “‖F(y)‖≤M” leaves y unbound; “α(t0)=x” uses an unintroduced initial time. The binding design explicitly repairs the bound to ∀y∈closedBall(x,a), and universally quantifies t0. The implementation matches that repaired signature exactly. This audit does not silently amend the pinned blueprint or report it as a new mathematical refutation.
2. Existing design issue B2, Part 3 L179–183: gen-short invokes reversal although it assumes no C1 regularity. The implementation correctly uses the raw-derivative symmetry with W=univ; no missing hypothesis or circularity remains.
3. Accepted design generalizations D4/D10/D11: uniform existence/barriers drop unused C1/open assumptions; first exit uses continuity only; barriers require only the source invariance for F. All are at least as strong as the source statements and match Appendix A exactly.

No additional source defect, unauthorized deviation or blocking uncertainty was found. The only code hygiene note is the gen_exit unused-section-variable warning. These packages establish shared ODE infrastructure only; no frozen theorem or root is sealed or certified by this report.

## Snapshot identities

| File | SHA-256 |
|---|---|
| KAM/ODE/Existence.lean | `0ca0f8e2e81a2c5b0b171be631ac8c0d41eb44055bb126e643d31413cf5fc509` |
| KAM/ODE/Uniqueness.lean | `bbdf5cdf2991e25e1162f743a0239f47badc0e637d76febd2e696d3094937fcd` |
| KAM/ODE/Exit.lean | `d5c64823ea0a9a3bfb9b995638a794c5acf689e578878d585fb43fc1e1da7704` |
| KAM/ODE/Basic.lean | `13db29f548ae82d220360578a408ab147a6d1bc666fac9df881491019260090e` |
| KAM/ODE/Lipschitz.lean | `e9182137aed27eba5bb875bb8361c3d57011542503639bc1e9253694cc137a04` |
| docs/tracks/N/design/PART3-LEAN-DESIGN.md | `771846a22aad4b598a41881dafb191fc005de7bdbfd4cf1af5145c52508a8b7c` |
| blueprint-N/parts/p3-hamiltonian-ode.tex | `ae9ea3c57b401be389cd9a7e54d9508de50abe33bdc24f5d49a16fffcd43a17d` |

Only this report is retained as an audit edit. The transient probe and captured logs were deleted after embedding the exact receipts above.
