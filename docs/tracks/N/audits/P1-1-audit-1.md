# P1-1 independent proof audit 1

Verdict: **PASS WITH NOTES** for package P1-1. All three interface nodes and the numerical definitions pass. No material statement, definition, proof, or hypothesis defect was found. This is infrastructure acceptance; there is no frozen theorem anchor or provider in this package, so no anchor is declared seal-ready and no Nekhoroshev headline is closed.

Audited 2026-10-28 in `/root/code/KAM-inp-p11`, HEAD `2e8ce68312489b670c68720fb57772ecb687011c`. Comparison: `git diff inp...HEAD`; observed inp `9415aec0ff2ff12402d6556302a5ce5406aeb353`, merge base `738b078efc07a743392b02cbb09909b8697fcabc`. The diff adds exactly Norms.lean (123 lines), Setting.lean (47), Domains.lean (142), under `KAM/Nekhoroshev/Interfaces/`.

Read AGENTS.md, PLAN, DECISIONS, the package audit brief, P1-1-handoff, PART145-LEAN-DESIGN including its binding audit-2 notes, both design audits, blueprint-N Part 1 and the relevant Part 4 zero-dimensional convention, track N statement conventions, and all frozen definitions actually used by this package. The explicit user destination overrides the generic brief's main-worktree report destination. No production source or git state was changed. No agents were delegated.

## Declaration inventory

All names below have prefix `KAM.Nekhoroshev`. Locations refer to the three files named above. Each of the 16 public theorem headers, all six def bodies and the Data structure match the current design Appendix A after ignoring whitespace. The handoff's “all 20 declarations” is a nonblocking count error: there are **23 authored public declarations**, plus five private proof helpers; generated structure declarations are covered by Data.

| Blueprint node | Declaration and location | Verdict | Reason |
|---|---|---|---|
| p1:norm-compare | euclid — Norms:31 | PASS | Coordinate Euclidean size, valid also on Fin 0. |
| p1:norm-compare(a) | norm_le_euclid — Norms:53 | PASS | Both max/Euclidean inequalities and squared bound, all n, real or complex. |
| p1:norm-compare(b) | modeSize_euclid_compare — Norms:72 | PASS | Actual Fourier l1 size; correct sqrt(n) constants. |
| p1:norm-compare(b) | lattice_ball_inclusions — Norms:84 | PASS | Both inclusion directions agree with blueprint Part 1:37–38; arbitrary real cutoff. |
| p1:norm-compare(c) | bilinear_euclid_bound — Norms:93 | PASS | Complex bilinear double sum, coefficient n M0; no Hermitian substitution or positivity premise. |
| p1:s-holo#data | Data — Setting:27 | PASS | Only R,s positivity and the two original frozen analytic predicates. |
| p1:s-holo#data | Wdom — Setting:35 | PASS | All real angles times max-norm ball of radius R+s. |
| p1:qc-convert constants | qcQ — Setting:40 | PASS | m/n. |
| p1:qc-convert constants | qcB — Setting:41 | PASS | n Mc + q. |
| p1:qc-convert constants | qcMu — Setting:42 | PASS | q/2. |
| p1:qc-convert constants | qcEll — Setting:43 | PASS | wmin q / (8 (Bc+q)). |
| p1:realdomain(a) | realActionDomain_eq — Domains:38 | PASS | Equality of literal real preimage and ball, R,s>0. |
| p1:realdomain(a) | isOpen_realActionDomain — Domains:66 | PASS | Openness of that same set. |
| p1:realdomain(a) | ball_subset_realActionDomain — Domains:71 | PASS | Original action ball is contained in real tube. |
| p1:realdomain(a) | isOpen_Wdom — Domains:76 | PASS | Stronger: no positivity needed for openness. |
| p1:realdomain(a) | realInclusion₂_preimage_complexDomain — Domains:80 | PASS | Genuine real-slice identity, with angles first. |
| p1:realdomain(b) | isOpen_actionNbhd_ball — Domains:95 | PASS | Stronger: arbitrary R,s; union of complex open balls. |
| p1:realdomain(b) | isOpen_complexDomain — Domains:104 | PASS | Stronger: arbitrary R,s; product of open factors. |
| p1:realdomain(b) | realInclusion_preimage_actionNbhd — Domains:107 | PASS | Unconditional definitional identity. |
| p1:realdomain(c) | tube_subset — Domains:112 | PASS | Max-norm tube, exact s/2 and R/8 bounds and witness J. |
| p1:realdomain(c) | tube_real — Domains:120 | PASS | Stronger: needs neither s nor explicit r0>0; proves strict bounds at 5R/8 and 3R/4. |
| p1:realdomain(d) | complexStrip_mono — Domains:133 | PASS | Inclusion for arbitrary ordered real widths. |
| p1:realdomain(d) | complexStrip_zero — Domains:137 | PASS | Universal singleton at n=0, even for nonpositive width. |

## Definition classification and refutation checks

`euclid` is exactly sqrt(sum of squared coordinate norms), with the original Pi maximum norm unchanged. Its private helpers are nonnegativity, square identity and the two Cauchy–Schwarz sum estimates. The matrix proof first separates n=0; for n>0 it derives M0>=0 from an actual entry. Thus its all-n statement does not silently require an entry of an empty matrix, or an extra nonnegative-bound hypothesis.

`Data` is a Prop structure of standing data, not an assumption of a target estimate. It preserves all frozen analytic clauses, including continuity on closures, the existential value bound for h, realness, periodicity, perturbation smallness and the redundant real C3 guard. It contains no Hessian conversion, quasi-convexity conclusion, flow existence, confinement, or numerical output as an assumed field. It does not introduce a second ODE-specific Data structure.

