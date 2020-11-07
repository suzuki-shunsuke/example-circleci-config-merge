#!/usr/bin/env bash

set -eu
set -o pipefail

cd "$(dirname "$0")/.."

list_file=scripts/circleci-config-list.txt
if [ -f "$list_file" ]; then
  grep -v -E "^#" "$list_file"
fi
git ls-files -o --exclude-standard | grep -E "^[^/]*/circleci/.*\.ya?ml$" || :
git ls-files | grep -E "^[^/]*/circleci/.*\.ya?ml$"
