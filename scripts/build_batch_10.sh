#!/usr/bin/env bash
set -e

mkdir -p result
nix-build --out-link result/rce-images-lua images/lua.nix
nix-build --out-link result/rce-images-nim images/nim.nix
nix-build --out-link result/rce-images-nix images/nix.nix
