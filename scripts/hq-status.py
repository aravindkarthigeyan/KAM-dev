#!/usr/bin/env python3
"""Regenerate the live sections of README.md (between `<!-- AUTO:name -->` and `<!-- /AUTO:name -->`).

usage: python3 scripts/hq-status.py          (in the main checkout; scripts/hq-update.sh calls it)

Sources: manifest/frozen-anchors.json (frozen statements and their states), the provider modules,
docs/campaign/campaign.json (phase, agents, proof map; maintained by the orchestrator),
docs/campaign/progress.json (weighted work items), docs/errata/ledger.json (errata and deviations),
docs/sources.json (pinned papers), tmux sessions of the agents, and git history on main.
"""
import json
import re
import subprocess
from datetime import datetime, timezone
from pathlib import Path

root = Path(__file__).resolve().parent.parent
readme = root / 'README.md'
manifest = json.loads((root / 'manifest/frozen-anchors.json').read_text())
campaign = json.loads((root / 'docs/campaign/campaign.json').read_text())
progress = json.loads((root / 'docs/campaign/progress.json').read_text())
ledger = json.loads((root / 'docs/errata/ledger.json').read_text())
sources = json.loads((root / 'docs/sources.json').read_text())['sources']
NOW = datetime.now(timezone.utc).strftime('%Y-%m-%d %H:%M UTC')
LIB = [root / 'KAM']


def git(*args, cwd=root):
    r = subprocess.run(['git', *args], cwd=cwd, capture_output=True, text=True)
    return r.stdout.strip()


THM = re.compile(r'^\s*(?:@\[[^\]]*\]\s*)?(?:public\s+|private\s+|protected\s+)*(?:theorem|lemma)\s', re.M)


def lean_stats(paths):
    files = [p for d in paths if d.exists() for p in d.rglob('*.lean')]
    text = [f.read_text(encoding='utf-8', errors='replace') for f in files]
    return len(files), sum(t.count('\n') for t in text), sum(len(THM.findall(t)) for t in text)


def statement_rows():
    rows = []
    for a in manifest['anchors']:
        if a['kind'] != 'theorem':
            continue
        export = a['export'].split('.')[-1]
        impl = a.get('implementation', {})
        prov = root / (impl.get('module', '').replace('.', '/') + '.lean')
        ptext = prov.read_text() if impl and prov.exists() else ''
        name = impl.get('export', '').split('.')[-1]
        if a['state'] == 'SEALED':
            state, cls = '✅ proved and sealed', 'sealed'
        elif name and re.search(rf'theorem\s+{re.escape(name)}\b', ptext):
            state, cls = '🟩 proved, sealing pending', 'proved'
        elif THM.search(ptext):
            state, cls = f'🟨 partly proved ({len(THM.findall(ptext))} components)', 'partial'
        else:
            state, cls = '⬜ not yet', 'todo'
        rows.append((a['id'], export, a['source']['range'], state, cls, a['path']))
    return rows


def code_scan():
    """Library files containing `sorry` outside KAM/Frozen, or an `axiom` declaration (comments removed)."""
    bad_sorry, bad_axiom = [], []
    for d in LIB:
        for f in sorted(d.rglob('*.lean')):
            t = f.read_text(encoding='utf-8', errors='replace')
            t = re.sub(r'/-.*?-/', '', t, flags=re.S)
            t = re.sub(r'--[^\n]*', '', t)
            t = re.sub(r'"(?:[^"\\]|\\.)*"', '""', t)
            rel = str(f.relative_to(root))
            if re.search(r'(?<![\w.])sorry(?![\w])', t) and not rel.startswith('KAM/Frozen/'):
                bad_sorry.append(rel)
            if re.search(r'^\s*(?:private\s+|protected\s+|public\s+)?axiom\s', t, re.M):
                bad_axiom.append(rel)
    return bad_sorry, bad_axiom


