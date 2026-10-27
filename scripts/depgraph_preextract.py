#!/usr/bin/env python3
"""Mechanical first pass of the source dependency graph of a LaTeX blueprint.

usage: depgraph_preextract.py --root REPO --parts blueprint/parts/p0.tex,... --manifest manifest/frozen-anchors.json
                              --out DIR [--anchor-part p0]

Reads the blueprint only, never Lean. For every labelled result environment, labelled external-input item
(`bp:<part>:ext-*`) and `\\proofstep`, it writes a draft node with exact line locators and candidate DEPS read from
the `\\ref`/`\\eqref`/`\\hyperref` commands in the node's own text. Part 0's `\\frozen{...}` definitions become one
node per frozen declaration, bound to the manifest. A result elsewhere whose `\\frozen{...}` names a frozen theorem
becomes a candidate dependency of that theorem's anchor node.

The draft is input for extraction workers. They confirm or correct every edge and fill the source-statement fields
(left as TODO here). Writes DIR/nodes.json, DIR/<part>.md (node blocks) and DIR/coverage-<part>.md (inventory).
"""
import argparse
import json
import re
from pathlib import Path

RESULT_ENVS = ("theorem", "proposition", "lemma", "corollary", "definition", "assumption", "remark")
BEGIN = re.compile(r"\\begin\{(" + "|".join(RESULT_ENVS) + r")\}(?:\[(.*)\])?")
LABEL = re.compile(r"\\label\{([^}]+)\}")
REF = re.compile(r"\\(?:ref|eqref|cref|Cref|autoref)\{([^}]+)\}|\\hyperref\[([^\]]+)\]")
SECTION = re.compile(r"\\(?:sub)*section\*?\{")
FROZEN = re.compile(r"\\frozen\{")
SOURCEGAP = re.compile(r"\\sourcegap\{")
SOURCE = re.compile(r"\\source\{")


def braced(text, start):
    """Return the contents of the brace group opening at text[start] == '{'."""
    depth = 0
    for i in range(start, len(text)):
        if text[i] == "{":
            depth += 1
        elif text[i] == "}":
            depth -= 1
            if depth == 0:
                return text[start + 1:i]
    return text[start + 1:]


def ascii_id(name):
    return name.replace("ℂ", "C").translate(str.maketrans("₀₁₂₃₄₅₆₇₈₉", "0123456789"))


def parse_part(path, rel):
    lines = path.read_text(encoding="utf-8").split("\n")
    n = len(lines)
    results, steps, externals, labels, sections, gaps, sources, frozen = [], [], [], {}, [], [], [], []
    i = 0
    last_result = None
    while i < n:
        line = lines[i]
        m = BEGIN.search(line)
        if m and not line.lstrip().startswith("%"):
            env = m.group(1)
            j = i
            while j < n and f"\\end{{{env}}}" not in lines[j]:
                j += 1
            lab = None
            for k in range(i, min(i + 2, j + 1)):
                lm = LABEL.search(lines[k])
                if lm:
                    lab = lm.group(1)
                    break
            title = (m.group(2) or "").strip()
            r = dict(kind=env, label=lab, title=title, first=i + 1, last=j + 1, proof=None, file=rel)
            text = "\n".join(lines[i:j + 1])
            for fm in FROZEN.finditer(text):
                names = [x.strip().replace("\\_", "_") for x in braced(text, fm.end() - 1).split(",")]
                r["frozen"] = [x for x in names if x]
            results.append(r)
            last_result = r
            i = j + 1
            continue
        if line.startswith("\\begin{proof}"):
            owner = last_result["label"] if last_result else None
            om = re.match(r"\\begin\{proof\}\[[^\]]*?\\ref\{([^}]+)\}", line)
            if om:
                owner = om.group(1)
            j = i
            while j < n and "\\end{proof}" not in lines[j]:
                j += 1
            proof = dict(owner=owner, first=i + 1, last=j + 1, file=rel)
            # steps inside
            starts = [k for k in range(i, j + 1) if "\\proofstep{" in lines[k]]
            for idx, k in enumerate(starts):
                end = (starts[idx + 1] - 1) if idx + 1 < len(starts) else j - 1
                while end > k and not lines[end].strip():
                    end -= 1
                text = lines[k]
                ps = text.index("\\proofstep{")
                title = braced(text, ps + len("\\proofstep"))
                lm = LABEL.search(text[ps:])
                steps.append(dict(kind="step", label=lm.group(1) if lm else None, title=title, first=k + 1,
                                  last=end + 1, owner=owner, file=rel))
            proof["steps"] = [s["label"] for s in steps if s["first"] - 1 in starts]
            if owner is not None:
                for r in results:
                    if r["label"] == owner:
                        r.setdefault("proofs", []).append(proof)
                        break
                else:
                    proof["external_owner"] = True
                    results_owner_missing.append(proof)
            i = j + 1
            continue
        if re.match(r"\s*\\item\s*\\label\{([^}]*:ext-[^}]*)\}", line):
            lab = LABEL.search(line).group(1)
            j = i + 1
            while j < n and not re.match(r"\s*\\item\b|\s*\\end\{enumerate\}", lines[j]):
                j += 1
            em = re.search(r"\\emph\{([^}]*)\}", line)
            externals.append(dict(kind="external", label=lab, title=em.group(1).rstrip(".") if em else lab,
                                  first=i + 1, last=j, file=rel))
        i += 1
    for k, line in enumerate(lines):
        for lm in LABEL.finditer(line):
            labels[lm.group(1)] = k + 1
        if SECTION.match(line.lstrip()):
            lm = LABEL.search(line)
            sections.append(dict(label=lm.group(1) if lm else None, line=k + 1, text=line.strip()))
        if SOURCEGAP.search(line):
            gaps.append(k + 1)
        if SOURCE.search(line):
            sources.append(k + 1)
    return dict(lines=lines, results=results, steps=steps, externals=externals, labels=labels, sections=sections,
                gaps=gaps, sources=sources)