`Wdom` is the literal total set `univ ×ˢ ball 0 (R+s)`. Its identification with real points of the complex domain is proved under R,s>0. Unconditional openness does not assert that identification outside those hypotheses.

`qcQ`, `qcB`, `qcMu`, `qcEll` are transparent arithmetic definitions with precisely the dependencies in blueprint-N/parts/p1-interfaces.tex:148–150. Lean's total division gives values when a denominator vanishes; the intended quasi-convexity use is restricted by the blueprint to n>=1 and positive m,Mc,wmin. No theorem here uses zero-denominator values to obtain an analytic estimate or claims positivity outside that regime. These are arithmetic extensions, with no choice, branch or substitute mathematical object. The qc-convert theorem itself is outside P1-1.

The domain proofs use the actual frozen actionNbhd witness and componentwise real inclusion. The reverse real-domain inclusion uses J=R/(R+s) I with a positive denominator; the complex tube witness has norm at most R/2<R. In tube_real, existence of the strict tube witness already forces r0>0 and hence R>0, so the weaker signature is sound. Fin 0 and negative matrix bound behavior were checked separately in a sorry-free probe. No extra premises, widened constant dependencies or weakened conclusions were found.

## Independent verification receipts

All Lean-related invocations were sequential in this audit, with `LEAN_NUM_THREADS=1`, `nice -n 5`, and default resource budgets. Builds ran through the required compile gate. Existing overlay artifacts were reused; no clean, update, cache fetch, package edit or full-library build was requested.

```sh
LEAN_NUM_THREADS=1 /mnt/HC_Volume_106379410/orchestrator-tools/inp_lake_build.sh /root/code/KAM-inp-p11 KAM.Nekhoroshev.Interfaces.Norms
# [inp-gate] slot 1 acquired 01:22:26 for KAM.Nekhoroshev.Interfaces.Norms
# Build completed successfully (2009 jobs). Exit 0.
LEAN_NUM_THREADS=1 /mnt/HC_Volume_106379410/orchestrator-tools/inp_lake_build.sh /root/code/KAM-inp-p11 KAM.Nekhoroshev.Interfaces.Domains
# [inp-gate] slot 1 acquired 01:22:43 for KAM.Nekhoroshev.Interfaces.Domains
# Build completed successfully (2863 jobs). Exit 0.
```

The Domains target includes Setting. The gate invokes `nice -n 5 lake build <Module>` internally, one targeted module per invocation. The reported job totals include cached dependency jobs.

```sh
LEAN_NUM_THREADS=1 nice -n 5 lake env lean .lake/abi-scratch/P11Audit.lean
```

Exit 0. The probe imports Norms and Domains, runs `#print axioms` on **every one of the 23 inventory declarations**, and proves the empty-dimensional Euclidean-size, bilinear-sum and strip checks. For each declaration, the exact output form is:

```text
'KAM.Nekhoroshev.<declaration>' depends on axioms: [propext, Classical.choice, Quot.sound]
```

Every inventory name produced exactly this axiom list; there was no sorryAx or additional axiom, and no diagnostic from the three examples. Provider=frozen-type and seal-body probes are **not applicable**: this design explicitly has no frozen Part-1 theorem and the package supplies no provider or seal body.

```sh
LEAN_NUM_THREADS=1 nice -n 5 lake env leanchecker --verbose KAM.Nekhoroshev.Interfaces.Norms KAM.Nekhoroshev.Interfaces.Setting KAM.Nekhoroshev.Interfaces.Domains
```

Exit 0. Complete output:

```text
replaying KAM.Nekhoroshev.Interfaces.Domains
replaying KAM.Nekhoroshev.Interfaces.Setting
replaying KAM.Nekhoroshev.Interfaces.Norms
```

One checker invocation replayed all three package modules.

```sh
LEAN_NUM_THREADS=1 nice -n 5 sh scripts/lint_sources.sh
```

Exit 1 solely for the permitted stale generated-root exception. Complete output:

```text
KAM.lean is out of date; run scripts/gen_root_imports.py
check_lean_modules: PASS (315 Lean files, 0 comparator configurations)
FROZEN-ANCHOR GUARD OK
ABI HASHES OK (144 frozen declarations)
```

All remaining lint checks pass, including frozen bytes and elaborated ABI. The generated root was left untouched as required.

Static checks: `git diff --check inp...HEAD` exits 0 with no output; `git diff inp...HEAD -- KAM/Frozen manifest KAM.lean README.md` is empty. All files have copyright, module, public imports, module docstring and exposed public noncomputable section; lengths are 123/47/142, below 1500. Recursive source traversal found 25 KAM modules in the import closure and **no provider or frozen theorem imports**, including transitively. All five private helpers were source-reviewed and are covered by kernel replay; no forbidden proof escape, resource-budget override or EuclideanSpace carrier was introduced.

## Notes, errata and limits

1. Correct only the handoff inventory count, if updating that document: “23 public declarations (16 theorems, six definitions and one structure).” This does not require a Lean change.
2. Round-2 consumer instruction R2-02 concerns three-block flow reality transport and R2-03 concerns coefficient-width wording; neither is implemented or relied on here. The round-1 F5 ownership repair is implemented: qc constants are in Setting, with no late QuasiConvex dependency. The Data/Wdom common ownership is likewise respected. No claim is made that downstream Part-3 migration or flow transport has been completed.
3. No new suspected blueprint or pinned-source defect was found. The package's elementary norm/domain arguments are proved directly; no external source theorem is used as an assumed leaf. No source PDF verification was needed for a quotation-dependent mathematical import. No introduced mathematical deviation was found; the stronger signatures are listed above.
4. Acceptance covers this package only. Numerical constants being defined does not prove qc-convert; domain and norm infrastructure does not seal N-HEAD-C, N-ZERO or N-QC.
