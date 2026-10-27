#!/usr/bin/env python3
"""Check one slice packet of a dependency graph against all slices of the same graph directory.

usage: depgraph_slice_check.py PACKETS_DIR SLICE
Checks the slice's nodes file:
- no TODO left;
- every field present;
- DEPS and EDGE agree one-to-one;
- every dependency names a node in some slice;
- locators are well formed;
- no duplicate IDs across slices.
Checks its coverage file:
- one disposition per item;
- every NODE disposition names an existing node.
Exit 1 on any problem.
"""
import re
import sys
from pathlib import Path

d, sl = Path(sys.argv[1]), sys.argv[2]
FIELDS = ("NODE", "KIND", "TITLE", "STATEMENT_SOURCE", "PROOF_SOURCE", "CONTRACT_ID", "CONTRACT_VERSION",
          "SOURCE_HYPOTHESES", "SOURCE_QUANTIFIERS", "SOURCE_CONCLUSION", "CONSTANT_SCOPE", "FROZEN_FILE",
          "FROZEN_DECL", "FROZEN_ANCHOR_ID", "FROZEN_ABI_SHA256", "DEPS", "ROUTES", "ROUTE_FOR", "TOPOLOGY_STATUS",
          "EXTRACTOR", "REVIEWER", "LEAN_STATUS", "LEAN_REF", "LEAN_NOTE", "NOTE")
LOC = re.compile(r"^[^#\s]+#[^@\s]+@L\d+-L\d+$")


def blocks(text, key):
    return [b for b in re.split(r"\n\s*\n(?=" + key + ": )", text.strip()) if b.strip()]


def parse(b):
    f, edges = {}, []
    for line in b.split("\n"):
        m = re.match(r"^([A-Z][A-Z0-9_]*):\s?(.*)$", line)
        if m:
            if m.group(1) == "EDGE":
                edges.append(m.group(2))
            else:
                f[m.group(1)] = m.group(2).strip()
    return f, edges


all_ids, where = set(), {}
problems = []
for p in sorted(d.glob("*.nodes.md")):
    for b in blocks(p.read_text(), "NODE"):
        f, _ = parse(b)
        nid = f.get("NODE")
        if nid in where:
            problems.append(f"duplicate node {nid} in {where[nid]} and {p.name}")
        where[nid] = p.name
        all_ids.add(nid)
nodes_file = d / f"{sl}.nodes.md"
n_nodes = n_edges = 0
for b in blocks(nodes_file.read_text(), "NODE"):
    f, edges = parse(b)
    nid = f.get("NODE", "?")
    n_nodes += 1
    if "TODO" in b:
        problems.append(f"{nid}: TODO left")
    for k in FIELDS:
        if k not in f:
            problems.append(f"{nid}: missing field {k}")
    deps = [x.strip() for x in f.get("DEPS", "-").split(",") if x.strip() and x.strip() != "-"]
    routes = [x.strip() for x in f.get("ROUTES", "-").split(",") if x.strip() and x.strip() != "-"]
    n_edges += len(deps) + len(routes)
    etargets = []
    for e in edges:
        parts = [x.strip() for x in e.split("|")]
        if len(parts) != 3:
            problems.append(f"{nid}: malformed EDGE {e!r}")
            continue
        etargets.append(parts[0])
        if not LOC.match(parts[1]):
            problems.append(f"{nid}: malformed EDGE locator {parts[1]!r}")
    if sorted(etargets) != sorted(deps + routes):
        problems.append(f"{nid}: DEPS/ROUTES {sorted(deps + routes)} vs EDGE targets {sorted(etargets)}")
    for t in deps + routes:
        if t not in all_ids:
            problems.append(f"{nid}: dependency {t} is not a node in any slice")
    for k in ("STATEMENT_SOURCE", "PROOF_SOURCE"):
        v = f.get(k, "-")
        if v != "-" and not LOC.match(v) and not v.startswith("external:"):
            problems.append(f"{nid}: malformed {k}")
cov = d / f"{sl}.coverage.md"
n_cov = 0
for b in blocks(cov.read_text(), "ITEM"):
    f, _ = parse(b)
    n_cov += 1
    disp = f.get("DISPOSITION", "")
    if "TODO" in b:
        problems.append(f"coverage {f.get('ITEM')}: TODO left")
    if disp.startswith("NODE "):
        for t in disp[5:].split(","):
            if t.strip() not in all_ids:
                problems.append(f"coverage {f.get('ITEM')}: unknown node {t.strip()}")
    elif disp != "EXCLUDED":
        problems.append(f"coverage {f.get('ITEM')}: bad disposition {disp!r}")
print(f"{sl}: {n_nodes} nodes, {n_edges} edges, {n_cov} coverage items, {len(problems)} problems")
for p in problems:
    print("  " + p)
sys.exit(1 if problems else 0)
