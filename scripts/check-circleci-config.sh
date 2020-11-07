#!/usr/bin/env bash

set -eu

if ! command -v circleci-config-merge > /dev/null 2>&1; then
  echo "Please install circleci-config-merge" >&2
  echo "https://github.com/suzuki-shunsuke/circleci-config-merge#install" >&2
  exit 1
fi
