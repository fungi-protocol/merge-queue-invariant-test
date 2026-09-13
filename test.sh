#!/usr/bin/env bash
set -euo pipefail
test -s words.txt
if grep -Fxq forbidden-on words.txt; then
  echo 'FAIL: forbidden-on must not be present' >&2
  exit 1
fi
