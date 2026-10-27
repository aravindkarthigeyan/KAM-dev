# Track I global source-graph review

Reviewer: **sol-global-I**. Marker: **global-I**. Independent global review, 2026-10-27.

**Overall verdict: FAIL.** The four frozen root statements and all 34 anchor identities match. The assembled dependency model nevertheless has unrecorded premise failures, a changed constant, and an unreconciled external boundary. These are findings about the source graph, not refutations of the frozen theorems or judgments about Lean implementations.

Reviewed graph and coverage: assembly **18df827**. The checkout was at **b0116d3** when checked; `git diff --stat 18df827 -- docs/graph/I/DEPGRAPH.md docs/graph/I/DEPGRAPH_COVERAGE.md docs/graph/I/SPEC.md` produced no output. Both pin inventories match their current files. I read AGENTS.md, PLAN.md, DECISIONS.md, the full global brief and SPEC, the track-I corpus, the imported source spans and their surrounding packages, the I-owned track-N source units, the frozen definitions and theorem signatures, and manifest identity/approval fields. Slice reviews were background, not acceptance evidence. No implementation/provider module was inspected or used; no Lean command or state-changing git command was run. Frozen theorem files were read for their signatures; their delimited body text was not used as evidence. The scope here is source modelling, not proof-body or implementation-status certification.

## Root-by-root reconstruction and verdict

The following four fields were reconstructed from Part 0 and the frozen signatures. In each case they agree with the root record. The verdict includes the represented dependency closure, rather than just the root transcription.

### I-G1 — FAIL (root fields PASS; closure fails G01–G04)

Sources: `blueprint-I/parts/p0-conventions.tex:215–253`; `KAM/Frozen/Iso/Theorems/IsoenergeticKam.lean`, declaration `KAM.Iso.isoenergetic_kam`.

- **SOURCE_HYPOTHESES:** n ≥ 2, real τ ≥ n−1; 0 < ρ∞ < ρ; M, σK, σB, σT, μ, γ̄ > 0; σω > 1; ν > 0; ω* ∈ ℝⁿ nonzero. For the inner statement: (I1) D open and invariant under integer angle translations; (I2) H holomorphic and angle-periodic on D; (I3) H real at real phase points of D; (I4) the five operator bounds on DH, XH, DXH, D²XH, D²H are ≤ M on D; (I5) K holomorphic and primary on Tρ and real on all real angles; (I6) Bμ(Kθ) ⊆ D and ‖DKθ‖ ≤ σK−μ on Tρ; (I7) Gram determinant a unit, with every inverse row sum ≤ σB−μ; (I8) the averaged extended torsion built with sω* has unit determinant and every inverse row sum ≤ σT−μ; (I9) 1 < s < σω and ν ≤ (s−1)‖ω*‖, ν ≤ (σω−s)‖ω*‖; (I10) 0 < γ ≤ γ̄, ω* is (γ,τ)-Diophantine, e ≥ 0; (I11) invariance error bounded pointwise by e on Tρ; (I12) |energyAverage H K−E₀| ≤ e; (I13) C₁e/(γ⁴ρ^(4τ)) < 1.
- **SOURCE_QUANTIFIERS:** fix (n,τ,ρ,ρ∞,M,σK,σB,σT,μ,γ̄,σω,ν,ω*) first; choose C₁,C₂,C₃ > 0; then every (D,H,K,s,γ,e,E₀) satisfying the inner premises; then some K∞,s∞.
- **SOURCE_CONCLUSION:** 1 < s∞ < σω; (O1) K∞ holomorphic and primary on Tρ∞ and real on reals; (O2) invariance error at s∞ω* zero on that strip; (O3) H(K∞θ)=E₀ for every θ there; (O4) Bμ/2(K∞θ) ⊆ D and ‖DK∞θ‖ ≤ σK−μ/2; (O5) ‖K∞θ−Kθ‖ ≤ C₂e/(γ²ρ^(2τ)); (O6) ‖s∞ω*−sω*‖ ≤ C₃e/(γ²ρ^(2τ)).
- **CONSTANT_SCOPE:** C₁,C₂,C₃ may depend on all the outer data and on none of D,H,K,s,γ,e,E₀. Part 2's explicitly smaller dependence list is retained as its stronger local claim, not imposed on the frozen anchor.

Backward trace: root → `bpI:p2:g1` → dictionary/error smallness → induction, one-step correction, extended-torsion perturbation and limit → Part 1 geometry/bordered solve and imported K tools; energy-limit plus energy-conservation supplies pointwise O3. The ray lemma and summed displacements carry ν down to at least ν/2. The graph uses ≤ for O5/O6, including e=0. Raw DEPS/ROUTES closure: **143 nodes**. Existing mandatory gap: `stepI:p2:to-frame`.

### I-HEAD — FAIL (root fields PASS; inherits I-G1 findings)

Sources: `blueprint-I/parts/p0-conventions.tex:268–286`; `KAM/Frozen/Iso/Theorems/AllTimeConfinement.lean`, declaration `KAM.Iso.all_time_confinement`.

- **SOURCE_HYPOTHESES:** B ⊆ ℝ² open, bounded, nonempty; s₀,r₀ > 0; h holomorphic on actionNbhd B r₀, real at every real point there, with nonzero bordered determinant on that whole real slice; B′ open with compact closure contained in B; η > 0. Inner data: f holomorphic on T_s₀ × B_r₀, integer-periodic in angles there and real at all real angles and real actions in B_r₀; 0 ≤ ε < ε₀, |f| ≤ ε on the domain; initial real z₀=(θ₀,I₀) with I₀ ∈ B′.
- **SOURCE_QUANTIFIERS:** fix (B,s₀,r₀,h,B′,η); choose ε₀ > 0; then every f,ε satisfying the premises and every z₀ with I₀ ∈ B′; choose a global z; then every a<0<b and every competing y with the same initial value and the Hamiltonian solution predicate on (a,b).
- **SOURCE_CONCLUSION:** z(0)=z₀; Sol(realHamiltonian h f,B,ℝ,z); ‖z(t)₂−I₀‖ < η for every real t; y(t)=z(t) on every such (a,b). The competing solution needs only the frozen predicate, including actions in B; confinement between the selected tori is not assumed of it.
- **CONSTANT_SCOPE:** ε₀ depends only on (B,s₀,r₀,h,B′,η), not f,ε,z₀. ε=0 is allowed. If B′ is empty the statement is vacuous and the proof chooses ε₀=1.

