#!/usr/bin/env bash
set -e

mkdir -p result
nix-build --out-link result/java images/java.nix
nix-build --out-link result/javascript images/javascript.nix
nix-build --out-link result/julia images/julia.nix