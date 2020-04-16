#!/usr/bin/env bash

set -e

cd "$(dirname "$0")/.."

echo "==> Launching Hugo server…"
hugo server