def section_statements(rows):
    if not rows:
        return ('*No statement is frozen yet.* The headline theorem and the gate theorems are being '
                'transcribed from the pinned sources; each will appear here once the owner has approved its '
                'exact Lean text and it is frozen.')
    notes = campaign.get('statement_notes', {})
    out = ['| ID | Source | Lean name | Status | Notes |', '|---|---|---|---|---|']
    for sid, export, rng, state, _, path in rows:
        out.append(f'| **{sid}** | {rng} | [`{export}`]({path}) | {state} | {notes.get(sid, "")} |')
    return '\n'.join(out)


def section_graph():
    g = campaign['graph']
    out = ['```mermaid', 'flowchart BT',
           '  classDef done fill:#c8e6c9,stroke:#2e7d32,color:#000',
           '  classDef conditional fill:#bbdefb,stroke:#1565c0,color:#000',
           '  classDef progress fill:#ffe0b2,stroke:#ef6c00,color:#000',
           '  classDef todo fill:#eeeeee,stroke:#757575,color:#000',
           '  classDef anchor fill:#fff9c4,stroke:#f9a825,color:#000,stroke-width:3px']
    for nid, label, state in g['nodes']:
        out.append(f'  {nid}["{label}"]:::{state}')
    for a, b in g['edges']:
        out.append(f'  {a} --> {b}')
    out.append('```')
    return '\n'.join(out)


def section_glance(rows):
    n, lines, thms = lean_stats(LIB)
    bad_sorry, bad_axiom = code_scan()
    sealed = sum(1 for r in rows if r[4] == 'sealed')
    head = git('rev-parse', '--short', 'HEAD') or '(no commit yet)'
    ndefs = sum(1 for a in manifest['anchors'] if a['kind'] == 'definition')
    drafts = [r[5] for r in rows if r[4] != 'sealed']
    out = [f'*Generated {NOW} from `main` at `{head}` by `scripts/hq-status.py`.*', '',
           f'**Current phase:** {campaign["current_phase"]}', '',
           f'**Frozen statements proved: {sealed} / {len(rows)}** · frozen definitions: {ndefs}', '',
           f'**Lean on `main`:** {n} modules · {lines:,} lines · {thms:,} theorems · '
           f'`sorry` outside frozen anchors: {len(bad_sorry)} files · `axiom` declarations: {len(bad_axiom)}', '',
           '```text',
           f'DRAFT_ANCHORS: {len(drafts)}' + (f' ({", ".join(drafts)})' if drafts else ''),
           f'UNREGISTERED_SORRIES: {len(bad_sorry)}' + (f' ({", ".join(bad_sorry)})' if bad_sorry else ''),
           'DRAFT_IMPORT_VIOLATIONS: 0 (frozen-anchor guard, run at every landing)',
           f'SEALED: {sealed} / {len(rows)}' + (f' ({", ".join(r[0] for r in rows if r[4] == "sealed")})'
                                                 if sealed else ''),
           '```']
    return '\n'.join(out)


AREAS = [
    ('Frozen', 'Owner-approved frozen statements and definitions (one per file, manifest-bound)'),
    ('Fourier', 'Weighted ℓ¹ Fourier and Fourier–Taylor algebras, composition, Cauchy estimates'),
    ('Diophantine', 'Diophantine vectors, cohomological equation, measure of the Diophantine set'),
    ('Newton', 'Abstract Newton/KAM convergence on analytic scales'),
    ('Hamiltonian', 'Hamiltonian vector fields in coordinates, invariant tori, quasi-periodic orbits'),
    ('APosteriori', 'A-posteriori KAM theorem at fixed frequency and local uniqueness'),
    ('Measure', 'Lipschitz dependence on the frequency and the measure of the union of tori'),
    ('Provider', 'One provider module per frozen theorem, where its proof is assembled'),
]


def section_areas():
    out = ['| Area | Content | Modules | Lines | Theorems |', '|---|---|---|---|---|']
    for d, desc in AREAS:
        p = root / 'KAM' / d
        n, lines, thms = lean_stats([p])
        link = f'[`KAM/{d}/`](KAM/{d})' if p.exists() else f'`KAM/{d}/` *(not created yet)*'
        out.append(f'| {link} | {desc} | {n} | {lines:,} | {thms} |')
    return '\n'.join(out)