Backward trace: root → Part 5 choice/fix/solution/uniqueness steps → real Hamiltonian, graph property, energy-coordinate uniqueness, boundary identification, invariant barriers and compact-action periodic continuation → Part 3 finite charts/rays/tori → I-G1. Part 3's per-ray C_i are chosen before f,ε,E,I₀; the finite minimum is explicit. Raw closure: **294 nodes**. Existing gaps reached: `stepI:p2:to-frame` and the alternative-route-only `stepI:p3:to-torsion#p1-setting`; the direct flat route avoids the latter.

### I-KEPLER — PASS

Sources: `blueprint-I/parts/p0-conventions.tex:299–303`; `KAM/Frozen/Iso/Theorems/KeplerBorderedDet.lean`, declaration `KAM.Iso.kepler_bordered_det`.

- **SOURCE_HYPOTHESES:** κ>0, Ω>0, L in the subtype {L∈ℝ : 0<L}; no ordinary Hessian invertibility premise.
- **SOURCE_QUANTIFIERS:** every real κ,Ω with the positivity proofs, then every positive L.
- **SOURCE_CONCLUSION:** det(keplerBorder κ Ω L)=3κΩ²/L⁴ and this determinant is strictly positive.
- **CONSTANT_SCOPE:** none.

Backward trace: root → `bpI:p6:kepler` → value and positivity → `bpI:p6:det-formula` → entry expansion/evaluation → frozen `keplerBorder`. **8 nodes**, no imported premise or SOURCE_GAP. The positive sign is correct: −(−3κ/L⁴)(−Ω)(−Ω)=3κΩ²/L⁴.

The downstream nondegeneracy path uses the more general `det-formula` through `kep-border` and `conversion`, rather than applying the frozen I-KEPLER anchor. That matches the written proof. No artificial edge to the frozen gate should be added: its positivity assumptions are checked directly at κ=Ω=1 and at the converted positive constants.

### I-R3BP — FAIL (root fields PASS; inherited findings and G05–G06)

Sources: `blueprint-I/parts/p0-conventions.tex:305–319`; `KAM/Frozen/Iso/Theorems/RestrictedNearCircular.lean`, declaration `KAM.Iso.restricted_near_circular`.

- **SOURCE_HYPOTHESES:** real a₋,a₊,e₋,e₊ with 0<a₋<a₊, 0<e₋<e₊<1/4, a₊(1+e₊)<1. Inner data: 0≤μ<μ₀ and z₀∈NearCircular(a₋,a₊,e₋,e₊), the μ-independent region referenced to μ=0.
- **SOURCE_QUANTIFIERS:** fix a±,e±; establish openness/nonemptiness; choose μ₀,d,R with 0<μ₀≤1/2, d,R>0; then every μ∈[0,μ₀), every z₀ in that region; choose global z; then every a<0<b and competing y through z₀ satisfying RSolμ on (a,b).
- **SOURCE_CONCLUSION:** the region is open and nonempty; z(0)=z₀, RSolμ(ℝ,z); for every t, rad(q(t)−primary₁ μ)≥d and rad(q(t)−primary₂ μ)≥d, rad(q(t))≤R and rad(p(t))≤R; every competitor agrees on its interval. Here rad is Euclidean radius on Fin 2 → ℝ, not the ambient max norm.
- **CONSTANT_SCOPE:** μ₀,d,R depend only on a±,e±, before μ and z₀. μ=0 is included; collision exclusion is for every real time.

Backward trace: root → topology and constants, initial coordinate/smallness/I-HEAD/transfer/bounds/distance/uniqueness steps → Part 8 enlarged safe action set and head-data → Part 7 exact analytic barycentric Hamiltonian, common complex domain, Delaunay chart/symplecticity and transfer → Part 6 conversion/nondegeneracy and I-HEAD. Raw closure: **441 nodes**. All four existing SOURCE_GAP nodes are reachable in the union-of-routes sense. Two (Part 7 compact-to-uniform-continuity steps) are mandatory on this path.

## Global findings

### G01 — major: an ordinary-torsion premise re-enters the no-A5 closure

Evidence: `docs/graph/I/DEPGRAPH.md:2404` (`stepI:p1:geo-red`) has conjunctive edges to `K:step:p2:geo-domegak` and `K:step:p2:geo-ered`. Their current import records at **12834** and **12860** explicitly assume full K admissibility **including A5**. The consumer is the proof of `geometry-noA5`, whose source explicitly disclaims any torsion-average hypothesis (`blueprint-I/parts/p1-iso-linear.tex:509–535`). The K bridge does not supply A5 (`DEPGRAPH.md:2751`); bordered invertibility is not ordinary torsion invertibility. For the unperturbed rotating Kepler Hamiltonian, the ordinary Hessian has a zero second row while the bordered determinant is positive, so the distinction matters on the actual root path.

The local source says “By” the frame identities/matrix/frame-basic tools and “as in” the K steps. Its displayed local computation offers a way to remove the stronger imports as comparisons, with corresponding pruning and coverage reconciliation; alternatively expose separate source-backed routes. **Do not weaken the imported contracts silently or assume A5.** The complete conservative replacement in Appendix A retains the existing represented edges and marks the missing premise as SOURCE_GAP. It is a reviewable diagnosis, not a repaired proof route.

The K reviewed records and these I imports also disagree on the geometry-step hypotheses. This cross-graph disagreement needs owner reconciliation; a reviewer cannot resolve it by reading only the shorter K graph record and discarding the inherited source context.

### G02 — major: the generic holomorphy consumer cannot discharge the imported uniform frame premises

Evidence: `DEPGRAPH.md:1149` (`stepI:p1:eb-holo`) assumes only the Part 1 setting and det G≠0. Its import `K:step:p2:fb-holo` at **12808** assumes K's (A2)–(A4): a **uniform** positive ball margin β and finite global bounds on DK and G⁻¹ on T_r. Neither `bpI:p1:setting` nor its bridge supplies those bounds. Pointwise inclusion K(T_r)⊆D, with D open, does not supply a uniform β on an open strip; holomorphy/invertibility do not supply uniform bounds up to that strip's boundary.

