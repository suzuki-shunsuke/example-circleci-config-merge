#!/usr/bin/env bash

set -eu
set -o pipefail

cd "$(dirname "$0")/.."

bash scripts/check-circleci-config.sh

bash scripts/list-circleci-config.sh | xargs circleci-config-merge merge
