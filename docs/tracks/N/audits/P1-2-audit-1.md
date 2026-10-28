# P1-2 independent audit 1

Audit date: 2026-10-28. Worktree: `/root/code/KAM-inp-p12`. Audited HEAD: `f22add6d4d1d1681027f5c1b8575c12971251e66`.

## Scope and verdict

**Overall: PASS WITH NOTES for P1-2; no mathematical or proof-hygiene blocker found.** `bpN:p1:holo-real` and `bpN:p3:holo-input` pass. The notes concern consumer namespace coordination, the expected generated-root lint exception, and handoff bookkeeping. P1-2 implements `bpN:p1:holo-real` and `bpN:p3:holo-input`. It contains no provider export and seals no frozen theorem. Thus provider/frozen ABI equality and frozen seal-body probes are not applicable; a PASS here means the helper package is ready for integration, not N-HEAD-C proof closure.

I read AGENTS.md, PLAN, DECISIONS, the package audit brief and handoff, Track N's statement, the relevant frozen analytic/domain/field/frequency definitions and N theorem anchors, blueprint-N Parts 1 and 3, PART145's design and both design audits, and the Part 3 consumer design. The user's explicit report location overrides the generic brief's main-worktree output instruction.

The requested `git diff inp...HEAD` reports multiple merge bases and selects `9415aec0ff2ff12402d6556302a5ce5406aeb353`. Its complete delta is four added files (679 lines): Setting (47), Domains (142), Norms (123), HoloReal (367). The first three are inherited P1-1; I reviewed their public declarations too. `inp` resolved to `9cdffab5cb4e502284198f43df045f202bfd1a31` during comparison. The other merge base is `2e8ce68312489b670c68720fb57772ecb687011c`. The handoff's `git diff inp-p11...HEAD` was also inspected: its full diff includes unrelated intervening integration history, while its Interfaces delta is exactly HoloReal. The direct package commit is `f22add6` after input merge `fbe5bfb`.

## Declaration inventory

Names below are in `KAM.Nekhoroshev`. Line numbers refer to the named implementation file. PASS rows assess the actual declarations against the blueprint and approved design, not merely the names.