The blueprint itself states the reduced premise claim in the parenthesis at `blueprint-I/parts/p1-iso-linear.tex:126–128`. Direct holomorphic inversion/differentiation can justify that claim, but the current imported contract is stronger. Appendix A records this as a SOURCE_GAP at the actual consumer. A future writer can model the explicit direct regularity argument separately; no new frozen hypothesis is justified.

### G03 — major: the `<1` Neumann application exceeds the imported `≤1/2` contract

Evidence: `blueprint-I/parts/p1-iso-linear.tex:500–503`, `stepI:p1:rd-consequence` (`DEPGRAPH.md:2307`), deduces invertibility when |E_sym|<1 by invoking `K:bp:p1:neumann`. The imported source `blueprint/parts/p1-analysis.tex:177–181` assumes |A⁻¹||Δ|≤1/2. Taking A=I and Δ=−Ω₀E_sym only gives <1, not ≤1/2. Neither the bridge nor matrix-norms changes that threshold.

The mathematical <1 criterion is true, but the stronger external/result contract is not among this graph's paid inputs, and no factorization/iteration proving it is modelled. Appendix A marks the specific branch SOURCE_GAP. Applications in Part 2 that actually establish ≤1/2 are not counterexamples to this finding: they do not prove the generic stronger branch. Do not replace the source's <1 hypothesis by ≤1/2 in a record claimed to transcribe it.

### G04 — major: the step conclusion changes the extended-torsion constant to the old torsion constant

Evidence: `DEPGRAPH.md:3557`, `bpI:p2:step`, conclusion (e), states `2 m^2 C_DeltaT d/delta^2`. The source at `blueprint-I/parts/p2-iso-iteration.tex:238` states **C_{Δ𝕋}**, not **C_{ΔT}**. Part 2 defines C_{Δ𝕋}=C_{ΔT}+8n²m⁴+1+C_Y (`:78`), and the torsion lemma and induction use that larger constant (`:206–212`, `:271–295`). This is a stronger bound than the written source and erases the cost of the moving frequency and energy row. Appendix A gives the complete replacement with `C_DeltaScriptT`, already the notation of the surrounding graph records.

### G05 — major: the external boundary contains two unapproved track-P imports

Evidence: `DEPGRAPH.md:13250`, `:13276` contain `P:bpP:p0:fixedsol#IsFixedSolution` and `P:bpP:p0:newton#IsNewtonSolution`. They feed the I-owned full Newtonian-predicate node and pairing step (`bpN:p3:newton-reduction`, `stepN:p3:nr-pair`). SPEC **127–148** permits K/N imports, and **151–153** explicitly forbids additional imports without a recorded SPEC revision. The latest SPEC ruling transfers the full N bookkeeping result to I but does not authorize the two P imports. The graph header's EXTERNAL_POLICY at **8** still names only K/N. Pinning the P blueprint in IMPORTS.sha256 does not amend this policy.

The P definition source fields are literal transcriptions of `blueprint-P/parts/p0-conventions.tex:226–242`; their FROZEN fields correctly remain `-`, and their notes say pending P graph. The issue is boundary authorization/ownership, not invented force formulas. Preferred resolution is an explicit SPEC/header revision authorizing these two definition imports, with pending P ownership. Alternatively narrow/split the I-owned bookkeeping to its restricted branch and prune the now-unused P boundary, with source and coverage review. No unconditional replacement graph record is proposed here because choosing that boundary is an unresolved owner ruling. Do not silently add a new external or edit a frozen file.

### G06 — minor: all nine N imports claim proved ownership before their owning graph exists

Evidence: `DEPGRAPH.md:13016–13248` has nine NOTE fields beginning `IMPORTED: proved in the track-N graph`; none says pending. `docs/graph/N/DEPGRAPH.md` does not exist. SPEC **145–148** and the global brief require pending N ownership until it does. The import checker independently returns OWNER-PENDING for all nine. Their actual mathematical source fields agree with the source spans; this is an ownership-certification error.

Appendix B gives all nine complete replacements, preserving mathematical fields and external planning status and adding the pending condition. They require rechecking against the eventual N assembled graph, not merely the presence of an N packet.

### G07 — minor: the generated dashboard is stale; global acceptance metadata is intentionally unset

Evidence: the required strict linter exits **1** with exactly the three diagnostics in the checks below. The global-review fields at `DEPGRAPH.md:12–13` are expected to be unset before this handoff; they must not be filled as a PASS while G01–G06 remain unresolved. The writer must regenerate the dashboard after reconciliation. I did not run a write-dashboard command or edit graph metadata.

## Existing SOURCE_GAP nodes and routes

All four existing gaps were inspected against their sources; none may be counted as a paid external input.

| Node | Source and assessment | Closure impact |
|---|---|---|
| `stepI:p2:to-frame` | Part 2 :216 applies extended-basic at the new frequency without its Diophantine premise; its NOTE correctly preserves that missing contract. | Mandatory for I-G1 and its consumers in the current graph. |
| `stepI:p3:to-torsion#p1-setting` | Part 3 :310–313 cites generic Part 1 results without establishing a Diophantine frequency. | Only the citation route; the direct flat route avoids it. |
| `stepI:p7:cd-uc` | Part 7 :345 invokes compact-to-uniform continuity, absent from the enumerated external list. | Mandatory for the common complex domain and I-R3BP. |
| `stepI:p7:eh-delta` | Part 7 :415–416 invokes the same unenumerated principle for q on a compact fundamental-domain closure. | Mandatory for exact-ham and I-R3BP. |

The four route nodes are the exactness/gradient alternatives for `ea-avg`, and the flat/citation alternatives for `to-torsion`. They have the same target conclusions and are correctly alternatives, not conjunctive extra premises. The gradient route still needs exactness for avg Ω_K=0. The direct flat route supplies the off-invariance row DH(K)N directly and integrates the explicit continuous entries. The citation route preserves its explicit missing premise. `bpI:p7:ke-ift` is correctly excluded: its local IFT comparison does not replace the quantitative uniform contraction result.

## Cross-part and convention checks

