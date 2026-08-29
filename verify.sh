#!/usr/bin/env bash
# Check FI catalogs match EN baselines (needs gettext: msgcmp, msgfmt).
set -euo pipefail
cd "$(dirname "$0")"
fail=0
while IFS= read -r -d '' fi_po; do
  dir=$(dirname "$fi_po")
  en_po=$(find "$dir" -maxdepth 1 -name '*-en_US.po' | head -1)
  if [[ -z "$en_po" ]]; then
    echo "SKIP $fi_po (no en_US.po)"
    continue
  fi
  if msgcmp "$fi_po" "$en_po"; then
    echo -n "OK  $dir  "
    msgfmt --statistics "$fi_po" 2>&1 || true
  else
    echo "FAIL $dir"
    fail=1
  fi
done < <(find Lite Pro addons -name '*-fi.po' -print0 | sort -z)
exit "$fail"
