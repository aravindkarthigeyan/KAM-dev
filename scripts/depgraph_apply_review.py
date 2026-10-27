#!/usr/bin/env python3
"""Apply a slice review's replacement fragments to the slice packet.

usage: depgraph_apply_review.py PACKETS_DIR SLICE REVIEW.md REVIEWER_TAG [--dry-run]

Reads every fenced block of the review. Each complete `NODE:` block and each `ITEM:` block replaces the block with
the same ID in `<SLICE>.nodes.md` or `<SLICE>.coverage.md`, or is appended if the ID is new.
- A replaced or added node keeps `TOPOLOGY_STATUS: PROPOSED` and `REVIEWER: -`. Its EXTRACTOR becomes
  `<old extractor>+<REVIEWER_TAG>`, because the reviewer wrote the new text, so a different reviewer must check it.
- A review table row `| \\`id\\` | FAIL | ...` whose ID has no replacement block is listed as unresolved.
- A table row whose reason asks to delete the node is listed separately.
Writes `<SLICE>.repaired.json`: {replaced, added, items, unresolved, pass}. The `pass` list holds the nodes the
review passed, which can be marked REVIEWED by this reviewer.
"""
import json
import re
import sys
from pathlib import Path

d, sl, review, tag = Path(sys.argv[1]), sys.argv[2], Path(sys.argv[3]), sys.argv[4]
dry = "--dry-run" in sys.argv
text = review.read_text()
fences = re.findall(r"^```[a-z]*\n(.*?)^```", text, re.M | re.S)


new_nodes, new_items = {}, {}
for f in fences:
    for b in re.split(r"\n(?=NODE: )", f.strip()):
        if b.startswith("NODE: "):
            b = b.strip()
            new_nodes[re.match(r"NODE: (\S+)", b).group(1)] = b
    for b in re.split(r"\n(?=ITEM: )", f.strip()):
        if b.startswith("ITEM: "):
            b = re.split(r"\n\s*\n", b.strip())[0]
            new_items[re.match(r"ITEM: (\S+)", b).group(1)] = b
rows = re.findall(r"^\|\s*`?([^`|]+?)`?\s*\|(?:\s*(?:node|item|coverage)\s*\|)?\s*(PASS|FAIL)\s*\|(.*)$", text, re.M)
fails = {r[0].strip(): r[2] for r in rows if r[1] == "FAIL"}
passes = [r[0].strip() for r in rows if r[1] == "PASS"]

nodes_p, cov_p = d / f"{sl}.nodes.md", d / f"{sl}.coverage.md"
blocks = re.split(r"\n\s*\n(?=NODE: )", nodes_p.read_text().strip())
ids = [re.match(r"NODE: (\S+)", b).group(1) for b in blocks]
replaced, added = [], []
for nid, b in new_nodes.items():
    old = blocks[ids.index(nid)] if nid in ids else None
    old_ex = re.search(r"^EXTRACTOR: (.*)$", old, re.M).group(1) if old else "new"
    b = re.sub(r"^TOPOLOGY_STATUS: .*$", "TOPOLOGY_STATUS: PROPOSED", b, flags=re.M)
    b = re.sub(r"^REVIEWER: .*$", "REVIEWER: -", b, flags=re.M)
    b = re.sub(r"^EXTRACTOR: .*$", f"EXTRACTOR: {old_ex.split('+')[0]}+{tag}", b, flags=re.M)
    if nid in ids:
        blocks[ids.index(nid)] = b
        replaced.append(nid)
    else:
        blocks.append(b)
        ids.append(nid)
        added.append(nid)
cblocks = re.split(r"\n\s*\n(?=ITEM: )", cov_p.read_text().strip())
cids = [re.match(r"ITEM: (\S+)", b).group(1) for b in cblocks]
items = []
for iid, b in new_items.items():
    b = re.sub(r"^REVIEWER: .*$", "REVIEWER: -", b, flags=re.M)
    b = re.sub(r"^COVERAGE_STATUS: .*$", "COVERAGE_STATUS: PROPOSED", b, flags=re.M)
    if iid in cids:
        cblocks[cids.index(iid)] = b
    else:
        cblocks.append(b)
    items.append(iid)
unresolved = {k: v.strip()[:200] for k, v in fails.items() if k not in new_nodes and k not in new_items}
out = dict(replaced=replaced, added=added, items=items, unresolved=unresolved,
           passes=[p for p in passes if p in ids and p not in new_nodes])
if not dry:
    nodes_p.write_text("\n\n".join(blocks) + "\n")
    cov_p.write_text("\n\n".join(cblocks) + "\n")
    (d / f"{sl}.repaired.json").write_text(json.dumps(out, indent=1, ensure_ascii=False))
print(f"{sl}: {len(replaced)} replaced, {len(added)} added, {len(items)} coverage items, "
      f"{len(unresolved)} unresolved FAILs, {len(out['passes'])} PASS nodes")
for k, v in unresolved.items():
    print(f"  UNRESOLVED {k}: {v}")