- Parts 1→2 and 1/2/I-G1→3 are represented through the geometry/bordered-correction/iteration and per-ray application steps. G01–G03 are failures of the actual imported contracts at consumers, not an absence of the named bridge nodes. Part 1's τ≥0 use is explicitly contemplated by K Part 2 :67–69; Part 3's K bridge is expressly restricted to the common analytic data, not a proof of Kolmogorov or boundary-layer hypotheses.
- I-G1 is applied per selected patch/ray with its positive parameters fixed first. `apply#constants`, `ap-d`, `ap-k`, `ap-t`, `ap-ray`, `ap-error`, `ap-small` and `ap-conclusion` supply I1–I13 at their consumer. There is no use of a conclusion-shaped frozen premise. The Part 3 error size e=F₁ε is chosen after the fixed coefficients.
- Part 5's use of the Part 3 packages is explicit in the setting/constants/chart/patch/ray/uniform and section-data edges. The graph does not infer separation from the undeformed base-point order alone: graph formation, slope estimates, the energy-window argument and the boundary identification are separate obligations. The B′=∅ case and ε=0 are retained.
- The N ODE applications in Part 5 use the open W_B=ℝ²×B, C¹ and periodic X_R from real-ham, interval J, and the compact action set from patch data. Invariance uses a global torus solution and uniqueness on J′. Continuation permits unbounded lifted angles. Part 8 proves physical uniqueness on the full open collision-free W_μ via ham-eq/newton-reduction/gen-sol/gen-uniqueness; a competing orbit need not stay in the Delaunay image.
- Parts 7–8 use the Part 6 Kepler function and conversion. S(θ,I)=(2πθ,I/(2π)); κ′=κ(2π)², Ω′=Ω/(2π), s₀=δ₂/(2π), r₀=2πδ₂. The converted determinant is 3κΩ²/I₁⁴, positive at κ=Ω=1. The source uses the real bordered Hessian only where the complex/real derivatives agree on an open real neighbourhood.
- Part 7's 𝕁 is −omegaZero. The frozen frame uses omegaZero(a,b)=(-b,a); the physical Hamiltonian field is positions first. No sign reversal in the transfer formula or scalar time rescaling is introduced. Geometric radii use Euclidean length; the analytic estimates retain max/product/operator/row-sum norms, with dimension factors in the last-row comparison.
- `head-data` checks I-HEAD premises, rather than using its conclusion. `pf-small` supplies ε=C_F μ<ε_H before `pf-head`. The safe action set strictly contains the closed initial action region; no uniform displacement margin in the original open annulus is assumed. Constants μ₀=min{1/2,μ₂,ε_H/C_F,ν₀/2}, d=ν₀/2 and R=√(2/r_min) have the required dependence, and all-time shell-exclusion includes μ=0.
- The frozen-definition dependencies retain the guarded carriers: the restricted Hamiltonian/field are defined on the collision-free subtype, and the solution predicate provides that witness at every visited time; the ODE field is its displayed total extension with values outside W_μ irrelevant. The Kepler denominator is guarded by positive L. No non-anchor, including an import, carries a FROZEN identity.

## Unreachable-node and coverage findings

**Unreachable nodes: none.** Independent traversal including DEPS and ROUTES reaches all **445** nodes from the union of the four roots. The linter reports **1,924 edges**, **34 anchors**, **4 routes**, **4 existing explicit gaps**, **667 coverage items**, **194 exclusions**, and no topology-review queue.

No additional missing proof-paragraph coverage was found. The section-data prose is mapped to `sec-patch#data`, `sec-graph#data`, `sec-sep#data`, `sec-ham#data`, `sec-complex#data`, and `sec-safe#data`; the bridges have their consumer edges. The off-closure exclusions for means, scaling, circular, newton and min-distance are justified by the actual root proofs: their occurrences in the Part 7/8 introductions or summary remarks are pointers to track P, and `pf-dist` uses shell-exclusion rather than the N-body minimum-distance result. The alias exclusions for Banach/mean-value and IFT point to the retained source inputs. Findings G01–G03 expose missing premise-discharge obligations inside already covered steps; they do not assert that a paragraph was absent from the inventory.

All 34 anchor (path, export, anchor ID, contract ID/version and ABI hash) identities match the manifest. All four roots have the D20 author approval there. The other **411** nodes have all four FROZEN_* fields `-`. Identity checks do not constitute ABI re-elaboration or proof checking.

## Suspected blueprint defects and source errata

1. **Part 1 :126–128:** “which uses only K(T_r)⊆D, det G_K≠0 ... no bound and no torsion condition enters”. This is a plausible direct regularity argument, but not the current full imported `fb-holo` contract; see G02. Record the premise mismatch rather than importing the stronger result unconditionally.
2. **Part 1 :532–535 and K Part 2 :549–580:** the “as in” geometry-step references sit inside a no-A5 proof, whereas the retained imported steps explicitly include A5. The displayed local computation can be a separate derivation; the graph currently makes the stronger imports mandatory (G01).
3. **Part 1 :500–503:** “det(...)≠0 when |E_sym|<1 (Neumann series ... neumann ...)”. The cited lemma is stated only at ≤1/2; the missing extension is G03. No claim that the <1 mathematical criterion is false.
4. **Part 3 :76–78:** “e:=F₁ ε” followed by “All of these ... not on f, ε or any point.” The blanket independence cannot include e. The existing constants node explicitly records the inconsistency and keeps e's ε dependence. No additional graph correction is needed.
5. **N Part 3 :405–406:** the final “H∘(z+(k,0))=H∘z” needs restriction to J; the hypotheses control the orbit only on J, with arbitrary values outside. The import faithfully retains the wording, and Part 5 only uses field periodicity on W_B, so this surplus clause is not consumed.
6. **N Part 3 :453:** “Together they say exactly that x has derivative F_N(x(t)) at t” omits the domain-membership conjunct in that final sentence. The distance block immediately before it is exactly the missing conjunct, and `stepN:p3:nr-pair` correctly retains it. No new graph change is needed.
7. **Part 7 :210–213:** “for every C¹ function H on an open subset ... on which Q is defined” should distinguish Q's source from H's target and require Q(w) in H's open domain. The actual transfer uses the open collision-free target and explicit image containment (`tr-cf`, `tr-open`), so no missing premise at that application was found.

The blueprint additionally records HL19 E1–E3 in Part 1 :571–586, E4–E5 in Part 2 :368–369, and the Chi05 missing analytic-domain specification in Part 7 :14 and :489. Those are inherited paper-errata/gap reports, not freshly verified claims about the pinned PDFs: no paper PDF was in the assigned reading corpus and none was consulted. The strictness/sign corrections, combined energy error and direct barycentric-coordinate adaptation remain explicit deviations. No frozen-statement defect was found, and this review introduces no mathematical deviation.

