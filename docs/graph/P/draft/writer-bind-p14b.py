"""Writer post-processing of the track-P pre-extraction draft (SPEC "Change log", 2026-10-27).

1. Part 14b anchors: the pre-extraction binds anchors in Part 0 only. Part 14b transcribes the P-SECULAR-BOX objects
   (Definitions sb-defs, sb-box, sb-regular, the prose of sb-conv L26-L29) and states the two theorems. Split and bind
   them exactly like Part-0 definition/theorem anchors (identity copied from the manifest).
2. Part 7 \frozen tags with unqualified names (unresolved by the pre-extraction): candidate DEPS to the anchors.
3. P-FIXED (bpP:p0:fixed) is deferred: its block is parked in deferred-p0-fixed.md, its coverage item EXCLUDED.
usage: python3 -I p_bind.py ROOT DRAFT_DIR
"""
import json
import re
import sys
from pathlib import Path

root, draft = Path(sys.argv[1]), Path(sys.argv[2])
man = {e["export"]: e for e in json.loads((root / "manifest/frozen-anchors.json").read_text())["anchors"]}
P14 = "blueprint-P/parts/p14b-secular-box.tex"
P7 = "blueprint-P/parts/p7-kepler-poincare.tex"


def blocks(text, key):
    return [b.strip("\n") for b in re.split(r"\n\s*\n(?=" + key + ": )", text.strip()) if b.strip()]


def get(b, k):
    m = re.search(r"^" + k + r": (.*)$", b, re.M)
    return m.group(1) if m else None


def put(b, k, v):
    return re.sub(r"^" + k + r": .*$", lambda _: f"{k}: {v}", b, count=1, flags=re.M)


def bind(b, export):
    e = man[export]
    for k, v in (("CONTRACT_ID", e["contract"]["id"]), ("CONTRACT_VERSION", e["contract"]["version"]),
                 ("FROZEN_FILE", e["path"]), ("FROZEN_DECL", e["export"]), ("FROZEN_ANCHOR_ID", e["id"]),
                 ("FROZEN_ABI_SHA256", e["abi_sha256"])):
        b = put(b, k, str(v))
    return b


def short(x):
    return x.split(".")[-1]


SPLIT = {  # label -> exports (Part 14b definition environments)
    "bpP:p14:sb-defs": ["KAM.Planetary.secularIntegrand", "KAM.Planetary.exactSecularHamiltonian",
                        "KAM.Planetary.ellipsePhase", "KAM.Planetary.ellipsePosition",
                        "KAM.Planetary.ellipseMomentum", "KAM.Planetary.longitudeJacobian"],
    "bpP:p14:sb-box": ["KAM.Planetary.SecularInputBox", "KAM.Planetary.jupiterSaturnWeights"],
    "bpP:p14:sb-regular": ["KAM.Planetary.SecularRegular"],
}
THEOREMS = {"bpP:p14:sb-safety": "KAM.Planetary.secularBoxSafety",
            "bpP:p14:sb-cited": "KAM.Planetary.secularBoxAtCitedMasses"}
PROSE = [("KAM.Planetary.secularGamma", 26), ("KAM.Planetary.secularAMD", 26), ("KAM.Planetary.secularRoot", 26),
         ("KAM.Planetary.secularEccVector", 27), ("KAM.Planetary.secularAxis", 27),
         ("KAM.Planetary.orbitalUnit", 27), ("KAM.Planetary.quarterTurn", 29)]
ALIAS = {lab: [f"{lab}#{short(x)}" for x in xs] for lab, xs in SPLIT.items()}
for x, _ in PROSE:
    ALIAS.setdefault("_prose", []).append(f"bpP:p14:sb-conv#{short(x)}")
ANCHOR_OF = {short(x): nid for lab, xs in SPLIT.items() for x, nid in zip(xs, ALIAS[lab])}
ANCHOR_OF.update({short(x): f"bpP:p14:sb-conv#{short(x)}" for x, _ in PROSE})