| Node | Declaration / locator | Verdict | Reason |
|---|---|---|---|
| p1:s-holo#data | `Data`, Setting:27 | PASS | Exactly R>0, s>0, frozen integrable membership, frozen perturbation membership; no hidden result premise. |
| p1:s-holo#data | `Wdom`, Setting:35 | PASS | Real phase cylinder with max-norm action ball of radius R+s. |
| p1:qc-convert | `qcQ`, Setting:40 | PASS | Literal m/n. |
| p1:qc-convert | `qcB`, Setting:41 | PASS | Literal n Mc + q. |
| p1:qc-convert | `qcMu`, Setting:42 | PASS | Literal q/2. |
| p1:qc-convert | `qcEll`, Setting:43 | PASS | Literal wmin q / (8(B+q)). |
| p1:norm-compare | `euclid`, Norms:31 | PASS | sqrt(sum of squared coordinate norms), uniformly over real/complex RCLike carriers. |
| p1:norm-compare(a) | `norm_le_euclid`, Norms:53 | PASS | Both comparisons and squared bound; n=0 included. |
| p1:norm-compare(b) | `modeSize_euclid_compare`, Norms:72 | PASS | Correct l2/l1 directions and sqrt(n) factor. |
| p1:norm-compare(b) | `lattice_ball_inclusions`, Norms:84 | PASS | Both inclusions, arbitrary real cutoff. |
| p1:norm-compare(c) | `bilinear_euclid_bound`, Norms:93 | PASS | Complex bilinear product, factor n M0; n=0 treated before deriving M0>=0. |
| p1:realdomain(a) | `realActionDomain_eq`, Domains:38 | PASS | Equality on all actions; radial witness R/(R+s) I uses strictly positive denominator. |
| p1:realdomain(a) | `isOpen_realActionDomain`, Domains:66 | PASS | Openness of the actual frozen domain. |
| p1:realdomain(a) | `ball_subset_realActionDomain`, Domains:71 | PASS | Inclusion of the radius-R ball. |
| p1:realdomain(a) | `isOpen_Wdom`, Domains:76 | PASS | Stronger: arbitrary R,s, as openness does not need positivity. |
| p1:realdomain(a) | `realInclusion₂_preimage_complexDomain`, Domains:80 | PASS | Exact preimage equality under positivity; real angles lie in positive strip. |
| p1:realdomain(b) | `isOpen_actionNbhd_ball`, Domains:95 | PASS | Stronger: arbitrary R,s; union of genuine complex max-norm balls. |
| p1:realdomain(b) | `isOpen_complexDomain`, Domains:104 | PASS | Stronger: arbitrary R,s; product openness. |
| p1:realdomain(b) | `realInclusion_preimage_actionNbhd`, Domains:107 | PASS | Literal frozen real-domain preimage, arbitrary R,s. |
| p1:realdomain(c) | `tube_subset`, Domains:112 | PASS | Max-norm tube witness; supplied radius inequalities imply required positivity. |
| p1:realdomain(c) | `tube_real`, Domains:120 | PASS | Stronger premises: omits irrelevant s; obtains strict 5R/8 and 3R/4 bounds. |
| p1:realdomain(d) | `complexStrip_mono`, Domains:133 | PASS | Pointwise strip inclusion for every n, arbitrary ordered widths. |
| p1:realdomain(d) | `complexStrip_zero`, Domains:137 | PASS | Empty-coordinate carrier gives universal singleton for every width. |
| p1:holo-real(a) | `holo_real_a`, HoloReal:191 | PASS | Holomorphy of h+f and complex smoothness on full frozen complex domains. Holomorphy of h is retained in hd.hh.1 (also follows from the smoothness conclusion). |
| p1:holo-real(b) | `holo_real_b`, HoloReal:200 | PASS | Real smoothness, reality and real-part identity, both all-order derivative identities; no restriction to low orders. |
| p1:holo-real(c) | `complexHessian`, HoloReal:231 | PASS | Exact ordered complex partial, not a new surrogate Hessian. |
| p1:holo-real(c) | `holo_real_c`, HoloReal:235 | PASS | Actual frozen Hamiltonian field with real inclusion; actual frequency gradient; real Hessian identity and complex symmetry. |
| p1:holo-real(d) | `holo_real_d`, HoloReal:299 | PASS | Whole integer shift, domain membership, H, DH, X_H and every iterated derivative; extra membership conclusion is useful and stronger. |
| p1:holo-real(e) | `holo_real_e`, HoloReal:338 | PASS | Forces the actual f to vanish on D_s and identifies actual H on W_s; no global-zero substitution. |
| p3:holo-input | `holo_input`, HoloReal:352 | PASS | Exactly smoothness, field identity and periodicity consumed by Part 3; derived from b,c,d. |

## Proof and definition checks

The only new P1-2 definition is `complexHessian`: it is literally `D( x ↦ Dh(x)[e_j] )(I)[e_i]` on its whole carrier. Like Lean's fderiv it is total on arbitrary h, but every theorem identifying it with a genuine Hessian proves holomorphic regularity at the evaluated points. No result relies on a nondifferentiable fallback. The proof at HoloReal:265–296 obtains differentiability of the jth complex partial, proves it real at real points from the frequency identity, differentiates the real restriction, and proves symmetry using complex holomorphic regularity. It does not conflate the ordered arguments or assume the desired Hessian identity.

Inherited definitions are classified as follows: `Data` is a source-premise bundle; `Wdom` a literal domain; `euclid` a genuine norm formula; `qcQ`, `qcB`, `qcMu`, `qcEll` explicit arithmetic constants. Real division at n=0 or zero denominators is Lean's total arithmetic, not an assertion of positive conversion constants: the blueprint's quantitative conversion regime has n>=1 and positive parameters, and P1-2 never uses these four constants. There are no new abbrevs, instances, alternate solution predicates, or other structures.

The all-order private lemma (HoloReal:52–89) uses local equality on an open real domain, composition by the real linear inclusion, and restriction of scalars for iterated derivatives. It handles k=0 as well as positive orders. HoloReal:103–110 obtains complex C-infinity from holomorphy, rather than upgrading the frozen real C3 guard by assumption. All finite-dimensional requirements are met by finite coordinate spaces and their product. The private first-derivative restriction lemma uses uniqueness of derivatives after local equality, so its imaginary-part assertion is proved, not discarded by taking a real part.

