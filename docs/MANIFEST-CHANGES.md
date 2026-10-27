# Changes to the frozen-anchor manifest

Each change to `manifest/frozen-anchors.json` after the initial freeze (D11, commit 1f0d755) is recorded here.

| Date | Decision | Change | Meaning preserved? | Evidence |
|---|---|---|---|---|
| 2026-10-27 | D16 | Header comments (copyright, `Authors:`) of all 25 frozen files name Scott Armstrong and Zohar Komargodski | yes | Bytes after the header unchanged in every file; `scripts/abi_hashes.py --check` against the pre-change manifest passes with identical ABI hashes; only `full_file_sha256`, `prefix_sha256` and `definition_closure` hashes moved |
