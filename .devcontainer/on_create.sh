#!/bin/bash

# Update the submodules
git submodule update --init --recursive

# Setups the gem5 source directory
pushd gem5

## We cleanup git's 'blame' feature by ignoring certain commits (typically
## commits that have reformatted files)
git config --global blame.ignoreRevsFile .git-blame-ignore-revs

./util/pre-commit-install.sh

popd # gem5