Frozen clauses are used as intended: `hh.1` supplies holomorphy; `hh.2.2.2.1` reality of h; `hf.2.1` holomorphy of f; `hf.2.2.2.1` integer angle periodicity; `hf.2.2.2.2.1` reality of f; `hf.2.2.2.2.2` its pointwise bound. The boundary-continuity/value-bound and real-C3 clauses are retained source assumptions but are not needed for these elementary consequences. The periodic derivative proof differentiates a local equality on open W_s and translation has identity derivative. The zero branch uses norm<=0 exactly on the complex domain.

## Verification receipts

All commands ran from `/root/code/KAM-inp-p12`. Every Lean/Lake/checker invocation in this audit used `LEAN_NUM_THREADS=1`, `nice -n 5`, default heartbeat/recursion limits, and ran serially. No clean/update/cache operation was used.

### Targeted build

```sh
LEAN_NUM_THREADS=1 /mnt/HC_Volume_106379410/orchestrator-tools/inp_lake_build.sh /root/code/KAM-inp-p12 KAM.Nekhoroshev.Interfaces.HoloReal KAM.Nekhoroshev.Interfaces.Norms
```

Exit 0. The gate script invokes `nice -n 5 lake build`. Exact output after waiting for a slot:

```text
[inp-gate] slot 1 acquired 01:37:33 for KAM.Nekhoroshev.Interfaces.HoloReal KAM.Nekhoroshev.Interfaces.Norms
✔ [2898/2898] Built KAM.Nekhoroshev.Interfaces.Norms (2.8s)
Build completed successfully (2898 jobs).
```

HoloReal and its dependencies were current according to Lake; Norms was built. This is a targeted cached-dependency build, not a library rebuild.

### Signature application probes and axioms

Scratch `.lake/abi-scratch/P12Audit.lean` imported only HoloReal and Norms, copied the six exact theorem statement telescopes from PART145-LEAN-DESIGN Appendix D.3 under `example`, and supplied `by exact <corresponding theorem> hd`. No design sorry bodies were imported or compiled. All six examples elaborated with no diagnostics. The same probe queried `#print axioms` for all 22 new public theorems in the requested four-file diff.

```sh
LEAN_NUM_THREADS=1 nice -n 5 lake env lean .lake/abi-scratch/P12Audit.lean > .lake/abi-scratch/P12Audit.probe.log 2>&1
```

Exit 0. Exact output:

```text
'KAM.Nekhoroshev.realActionDomain_eq' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Nekhoroshev.isOpen_realActionDomain' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Nekhoroshev.ball_subset_realActionDomain' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Nekhoroshev.isOpen_Wdom' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Nekhoroshev.realInclusion₂_preimage_complexDomain' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Nekhoroshev.isOpen_actionNbhd_ball' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Nekhoroshev.isOpen_complexDomain' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Nekhoroshev.realInclusion_preimage_actionNbhd' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Nekhoroshev.tube_subset' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Nekhoroshev.tube_real' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Nekhoroshev.complexStrip_mono' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Nekhoroshev.complexStrip_zero' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Nekhoroshev.norm_le_euclid' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Nekhoroshev.modeSize_euclid_compare' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Nekhoroshev.lattice_ball_inclusions' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Nekhoroshev.bilinear_euclid_bound' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Nekhoroshev.holo_real_a' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Nekhoroshev.holo_real_b' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Nekhoroshev.holo_real_c' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Nekhoroshev.holo_real_d' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Nekhoroshev.holo_real_e' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Nekhoroshev.holo_input' depends on axioms: [propext, Classical.choice, Quot.sound]
```

### Kernel replay

```sh
LEAN_NUM_THREADS=1 nice -n 5 lake env leanchecker --verbose KAM.Nekhoroshev.Interfaces.HoloReal KAM.Nekhoroshev.Interfaces.Setting KAM.Nekhoroshev.Interfaces.Domains KAM.Nekhoroshev.Interfaces.Norms > .lake/abi-scratch/P12Audit.checker.log 2>&1
```

One invocation, exit 0. Exact output:

