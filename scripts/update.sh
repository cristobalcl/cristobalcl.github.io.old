#!/usr/bin/env bash

set -e

cd "$(dirname "$0")/.."

echo "==> Downloading last version of CV…"
curl -o content/cv.md https://raw.githubusercontent.com/cristobalcl/resume/master/output/cv.md

echo "==> Update hugo-blanco theme…"
git submodule update --recursive --remote