## Exact checks and outputs

```text
python3 scripts/proof_depgraph.py --db docs/graph/I/DEPGRAPH.md --manifest docs/graph/I/DEPGRAPH_COVERAGE.md --source-root . --require-reviewed --require-complete-coverage --require-initial-lean-status --require-all-reachable --check
exit 1:
docs/graph/I/DEPGRAPH.md:12: review gate: missing or placeholder GLOBAL_REVIEWER
docs/graph/I/DEPGRAPH.md:13: review gate: missing or placeholder GLOBAL_REVIEW_REF
docs/graph/I/DEPGRAPH.md: generated dashboard is stale; run --write-dashboard

python3 -I /mnt/HC_Volume_106379410/orchestrator-tools/inp_depgraph_imports.py docs/graph/I/packets
exit 0:
I-imports: 59 imported nodes present, 59 referenced, 0 missing, 0 unreferenced
OWNER-PENDING: all 9 N imports and both P imports (owning graphs absent).

sha256sum -c docs/graph/I/CORPUS.sha256
exit 0: all 9 entries OK (eight I parts plus the I-owned N ODE source).

sha256sum -c docs/graph/I/IMPORTS.sha256
exit 0: all 7 entries OK (four K files, two N files, one P file).

Independent read-only identity/topology scan:
34 anchor identities PASS; all 411 non-anchor frozen identities empty;
root DEPS/ROUTES closures 143 / 294 / 8 / 441; union 445; unreachable [].
```

All 48 K import IDs are retained by the reviewed K graph; source-field comparison finds substantive differences at the geometry-step boundary discussed in G01 and expanded wording at other imports. The raw owning source was used to distinguish expanded faithful definitions from a changed premise. All nine N source statements were checked directly; pending ownership is G06. The two P definitions were checked directly, with boundary authorization still G05.

No `scripts/lint_sources.sh`, targeted Lean build or `#print axioms` was run: the specific brief forbids Lean and implementation inspection, and that script scans implementation files and invokes the ABI checker. No Lean module/result was created. Axiom output is **not assessed** in this source-only review.

## Replacement records

The following blocks are proposals inside this review only. They preserve the frozen statements and do not alter the assembled graph. Changed nodes are reset to PROPOSED with no reviewer; they need a distinct delta review after a writer applies them. Adding a SOURCE_GAP makes the model honest; it does not pay that obligation.

### Appendix A — consumer diagnostics and constant correction

#### stepI:p1:geo-red

```text
NODE: stepI:p1:geo-red
KIND: step
TITLE: $\partial_\omega\Omega_K$ and $E_{\mathrm{red}}$
STATEMENT_SOURCE: blueprint-I/parts/p1-iso-linear.tex#stepI:p1:geo-red@L531-L533
PROOF_SOURCE: blueprint-I/parts/p1-iso-linear.tex#stepI:p1:geo-red@L531-L533
CONTRACT_ID: stepI:p1:geo-red
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: hypotheses of geometry-noA5
SOURCE_QUANTIFIERS: delta
SOURCE_CONCLUSION: ¦d_omega Omega_K¦ <= (2n m + 2n^2 m) eps/delta and ¦E_red¦ <= C_red eps/delta on T_{r-delta}
CONSTANT_SCOPE: inherited constants m and C_red of K:bp:p2:constants, depending only on (n,tau,M,sigma_K,sigma_B,sigma_T); no new constants
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: K:bp:p2:frame-identities, K:bp:p2:matrix, K:bp:p2:frame-basic, bpI:p1:setting#k-bridge, stepI:p1:geo-de, K:step:p2:geo-domegak, K:step:p2:geo-ered, bpI:p1:setting, K:bp:p2:constants
ROUTES: -
ROUTE_FOR: -
EDGE: K:bp:p2:frame-identities | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:geo-red@L532-L532 | (d), (e)
EDGE: K:bp:p2:matrix | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:geo-red@L532-L532 | norm bounds
EDGE: K:bp:p2:frame-basic | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:geo-red@L532-L532 | (b): bounds on L, N, B
EDGE: bpI:p1:setting#k-bridge | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:geo-red@L532-L532 | supplies the K standing data of frame-identities and frame-basic
EDGE: stepI:p1:geo-de | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:geo-red@L532-L532 | bound on DE
EDGE: K:step:p2:geo-domegak | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:geo-red@L532-L532 | same estimate for d_omega Omega_K
EDGE: K:step:p2:geo-ered | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:geo-red@L532-L532 | same estimate for E_red
EDGE: bpI:p1:setting | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:geo-red@L533-L533 | direct use of the local H, K, omega, domain or standing constants
EDGE: K:bp:p2:constants | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:geo-red@L533-L533 | definitions of m and C_red used in the displayed bounds
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sol-global-I
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: SOURCE_GAP: the represented conjunctive applications of K:step:p2:geo-domegak and K:step:p2:geo-ered assume full K admissibility including A5, by their current imported source contracts. geometry-noA5 supplies A1-A4 and A6 but no ordinary torsion-average invertibility. The common-data k-bridge does not discharge A5. The displayed local calculation from frame-identities, matrix and frame-basic may instead support a separately modelled direct route; it does not make these stronger import premises true.
```

#### stepI:p1:eb-holo