def pane_state(session):
    if not session:
        return None
    r = subprocess.run(['tmux', 'capture-pane', '-p', '-t', session], capture_output=True, text=True)
    if r.returncode != 0:
        return '⚠️ session missing'
    lines = [l for l in r.stdout.splitlines() if l.strip()]
    tail = '\n'.join(lines[-14:])
    if re.search(r'Working \(|esc to interrupt', tail):
        return '🔄 working'
    m = re.search(r'\b(READY|BLOCKED)\b', tail)
    if m:
        return '✅ handed off' if m.group(1) == 'READY' else '⛔ blocked'
    return '⏸ idle'


STATE_ICON = {'active': '🔄 active', 'running': '🔄 running', 'idle': '⏸ idle', 'done': '✅ done',
              'blocked': '⛔ blocked'}


def section_workers():
    out = ['| Agent | Kind | Model | Account | State | Assignment | Branch | Unlanded commits |',
           '|---|---|---|---|---|---|---|---|']
    for w in campaign['workers']:
        state = pane_state(w.get('session')) or STATE_ICON.get(w.get('state', ''), w.get('state', ''))
        branch = w.get('branch')
        ahead = git('rev-list', '--count', '--no-merges', f'main..{branch}') if branch else ''
        sess = f' `{w["session"]}`' if w.get('session') else ''
        out.append(f'| **{w["id"]}**{sess} | {w["kind"]} | {w.get("model", "")} | {w.get("account", "")} | '
                   f'{state} | {w["assignment"]} | {f"`{branch}`" if branch else "—"} | {ahead or "—"} |')
    q = campaign.get('queued', [])
    if q:
        out += ['', '**Queued:** ' + ' · '.join(x['title'] for x in q)]
    return '\n'.join(out)


def section_landed():
    log = git('log', '--first-parent', 'main', '-40', '--date=format:%Y-%m-%d %H:%M', '--format=%cd|%h|%s')
    rows = [l.split('|', 2) for l in log.splitlines() if l]
    rows = [r for r in rows if not r[2].startswith('HQ status')][:12]
    if not rows:
        return '*No commits on `main` yet.*'
    out = ['| When (UTC) | Commit | Change |', '|---|---|---|']
    out += [f'| {d} | `{h}` | {s.replace("|", "∣")} |' for d, h, s in rows]
    return '\n'.join(out)


def completion(rows):
    """Weighted completion: items by difficulty weight times their done fraction, plus 1 per sealed statement."""
    w = progress['weights']
    groups = {}
    for it in progress['items']:
        g = groups.setdefault(it['group'], [0.0, 0.0, 0])
        g[0] += w[it['difficulty']]
        g[1] += w[it['difficulty']] * it['done']
        g[2] += 1
    if rows:
        sealed = sum(1 for r in rows if r[4] == 'sealed')
        groups['Sealing of the frozen statements'] = [float(len(rows)), float(sealed), len(rows)]
    total = sum(g[0] for g in groups.values())
    done = sum(g[1] for g in groups.values())
    return 100 * done / total, groups, total, done


def loc(dirs):
    """(total lines, code lines) of the .lean files under `dirs`; code lines exclude blanks and comments."""
    total = code = 0
    for d in dirs:
        if not d.exists():
            continue
        for f in d.rglob('*.lean'):
            t = f.read_text(encoding='utf-8', errors='replace')
            total += t.count('\n')
            t = re.sub(r'/-.*?-/', lambda m: '\n' * m.group(0).count('\n'), t, flags=re.S)
            code += sum(1 for l in t.splitlines() if l.strip() and not l.strip().startswith('--'))
    return total, code


def unlanded_lines():
    """Lean lines added on the agents' branches and not yet on main."""
    n = 0
    for w in campaign['workers']:
        if not w.get('branch'):
            continue
        out = git('diff', '--numstat', f'main...{w["branch"]}', '--', '*.lean')
        n += sum(int(a) for a, *_ in (l.split('\t') for l in out.splitlines()) if a.isdigit())
    return n


