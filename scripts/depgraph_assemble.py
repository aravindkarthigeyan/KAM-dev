#!/usr/bin/env python3
"""Assemble a dependency database and its coverage manifest from per-slice node and coverage files.

usage: depgraph_assemble.py --graph-dir DIR --header DIR/header.txt --slices s1,s2,... [--title TITLE]
Reads DIR/<slice>.nodes.md and DIR/<slice>.coverage.md for each slice, writes DIR/DEPGRAPH.md and
DIR/DEPGRAPH_COVERAGE.md. The header file holds the GRAPH_VERSION ... GLOBAL_REVIEW_REF lines; its CORPUS line is
copied into the coverage manifest, and `FROZEN_MANIFEST: <path> | sha256:auto` is replaced by the file's hash.
The generated dashboard block is preserved when the database already exists.
"""
import argparse
import hashlib
import re
from pathlib import Path

ap = argparse.ArgumentParser()
ap.add_argument("--graph-dir", required=True)
ap.add_argument("--header", required=True)
ap.add_argument("--slices", required=True)
ap.add_argument("--slice-dir", default=None, help="directory of <slice>.{nodes,coverage}.md (default: --graph-dir)")
ap.add_argument("--title", default="Proof dependency database")
ap.add_argument("--root", default=".")
a = ap.parse_args()
d = Path(a.graph_dir)
header = Path(a.header).read_text().strip("\n")
m = re.search(r"^FROZEN_MANIFEST: (\S+) \| sha256:auto$", header, re.M)
if m:
    digest = hashlib.sha256((Path(a.root) / m.group(1)).read_bytes()).hexdigest()
    header = header.replace(m.group(0), f"FROZEN_MANIFEST: {m.group(1)} | sha256:{digest}")
corpus = re.search(r"^CORPUS: .*$", header, re.M).group(0)
slices = a.slices.split(",")
sd = Path(a.slice_dir) if a.slice_dir else d
nodes = "\n".join((sd / f"{s}.nodes.md").read_text().strip("\n") + "\n" for s in slices)
cov = "\n".join((sd / f"{s}.coverage.md").read_text().strip("\n") + "\n" for s in slices)
db = d / "DEPGRAPH.md"
dash = "<!-- BEGIN PROOF DEPGRAPH GENERATED -->\n<!-- END PROOF DEPGRAPH GENERATED -->\n"
if db.exists():
    old = db.read_text()
    i = old.find("<!-- BEGIN PROOF DEPGRAPH GENERATED -->")
    if i >= 0:
        dash = old[i:]
amend = d / "AMENDMENTS.md"
amend_txt = ("\n## Append-only structural amendments\n\n" + amend.read_text().strip("\n") + "\n") if amend.exists() else ""
db.write_text(f"# {a.title}\n\n{header}\n\nThe dependency direction is `NODE -> prerequisite`. Node blocks are "
              f"assembled from `{sd}/<slice>.nodes.md`; edit those, then re-run `scripts/depgraph_assemble.py`.\n\n"
              f"## Nodes\n\n{nodes}{amend_txt}\n{dash}")
(d / "DEPGRAPH_COVERAGE.md").write_text(f"# Proof-source coverage manifest\n\n{corpus}\n\n## Inventory\n\n{cov}")
print(f"wrote {db} and {d / 'DEPGRAPH_COVERAGE.md'} from {len(slices)} slices")
