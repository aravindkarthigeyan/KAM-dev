# P1-3b independent package audit 1

Date: 2026-10-28. **Verdict: PASS WITH NOTES**. The mathematical implementation meets the P1-3b interface contract; no material statement or proof defect was found. This is infrastructure acceptance, not a frozen-anchor seal.

## Scope and authority

Audited `/root/code/KAM-inp-p13b`, HEAD `bc13d64ec6dc69f130e9d9c70ed6113474f2c25d`, against `inp` at `f8a36c7804682425a1e46b852ccff13f8780c46d`, using `git diff inp...HEAD`. The delta is exactly Hessian.lean (new, 287 lines), QuasiConvex.lean (new, 93 lines), and Period.lean (25 additions, two deletions; final length 405 lines), all under `KAM/Nekhoroshev/Interfaces/`.

Authority: AGENTS.md, PLAN.md, DECISIONS.md, `/root/code/KAM-inp/.drafts/briefs/inp-audit-package.md`, the local handoff's AUDIT FOCUS, design `docs/tracks/N/design/PART145-LEAN-DESIGN.md` (package row 274, proof plan 331, Appendix A), and both design audits under `docs/tracks/N/design/`. The handoff refers to these design audits as if under audits/; their actual paths are under design/. Read the relevant frozen N-HEAD-C/N-QC/N-ZERO declarations and definitions, track-N statement, and blueprint-N Part 1, especially lines 100–173. The explicit user destination overrides the generic brief's main-worktree destination.

No provider or frozen theorem is changed or supplied by this package. Provider-to-anchor type equality and seal-body probes therefore have no subject. All four implemented target signatures were instead extracted independently from design Appendix A, compared after whitespace normalization (all identical), and copied under fresh names in `.lake/abi-scratch/P13bAudit.lean`, with bodies applying the implementation to every explicit argument in order.

## Declaration decisions

All names below are in `KAM.Nekhoroshev`.

| Node / obligation | Declaration and location | Verdict | Reason |
|---|---|---|---|
| partials, Schwarz helper | `iteratedFDeriv_perm_of_contDiffAt_three`, Hessian:97 | PASS | Stronger generality: arbitrary real normed vector domain and arbitrary directions; only pointwise C³, orders 1–3. No derivative-bound or analytic premise is inserted. Adjacent swaps generate every permutation. |
| bpN:p1:partials | `partials`, Hessian:143 | PASS | Arbitrary open U is retained through the frozen B(M) predicate. Coordinate first/second partial bounds, max-norm gradient bound, Euclidean √n M bound, and ordered-partial permutation invariance all match. No hidden restriction to a ball or stronger C∞ premise. |
| bpN:p1:hessian-convert | `hessian_convert`, Hessian:250 | PASS | Complex entry, bilinear, and Euclidean matrix-operator bounds use exactly Mc and n Mc on the full complex action neighbourhood; real Hessian bilinear bound holds on the full real action domain. Explicit analytic/reality and positive-radius inputs agree with the design and standing setting. Entry identification is supplied by existing `holo_real_c`. |
| bpN:p1:qc-convert (a)–(c) | `qc_convert`, QuasiConvex:33 | PASS | Exactly q=m/n, Bc=n Mc+q, μ=q/2, ℓ=wmin q/(8(Bc+q)); outputs only on B(0,R), with the QC premise on the larger real action domain. Frequency comparisons and conditional cone estimate match, with no full-space positive-definiteness assertion. Constants have precisely the stated dependencies. |
| bpN:p1:qc-convert scaling (b) | `qc_convert_tilde`, Period:314 | PASS | Positive 2π scaling of both frequency and Hessian transports the cone implication with (2πℓ,2πμ), as specified by D10/Appendix A. Existing period identities supply frequency/Hessian scaling; existing `tilde_hypotheses` supplies the surrounding scaling dictionary. |

Every new public declaration is listed. No public definition, abbreviation, structure, instance, or other assumed proof obligation is introduced.