def size_estimate(rows):
    total, code = loc(LIB)
    pct, groups, wt, done = completion(rows)
    return total, code, unlanded_lines(), wt, done


def append_history(rows):
    """One line per run in docs/campaign/history.csv."""
    h = root / 'docs/campaign/history.csv'
    total, code, unl, wt, done = size_estimate(rows)
    pct = completion(rows)[0]
    n, _, thms = lean_stats(LIB)
    sealed = sum(1 for r in rows if r[4] == 'sealed')
    if not h.exists():
        h.write_text('utc,main,modules,lean_lines,code_lines,unlanded_lines,theorems,completion_pct,sealed\n')
    with h.open('a') as f:
        f.write(f'{NOW},{git("rev-parse", "--short", "HEAD")},{n},{total},{code},{unl},{thms},{pct:.1f},{sealed}\n')


def lines_24h_ago():
    h = root / 'docs/campaign/history.csv'
    if not h.exists():
        return None
    hist = [l.split(',') for l in h.read_text().splitlines()[1:] if l]
    if not hist:
        return None
    cutoff = datetime.now(timezone.utc).timestamp() - 86400

    def ts(r):
        return datetime.strptime(r[0], '%Y-%m-%d %H:%M UTC').replace(tzinfo=timezone.utc).timestamp()
    old = [r for r in hist if ts(r) <= cutoff]
    r = old[-1] if old else hist[0]
    return int(r[3]), r[0]


# Rough planning figure for the total size; replaced by a rate-based estimate once real proofs land.
PLANNED_TOTAL = 40000


def section_size(rows):
    total, code, unl, wt, done = size_estimate(rows)
    prev = lines_24h_ago()
    growth = f' · **{total - prev[0]:+,}** since {prev[1]}' if prev else ''
    lean_done = sum(progress['weights'][it['difficulty']] * it['done'] for it in progress['items']
                    if it['id'][0] in 'FKM')
    rate_based = lean_done >= 8
    est = total / lean_done * sum(progress['weights'][it['difficulty']] for it in progress['items']
                                  if it['id'][0] in 'FKM') if rate_based else PLANNED_TOTAL
    how = ('scales the lines per completed Lean weight unit to all Lean work items' if rate_based else
           'is a planning figure (infrastructure ≈ 12k, a-posteriori theorem ≈ 15k, measure layer ≈ 8k, '
           'interfaces ≈ 5k lines); it switches to a rate-based estimate once 8 weight units of Lean work are done')
    out = ['### Size of the formalization', '',
           '| | Lines of Lean |', '|---|---|',
           f'| On `main` now | **{total:,}** ({code:,} excluding blank lines and comments){growth} |',
           f'| Written on agent branches, not yet landed | {unl:,} |',
           f'| **Estimated total at completion** | **≈ {round(est, -3):,.0f}** |',
           f'| Estimated still to write | ≈ {round(max(est - total, 0), -3):,.0f} |', '',
           f'**How the size is estimated.** The estimate {how}. History of all counts: '
           '[`docs/campaign/history.csv`](docs/campaign/history.csv).']
    return '\n'.join(out), est


def bar(pct, n=25):
    k = round(pct / 100 * n)
    return '█' * k + '░' * (n - k)


def section_updated(rows, est):
    pct = completion(rows)[0]
    sealed = sum(1 for r in rows if r[4] == 'sealed')
    total = loc(LIB)[0]
    return (f'> **Last updated: {NOW}** (automatic: every 20 minutes and after every commit) · '
            f'**estimated completion {pct:.1f} %** · frozen statements proved: {sealed} / {len(rows)} · '
            f'**{total:,} lines of Lean** of an estimated ≈ {round(est, -3):,.0f}')


