#!/usr/bin/env bash

set -eu
set -o pipefail

cd "$(dirname "$0")/.."

export PATH="$PWD/.akoi/bin:$PATH"
bash ci/install-akoi.sh
akoi install

tempfile=$(mktemp)
github-comment exec -- bash scripts/merge-circleci-config.sh > "$tempfile"
github-comment exec -k compare-circleci-config -- dyff between -bs "$tempfile" .circleci/config.yml
rm "$tempfile"
