#!/usr/bin/env python3
"""Compute ABI hashes of frozen declarations with `pp.all true`: for a definition the sha256 of
`#print` (type and body), for a theorem the sha256 of `#check @name` (the statement only, so that
sealing the proof does not change it).

usage: abi_hashes.py <repo root> <manifest.json> [--check]
Without --check, prints {export: sha256} as JSON. With --check, compares against the manifest's
abi_sha256 fields and exits 1 on drift. The elaborated form includes every instance and definition
the statement uses, so it catches meaning changes that the file hashes alone cannot see.
Adapted from Critical2DKPZ-dev; the scratch file lives under `.lake/` so that no source checker
sees it.
"""
import hashlib
import json
import os
import re
import subprocess
import sys
import tempfile
from pathlib import Path

root, manifest_path = Path(sys.argv[1]).resolve(), Path(sys.argv[2])
check = '--check' in sys.argv[3:]
manifest = json.loads(manifest_path.read_text())
anchors = manifest['anchors']
modules = sorted({'.'.join(Path(a['path']).with_suffix('').parts) for a in anchors})
exports = [a['export'] for a in anchors]
lines = [f'import {m}' for m in modules] + ['set_option pp.all true', 'set_option pp.oneline false']
marker = 'ABI_HASH_BOUNDARY'
for a in anchors:
    e = a['export']
    lines.append(f'#eval IO.println "{marker} {e}"')
    lines.append(f'#print {e}' if a['kind'] == 'definition' else f'#check @{e}')
scratch = root / '.lake' / 'abi-scratch'
scratch.mkdir(parents=True, exist_ok=True)
with tempfile.NamedTemporaryFile('w', suffix='.lean', dir=scratch, delete=False) as f:
    f.write('\n'.join(lines) + '\n')
    tmp = Path(f.name)
try:
    # elan writes its override notice to stderr; it must never reach the hashed text
    env = os.environ | {'ELAN_NO_OVERRIDE_NOTICE': '1'}
    out = subprocess.run(['lake', 'env', 'lean', str(tmp)], cwd=root, capture_output=True, text=True, env=env)
finally:
    tmp.unlink()
if out.returncode != 0:
    print((out.stdout + out.stderr)[-4000:], file=sys.stderr)
    sys.exit(2)
text = out.stdout   # Lean prints every message on stdout; stderr is tool noise (elan, throttle)
chunks = re.split(rf'^{marker} (\S+)\s*$', text, flags=re.M)
hashes = {}
for i in range(1, len(chunks), 2):
    body = re.sub(r'^\S+\.lean:\d+:\d+: ', '', chunks[i + 1].strip(), flags=re.M)
    hashes[chunks[i]] = hashlib.sha256(body.encode()).hexdigest()
missing = [e for e in exports if e not in hashes]
if missing:
    print('no #print output for: ' + ', '.join(missing), file=sys.stderr)
    sys.exit(2)
if not check:
    print(json.dumps(hashes, indent=1, ensure_ascii=False))
    sys.exit(0)
drift = [a['export'] for a in anchors if hashes[a['export']] != a['abi_sha256']]
if drift:
    print('ABI DRIFT: ' + ', '.join(drift), file=sys.stderr)
    sys.exit(1)
print(f'ABI HASHES OK ({len(anchors)} frozen declarations)')
