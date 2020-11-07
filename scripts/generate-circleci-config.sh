#!/usr/bin/env bash

set -eu

cd "$(dirname "$0")/.."

bash scripts/check-circleci-config.sh

cat scripts/circleci-config-header-comment.txt > .circleci/config.yml
bash scripts/merge-circleci-config.sh >> .circleci/config.yml