## Proof and definition review

The C³ symmetry argument uses Schwarz for Df to exchange the first two arguments of D³f, and differentiates the eventual symmetry identity for D²f to exchange the last two. The latter uses differentiability of the iterated second derivative at the point and eventual C³ regularity, not unjustified global smoothness. The permutation closure argument preserves all directions. The k=1 and k=2 branches agree with the same ordering convention.

Hessian entries are obtained by differentiating evaluation of Dh at a constant basis vector, guarded by complex C² on an open domain. Each basis vector has max norm one. The bilinear bound is the existing coefficient estimate; the matrix operator bound tests against the conjugate of the actual matrix-vector product and handles its zero Euclidean norm separately. It uses a genuine operator bound, never a spectral-radius estimate. For the real bound, the locally constructed `Data n R s 0 h 0` uses the identically zero perturbation and explicitly proves its analytic, periodic, reality and size clauses. This is legitimate input to `holo_real_c`, not a conclusion-shaped hypothesis or an assumed restriction identity. Basis expansion then transports the full real bilinear form.

For QC conversion the max-norm coercivity becomes q times the Euclidean norm squared using euclid² ≤ n‖v‖∞² with n>0. Adding q to n Mc supplies the allowed bound Bc. The existing proved `conic_coercive` gives 5q/8, which implies μ=q/2. Nonzero frequency comes from the original QC field; the lower bound wmin only supplies the stated cone constant. The tilde theorem cancels the strictly positive factor 2π in the cone premise and multiplies the conclusion by the same factor.

**Definition classification:** no new `def`/`abbrev`/`structure`. Existing `realPart`, `frequencyMap`, `complexHessian`, and `euclid` are the actual restriction, coordinate derivative, second-coordinate derivative, and Euclidean coordinate norm. Existing `qcQ/qcB/qcMu/qcEll` are literal arithmetic formulas. Their total divisions are used only with n≥1 and positive denominators. No fallback, junk derivative, choice witness or empty-domain convention is used to manufacture an estimate. The partials and Hessian results permit n=0: coordinate conclusions are vacuous and norm/bilinear conclusions are zero; QC explicitly excludes n=0.

## Period preservation and quarantine

The Period delta contains only the QuasiConvex public import, the corresponding module documentation change, and the new theorem block. Removing exactly those three changes reconstructs `git show inp:KAM/Nekhoroshev/Interfaces/Period.lean` byte for byte. Thus all prior P1-4 definitions, private helpers, signatures and proof bodies are unchanged. The new dependency follows the binding design-audit-2 F5 staging: finished ConicCoercive → QuasiConvex → later Period extension; no cycle or premature staged import is introduced.

A recursive inspection of local KAM imports from the three modules found 40 project modules, including 19 frozen definition modules, **zero frozen theorem modules and zero provider modules**. Consequently there is no imported DRAFT_SORRY theorem, direct provider dependency, or frozen-theorem manifest-state exception to justify.

## Independent verification receipts

1. Targeted build:

```sh
LEAN_NUM_THREADS=1 /mnt/HC_Volume_106379410/orchestrator-tools/inp_lake_build.sh /root/code/KAM-inp-p13b KAM.Nekhoroshev.Interfaces.Hessian KAM.Nekhoroshev.Interfaces.QuasiConvex KAM.Nekhoroshev.Interfaces.Period
```

Exit 0. Gate: `[inp-gate] slot 2 acquired 04:23:10`. Output: `Build completed successfully (2906 jobs).` The gate runs `nice -n 5 lake build`. Only four pre-existing unused-variable warnings: hR/hs in `tildef_domain` (351) and `tildef_periodic` (367–368). No new-module warning, proof escape, or resource-budget override.

2. Signature / axiom probe:

```sh
LEAN_NUM_THREADS=1 nice -n 5 lake env lean .lake/abi-scratch/P13bAudit.lean
```