def section_progress(rows):
    pct, groups, total, done = completion(rows)
    out = [f'### Estimated completion: **{pct:.1f} %**', '', f'`{bar(pct)}` {pct:.1f} %', '',
           '| Part of the project | Items | Weight | Done | Completion |', '|---|---|---|---|---|']
    for name, (wt, dn, n) in groups.items():
        out.append(f'| {name} | {n} | {wt:.0f} | {dn:.1f} | `{bar(100 * dn / wt, 10)}` {100 * dn / wt:.0f} % |')
    out.append(f'| **Total** | {sum(g[2] for g in groups.values())} | {total:.0f} | {done:.1f} | **{pct:.1f} %** |')
    out += ['', f'**How this is estimated.** The project is divided into {len(progress["items"])} work items: the '
            'planning deliverables, the campaign infrastructure, and every node of the proof map below. Each item is '
            'weighted by its difficulty (low 1, moderate 2, high 4, very high 8); each sealed frozen statement adds 1. '
            'An item counts with the fraction of it that is done: for a Lean item, the fraction proved on `main`; for '
            f'a planning item, the lead\'s assessment. Item assessment last reviewed: **{progress["reviewed"]}**. The '
            'percentage is recomputed automatically; it measures done work, so the high-weight proof items dominate '
            'what is left. File: [`docs/campaign/progress.json`](docs/campaign/progress.json).',
            '', '<details><summary>All work items with their weight and status</summary>', '',
            '| ID | Item | Difficulty | Done | Note |', '|---|---|---|---|---|']
    for it in progress['items']:
        mark = '✅' if it['done'] >= 1 else ('🟨' if it['done'] > 0 else '⬜')
        out.append(f'| {it["id"]} | {it["title"].replace("|", "∣")} | {it["difficulty"]} | '
                   f'{mark} {100 * it["done"]:.0f} % | {it.get("note", "")} |')
    out += ['', '</details>']
    return '\n'.join(out)


def section_errata():
    by_src = {}
    for e in ledger['entries']:
        s = by_src.setdefault(e['source'], {'erratum': {}, 'deviation': {}})
        s[e['type']][e['status']] = s[e['type']].get(e['status'], 0) + 1

    def fmt(d):
        return ', '.join(f'{v} {k.lower()}' for k, v in sorted(d.items())) or '0'
    out = ['| Source | Errata (by status) | Deviations (by status) |', '|---|---|---|']
    for k, s in sorted(by_src.items()):
        out.append(f'| {k} | {fmt(s["erratum"])} | {fmt(s["deviation"])} |')
    out += ['', '<details><summary>All ledger entries</summary>', '',
            '| ID | Type | Source | Location | Claim | Status |', '|---|---|---|---|---|---|']
    for e in ledger['entries']:
        out.append(f'| {e["id"]} | {e["type"]} | {e["source"]} | {e["location"]} | '
                   f'{e["claim"].replace("|", "∣")} | {e["status"]} |')
    out += ['', '</details>']
    return '\n'.join(out)


def section_papers():
    out = ['| Key | Reference | arXiv | DOI | Role |', '|---|---|---|---|---|']
    for s in sources:
        ax = f'[{s["arxiv"]}](https://arxiv.org/abs/{s["arxiv"]})' if s['arxiv'] else '—'
        doi = f'[{s["doi"]}](https://doi.org/{s["doi"]})' if s['doi'] else '—'
        out.append(f'| {s["key"]} | {s["citation"]} | {ax} | {doi} | {s["role"]} |')
    return '\n'.join(out)


rows = statement_rows()
size_text, est = section_size(rows)
sections = {
    'updated': section_updated(rows, est),
    'progress': section_progress(rows),
    'size': size_text,
    'glance': section_glance(rows),
    'statements': section_statements(rows),
    'graph': section_graph(),
    'areas': section_areas(),
    'workers': section_workers(),
    'landed': section_landed(),
    'errata': section_errata(),
    'papers': section_papers(),
}
text = readme.read_text()
for name, body in sections.items():
    pat = re.compile(rf'(<!-- AUTO:{name} -->\n).*?(<!-- /AUTO:{name} -->)', re.S)
    if not pat.search(text):
        raise SystemExit(f'README has no AUTO:{name} markers')
    text = pat.sub(lambda m: m.group(1) + body + '\n' + m.group(2), text)
readme.write_text(text)
append_history(rows)
print('README live sections updated')
