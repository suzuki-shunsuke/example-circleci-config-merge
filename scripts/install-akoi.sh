#!/usr/bin/env bash

set -eux

cd "$(dirname "$0")/.."

AKOI_VERSION=v2.2.1

mkdir -p .akoi/bin
curl --fail -L https://github.com/suzuki-shunsuke/akoi/releases/download/${AKOI_VERSION}/akoi_${AKOI_VERSION##v}_linux_amd64 -o .akoi/bin/akoi
chmod a+x .akoi/bin/akoi
