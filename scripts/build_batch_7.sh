#!/usr/bin/env bash
set -e

mkdir -p result
nix-build --out-link result/cobol images/cobol.nix
nix-build --out-link result/coffeescript images/coffeescript.nix
nix-build --out-link result/crystal images/crystal.nix