#!/usr/bin/env bash

set -e

cd "$(dirname "$0")/.."

if [ -n "$1" ]; then
    if [ "$1" = "build" ]; then
        echo "==> Building…"
        hugo
    elif [ "$1" = "publish" ]; then
        echo "==> Publishing…"
        cd public
        git config user.email "ccarnerolinan@gmail.com"
        git config user.name "Cristóbal Carnero Liñán"
        git remote set-url --push origin https://cristobalcl:${API_TOKEN_GITHUB}@github.com/cristobalcl/cristobalcl.github.io.git
        git remote
        git add .
        git commit -m "Publish"
        git branch tmp-branch
        git checkout master
        git merge tmp-branch
        git push origin master
    fi
else
    echo "Nothing to do!"
fi