```text
replaying KAM.Nekhoroshev.Interfaces.Norms
replaying KAM.Nekhoroshev.Interfaces.Domains
replaying KAM.Nekhoroshev.Interfaces.Setting
replaying KAM.Nekhoroshev.Interfaces.HoloReal
```


### Lint

```sh
LEAN_NUM_THREADS=1 nice -n 5 sh scripts/lint_sources.sh > .lake/abi-scratch/P12Audit.lint.log 2>&1
```

Exit 1 solely for the expected generated-root exception explicitly allowed by the audit brief. Exact output:

```text
KAM.lean is out of date; run scripts/gen_root_imports.py
check_lean_modules: PASS (320 Lean files, 0 comparator configurations)
FROZEN-ANCHOR GUARD OK
ABI HASHES OK (144 frozen declarations)
```

The module check, frozen-anchor guard and all 144 elaborated ABI hashes pass. I did not regenerate the read-only generated root.


### Static hygiene and integrity

- All four files have copyright, `module`, public imports, module docstrings, exposed public noncomputable sections, and remain below 1500 physical lines (47/142/123/367 respectively).
- Code scan found no sorry/admit/axiom/unsafe/opaque/resource override in the four added files. Coordinate carriers use finite function spaces; no EuclideanSpace occurs in code.
- Recursive inspection of the imports traversed 32 KAM modules and found no provider or frozen-theorem imports, including transitive imports.
- `git diff inp...HEAD -- KAM/Frozen manifest KAM.lean README.md`: empty stdout, exit 0; only Git's multiple-merge-base warning on stderr.
- `git diff --check inp...HEAD`: exit 0, no whitespace errors (same Git warning only).

Audited file SHA256 values:

```text
604326c5f2410672037d2cc87f1d3030111d1d47c5b832f3c4997673b3f1bdb4  KAM/Nekhoroshev/Interfaces/Domains.lean
45d5ad924d41a0b9f7f7048dbb8aad7169ddf65a7878642e150d74b82f9ac1de  KAM/Nekhoroshev/Interfaces/HoloReal.lean
e633e039201c5ff08cee8ed85e3b04e48aa29ac76741e448ab8a00414e19af76  KAM/Nekhoroshev/Interfaces/Norms.lean
6eb682765fd313ae01f7ed94fdc1f1ae39c8814f275b9e70d705cf94d7220497  KAM/Nekhoroshev/Interfaces/Setting.lean
```


## Notes, uncertainties, and suspected defects

1. **Consumer coordination (nonblocking for P1-2).** PART3-LEAN-DESIGN.md:74 still advertises `KAM.Nekhoroshev.ODE.Data`; its package row at :309 expects `Nekhoroshev/ODE/Specialization`. PART145-design-audit-2's existing coordination note explicitly requires using the single owners in `KAM.Nekhoroshev` or providing forwarding names, never a second Data structure. This checkout has no production `KAM/Nekhoroshev/ODE/` directory. Therefore I certify the delivered interface type, not a completed N3-10b integration/build. Consumers should import Interfaces.HoloReal and use the shared Data/Wdom/holo_input names. This is the design's declared migration, not a new premise or a package proof gap.
2. **Handoff line count.** The handoff says “365 lines”; the actual audited HoloReal file has 367 physical lines. This is bookkeeping only.
3. **No new source or blueprint mathematical defect found.** No pinned PDF was needed to resolve a disputed external claim: the audited nodes are the blueprint's elementary packaging of already formalized complex regularity and scalar restriction. This is not a fresh independent PDF audit of BM11 or Pöschel. Previously recorded route/source issues elsewhere are not resolved by this package.
4. **No deviations introduced.** I changed no Lean source, frozen file, manifest, generated file, graph, or git state. The only persistent authored repository file is this report. Scratch sources and logs are removed after their receipts are embedded below.

## Closeout

Final verdict: **PASS WITH NOTES**. The helper theorems are proved and kernel-replayed, their six interface signatures elaborate exactly as specified in the design, and no frozen seal is claimed. No material correction block is required. All required checks are complete, with only the audit brief's permitted stale-root lint exception. The report is at the user's exact absolute path in the package worktree.

Scratch cleanup removed P12Audit.lean and its three log files. HEAD and all four audited source hashes were rechecked unchanged. Final status contains only the new audit report and the pre-existing untracked handoff. Report whitespace and placeholder checks pass.
