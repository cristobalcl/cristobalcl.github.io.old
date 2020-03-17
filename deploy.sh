#!/usr/bin/env bash

set -e

# Update submodules:
# git submodule update --recursive --remote

echo "Updating cv.md..."
curl -o content/cv.md https://raw.githubusercontent.com/cristobalcl/resume/master/output/cv.md

echo -e "\033[0;32mDeploying updates to GitHub...\033[0m"

# cd public
# git checkout master
# cd ..

# Build the project.
hugo # if using a theme, replace by `hugo -t <yourtheme>`

# Go To Public folder
cd public
# Add changes to git.
# git add -A

# Commit changes.
msg="rebuilding site `date`"
if [ $# -eq 1 ]
  then msg="$1"
fi
git commit -am "$msg"

# Push source and build repos.
# git push origin master
git push

# Come Back
cd ..
