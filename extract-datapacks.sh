#!/bin/bash

set -euo pipefail

MINECRAFT_VERSION="1.16"

for arg in "$@"; do
  version=$(echo $arg | gsed -e 's/.\+ v\([0-9]\(\.[0-9]\)\+\)\.\+zip/\1/')
  base_name=$(echo $arg | gsed -e 's/ v\([0-9]\.\)\+zip//;s/ /_/g')
  echo $base_name
  if [[ -d "$base_name" ]]; then
    rm -rf $base_name
    git restore $base_name/README.md
  else
    mkdir $base_name
  fi
  pushd $base_name
  unzip "../$arg"
  find . -type f -print0 |xargs -0 dos2unix
  popd
  git add $base_name
  git commit -m "Updated $base_name to $version-$MINECRAFT_VERSION" || true
done
