#!/usr/bin/env bash
set -e

mkdir -p result
nix-build --out-link result/lua images/lua.nix
nix-build --out-link result/nim images/nim.nix
nix-build --out-link result/nix images/nix.nix