# --- Part 14b nodes
f = draft / "p14b.md"
out = []
for b in blocks(f.read_text(), "NODE"):
    nid = get(b, "NODE")
    if nid in SPLIT:
        for x, new in zip(SPLIT[nid], ALIAS[nid]):
            nb = put(b, "NODE", new)
            nb = put(nb, "TITLE", f"{get(b, 'TITLE')}: {x}")
            out.append(bind(nb, x))
        continue
    if nid in THEOREMS:
        b = bind(b, THEOREMS[nid])
    out.append(b)
template = next(b for b in out if get(b, "NODE") == ALIAS["bpP:p14:sb-regular"][0])
prose_blocks = []
for x, ln in PROSE:
    nb = put(template, "NODE", f"bpP:p14:sb-conv#{short(x)}")
    nb = put(nb, "TITLE", f"prose transcription: {x}")
    nb = put(nb, "STATEMENT_SOURCE", f"{P14}#bpP:p14:sb-conv@L{ln}-L{ln}")
    nb = put(nb, "DEPS", "-")
    nb = re.sub(r"^EDGE: .*\n", "", nb, flags=re.M)
    nb = put(nb, "NOTE", "frozen definition transcribed in unlabelled Part-14b prose (\\texttt name, no \\frozen tag); "
                         "anchor bound by the SPEC (writer post-processing p_bind.py)")
    prose_blocks.append(bind(nb, x))
# keep statement order: prose anchors (L26-L29) before sb-defs (L47)
first_def = next(i for i, b in enumerate(out) if get(b, "NODE") == ALIAS["bpP:p14:sb-defs"][0])
out = out[:first_def] + prose_blocks + out[first_def:]


def retarget(b):
    """Replace a dependency on a split label by its split anchors (one EDGE each)."""
    deps = get(b, "DEPS")
    if not deps or deps == "-":
        return b
    ds = [d.strip() for d in deps.split(",")]
    if not any(d in ALIAS for d in ds):
        return b
    nd = []
    for d in ds:
        nd += ALIAS.get(d, [d])
    nd = list(dict.fromkeys(x for x in nd if x != get(b, "NODE")))
    b = put(b, "DEPS", ", ".join(nd))
    lines = []
    for line in b.split("\n"):
        m = re.match(r"EDGE: (\S+) \| (.*)$", line)
        if m and m.group(1) in ALIAS:
            for t in ALIAS[m.group(1)]:
                if t != get(b, "NODE"):
                    lines.append(f"EDGE: {t} | {m.group(2)}")
        else:
            lines.append(line)
    return "\n".join(lines)


def add_dep(b, tgt, loc, why):
    deps = get(b, "DEPS")
    ds = [] if deps in (None, "-") else [d.strip() for d in deps.split(",")]
    if tgt in ds:
        return b
    ds.append(tgt)
    b = put(b, "DEPS", ", ".join(ds))
    edge = f"EDGE: {tgt} | {loc} | {why}"
    lines = b.split("\n")
    i = max([k for k, l in enumerate(lines) if l.startswith("EDGE: ")] or
            [next(k for k, l in enumerate(lines) if l.startswith("ROUTE_FOR: "))])
    lines.insert(i + 1, edge)
    return "\n".join(lines)


out = [retarget(b) for b in out]
f.write_text("\n\n".join(out) + "\n")

# --- every other part: retarget split labels; Part 7 unqualified \frozen names
P0 = {"keplerEnergy": "bpP:p0:d25-kepler#keplerEnergy", "keplerAxis": "bpP:p0:d25-kepler#keplerAxis",
      "keplerAction": "bpP:p0:d25-kepler#keplerAction", "planeCross": "bpP:p0:d25-cross#planeCross"}