results_owner_missing = []


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--root", required=True)
    ap.add_argument("--parts", required=True)
    ap.add_argument("--manifest", required=True)
    ap.add_argument("--out", required=True)
    ap.add_argument("--anchor-part", default="p0")
    ap.add_argument("--proved-in", default="",
                    help="anchor=part,...: the part proving an anchor; its references to that anchor are statement "
                         "references (its hypotheses or conclusion), never uses, and are dropped")
    a = ap.parse_args()
    root = Path(a.root).resolve()
    manifest = {e["export"]: e for e in json.loads((root / a.manifest).read_text())["anchors"]}
    parts = {}
    for rel in a.parts.split(","):
        key = re.match(r"(p\d+)", Path(rel).stem).group(1)
        parts[key] = parse_part(root / rel, rel)

    nodes = {}          # id -> node dict
    alias = {}          # label -> node id (labels inside a node's range)
    owner_of = {}       # step id -> owning result label
    frozen_theorem_node = {}  # export -> anchor node id

    def loc(file, label, first, last):
        return f"{file}#{label}@L{first}-L{last}"

    for key, P in parts.items():
        for r in P["results"]:
            if not r["label"]:
                continue
            base = dict(part=key, title=r["title"] or r["label"], kind=r["kind"] if r["kind"] != "remark" else "claim",
                        env=r["kind"], statement=loc(r["file"], r["label"], r["first"], r["last"]),
                        proof="-", file=r["file"], first=r["first"], last=r["last"], proofs=r.get("proofs", []),
                        frozen=None)
            if r["kind"] == "assumption":
                base["kind"] = "definition"
                base["note"] = "standing hypotheses of a part (a definition-like package; confirm modelling)"
            if r.get("proofs"):
                p = r["proofs"][0]
                base["proof"] = loc(p["file"], r["label"], p["first"], p["last"])
            elif r["kind"] == "remark":
                base["proof"] = base["statement"]
                base["note"] = "remark: its justification is inline (confirm, or exclude if not a mathematical claim)"
            fz = r.get("frozen") or []
            if key == a.anchor_part and fz:
                if r["kind"] == "definition":
                    for name in fz:
                        e = manifest[name]
                        nid = f"{r['label']}#{ascii_id(name.split('.')[-1])}"
                        nodes[nid] = dict(base, id=nid, title=f"{r['title']}: {name}", frozen=e)
                    alias[r["label"]] = [f"{r['label']}#{ascii_id(x.split('.')[-1])}" for x in fz]
                    continue
                assert len(fz) == 1, r["label"]
                base["frozen"] = manifest[fz[0]]
                frozen_theorem_node[fz[0]] = r["label"]
            elif fz:
                base["proves_frozen"] = fz
            nodes[r["label"]] = dict(base, id=r["label"])
            alias[r["label"]] = [r["label"]]
        for s in P["steps"]:
            nodes[s["label"]] = dict(part=key, id=s["label"], kind="step", title=s["title"], file=s["file"],
                                     statement=loc(s["file"], s["label"], s["first"], s["last"]),
                                     proof=loc(s["file"], s["label"], s["first"], s["last"]), first=s["first"],
                                     last=s["last"], frozen=None)
            owner_of[s["label"]] = s["owner"]
            alias[s["label"]] = [s["label"]]
        for x in P["externals"]:
            nodes[x["label"]] = dict(part=key, id=x["label"], kind="external", title=x["title"], file=x["file"],
                                     statement=loc(x["file"], x["label"], x["first"], x["last"]), proof="-",
                                     first=x["first"], last=x["last"], frozen=None)
            alias[x["label"]] = [x["label"]]

    # proofs placed in another part (e.g. "Proof of Theorem bp:p0:head" in Part 4)
    for p in results_owner_missing:
        nid = p["owner"]
        if nid in nodes:
            nodes[nid].setdefault("proofs", []).append(p)
            if nodes[nid]["proof"] == "-":
                nodes[nid]["proof"] = loc(p["file"], nid, p["first"], p["last"])

    # inner labels (items, equations) -> enclosing node; innermost wins (steps after results)
    ranges = []
    for nid, nd in nodes.items():
        ranges.append((nd["file"], nd["first"], nd["last"], nid, nd["kind"] == "step"))
        for p in nd.get("proofs", []):
            ranges.append((p["file"], p["first"], p["last"], nid, False))
    section_labels = set()
    for key, P in parts.items():
        for s in P["sections"]:
            if s["label"]:
                section_labels.add(s["label"])
        for lab, ln in P["labels"].items():
            if lab in alias or lab in section_labels:
                continue
            cands = [r for r in ranges if r[0] == (parts[key]["results"][0]["file"] if parts[key]["results"] else "")
                     and r[1] <= ln <= r[2]]
            cands.sort(key=lambda r: (not r[4], r[2] - r[1]))
            if cands:
                tgt = cands[0][3]
                alias[lab] = alias.get(tgt, [tgt]) if "#" not in tgt else [tgt]

    def resolve(lab):
        return alias.get(lab, [])

    # candidate edges
    def refs_in(file_lines, first, last, skip=()):
        out = []
        for k in range(first - 1, last):
            if any(s[0] <= k + 1 <= s[1] for s in skip):
                continue
            for m in REF.finditer(file_lines[k]):
                for lab in (m.group(1) or m.group(2)).split(","):
                    out.append((lab.strip(), k + 1))
        return out

    file_lines = {P["results"][0]["file"]: P["lines"] for P in parts.values() if P["results"]}
    for nid, nd in nodes.items():
        deps = {}
        L = file_lines[nd["file"]]
        if nd["kind"] == "step":
            uses = refs_in(L, nd["first"], nd["last"])
        elif nd["kind"] == "external":
            uses = []
        else:
            uses = [(lab, ln, "statement") for lab, ln in refs_in(L, nd["first"], nd["last"])]
            for p in nd.get("proofs", []):
                PL = file_lines[p["file"]]
                step_ranges = [(nodes[s]["first"], nodes[s]["last"]) for s in p.get("steps", []) if s in nodes]
                uses += [(lab, ln, "proof") for lab, ln in refs_in(PL, p["first"], p["last"], step_ranges)]
                for s in p.get("steps", []):
                    if s in nodes:
                        deps.setdefault(s, (p["file"], nodes[s]["first"], "proof step of this result"))
        for u in uses:
            lab, ln = u[0], u[1]
            where = u[2] if len(u) > 2 else "step"
            for tgt in resolve(lab):
                if tgt == nid or tgt == owner_of.get(nid) or (nid in alias.get(owner_of.get(nid) or "", [])):
                    continue
                if owner_of.get(nid) and tgt in alias.get(owner_of[nid], []):
                    continue
                f = nd["file"]
                if where == "proof":
                    f = next((p["file"] for p in nd.get("proofs", []) if p["first"] <= ln <= p["last"]), f)
                deps.setdefault(tgt, (f, ln, f"cited at this line ({where}; \\ref{{{lab}}})"))
        nd["deps"] = deps
    proved_in = dict(x.split("=") for x in a.proved_in.split(",") if x)
    for nid, nd in nodes.items():
        for anchor, part in proved_in.items():
            if nd["part"] == part and anchor in nd["deps"]:
                del nd["deps"][anchor]
                nd["note"] = (nd.get("note", "-") if nd.get("note", "-") != "-" else "") + \
                    f" [pre-extract: dropped reference to {anchor}, which this part proves]"
    for nid, nd in nodes.items():
        for name in nd.get("proves_frozen", []):
            anchor = frozen_theorem_node.get(name)
            if anchor and anchor != nid:
                nodes[anchor]["deps"].setdefault(nid, (nd["file"], nd["first"],
                                                       f"this result carries \\frozen{{{name}}}: it proves the anchor"))
                if nodes[anchor]["proof"] == "-":
                    nodes[anchor]["proof"] = nd["statement"]
    # drop cycles step<->owner created by statement references and self-loops
    for nid, nd in nodes.items():
        nd["deps"].pop(nid, None)

    out = Path(a.out)
    out.mkdir(parents=True, exist_ok=True)
    serial = {k: {kk: vv for kk, vv in v.items() if kk not in ("proofs",)} for k, v in nodes.items()}
    for v in serial.values():
        v["deps"] = {k: list(x) for k, x in v["deps"].items()}
        if v.get("frozen"):
            v["frozen"] = {k: v["frozen"][k] for k in ("id", "path", "export", "contract", "abi_sha256")}
    (out / "nodes.json").write_text(json.dumps(serial, indent=1, ensure_ascii=False))

    def block(nd):
        fz = nd.get("frozen")
        deps = list(nd["deps"])
        rows = [
            ("NODE", nd["id"]), ("KIND", nd["kind"]), ("TITLE", re.sub(r"\s+", " ", nd["title"])),
            ("STATEMENT_SOURCE", nd["statement"]), ("PROOF_SOURCE", nd["proof"]),
            ("CONTRACT_ID", fz["contract"]["id"] if fz else nd["id"]),
            ("CONTRACT_VERSION", fz["contract"]["version"] if fz else "1"),
            ("SOURCE_HYPOTHESES", "TODO"), ("SOURCE_QUANTIFIERS", "TODO"), ("SOURCE_CONCLUSION", "TODO"),
            ("CONSTANT_SCOPE", "TODO"),
            ("FROZEN_FILE", fz["path"] if fz else "-"), ("FROZEN_DECL", fz["export"] if fz else "-"),
            ("FROZEN_ANCHOR_ID", fz["id"] if fz else "-"), ("FROZEN_ABI_SHA256", fz["abi_sha256"] if fz else "-"),
            ("DEPS", ", ".join(deps) if deps else "-"), ("ROUTES", "-"), ("ROUTE_FOR", "-"),
        ]
        txt = "\n".join(f"{k}: {v}" for k, v in rows) + "\n"
        for d, (f, ln, why) in nd["deps"].items():
            txt += f"EDGE: {d} | {f}#{nd['id'].split('#')[0]}@L{ln}-L{ln} | {why}\n"
        lean = ("EXTERNAL" if nd["kind"] == "external" else "NOT_STARTED")
        txt += "\n".join(f"{k}: {v}" for k, v in [
            ("TOPOLOGY_STATUS", "PROPOSED"), ("EXTRACTOR", "mechanical-preextract"), ("REVIEWER", "-"),
            ("LEAN_STATUS", lean), ("LEAN_REF", "-"), ("LEAN_NOTE", "-"),
            ("NOTE", nd.get("note", "-"))]) + "\n"
        return txt

    for key, P in parts.items():
        ids = sorted((v for v in nodes.values() if v["part"] == key), key=lambda v: (v["first"], v["kind"] != "step"))
        (out / f"{key}.md").write_text("\n".join(block(v) for v in ids))
        cov = []
        for v in ids:
            cov.append(dict(item=v["id"], kind=v["kind"] if v["kind"] != "step" else "proof-region",
                            source=v["statement"], disp=f"NODE {v['id']}"))
        L = P["lines"]
        rel = P["results"][0]["file"] if P["results"] else ""
        for s in P["sections"]:
            sid = s["label"] or f"{key}:heading-L{s['line']}"
            cov.append(dict(item=f"heading:{sid}", kind="heading", source=f"{rel}#{sid}@L{s['line']}-L{s['line']}",
                            disp="EXCLUDED", reason="section heading; its results are inventoried separately"))
        for ln in P["gaps"]:
            cov.append(dict(item=f"{key}:sourcegap-L{ln}", kind="proof-region", source=f"{rel}#sourcegap@L{ln}-L{ln}",
                            disp="TODO", reason="a \\sourcegap note: model as a node with SOURCE_GAP: in NOTE, or exclude with reason"))
        for ln in P["sources"]:
            cov.append(dict(item=f"{key}:source-L{ln}", kind="citation", source=f"{rel}#source@L{ln}-L{ln}",
                            disp="EXCLUDED", reason="provenance note for a result proved in the blueprint (confirm; an "
                            "unproved cited input must instead become an external node)"))
        txt = ""
        for c in cov:
            txt += (f"ITEM: {c['item']}\nKIND: {c['kind']}\nSOURCE: {c['source']}\nDISPOSITION: {c['disp']}\n"
                    f"REASON: {c.get('reason', 'mechanical inventory of a labelled unit')}\nCOVERAGE_STATUS: PROPOSED\n"
                    f"EXTRACTOR: mechanical-preextract\nREVIEWER: -\n\n")
        (out / f"coverage-{key}.md").write_text(txt)
        nk = {}
        for v in ids:
            nk[v["kind"]] = nk.get(v["kind"], 0) + 1
        print(key, "nodes", len(ids), nk, "edges", sum(len(v["deps"]) for v in ids), "coverage", len(cov))


if __name__ == "__main__":
    main()