```text
NODE: stepI:p1:eb-holo
KIND: step
TITLE: Holomorphy
STATEMENT_SOURCE: blueprint-I/parts/p1-iso-linear.tex#stepI:p1:eb-holo@L125-L128
PROOF_SOURCE: blueprint-I/parts/p1-iso-linear.tex#stepI:p1:eb-holo@L125-L128
CONTRACT_ID: stepI:p1:eb-holo
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: setting; det G_K != 0 on T_r
SOURCE_QUANTIFIERS: K, H
SOURCE_CONCLUSION: N, T, Y and every entry of T_H are holomorphic on T_r, in particular continuous on R^n
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p1:setting, K:step:p2:fb-holo, bpI:p1:setting#k-bridge, K:bp:p1:holomorphic-regularity, bpI:p1:ext-chain, bpI:p0:extended#extendedTorsion, K:bp:p1:holomorphic-inverse
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p1:setting | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:eb-holo@L126-L126 | K(T_r) subset D, H holomorphic on D
EDGE: K:step:p2:fb-holo | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:eb-holo@L126-L126 | N and T holomorphic (K standing results)
EDGE: bpI:p1:setting#k-bridge | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:eb-holo@L126-L126 | supplies the K standing data of fb-holo
EDGE: K:bp:p1:holomorphic-regularity | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:eb-holo@L127-L127 | DH holomorphic on D
EDGE: bpI:p1:ext-chain | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:eb-holo@L128-L128 | product of holomorphic functions
EDGE: bpI:p0:extended#extendedTorsion | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:eb-holo@L128-L128 | entries of the frozen T_H
EDGE: K:bp:p1:holomorphic-inverse | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:eb-holo@L126-L126 | holomorphic inverse in the construction of N, expressly cited
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sol-global-I
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: SOURCE_GAP: the explicit K:step:p2:fb-holo import assumes A2-A4, including a uniform positive ball margin beta and global bounds for DK and G^{-1} on T_r. The Part 1 setting here supplies only K(T_r) subset D, holomorphy and det G != 0, not those uniform bounds. The parenthetical local assertion that the regularity proof uses no bounds needs a separately modelled direct derivation from holomorphic inversion/differentiation; no stronger imported contract is discharged by the existing k-bridge.
```

#### stepI:p1:rd-consequence

```text
NODE: stepI:p1:rd-consequence
KIND: step
TITLE: Consequence
STATEMENT_SOURCE: blueprint-I/parts/p1-iso-linear.tex#stepI:p1:rd-consequence@L498-L503
PROOF_SOURCE: blueprint-I/parts/p1-iso-linear.tex#stepI:p1:rd-consequence@L498-L503
CONTRACT_ID: stepI:p1:rd-consequence
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: setting; det G_K != 0; xi, xi^omega and strip as in reduced; for (c) the bordered system holds; for (d) det P != 0, sufficient if norm E_sym < 1
SOURCE_QUANTIFIERS: xi, xi^omega
SOURCE_CONCLUSION: Q Res = E_lin when the bordered system holds, with the bound on E_lin; det P != 0 (when ¦E_sym¦ < 1) gives Q invertible, Res = Q^{-1} E_lin and the equivalence in (d)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepI:p1:rd-expand, K:bp:p2:frame-identities, bpI:p1:setting#k-bridge, K:bp:p1:neumann, K:bp:p1:matrix-norms, K:bp:p2:matrix, bpI:p1:setting
ROUTES: -
ROUTE_FOR: -
EDGE: stepI:p1:rd-expand | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:rd-consequence@L499-L499 | (b)
EDGE: K:bp:p2:frame-identities | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:rd-consequence@L500-L500 | (b): P^T Omega_0 P = Omega_0 + E_sym
EDGE: bpI:p1:setting#k-bridge | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:rd-consequence@L500-L500 | supplies the K standing data of frame-identities
EDGE: K:bp:p1:neumann | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:rd-consequence@L501-L501 | Neumann series for I - Omega_0 E_sym
EDGE: K:bp:p1:matrix-norms | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:rd-consequence@L501-L501 | ¦Omega_0 E_sym¦ = ¦E_sym¦
EDGE: K:bp:p2:matrix | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:rd-consequence@L503-L503 | norm bounds for E_lin
EDGE: bpI:p1:setting | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:rd-consequence@L499-L499 | direct use of the local H, K, omega, domain or standing constants
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sol-global-I
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: SOURCE_GAP: the source invokes K:bp:p1:neumann under norm E_sym < 1, while that imported result assumes norm A^{-1} norm Delta <= 1/2. With A=I and Delta=-Omega_0 E_sym, the available premise is only norm Delta < 1. No proof of the stronger radius-one invertibility criterion is supplied by the listed dependencies. The residual identities and conditional equivalence under det P != 0 are unaffected; this gap is the sufficient-condition branch for det P != 0.
```

#### bpI:p2:step

