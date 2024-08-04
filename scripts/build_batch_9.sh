#!/usr/bin/env bash
set -e

mkdir -p result
nix-build --out-link result/haskell images/haskell.nix
nix-build --out-link result/idris images/idris.nix
nix-build --out-link result/kotlin images/kotlin.nix
