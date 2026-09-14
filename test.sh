#!/usr/bin/env bash
set -euo pipefail
test -s words.txt
if grep -Fxq forbidden-off words.txt; then
  echo 'FAIL: forbidden-off must not be present' >&2
  exit 1
fi