```text
NODE: bpI:p2:step
KIND: proposition
TITLE: The isoenergetic step
STATEMENT_SOURCE: blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:step@L227-L241
PROOF_SOURCE: blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:step@L242-L250
CONTRACT_ID: bpI:p2:step
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: standing data; r>0, 0<delta<=1, 4delta<r, beta>0, 0<=eps<=1, s>1; K (r,beta,eps,s)-admissible; c_step eps/(gamma^4 delta^{2a}) <= min{1,beta}; Kbar, omegabar as in correction and new-error; d := C_Delta eps/(gamma^2 delta^a)
SOURCE_QUANTIFIERS: standing data, constants fixed; r, delta, beta, eps, s, K
SOURCE_CONCLUSION: (a) Kbar holomorphic, primary on T_{r-2delta}, real on reals; (b) ¦Kbar-K¦ <= d <= beta/2 on T_{r-2delta}, B_{beta-d}(Kbar(theta)) in D, ¦sbar-s¦¦omega*¦ <= d; (c) ¦E_{H,Kbar,omegabar}¦ <= C_E eps^2/(gamma^4 delta^{2a}) on T_{r-2delta} and ¦Ebar_H(Kbar)-E_0¦ <= C_E eps^2/(gamma^4 delta^{2a}); (d) ¦DKbar-DK¦ <= nd/delta, det Gbar != 0, ¦Bbar-B¦ <= C_B d/delta on T_{r-3delta}; (e) avg T_H(Kbar,omegabar) invertible with ¦avg Tbar^{-1}-avg T^{-1}¦ <= 2 m^2 C_DeltaScriptT d/delta^2
CONSTANT_SCOPE: Constants of Definition bpI:p2:constants: all depend only on (n,tau,M,sigma_K,sigma_B,sigma_T); hat-c_* also on (mu,nu); delta_0 on (rho,rho_infty); no dependence on K, s, e, gamma, omega*, sigma_omega
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p2:standing, bpI:p2:constants, bpI:p2:admissible, bpI:p2:correction, bpI:p2:newton-error, stepI:p2:st-small, stepI:p2:st-error, stepI:p2:st-frame
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p2:standing | blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:step@L228-L228 | standing data
EDGE: bpI:p2:constants | blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:step@L230-L230 | c_step, C_Delta, C_E, C_B, C_DeltaScriptT, a, m
EDGE: bpI:p2:admissible | blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:step@L228-L228 | K is (r,beta,eps,s)-admissible; B1-B7 and the frequency bound
EDGE: bpI:p2:correction | blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:step@L232-L232 | Kbar, omegabar, d from the correction lemma
EDGE: bpI:p2:newton-error | blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:step@L232-L232 | errors of Kbar
EDGE: stepI:p2:st-small | blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:step@L243-L243 | proof step of this result
EDGE: stepI:p2:st-error | blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:step@L246-L246 | proof step of this result
EDGE: stepI:p2:st-frame | blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:step@L248-L248 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sol-global-I
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### Appendix B — pending N ownership

These blocks change ownership notes only; they neither promote packets to owning graphs nor change mathematical contracts.

#### N:bpN:p3:gen-continuation-periodic

```text
NODE: N:bpN:p3:gen-continuation-periodic
KIND: external
TITLE: [N] Closed sets, periodic fields
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-continuation-periodic@L297-L299
PROOF_SOURCE: -
CONTRACT_ID: N:bpN:p3:gen-continuation-periodic
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: E = R^n x R^n; U subset R^n open; W = R^n x U; F C^1 on W with F(theta+k,I) = F(theta,I) for k in Z^n; z the maximal solution through x0 in W (Theorem bpN:p3:gen-maximal), maximal interval (T_-,T_+); z(t)_2 in K for t in [t_*,T_+) (some t_* in [0,T_+)) with K subset U compact
SOURCE_QUANTIFIERS: n, U, F, x0, K, t_* fixed
SOURCE_CONCLUSION: T_+ = +infinity; likewise on the left (T_- = -infinity when z(t)_2 stays in a compact subset of U on (T_-,t_*]); the angle components z(t)_1 may be unbounded
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sol-global-I
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED (pending N graph): source result of track N, node bpN:p3:gen-continuation-periodic; shared Lean provider. Cited as \Nref{bpN:p3:gen-continuation-periodic}. Owning-node retention is not certified: docs/graph/N/DEPGRAPH.md is absent. Re-check against its assembled root closure before treating this as a valid retained N import; if excluded, resolve track-I ownership under SPEC.
```

#### N:bpN:p3:gen-maximal

```text
NODE: N:bpN:p3:gen-maximal
KIND: external
TITLE: [N] Maximal solution
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-maximal@L251-L258
PROOF_SOURCE: -
CONTRACT_ID: N:bpN:p3:gen-maximal
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: E a finite-dimensional real normed space; F C^1 on the open set W; x0 in W
SOURCE_QUANTIFIERS: F, W, x0 fixed; there exist T_- in [-infinity,0), T_+ in (0,+infinity] and z : R -> E
SOURCE_CONCLUSION: z(0) = x0, IsSolIn F W (T_-,T_+) z, and every solution y with y(0) = x0 on an interval J containing 0 satisfies J subset (T_-,T_+) and y = z on J; the maximal interval and the maximal solution are unique
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sol-global-I
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED (pending N graph): source result of track N, node bpN:p3:gen-maximal; shared Lean provider. Cited as \Nref{bpN:p3:gen-maximal}. Owning-node retention is not certified: docs/graph/N/DEPGRAPH.md is absent. Re-check against its assembled root closure before treating this as a valid retained N import; if excluded, resolve track-I ownership under SPEC.
```

#### N:bpN:p3:gen-sol

```text
NODE: N:bpN:p3:gen-sol
KIND: external
TITLE: [N] Solutions in $W$
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-sol@L88-L93
PROOF_SOURCE: -
CONTRACT_ID: N:bpN:p3:gen-sol
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: F : E -> E (total); W subset E; J subset R; z : R -> E (typing data)
SOURCE_QUANTIFIERS: F, W, J, z
SOURCE_CONCLUSION: defines IsSolIn F W J z: for every t in J, z(t) in W and z has the two-sided derivative F(z(t)) at t (HasDerivAt); not a frozen declaration
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sol-global-I
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED (pending N graph): source result of track N, node bpN:p3:gen-sol; shared Lean provider. Cited as \Nref{bpN:p3:gen-sol}. Owning-node retention is not certified: docs/graph/N/DEPGRAPH.md is absent. Re-check against its assembled root closure before treating this as a valid retained N import; if excluded, resolve track-I ownership under SPEC.
```

#### N:bpN:p3:gen-uniqueness

```text
NODE: N:bpN:p3:gen-uniqueness
KIND: external
TITLE: [N] Uniqueness on arbitrary intervals
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-uniqueness@L217-L224
PROOF_SOURCE: -
CONTRACT_ID: N:bpN:p3:gen-uniqueness
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: E a finite-dimensional real normed space; F C^1 on the open set W; J subset R an interval of any kind (open, closed, half-open, unbounded or a point); t0 in J; y1, y2 : R -> E with IsSolIn F W J y_i (i = 1, 2) and y1(t0) = y2(t0)
SOURCE_QUANTIFIERS: F, W, J, t0, y1, y2 fixed
SOURCE_CONCLUSION: y1 = y2 on J (no confinement, boundedness or smallness of either solution assumed); in particular solutions on intervals J1, J2 that agree at one point of J1 cap J2 agree on J1 cap J2
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sol-global-I
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED (pending N graph): source result of track N, node bpN:p3:gen-uniqueness; shared Lean provider. Cited as \Nref{bpN:p3:gen-uniqueness}. Owning-node retention is not certified: docs/graph/N/DEPGRAPH.md is absent. Re-check against its assembled root closure before treating this as a valid retained N import; if excluded, resolve track-I ownership under SPEC.
```

#### N:bpN:p3:ham-energy

```text
NODE: N:bpN:p3:ham-energy
KIND: external
TITLE: [N] Energy conservation
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:ham-energy@L388-L393
PROOF_SOURCE: -
CONTRACT_ID: N:bpN:p3:ham-energy
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: H : P -> R with P = R^n x R^n; J subset R an interval; z : R -> P; for every t in J, H is differentiable at z(t) and z has derivative X_H(z(t)) at t
SOURCE_QUANTIFIERS: H, J, z fixed
SOURCE_CONCLUSION: t -> H(z(t)) is constant on J (no regularity of H beyond the pointwise differentiability, no confinement)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sol-global-I
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED (pending N graph): source result of track N, node bpN:p3:ham-energy; shared Lean provider. Cited as \Nref{bpN:p3:ham-energy}. Owning-node retention is not certified: docs/graph/N/DEPGRAPH.md is absent. Re-check against its assembled root closure before treating this as a valid retained N import; if excluded, resolve track-I ownership under SPEC.
```

#### N:bpN:p3:ham-periodic

```text
NODE: N:bpN:p3:ham-periodic
KIND: external
TITLE: [N] Periodicity in the angles passes to solutions
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:ham-periodic@L402-L407
PROOF_SOURCE: -
CONTRACT_ID: N:bpN:p3:ham-periodic
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: W subset P open with W + (k,0) = W for all k in Z^n; H : P -> R with H(theta+k,I) = H(theta,I) for (theta,I) in W, k in Z^n
SOURCE_QUANTIFIERS: W, H fixed; for every k in Z^n, every J subset R and every z : R -> P
SOURCE_CONCLUSION: X_H(theta+k,I) = X_H(theta,I) on W; if IsSolIn X_H W J z then IsSolIn X_H W J (z + (k,0)) and H o (z + (k,0)) = H o z
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sol-global-I
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED (pending N graph): source result of track N, node bpN:p3:ham-periodic; shared Lean provider. Cited as \Nref{bpN:p3:ham-periodic}. Owning-node retention is not certified: docs/graph/N/DEPGRAPH.md is absent. Re-check against its assembled root closure before treating this as a valid retained N import; if excluded, resolve track-I ownership under SPEC.
```

#### N:bpN:p3:ham-reduction

```text
NODE: N:bpN:p3:ham-reduction
KIND: external
TITLE: [N] Track N and track I Hamiltonian predicates
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:ham-reduction@L416-L427
PROOF_SOURCE: -
CONTRACT_ID: N:bpN:p3:ham-reduction
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: H : P -> R; U subset R^n open; W subset P open with R^n x U subset W; H C^2 on W; W_U := R^n x U
SOURCE_QUANTIFIERS: H, U, W fixed; for every J subset R and every z : R -> P
SOURCE_CONCLUSION: IsSolutionOn H U J z <-> IsSolIn X_H W_U J z <-> IsHamiltonianSolutionOn H U J z (the frozen KAM.Nekhoroshev.IsSolutionOn and KAM.Iso.IsHamiltonianSolutionOn); X_H is C^1 on W_U
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sol-global-I
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED (pending N graph): source result of track N, node bpN:p3:ham-reduction; shared Lean provider. Cited as \Nref{bpN:p3:ham-reduction}. Owning-node retention is not certified: docs/graph/N/DEPGRAPH.md is absent. Re-check against its assembled root closure before treating this as a valid retained N import; if excluded, resolve track-I ownership under SPEC.
```

#### N:bpN:p3:gen-exit

```text
NODE: N:bpN:p3:gen-exit
KIND: external
TITLE: [N] First exit
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-exit@L328-L341
PROOF_SOURCE: -
CONTRACT_ID: N:bpN:p3:gen-exit
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: IsSolIn F W J z with J an interval, 0 in J; V subset E open; z(0) in V; A = {t in J : t >= 0, z(t) not in V}
SOURCE_QUANTIFIERS: F, W, J, z, V fixed
SOURCE_CONCLUSION: exactly one holds: (i) A empty and z(t) in V for all t in J, t >= 0; (ii) A nonempty, t* = min A exists, t* > 0, t* in J, z(t) in V on [0,t*), z(t*) in boundary of V = closure(V) minus V; t* equals sup{t in J : t >= 0, z([0,t]) subset V}; the same holds backwards in time
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sol-global-I
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED (pending N graph): source result of track N, node bpN:p3:gen-exit; shared Lean provider. Cited as \Nref{bpN:p3:gen-exit}. Owning-node retention is not certified: docs/graph/N/DEPGRAPH.md is absent. Re-check against its assembled root closure before treating this as a valid retained N import; if excluded, resolve track-I ownership under SPEC.
```

#### N:bpN:p3:gen-symmetry

```text
NODE: N:bpN:p3:gen-symmetry
KIND: external
TITLE: [N] Symmetries
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-symmetry@L101-L110
PROOF_SOURCE: -
CONTRACT_ID: N:bpN:p3:gen-symmetry
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: E a finite-dimensional real normed space; F:E->E total, W subset E open, J subset R, z:R->E with IsSolIn F W J z; for (c), v in E with W+v=W and F(x+v)=F(x) for x in W; no C^1 assumption is required for the solution transformations
SOURCE_QUANTIFIERS: F,W,J,z as stated; (a) every c in R; (b) time reversal, with the additional C^1 implication conditional on F being C^1 on W; (c) every v satisfying the translation conditions
SOURCE_CONCLUSION: (a) t -> z(t+c) is a solution on J-c; (b) t -> z(-t) is a solution of -F on -J, and -F is C^1 on W if F is; (c) t -> z(t)+v is a solution of F in W on J
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sol-global-I
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED (pending N graph): source result of track N, node bpN:p3:gen-symmetry; shared Lean provider. Cited as \Nref{bpN:p3:gen-symmetry}. Owning-node retention is not certified: docs/graph/N/DEPGRAPH.md is absent. Re-check against its assembled root closure before treating this as a valid retained N import; if excluded, resolve track-I ownership under SPEC.
```

## Unresolved questions

1. Will the writer remove comparison-only K geometry imports and expose the direct no-A5 derivation, or retain and explicitly resolve the stronger-premise obligations (G01)? Reconcile the differing K/I imported contracts with the owning source.
2. Will the generic Part 1 regularity proof be given its own reduced-premise route, and will the radius-one Neumann criterion be supplied from an authorized input or a source proof (G02–G03)? Do not add premises to the frozen statements.
3. Correct the extended-torsion constant in the step record and delta-review it (G04).
4. Authorize the two precise P definition imports by recorded SPEC/header revision, or split the I-owned Newtonian bookkeeping so they are outside this closure (G05).
5. Revalidate the nine pending N imports, and any approved P imports, against their eventual owning assembled graphs (G06).
6. Resolve the existing mandatory source gaps in the moving-frequency regularity and the two Part 7 uniform-continuity uses before claiming unconditional source closure. The generic Part 3 citation route remains optional because the direct flat route is present.

Only file written: `docs/graph/I/reviews/GLOBAL-review.md`. No graph, packet, coverage, source, frozen, manifest, generated root or README edit was made.

READY graph-global-I