Exit 0, no signature errors or warnings. Each fresh theorem copied the complete design signature and used the matching explicit arguments in order: `partials hB hI`; `hessian_convert hR hs hh hH`; `qc_convert hn hR hs hm hMc hω hh hH hQC hmin`; and the same argument list for `qc_convert_tilde`. Exact axiom output:

```text
'KAM.Nekhoroshev.iteratedFDeriv_perm_of_contDiffAt_three' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Nekhoroshev.partials' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Nekhoroshev.hessian_convert' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Nekhoroshev.qc_convert' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Nekhoroshev.qc_convert_tilde' depends on axioms: [propext, Classical.choice, Quot.sound]
```

3. Kernel replay, one invocation for all three implementation modules:

```sh
LEAN_NUM_THREADS=1 nice -n 5 lake env leanchecker --verbose KAM.Nekhoroshev.Interfaces.Hessian KAM.Nekhoroshev.Interfaces.QuasiConvex KAM.Nekhoroshev.Interfaces.Period
```

Exit 0. Complete output:

```text
replaying KAM.Nekhoroshev.Interfaces.Period
replaying KAM.Nekhoroshev.Interfaces.QuasiConvex
replaying KAM.Nekhoroshev.Interfaces.Hessian
```

The command's output was temporarily redirected to `.lake/abi-scratch/P13bKernel.log`; that log and the signature probe were removed after recording these results.

4. Lint:

```sh
LEAN_NUM_THREADS=1 nice -n 5 sh scripts/lint_sources.sh
```

Exit 1 solely for the allowed generated-root mismatch; complete output:

```text
KAM.lean is out of date; run scripts/gen_root_imports.py
check_lean_modules: PASS (389 Lean files, 0 comparator configurations)
FROZEN-ANCHOR GUARD OK
ABI HASHES OK (144 frozen declarations)
```

Thus lint meets the brief's explicit exception; no generated file was repaired during this audit.

5. Static checks: `git diff --check inp...HEAD` exits 0, no output. `git diff inp...HEAD -- KAM/Frozen manifest KAM.lean README.md` exits 0, no output. No forbidden declaration, sorry, resource override or EuclideanSpace occurs in the new modules or inserted Period block. All three modules have the prescribed copyright/module/import/docstring/public-section structure and stay below 1500 lines. Root-import regeneration remains the orchestrator's task.

## Notes, errata and limitations

No new suspected frozen-statement, blueprint or pinned-source defect was found. The already documented Pos93 p.190 issue is visible at blueprint-N/parts/p1-interfaces.tex:117: “amounts to the spectral radius norm”. Complex symmetry does not imply normality: the displayed matrix [[1,i],[i,-1]] has square zero and nonzero operator norm. This package correctly uses the operator norm and needs no source repair. This is an existing documented issue, not a newly verified transcription of the scan.

The blueprint's Hessian lemma states its complex bounds before mentioning reality; the bundled Lean signature makes the standing analytic/reality inputs explicit for its real conclusion. These are the accepted design inputs, not an extra conclusion-shaped assumption. The scaling theorem deliberately implements the design's separate clause (b); it is not a claim that its own type repeats every part of the pre-existing scaling dictionary.

Audit execution note: the first lint command was started without an explicit LEAN_NUM_THREADS assignment or nice wrapper, and a signature probe was initially launched while that shell lint was still running. Inspection showed lint itself eventually invokes `lake env lean` for ABI checks. The probe and then the first lint run were interrupted (exit 130); neither supplies an acceptance receipt. The final lint/probe/replay runs use LEAN_NUM_THREADS=1, nice -n 5, and sequential execution. This execution correction does not change production code.

Only this report was edited; the audit scratch probe and kernel log were removed after recording receipts. No state-changing git command, frozen/generated edit, dependency edit, clean, update or cache fetch is performed. Acceptance is limited to these interface proofs; it does not close N-HEAD-C or any other frozen theorem.