P7FROZEN = {"bpP:p7:kepler-data": ["keplerEnergy", "keplerAxis", "keplerAction", "planeCross"],
            "bpP:p7:poincare-def": ["secularEccVector", "secularRoot", "secularGamma", "secularAxis",
                                    "ellipsePosition", "ellipseMomentum", "longitudeJacobian"]}
for g in sorted(draft.glob("p*.md")):
    if g.name == "p14b.md":
        continue
    bs = blocks(g.read_text(), "NODE")
    nb = []
    for b in bs:
        b = retarget(b)
        nid = get(b, "NODE")
        if nid in P7FROZEN:
            x0, y0 = map(int, re.search(r"@L(\d+)-L(\d+)", get(b, "STATEMENT_SOURCE")).groups())
            src = (root / P7).read_text().split("\n")
            loc_line = next(k for k in range(x0, y0 + 1) if "\\frozen{" in src[k - 1])
            for name in P7FROZEN[nid]:
                tgt = P0.get(name) or ANCHOR_OF[name]
                b = add_dep(b, tgt, f"{P7}#{nid}@L{loc_line}-L{loc_line}",
                            f"this result carries \\frozen{{{name}}} (a statement about it; writer post-processing)")
        nb.append(b)
    g.write_text("\n\n".join(nb) + "\n")

# --- P-FIXED deferred
f0 = draft / "p0.md"
bs = blocks(f0.read_text(), "NODE")
fixed = [b for b in bs if get(b, "NODE") == "bpP:p0:fixed"]
assert len(fixed) == 1
(draft / "deferred-p0-fixed.md").write_text(fixed[0] + "\n")
bs = [b for b in bs if get(b, "NODE") != "bpP:p0:fixed"]
for b in bs:
    assert "bpP:p0:fixed" not in (get(b, "DEPS") or ""), get(b, "NODE")
f0.write_text("\n\n".join(bs) + "\n")

# --- coverage
c0 = draft / "coverage-p0.md"
items = blocks(c0.read_text(), "ITEM")
for i, it in enumerate(items):
    if get(it, "ITEM") == "bpP:p0:fixed":
        it = put(it, "DISPOSITION", "EXCLUDED")
        it = put(it, "REASON", "P-FIXED (fixedSunPlanetaryKAM) is not a root of this graph version: its general-n proof "
                               "needs Parts 11a-4/11a-5 (being written); a later SPEC revision adds the root, Parts 11, "
                               "11a-*, 13 and restores the parked block draft/deferred-p0-fixed.md")
        it = put(it, "EXTRACTOR", "claude-suborch-INP")
        items[i] = it
c0.write_text("\n\n".join(items) + "\n")
c14 = draft / "coverage-p14b.md"
items = blocks(c14.read_text(), "ITEM")
new = []
for it in items:
    lab = get(it, "ITEM")
    if lab in ALIAS and lab != "_prose":
        for a in ALIAS[lab]:
            new.append(put(put(it, "ITEM", a), "DISPOSITION", f"NODE {a}"))
        continue
    new.append(it)
k = next(i for i, it in enumerate(new) if get(it, "ITEM") == ALIAS["bpP:p14:sb-defs"][0])
pro = []
for x, ln in PROSE:
    a = f"bpP:p14:sb-conv#{short(x)}"
    pro.append(f"ITEM: {a}\nKIND: definition\nSOURCE: {P14}#bpP:p14:sb-conv@L{ln}-L{ln}\nDISPOSITION: NODE {a}\n"
               f"REASON: frozen definition transcribed in Part-14b prose (SPEC binding)\nCOVERAGE_STATUS: PROPOSED\n"
               f"EXTRACTOR: claude-suborch-INP\nREVIEWER: -")
c14.write_text("\n\n".join(new[:k] + pro + new[k:]) + "\n")
print("bound", sum(len(v) for v in ALIAS.values()), "Part-14b definition anchors and", len(THEOREMS),
      "theorem anchors; P-FIXED parked")
