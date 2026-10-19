#!/usr/bin/env bash
# ops/verify.sh: the gate for the UISA research record. It refuses only on what a release of the record needs.
# © 1993–2026 Abhishek Choudhary. All rights reserved. AyeAI.
set -uo pipefail
cd "$(dirname "$0")/.."
fail=0; pass=0
check() { if eval "$2"; then pass=$((pass+1)); printf '  PASS  %s\n' "$1"; else fail=$((fail+1)); printf '  FAIL  %s\n' "$1"; fi; }
for f in README.md UISA_Living_Research_Record.pdf SHA256SUMS CITATION.cff LICENSE CONTRACT.md docs/index.html; do
  check "$f is present" "[ -s '$f' ]"
done
check "the record is a PDF" "[ \"\$(head -c 5 UISA_Living_Research_Record.pdf)\" = '%PDF-' ]"
check "the record's bytes match SHA256SUMS" "sha256sum --quiet -c SHA256SUMS"
check "CITATION.cff names the title, version and author" "grep -q '^title:' CITATION.cff && grep -q '^version:' CITATION.cff && grep -q 'family-names: Choudhary' CITATION.cff"
check "no home-directory path in the text files" "! grep -rIl --exclude-dir=.git -e '/home/' -e '/Users/' --include='*.md' --include='*.html' --include='*.cff' . | grep -q ."
printf '%s passed, %s failed\n' "$pass" "$fail"
[ "$fail" -eq 0 ]
