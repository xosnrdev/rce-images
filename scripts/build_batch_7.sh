#!/usr/bin/env bash
set -e

mkdir -p result
nix-build --out-link result/rce-images-cobol images/cobol.nix
nix-build --out-link result/rce-images-coffeescript images/coffeescript.nix
nix-build --out-link result/rce-images-crystal images/crystal.nix